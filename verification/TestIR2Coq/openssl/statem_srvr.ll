; ModuleID = 'ssl/statem/statem_srvr.c'
source_filename = "ssl/statem/statem_srvr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.GOST_KX_MESSAGE = type { %struct.asn1_type_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ASN1_VALUE_st = type opaque
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, {}*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, {}*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.anon.6 = type { i32 }
%struct.stack_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ssl_hmac_st = type { %struct.evp_mac_ctx_st*, %struct.hmac_ctx_st* }

@GOST_KX_MESSAGE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* bitcast ([2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @GOST_KX_MESSAGE_seq_tt to [2 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"GOST_KX_MESSAGE\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ssl/statem/statem_srvr.c\00", align 1
@__func__.ossl_statem_server_read_transition = private unnamed_addr constant [35 x i8] c"ossl_statem_server_read_transition\00", align 1
@__func__.ossl_statem_server_write_transition = private unnamed_addr constant [36 x i8] c"ossl_statem_server_write_transition\00", align 1
@__func__.ossl_statem_server_pre_work = private unnamed_addr constant [28 x i8] c"ossl_statem_server_pre_work\00", align 1
@__func__.ossl_statem_server_construct_message = private unnamed_addr constant [37 x i8] c"ossl_statem_server_construct_message\00", align 1
@__func__.ossl_statem_server_process_message = private unnamed_addr constant [35 x i8] c"ossl_statem_server_process_message\00", align 1
@__func__.ossl_statem_server_post_process_message = private unnamed_addr constant [40 x i8] c"ossl_statem_server_post_process_message\00", align 1
@__func__.dtls_construct_hello_verify_request = private unnamed_addr constant [36 x i8] c"dtls_construct_hello_verify_request\00", align 1
@tls_process_client_hello.null_compression = internal constant i8 0, align 1
@__func__.tls_process_client_hello = private unnamed_addr constant [25 x i8] c"tls_process_client_hello\00", align 1
@__func__.tls_handle_alpn = private unnamed_addr constant [16 x i8] c"tls_handle_alpn\00", align 1
@__func__.tls_post_process_client_hello = private unnamed_addr constant [30 x i8] c"tls_post_process_client_hello\00", align 1
@hrrrandom = external constant [0 x i8], align 1
@__func__.tls_construct_server_hello = private unnamed_addr constant [27 x i8] c"tls_construct_server_hello\00", align 1
@__func__.tls_construct_server_key_exchange = private unnamed_addr constant [34 x i8] c"tls_construct_server_key_exchange\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@__func__.tls_construct_certificate_request = private unnamed_addr constant [34 x i8] c"tls_construct_certificate_request\00", align 1
@__func__.tls_process_client_key_exchange = private unnamed_addr constant [32 x i8] c"tls_process_client_key_exchange\00", align 1
@__func__.tls_post_process_client_key_exchange = private unnamed_addr constant [37 x i8] c"tls_post_process_client_key_exchange\00", align 1
@__func__.tls_process_client_certificate = private unnamed_addr constant [31 x i8] c"tls_process_client_certificate\00", align 1
@__func__.tls_construct_server_certificate = private unnamed_addr constant [33 x i8] c"tls_construct_server_certificate\00", align 1
@tls_construct_new_session_ticket.nonce_label = internal constant [11 x i8] c"resumption\00", align 1
@__func__.tls_construct_new_session_ticket = private unnamed_addr constant [33 x i8] c"tls_construct_new_session_ticket\00", align 1
@__func__.tls_construct_cert_status_body = private unnamed_addr constant [31 x i8] c"tls_construct_cert_status_body\00", align 1
@__func__.tls_process_next_proto = private unnamed_addr constant [23 x i8] c"tls_process_next_proto\00", align 1
@__func__.tls_process_end_of_early_data = private unnamed_addr constant [30 x i8] c"tls_process_end_of_early_data\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kxBlob\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"opaqueBlob\00", align 1
@GOST_KX_MESSAGE_seq_tt = internal constant [2 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 1, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }], align 16
@__func__.ossl_statem_server13_write_transition = private unnamed_addr constant [38 x i8] c"ossl_statem_server13_write_transition\00", align 1
@__func__.tls_early_post_process_client_hello = private unnamed_addr constant [36 x i8] c"tls_early_post_process_client_hello\00", align 1
@ssl_check_for_safari.kSafariExtensionsBlock = internal constant [34 x i8] c"\00\0A\00\08\00\06\00\17\00\18\00\19\00\0B\00\02\01\00\00\0D\00\0C\00\0A\05\01\04\01\02\01\04\03\02\03", align 16
@__func__.tls_handle_status_request = private unnamed_addr constant [26 x i8] c"tls_handle_status_request\00", align 1
@__func__.ssl_check_srp_ext_ClientHello = private unnamed_addr constant [30 x i8] c"ssl_check_srp_ext_ClientHello\00", align 1
@__func__.tls_process_cke_psk_preamble = private unnamed_addr constant [29 x i8] c"tls_process_cke_psk_preamble\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"include/internal/packet.h\00", align 1
@__func__.tls_process_cke_rsa = private unnamed_addr constant [20 x i8] c"tls_process_cke_rsa\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"tls-client-version\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"tls-negotiated-version\00", align 1
@__func__.tls_process_cke_dhe = private unnamed_addr constant [20 x i8] c"tls_process_cke_dhe\00", align 1
@__func__.tls_process_cke_ecdhe = private unnamed_addr constant [22 x i8] c"tls_process_cke_ecdhe\00", align 1
@__func__.tls_process_cke_srp = private unnamed_addr constant [20 x i8] c"tls_process_cke_srp\00", align 1
@__func__.tls_process_cke_gost = private unnamed_addr constant [21 x i8] c"tls_process_cke_gost\00", align 1
@__func__.tls_process_cke_gost18 = private unnamed_addr constant [23 x i8] c"tls_process_cke_gost18\00", align 1
@__func__.construct_stateful_ticket = private unnamed_addr constant [26 x i8] c"construct_stateful_ticket\00", align 1
@__func__.create_ticket_prequel = private unnamed_addr constant [22 x i8] c"create_ticket_prequel\00", align 1
@__func__.construct_stateless_ticket = private unnamed_addr constant [27 x i8] c"construct_stateless_ticket\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @GOST_KX_MESSAGE_it() local_unnamed_addr #0 {
entry:
  ret %struct.ASN1_ITEM_st* @GOST_KX_MESSAGE_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.GOST_KX_MESSAGE* @d2i_GOST_KX_MESSAGE(%struct.GOST_KX_MESSAGE** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.GOST_KX_MESSAGE** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @GOST_KX_MESSAGE_it.local_it) #13
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.GOST_KX_MESSAGE*
  ret %struct.GOST_KX_MESSAGE* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_GOST_KX_MESSAGE(%struct.GOST_KX_MESSAGE* noundef %a, i8** noundef %out) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.GOST_KX_MESSAGE* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @GOST_KX_MESSAGE_it.local_it) #13
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.GOST_KX_MESSAGE* @GOST_KX_MESSAGE_new() local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @GOST_KX_MESSAGE_it.local_it) #13
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.GOST_KX_MESSAGE*
  ret %struct.GOST_KX_MESSAGE* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @GOST_KX_MESSAGE_free(%struct.GOST_KX_MESSAGE* noundef %a) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.GOST_KX_MESSAGE* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @GOST_KX_MESSAGE_it.local_it) #13
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_read_transition(%struct.ssl_st* noundef %s, i32 noundef %mt) local_unnamed_addr #1 {
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
  %or.cond149 = or i1 %cmp, %cmp5.not
  br i1 %or.cond149, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @ossl_statem_server13_read_transition(%struct.ssl_st* noundef nonnull %s, i32 noundef %mt) #14
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then.err_crit_edge, label %cleanup

if.then.err_crit_edge:                            ; preds = %if.then
  %.pre = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc94.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre, i64 0, i32 25
  %.pre151 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc94.phi.trans.insert, align 8, !tbaa !22
  %enc_flags95.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre151, i64 0, i32 12
  %.pre152 = load i32, i32* %enc_flags95.phi.trans.insert, align 8, !tbaa !24
  %.pre153 = and i32 %.pre152, 8
  br label %err

if.end8:                                          ; preds = %land.lhs.true, %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %4 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %4, label %err [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 21, label %sw.bb
    i32 26, label %sw.bb13
    i32 27, label %sw.bb45
    i32 28, label %sw.bb50
    i32 29, label %sw.bb64
    i32 31, label %sw.bb69
    i32 30, label %sw.bb83
    i32 36, label %sw.bb88
  ]

sw.bb:                                            ; preds = %if.end8, %if.end8, %if.end8
  %cmp9 = icmp eq i32 %mt, 1
  br i1 %cmp9, label %if.then10, label %err

if.then10:                                        ; preds = %sw.bb
  store i32 20, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb13:                                          ; preds = %if.end8
  %cmp14 = icmp eq i32 %mt, 16
  %cert_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 19
  %5 = load i32, i32* %cert_request, align 8, !tbaa !28
  br i1 %cmp14, label %if.then15, label %if.else33

if.then15:                                        ; preds = %sw.bb13
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  %version18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %6 = load i32, i32* %version18, align 8, !tbaa !29
  %cmp19 = icmp eq i32 %6, 768
  br i1 %cmp19, label %if.then20, label %if.end102

if.then20:                                        ; preds = %if.then17
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %7 = load i32, i32* %verify_mode, align 8, !tbaa !30
  %8 = and i32 %7, 3
  %.not = icmp eq i32 %8, 3
  br i1 %.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then20
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_statem_server_read_transition, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 199, i8* noundef null) #13
  br label %cleanup

if.end28:                                         ; preds = %if.then20
  store i32 28, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else:                                          ; preds = %if.then15
  store i32 28, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else33:                                        ; preds = %sw.bb13
  %tobool37 = icmp ne i32 %5, 0
  %cmp39 = icmp eq i32 %mt, 11
  %or.cond103 = and i1 %cmp39, %tobool37
  br i1 %or.cond103, label %if.then40, label %err

if.then40:                                        ; preds = %if.else33
  store i32 27, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb45:                                          ; preds = %if.end8
  %cmp46 = icmp eq i32 %mt, 16
  br i1 %cmp46, label %if.then47, label %err

if.then47:                                        ; preds = %sw.bb45
  store i32 28, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb50:                                          ; preds = %if.end8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 11
  %10 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !32
  %cmp51 = icmp eq %struct.x509_st* %10, null
  br i1 %cmp51, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb50
  %no_cert_verify = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 11
  %11 = load i32, i32* %no_cert_verify, align 4, !tbaa !35
  %tobool52.not = icmp eq i32 %11, 0
  br i1 %tobool52.not, label %if.else58, label %if.then53

if.then53:                                        ; preds = %lor.lhs.false, %sw.bb50
  %cmp54 = icmp eq i32 %mt, 257
  br i1 %cmp54, label %if.then55, label %if.end102

if.then55:                                        ; preds = %if.then53
  store i32 31, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else58:                                        ; preds = %lor.lhs.false
  %cmp59 = icmp eq i32 %mt, 15
  br i1 %cmp59, label %if.then60, label %err

if.then60:                                        ; preds = %if.else58
  store i32 29, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb64:                                          ; preds = %if.end8
  %cmp65 = icmp eq i32 %mt, 257
  br i1 %cmp65, label %if.then66, label %if.end102

if.then66:                                        ; preds = %sw.bb64
  store i32 31, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb69:                                          ; preds = %if.end8
  %npn_seen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  %12 = load i32, i32* %npn_seen, align 4, !tbaa !36
  %tobool71.not = icmp eq i32 %12, 0
  br i1 %tobool71.not, label %if.else77, label %if.then72

if.then72:                                        ; preds = %sw.bb69
  %cmp73 = icmp eq i32 %mt, 67
  br i1 %cmp73, label %if.then74, label %err

if.then74:                                        ; preds = %if.then72
  store i32 30, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else77:                                        ; preds = %sw.bb69
  %cmp78 = icmp eq i32 %mt, 20
  br i1 %cmp78, label %if.then79, label %err

if.then79:                                        ; preds = %if.else77
  store i32 32, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb83:                                          ; preds = %if.end8
  %cmp84 = icmp eq i32 %mt, 20
  br i1 %cmp84, label %if.then85, label %err

if.then85:                                        ; preds = %sw.bb83
  store i32 32, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb88:                                          ; preds = %if.end8
  %cmp89 = icmp eq i32 %mt, 257
  br i1 %cmp89, label %if.then90, label %if.end102

if.then90:                                        ; preds = %sw.bb88
  store i32 31, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

err:                                              ; preds = %if.then.err_crit_edge, %if.end8, %sw.bb, %if.else33, %sw.bb45, %if.else58, %if.else77, %if.then72, %sw.bb83
  %and96.pre-phi = phi i32 [ %.pre153, %if.then.err_crit_edge ], [ %and, %if.end8 ], [ %and, %sw.bb ], [ %and, %if.else33 ], [ %and, %sw.bb45 ], [ %and, %if.else58 ], [ %and, %if.else77 ], [ %and, %if.then72 ], [ %and, %sw.bb83 ]
  %tobool97 = icmp ne i32 %and96.pre-phi, 0
  %cmp99 = icmp eq i32 %mt, 257
  %or.cond = and i1 %cmp99, %tobool97
  br i1 %or.cond, label %if.then100, label %if.end102

if.then100:                                       ; preds = %err
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !37
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 3, i32* %rwstate, align 8, !tbaa !38
  %call101 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #13
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %call101, i32 noundef 15) #13
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call101, i32 noundef 9) #13
  br label %cleanup

if.end102:                                        ; preds = %sw.bb88, %sw.bb64, %if.then53, %if.then17, %err
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_statem_server_read_transition, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end102, %if.then100, %if.then90, %if.then85, %if.then79, %if.then74, %if.then66, %if.then60, %if.then55, %if.then47, %if.then40, %if.else, %if.end28, %if.then27, %if.then10
  %retval.0 = phi i32 [ 0, %if.then100 ], [ 0, %if.end102 ], [ 1, %if.then90 ], [ 1, %if.then85 ], [ 1, %if.then74 ], [ 1, %if.then79 ], [ 1, %if.then66 ], [ 1, %if.then55 ], [ 1, %if.then60 ], [ 1, %if.then47 ], [ 0, %if.then27 ], [ 1, %if.end28 ], [ 1, %if.else ], [ 1, %if.then40 ], [ 1, %if.then10 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @ossl_statem_server13_read_transition(%struct.ssl_st* nocapture noundef %s, i32 noundef %mt) unnamed_addr #4 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %cleanup [
    i32 46, label %sw.bb
    i32 49, label %sw.bb12
    i32 36, label %sw.bb12
    i32 27, label %sw.bb24
    i32 29, label %sw.bb37
    i32 1, label %sw.bb42
  ]

sw.bb:                                            ; preds = %entry
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %1 = load i32, i32* %hello_retry_request, align 8, !tbaa !39
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %cmp1 = icmp eq i32 %mt, 1
  br i1 %cmp1, label %cleanup.sink.split, label %cleanup

if.else:                                          ; preds = %sw.bb
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %2 = load i32, i32* %early_data, align 8, !tbaa !40
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then5, label %sw.bb12

if.then5:                                         ; preds = %if.else
  %cmp6 = icmp eq i32 %mt, 5
  br i1 %cmp6, label %cleanup.sink.split, label %cleanup

sw.bb12:                                          ; preds = %if.else, %entry, %entry
  %cert_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 19
  %3 = load i32, i32* %cert_request, align 8, !tbaa !28
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else18, label %if.then13

if.then13:                                        ; preds = %sw.bb12
  %cmp14 = icmp eq i32 %mt, 11
  br i1 %cmp14, label %cleanup.sink.split, label %cleanup

if.else18:                                        ; preds = %sw.bb12
  %cmp19 = icmp eq i32 %mt, 20
  br i1 %cmp19, label %cleanup.sink.split, label %cleanup

sw.bb24:                                          ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 11
  %5 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !32
  %cmp25 = icmp eq %struct.x509_st* %5, null
  br i1 %cmp25, label %if.then26, label %if.else31

if.then26:                                        ; preds = %sw.bb24
  %cmp27 = icmp eq i32 %mt, 20
  br i1 %cmp27, label %cleanup.sink.split, label %cleanup

if.else31:                                        ; preds = %sw.bb24
  %cmp32 = icmp eq i32 %mt, 15
  br i1 %cmp32, label %cleanup.sink.split, label %cleanup

sw.bb37:                                          ; preds = %entry
  %cmp38 = icmp eq i32 %mt, 20
  br i1 %cmp38, label %cleanup.sink.split, label %cleanup

sw.bb42:                                          ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %6 = load i32, i32* %early_data_state, align 4, !tbaa !41
  %cmp43 = icmp eq i32 %6, 11
  br i1 %cmp43, label %cleanup, label %if.end45

if.end45:                                         ; preds = %sw.bb42
  switch i32 %mt, label %cleanup [
    i32 11, label %land.lhs.true
    i32 24, label %cleanup.sink.split
  ]

land.lhs.true:                                    ; preds = %if.end45
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %7 = load i32, i32* %post_handshake_auth, align 8, !tbaa !42
  %cmp47 = icmp eq i32 %7, 4
  br i1 %cmp47, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end45, %land.lhs.true, %sw.bb37, %if.else31, %if.then26, %if.else18, %if.then13, %if.then5, %if.then
  %.sink = phi i32 [ 20, %if.then ], [ 49, %if.then5 ], [ 27, %if.then13 ], [ 32, %if.else18 ], [ 32, %if.then26 ], [ 29, %if.else31 ], [ 32, %sw.bb37 ], [ 27, %land.lhs.true ], [ 44, %if.end45 ]
  store i32 %.sink, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true, %entry, %if.then, %if.then5, %if.else18, %if.then13, %if.else31, %if.then26, %sw.bb37, %sw.bb42, %if.end45
  %retval.0 = phi i32 [ 0, %if.end45 ], [ 0, %sw.bb42 ], [ 0, %sw.bb37 ], [ 0, %if.then26 ], [ 0, %if.else31 ], [ 0, %if.then13 ], [ 0, %if.else18 ], [ 0, %if.then5 ], [ 0, %if.then ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @send_certificate_request(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #5 {
entry:
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %0 = load i32, i32* %verify_mode, align 8, !tbaa !30
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and1 = and i32 %3, 8
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true14

land.lhs.true3:                                   ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %4, 772
  %cmp8.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp, %cmp8.not
  %and10 = and i32 %0, 8
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond52 = select i1 %or.cond, i1 true, i1 %tobool11.not
  br i1 %or.cond52, label %land.lhs.true14, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true3
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %5 = load i32, i32* %post_handshake_auth, align 8, !tbaa !42
  %cmp13 = icmp eq i32 %5, 3
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %lor.lhs.false12, %land.lhs.true3, %land.lhs.true
  %certreqs_sent = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 104
  %6 = load i32, i32* %certreqs_sent, align 8, !tbaa !43
  %cmp15 = icmp slt i32 %6, 1
  %and18 = and i32 %0, 4
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond54 = select i1 %cmp15, i1 true, i1 %tobool19.not
  br i1 %or.cond54, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true14
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %7 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %7, i64 0, i32 5
  %8 = load i32, i32* %algorithm_auth, align 8, !tbaa !45
  %and21 = and i32 %8, 4
  %tobool22.not = icmp eq i32 %and21, 0
  %and25 = and i32 %0, 2
  %tobool26.not = icmp ne i32 %and25, 0
  %or.cond55 = select i1 %tobool22.not, i1 true, i1 %tobool26.not
  %9 = and i32 %8, 80
  %10 = icmp eq i32 %9, 0
  %or.cond57 = select i1 %or.cond55, i1 %10, i1 false
  br i1 %or.cond57, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true20, %land.lhs.true14, %lor.lhs.false12, %entry
  br label %return

return:                                           ; preds = %land.lhs.true20, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %land.lhs.true20 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_write_transition(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
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
  %call = tail call fastcc i32 @ossl_statem_server13_write_transition(%struct.ssl_st* noundef nonnull %s) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %4 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb15
    i32 19, label %sw.bb16
    i32 20, label %sw.bb18
    i32 21, label %cleanup
    i32 22, label %sw.bb45
    i32 23, label %sw.bb77
    i32 34, label %sw.bb83
    i32 24, label %sw.bb89
    i32 25, label %sw.bb95
    i32 26, label %cleanup
    i32 32, label %sw.bb98
    i32 33, label %sw.bb113
    i32 35, label %sw.bb115
    i32 36, label %sw.bb117
  ]

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_statem_server_write_transition, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %request_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 6
  %5 = load i32, i32* %request_state, align 4, !tbaa !47
  %cmp6 = icmp eq i32 %5, 19
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %sw.bb
  store i32 19, i32* %hand_state, align 4, !tbaa !27
  store i32 0, i32* %request_state, align 4, !tbaa !47
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call i32 @tls_setup_handshake(%struct.ssl_st* noundef nonnull %s) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %sw.bb15

sw.bb15:                                          ; preds = %if.end10, %if.end
  br label %cleanup

sw.bb16:                                          ; preds = %if.end
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.else, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %sw.bb18
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %6 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !48
  %cookie_verified = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 2
  %7 = load i32, i32* %cookie_verified, align 8, !tbaa !49
  %tobool25.not = icmp eq i32 %7, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.else

land.lhs.true26:                                  ; preds = %land.lhs.true24
  %call27 = tail call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #13
  %and28 = and i64 %call27, 8192
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.else, label %if.end43

if.else:                                          ; preds = %land.lhs.true26, %land.lhs.true24, %sw.bb18
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %8 = load i32, i32* %renegotiate, align 8, !tbaa !54
  %cmp32 = icmp eq i32 %8, 0
  br i1 %cmp32, label %land.lhs.true33, label %if.end43

land.lhs.true33:                                  ; preds = %if.else
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %9 = load i64, i64* %finish_md_len, align 8, !tbaa !55
  %cmp34 = icmp eq i64 %9, 0
  br i1 %cmp34, label %if.end43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true33
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %10 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !56
  %cmp37 = icmp eq i64 %10, 0
  br i1 %cmp37, label %if.end43, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end43:                                         ; preds = %if.else, %land.lhs.true33, %lor.lhs.false, %land.lhs.true26
  %storemerge170 = phi i32 [ 21, %land.lhs.true26 ], [ 22, %lor.lhs.false ], [ 22, %land.lhs.true33 ], [ 22, %if.else ]
  store i32 %storemerge170, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %11 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool46.not = icmp eq i32 %11, 0
  br i1 %tobool46.not, label %if.else54, label %if.then47

if.then47:                                        ; preds = %sw.bb45
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %12 = load i32, i32* %ticket_expected, align 8, !tbaa !58
  %tobool48.not = icmp eq i32 %12, 0
  br i1 %tobool48.not, label %if.else51, label %if.then49

if.then49:                                        ; preds = %if.then47
  store i32 33, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else51:                                        ; preds = %if.then47
  store i32 35, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else54:                                        ; preds = %sw.bb45
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %13 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %13, i64 0, i32 5
  %14 = load i32, i32* %algorithm_auth, align 8, !tbaa !45
  %and57 = and i32 %14, 84
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %if.else61

if.then59:                                        ; preds = %if.else54
  store i32 23, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else61:                                        ; preds = %if.else54
  %call62 = tail call fastcc i32 @send_server_key_exchange(%struct.ssl_st* noundef nonnull %s) #14
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.else66, label %if.then64

if.then64:                                        ; preds = %if.else61
  store i32 24, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else66:                                        ; preds = %if.else61
  %call67 = tail call i32 @send_certificate_request(%struct.ssl_st* noundef nonnull %s) #14
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.else66
  store i32 25, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else71:                                        ; preds = %if.else66
  store i32 26, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb77:                                          ; preds = %if.end
  %status_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 7
  %15 = load i32, i32* %status_expected, align 4, !tbaa !59
  %tobool79.not = icmp eq i32 %15, 0
  br i1 %tobool79.not, label %sw.bb83, label %if.then80

if.then80:                                        ; preds = %sw.bb77
  store i32 34, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb83:                                          ; preds = %sw.bb77, %if.end
  %call84 = tail call fastcc i32 @send_server_key_exchange(%struct.ssl_st* noundef nonnull %s) #14
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %sw.bb89, label %if.then86

if.then86:                                        ; preds = %sw.bb83
  store i32 24, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb89:                                          ; preds = %sw.bb83, %if.end
  %call90 = tail call i32 @send_certificate_request(%struct.ssl_st* noundef nonnull %s) #14
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %sw.bb95, label %if.then92

if.then92:                                        ; preds = %sw.bb89
  store i32 25, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb95:                                          ; preds = %sw.bb89, %if.end
  store i32 26, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb98:                                          ; preds = %if.end
  %hit99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %16 = load i32, i32* %hit99, align 8, !tbaa !57
  %tobool100.not = icmp eq i32 %16, 0
  br i1 %tobool100.not, label %if.else103, label %if.then101

if.then101:                                       ; preds = %sw.bb98
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else103:                                       ; preds = %sw.bb98
  %ticket_expected105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %17 = load i32, i32* %ticket_expected105, align 8, !tbaa !58
  %tobool106.not = icmp eq i32 %17, 0
  %. = select i1 %tobool106.not, i32 35, i32 33
  store i32 %., i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb113:                                         ; preds = %if.end
  store i32 35, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb115:                                         ; preds = %if.end
  store i32 36, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb117:                                         ; preds = %if.end
  %hit118 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %18 = load i32, i32* %hit118, align 8, !tbaa !57
  %tobool119.not = icmp eq i32 %18, 0
  br i1 %tobool119.not, label %if.end121, label %cleanup

if.end121:                                        ; preds = %sw.bb117
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %sw.bb117, %if.end, %if.else51, %if.then49, %if.then64, %if.else71, %if.then69, %if.then59, %if.end, %if.end10, %if.end121, %sw.bb115, %sw.bb113, %if.else103, %if.then101, %sw.bb95, %if.then92, %if.then86, %if.then80, %if.end43, %if.then38, %sw.bb16, %sw.bb15, %if.then7, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %if.end121 ], [ 1, %sw.bb115 ], [ 1, %sw.bb113 ], [ 1, %if.then101 ], [ 1, %if.else103 ], [ 1, %sw.bb95 ], [ 1, %if.then92 ], [ 1, %if.then86 ], [ 1, %if.then80 ], [ 1, %if.end43 ], [ 1, %if.then38 ], [ 1, %sw.bb16 ], [ 2, %sw.bb15 ], [ 1, %if.then7 ], [ %call, %if.then ], [ 0, %if.end10 ], [ 2, %if.end ], [ 1, %if.then59 ], [ 1, %if.then69 ], [ 1, %if.else71 ], [ 1, %if.then64 ], [ 1, %if.then49 ], [ 1, %if.else51 ], [ 2, %if.end ], [ 2, %sw.bb117 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_statem_server13_write_transition(%struct.ssl_st* noundef %s) unnamed_addr #1 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 20, label %sw.bb10
    i32 22, label %sw.bb12
    i32 35, label %sw.bb25
    i32 37, label %sw.bb33
    i32 25, label %sw.bb44
    i32 23, label %sw.bb53
    i32 40, label %sw.bb55
    i32 36, label %sw.bb57
    i32 46, label %cleanup
    i32 32, label %sw.bb60
    i32 44, label %sw.bb78
    i32 42, label %sw.bb78
    i32 33, label %sw.bb80
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.ossl_statem_server13_write_transition, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  %1 = load i32, i32* %key_update, align 4, !tbaa !60
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 42, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %2 = load i32, i32* %post_handshake_auth, align 8, !tbaa !42
  %cmp2 = icmp eq i32 %2, 3
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  store i32 25, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %extra_tickets_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %3 = load i32, i32* %extra_tickets_expected, align 4, !tbaa !61
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end5
  store i32 33, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  store i32 22, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %4 = load i64, i64* %options, align 8, !tbaa !62
  %and = and i64 %4, 1048576
  %cmp13.not = icmp eq i64 %and, 0
  %hello_retry_request17.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %.pre = load i32, i32* %hello_retry_request17.phi.trans.insert, align 8, !tbaa !39
  br i1 %cmp13.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb12
  %cmp14.not = icmp eq i32 %.pre, 2
  br i1 %cmp14.not, label %if.else21, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  store i32 35, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else:                                          ; preds = %sw.bb12
  %phi.cmp = icmp eq i32 %.pre, 1
  br i1 %phi.cmp, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else
  store i32 46, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else21:                                        ; preds = %land.lhs.true, %if.else
  store i32 37, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %hello_retry_request26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %5 = load i32, i32* %hello_retry_request26, align 8, !tbaa !39
  %cmp27 = icmp eq i32 %5, 1
  %. = select i1 %cmp27, i32 46, i32 37
  store i32 %., i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %6 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %sw.bb33
  store i32 36, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else36:                                        ; preds = %sw.bb33
  %call = tail call i32 @send_certificate_request(%struct.ssl_st* noundef nonnull %s) #14
  %tobool37.not = icmp eq i32 %call, 0
  br i1 %tobool37.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.else36
  store i32 25, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.else40:                                        ; preds = %if.else36
  store i32 23, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %post_handshake_auth45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %7 = load i32, i32* %post_handshake_auth45, align 8, !tbaa !42
  %cmp46 = icmp eq i32 %7, 3
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %sw.bb44
  store i32 4, i32* %post_handshake_auth45, align 8, !tbaa !42
  br label %if.end52

if.end52:                                         ; preds = %sw.bb44, %if.then47
  %storemerge147 = phi i32 [ 1, %if.then47 ], [ 23, %sw.bb44 ]
  store i32 %storemerge147, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  store i32 40, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  store i32 36, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb57:                                          ; preds = %entry
  store i32 46, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb60:                                          ; preds = %entry
  %post_handshake_auth61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %8 = load i32, i32* %post_handshake_auth61, align 8, !tbaa !42
  %cmp62 = icmp eq i32 %8, 4
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %sw.bb60
  store i32 2, i32* %post_handshake_auth61, align 8, !tbaa !42
  br label %if.end71

if.else65:                                        ; preds = %sw.bb60
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %9 = load i32, i32* %ticket_expected, align 8, !tbaa !58
  %tobool67.not = icmp eq i32 %9, 0
  br i1 %tobool67.not, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.else65
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

if.end71:                                         ; preds = %if.else65, %if.then63
  %num_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 121
  %10 = load i64, i64* %num_tickets, align 8, !tbaa !63
  %sent_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  %11 = load i64, i64* %sent_tickets, align 8, !tbaa !64
  %cmp72 = icmp ugt i64 %10, %11
  %.149 = select i1 %cmp72, i32 33, i32 1
  store i32 %.149, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb78:                                          ; preds = %entry, %entry
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

sw.bb80:                                          ; preds = %entry
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %12 = load i64, i64* %finish_md_len, align 8, !tbaa !55
  %cmp81 = icmp eq i64 %12, 0
  br i1 %cmp81, label %if.else90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb80
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %13 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !56
  %cmp84 = icmp eq i64 %13, 0
  br i1 %cmp84, label %if.else90, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %lor.lhs.false
  %extra_tickets_expected87 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %14 = load i32, i32* %extra_tickets_expected87, align 4, !tbaa !61
  %cmp88 = icmp sgt i32 %14, 0
  br i1 %cmp88, label %cleanup, label %if.else90

if.else90:                                        ; preds = %land.lhs.true85, %lor.lhs.false, %sw.bb80
  %hit91 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %15 = load i32, i32* %hit91, align 8, !tbaa !57
  %tobool92.not = icmp eq i32 %15, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %if.then97

lor.lhs.false93:                                  ; preds = %if.else90
  %num_tickets94 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 121
  %16 = load i64, i64* %num_tickets94, align 8, !tbaa !63
  %sent_tickets95 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  %17 = load i64, i64* %sent_tickets95, align 8, !tbaa !64
  %cmp96.not = icmp ugt i64 %16, %17
  br i1 %cmp96.not, label %cleanup, label %if.then97

if.then97:                                        ; preds = %lor.lhs.false93, %if.else90
  store i32 1, i32* %hand_state, align 4, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %lor.lhs.false93, %land.lhs.true85, %entry, %if.then34, %if.else40, %if.then38, %if.then15, %if.else21, %if.then19, %if.end5, %sw.bb78, %if.end71, %if.then68, %sw.bb57, %sw.bb55, %sw.bb53, %if.end52, %sw.bb25, %sw.bb10, %if.then7, %if.then3, %if.then, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb78 ], [ 1, %if.end71 ], [ 1, %if.then68 ], [ 1, %sw.bb57 ], [ 1, %sw.bb55 ], [ 1, %sw.bb53 ], [ 1, %if.end52 ], [ 1, %sw.bb25 ], [ 1, %sw.bb10 ], [ 1, %if.then ], [ 1, %if.then3 ], [ 1, %if.then7 ], [ 2, %if.end5 ], [ 1, %if.then19 ], [ 1, %if.else21 ], [ 1, %if.then15 ], [ 1, %if.then38 ], [ 1, %if.else40 ], [ 1, %if.then34 ], [ 2, %entry ], [ 1, %land.lhs.true85 ], [ 1, %lor.lhs.false93 ], [ 1, %if.then97 ]
  ret i32 %retval.0
}

declare i32 @tls_setup_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i64 @SSL_get_options(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @send_server_key_exchange(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #5 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !65
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 6
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and1 = and i64 %conv, 72
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %lor.lhs.false4, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %2 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !66
  %psk_identity_hint = getelementptr inbounds %struct.cert_st, %struct.cert_st* %2, i64 0, i32 20
  %3 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !67
  %tobool3.not = icmp eq i8* %3, null
  %and5 = and i64 %conv, 384
  %tobool6.not = icmp eq i64 %and5, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %lor.lhs.false7, label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %and5.old = and i64 %conv, 384
  %tobool6.not.old = icmp eq i64 %and5.old, 0
  br i1 %tobool6.not.old, label %lor.lhs.false7, label %cleanup

lor.lhs.false7:                                   ; preds = %land.lhs.true, %lor.lhs.false4
  %and8 = lshr i32 %1, 5
  %and8.lobit = and i32 %and8, 1
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false7, %entry, %land.lhs.true, %lor.lhs.false4
  %retval.0 = phi i32 [ 1, %lor.lhs.false4 ], [ 1, %land.lhs.true ], [ 1, %entry ], [ %and8.lobit, %lor.lhs.false7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_pre_work(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #1 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %cleanup [
    i32 19, label %sw.bb
    i32 21, label %sw.bb1
    i32 22, label %sw.bb10
    i32 1, label %sw.bb96
    i32 33, label %sw.bb20
    i32 35, label %sw.bb45
    i32 46, label %sw.bb88
  ]

sw.bb:                                            ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 0, i32* %shutdown, align 4, !tbaa !70
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.bb
  tail call void @dtls1_clear_sent_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %shutdown2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  store i32 0, i32* %shutdown2, align 4, !tbaa !70
  %method3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method3, align 8, !tbaa !4
  %ssl3_enc4 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc4, align 8, !tbaa !22
  %enc_flags5 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags5, align 8, !tbaa !24
  %and6 = and i32 %6, 8
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %sw.bb1
  tail call void @dtls1_clear_sent_buffer(%struct.ssl_st* noundef nonnull %s) #13
  %use_timer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  store i32 0, i32* %use_timer, align 4, !tbaa !71
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %method11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method11, align 8, !tbaa !4
  %ssl3_enc12 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 25
  %8 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc12, align 8, !tbaa !22
  %enc_flags13 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %8, i64 0, i32 12
  %9 = load i32, i32* %enc_flags13, align 8, !tbaa !24
  %and14 = and i32 %9, 8
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %sw.bb10
  %use_timer17 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  store i32 1, i32* %use_timer17, align 4, !tbaa !71
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %method21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method21, align 8, !tbaa !4
  %ssl3_enc22 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 25
  %11 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc22, align 8, !tbaa !22
  %enc_flags23 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 12
  %12 = load i32, i32* %enc_flags23, align 8, !tbaa !24
  %and24 = and i32 %12, 8
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.then42

land.lhs.true:                                    ; preds = %sw.bb20
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 0
  %13 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %13, 772
  %cmp30.not = icmp eq i32 %13, 65536
  %or.cond = or i1 %cmp, %cmp30.not
  br i1 %or.cond, label %cleanup, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true
  %sent_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  %14 = load i64, i64* %sent_tickets, align 8, !tbaa !64
  %cmp32 = icmp eq i64 %14, 0
  br i1 %cmp32, label %land.lhs.true33, label %cleanup

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %extra_tickets_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %15 = load i32, i32* %extra_tickets_expected, align 4, !tbaa !61
  %cmp34 = icmp eq i32 %15, 0
  br i1 %cmp34, label %if.then35, label %cleanup

if.then35:                                        ; preds = %land.lhs.true33
  %call = tail call i32 @tls_finish_handshake(%struct.ssl_st* noundef nonnull %s, i32 noundef %wst, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

if.then42:                                        ; preds = %sw.bb20
  %use_timer43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  store i32 0, i32* %use_timer43, align 4, !tbaa !71
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %method46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method46, align 8, !tbaa !4
  %ssl3_enc47 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 25
  %17 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc47, align 8, !tbaa !22
  %enc_flags48 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 12
  %18 = load i32, i32* %enc_flags48, align 8, !tbaa !24
  %and49 = and i32 %18, 8
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %if.end60

land.lhs.true51:                                  ; preds = %sw.bb45
  %version53 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 0
  %19 = load i32, i32* %version53, align 8, !tbaa !26
  %cmp54 = icmp slt i32 %19, 772
  %cmp58.not = icmp eq i32 %19, 65536
  %or.cond135 = or i1 %cmp54, %cmp58.not
  br i1 %or.cond135, label %if.end60, label %cleanup

if.end60:                                         ; preds = %land.lhs.true51, %sw.bb45
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %20 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %20, i64 0, i32 20
  %21 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !72
  %cmp61 = icmp eq %struct.ssl_cipher_st* %21, null
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %22 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  br i1 %cmp61, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end60
  store %struct.ssl_cipher_st* %22, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !72
  br label %if.end73

if.else:                                          ; preds = %if.end60
  %cmp70.not = icmp eq %struct.ssl_cipher_st* %21, %22
  br i1 %cmp70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_statem_server_pre_work, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end73:                                         ; preds = %if.else, %if.then62
  %setup_key_block = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 2
  %23 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %setup_key_block, align 8, !tbaa !73
  %call76 = tail call i32 %23(%struct.ssl_st* noundef nonnull %s) #13
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup, label %if.end79

if.end79:                                         ; preds = %if.end73
  %24 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method46, align 8, !tbaa !4
  %ssl3_enc81 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %24, i64 0, i32 25
  %25 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc81, align 8, !tbaa !22
  %enc_flags82 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %25, i64 0, i32 12
  %26 = load i32, i32* %enc_flags82, align 8, !tbaa !24
  %and83 = and i32 %26, 8
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %cleanup, label %if.then85

if.then85:                                        ; preds = %if.end79
  %use_timer86 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  store i32 0, i32* %use_timer86, align 4, !tbaa !71
  br label %cleanup

sw.bb88:                                          ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %27 = load i32, i32* %early_data_state, align 4, !tbaa !41
  %cmp89.not = icmp eq i32 %27, 9
  br i1 %cmp89.not, label %sw.bb96, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %sw.bb88
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %28 = load i64, i64* %flags, align 8, !tbaa !74
  %and92 = and i64 %28, 2048
  %cmp93 = icmp eq i64 %and92, 0
  br i1 %cmp93, label %cleanup, label %sw.bb96

sw.bb96:                                          ; preds = %entry, %sw.bb88, %land.lhs.true90
  %call97 = tail call i32 @tls_finish_handshake(%struct.ssl_st* noundef nonnull %s, i32 noundef %wst, i32 noundef 1, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true31, %land.lhs.true33, %entry, %if.then, %sw.bb, %if.then8, %sw.bb1, %if.then16, %sw.bb10, %if.then42, %land.lhs.true51, %land.lhs.true90, %if.end79, %if.then85, %if.end73, %sw.bb96, %if.then71, %if.then35
  %retval.0 = phi i32 [ %call97, %sw.bb96 ], [ 0, %if.then71 ], [ %call, %if.then35 ], [ 0, %if.end73 ], [ 2, %if.then85 ], [ 2, %if.end79 ], [ 2, %land.lhs.true90 ], [ 2, %land.lhs.true51 ], [ 2, %if.then42 ], [ 2, %sw.bb10 ], [ 2, %if.then16 ], [ 2, %sw.bb1 ], [ 2, %if.then8 ], [ 2, %sw.bb ], [ 2, %if.then ], [ 2, %entry ], [ 2, %land.lhs.true33 ], [ 2, %land.lhs.true31 ], [ 2, %land.lhs.true ]
  ret i32 %retval.0
}

declare void @dtls1_clear_sent_buffer(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @tls_finish_handshake(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_post_work(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #1 {
entry:
  %dummy = alloca i64, align 8
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !37
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.epilog [
    i32 19, label %sw.bb
    i32 21, label %sw.bb4
    i32 22, label %sw.bb14
    i32 35, label %sw.bb56
    i32 26, label %sw.bb118
    i32 36, label %sw.bb123
    i32 25, label %sw.bb157
    i32 42, label %sw.bb165
    i32 33, label %sw.bb174
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup201

if.end:                                           ; preds = %sw.bb
  %call1 = tail call i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef nonnull %s) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup201, label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end8, label %cleanup201

if.end8:                                          ; preds = %sw.bb4
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !29
  %cmp9.not = icmp eq i32 %1, 256
  br i1 %cmp9.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call10 = tail call i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef nonnull %s) #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup201, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end8
  %first_packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  store i32 1, i32* %first_packet, align 8, !tbaa !75
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %4, 8
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %sw.epilog

land.lhs.true16:                                  ; preds = %sw.bb14
  %version18 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version18, align 8, !tbaa !26
  %cmp19 = icmp slt i32 %5, 772
  %cmp23.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp19, %cmp23.not
  br i1 %or.cond, label %sw.epilog, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true16
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %6 = load i32, i32* %hello_retry_request, align 8, !tbaa !39
  %cmp25 = icmp eq i32 %6, 1
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %7 = load i64, i64* %options, align 8, !tbaa !62
  %and27 = and i64 %7, 1048576
  %cmp28 = icmp eq i64 %and27, 0
  br i1 %cmp25, label %if.then26, label %lor.lhs.false

if.then26:                                        ; preds = %land.lhs.true24
  br i1 %cmp28, label %land.lhs.true29, label %sw.epilog

land.lhs.true29:                                  ; preds = %if.then26
  %call30 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp31.not = icmp eq i32 %call30, 1
  br i1 %cmp31.not, label %sw.epilog, label %cleanup201

lor.lhs.false:                                    ; preds = %land.lhs.true24
  br i1 %cmp28, label %sw.bb56, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %lor.lhs.false
  %hello_retry_request52 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %8 = load i32, i32* %hello_retry_request52, align 8, !tbaa !39
  %cmp53.not = icmp eq i32 %8, 2
  br i1 %cmp53.not, label %sw.bb56, label %sw.epilog

sw.bb56:                                          ; preds = %lor.lhs.false, %land.lhs.true51, %entry
  %hello_retry_request57 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %9 = load i32, i32* %hello_retry_request57, align 8, !tbaa !39
  %cmp58 = icmp eq i32 %9, 1
  br i1 %cmp58, label %if.then59, label %if.end64

if.then59:                                        ; preds = %sw.bb56
  %call60 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup201, label %sw.epilog

if.end64:                                         ; preds = %sw.bb56
  %method65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method65, align 8, !tbaa !4
  %ssl3_enc66 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 25
  %11 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc66, align 8, !tbaa !22
  %enc_flags67 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 12
  %12 = load i32, i32* %enc_flags67, align 8, !tbaa !24
  %and68 = and i32 %12, 8
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end102

land.lhs.true70:                                  ; preds = %if.end64
  %version72 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 0
  %13 = load i32, i32* %version72, align 8, !tbaa !26
  %cmp73 = icmp slt i32 %13, 772
  %cmp77.not = icmp eq i32 %13, 65536
  %or.cond264 = or i1 %cmp73, %cmp77.not
  br i1 %or.cond264, label %if.end102, label %if.then78

if.then78:                                        ; preds = %land.lhs.true70
  %setup_key_block = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 2
  %14 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %setup_key_block, align 8, !tbaa !73
  %call81 = tail call i32 %14(%struct.ssl_st* noundef nonnull %s) #13
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cleanup201, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.then78
  %15 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method65, align 8, !tbaa !4
  %ssl3_enc85 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 25
  %16 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc85, align 8, !tbaa !22
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %16, i64 0, i32 4
  %change_cipher_state86 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %17 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state86, align 8, !tbaa !76
  %call87 = tail call i32 %17(%struct.ssl_st* noundef nonnull %s, i32 noundef 162) #13
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup201, label %if.end90

if.end90:                                         ; preds = %lor.lhs.false83
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %18 = load i32, i32* %early_data, align 8, !tbaa !40
  %cmp91.not = icmp eq i32 %18, 2
  br i1 %cmp91.not, label %if.end100, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.end90
  %19 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method65, align 8, !tbaa !4
  %ssl3_enc94 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %19, i64 0, i32 25
  %20 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc94, align 8, !tbaa !22
  %change_cipher_state95 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %20, i64 0, i32 4
  %change_cipher_state96 = bitcast {}** %change_cipher_state95 to i32 (%struct.ssl_st*, i32)**
  %21 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state96, align 8, !tbaa !76
  %call97 = tail call i32 %21(%struct.ssl_st* noundef nonnull %s, i32 noundef 161) #13
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %cleanup201, label %if.end100

if.end100:                                        ; preds = %land.lhs.true92, %if.end90
  %enc_read_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 14
  store i32 1, i32* %enc_read_state, align 8, !tbaa !77
  br label %sw.epilog

if.end102:                                        ; preds = %land.lhs.true70, %if.end64
  %change_cipher_state105 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 4
  %change_cipher_state106 = bitcast {}** %change_cipher_state105 to i32 (%struct.ssl_st*, i32)**
  %22 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state106, align 8, !tbaa !76
  %call107 = tail call i32 %22(%struct.ssl_st* noundef nonnull %s, i32 noundef 34) #13
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup201, label %if.end110

if.end110:                                        ; preds = %if.end102
  %23 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method65, align 8, !tbaa !4
  %ssl3_enc112 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %23, i64 0, i32 25
  %24 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc112, align 8, !tbaa !22
  %enc_flags113 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %24, i64 0, i32 12
  %25 = load i32, i32* %enc_flags113, align 8, !tbaa !24
  %and114 = and i32 %25, 8
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %sw.epilog, label %if.then116

if.then116:                                       ; preds = %if.end110
  tail call void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef nonnull %s, i32 noundef 2) #13
  br label %sw.epilog

sw.bb118:                                         ; preds = %entry
  %call119 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp120.not = icmp eq i32 %call119, 1
  br i1 %cmp120.not, label %sw.epilog, label %cleanup201

sw.bb123:                                         ; preds = %entry
  %call124 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp125.not = icmp eq i32 %call124, 1
  br i1 %cmp125.not, label %if.end127, label %cleanup201

if.end127:                                        ; preds = %sw.bb123
  %method128 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %26 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method128, align 8, !tbaa !4
  %ssl3_enc129 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %26, i64 0, i32 25
  %27 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc129, align 8, !tbaa !22
  %enc_flags130 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %27, i64 0, i32 12
  %28 = load i32, i32* %enc_flags130, align 8, !tbaa !24
  %and131 = and i32 %28, 8
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %land.lhs.true133, label %sw.epilog

land.lhs.true133:                                 ; preds = %if.end127
  %version135 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %26, i64 0, i32 0
  %29 = load i32, i32* %version135, align 8, !tbaa !26
  %cmp136 = icmp slt i32 %29, 772
  %cmp140.not = icmp eq i32 %29, 65536
  %or.cond265 = or i1 %cmp136, %cmp140.not
  br i1 %or.cond265, label %sw.epilog, label %if.then141

if.then141:                                       ; preds = %land.lhs.true133
  %30 = bitcast i64* %dummy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #15
  %generate_master_secret = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %27, i64 0, i32 3
  %31 = load i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)** %generate_master_secret, align 8, !tbaa !78
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 31, i64 0
  %arraydecay144 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 30, i64 0
  %call145 = call i32 %31(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay144, i64 noundef 0, i64* noundef nonnull %dummy) #13
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %cleanup, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.then141
  %32 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method128, align 8, !tbaa !4
  %ssl3_enc149 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %32, i64 0, i32 25
  %33 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc149, align 8, !tbaa !22
  %change_cipher_state150 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %33, i64 0, i32 4
  %change_cipher_state151 = bitcast {}** %change_cipher_state150 to i32 (%struct.ssl_st*, i32)**
  %34 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state151, align 8, !tbaa !76
  %call152 = call i32 %34(%struct.ssl_st* noundef nonnull %s, i32 noundef 290) #13
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %cleanup, label %if.end155

if.end155:                                        ; preds = %lor.lhs.false147
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #15
  br label %sw.epilog

cleanup:                                          ; preds = %if.then141, %lor.lhs.false147
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #15
  br label %cleanup201

sw.bb157:                                         ; preds = %entry
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %35 = load i32, i32* %post_handshake_auth, align 8, !tbaa !42
  %cmp158 = icmp eq i32 %35, 3
  br i1 %cmp158, label %if.then159, label %sw.epilog

if.then159:                                       ; preds = %sw.bb157
  %call160 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp161.not = icmp eq i32 %call160, 1
  br i1 %cmp161.not, label %sw.epilog, label %cleanup201

sw.bb165:                                         ; preds = %entry
  %call166 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp167.not = icmp eq i32 %call166, 1
  br i1 %cmp167.not, label %if.end169, label %cleanup201

if.end169:                                        ; preds = %sw.bb165
  %call170 = tail call i32 @tls13_update_key(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %cleanup201, label %sw.epilog

sw.bb174:                                         ; preds = %entry
  %call175 = tail call i32* @__errno_location() #16
  store i32 0, i32* %call175, align 4, !tbaa !79
  %method176 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %36 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method176, align 8, !tbaa !4
  %ssl3_enc177 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %36, i64 0, i32 25
  %37 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc177, align 8, !tbaa !22
  %enc_flags178 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %37, i64 0, i32 12
  %38 = load i32, i32* %enc_flags178, align 8, !tbaa !24
  %and179 = and i32 %38, 8
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %land.lhs.true181, label %sw.epilog

land.lhs.true181:                                 ; preds = %sw.bb174
  %version183 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %36, i64 0, i32 0
  %39 = load i32, i32* %version183, align 8, !tbaa !26
  %cmp184 = icmp slt i32 %39, 772
  %cmp188.not = icmp eq i32 %39, 65536
  %or.cond266 = or i1 %cmp184, %cmp188.not
  br i1 %or.cond266, label %sw.epilog, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %land.lhs.true181
  %call190 = tail call i32 @statem_flush(%struct.ssl_st* noundef nonnull %s) #13
  %cmp191.not = icmp eq i32 %call190, 1
  br i1 %cmp191.not, label %sw.epilog, label %if.then192

if.then192:                                       ; preds = %land.lhs.true189
  %call193 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %cmp194 = icmp eq i32 %call193, 5
  br i1 %cmp194, label %land.lhs.true195, label %cleanup201

land.lhs.true195:                                 ; preds = %if.then192
  %call196 = tail call fastcc i32 @conn_is_closed() #14
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %cleanup201, label %if.then198

if.then198:                                       ; preds = %land.lhs.true195
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !38
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true16, %sw.bb14, %if.end155, %sw.bb174, %land.lhs.true181, %land.lhs.true189, %if.end169, %sw.bb157, %if.then159, %if.end127, %land.lhs.true133, %sw.bb118, %if.end110, %if.then116, %if.then59, %land.lhs.true51, %if.then26, %land.lhs.true29, %if.end, %entry, %if.then198, %if.end100, %if.end13
  br label %cleanup201

cleanup201:                                       ; preds = %if.then192, %land.lhs.true195, %if.end169, %sw.bb165, %if.then159, %cleanup, %sw.bb123, %sw.bb118, %if.end102, %land.lhs.true92, %if.then78, %lor.lhs.false83, %if.then59, %land.lhs.true29, %land.lhs.true, %sw.bb4, %if.end, %sw.bb, %sw.epilog
  %retval.1 = phi i32 [ 2, %sw.epilog ], [ 0, %cleanup ], [ 3, %sw.bb ], [ 0, %if.end ], [ 3, %sw.bb4 ], [ 0, %land.lhs.true ], [ 3, %land.lhs.true29 ], [ 3, %if.then59 ], [ 0, %lor.lhs.false83 ], [ 0, %if.then78 ], [ 0, %land.lhs.true92 ], [ 0, %if.end102 ], [ 3, %sw.bb118 ], [ 3, %sw.bb123 ], [ 3, %if.then159 ], [ 3, %sw.bb165 ], [ 0, %if.end169 ], [ 3, %land.lhs.true195 ], [ 3, %if.then192 ]
  ret i32 %retval.1
}

declare i32 @statem_flush(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tls13_update_key(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #6

declare i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @conn_is_closed() unnamed_addr #7 {
entry:
  %call = tail call i32* @__errno_location() #16
  %0 = load i32, i32* %call, align 4, !tbaa !79
  %switch.selectcmp.case1 = icmp eq i32 %0, 32
  %switch.selectcmp.case2 = icmp eq i32 %0, 104
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %1 = zext i1 %switch.selectcmp to i32
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_construct_message(%struct.ssl_st* noundef %s, %struct.wpacket_st* nocapture noundef readnone %pkt, i32 (%struct.ssl_st*, %struct.wpacket_st*)** nocapture noundef writeonly %confunc, i32* nocapture noundef writeonly %mt) local_unnamed_addr #1 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 35, label %sw.bb
    i32 21, label %sw.bb1
    i32 19, label %sw.bb2
    i32 22, label %sw.bb3
    i32 23, label %sw.bb4
    i32 40, label %sw.bb5
    i32 24, label %sw.bb6
    i32 25, label %sw.bb7
    i32 26, label %sw.bb8
    i32 33, label %sw.bb9
    i32 34, label %sw.bb10
    i32 36, label %sw.bb11
    i32 46, label %sw.bb12
    i32 37, label %sw.bb13
    i32 42, label %sw.bb14
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1025, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.ossl_statem_server_construct_message, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 236, i8* noundef null) #13
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
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* %tls_construct_change_cipher_spec.dtls_construct_change_cipher_spec, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 257, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @dtls_construct_hello_verify_request, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 3, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 0, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_server_hello, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 2, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_server_certificate, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 11, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_cert_verify, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 15, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_server_key_exchange, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 12, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_certificate_request, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 13, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_server_done, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 14, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_new_session_ticket, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 4, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_cert_status, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 22, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_finished, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 20, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* null, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 -1, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_encrypted_extensions, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 8, i32* %mt, align 4, !tbaa !79
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  store i32 (%struct.ssl_st*, %struct.wpacket_st*)* @tls_construct_key_update, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !80
  store i32 24, i32* %mt, align 4, !tbaa !79
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %sw.bb5, %sw.bb6, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %sw.bb14, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %sw.bb14 ], [ 1, %sw.bb13 ], [ 1, %sw.bb12 ], [ 1, %sw.bb11 ], [ 1, %sw.bb10 ], [ 1, %sw.bb9 ], [ 1, %sw.bb8 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @dtls_construct_change_cipher_spec(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #2

declare i32 @tls_construct_change_cipher_spec(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_construct_hello_verify_request(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %cookie_leni = alloca i32, align 4
  %0 = bitcast i32* %cookie_leni to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %app_gen_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 22
  %2 = load i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32*)** %app_gen_cookie_cb, align 8, !tbaa !82
  %cmp = icmp eq i32 (%struct.ssl_st*, i8*, i32*)* %2, null
  br i1 %cmp, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %3 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !48
  %arraydecay = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %3, i64 0, i32 0, i64 0
  %call = call i32 %2(%struct.ssl_st* noundef nonnull %s, i8* noundef %arraydecay, i32* noundef nonnull %cookie_leni) #13
  %cmp3 = icmp eq i32 %call, 0
  %4 = load i32, i32* %cookie_leni, align 4
  %cmp5 = icmp ugt i32 %4, 255
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp5
  br i1 %or.cond, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i32 %4 to i64
  %5 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !48
  %cookie_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 1
  store i64 %conv, i64* %cookie_len, align 8, !tbaa !87
  %arraydecay9 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 0, i64 0
  %call12 = call i32 @dtls_raw_hello_verify_request(%struct.wpacket_st* noundef %pkt, i8* noundef %arraydecay9, i64 noundef %conv) #14
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %entry, %lor.lhs.false
  %.sink24 = phi i32 [ 1295, %lor.lhs.false ], [ 1295, %entry ], [ 1302, %if.end ]
  %.sink = phi i32 [ 400, %lor.lhs.false ], [ 400, %entry ], [ 786691, %if.end ]
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink24, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.dtls_construct_hello_verify_request, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef %.sink, i8* noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_server_hello(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.end

land.lhs.true:                                    ; preds = %entry
  %version2 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version2, align 8, !tbaa !26
  %cmp = icmp slt i32 %4, 772
  %cmp6.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp, %cmp6.not
  br i1 %or.cond, label %lor.end, label %cond.end

lor.end:                                          ; preds = %entry, %land.lhs.true
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %5 = load i32, i32* %hello_retry_request, align 8, !tbaa !39
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %cond.end, label %cond.false

cond.false:                                       ; preds = %lor.end
  %version9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %6 = load i32, i32* %version9, align 8, !tbaa !29
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %lor.end, %cond.false
  %7 = phi i1 [ false, %cond.false ], [ true, %lor.end ], [ true, %land.lhs.true ]
  %cond = phi i32 [ %6, %cond.false ], [ 771, %lor.end ], [ 771, %land.lhs.true ]
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %cond, i64 noundef 2) #13
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %hello_retry_request11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %8 = load i32, i32* %hello_retry_request11, align 8, !tbaa !39
  %cmp12 = icmp eq i32 %8, 1
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %cond16 = select i1 %cmp12, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @hrrrandom, i64 0, i64 0), i8* %arraydecay
  %call17 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef %cond16, i64 noundef 32) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2319, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_server_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %not_resumable = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 10
  %10 = load i32, i32* %not_resumable, align 8, !tbaa !88
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %if.then25

lor.lhs.false20:                                  ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %11, i64 0, i32 10
  %12 = load i32, i32* %session_cache_mode, align 8, !tbaa !89
  %and21 = and i32 %12, 2
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %if.end27

land.lhs.true23:                                  ; preds = %lor.lhs.false20
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %13 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.lhs.true23, %if.end
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 4
  store i64 0, i64* %session_id_length, align 8, !tbaa !90
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true23, %lor.lhs.false20
  br i1 %7, label %if.end36, label %if.end36.thread

if.end36:                                         ; preds = %if.end27
  %tmp_session_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 61
  %arraydecay30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 60, i64 0
  %sl.0 = load i64, i64* %tmp_session_id_len, align 8, !tbaa !91
  %cmp37 = icmp ugt i64 %sl.0, 32
  br i1 %cmp37, label %if.then38, label %if.end49

if.end36.thread:                                  ; preds = %if.end27
  %session_id_length32 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 4
  %arraydecay35 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 5, i64 0
  %sl.0160 = load i64, i64* %session_id_length32, align 8, !tbaa !91
  %cmp37161 = icmp ugt i64 %sl.0160, 32
  br i1 %cmp37161, label %if.then38, label %lor.lhs.false41

if.then38:                                        ; preds = %if.end36.thread, %if.end36
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2355, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_server_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

lor.lhs.false41:                                  ; preds = %if.end36.thread
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  %14 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !92
  %cmp43 = icmp eq %struct.ssl_comp_st* %14, null
  br i1 %cmp43, label %if.end49, label %if.else45

if.else45:                                        ; preds = %lor.lhs.false41
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %14, i64 0, i32 0
  %15 = load i32, i32* %id, align 8, !tbaa !93
  br label %if.end49

if.end49:                                         ; preds = %if.end36, %lor.lhs.false41, %if.else45
  %session_id.0162169 = phi i8* [ %arraydecay35, %if.else45 ], [ %arraydecay35, %lor.lhs.false41 ], [ %arraydecay30, %if.end36 ]
  %sl.0163167 = phi i64 [ %sl.0160, %if.else45 ], [ %sl.0160, %lor.lhs.false41 ], [ %sl.0, %if.end36 ]
  %compm.0 = phi i32 [ %15, %if.else45 ], [ 0, %lor.lhs.false41 ], [ 0, %if.end36 ]
  %call50 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %session_id.0162169, i64 noundef %sl.0163167, i64 noundef 1) #13
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then61, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end49
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %put_cipher_by_char = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 20
  %17 = load i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)** %put_cipher_by_char, align 8, !tbaa !95
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %18 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %call56 = call i32 %17(%struct.ssl_cipher_st* noundef %18, %struct.wpacket_st* noundef %pkt, i64* noundef nonnull %len) #13
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then61, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %call59 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %compm.0, i64 noundef 1) #13
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %lor.lhs.false58, %lor.lhs.false52, %if.end49
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2372, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.tls_construct_server_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false58
  %19 = load i32, i32* %hello_retry_request11, align 8, !tbaa !39
  %cmp64 = icmp eq i32 %19, 1
  br i1 %cmp64, label %cond.end80, label %cond.false66

cond.false66:                                     ; preds = %if.end62
  %20 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc68 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 25
  %21 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc68, align 8, !tbaa !22
  %enc_flags69 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %21, i64 0, i32 12
  %22 = load i32, i32* %enc_flags69, align 8, !tbaa !24
  %and70 = and i32 %22, 8
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %cond.end80

land.lhs.true72:                                  ; preds = %cond.false66
  %version74 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 0
  %23 = load i32, i32* %version74, align 8, !tbaa !26
  %cmp75 = icmp sgt i32 %23, 771
  br i1 %cmp75, label %land.rhs, label %cond.end80

land.rhs:                                         ; preds = %land.lhs.true72
  %cmp78.not = icmp eq i32 %23, 65536
  %phi.sel = select i1 %cmp78.not, i32 256, i32 512
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false66, %land.lhs.true72, %land.rhs, %if.end62
  %cond81 = phi i32 [ 2048, %if.end62 ], [ 256, %land.lhs.true72 ], [ 256, %cond.false66 ], [ %phi.sel, %land.rhs ]
  %call82 = call i32 @tls_construct_extensions(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef %cond81, %struct.x509_st* noundef null, i64 noundef 0) #13
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %cleanup, label %if.end85

if.end85:                                         ; preds = %cond.end80
  %24 = load i32, i32* %hello_retry_request11, align 8, !tbaa !39
  %cmp87 = icmp eq i32 %24, 1
  br i1 %cmp87, label %if.then88, label %if.else96

if.then88:                                        ; preds = %if.end85
  %25 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %25) #13
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %hit91 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 0, i32* %hit91, align 8, !tbaa !57
  %call92 = call i32 @create_synthetic_message_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #13
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %cleanup, label %if.end104

if.else96:                                        ; preds = %if.end85
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %26 = load i32, i32* %verify_mode, align 8, !tbaa !30
  %and97 = and i32 %26, 1
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %land.lhs.true99, label %if.end104

land.lhs.true99:                                  ; preds = %if.else96
  %call100 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %cleanup, label %if.end104

if.end104:                                        ; preds = %if.else96, %land.lhs.true99, %if.then88
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true99, %if.then88, %cond.end80, %if.end104, %if.then61, %if.then38, %if.then
  %retval.0 = phi i32 [ 0, %if.then38 ], [ 1, %if.end104 ], [ 0, %if.then61 ], [ 0, %if.then ], [ 0, %cond.end80 ], [ 0, %if.then88 ], [ 0, %land.lhs.true99 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_server_certificate(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %0 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert, align 8, !tbaa !96
  %cmp = icmp eq %struct.cert_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3601, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_server_certificate, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !26
  %cmp2 = icmp slt i32 %4, 772
  %cmp6.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp2, %cmp6.not
  br i1 %or.cond, label %if.end10, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #13
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true7
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3610, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_server_certificate, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end
  %call11 = tail call i64 @ssl3_output_cert_chain(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, %struct.cert_pkey_st* noundef nonnull %0) #13
  %tobool12.not = icmp ne i64 %call11, 0
  %. = zext i1 %tobool12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ %., %if.end10 ]
  ret i32 %retval.0
}

declare i32 @tls_construct_cert_verify(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_server_key_exchange(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %encodedPoint = alloca i8*, align 8
  %r = alloca [4 x %struct.bignum_st*], align 16
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %paramlen = alloca i64, align 8
  %paramoffset = alloca i64, align 8
  %binval = alloca i8*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %sigbytes1 = alloca i8*, align 8
  %sigbytes2 = alloca i8*, align 8
  %tbs = alloca i8*, align 8
  %siglen = alloca i64, align 8
  %0 = bitcast i8** %encodedPoint to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i8* null, i8** %encodedPoint, align 8, !tbaa !80
  %sigalg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 26
  %1 = load %struct.sigalg_lookup_st*, %struct.sigalg_lookup_st** %sigalg, align 8, !tbaa !97
  %2 = bitcast [4 x %struct.bignum_st*]* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #15
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %3 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !80
  %4 = bitcast i64* %paramlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15
  %5 = bitcast i64* %paramoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15
  %call1 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %paramoffset) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2437, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2442, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end3:                                          ; preds = %if.end
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %6 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %6, i64 0, i32 4
  %7 = load i32, i32* %algorithm_mkey, align 4, !tbaa !65
  %conv = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 3
  %arrayidx6 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 2
  %8 = bitcast %struct.bignum_st** %arrayidx6 to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> zeroinitializer, <2 x %struct.bignum_st*>* %8, align 16, !tbaa !80
  %arrayidx7 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 1
  %arrayidx8 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 0
  %9 = bitcast [4 x %struct.bignum_st*]* %r to <2 x %struct.bignum_st*>*
  store <2 x %struct.bignum_st*> zeroinitializer, <2 x %struct.bignum_st*>* %9, align 16, !tbaa !80
  %and = and i64 %conv, 72
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.end166

if.else:                                          ; preds = %if.end3
  %and11 = and i64 %conv, 258
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.else88, label %if.then13

if.then13:                                        ; preds = %if.else
  %cert14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %10 = load %struct.cert_st*, %struct.cert_st** %cert14, align 8, !tbaa !66
  %dh_tmp_auto = getelementptr inbounds %struct.cert_st, %struct.cert_st* %10, i64 0, i32 3
  %11 = load i32, i32* %dh_tmp_auto, align 8, !tbaa !98
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.then13
  %call18 = call %struct.evp_pkey_st* @ssl_get_auto_dh(%struct.ssl_st* noundef nonnull %s) #13
  %cmp19 = icmp eq %struct.evp_pkey_st* %call18, null
  br i1 %cmp19, label %if.then21, label %if.end43

if.then21:                                        ; preds = %if.then17
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2461, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end24:                                         ; preds = %if.then13
  %dh_tmp = getelementptr inbounds %struct.cert_st, %struct.cert_st* %10, i64 0, i32 1
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dh_tmp, align 8, !tbaa !99
  %cmp25 = icmp eq %struct.evp_pkey_st* %12, null
  br i1 %cmp25, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end24
  %dh_tmp_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %10, i64 0, i32 2
  %13 = load %struct.dh_st* (%struct.ssl_st*, i32, i32)*, %struct.dh_st* (%struct.ssl_st*, i32, i32)** %dh_tmp_cb, align 8, !tbaa !100
  %cmp28.not = icmp eq %struct.dh_st* (%struct.ssl_st*, i32, i32)* %13, null
  br i1 %cmp28.not, label %if.then42, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %call33 = call %struct.dh_st* %13(%struct.ssl_st* noundef nonnull %s, i32 noundef 0, i32 noundef 1024) #13
  %call34 = call %struct.evp_pkey_st* @ssl_dh_to_pkey(%struct.dh_st* noundef %call33) #13
  %cmp35 = icmp eq %struct.evp_pkey_st* %call34, null
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.then30
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2472, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.then42:                                        ; preds = %land.lhs.true
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2479, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 171, i8* noundef null) #13
  br label %err

if.end43:                                         ; preds = %if.then17, %if.end24, %if.then30
  %pkdhp.1.ph = phi %struct.evp_pkey_st* [ %call34, %if.then30 ], [ %12, %if.end24 ], [ %call18, %if.then17 ]
  %pkdh.1.ph = phi %struct.evp_pkey_st* [ %call34, %if.then30 ], [ null, %if.end24 ], [ %call18, %if.then17 ]
  %call44 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef nonnull %pkdhp.1.ph) #13
  %14 = bitcast %struct.evp_pkey_st* %pkdhp.1.ph to i8*
  %call45 = call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 262151, i32 noundef %call44, i32 noundef 0, i8* noundef nonnull %14) #13
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2484, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 394, i8* noundef null) #13
  br label %err

if.end48:                                         ; preds = %if.end43
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %cmp51.not = icmp eq %struct.evp_pkey_st* %15, null
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end48
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2488, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end54:                                         ; preds = %if.end48
  %call55 = call %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %pkdhp.1.ph) #13
  store %struct.evp_pkey_st* %call55, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %cmp62 = icmp eq %struct.evp_pkey_st* %call55, null
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end54
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2494, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end65:                                         ; preds = %if.end54
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkdh.1.ph) #13
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %call70 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.bignum_st** noundef nonnull %arrayidx8) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end65
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %call76 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.bignum_st** noundef nonnull %arrayidx7) #13
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then85, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %call83 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %18, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.bignum_st** noundef nonnull %arrayidx6) #13
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %if.end166

if.then85:                                        ; preds = %lor.lhs.false78, %lor.lhs.false, %if.end65
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2509, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.else88:                                        ; preds = %if.else
  %and89 = and i64 %conv, 132
  %tobool90.not = icmp eq i64 %and89, 0
  br i1 %tobool90.not, label %if.else129, label %if.then91

if.then91:                                        ; preds = %if.else88
  %pkey94 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey94, align 8, !tbaa !101
  %cmp95.not = icmp eq %struct.evp_pkey_st* %19, null
  br i1 %cmp95.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.then91
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2515, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end98:                                         ; preds = %if.then91
  %call99 = call zeroext i16 @tls1_shared_group(%struct.ssl_st* noundef nonnull %s, i32 noundef -2) #13
  %conv100 = zext i16 %call99 to i32
  %cmp101 = icmp eq i16 %call99, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end98
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2523, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 315, i8* noundef null) #13
  br label %err

if.end104:                                        ; preds = %if.end98
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %20 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %kex_group = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %20, i64 0, i32 22
  store i32 %conv100, i32* %kex_group, align 8, !tbaa !102
  %call106 = call %struct.evp_pkey_st* @ssl_generate_pkey_group(%struct.ssl_st* noundef nonnull %s, i16 noundef zeroext %call99) #13
  store %struct.evp_pkey_st* %call106, %struct.evp_pkey_st** %pkey94, align 8, !tbaa !101
  %cmp113 = icmp eq %struct.evp_pkey_st* %call106, null
  br i1 %cmp113, label %err, label %if.end116

if.end116:                                        ; preds = %if.end104
  %call120 = call i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call106, i8** noundef nonnull %encodedPoint) #13
  %cmp121 = icmp eq i64 %call120, 0
  br i1 %cmp121, label %if.then123, label %if.end166.sink.split

if.then123:                                       ; preds = %if.end116
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2539, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524304, i8* noundef null) #13
  br label %err

if.else129:                                       ; preds = %if.else88
  %and130 = and i64 %conv, 32
  %tobool131.not = icmp eq i64 %and130, 0
  br i1 %tobool131.not, label %if.else162, label %if.then132

if.then132:                                       ; preds = %if.else129
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %21 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !103
  %cmp133 = icmp eq %struct.bignum_st* %21, null
  br i1 %cmp133, label %if.then148, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %if.then132
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %22 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !104
  %cmp137 = icmp eq %struct.bignum_st* %22, null
  br i1 %cmp137, label %if.then148, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false135
  %s141 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %23 = load %struct.bignum_st*, %struct.bignum_st** %s141, align 8, !tbaa !105
  %cmp142 = icmp eq %struct.bignum_st* %23, null
  br i1 %cmp142, label %if.then148, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false139
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  %24 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !106
  %cmp146 = icmp eq %struct.bignum_st* %24, null
  br i1 %cmp146, label %if.then148, label %if.end166.sink.split

if.then148:                                       ; preds = %lor.lhs.false144, %lor.lhs.false139, %lor.lhs.false135, %if.then132
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2557, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 358, i8* noundef null) #13
  br label %err

if.else162:                                       ; preds = %if.else129
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2567, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 250, i8* noundef null) #13
  br label %err

if.end166.sink.split:                             ; preds = %lor.lhs.false144, %if.end116
  %storemerge = phi %struct.bignum_st* [ null, %if.end116 ], [ %21, %lor.lhs.false144 ]
  %.sink582 = phi %struct.bignum_st* [ null, %if.end116 ], [ %22, %lor.lhs.false144 ]
  %.sink581 = phi %struct.bignum_st* [ null, %if.end116 ], [ %23, %lor.lhs.false144 ]
  %.sink = phi %struct.bignum_st* [ null, %if.end116 ], [ %24, %lor.lhs.false144 ]
  %curve_id.0.ph = phi i32 [ %conv100, %if.end116 ], [ 0, %lor.lhs.false144 ]
  %encodedlen.0.ph = phi i64 [ %call120, %if.end116 ], [ 0, %lor.lhs.false144 ]
  store %struct.bignum_st* %storemerge, %struct.bignum_st** %arrayidx8, align 16, !tbaa !80
  store %struct.bignum_st* %.sink582, %struct.bignum_st** %arrayidx7, align 8, !tbaa !80
  store %struct.bignum_st* %.sink581, %struct.bignum_st** %arrayidx6, align 16, !tbaa !80
  store %struct.bignum_st* %.sink, %struct.bignum_st** %arrayidx, align 8, !tbaa !80
  br label %if.end166

if.end166:                                        ; preds = %if.end166.sink.split, %lor.lhs.false78, %if.end3
  %freer.1 = phi i32 [ 0, %if.end3 ], [ 1, %lor.lhs.false78 ], [ 0, %if.end166.sink.split ]
  %curve_id.0 = phi i32 [ 0, %if.end3 ], [ 0, %lor.lhs.false78 ], [ %curve_id.0.ph, %if.end166.sink.split ]
  %encodedlen.0 = phi i64 [ 0, %if.end3 ], [ 0, %lor.lhs.false78 ], [ %encodedlen.0.ph, %if.end166.sink.split ]
  %25 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %25, i64 0, i32 5
  %26 = load i32, i32* %algorithm_auth, align 8, !tbaa !45
  %and170 = and i32 %26, 68
  %cmp171.not = icmp eq i32 %and170, 0
  br i1 %cmp171.not, label %lor.lhs.false173, label %if.end187

lor.lhs.false173:                                 ; preds = %if.end166
  %algorithm_mkey177 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %25, i64 0, i32 4
  %27 = load i32, i32* %algorithm_mkey177, align 4, !tbaa !65
  %and178 = and i32 %27, 456
  %cmp179.not = icmp eq i32 %and178, 0
  br i1 %cmp179.not, label %if.else182, label %if.end187

if.else182:                                       ; preds = %lor.lhs.false173
  %cmp183 = icmp eq %struct.sigalg_lookup_st* %1, null
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %if.else182
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2575, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end187:                                        ; preds = %if.end166, %lor.lhs.false173, %if.else182
  %lu.0 = phi %struct.sigalg_lookup_st* [ %1, %if.else182 ], [ null, %lor.lhs.false173 ], [ null, %if.end166 ]
  %and188 = and i64 %conv, 456
  %tobool189.not = icmp eq i64 %and188, 0
  br i1 %tobool189.not, label %if.end209, label %if.then190

if.then190:                                       ; preds = %if.end187
  %cert191 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %28 = load %struct.cert_st*, %struct.cert_st** %cert191, align 8, !tbaa !66
  %psk_identity_hint = getelementptr inbounds %struct.cert_st, %struct.cert_st* %28, i64 0, i32 20
  %29 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !67
  %cmp192 = icmp eq i8* %29, null
  br i1 %cmp192, label %lor.lhs.false199, label %cond.end

cond.end:                                         ; preds = %if.then190
  %call196 = call i64 @strlen(i8* noundef nonnull %29) #17
  %cmp197 = icmp ugt i64 %call196, 256
  br i1 %cmp197, label %cleanup206, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %if.then190, %cond.end
  %cond569 = phi i64 [ %call196, %cond.end ], [ 0, %if.then190 ]
  %call202 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %29, i64 noundef %cond569, i64 noundef 2) #13
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %cleanup206, label %if.end209

cleanup206:                                       ; preds = %cond.end, %lor.lhs.false199
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2591, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end209:                                        ; preds = %lor.lhs.false199, %if.end187
  %30 = bitcast i8** %binval to i8*
  %and218 = and i64 %conv, 32
  %tobool219.not = icmp eq i64 %and218, 0
  %and231 = and i64 %conv, 258
  %tobool232.not = icmp eq i64 %and231, 0
  br label %land.rhs

land.rhs:                                         ; preds = %if.end209, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end209 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx212 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 %indvars.iv
  %31 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx212, align 8, !tbaa !80
  %cmp213.not = icmp eq %struct.bignum_st* %31, null
  br i1 %cmp213.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #15
  %cmp215 = icmp ne i64 %indvars.iv, 2
  %or.cond = select i1 %cmp215, i1 true, i1 %tobool219.not
  %. = select i1 %or.cond, i64 2, i64 1
  %call223 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef %.) #13
  %tobool225.not = icmp eq i32 %call223, 0
  br i1 %tobool225.not, label %cleanup271.thread, label %if.end227

if.end227:                                        ; preds = %for.body
  %or.cond552 = select i1 %cmp215, i1 true, i1 %tobool232.not
  br i1 %or.cond552, label %if.end254, label %if.then233

if.then233:                                       ; preds = %if.end227
  %32 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx8, align 16, !tbaa !80
  %call236 = call i32 @BN_num_bits(%struct.bignum_st* noundef %32) #13
  %add = add nsw i32 %call236, 7
  %div = sdiv i32 %add, 8
  %33 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx6, align 16, !tbaa !80
  %call238 = call i32 @BN_num_bits(%struct.bignum_st* noundef %33) #13
  %add239 = add nsw i32 %call238, 7
  %div240.neg = sdiv i32 %add239, -8
  %sub = add nsw i32 %div240.neg, %div
  %conv241 = sext i32 %sub to i64
  %cmp242.not = icmp eq i32 %sub, 0
  br i1 %cmp242.not, label %if.end254, label %if.then244

if.then244:                                       ; preds = %if.then233
  %call245 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv241, i8** noundef nonnull %binval) #13
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %cleanup271.thread, label %if.end248

if.end248:                                        ; preds = %if.then244
  %34 = load i8*, i8** %binval, align 8, !tbaa !80
  %call249 = call i8* @memset(i8* noundef %34, i32 noundef 0, i64 noundef %conv241) #13
  br label %if.end254

if.end254:                                        ; preds = %if.then233, %if.end248, %if.end227
  %35 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx212, align 8, !tbaa !80
  %call257 = call i32 @BN_num_bits(%struct.bignum_st* noundef %35) #13
  %add258 = add nsw i32 %call257, 7
  %div259 = sdiv i32 %add258, 8
  %conv260 = sext i32 %div259 to i64
  %call261 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv260, i8** noundef nonnull %binval) #13
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %cleanup271.thread, label %lor.lhs.false263

lor.lhs.false263:                                 ; preds = %if.end254
  %call264 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %cleanup271.thread, label %for.inc

cleanup271.thread:                                ; preds = %if.end254, %lor.lhs.false263, %if.then244, %for.body
  %.sink584 = phi i32 [ 2609, %for.body ], [ 2623, %if.then244 ], [ 2632, %lor.lhs.false263 ], [ 2632, %if.end254 ]
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink584, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #15
  br label %err

for.inc:                                          ; preds = %lor.lhs.false263
  %36 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx212, align 8, !tbaa !80
  %37 = load i8*, i8** %binval, align 8, !tbaa !80
  %call270 = call i32 @BN_bn2bin(%struct.bignum_st* noundef %36, i8* noundef %37) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %land.rhs, !llvm.loop !107

for.end:                                          ; preds = %for.inc, %land.rhs
  %and275 = and i64 %conv, 132
  %tobool276.not = icmp eq i64 %and275, 0
  br i1 %tobool276.not, label %if.end291, label %if.then277

if.then277:                                       ; preds = %for.end
  %call278 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 3, i64 noundef 1) #13
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.then289, label %lor.lhs.false280

lor.lhs.false280:                                 ; preds = %if.then277
  %call281 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #13
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %if.then289, label %lor.lhs.false283

lor.lhs.false283:                                 ; preds = %lor.lhs.false280
  %call284 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %curve_id.0, i64 noundef 1) #13
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.then289, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false283
  %38 = load i8*, i8** %encodedPoint, align 8, !tbaa !80
  %call287 = call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %38, i64 noundef %encodedlen.0, i64 noundef 1) #13
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.then289, label %if.end290

if.then289:                                       ; preds = %lor.lhs.false286, %lor.lhs.false283, %lor.lhs.false280, %if.then277
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2650, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end290:                                        ; preds = %lor.lhs.false286
  %39 = load i8*, i8** %encodedPoint, align 8, !tbaa !80
  call void @CRYPTO_free(i8* noundef %39, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2653) #13
  store i8* null, i8** %encodedPoint, align 8, !tbaa !80
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %for.end
  %cmp292.not = icmp eq %struct.sigalg_lookup_st* %lu.0, null
  br i1 %cmp292.not, label %err, label %if.then294

if.then294:                                       ; preds = %if.end291
  %cert298 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %40 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert298, align 8, !tbaa !96
  %privatekey = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %40, i64 0, i32 1
  %41 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !109
  %42 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #15
  %43 = bitcast i8** %sigbytes1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #15
  %44 = bitcast i8** %sigbytes2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #15
  %45 = bitcast i8** %tbs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #15
  %46 = bitcast i64* %siglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #15
  store i64 0, i64* %siglen, align 8, !tbaa !91
  %cmp299 = icmp eq %struct.evp_pkey_st* %41, null
  br i1 %cmp299, label %cleanup369.thread.sink.split, label %lor.lhs.false301

lor.lhs.false301:                                 ; preds = %if.then294
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %47 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %call302 = call i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef %47, %struct.sigalg_lookup_st* noundef nonnull %lu.0, %struct.evp_md_st** noundef nonnull %md) #13
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %cleanup369.thread.sink.split, label %if.end305

if.end305:                                        ; preds = %lor.lhs.false301
  %call306 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %paramlen) #13
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %cleanup369.thread.sink.split, label %if.end309

if.end309:                                        ; preds = %if.end305
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %48 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %48, i64 0, i32 25
  %49 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %49, i64 0, i32 12
  %50 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and310 = and i32 %50, 2
  %tobool311.not = icmp eq i32 %and310, 0
  br i1 %tobool311.not, label %if.end318, label %land.lhs.true312

land.lhs.true312:                                 ; preds = %if.end309
  %sigalg313 = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.0, i64 0, i32 1
  %51 = load i16, i16* %sigalg313, align 8, !tbaa !111
  %conv314 = zext i16 %51 to i32
  %call315 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv314, i64 noundef 2) #13
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %cleanup369.thread.sink.split, label %if.end318

if.end318:                                        ; preds = %land.lhs.true312, %if.end309
  %52 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !80
  %cmp319 = icmp eq %struct.evp_md_st* %52, null
  br i1 %cmp319, label %cond.end324, label %cond.false322

cond.false322:                                    ; preds = %if.end318
  %call323 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %52) #13
  br label %cond.end324

cond.end324:                                      ; preds = %if.end318, %cond.false322
  %cond325 = phi i8* [ %call323, %cond.false322 ], [ null, %if.end318 ]
  %53 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %53, i64 0, i32 0
  %54 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %53, i64 0, i32 85
  %55 = load i8*, i8** %propq, align 8, !tbaa !114
  %call328 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %cond325, %struct.ossl_lib_ctx_st* noundef %54, i8* noundef %55, %struct.evp_pkey_st* noundef nonnull %41, %struct.ossl_param_st* noundef null) #13
  %cmp329 = icmp slt i32 %call328, 1
  br i1 %cmp329, label %cleanup369.thread.sink.split, label %if.end332

if.end332:                                        ; preds = %cond.end324
  %sig = getelementptr inbounds %struct.sigalg_lookup_st, %struct.sigalg_lookup_st* %lu.0, i64 0, i32 4
  %56 = load i32, i32* %sig, align 4, !tbaa !115
  %cmp333 = icmp eq i32 %56, 912
  br i1 %cmp333, label %if.then335, label %if.end345

if.then335:                                       ; preds = %if.end332
  %57 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !80
  %call336 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef %57, i32 noundef 6) #13
  %cmp337 = icmp slt i32 %call336, 1
  br i1 %cmp337, label %cleanup369.thread.sink.split, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %if.then335
  %58 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !80
  %call340 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef %58, i32 noundef -1) #13
  %cmp341 = icmp slt i32 %call340, 1
  br i1 %cmp341, label %cleanup369.thread.sink.split, label %if.end345

if.end345:                                        ; preds = %lor.lhs.false339, %if.end332
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %59 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !116
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %59, i64 0, i32 1
  %60 = load i8*, i8** %data, align 8, !tbaa !117
  %61 = load i64, i64* %paramoffset, align 8, !tbaa !91
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %61
  %62 = load i64, i64* %paramlen, align 8, !tbaa !91
  %call346 = call i64 @construct_key_exchange_tbs(%struct.ssl_st* noundef nonnull %s, i8** noundef nonnull %tbs, i8* noundef %add.ptr, i64 noundef %62) #13
  %cmp347 = icmp eq i64 %call346, 0
  br i1 %cmp347, label %cleanup369.thread, label %if.end350

if.end350:                                        ; preds = %if.end345
  %63 = load i8*, i8** %tbs, align 8, !tbaa !80
  %call351 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef null, i64* noundef nonnull %siglen, i8* noundef %63, i64 noundef %call346) #13
  %cmp352 = icmp slt i32 %call351, 1
  br i1 %cmp352, label %if.then367, label %lor.lhs.false354

lor.lhs.false354:                                 ; preds = %if.end350
  %64 = load i64, i64* %siglen, align 8, !tbaa !91
  %call355 = call i32 @WPACKET_sub_reserve_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %64, i8** noundef nonnull %sigbytes1, i64 noundef 2) #13
  %tobool356.not = icmp eq i32 %call355, 0
  br i1 %tobool356.not, label %if.then367, label %lor.lhs.false357

lor.lhs.false357:                                 ; preds = %lor.lhs.false354
  %65 = load i8*, i8** %sigbytes1, align 8, !tbaa !80
  %66 = load i8*, i8** %tbs, align 8, !tbaa !80
  %call358 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %65, i64* noundef nonnull %siglen, i8* noundef %66, i64 noundef %call346) #13
  %cmp359 = icmp slt i32 %call358, 1
  br i1 %cmp359, label %if.then367, label %lor.lhs.false361

lor.lhs.false361:                                 ; preds = %lor.lhs.false357
  %67 = load i64, i64* %siglen, align 8, !tbaa !91
  %call362 = call i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef %pkt, i64 noundef %67, i8** noundef nonnull %sigbytes2, i64 noundef 2) #13
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.then367, label %lor.lhs.false364

lor.lhs.false364:                                 ; preds = %lor.lhs.false361
  %68 = load i8*, i8** %sigbytes1, align 8, !tbaa !80
  %69 = load i8*, i8** %sigbytes2, align 8, !tbaa !80
  %cmp365.not = icmp eq i8* %68, %69
  br i1 %cmp365.not, label %cleanup369, label %if.then367

if.then367:                                       ; preds = %lor.lhs.false364, %lor.lhs.false361, %lor.lhs.false357, %lor.lhs.false354, %if.end350
  %70 = load i8*, i8** %tbs, align 8, !tbaa !80
  call void @CRYPTO_free(i8* noundef %70, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2707) #13
  br label %cleanup369.thread.sink.split

cleanup369.thread.sink.split:                     ; preds = %if.then335, %lor.lhs.false339, %cond.end324, %land.lhs.true312, %if.end305, %if.then294, %lor.lhs.false301, %if.then367
  %.sink586 = phi i32 [ 2708, %if.then367 ], [ 2666, %lor.lhs.false301 ], [ 2666, %if.then294 ], [ 2671, %if.end305 ], [ 2676, %land.lhs.true312 ], [ 2684, %cond.end324 ], [ 2690, %lor.lhs.false339 ], [ 2690, %if.then335 ]
  %.sink585 = phi i32 [ 786691, %if.then367 ], [ 786691, %lor.lhs.false301 ], [ 786691, %if.then294 ], [ 786691, %if.end305 ], [ 786691, %land.lhs.true312 ], [ 786691, %cond.end324 ], [ 524294, %lor.lhs.false339 ], [ 524294, %if.then335 ]
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink586, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_server_key_exchange, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %.sink585, i8* noundef null) #13
  br label %cleanup369.thread

cleanup369.thread:                                ; preds = %cleanup369.thread.sink.split, %if.end345
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #15
  br label %err

cleanup369:                                       ; preds = %lor.lhs.false364
  %71 = load i8*, i8** %tbs, align 8, !tbaa !80
  call void @CRYPTO_free(i8* noundef %71, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2711) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #15
  br label %err

err:                                              ; preds = %if.then47, %if.then85, %if.then64, %if.then53, %if.then42, %if.then37, %if.then21, %if.end291, %cleanup369, %cleanup369.thread, %cleanup271.thread, %cleanup206, %if.end104, %if.then289, %if.then185, %if.else162, %if.then148, %if.then123, %if.then103, %if.then97, %if.then2, %if.then
  %freer.2 = phi i32 [ 0, %if.then2 ], [ %freer.1, %cleanup206 ], [ %freer.1, %if.then289 ], [ %freer.1, %if.then185 ], [ 0, %if.then97 ], [ 0, %if.then103 ], [ 0, %if.end104 ], [ 0, %if.then123 ], [ 0, %if.then148 ], [ 0, %if.else162 ], [ 0, %if.then ], [ %freer.1, %cleanup271.thread ], [ %freer.1, %cleanup369.thread ], [ %freer.1, %cleanup369 ], [ %freer.1, %if.end291 ], [ 0, %if.then47 ], [ 1, %if.then85 ], [ 0, %if.then64 ], [ 0, %if.then53 ], [ 0, %if.then42 ], [ 0, %if.then37 ], [ 0, %if.then21 ]
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %cleanup206 ], [ 0, %if.then289 ], [ 0, %if.then185 ], [ 0, %if.then97 ], [ 0, %if.then103 ], [ 0, %if.end104 ], [ 0, %if.then123 ], [ 0, %if.then148 ], [ 0, %if.else162 ], [ 0, %if.then ], [ 0, %cleanup271.thread ], [ 0, %cleanup369.thread ], [ 1, %cleanup369 ], [ 1, %if.end291 ], [ 0, %if.then47 ], [ 0, %if.then85 ], [ 0, %if.then64 ], [ 0, %if.then53 ], [ 0, %if.then42 ], [ 0, %if.then37 ], [ 0, %if.then21 ]
  %pkdh.4 = phi %struct.evp_pkey_st* [ null, %if.then2 ], [ null, %cleanup206 ], [ null, %if.then289 ], [ null, %if.then185 ], [ null, %if.then97 ], [ null, %if.then103 ], [ null, %if.end104 ], [ null, %if.then123 ], [ null, %if.then148 ], [ null, %if.else162 ], [ null, %if.then ], [ null, %cleanup271.thread ], [ null, %cleanup369.thread ], [ null, %cleanup369 ], [ null, %if.end291 ], [ %pkdh.1.ph, %if.then47 ], [ null, %if.then85 ], [ %pkdh.1.ph, %if.then64 ], [ %pkdh.1.ph, %if.then53 ], [ null, %if.then42 ], [ null, %if.then37 ], [ null, %if.then21 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkdh.4) #13
  %72 = load i8*, i8** %encodedPoint, align 8, !tbaa !80
  call void @CRYPTO_free(i8* noundef %72, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2717) #13
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #13
  %tobool379.not = icmp eq i32 %freer.2, 0
  br i1 %tobool379.not, label %cleanup386, label %if.then380

if.then380:                                       ; preds = %err
  %arrayidx381 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 0
  %73 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx381, align 16, !tbaa !80
  call void @BN_free(%struct.bignum_st* noundef %73) #13
  %arrayidx382 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 1
  %74 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx382, align 8, !tbaa !80
  call void @BN_free(%struct.bignum_st* noundef %74) #13
  %arrayidx383 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 2
  %75 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx383, align 16, !tbaa !80
  call void @BN_free(%struct.bignum_st* noundef %75) #13
  %arrayidx384 = getelementptr inbounds [4 x %struct.bignum_st*], [4 x %struct.bignum_st*]* %r, i64 0, i64 3
  %76 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx384, align 8, !tbaa !80
  call void @BN_free(%struct.bignum_st* noundef %76) #13
  br label %cleanup386

cleanup386:                                       ; preds = %err, %if.then380
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_certificate_request(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %psigs = alloca i16*, align 8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end36, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %4 = load i32, i32* %post_handshake_auth, align 8, !tbaa !42
  %cmp6 = icmp eq i32 %4, 3
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %pha_context = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 102
  %5 = load i8*, i8** %pha_context, align 8, !tbaa !119
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2733) #13
  %pha_context_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 103
  store i64 32, i64* %pha_context_len, align 8, !tbaa !120
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2735) #13
  store i8* %call, i8** %pha_context, align 8, !tbaa !119
  %cmp10 = icmp eq i8* %call, null
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then7
  store i64 0, i64* %pha_context_len, align 8, !tbaa !120
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2737, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_certificate_request, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end:                                           ; preds = %if.then7
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 0
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %8 = load i64, i64* %pha_context_len, align 8, !tbaa !120
  %call15 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef nonnull %call, i64 noundef %8, i32 noundef 0) #13
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8*, i8** %pha_context, align 8, !tbaa !119
  %10 = load i64, i64* %pha_context_len, align 8, !tbaa !120
  %call19 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %9, i64 noundef %10, i64 noundef 1) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2744, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_certificate_request, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end22:                                         ; preds = %lor.lhs.false
  %call23 = tail call i32 @tls13_restore_handshake_digest_for_pha(%struct.ssl_st* noundef nonnull %s) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %return, label %if.end31

if.else:                                          ; preds = %if.then
  %call27 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 1) #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2754, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_certificate_request, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end31:                                         ; preds = %if.else, %if.end22
  %call32 = tail call i32 @tls_construct_extensions(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef 16384, %struct.x509_st* noundef null, i64 noundef 0) #13
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %return, label %done

if.end36:                                         ; preds = %land.lhs.true, %entry
  %call37 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 1) #13
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %call40 = tail call i32 @ssl3_get_req_cert_type(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt) #13
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then45, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false42, %lor.lhs.false39, %if.end36
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2771, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_certificate_request, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end46:                                         ; preds = %lor.lhs.false42
  %11 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc48 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 25
  %12 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc48, align 8, !tbaa !22
  %enc_flags49 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %12, i64 0, i32 12
  %13 = load i32, i32* %enc_flags49, align 8, !tbaa !24
  %and50 = and i32 %13, 2
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end68, label %if.then52

if.then52:                                        ; preds = %if.end46
  %14 = bitcast i16** %psigs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #15
  %call53 = call i64 @tls12_get_psigalgs(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i16** noundef nonnull %psigs) #13
  %call54 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #13
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.then52
  %call57 = call i32 @WPACKET_set_flags(%struct.wpacket_st* noundef %pkt, i32 noundef 1) #13
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %15 = load i16*, i16** %psigs, align 8, !tbaa !80
  %call60 = call i32 @tls12_copy_sigalgs(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i16* noundef %15, i64 noundef %call53) #13
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %call63 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false62
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #15
  br label %if.end68

cleanup:                                          ; preds = %if.then52, %lor.lhs.false56, %lor.lhs.false59, %lor.lhs.false62
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2783, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.tls_construct_certificate_request, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #15
  br label %return

if.end68:                                         ; preds = %cleanup.thread, %if.end46
  %call69 = call %struct.stack_st_X509_NAME* @get_ca_names(%struct.ssl_st* noundef nonnull %s) #13
  %call70 = call i32 @construct_ca_names(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_X509_NAME* noundef %call69, %struct.wpacket_st* noundef %pkt) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %return, label %done

done:                                             ; preds = %if.end68, %if.end31
  %certreqs_sent = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 104
  %16 = load i32, i32* %certreqs_sent, align 8, !tbaa !43
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %certreqs_sent, align 8, !tbaa !43
  %cert_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 19
  store i32 1, i32* %cert_request, align 8, !tbaa !28
  br label %return

return:                                           ; preds = %cleanup, %if.end68, %if.end31, %if.end22, %done, %if.then45, %if.then29, %if.then21, %if.then11
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %done ], [ 0, %if.then45 ], [ 0, %if.then11 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.end22 ], [ 0, %if.end31 ], [ 0, %if.end68 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_server_done(%struct.ssl_st* noundef %s, %struct.wpacket_st* nocapture readnone %pkt) #1 {
entry:
  %cert_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 19
  %0 = load i32, i32* %cert_request, align 8, !tbaa !28
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  br label %return

return:                                           ; preds = %if.then, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_new_session_ticket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %tick_nonce = alloca [8 x i8], align 1
  %age_add_u = alloca %union.anon.6, align 4
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !121
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast %union.anon.6* %age_add_u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15
  %age_add = getelementptr inbounds %union.anon.6, %union.anon.6* %age_add_u, i64 0, i32 0
  store i32 0, i32* %age_add, align 4, !tbaa !122
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %3 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 25
  %4 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %4, i64 0, i32 12
  %5 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %5, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 0
  %6 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %6, 772
  %cmp5.not = icmp eq i32 %6, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end91, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #13
  %call6 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call) #13
  %cmp7 = icmp sgt i32 %call6, -1
  br i1 %cmp7, label %if.end, label %if.then10

if.then10:                                        ; preds = %if.then
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3878, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_new_session_ticket, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup175

if.end:                                           ; preds = %if.then
  %conv11260 = zext i32 %call6 to i64
  %sent_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  %7 = load i64, i64* %sent_tickets, align 8, !tbaa !64
  %cmp12.not = icmp eq i64 %7, 0
  br i1 %cmp12.not, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %8 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end23_crit_edge, label %if.then15

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  %session24.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %session24.phi.trans.insert, align 8, !tbaa !31
  br label %if.end23

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %call16 = tail call %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef %9, i32 noundef 0) #13
  %cmp17 = icmp eq %struct.ssl_session_st* %call16, null
  br i1 %cmp17, label %cleanup175, label %cleanup

cleanup:                                          ; preds = %if.then15
  %10 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %10) #13
  store %struct.ssl_session_st* %call16, %struct.ssl_session_st** %session, align 8, !tbaa !31
  br label %if.end23

if.end23:                                         ; preds = %lor.lhs.false.if.end23_crit_edge, %cleanup
  %11 = phi %struct.ssl_session_st* [ %.pre, %lor.lhs.false.if.end23_crit_edge ], [ %call16, %cleanup ]
  %session24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %call25 = tail call i32 @ssl_generate_session_id(%struct.ssl_st* noundef nonnull %s, %struct.ssl_session_st* noundef %11) #13
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup175, label %if.end28

if.end28:                                         ; preds = %if.end23
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 0
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %call29 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef nonnull %2, i64 noundef 4, i32 noundef 0) #13
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3906, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_new_session_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup175

if.end33:                                         ; preds = %if.end28
  %14 = load i32, i32* %age_add, align 4, !tbaa !122
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session24, align 8, !tbaa !31
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 26, i32 4
  store i32 %14, i32* %tick_age_add, align 8, !tbaa !123
  %next_ticket_nonce = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 123
  %16 = load i64, i64* %next_ticket_nonce, align 8, !tbaa !124
  %conv39 = trunc i64 %16 to i8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 7
  store i8 %conv39, i8* %arrayidx, align 1, !tbaa !122
  %shr = lshr i64 %16, 8
  %conv39.1 = trunc i64 %shr to i8
  %arrayidx.1 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 6
  store i8 %conv39.1, i8* %arrayidx.1, align 1, !tbaa !122
  %shr.1 = lshr i64 %16, 16
  %conv39.2 = trunc i64 %shr.1 to i8
  %arrayidx.2 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 5
  store i8 %conv39.2, i8* %arrayidx.2, align 1, !tbaa !122
  %shr.2 = lshr i64 %16, 24
  %conv39.3 = trunc i64 %shr.2 to i8
  %arrayidx.3 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 4
  store i8 %conv39.3, i8* %arrayidx.3, align 1, !tbaa !122
  %shr.3 = lshr i64 %16, 32
  %conv39.4 = trunc i64 %shr.3 to i8
  %arrayidx.4 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 3
  store i8 %conv39.4, i8* %arrayidx.4, align 1, !tbaa !122
  %shr.4 = lshr i64 %16, 40
  %conv39.5 = trunc i64 %shr.4 to i8
  %arrayidx.5 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 2
  store i8 %conv39.5, i8* %arrayidx.5, align 1, !tbaa !122
  %shr.5 = lshr i64 %16, 48
  %conv39.6 = trunc i64 %shr.5 to i8
  %arrayidx.6 = getelementptr inbounds [8 x i8], [8 x i8]* %tick_nonce, i64 0, i64 1
  store i8 %conv39.6, i8* %arrayidx.6, align 1, !tbaa !122
  %shr.6 = lshr i64 %16, 56
  %conv39.7 = trunc i64 %shr.6 to i8
  store i8 %conv39.7, i8* %1, align 1, !tbaa !122
  %arraydecay40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 32, i64 0
  %arraydecay43 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 3, i64 0
  %call44 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call, i8* noundef nonnull %arraydecay40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @tls_construct_new_session_ticket.nonce_label, i64 0, i64 0), i64 noundef 10, i8* noundef nonnull %1, i64 noundef 8, i8* noundef nonnull %arraydecay43, i64 noundef %conv11260, i32 noundef 1) #13
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cleanup175, label %if.end47

if.end47:                                         ; preds = %if.end33
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session24, align 8, !tbaa !31
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 1
  store i64 %conv11260, i64* %master_key_length, align 8, !tbaa !125
  %call49 = call i64 @time(i64* noundef null) #13
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session24, align 8, !tbaa !31
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %18, i64 0, i32 16
  store i64 %call49, i64* %time, align 8, !tbaa !126
  call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef %18) #13
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %19 = load i8*, i8** %alpn_selected, align 8, !tbaa !127
  %cmp52.not = icmp eq i8* %19, null
  %.pre263 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session24, align 8, !tbaa !31
  br i1 %cmp52.not, label %cleanup84, label %if.then54

if.then54:                                        ; preds = %if.end47
  %alpn_selected57 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pre263, i64 0, i32 26, i32 6
  %20 = load i8*, i8** %alpn_selected57, align 8, !tbaa !128
  call void @CRYPTO_free(i8* noundef %20, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3932) #13
  %21 = load i8*, i8** %alpn_selected, align 8, !tbaa !127
  %alpn_selected_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  %22 = load i64, i64* %alpn_selected_len, align 8, !tbaa !129
  %call61 = call i8* @CRYPTO_memdup(i8* noundef %21, i64 noundef %22, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3934) #13
  %23 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session24, align 8, !tbaa !31
  %alpn_selected64 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %23, i64 0, i32 26, i32 6
  store i8* %call61, i8** %alpn_selected64, align 8, !tbaa !128
  %cmp68 = icmp eq i8* %call61, null
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.then54
  %alpn_selected_len73 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %23, i64 0, i32 26, i32 7
  store i64 0, i64* %alpn_selected_len73, align 8, !tbaa !130
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3937, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_new_session_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup175

if.end74:                                         ; preds = %if.then54
  %24 = load i64, i64* %alpn_selected_len, align 8, !tbaa !129
  %alpn_selected_len79 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %23, i64 0, i32 26, i32 7
  store i64 %24, i64* %alpn_selected_len79, align 8, !tbaa !130
  br label %cleanup84

cleanup84:                                        ; preds = %if.end47, %if.end74
  %25 = phi %struct.ssl_session_st* [ %23, %if.end74 ], [ %.pre263, %if.end47 ]
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %26 = load i32, i32* %max_early_data, align 8, !tbaa !131
  %max_early_data83 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %25, i64 0, i32 26, i32 5
  store i32 %26, i32* %max_early_data83, align 4, !tbaa !132
  br label %if.end91

if.end91:                                         ; preds = %cleanup84, %land.lhs.true, %entry
  %generate_ticket_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 76
  %27 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %generate_ticket_cb, align 8, !tbaa !133
  %cmp92.not = icmp eq i32 (%struct.ssl_st*, i8*)* %27, null
  br i1 %cmp92.not, label %if.end100, label %land.lhs.true94

land.lhs.true94:                                  ; preds = %if.end91
  %ticket_cb_data = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 78
  %28 = load i8*, i8** %ticket_cb_data, align 8, !tbaa !134
  %call96 = call i32 %27(%struct.ssl_st* noundef nonnull %s, i8* noundef %28) #13
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %land.lhs.true94
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3947, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.tls_construct_new_session_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup175

if.end100:                                        ; preds = %land.lhs.true94, %if.end91
  %29 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc102 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %29, i64 0, i32 25
  %30 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc102, align 8, !tbaa !22
  %enc_flags103 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %30, i64 0, i32 12
  %31 = load i32, i32* %enc_flags103, align 8, !tbaa !24
  %and104 = and i32 %31, 8
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.else

land.lhs.true106:                                 ; preds = %if.end100
  %version108 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %29, i64 0, i32 0
  %32 = load i32, i32* %version108, align 8, !tbaa !26
  %cmp109 = icmp slt i32 %32, 772
  %cmp114.not = icmp eq i32 %32, 65536
  %or.cond254 = or i1 %cmp109, %cmp114.not
  br i1 %or.cond254, label %if.else, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %land.lhs.true106
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %33 = load i64, i64* %options, align 8, !tbaa !62
  %and117 = and i64 %33, 16384
  %cmp118.not = icmp eq i64 %and117, 0
  br i1 %cmp118.not, label %lor.lhs.false120, label %if.then129

lor.lhs.false120:                                 ; preds = %land.lhs.true116
  %max_early_data121 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %34 = load i32, i32* %max_early_data121, align 8, !tbaa !131
  %cmp122.not = icmp ne i32 %34, 0
  %and126 = and i64 %33, 16777216
  %cmp127 = icmp eq i64 %and126, 0
  %or.cond255 = select i1 %cmp122.not, i1 %cmp127, i1 false
  br i1 %or.cond255, label %if.then129, label %if.else

if.then129:                                       ; preds = %lor.lhs.false120, %land.lhs.true116
  %35 = load i32, i32* %age_add, align 4, !tbaa !122
  %call132 = call fastcc i32 @construct_stateful_ticket(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef %35, i8* noundef nonnull %1) #14
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %cleanup175, label %if.end142

if.else:                                          ; preds = %lor.lhs.false120, %land.lhs.true106, %if.end100
  %36 = load i32, i32* %age_add, align 4, !tbaa !122
  %call138 = call fastcc i32 @construct_stateless_ticket(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef %36, i8* noundef nonnull %1) #14
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %cleanup175, label %if.end142

if.end142:                                        ; preds = %if.else, %if.then129
  %37 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc144 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %37, i64 0, i32 25
  %38 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc144, align 8, !tbaa !22
  %enc_flags145 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %38, i64 0, i32 12
  %39 = load i32, i32* %enc_flags145, align 8, !tbaa !24
  %and146 = and i32 %39, 8
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %land.lhs.true148, label %cleanup175

land.lhs.true148:                                 ; preds = %if.end142
  %version150 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %37, i64 0, i32 0
  %40 = load i32, i32* %version150, align 8, !tbaa !26
  %cmp151 = icmp slt i32 %40, 772
  %cmp156.not = icmp eq i32 %40, 65536
  %or.cond256 = or i1 %cmp151, %cmp156.not
  br i1 %or.cond256, label %cleanup175, label %if.then158

if.then158:                                       ; preds = %land.lhs.true148
  %call159 = call i32 @tls_construct_extensions(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef 8192, %struct.x509_st* noundef null, i64 noundef 0) #13
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %cleanup175, label %if.end162

if.end162:                                        ; preds = %if.then158
  %sent_tickets163 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  %41 = bitcast i64* %sent_tickets163 to <2 x i64>*
  %42 = load <2 x i64>, <2 x i64>* %41, align 8, !tbaa !91
  %43 = add <2 x i64> %42, <i64 1, i64 1>
  %44 = bitcast i64* %sent_tickets163 to <2 x i64>*
  store <2 x i64> %43, <2 x i64>* %44, align 8, !tbaa !91
  %extra_tickets_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %45 = load i32, i32* %extra_tickets_expected, align 4, !tbaa !61
  %cmp167 = icmp sgt i32 %45, 0
  br i1 %cmp167, label %if.then169, label %if.end173

if.then169:                                       ; preds = %if.end162
  %dec172 = add nsw i32 %45, -1
  store i32 %dec172, i32* %extra_tickets_expected, align 4, !tbaa !61
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %if.end162
  call void @ssl_update_cache(%struct.ssl_st* noundef nonnull %s, i32 noundef 2) #13
  br label %cleanup175

cleanup175:                                       ; preds = %if.then15, %if.end33, %if.end23, %if.then10, %if.then70, %if.then32, %if.then99, %if.then129, %if.else, %if.then158, %if.end142, %land.lhs.true148, %if.end173
  %retval.0 = phi i32 [ 1, %if.end173 ], [ 1, %land.lhs.true148 ], [ 1, %if.end142 ], [ 0, %if.then158 ], [ 0, %if.else ], [ 0, %if.then129 ], [ 0, %if.then99 ], [ 0, %if.then32 ], [ 0, %if.then70 ], [ 0, %if.then10 ], [ 0, %if.end23 ], [ 0, %if.end33 ], [ 0, %if.then15 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_cert_status(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %call = tail call i32 @tls_construct_cert_status_body(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #14
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i32 @tls_construct_finished(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @tls_construct_encrypted_extensions(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) #1 {
entry:
  %call = tail call i32 @tls_construct_extensions(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef 1024, %struct.x509_st* noundef null, i64 noundef 0) #13
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i32 @tls_construct_key_update(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_statem_server_max_message_size(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #5 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %cleanup [
    i32 20, label %sw.bb
    i32 44, label %sw.bb8
    i32 27, label %sw.bb2
    i32 28, label %sw.bb3
    i32 29, label %sw.bb4
    i32 30, label %sw.bb5
    i32 31, label %sw.bb6
    i32 32, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %max_cert_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 82
  %1 = load i64, i64* %max_cert_list, align 8, !tbaa !135
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %retval.0 = phi i64 [ 1, %sw.bb8 ], [ 64, %sw.bb7 ], [ 1, %sw.bb6 ], [ 514, %sw.bb5 ], [ 16384, %sw.bb4 ], [ 2048, %sw.bb3 ], [ %1, %sw.bb2 ], [ 131396, %sw.bb ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_process_message(%struct.ssl_st* noundef %s, %struct.PACKET* noundef %pkt) local_unnamed_addr #1 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 20, label %sw.bb
    i32 49, label %sw.bb1
    i32 27, label %sw.bb3
    i32 28, label %sw.bb5
    i32 29, label %sw.bb7
    i32 30, label %sw.bb9
    i32 31, label %sw.bb11
    i32 32, label %sw.bb13
    i32 44, label %sw.bb15
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1186, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ossl_statem_server_process_message, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @tls_process_client_hello(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @tls_process_end_of_early_data(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @tls_process_client_certificate(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @tls_process_client_key_exchange(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i32 @tls_process_cert_verify(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #13
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @tls_process_next_proto(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %call12 = tail call i32 @tls_process_change_cipher_spec(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #13
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %call14 = tail call i32 @tls_process_finished(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #13
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %call16 = tail call i32 @tls_process_key_update(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_client_hello(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #1 {
entry:
  %session_id = alloca %struct.PACKET, align 8
  %compression = alloca %struct.PACKET, align 8
  %extensions = alloca %struct.PACKET, align 8
  %cookie = alloca %struct.PACKET, align 8
  %mt = alloca i32, align 4
  %ciphersuite_len = alloca i32, align 4
  %session_id_len = alloca i32, align 4
  %challenge_len = alloca i32, align 4
  %challenge = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %session_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast %struct.PACKET* %compression to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %2 = bitcast %struct.PACKET* %extensions to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15
  %3 = bitcast %struct.PACKET* %cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #15
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %4 = load i32, i32* %renegotiate, align 8, !tbaa !54
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %entry
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %5 = load i64, i64* %finish_md_len, align 8, !tbaa !55
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.end29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %6 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !56
  %cmp4 = icmp eq i64 %6, 0
  br i1 %cmp4, label %if.end29, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 25
  %8 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %8, i64 0, i32 12
  %9 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %9, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %if.then
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 0
  %10 = load i32, i32* %version, align 8, !tbaa !26
  %cmp7 = icmp sgt i32 %10, 771
  %cmp10 = icmp ne i32 %10, 65536
  %spec.select = and i1 %cmp7, %cmp10
  br i1 %spec.select, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true5
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1385, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %if.end201

if.end:                                           ; preds = %if.then, %land.lhs.true5
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %11 = load i64, i64* %options, align 8, !tbaa !62
  %12 = and i64 %11, 1073742080
  %.not = icmp eq i64 %12, 256
  br i1 %.not, label %lor.lhs.false19, label %if.then26

lor.lhs.false19:                                  ; preds = %if.end
  %send_connection_binding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 25
  %13 = load i32, i32* %send_connection_binding, align 8, !tbaa !136
  %tobool21.not = icmp eq i32 %13, 0
  %and24 = and i64 %11, 262144
  %cmp25 = icmp eq i64 %and24, 0
  %or.cond292 = select i1 %tobool21.not, i1 %cmp25, i1 false
  br i1 %or.cond292, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false19, %if.end
  %call = tail call i32 @ssl3_send_alert(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i32 noundef 100) #13
  br label %cleanup202

if.end27:                                         ; preds = %lor.lhs.false19
  store i32 1, i32* %renegotiate, align 8, !tbaa !54
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  store i32 1, i32* %new_session, align 4, !tbaa !137
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %lor.lhs.false, %land.lhs.true, %entry
  %call30 = tail call i8* @CRYPTO_zalloc(i64 noundef 656, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1399) #13
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1401, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %if.end201

if.end33:                                         ; preds = %if.end29
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call34 = tail call i32 @RECORD_LAYER_is_sslv2_record(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %isv2 = bitcast i8* %call30 to i32*
  store i32 %call34, i32* %isv2, align 8, !tbaa !138
  call fastcc void @PACKET_null_init(%struct.PACKET* noundef nonnull %cookie) #14
  %14 = load i32, i32* %isv2, align 8, !tbaa !138
  %tobool36.not = icmp eq i32 %14, 0
  br i1 %tobool36.not, label %if.end57, label %if.then37

if.then37:                                        ; preds = %if.end33
  %15 = bitcast i32* %mt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #15
  %finish_md_len40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %16 = load i64, i64* %finish_md_len40, align 8, !tbaa !55
  %cmp41 = icmp eq i64 %16, 0
  br i1 %cmp41, label %lor.lhs.false47, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.then37
  %peer_finish_md_len45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %17 = load i64, i64* %peer_finish_md_len45, align 8, !tbaa !56
  %cmp46 = icmp eq i64 %17, 0
  br i1 %cmp46, label %lor.lhs.false47, label %if.then49

lor.lhs.false47:                                  ; preds = %lor.lhs.false42, %if.then37
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %18 = load i32, i32* %hello_retry_request, align 8, !tbaa !39
  %cmp48.not = icmp eq i32 %18, 0
  br i1 %cmp48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %lor.lhs.false47, %lor.lhs.false42
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1416, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #13
  br label %cleanup.thread

if.end50:                                         ; preds = %lor.lhs.false47
  %call51 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %mt) #14
  %tobool52 = icmp eq i32 %call51, 0
  %19 = load i32, i32* %mt, align 4
  %cmp54 = icmp ne i32 %19, 1
  %or.cond = select i1 %tobool52, i1 true, i1 %cmp54
  br i1 %or.cond, label %if.then55, label %cleanup

if.then55:                                        ; preds = %if.end50
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1442, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then49, %if.then55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #15
  br label %if.then199

cleanup:                                          ; preds = %if.end50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #15
  br label %if.end57

if.end57:                                         ; preds = %cleanup, %if.end33
  %legacy_version = getelementptr inbounds i8, i8* %call30, i64 4
  %20 = bitcast i8* %legacy_version to i32*
  %call58 = tail call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %20) #14
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1448, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 160, i8* noundef null) #13
  br label %if.then199

if.end61:                                         ; preds = %if.end57
  %21 = load i32, i32* %isv2, align 8, !tbaa !138
  %tobool63.not = icmp eq i32 %21, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end61
  %22 = bitcast i32* %ciphersuite_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #15
  %23 = bitcast i32* %session_id_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #15
  %24 = bitcast i32* %challenge_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #15
  %25 = bitcast %struct.PACKET* %challenge to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #15
  %call65 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %ciphersuite_len) #14
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then73, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.then64
  %call68 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %session_id_len) #14
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then73, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %call71 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %challenge_len) #14
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end74

if.then73:                                        ; preds = %lor.lhs.false70, %lor.lhs.false67, %if.then64
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1465, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 213, i8* noundef null) #13
  br label %cleanup113.thread

if.end74:                                         ; preds = %lor.lhs.false70
  %26 = load i32, i32* %session_id_len, align 4, !tbaa !79
  %cmp75 = icmp ugt i32 %26, 32
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end74
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1470, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 159, i8* noundef null) #13
  br label %cleanup113.thread

if.end77:                                         ; preds = %if.end74
  %ciphersuites = getelementptr inbounds i8, i8* %call30, i64 344
  %27 = bitcast i8* %ciphersuites to %struct.PACKET*
  %28 = load i32, i32* %ciphersuite_len, align 4, !tbaa !79
  %conv = zext i32 %28 to i64
  %call78 = tail call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %27, i64 noundef %conv) #14
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then93, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end77
  %session_id81 = getelementptr inbounds i8, i8* %call30, i64 48
  %conv82 = zext i32 %26 to i64
  %call83 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %session_id81, i64 noundef %conv82) #14
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then93, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false80
  %29 = load i32, i32* %challenge_len, align 4, !tbaa !79
  %conv86 = zext i32 %29 to i64
  %call87 = call fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %challenge, i64 noundef %conv86) #14
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %call90 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp91.not = icmp eq i64 %call90, 0
  br i1 %cmp91.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %lor.lhs.false89, %lor.lhs.false85, %lor.lhs.false80, %if.end77
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1480, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 213, i8* noundef null) #13
  br label %cleanup113.thread

if.end94:                                         ; preds = %lor.lhs.false89
  %session_id_len96 = getelementptr inbounds i8, i8* %call30, i64 40
  %30 = bitcast i8* %session_id_len96 to i64*
  store i64 %conv82, i64* %30, align 8, !tbaa !140
  %31 = icmp ult i32 %29, 32
  %cond = select i1 %31, i32 %29, i32 32
  %random = getelementptr inbounds i8, i8* %call30, i64 8
  %call100 = tail call i8* @memset(i8* noundef nonnull %random, i32 noundef 0, i64 noundef 32) #13
  %idx.ext = zext i32 %cond to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr103 = getelementptr inbounds i8, i8* %session_id_len96, i64 %idx.neg
  %call105 = call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef nonnull %challenge, i8* noundef nonnull %add.ptr103, i64 noundef %idx.ext) #14
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then110, label %cleanup113

if.then110:                                       ; preds = %if.end94
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1498, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup113.thread

cleanup113.thread:                                ; preds = %if.then76, %if.then93, %if.then110, %if.then73
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #15
  br label %if.then199

cleanup113:                                       ; preds = %if.end94
  call fastcc void @PACKET_buf_init(%struct.PACKET* noundef nonnull %compression, i8* noundef nonnull @tls_process_client_hello.null_compression, i64 noundef 1) #14
  %extensions112 = getelementptr inbounds i8, i8* %call30, i64 624
  %32 = bitcast i8* %extensions112 to %struct.PACKET*
  tail call fastcc void @PACKET_null_init(%struct.PACKET* noundef nonnull %32) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #15
  br label %if.end185

if.else:                                          ; preds = %if.end61
  %random119 = getelementptr inbounds i8, i8* %call30, i64 8
  %call121 = tail call fastcc i32 @PACKET_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef nonnull %random119, i64 noundef 32) #14
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then132, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %if.else
  %call124 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %session_id) #14
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then132, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false123
  %session_id127 = getelementptr inbounds i8, i8* %call30, i64 48
  %session_id_len129 = getelementptr inbounds i8, i8* %call30, i64 40
  %33 = bitcast i8* %session_id_len129 to i64*
  %call130 = call fastcc i32 @PACKET_copy_all(%struct.PACKET* noundef nonnull %session_id, i8* noundef nonnull %session_id127, i64 noundef 32, i64* noundef nonnull %33) #14
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then132, label %if.end133

if.then132:                                       ; preds = %lor.lhs.false126, %lor.lhs.false123, %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1510, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %if.then199

if.end133:                                        ; preds = %lor.lhs.false126
  %method134 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %34 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method134, align 8, !tbaa !4
  %ssl3_enc135 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %34, i64 0, i32 25
  %35 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc135, align 8, !tbaa !22
  %enc_flags136 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %35, i64 0, i32 12
  %36 = load i32, i32* %enc_flags136, align 8, !tbaa !24
  %and137 = and i32 %36, 8
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end159, label %if.then139

if.then139:                                       ; preds = %if.end133
  %call140 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %cookie) #14
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.then139
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1516, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %if.then199

if.end143:                                        ; preds = %if.then139
  %dtls_cookie = getelementptr inbounds i8, i8* %call30, i64 88
  %dtls_cookie_len = getelementptr inbounds i8, i8* %call30, i64 80
  %37 = bitcast i8* %dtls_cookie_len to i64*
  %call145 = call fastcc i32 @PACKET_copy_all(%struct.PACKET* noundef nonnull %cookie, i8* noundef nonnull %dtls_cookie, i64 noundef 255, i64* noundef nonnull %37) #14
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end143
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1522, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %if.then199

if.end148:                                        ; preds = %if.end143
  %call149 = tail call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #13
  %and150 = and i64 %call149, 8192
  %tobool151.not = icmp eq i64 %and150, 0
  br i1 %tobool151.not, label %if.end159, label %if.then152

if.then152:                                       ; preds = %if.end148
  %38 = load i64, i64* %37, align 8, !tbaa !141
  %cmp154 = icmp eq i64 %38, 0
  br i1 %cmp154, label %if.then156, label %if.end159

if.then156:                                       ; preds = %if.then152
  tail call void @CRYPTO_free(i8* noundef nonnull %call30, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1532) #13
  br label %cleanup202

if.end159:                                        ; preds = %if.end148, %if.then152, %if.end133
  %ciphersuites160 = getelementptr inbounds i8, i8* %call30, i64 344
  %39 = bitcast i8* %ciphersuites160 to %struct.PACKET*
  %call161 = tail call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %39) #14
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.end159
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1539, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %if.then199

if.end164:                                        ; preds = %if.end159
  %call165 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %compression) #14
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end164
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1544, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %if.then199

if.end168:                                        ; preds = %if.end164
  %call169 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp170 = icmp eq i64 %call169, 0
  %extensions173 = getelementptr inbounds i8, i8* %call30, i64 624
  %40 = bitcast i8* %extensions173 to %struct.PACKET*
  br i1 %cmp170, label %if.then172, label %if.else174

if.then172:                                       ; preds = %if.end168
  tail call fastcc void @PACKET_null_init(%struct.PACKET* noundef nonnull %40) #14
  br label %if.end185

if.else174:                                       ; preds = %if.end168
  %call176 = tail call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %40) #14
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then182, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.else174
  %call179 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp180.not = icmp eq i64 %call179, 0
  br i1 %cmp180.not, label %if.end185, label %if.then182

if.then182:                                       ; preds = %lor.lhs.false178, %if.else174
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1554, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %if.then199

if.end185:                                        ; preds = %cleanup113, %if.then172, %lor.lhs.false178
  %compressions = getelementptr inbounds i8, i8* %call30, i64 368
  %compressions_len = getelementptr inbounds i8, i8* %call30, i64 360
  %41 = bitcast i8* %compressions_len to i64*
  %call187 = call fastcc i32 @PACKET_copy_all(%struct.PACKET* noundef nonnull %compression, i8* noundef nonnull %compressions, i64 noundef 255, i64* noundef nonnull %41) #14
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.end185
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1563, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %if.then199

if.end190:                                        ; preds = %if.end185
  %extensions191 = getelementptr inbounds i8, i8* %call30, i64 624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %extensions191, i64 16, i1 false), !tbaa.struct !142
  %pre_proc_exts = getelementptr inbounds i8, i8* %call30, i64 648
  %42 = bitcast i8* %pre_proc_exts to %struct.raw_extension_st**
  %pre_proc_exts_len = getelementptr inbounds i8, i8* %call30, i64 640
  %43 = bitcast i8* %pre_proc_exts_len to i64*
  %call192 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extensions, i32 noundef 128, %struct.raw_extension_st** noundef nonnull %42, i64* noundef nonnull %43, i32 noundef 1) #13
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.then199, label %if.end195

if.end195:                                        ; preds = %if.end190
  %clienthello196 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %44 = bitcast %struct.CLIENTHELLO_MSG** %clienthello196 to i8**
  store i8* %call30, i8** %44, align 8, !tbaa !143
  br label %cleanup202

if.then199:                                       ; preds = %if.end190, %if.then189, %if.then182, %if.then167, %if.then163, %if.then147, %if.then142, %if.then132, %if.then60, %cleanup.thread, %cleanup113.thread
  %pre_proc_exts200 = getelementptr inbounds i8, i8* %call30, i64 648
  %45 = bitcast i8* %pre_proc_exts200 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !144
  call void @CRYPTO_free(i8* noundef %46, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1581) #13
  br label %if.end201

if.end201:                                        ; preds = %if.then12, %if.then32, %if.then199
  %47 = phi i8* [ %call30, %if.then199 ], [ null, %if.then32 ], [ null, %if.then12 ]
  call void @CRYPTO_free(i8* noundef %47, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1582) #13
  br label %cleanup202

cleanup202:                                       ; preds = %if.end201, %if.end195, %if.then156, %if.then26
  %retval.0 = phi i32 [ 0, %if.end201 ], [ 2, %if.end195 ], [ 1, %if.then156 ], [ 1, %if.then26 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_end_of_early_data(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4070, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_process_end_of_early_data, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %return

if.end:                                           ; preds = %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %0 = load i32, i32* %early_data_state, align 4, !tbaa !41
  %1 = and i32 %0, -2
  %switch = icmp eq i32 %1, 10
  br i1 %switch, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4076, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_process_end_of_early_data, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end5:                                          ; preds = %if.end
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call6 = tail call i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4085, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_process_end_of_early_data, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 182, i8* noundef null) #13
  br label %return

if.end8:                                          ; preds = %if.end5
  store i32 12, i32* %early_data_state, align 4, !tbaa !41
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 4
  %change_cipher_state10 = bitcast {}** %change_cipher_state to i32 (%struct.ssl_st*, i32)**
  %4 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state10, align 8, !tbaa !76
  %call11 = tail call i32 %4(%struct.ssl_st* noundef nonnull %s, i32 noundef 161) #13
  %tobool12.not = icmp eq i32 %call11, 0
  %. = select i1 %tobool12.not, i32 0, i32 3
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then7 ], [ %., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_client_certificate(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #1 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %l = alloca i64, align 8
  %certbytes = alloca i8*, align 8
  %spkt = alloca %struct.PACKET, align 8
  %context = alloca %struct.PACKET, align 8
  %rawexts = alloca %struct.raw_extension_st*, align 8
  %extensions = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !80
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast i8** %certbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %3 = bitcast %struct.PACKET* %spkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #15
  %4 = bitcast %struct.PACKET* %context to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #15
  %enc_read_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 14
  store i32 0, i32* %enc_read_state, align 8, !tbaa !77
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #13
  %5 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3432, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %8, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %9 = load i32, i32* %version, align 8, !tbaa !26
  %cmp2 = icmp slt i32 %9, 772
  %cmp6.not = icmp eq i32 %9, 65536
  %or.cond = or i1 %cmp2, %cmp6.not
  br i1 %or.cond, label %if.end22, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %context) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %pha_context = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 102
  %10 = load i8*, i8** %pha_context, align 8, !tbaa !119
  %cmp10 = icmp eq i8* %10, null
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true17

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %call12 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %context) #14
  %cmp13.not = icmp eq i64 %call12, 0
  br i1 %cmp13.not, label %if.end22, label %if.then21

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %pha_context_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 103
  %11 = load i64, i64* %pha_context_len, align 8, !tbaa !120
  %call19 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %context, i8* noundef nonnull %10, i64 noundef %11) #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true17, %land.lhs.true11, %land.lhs.true7
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3440, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 282, i8* noundef null) #13
  br label %err

if.end22:                                         ; preds = %land.lhs.true11, %land.lhs.true17, %land.lhs.true, %if.end
  %call23 = call fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %spkt) #14
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end22
  %call26 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp27.not = icmp eq i64 %call26, 0
  br i1 %cmp27.not, label %for.cond.preheader, label %if.then28

for.cond.preheader:                               ; preds = %lor.lhs.false25
  %call30302 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %spkt) #14
  %cmp31.not303 = icmp eq i64 %call30302, 0
  br i1 %cmp31.not303, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %12 = bitcast %struct.raw_extension_st** %rawexts to i8*
  %13 = bitcast %struct.PACKET* %extensions to i8*
  %14 = bitcast %struct.raw_extension_st** %rawexts to i8**
  %15 = bitcast %struct.x509_st** %x to i8**
  br label %for.body

if.then28:                                        ; preds = %lor.lhs.false25, %if.end22
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3446, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %err

for.body:                                         ; preds = %for.body.lr.ph, %if.end87
  %chainidx.0304 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end87 ]
  %call32 = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %spkt, i64* noundef nonnull %l) #14
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %for.body
  %16 = load i64, i64* %l, align 8, !tbaa !91
  %call35 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %spkt, i8** noundef nonnull %certbytes, i64 noundef %16) #14
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false34, %for.body
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3453, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 135, i8* noundef null) #13
  br label %err

if.end38:                                         ; preds = %lor.lhs.false34
  %17 = load i8*, i8** %certbytes, align 8, !tbaa !80
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i64 0, i32 0
  %19 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i64 0, i32 85
  %20 = load i8*, i8** %propq, align 8, !tbaa !114
  %call40 = call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %19, i8* noundef %20) #13
  store %struct.x509_st* %call40, %struct.x509_st** %x, align 8, !tbaa !80
  %cmp41 = icmp eq %struct.x509_st* %call40, null
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3460, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end43:                                         ; preds = %if.end38
  %call44 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %x, i8** noundef nonnull %certbytes, i64 noundef %16) #13
  %cmp45 = icmp eq %struct.x509_st* %call44, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3464, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 524301, i8* noundef null) #13
  br label %err

if.end47:                                         ; preds = %if.end43
  %21 = load i8*, i8** %certbytes, align 8, !tbaa !80
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %16
  %cmp48.not = icmp eq i8* %21, %add.ptr
  br i1 %cmp48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end47
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3469, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 135, i8* noundef null) #13
  br label %err

if.end50:                                         ; preds = %if.end47
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc52 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 25
  %23 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc52, align 8, !tbaa !22
  %enc_flags53 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %23, i64 0, i32 12
  %24 = load i32, i32* %enc_flags53, align 8, !tbaa !24
  %and54 = and i32 %24, 8
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end81

land.lhs.true56:                                  ; preds = %if.end50
  %version58 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 0
  %25 = load i32, i32* %version58, align 8, !tbaa !26
  %cmp59 = icmp slt i32 %25, 772
  %cmp63.not = icmp eq i32 %25, 65536
  %or.cond288 = or i1 %cmp59, %cmp63.not
  br i1 %or.cond288, label %if.end81, label %if.then64

if.then64:                                        ; preds = %land.lhs.true56
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #15
  store %struct.raw_extension_st* null, %struct.raw_extension_st** %rawexts, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #15
  %call65 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %spkt, %struct.PACKET* noundef nonnull %extensions) #14
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.then64
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3478, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 271, i8* noundef null) #13
  br label %cleanup.thread

if.end68:                                         ; preds = %if.then64
  %cmp69 = icmp eq i64 %chainidx.0304, 0
  %conv = zext i1 %cmp69 to i32
  %call70 = call i32 @tls_collect_extensions(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %extensions, i32 noundef 4096, %struct.raw_extension_st** noundef nonnull %rawexts, i64* noundef null, i32 noundef %conv) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then78, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end68
  %26 = load %struct.raw_extension_st*, %struct.raw_extension_st** %rawexts, align 8, !tbaa !80
  %27 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !80
  %call73 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %spkt) #14
  %cmp74 = icmp eq i64 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef 4096, %struct.raw_extension_st* noundef %26, %struct.x509_st* noundef %27, i64 noundef %chainidx.0304, i32 noundef %conv75) #13
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %cleanup

if.then78:                                        ; preds = %lor.lhs.false72, %if.end68
  %28 = load i8*, i8** %14, align 8, !tbaa !80
  call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3487) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then78, %if.then67
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #15
  br label %err

cleanup:                                          ; preds = %lor.lhs.false72
  %29 = load i8*, i8** %14, align 8, !tbaa !80
  call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3490) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #15
  br label %if.end81

if.end81:                                         ; preds = %cleanup, %land.lhs.true56, %if.end50
  %call82 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %5) #14
  %30 = load i8*, i8** %15, align 8, !tbaa !80
  %call84 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call82, i8* noundef %30) #13
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end81
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3494, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end87:                                         ; preds = %if.end81
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !80
  %inc = add i64 %chainidx.0304, 1
  %call30 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %spkt) #14
  %cmp31.not = icmp eq i64 %call30, 0
  br i1 %cmp31.not, label %for.end, label %for.body, !llvm.loop !145

for.end:                                          ; preds = %if.end87, %for.cond.preheader
  %call88 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %5) #14
  %call89 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call88) #13
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %if.then92, label %if.else112

if.then92:                                        ; preds = %for.end
  %version93 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %31 = load i32, i32* %version93, align 8, !tbaa !29
  %cmp94 = icmp eq i32 %31, 768
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.then92
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3504, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 176, i8* noundef null) #13
  br label %err

if.else:                                          ; preds = %if.then92
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %32 = load i32, i32* %verify_mode, align 8, !tbaa !30
  %33 = and i32 %32, 3
  %.not = icmp eq i32 %33, 3
  br i1 %.not, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.else
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3511, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 116, i32 noundef 199, i8* noundef null) #13
  br label %err

if.end105:                                        ; preds = %if.else
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %34 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !146
  %tobool106.not = icmp eq %struct.bio_st* %34, null
  br i1 %tobool106.not, label %if.end130, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.end105
  %call108 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %if.end130

if.else112:                                       ; preds = %for.end
  %call113 = call i32 @ssl_verify_cert_chain(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_X509* noundef nonnull %5) #13
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.else112
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3524, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %35 = load i64, i64* %verify_result, align 8, !tbaa !147
  %conv117 = trunc i64 %35 to i32
  %call118 = call i32 @ssl_x509err2alert(i32 noundef %conv117) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %call118, i32 noundef 134, i8* noundef null) #13
  br label %err

if.end119:                                        ; preds = %if.else112
  %call121 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call88, i32 noundef 0) #13
  %36 = bitcast i8* %call121 to %struct.x509_st*
  %call122 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %36) #13
  %cmp123 = icmp eq %struct.evp_pkey_st* %call122, null
  br i1 %cmp123, label %if.then125, label %if.end130

if.then125:                                       ; preds = %if.end119
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3530, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 247, i8* noundef null) #13
  br label %err

if.end130:                                        ; preds = %if.end119, %if.end105, %land.lhs.true107
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 100
  %37 = load i32, i32* %post_handshake_auth, align 8, !tbaa !42
  %cmp131 = icmp eq i32 %37, 4
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %38 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  br i1 %cmp131, label %if.then133, label %if.end141

if.then133:                                       ; preds = %if.end130
  %call134 = call %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef %38, i32 noundef 0) #13
  %cmp135 = icmp eq %struct.ssl_session_st* %call134, null
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then133
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3545, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_process_client_certificate, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end138:                                        ; preds = %if.then133
  %39 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %39) #13
  store %struct.ssl_session_st* %call134, %struct.ssl_session_st** %session, align 8, !tbaa !31
  br label %if.end141

if.end141:                                        ; preds = %if.end130, %if.end138
  %40 = phi %struct.ssl_session_st* [ %call134, %if.end138 ], [ %38, %if.end130 ]
  %session142 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %40, i64 0, i32 11
  %41 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !32
  call void @X509_free(%struct.x509_st* noundef %41) #13
  %call143 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %5) #14
  %call144 = call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call143) #13
  %42 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session142, align 8, !tbaa !31
  %peer146 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %42, i64 0, i32 11
  %43 = bitcast %struct.x509_st** %peer146 to i8**
  store i8* %call144, i8** %43, align 8, !tbaa !32
  %verify_result147 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  %44 = load i64, i64* %verify_result147, align 8, !tbaa !147
  %verify_result149 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %42, i64 0, i32 13
  store i64 %44, i64* %verify_result149, align 8, !tbaa !148
  %peer_chain = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %42, i64 0, i32 12
  %45 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain, align 8, !tbaa !149
  %call151 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %45) #14
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call151, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #13
  %46 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session142, align 8, !tbaa !31
  %peer_chain154 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %46, i64 0, i32 12
  %47 = bitcast %struct.stack_st_X509** %peer_chain154 to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %47, align 8, !tbaa !149
  %48 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc156 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %48, i64 0, i32 25
  %49 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc156, align 8, !tbaa !22
  %enc_flags157 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %49, i64 0, i32 12
  %50 = load i32, i32* %enc_flags157, align 8, !tbaa !24
  %and158 = and i32 %50, 8
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %land.lhs.true160, label %if.end174

land.lhs.true160:                                 ; preds = %if.end141
  %version162 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %48, i64 0, i32 0
  %51 = load i32, i32* %version162, align 8, !tbaa !26
  %cmp163 = icmp slt i32 %51, 772
  %cmp168.not = icmp eq i32 %51, 65536
  %or.cond293 = or i1 %cmp163, %cmp168.not
  br i1 %or.cond293, label %if.end174, label %land.lhs.true170

land.lhs.true170:                                 ; preds = %land.lhs.true160
  %call171 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %err, label %land.lhs.true170.if.end174_crit_edge

land.lhs.true170.if.end174_crit_edge:             ; preds = %land.lhs.true170
  %.pre306 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc176.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre306, i64 0, i32 25
  %.pre307 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc176.phi.trans.insert, align 8, !tbaa !22
  %enc_flags177.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre307, i64 0, i32 12
  %.pre308 = load i32, i32* %enc_flags177.phi.trans.insert, align 8, !tbaa !24
  br label %if.end174

if.end174:                                        ; preds = %land.lhs.true170.if.end174_crit_edge, %land.lhs.true160, %if.end141
  %52 = phi i32 [ %.pre308, %land.lhs.true170.if.end174_crit_edge ], [ %50, %land.lhs.true160 ], [ %50, %if.end141 ]
  %53 = phi %struct.ssl_method_st* [ %.pre306, %land.lhs.true170.if.end174_crit_edge ], [ %48, %land.lhs.true160 ], [ %48, %if.end141 ]
  %and178 = and i32 %52, 8
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %land.lhs.true180, label %err

land.lhs.true180:                                 ; preds = %if.end174
  %version182 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %53, i64 0, i32 0
  %54 = load i32, i32* %version182, align 8, !tbaa !26
  %cmp183 = icmp slt i32 %54, 772
  %cmp188.not = icmp eq i32 %54, 65536
  %or.cond294 = or i1 %cmp183, %cmp188.not
  br i1 %or.cond294, label %err, label %if.then190

if.then190:                                       ; preds = %land.lhs.true180
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 50, i64 0
  %cert_verify_hash_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 51
  %call191 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i64 noundef 64, i64* noundef nonnull %cert_verify_hash_len) #13
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %if.end194

if.end194:                                        ; preds = %if.then190
  %sent_tickets = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 122
  store i64 0, i64* %sent_tickets, align 8, !tbaa !64
  br label %err

err:                                              ; preds = %if.then125, %if.then116, %cleanup.thread, %if.end174, %land.lhs.true180, %if.end194, %if.then190, %land.lhs.true170, %land.lhs.true107, %if.then137, %if.then103, %if.then96, %if.then86, %if.then49, %if.then46, %if.then42, %if.then37, %if.then28, %if.then21, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then28 ], [ 0, %if.then42 ], [ 0, %if.then46 ], [ 0, %if.then49 ], [ 0, %if.then86 ], [ 0, %if.then37 ], [ 0, %if.then96 ], [ 0, %if.then103 ], [ 0, %if.then137 ], [ 0, %if.then190 ], [ 0, %land.lhs.true170 ], [ 0, %land.lhs.true107 ], [ 0, %if.then21 ], [ 3, %if.end194 ], [ 3, %land.lhs.true180 ], [ 3, %if.end174 ], [ 0, %cleanup.thread ], [ 0, %if.then116 ], [ 0, %if.then125 ]
  %sk.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %5, %if.then28 ], [ %5, %if.then42 ], [ %5, %if.then46 ], [ %5, %if.then49 ], [ %5, %if.then86 ], [ %5, %if.then37 ], [ %5, %if.then96 ], [ %5, %if.then103 ], [ %5, %if.then137 ], [ null, %if.then190 ], [ null, %land.lhs.true170 ], [ %5, %land.lhs.true107 ], [ %5, %if.then21 ], [ null, %if.end194 ], [ null, %land.lhs.true180 ], [ null, %if.end174 ], [ %5, %cleanup.thread ], [ %5, %if.then116 ], [ %5, %if.then125 ]
  %55 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !80
  call void @X509_free(%struct.x509_st* noundef %55) #13
  %call196 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %sk.0) #14
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call196, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_client_key_exchange(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #1 {
entry:
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 4
  %1 = load i32, i32* %algorithm_mkey, align 4, !tbaa !65
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 456
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @tls_process_cke_psk_preamble(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %and2 = and i64 %conv, 8
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call5, 0
  br i1 %cmp.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then4
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3297, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_client_key_exchange, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %err

if.end8:                                          ; preds = %if.then4
  %call9 = tail call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef null, i64 noundef 0, i32 noundef 0) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %cleanup

if.else:                                          ; preds = %if.end
  %and13 = and i64 %conv, 65
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.else
  %call16 = tail call fastcc i32 @tls_process_cke_rsa(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %cleanup

if.else20:                                        ; preds = %if.else
  %and21 = and i64 %conv, 258
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else28, label %if.then23

if.then23:                                        ; preds = %if.else20
  %call24 = tail call fastcc i32 @tls_process_cke_dhe(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %cleanup

if.else28:                                        ; preds = %if.else20
  %and29 = and i64 %conv, 132
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %if.else36, label %if.then31

if.then31:                                        ; preds = %if.else28
  %call32 = tail call fastcc i32 @tls_process_cke_ecdhe(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %cleanup

if.else36:                                        ; preds = %if.else28
  %and37 = and i64 %conv, 32
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.else44, label %if.then39

if.then39:                                        ; preds = %if.else36
  %call40 = tail call fastcc i32 @tls_process_cke_srp(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %cleanup

if.else44:                                        ; preds = %if.else36
  %and45 = and i64 %conv, 16
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.else52, label %if.then47

if.then47:                                        ; preds = %if.else44
  %call48 = tail call fastcc i32 @tls_process_cke_gost(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %cleanup

if.else52:                                        ; preds = %if.else44
  %and53 = and i64 %conv, 512
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %if.else60, label %if.then55

if.then55:                                        ; preds = %if.else52
  %call56 = tail call fastcc i32 @tls_process_cke_gost18(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef %pkt) #14
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %cleanup

if.else60:                                        ; preds = %if.else52
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3336, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.tls_process_client_key_exchange, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 249, i8* noundef null) #13
  br label %err

err:                                              ; preds = %if.then55, %if.then47, %if.then39, %if.then31, %if.then23, %if.then15, %if.end8, %land.lhs.true, %if.else60, %if.then7
  %psk = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 24
  %2 = load i8*, i8** %psk, align 8, !tbaa !150
  %psklen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 25
  %3 = load i64, i64* %psklen, align 8, !tbaa !151
  tail call void @CRYPTO_clear_free(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3343) #13
  store i8* null, i8** %psk, align 8, !tbaa !150
  store i64 0, i64* %psklen, align 8, !tbaa !151
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then23, %if.then39, %if.then55, %if.then47, %if.then31, %if.then15, %err
  %retval.0 = phi i32 [ 0, %err ], [ 2, %if.then15 ], [ 2, %if.then31 ], [ 2, %if.then47 ], [ 2, %if.then55 ], [ 2, %if.then39 ], [ 2, %if.then23 ], [ 2, %if.end8 ]
  ret i32 %retval.0
}

declare i32 @tls_process_cert_verify(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_process_next_proto(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) local_unnamed_addr #1 {
entry:
  %next_proto = alloca %struct.PACKET, align 8
  %padding = alloca %struct.PACKET, align 8
  %next_proto_len = alloca i64, align 8
  %0 = bitcast %struct.PACKET* %next_proto to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast %struct.PACKET* %padding to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %2 = bitcast i64* %next_proto_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %call = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %next_proto) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %padding) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4040, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_next_proto, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %npn = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 26
  %call5 = call fastcc i32 @PACKET_memdup(%struct.PACKET* noundef nonnull %next_proto, i8** noundef nonnull %npn, i64* noundef nonnull %next_proto_len) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %npn_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  store i64 0, i64* %npn_len, align 8, !tbaa !152
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4046, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_next_proto, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %3 = load i64, i64* %next_proto_len, align 8, !tbaa !91
  %conv10 = and i64 %3, 255
  %npn_len12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 27
  store i64 %conv10, i64* %npn_len12, align 8, !tbaa !152
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 3, %if.end9 ], [ 0, %if.then7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare i32 @tls_process_change_cipher_spec(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #2

declare i32 @tls_process_finished(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #2

declare i32 @tls_process_key_update(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_server_post_process_message(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #1 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !27
  switch i32 %0, label %sw.default [
    i32 20, label %sw.bb
    i32 28, label %sw.bb1
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1232, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.ossl_statem_server_post_process_message, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @tls_post_process_client_hello(%struct.ssl_st* noundef nonnull %s, i32 noundef %wst) #14
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call2 = tail call i32 @tls_post_process_client_key_exchange(%struct.ssl_st* noundef nonnull %s, i32 undef) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_post_process_client_hello(%struct.ssl_st* noundef %s, i32 noundef %wst) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i32 %wst, 3
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @tls_early_post_process_client_hello(%struct.ssl_st* noundef %s) #14
  %cmp1 = icmp eq i32 %call, 0
  %call.lobit = lshr i32 %call, 31
  %cleanup.dest.slot.0 = select i1 %cmp1, i32 2, i32 %call.lobit
  %0 = icmp slt i32 %call, 1
  %wst.addr.0 = select i1 %0, i32 3, i32 4
  switch i32 %cleanup.dest.slot.0, label %cleanup131 [
    i32 0, label %if.end6
    i32 2, label %err
  ]

if.end6:                                          ; preds = %if.then, %entry
  %wst.addr.1 = phi i32 [ %wst.addr.0, %if.then ], [ %wst, %entry ]
  switch i32 %wst.addr.1, label %cleanup131 [
    i32 4, label %if.then8
    i32 5, label %if.then116
  ]

if.then8:                                         ; preds = %if.end6
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %1 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %4, 8
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !26
  %cmp11 = icmp slt i32 %5, 772
  %cmp15.not = icmp eq i32 %5, 65536
  %or.cond = or i1 %cmp11, %cmp15.not
  br i1 %or.cond, label %if.else, label %if.end37

land.lhs.true19:                                  ; preds = %if.then8
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %6 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !66
  %cert_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 12
  %7 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %cert_cb, align 8, !tbaa !153
  %cmp20.not = icmp eq i32 (%struct.ssl_st*, i8*)* %7, null
  br i1 %cmp20.not, label %if.end37, label %if.then21

if.then21:                                        ; preds = %land.lhs.true19
  %cert_cb_arg = getelementptr inbounds %struct.cert_st, %struct.cert_st* %6, i64 0, i32 13
  %8 = load i8*, i8** %cert_cb_arg, align 8, !tbaa !154
  %call26 = tail call i32 %7(%struct.ssl_st* noundef nonnull %s, i8* noundef %8) #13
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %cleanup34, label %if.end29

if.end29:                                         ; preds = %if.then21
  %cmp30 = icmp slt i32 %call26, 0
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  br i1 %cmp30, label %cleanup34.thread, label %cleanup34.thread191

cleanup34.thread:                                 ; preds = %if.end29
  store i32 4, i32* %rwstate, align 8, !tbaa !38
  br label %cleanup131

cleanup34.thread191:                              ; preds = %if.end29
  store i32 1, i32* %rwstate, align 8, !tbaa !38
  br label %if.end37

cleanup34:                                        ; preds = %if.then21
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2204, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_post_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 377, i8* noundef null) #13
  br label %err

if.end37:                                         ; preds = %cleanup34.thread191, %land.lhs.true, %land.lhs.true19
  %method38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method38, align 8, !tbaa !4
  %ssl3_enc39 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc39, align 8, !tbaa !22
  %enc_flags40 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 12
  %11 = load i32, i32* %enc_flags40, align 8, !tbaa !24
  %and41 = and i32 %11, 8
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.then51

land.lhs.true43:                                  ; preds = %if.end37
  %version45 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 0
  %12 = load i32, i32* %version45, align 8, !tbaa !26
  %cmp46 = icmp slt i32 %12, 772
  %cmp50.not = icmp eq i32 %12, 65536
  %or.cond186 = or i1 %cmp46, %cmp50.not
  br i1 %or.cond186, label %if.then51, label %if.end57

if.then51:                                        ; preds = %land.lhs.true43, %if.end37
  %peer_ciphers = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 24
  %13 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !155
  %call52 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #13
  %call53 = tail call %struct.ssl_cipher_st* @ssl3_choose_cipher(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_SSL_CIPHER* noundef %13, %struct.stack_st_SSL_CIPHER* noundef %call52) #13
  %cmp54 = icmp eq %struct.ssl_cipher_st* %call53, null
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then51
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2221, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.tls_post_process_client_hello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 193, i8* noundef null) #13
  br label %err

if.end56:                                         ; preds = %if.then51
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  store %struct.ssl_cipher_st* %call53, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  br label %if.end57

if.end57:                                         ; preds = %land.lhs.true43, %if.end56
  %14 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool59.not = icmp eq i32 %14, 0
  br i1 %tobool59.not, label %if.then60, label %if.end88

if.then60:                                        ; preds = %if.end57
  %call61 = tail call i32 @tls_choose_sigalg(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %if.then60
  %not_resumable_session_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 107
  %not_resumable_session_cb65 = bitcast {}** %not_resumable_session_cb to i32 (%struct.ssl_st*, i32)**
  %15 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %not_resumable_session_cb65, align 8, !tbaa !156
  %cmp66.not = icmp eq i32 (%struct.ssl_st*, i32)* %15, null
  br i1 %cmp66.not, label %if.end64.if.end76_crit_edge, label %if.then67

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  %session77.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %.pre = load %struct.ssl_session_st*, %struct.ssl_session_st** %session77.phi.trans.insert, align 8, !tbaa !31
  %not_resumable78.phi.trans.insert = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pre, i64 0, i32 10
  %.pre203 = load i32, i32* %not_resumable78.phi.trans.insert, align 8, !tbaa !88
  br label %if.end76

if.then67:                                        ; preds = %if.end64
  %new_cipher72 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %16 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher72, align 8, !tbaa !44
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %16, i64 0, i32 4
  %17 = load i32, i32* %algorithm_mkey, align 4, !tbaa !65
  %and73 = and i32 %17, 6
  %cmp74 = icmp ne i32 %and73, 0
  %conv = zext i1 %cmp74 to i32
  %call75 = tail call i32 %15(%struct.ssl_st* noundef nonnull %s, i32 noundef %conv) #13
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %not_resumable = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %18, i64 0, i32 10
  store i32 %call75, i32* %not_resumable, align 8, !tbaa !88
  br label %if.end76

if.end76:                                         ; preds = %if.end64.if.end76_crit_edge, %if.then67
  %19 = phi i32 [ %.pre203, %if.end64.if.end76_crit_edge ], [ %call75, %if.then67 ]
  %tobool79.not = icmp eq i32 %19, 0
  br i1 %tobool79.not, label %if.end88, label %if.then80

if.then80:                                        ; preds = %if.end76
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 0, i32* %ticket_expected, align 8, !tbaa !58
  br label %if.end88

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %session83 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %20 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session83, align 8, !tbaa !31
  %cipher84 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %20, i64 0, i32 20
  %21 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher84, align 8, !tbaa !72
  %new_cipher87 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  store %struct.ssl_cipher_st* %21, %struct.ssl_cipher_st** %new_cipher87, align 8, !tbaa !44
  br label %if.end88

if.end88:                                         ; preds = %if.end57, %if.then80, %if.end76, %if.else
  %call89 = tail call fastcc i32 @tls_handle_status_request(%struct.ssl_st* noundef nonnull %s) #14
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %if.end92

if.end92:                                         ; preds = %if.end88
  %method93 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method93, align 8, !tbaa !4
  %ssl3_enc94 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 25
  %23 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc94, align 8, !tbaa !22
  %enc_flags95 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %23, i64 0, i32 12
  %24 = load i32, i32* %enc_flags95, align 8, !tbaa !24
  %and96 = and i32 %24, 8
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %land.lhs.true108

land.lhs.true98:                                  ; preds = %if.end92
  %version100 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 0
  %25 = load i32, i32* %version100, align 8, !tbaa !26
  %cmp101 = icmp slt i32 %25, 772
  %cmp106.not = icmp eq i32 %25, 65536
  %or.cond187 = or i1 %cmp101, %cmp106.not
  br i1 %or.cond187, label %land.lhs.true108, label %if.then116

land.lhs.true108:                                 ; preds = %land.lhs.true98, %if.end92
  %call109 = tail call i32 @tls_handle_alpn(%struct.ssl_st* noundef nonnull %s) #14
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %if.then116

if.then116:                                       ; preds = %if.end6, %land.lhs.true108, %land.lhs.true98
  %call117 = tail call fastcc i32 @ssl_check_srp_ext_ClientHello(%struct.ssl_st* noundef %s) #14
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %cleanup127.thread, label %if.end122

cleanup127.thread:                                ; preds = %if.then116
  %rwstate121 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 4, i32* %rwstate121, align 8, !tbaa !38
  br label %cleanup131

if.end122:                                        ; preds = %if.then116
  %cmp123 = icmp slt i32 %call117, 0
  br i1 %cmp123, label %err, label %cleanup131

err:                                              ; preds = %if.end122, %cleanup34, %land.lhs.true108, %if.end88, %if.then60, %if.then, %if.then55
  br label %cleanup131

cleanup131:                                       ; preds = %if.end6, %if.end122, %cleanup127.thread, %cleanup34.thread, %err, %if.then
  %retval.7 = phi i32 [ 3, %if.then ], [ 0, %err ], [ 4, %cleanup34.thread ], [ 5, %cleanup127.thread ], [ 1, %if.end122 ], [ 1, %if.end6 ]
  ret i32 %retval.7
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls_post_process_client_key_exchange(%struct.ssl_st* noundef %s, i32 %wst) local_unnamed_addr #1 {
entry:
  %no_cert_verify = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 11
  %0 = load i32, i32* %no_cert_verify, align 4, !tbaa !157
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 11
  %2 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !32
  %tobool1.not = icmp eq %struct.x509_st* %2, null
  br i1 %tobool1.not, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 0) #13
  %tobool2.not = icmp eq i32 %call, 0
  %. = select i1 %tobool2.not, i32 0, i32 2
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %3 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !146
  %tobool4.not = icmp eq %struct.bio_st* %3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3396, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.tls_post_process_client_key_exchange, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

if.end6:                                          ; preds = %if.else
  %call7 = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool8.not = icmp eq i32 %call7, 0
  %.17 = select i1 %tobool8.not, i32 0, i32 2
  br label %return

return:                                           ; preds = %if.end6, %if.then, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %., %if.then ], [ %.17, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_raw_hello_verify_request(%struct.wpacket_st* noundef %pkt, i8* noundef %cookie, i64 noundef %cookie_len) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 65279, i64 noundef 2) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %cookie, i64 noundef %cookie_len, i64 noundef 1) #13
  %tobool2.not = icmp ne i32 %call1, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl3_send_alert(%struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RECORD_LAYER_is_sslv2_record(%struct.record_layer_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_null_init(%struct.PACKET* nocapture noundef writeonly %pkt) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* null, i8** %curr, align 8, !tbaa !158
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 0, i64* %remaining, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_sub_packet(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef %subpkt, i64 noundef %len) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_bytes(%struct.PACKET* nocapture noundef %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* noundef %pkt, i8* noundef %data, i64 noundef %len) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #5 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !159
  ret i64 %0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !158
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_1(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #10 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !142
  %call = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !79
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !142
  %5 = load i8*, i8** %data, align 8, !tbaa !80
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !158
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !159
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_copy_all(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %dest, i64 noundef %dest_len, i64* nocapture noundef writeonly %len) unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ugt i64 %call, %dest_len
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %len, align 8, !tbaa !91
  br label %return

if.end:                                           ; preds = %entry
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !159
  store i64 %0, i64* %len, align 8, !tbaa !91
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !158
  %2 = load i64, i64* %remaining, align 8, !tbaa !159
  %call2 = tail call i8* @memcpy(i8* noundef %dest, i8* noundef %1, i64 noundef %2) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #10 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !142
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !79
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !142
  %5 = load i8*, i8** %data, align 8, !tbaa !80
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !158
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !159
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

declare i32 @tls_collect_extensions(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef, %struct.raw_extension_st** noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_handle_alpn(%struct.ssl_st* noundef %s) local_unnamed_addr #1 {
entry:
  %selected = alloca i8*, align 8
  %selected_len = alloca i8, align 1
  %0 = bitcast i8** %selected to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i8* null, i8** %selected, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %selected_len) #15
  store i8 0, i8* %selected_len, align 1, !tbaa !122
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %alpn_select_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 16
  %2 = load i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)** %alpn_select_cb, align 8, !tbaa !160
  %cmp.not = icmp eq i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* %2, null
  br i1 %cmp.not, label %if.end81, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %alpn_proposed = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 29
  %3 = load i8*, i8** %alpn_proposed, align 8, !tbaa !161
  %cmp1.not = icmp eq i8* %3, null
  br i1 %cmp1.not, label %if.end81, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %alpn_proposed_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 30
  %4 = load i64, i64* %alpn_proposed_len, align 8, !tbaa !162
  %conv = trunc i64 %4 to i32
  %alpn_select_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 17
  %5 = load i8*, i8** %alpn_select_cb_arg, align 8, !tbaa !163
  %call = call i32 %2(%struct.ssl_st* noundef nonnull %s, i8** noundef nonnull %selected, i8* noundef nonnull %selected_len, i8* noundef nonnull %3, i32 noundef %conv, i8* noundef %5) #13
  switch i32 %call, label %if.then78 [
    i32 0, label %if.then12
    i32 3, label %if.end81
  ]

if.then12:                                        ; preds = %if.then
  %alpn_selected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 27
  %6 = load i8*, i8** %alpn_selected, align 8, !tbaa !127
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2120) #13
  %7 = load i8*, i8** %selected, align 8, !tbaa !80
  %8 = load i8, i8* %selected_len, align 1, !tbaa !122
  %conv14 = zext i8 %8 to i64
  %call15 = call i8* @CRYPTO_memdup(i8* noundef %7, i64 noundef %conv14, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2121) #13
  store i8* %call15, i8** %alpn_selected, align 8, !tbaa !127
  %cmp20 = icmp eq i8* %call15, null
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then12
  %alpn_selected_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  store i64 0, i64* %alpn_selected_len, align 8, !tbaa !129
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2124, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tls_handle_alpn, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup91

if.end:                                           ; preds = %if.then12
  %9 = load i8, i8* %selected_len, align 1, !tbaa !122
  %conv24 = zext i8 %9 to i64
  %alpn_selected_len26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 28
  store i64 %conv24, i64* %alpn_selected_len26, align 8, !tbaa !129
  %npn_seen = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 26
  store i32 0, i32* %npn_seen, align 4, !tbaa !36
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %10 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %alpn_selected29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %10, i64 0, i32 26, i32 6
  %11 = load i8*, i8** %alpn_selected29, align 8, !tbaa !128
  %cmp30 = icmp eq i8* %11, null
  br i1 %cmp30, label %if.then46.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %alpn_selected_len35 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %10, i64 0, i32 26, i32 7
  %12 = load i64, i64* %alpn_selected_len35, align 8, !tbaa !130
  %cmp36.not = icmp eq i64 %12, %conv24
  br i1 %cmp36.not, label %lor.lhs.false38, label %if.then46

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %13 = load i8*, i8** %selected, align 8, !tbaa !80
  %call43 = call i32 @memcmp(i8* noundef %13, i8* noundef nonnull %11, i64 noundef %conv24) #17
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %cleanup91, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false38, %lor.lhs.false
  %early_data_ok = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok, align 4, !tbaa !164
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %14 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then56, label %cleanup91

if.then46.thread:                                 ; preds = %if.end
  %early_data_ok124 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok124, align 4, !tbaa !164
  %hit125 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %15 = load i32, i32* %hit125, align 8, !tbaa !57
  %tobool.not126 = icmp eq i32 %15, 0
  br i1 %tobool.not126, label %if.end57, label %cleanup91

if.then56:                                        ; preds = %if.then46
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2149, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tls_handle_alpn, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup91

if.end57:                                         ; preds = %if.then46.thread
  %16 = load i8*, i8** %selected, align 8, !tbaa !80
  %call59 = call i8* @CRYPTO_memdup(i8* noundef %16, i64 noundef %conv24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2153) #13
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %alpn_selected62 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 26, i32 6
  store i8* %call59, i8** %alpn_selected62, align 8, !tbaa !128
  %cmp66 = icmp eq i8* %call59, null
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end57
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2156, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tls_handle_alpn, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup91

if.end69:                                         ; preds = %if.end57
  %18 = load i8, i8* %selected_len, align 1, !tbaa !122
  %conv70 = zext i8 %18 to i64
  %alpn_selected_len73 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 26, i32 7
  store i64 %conv70, i64* %alpn_selected_len73, align 8, !tbaa !130
  br label %cleanup91

if.then78:                                        ; preds = %if.then
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2166, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.tls_handle_alpn, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 120, i32 noundef 235, i8* noundef null) #13
  br label %cleanup91

if.end81:                                         ; preds = %if.then, %land.lhs.true, %entry
  %session82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %19 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session82, align 8, !tbaa !31
  %alpn_selected84 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %19, i64 0, i32 26, i32 6
  %20 = load i8*, i8** %alpn_selected84, align 8, !tbaa !128
  %cmp85.not = icmp eq i8* %20, null
  br i1 %cmp85.not, label %cleanup91, label %if.then87

if.then87:                                        ; preds = %if.end81
  %early_data_ok89 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 31
  store i32 0, i32* %early_data_ok89, align 4, !tbaa !164
  br label %cleanup91

cleanup91:                                        ; preds = %if.then46.thread, %lor.lhs.false38, %if.end69, %if.then46, %if.then78, %if.then56, %if.then68, %if.then22, %if.end81, %if.then87
  %retval.1 = phi i32 [ 1, %if.then87 ], [ 1, %if.end81 ], [ 1, %if.then46.thread ], [ 1, %lor.lhs.false38 ], [ 1, %if.end69 ], [ 1, %if.then46 ], [ 0, %if.then78 ], [ 0, %if.then56 ], [ 0, %if.then68 ], [ 0, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %selected_len) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.1
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_early_post_process_client_hello(%struct.ssl_st* noundef %s) unnamed_addr #1 {
entry:
  %al = alloca i32, align 4
  %ciphers = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %scsvs = alloca %struct.stack_st_SSL_CIPHER*, align 8
  %dgrd = alloca i32, align 4
  %pref_cipher = alloca %struct.ssl_cipher_st*, align 8
  %master_key_length = alloca i32, align 4
  %0 = bitcast i32* %al to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 80, i32* %al, align 4, !tbaa !79
  %1 = bitcast %struct.stack_st_SSL_CIPHER** %ciphers to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %2 = bitcast %struct.stack_st_SSL_CIPHER** %scsvs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %scsvs, align 8, !tbaa !80
  %clienthello1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 89
  %3 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello1, align 8, !tbaa !143
  %4 = bitcast i32* %dgrd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15
  store i32 0, i32* %dgrd, align 4, !tbaa !122
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %client_hello_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 58
  %6 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %client_hello_cb, align 8, !tbaa !165
  %cmp.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %6, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %client_hello_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 59
  %7 = load i8*, i8** %client_hello_cb_arg, align 8, !tbaa !166
  %call = call i32 %6(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %al, i8* noundef %7) #13
  switch i32 %call, label %sw.default [
    i32 1, label %if.end
    i32 -1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 7, i32* %rwstate, align 8, !tbaa !38
  br label %cleanup636

sw.default:                                       ; preds = %if.then
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1615, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  %8 = load i32, i32* %al, align 4, !tbaa !79
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %8, i32 noundef 234, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %arraydecay6 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 2, i64 0
  %call7 = call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay6, i64 noundef 32) #13
  %isv2 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 0
  %9 = load i32, i32* %isv2, align 8, !tbaa !138
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %if.end
  %legacy_version = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 1
  %10 = load i32, i32* %legacy_version, align 4, !tbaa !167
  %cmp9 = icmp ne i32 %10, 2
  %and = and i32 %10, 65280
  %cmp11.not = icmp eq i32 %and, 768
  %or.cond906 = and i1 %cmp9, %cmp11.not
  br i1 %or.cond906, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1633, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 252, i8* noundef null) #13
  br label %err

if.end13:                                         ; preds = %if.then8
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  store i32 %10, i32* %client_version, align 4, !tbaa !168
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %11 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 25
  %12 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %12, i64 0, i32 12
  %13 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and16 = and i32 %13, 8
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end36, label %if.else

if.else:                                          ; preds = %if.end15
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 0
  %14 = load i32, i32* %version, align 8, !tbaa !26
  %cmp21.not = icmp eq i32 %14, 131071
  br i1 %cmp21.not, label %if.end50, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %legacy_version22 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 1
  %15 = load i32, i32* %legacy_version22, align 4, !tbaa !167
  %cmp23 = icmp eq i32 %15, 256
  %spec.select = select i1 %cmp23, i32 65280, i32 %15
  %version25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %16 = load i32, i32* %version25, align 8, !tbaa !29
  %cmp26 = icmp eq i32 %16, 256
  %cond31 = select i1 %cmp26, i32 65280, i32 %16
  %cmp32 = icmp sgt i32 %spec.select, %cond31
  br i1 %cmp32, label %if.then38, label %if.end50

if.end36:                                         ; preds = %if.end15
  %call19 = call i32 @ssl_choose_server_version(%struct.ssl_st* noundef nonnull %s, %struct.CLIENTHELLO_MSG* noundef nonnull %3, i32* noundef nonnull %dgrd) #13
  %tobool37.not = icmp eq i32 %call19, 0
  br i1 %tobool37.not, label %if.end36.if.end50_crit_edge, label %if.then38

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  %.pre = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc52.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre, i64 0, i32 25
  %.pre973 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc52.phi.trans.insert, align 8, !tbaa !22
  %enc_flags53.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre973, i64 0, i32 12
  %.pre974 = load i32, i32* %enc_flags53.phi.trans.insert, align 8, !tbaa !24
  br label %if.end50

if.then38:                                        ; preds = %land.lhs.true, %if.end36
  %protverr.0919 = phi i32 [ %call19, %if.end36 ], [ 396, %land.lhs.true ]
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %17 = load i64, i64* %finish_md_len, align 8, !tbaa !55
  %cmp40 = icmp eq i64 %17, 0
  br i1 %cmp40, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.then38
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %18 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !56
  %cmp44 = icmp eq i64 %18, 0
  br i1 %cmp44, label %if.then45, label %if.end49

if.then45:                                        ; preds = %lor.lhs.false41, %if.then38
  %legacy_version46 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 1
  %19 = load i32, i32* %legacy_version46, align 4, !tbaa !167
  %client_version47 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  store i32 %19, i32* %client_version47, align 4, !tbaa !168
  %version48 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 %19, i32* %version48, align 8, !tbaa !29
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %lor.lhs.false41
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1657, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef %protverr.0919, i8* noundef null) #13
  br label %err

if.end50:                                         ; preds = %if.end36.if.end50_crit_edge, %land.lhs.true, %if.else
  %20 = phi i32 [ %.pre974, %if.end36.if.end50_crit_edge ], [ %13, %land.lhs.true ], [ %13, %if.else ]
  %21 = phi %struct.ssl_method_st* [ %.pre, %if.end36.if.end50_crit_edge ], [ %11, %land.lhs.true ], [ %11, %if.else ]
  %and54 = and i32 %20, 8
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.then74

land.lhs.true56:                                  ; preds = %if.end50
  %version58 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 0
  %22 = load i32, i32* %version58, align 8, !tbaa !26
  %cmp59 = icmp slt i32 %22, 772
  %cmp63.not = icmp eq i32 %22, 65536
  %or.cond907 = or i1 %cmp59, %cmp63.not
  br i1 %or.cond907, label %if.end122, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true56
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call65 = call i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef nonnull %rlayer) #13
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %land.lhs.true64
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1663, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 182, i8* noundef null) #13
  br label %err

if.end68:                                         ; preds = %land.lhs.true64
  %.pre975 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc70.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre975, i64 0, i32 25
  %.pre976 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc70.phi.trans.insert, align 8, !tbaa !22
  %enc_flags71.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre976, i64 0, i32 12
  %.pre977 = load i32, i32* %enc_flags71.phi.trans.insert, align 8, !tbaa !24
  %.pre987 = and i32 %.pre977, 8
  %tobool73.not = icmp eq i32 %.pre987, 0
  br i1 %tobool73.not, label %if.end122, label %if.then74

if.then74:                                        ; preds = %if.end50, %if.end68
  %call75 = call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #13
  %and76 = and i64 %call75, 8192
  %tobool77.not = icmp eq i64 %and76, 0
  br i1 %tobool77.not, label %if.end108, label %if.then78

if.then78:                                        ; preds = %if.then74
  %23 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %app_verify_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %23, i64 0, i32 23
  %24 = load i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i32)** %app_verify_cookie_cb, align 8, !tbaa !169
  %cmp80.not = icmp eq i32 (%struct.ssl_st*, i8*, i32)* %24, null
  br i1 %cmp80.not, label %if.else90, label %if.then81

if.then81:                                        ; preds = %if.then78
  %arraydecay84 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 6, i64 0
  %dtls_cookie_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 5
  %25 = load i64, i64* %dtls_cookie_len, align 8, !tbaa !141
  %conv = trunc i64 %25 to i32
  %call85 = call i32 %24(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay84, i32 noundef %conv) #13
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.then81.if.end106_crit_edge

if.then81.if.end106_crit_edge:                    ; preds = %if.then81
  %d1107.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %.pre978 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1107.phi.trans.insert, align 8, !tbaa !48
  br label %if.end106

if.then88:                                        ; preds = %if.then81
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1674, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 308, i8* noundef null) #13
  br label %err

if.else90:                                        ; preds = %if.then78
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %26 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !48
  %cookie_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %26, i64 0, i32 1
  %27 = load i64, i64* %cookie_len, align 8, !tbaa !87
  %dtls_cookie_len91 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 5
  %28 = load i64, i64* %dtls_cookie_len91, align 8, !tbaa !141
  %cmp92.not = icmp eq i64 %27, %28
  br i1 %cmp92.not, label %lor.lhs.false94, label %if.then104

lor.lhs.false94:                                  ; preds = %if.else90
  %arraydecay96 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 6, i64 0
  %arraydecay98 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %26, i64 0, i32 0, i64 0
  %call101 = call i32 @memcmp(i8* noundef nonnull %arraydecay96, i8* noundef %arraydecay98, i64 noundef %27) #17
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %if.end106, label %if.then104

if.then104:                                       ; preds = %lor.lhs.false94, %if.else90
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1682, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 308, i8* noundef null) #13
  br label %err

if.end106:                                        ; preds = %if.then81.if.end106_crit_edge, %lor.lhs.false94
  %29 = phi %struct.dtls1_state_st* [ %.pre978, %if.then81.if.end106_crit_edge ], [ %26, %lor.lhs.false94 ]
  %cookie_verified = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %29, i64 0, i32 2
  store i32 1, i32* %cookie_verified, align 8, !tbaa !49
  br label %if.end108

if.end108:                                        ; preds = %if.end106, %if.then74
  %30 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %version110 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %30, i64 0, i32 0
  %31 = load i32, i32* %version110, align 8, !tbaa !26
  %cmp111 = icmp eq i32 %31, 131071
  br i1 %cmp111, label %if.then113, label %if.end122

if.then113:                                       ; preds = %if.end108
  %call114 = call i32 @ssl_choose_server_version(%struct.ssl_st* noundef nonnull %s, %struct.CLIENTHELLO_MSG* noundef nonnull %3, i32* noundef nonnull %dgrd) #13
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %if.end122, label %if.then117

if.then117:                                       ; preds = %if.then113
  %client_version118 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  %32 = load i32, i32* %client_version118, align 4, !tbaa !168
  %version119 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  store i32 %32, i32* %version119, align 8, !tbaa !29
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1691, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef %call114, i8* noundef null) #13
  br label %err

if.end122:                                        ; preds = %land.lhs.true56, %if.end108, %if.then113, %if.end68
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  store i32 0, i32* %hit, align 8, !tbaa !57
  %ciphersuites = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 7
  %33 = load i32, i32* %isv2, align 8, !tbaa !138
  %call124 = call i32 @ssl_cache_cipherlist(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %ciphersuites, i32 noundef %33) #13
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.end122
  %34 = load i32, i32* %isv2, align 8, !tbaa !138
  %call129 = call i32 @bytes_to_cipher_list(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %ciphersuites, %struct.stack_st_SSL_CIPHER** noundef nonnull %ciphers, %struct.stack_st_SSL_CIPHER** noundef nonnull %scsvs, i32 noundef %34, i32 noundef 1) #13
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %if.end132

if.end132:                                        ; preds = %lor.lhs.false126
  %send_connection_binding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 25
  store i32 0, i32* %send_connection_binding, align 8, !tbaa !136
  %35 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsvs, align 8, !tbaa !80
  %cmp134.not = icmp eq %struct.stack_st_SSL_CIPHER* %35, null
  br i1 %cmp134.not, label %if.end162, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end132
  %call137941 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %35) #14
  %call138942 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call137941) #13
  %cmp139943 = icmp sgt i32 %call138942, 0
  br i1 %cmp139943, label %for.body.lr.ph, label %if.end162

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0944 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %36 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsvs, align 8, !tbaa !80
  %call141 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %36) #14
  %call142 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call141, i32 noundef %i.0944) #13
  %37 = bitcast i8* %call142 to %struct.ssl_cipher_st*
  %call143 = call i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef %37) #13
  %cmp144 = icmp eq i32 %call143, 50331903
  br i1 %cmp144, label %if.then146, label %if.else152

if.then146:                                       ; preds = %for.body
  %38 = load i32, i32* %renegotiate, align 8, !tbaa !54
  %tobool147.not = icmp eq i32 %38, 0
  br i1 %tobool147.not, label %if.end149, label %if.then148

if.then148:                                       ; preds = %if.then146
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1716, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 345, i8* noundef null) #13
  br label %err

if.end149:                                        ; preds = %if.then146
  store i32 1, i32* %send_connection_binding, align 8, !tbaa !136
  br label %for.inc

if.else152:                                       ; preds = %for.body
  %call153 = call i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef %37) #13
  %cmp154 = icmp eq i32 %call153, 50353664
  br i1 %cmp154, label %land.lhs.true156, label %for.inc

land.lhs.true156:                                 ; preds = %if.else152
  %call157 = call i32 @ssl_check_version_downgrade(%struct.ssl_st* noundef %s) #13
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then159, label %for.inc

if.then159:                                       ; preds = %land.lhs.true156
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1730, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 86, i32 noundef 373, i8* noundef null) #13
  br label %err

for.inc:                                          ; preds = %if.end149, %land.lhs.true156, %if.else152
  %inc = add nuw nsw i32 %i.0944, 1
  %39 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsvs, align 8, !tbaa !80
  %call137 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %39) #14
  %call138 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call137) #13
  %cmp139 = icmp slt i32 %inc, %call138
  br i1 %cmp139, label %for.body, label %if.end162, !llvm.loop !170

if.end162:                                        ; preds = %for.inc, %for.cond.preheader, %if.end132
  %40 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc164 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 25
  %41 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc164, align 8, !tbaa !22
  %enc_flags165 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %41, i64 0, i32 12
  %42 = load i32, i32* %enc_flags165, align 8, !tbaa !24
  %and166 = and i32 %42, 8
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %land.lhs.true168, label %if.end205

land.lhs.true168:                                 ; preds = %if.end162
  %version170 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 0
  %43 = load i32, i32* %version170, align 8, !tbaa !26
  %cmp171 = icmp slt i32 %43, 772
  %cmp176.not = icmp eq i32 %43, 65536
  %or.cond908 = or i1 %cmp171, %cmp176.not
  br i1 %or.cond908, label %if.end205, label %if.then178

if.then178:                                       ; preds = %land.lhs.true168
  %44 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %call179 = call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #13
  %call180 = call %struct.ssl_cipher_st* @ssl3_choose_cipher(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_SSL_CIPHER* noundef %44, %struct.stack_st_SSL_CIPHER* noundef %call179) #13
  %cmp181 = icmp eq %struct.ssl_cipher_st* %call180, null
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.then178
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1742, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 193, i8* noundef null) #13
  br label %err

if.end184:                                        ; preds = %if.then178
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %45 = load i32, i32* %hello_retry_request, align 8, !tbaa !39
  %cmp185 = icmp eq i32 %45, 1
  br i1 %cmp185, label %land.lhs.true187, label %cleanup

land.lhs.true187:                                 ; preds = %if.end184
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %46 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %cmp190 = icmp eq %struct.ssl_cipher_st* %46, null
  br i1 %cmp190, label %if.then200, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %land.lhs.true187
  %id196 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %46, i64 0, i32 3
  %47 = load i32, i32* %id196, align 8, !tbaa !171
  %id197 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call180, i64 0, i32 3
  %48 = load i32, i32* %id197, align 8, !tbaa !171
  %cmp198.not = icmp eq i32 %47, %48
  br i1 %cmp198.not, label %cleanup, label %if.then200

if.then200:                                       ; preds = %lor.lhs.false192, %land.lhs.true187
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1752, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 186, i8* noundef null) #13
  br label %err

cleanup:                                          ; preds = %if.end184, %lor.lhs.false192
  %new_cipher204 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  store %struct.ssl_cipher_st* %call180, %struct.ssl_cipher_st** %new_cipher204, align 8, !tbaa !44
  br label %if.end205

if.end205:                                        ; preds = %cleanup, %land.lhs.true168, %if.end162
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 12
  %49 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !144
  %call206 = call i32 @tls_parse_extension(%struct.ssl_st* noundef nonnull %s, i32 noundef 13, i32 noundef 128, %struct.raw_extension_st* noundef %49, %struct.x509_st* noundef null, i64 noundef 0) #13
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %if.end209

if.end209:                                        ; preds = %if.end205
  %50 = load i32, i32* %isv2, align 8, !tbaa !138
  %tobool211.not = icmp eq i32 %50, 0
  br i1 %tobool211.not, label %lor.lhs.false212, label %if.then217

lor.lhs.false212:                                 ; preds = %if.end209
  %new_session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 8
  %51 = load i32, i32* %new_session, align 4, !tbaa !137
  %tobool213.not = icmp eq i32 %51, 0
  br i1 %tobool213.not, label %if.else222, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %lor.lhs.false212
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %52 = load i64, i64* %options, align 8, !tbaa !62
  %and215 = and i64 %52, 65536
  %tobool216.not = icmp eq i64 %and215, 0
  br i1 %tobool216.not, label %if.else222, label %if.then217

if.then217:                                       ; preds = %land.lhs.true214, %if.end209
  %call218 = call i32 @ssl_get_new_session(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %err, label %if.end239

if.else222:                                       ; preds = %land.lhs.true214, %lor.lhs.false212
  %call223 = call i32 @ssl_get_prev_session(%struct.ssl_st* noundef nonnull %s, %struct.CLIENTHELLO_MSG* noundef nonnull %3) #13
  switch i32 %call223, label %if.else232 [
    i32 1, label %if.then226
    i32 -1, label %err
  ]

if.then226:                                       ; preds = %if.else222
  store i32 1, i32* %hit, align 8, !tbaa !57
  br label %if.end239

if.else232:                                       ; preds = %if.else222
  %call233 = call i32 @ssl_get_new_session(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %if.end239

if.end239:                                        ; preds = %if.then226, %if.else232, %if.then217
  %53 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc241 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %53, i64 0, i32 25
  %54 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc241, align 8, !tbaa !22
  %enc_flags242 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %54, i64 0, i32 12
  %55 = load i32, i32* %enc_flags242, align 8, !tbaa !24
  %and243 = and i32 %55, 8
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %land.lhs.true245, label %if.end263

land.lhs.true245:                                 ; preds = %if.end239
  %version247 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %53, i64 0, i32 0
  %56 = load i32, i32* %version247, align 8, !tbaa !26
  %cmp248 = icmp slt i32 %56, 772
  %cmp253.not = icmp eq i32 %56, 65536
  %or.cond909 = or i1 %cmp248, %cmp253.not
  br i1 %or.cond909, label %if.end263, label %if.then255

if.then255:                                       ; preds = %land.lhs.true245
  %arraydecay256 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 60, i64 0
  %57 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello1, align 8, !tbaa !143
  %arraydecay258 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %57, i64 0, i32 4, i64 0
  %session_id_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %57, i64 0, i32 3
  %58 = load i64, i64* %session_id_len, align 8, !tbaa !140
  %call260 = call i8* @memcpy(i8* noundef nonnull %arraydecay256, i8* noundef nonnull %arraydecay258, i64 noundef %58) #13
  %59 = load %struct.CLIENTHELLO_MSG*, %struct.CLIENTHELLO_MSG** %clienthello1, align 8, !tbaa !143
  %session_id_len262 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %59, i64 0, i32 3
  %60 = load i64, i64* %session_id_len262, align 8, !tbaa !140
  %tmp_session_id_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 61
  store i64 %60, i64* %tmp_session_id_len, align 8, !tbaa !172
  %.pre979 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc265.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre979, i64 0, i32 25
  %.pre980 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc265.phi.trans.insert, align 8, !tbaa !22
  %enc_flags266.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre980, i64 0, i32 12
  %.pre981 = load i32, i32* %enc_flags266.phi.trans.insert, align 8, !tbaa !24
  br label %if.end263

if.end263:                                        ; preds = %if.then255, %land.lhs.true245, %if.end239
  %61 = phi i32 [ %.pre981, %if.then255 ], [ %55, %land.lhs.true245 ], [ %55, %if.end239 ]
  %62 = phi %struct.ssl_method_st* [ %.pre979, %if.then255 ], [ %53, %land.lhs.true245 ], [ %53, %if.end239 ]
  %and267 = and i32 %61, 8
  %tobool268.not = icmp eq i32 %and267, 0
  br i1 %tobool268.not, label %land.lhs.true269, label %land.lhs.true279

land.lhs.true269:                                 ; preds = %if.end263
  %version271 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %62, i64 0, i32 0
  %63 = load i32, i32* %version271, align 8, !tbaa !26
  %cmp272 = icmp slt i32 %63, 772
  %cmp277.not = icmp eq i32 %63, 65536
  %or.cond910 = or i1 %cmp272, %cmp277.not
  br i1 %or.cond910, label %land.lhs.true279, label %if.end318

land.lhs.true279:                                 ; preds = %land.lhs.true269, %if.end263
  %64 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool281.not = icmp eq i32 %64, 0
  br i1 %tobool281.not, label %if.end318, label %if.then282

if.then282:                                       ; preds = %land.lhs.true279
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %65 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %cipher283 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %65, i64 0, i32 20
  %66 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher283, align 8, !tbaa !72
  %id284 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %66, i64 0, i32 3
  %67 = load i32, i32* %id284, align 8, !tbaa !171
  %68 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %call287945 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %68) #14
  %call288946 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call287945) #13
  %cmp289947 = icmp sgt i32 %call288946, 0
  br i1 %cmp289947, label %for.body291, label %cleanup315

for.cond286:                                      ; preds = %for.body291
  %69 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %call287 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %69) #14
  %call288 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call287) #13
  %cmp289 = icmp slt i32 %inc309, %call288
  br i1 %cmp289, label %for.body291, label %cleanup315, !llvm.loop !173

for.body291:                                      ; preds = %if.then282, %for.cond286
  %i.1948 = phi i32 [ %inc309, %for.cond286 ], [ 0, %if.then282 ]
  %70 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %call292 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %70) #14
  %call293 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call292, i32 noundef %i.1948) #13
  %id302 = getelementptr inbounds i8, i8* %call293, i64 24
  %71 = bitcast i8* %id302 to i32*
  %72 = load i32, i32* %71, align 8, !tbaa !171
  %cmp304 = icmp eq i32 %72, %67
  %inc309 = add nuw nsw i32 %i.1948, 1
  br i1 %cmp304, label %if.end318, label %for.cond286

cleanup315:                                       ; preds = %for.cond286, %if.then282
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1840, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 215, i8* noundef null) #13
  br label %err

if.end318:                                        ; preds = %for.body291, %land.lhs.true269, %land.lhs.true279
  %compressions_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 8
  %73 = load i64, i64* %compressions_len, align 8, !tbaa !174
  %cmp320949.not = icmp eq i64 %73, 0
  br i1 %cmp320949.not, label %if.then334, label %for.body322

for.cond319:                                      ; preds = %for.body322
  %exitcond.not = icmp eq i64 %inc329, %73
  br i1 %exitcond.not, label %if.then334, label %for.body322, !llvm.loop !175

for.body322:                                      ; preds = %if.end318, %for.cond319
  %loop.0950 = phi i64 [ %inc329, %for.cond319 ], [ 0, %if.end318 ]
  %arrayidx = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 9, i64 %loop.0950
  %74 = load i8, i8* %arrayidx, align 1, !tbaa !122
  %cmp324 = icmp eq i8 %74, 0
  %inc329 = add nuw i64 %loop.0950, 1
  br i1 %cmp324, label %if.end335, label %for.cond319

if.then334:                                       ; preds = %for.cond319, %if.end318
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1854, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 187, i8* noundef null) #13
  br label %err

if.end335:                                        ; preds = %for.body322
  %options336 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %75 = load i64, i64* %options336, align 8, !tbaa !62
  %and337 = and i64 %75, 64
  %tobool338.not = icmp eq i64 %and337, 0
  br i1 %tobool338.not, label %if.end340, label %if.then339

if.then339:                                       ; preds = %if.end335
  call fastcc void @ssl_check_for_safari(%struct.ssl_st* noundef nonnull %s, %struct.CLIENTHELLO_MSG* noundef nonnull %3) #14
  br label %if.end340

if.end340:                                        ; preds = %if.then339, %if.end335
  %76 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !144
  %call342 = call i32 @tls_parse_all_extensions(%struct.ssl_st* noundef nonnull %s, i32 noundef 128, %struct.raw_extension_st* noundef %76, %struct.x509_st* noundef null, i64 noundef 0, i32 noundef 1) #13
  %tobool343.not = icmp eq i32 %call342, 0
  br i1 %tobool343.not, label %err, label %if.end345

if.end345:                                        ; preds = %if.end340
  %arraydecay347 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %77 = load i32, i32* %dgrd, align 4, !tbaa !122
  %call348 = call i32 @ssl_fill_hello_random(%struct.ssl_st* noundef nonnull %s, i32 noundef 1, i8* noundef nonnull %arraydecay347, i64 noundef 32, i32 noundef %77) #13
  %cmp349 = icmp slt i32 %call348, 1
  br i1 %cmp349, label %cleanup353, label %cleanup.cont355

cleanup353:                                       ; preds = %if.end345
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1878, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

cleanup.cont355:                                  ; preds = %if.end345
  %78 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool357.not = icmp eq i32 %78, 0
  br i1 %tobool357.not, label %land.lhs.true358, label %if.end431

land.lhs.true358:                                 ; preds = %cleanup.cont355
  %version359 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %79 = load i32, i32* %version359, align 8, !tbaa !29
  %cmp360 = icmp sgt i32 %79, 768
  br i1 %cmp360, label %land.lhs.true362, label %if.end431

land.lhs.true362:                                 ; preds = %land.lhs.true358
  %80 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc364 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %80, i64 0, i32 25
  %81 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc364, align 8, !tbaa !22
  %enc_flags365 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %81, i64 0, i32 12
  %82 = load i32, i32* %enc_flags365, align 8, !tbaa !24
  %and366 = and i32 %82, 8
  %tobool367.not = icmp eq i32 %and366, 0
  br i1 %tobool367.not, label %land.lhs.true368, label %if.end431

land.lhs.true368:                                 ; preds = %land.lhs.true362
  %version370 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %80, i64 0, i32 0
  %83 = load i32, i32* %version370, align 8, !tbaa !26
  %cmp371 = icmp slt i32 %83, 772
  %cmp376.not = icmp eq i32 %83, 65536
  %or.cond911 = or i1 %cmp371, %cmp376.not
  br i1 %or.cond911, label %land.lhs.true384, label %if.end431

land.lhs.true384:                                 ; preds = %land.lhs.true368
  %session_secret_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 22
  %84 = load i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)** %session_secret_cb, align 8, !tbaa !176
  %tobool385.not = icmp eq i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* %84, null
  br i1 %tobool385.not, label %if.end431, label %if.then386

if.then386:                                       ; preds = %land.lhs.true384
  %85 = bitcast %struct.ssl_cipher_st** %pref_cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #15
  store %struct.ssl_cipher_st* null, %struct.ssl_cipher_st** %pref_cipher, align 8, !tbaa !80
  %86 = bitcast i32* %master_key_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %86) #15
  store i32 512, i32* %master_key_length, align 4, !tbaa !79
  %session389 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %87 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session389, align 8, !tbaa !31
  %arraydecay390 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %87, i64 0, i32 3, i64 0
  %88 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %session_secret_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 23
  %89 = load i8*, i8** %session_secret_cb_arg, align 8, !tbaa !177
  %call392 = call i32 %84(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay390, i32* noundef nonnull %master_key_length, %struct.stack_st_SSL_CIPHER* noundef %88, %struct.ssl_cipher_st** noundef nonnull %pref_cipher, i8* noundef %89) #13
  %tobool393 = icmp ne i32 %call392, 0
  %90 = load i32, i32* %master_key_length, align 4
  %cmp395 = icmp sgt i32 %90, 0
  %or.cond = select i1 %tobool393, i1 %cmp395, i1 false
  br i1 %or.cond, label %if.then397, label %cleanup427.thread

if.then397:                                       ; preds = %if.then386
  %conv398934 = zext i32 %90 to i64
  %91 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session389, align 8, !tbaa !31
  %master_key_length400 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %91, i64 0, i32 1
  store i64 %conv398934, i64* %master_key_length400, align 8, !tbaa !125
  store i32 1, i32* %hit, align 8, !tbaa !57
  %92 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %peer_ciphers = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 24
  store %struct.stack_st_SSL_CIPHER* %92, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !155
  %verify_result = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %91, i64 0, i32 13
  store i64 0, i64* %verify_result, align 8, !tbaa !148
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %93 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %pref_cipher, align 8, !tbaa !80
  %cmp403 = icmp eq %struct.ssl_cipher_st* %93, null
  br i1 %cmp403, label %if.end409, label %if.end413

if.end409:                                        ; preds = %if.then397
  %call407 = call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #13
  %call408 = call %struct.ssl_cipher_st* @ssl3_choose_cipher(%struct.ssl_st* noundef nonnull %s, %struct.stack_st_SSL_CIPHER* noundef %92, %struct.stack_st_SSL_CIPHER* noundef %call407) #13
  store %struct.ssl_cipher_st* %call408, %struct.ssl_cipher_st** %pref_cipher, align 8, !tbaa !80
  %cmp410 = icmp eq %struct.ssl_cipher_st* %call408, null
  br i1 %cmp410, label %cleanup427, label %if.end409.if.end413_crit_edge

if.end409.if.end413_crit_edge:                    ; preds = %if.end409
  %.pre982 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session389, align 8, !tbaa !31
  br label %if.end413

if.end413:                                        ; preds = %if.end409.if.end413_crit_edge, %if.then397
  %94 = phi %struct.ssl_session_st* [ %.pre982, %if.end409.if.end413_crit_edge ], [ %91, %if.then397 ]
  %95 = phi %struct.ssl_cipher_st* [ %call408, %if.end409.if.end413_crit_edge ], [ %93, %if.then397 ]
  %cipher415 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %94, i64 0, i32 20
  store %struct.ssl_cipher_st* %95, %struct.ssl_cipher_st** %cipher415, align 8, !tbaa !72
  %cipher_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 25
  %96 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !178
  %call416 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %96) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call416) #13
  %97 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !155
  %call418 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %97) #14
  %call419 = call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call418) #13
  %98 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list to %struct.stack_st**
  store %struct.stack_st* %call419, %struct.stack_st** %98, align 8, !tbaa !178
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 26
  %99 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !179
  %call421 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %99) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call421) #13
  %100 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers, align 8, !tbaa !155
  %call423 = call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %100) #14
  %call424 = call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call423) #13
  %101 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list_by_id to %struct.stack_st**
  store %struct.stack_st* %call424, %struct.stack_st** %101, align 8, !tbaa !179
  br label %cleanup427.thread

cleanup427.thread:                                ; preds = %if.end413, %if.then386
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %86) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #15
  br label %if.end431

cleanup427:                                       ; preds = %if.end409
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1913, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 193, i8* noundef null) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %86) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #15
  br label %err

if.end431:                                        ; preds = %cleanup427.thread, %land.lhs.true362, %land.lhs.true368, %land.lhs.true384, %land.lhs.true358, %cleanup.cont355
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  store %struct.ssl_comp_st* null, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !92
  %102 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc435 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %102, i64 0, i32 25
  %103 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc435, align 8, !tbaa !22
  %enc_flags436 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %103, i64 0, i32 12
  %104 = load i32, i32* %enc_flags436, align 8, !tbaa !24
  %and437 = and i32 %104, 8
  %tobool438.not = icmp eq i32 %and437, 0
  br i1 %tobool438.not, label %land.lhs.true439, label %if.else455

land.lhs.true439:                                 ; preds = %if.end431
  %version441 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %102, i64 0, i32 0
  %105 = load i32, i32* %version441, align 8, !tbaa !26
  %cmp442 = icmp slt i32 %105, 772
  %cmp447.not = icmp eq i32 %105, 65536
  %or.cond912 = or i1 %cmp442, %cmp447.not
  br i1 %or.cond912, label %if.else455, label %if.then449

if.then449:                                       ; preds = %land.lhs.true439
  %106 = load i64, i64* %compressions_len, align 8, !tbaa !174
  %cmp451.not = icmp eq i64 %106, 1
  br i1 %cmp451.not, label %if.end581, label %if.then453

if.then453:                                       ; preds = %if.then449
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1939, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 341, i8* noundef null) #13
  br label %err

if.else455:                                       ; preds = %land.lhs.true439, %if.end431
  %session456 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %107 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session456, align 8, !tbaa !31
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %107, i64 0, i32 19
  %108 = load i32, i32* %compress_meth, align 4, !tbaa !180
  %cmp457.not = icmp eq i32 %108, 0
  br i1 %cmp457.not, label %if.else522, label %if.then459

if.then459:                                       ; preds = %if.else455
  %call462 = call i32 @ssl_allow_compression(%struct.ssl_st* noundef nonnull %s) #13
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %if.then464, label %for.cond466.preheader

for.cond466.preheader:                            ; preds = %if.then459
  %109 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %comp_methods952 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %109, i64 0, i32 30
  %110 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods952, align 8, !tbaa !181
  %call468953 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %110) #14
  %call469954 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call468953) #13
  %cmp470955 = icmp sgt i32 %call469954, 0
  br i1 %cmp470955, label %for.body472, label %for.end487thread-pre-split

if.then464:                                       ; preds = %if.then459
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1952, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 340, i8* noundef null) #13
  br label %err

for.cond466:                                      ; preds = %for.body472
  %111 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %comp_methods = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %111, i64 0, i32 30
  %112 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods, align 8, !tbaa !181
  %call468 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %112) #14
  %call469 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call468) #13
  %cmp470 = icmp slt i32 %inc486, %call469
  br i1 %cmp470, label %for.body472, label %for.end487thread-pre-split.loopexit, !llvm.loop !182

for.body472:                                      ; preds = %for.cond466.preheader, %for.cond466
  %m.0956 = phi i32 [ %inc486, %for.cond466 ], [ 0, %for.cond466.preheader ]
  %113 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %comp_methods474 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %113, i64 0, i32 30
  %114 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods474, align 8, !tbaa !181
  %call475 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %114) #14
  %call476 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call475, i32 noundef %m.0956) #13
  %id477 = bitcast i8* %call476 to i32*
  %115 = load i32, i32* %id477, align 8, !tbaa !93
  %cmp478 = icmp eq i32 %108, %115
  %inc486 = add nuw nsw i32 %m.0956, 1
  br i1 %cmp478, label %if.then480, label %for.cond466

if.then480:                                       ; preds = %for.body472
  %116 = bitcast i8* %call476 to %struct.ssl_comp_st*
  %117 = bitcast %struct.ssl_comp_st** %new_compression to i8**
  store i8* %call476, i8** %117, align 8, !tbaa !92
  br label %for.end487

for.end487thread-pre-split.loopexit:              ; preds = %for.cond466
  %118 = bitcast i8* %call476 to %struct.ssl_comp_st*
  br label %for.end487thread-pre-split

for.end487thread-pre-split:                       ; preds = %for.end487thread-pre-split.loopexit, %for.cond466.preheader
  %comp.0.lcssa = phi %struct.ssl_comp_st* [ null, %for.cond466.preheader ], [ %118, %for.end487thread-pre-split.loopexit ]
  %.pr = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !92
  br label %for.end487

for.end487:                                       ; preds = %for.end487thread-pre-split, %if.then480
  %119 = phi %struct.ssl_comp_st* [ %.pr, %for.end487thread-pre-split ], [ %116, %if.then480 ]
  %comp.1 = phi %struct.ssl_comp_st* [ %comp.0.lcssa, %for.end487thread-pre-split ], [ %116, %if.then480 ]
  %cmp491 = icmp eq %struct.ssl_comp_st* %119, null
  br i1 %cmp491, label %if.then493, label %for.cond495.preheader

for.cond495.preheader:                            ; preds = %for.end487
  %120 = load i64, i64* %compressions_len, align 8, !tbaa !174
  %cmp498957.not = icmp eq i64 %120, 0
  br i1 %cmp498957.not, label %if.then515, label %for.body500

if.then493:                                       ; preds = %for.end487
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1965, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 341, i8* noundef null) #13
  br label %err

for.cond495:                                      ; preds = %for.body500
  %inc509 = add nuw nsw i64 %conv496959, 1
  %conv496 = and i64 %inc509, 4294967295
  %cmp498 = icmp ugt i64 %120, %conv496
  br i1 %cmp498, label %for.body500, label %if.then515, !llvm.loop !183

for.body500:                                      ; preds = %for.cond495.preheader, %for.cond495
  %conv496959 = phi i64 [ %conv496, %for.cond495 ], [ 0, %for.cond495.preheader ]
  %arrayidx502 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 9, i64 %conv496959
  %121 = load i8, i8* %arrayidx502, align 1, !tbaa !122
  %conv503 = zext i8 %121 to i32
  %cmp504 = icmp eq i32 %108, %conv503
  br i1 %cmp504, label %if.end581, label %for.cond495

if.then515:                                       ; preds = %for.cond495, %for.cond495.preheader
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1975, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 342, i8* noundef null) #13
  br label %err

if.else522:                                       ; preds = %if.else455
  %122 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool524.not = icmp eq i32 %122, 0
  br i1 %tobool524.not, label %if.else526, label %lor.lhs.false584

if.else526:                                       ; preds = %if.else522
  %call527 = call i32 @ssl_allow_compression(%struct.ssl_st* noundef nonnull %s) #13
  %tobool528.not = icmp eq i32 %call527, 0
  br i1 %tobool528.not, label %if.end581, label %land.lhs.true529

land.lhs.true529:                                 ; preds = %if.else526
  %123 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %comp_methods531 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %123, i64 0, i32 30
  %124 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods531, align 8, !tbaa !181
  %tobool532.not = icmp eq %struct.stack_st_SSL_COMP* %124, null
  br i1 %tobool532.not, label %if.end581, label %if.then533

if.then533:                                       ; preds = %land.lhs.true529
  %call537 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %124) #14
  %call538 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call537) #13
  %cmp540964 = icmp sgt i32 %call538, 0
  br i1 %cmp540964, label %for.body542, label %if.end581

for.body542:                                      ; preds = %if.then533, %for.inc568
  %cmp540966 = phi i1 [ %cmp540, %for.inc568 ], [ true, %if.then533 ]
  %m534.0965 = phi i32 [ %inc569, %for.inc568 ], [ 0, %if.then533 ]
  %125 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %comp_methods544 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %125, i64 0, i32 30
  %126 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** %comp_methods544, align 8, !tbaa !181
  %call545 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %126) #14
  %call546 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call545, i32 noundef %m534.0965) #13
  %id547 = bitcast i8* %call546 to i32*
  %127 = load i32, i32* %id547, align 8, !tbaa !93
  %128 = load i64, i64* %compressions_len, align 8, !tbaa !174
  %cmp551960.not = icmp eq i64 %128, 0
  br i1 %cmp551960.not, label %for.inc568, label %for.body553

for.cond548:                                      ; preds = %for.body553
  %inc563 = add nuw nsw i64 %conv549962, 1
  %conv549 = and i64 %inc563, 4294967295
  %cmp551 = icmp ugt i64 %128, %conv549
  br i1 %cmp551, label %for.body553, label %for.inc568, !llvm.loop !184

for.body553:                                      ; preds = %for.body542, %for.cond548
  %conv549962 = phi i64 [ %conv549, %for.cond548 ], [ 0, %for.body542 ]
  %arrayidx556 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 9, i64 %conv549962
  %129 = load i8, i8* %arrayidx556, align 1, !tbaa !122
  %conv557 = zext i8 %129 to i32
  %cmp558 = icmp eq i32 %127, %conv557
  br i1 %cmp558, label %for.end570, label %for.cond548

for.inc568:                                       ; preds = %for.cond548, %for.body542
  %inc569 = add nuw nsw i32 %m534.0965, 1
  %cmp540 = icmp slt i32 %inc569, %call538
  %exitcond972.not = icmp eq i32 %inc569, %call538
  br i1 %exitcond972.not, label %if.end581, label %for.body542, !llvm.loop !185

for.end570:                                       ; preds = %for.body553
  br i1 %cmp540966, label %if.then572, label %if.end581

if.then572:                                       ; preds = %for.end570
  %130 = bitcast i8* %call546 to %struct.ssl_comp_st*
  %131 = bitcast %struct.ssl_comp_st** %new_compression to i8**
  store i8* %call546, i8** %131, align 8, !tbaa !92
  br label %if.end581

if.end581:                                        ; preds = %for.body500, %for.inc568, %if.then533, %if.then572, %for.end570, %if.else526, %land.lhs.true529, %if.then449
  %comp.6.ph = phi %struct.ssl_comp_st* [ null, %for.end570 ], [ %130, %if.then572 ], [ null, %if.then449 ], [ null, %if.else526 ], [ null, %land.lhs.true529 ], [ null, %if.then533 ], [ null, %for.inc568 ], [ %comp.1, %for.body500 ]
  %.pr928 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool583.not = icmp eq i32 %.pr928, 0
  br i1 %tobool583.not, label %if.then600, label %if.end581.lor.lhs.false584_crit_edge

if.end581.lor.lhs.false584_crit_edge:             ; preds = %if.end581
  %.pre983 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc586.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre983, i64 0, i32 25
  %.pre984 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc586.phi.trans.insert, align 8, !tbaa !22
  %enc_flags587.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre984, i64 0, i32 12
  %.pre985 = load i32, i32* %enc_flags587.phi.trans.insert, align 8, !tbaa !24
  br label %lor.lhs.false584

lor.lhs.false584:                                 ; preds = %if.end581.lor.lhs.false584_crit_edge, %if.else522
  %132 = phi i32 [ %.pre985, %if.end581.lor.lhs.false584_crit_edge ], [ %104, %if.else522 ]
  %133 = phi %struct.ssl_method_st* [ %.pre983, %if.end581.lor.lhs.false584_crit_edge ], [ %102, %if.else522 ]
  %comp.6933 = phi %struct.ssl_comp_st* [ %comp.6.ph, %if.end581.lor.lhs.false584_crit_edge ], [ null, %if.else522 ]
  %and588 = and i32 %132, 8
  %tobool589.not = icmp eq i32 %and588, 0
  br i1 %tobool589.not, label %land.lhs.true590, label %if.end625

land.lhs.true590:                                 ; preds = %lor.lhs.false584
  %version592 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %133, i64 0, i32 0
  %134 = load i32, i32* %version592, align 8, !tbaa !26
  %cmp593 = icmp slt i32 %134, 772
  %cmp598.not = icmp eq i32 %134, 65536
  %or.cond913 = or i1 %cmp593, %cmp598.not
  br i1 %or.cond913, label %if.end625, label %if.then600

if.then600:                                       ; preds = %land.lhs.true590, %if.end581
  %comp.6932 = phi %struct.ssl_comp_st* [ %comp.6933, %land.lhs.true590 ], [ %comp.6.ph, %if.end581 ]
  %peer_ciphers601 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 24
  %135 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %peer_ciphers601, align 8, !tbaa !155
  %call602 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %135) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call602) #13
  %136 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  store %struct.stack_st_SSL_CIPHER* %136, %struct.stack_st_SSL_CIPHER** %peer_ciphers601, align 8, !tbaa !155
  %cmp604 = icmp eq %struct.stack_st_SSL_CIPHER* %136, null
  br i1 %cmp604, label %if.then606, label %if.end608

if.then606:                                       ; preds = %if.then600
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2022, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.tls_early_post_process_client_hello, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end608:                                        ; preds = %if.then600
  store %struct.stack_st_SSL_CIPHER* null, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %.pre986 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool610.not = icmp eq i32 %.pre986, 0
  br i1 %tobool610.not, label %if.then611, label %if.end625

if.then611:                                       ; preds = %if.end608
  %cmp612 = icmp eq %struct.ssl_comp_st* %comp.6932, null
  br i1 %cmp612, label %cond.end617, label %cond.false615

cond.false615:                                    ; preds = %if.then611
  %id616 = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %comp.6932, i64 0, i32 0
  %137 = load i32, i32* %id616, align 8, !tbaa !93
  br label %cond.end617

cond.end617:                                      ; preds = %if.then611, %cond.false615
  %cond618 = phi i32 [ %137, %cond.false615 ], [ 0, %if.then611 ]
  %session619 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %138 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session619, align 8, !tbaa !31
  %compress_meth620 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %138, i64 0, i32 19
  store i32 %cond618, i32* %compress_meth620, align 4, !tbaa !180
  %call621 = call i32 @tls1_set_server_sigalgs(%struct.ssl_st* noundef nonnull %s) #13
  %tobool622.not = icmp eq i32 %call621, 0
  br i1 %tobool622.not, label %err, label %if.end625

if.end625:                                        ; preds = %lor.lhs.false584, %land.lhs.true590, %cond.end617, %if.end608
  %139 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %call626 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %139) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call626) #13
  %140 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsvs, align 8, !tbaa !80
  %call627 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %140) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call627) #13
  %141 = bitcast %struct.raw_extension_st** %pre_proc_exts to i8**
  %142 = load i8*, i8** %141, align 8, !tbaa !144
  call void @CRYPTO_free(i8* noundef %142, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2042) #13
  %143 = bitcast %struct.CLIENTHELLO_MSG** %clienthello1 to i8**
  %144 = load i8*, i8** %143, align 8, !tbaa !143
  call void @CRYPTO_free(i8* noundef %144, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2043) #13
  store %struct.CLIENTHELLO_MSG* null, %struct.CLIENTHELLO_MSG** %clienthello1, align 8, !tbaa !143
  br label %cleanup636

err:                                              ; preds = %if.then464, %if.then515, %if.then493, %if.then200, %if.then183, %cleanup427, %cleanup353, %cleanup315, %if.else222, %cond.end617, %if.end340, %if.else232, %if.then217, %if.end205, %if.end122, %lor.lhs.false126, %if.then606, %if.then453, %if.then334, %if.then159, %if.then148, %if.then117, %if.then104, %if.then88, %if.then67, %if.end49, %if.then12, %sw.default
  %145 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %ciphers, align 8, !tbaa !80
  %call631 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %145) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call631) #13
  %146 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %scsvs, align 8, !tbaa !80
  %call632 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %146) #14
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call632) #13
  %pre_proc_exts633 = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %3, i64 0, i32 12
  %147 = bitcast %struct.raw_extension_st** %pre_proc_exts633 to i8**
  %148 = load i8*, i8** %147, align 8, !tbaa !144
  call void @CRYPTO_free(i8* noundef %148, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2049) #13
  %149 = bitcast %struct.CLIENTHELLO_MSG** %clienthello1 to i8**
  %150 = load i8*, i8** %149, align 8, !tbaa !143
  call void @CRYPTO_free(i8* noundef %150, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2050) #13
  store %struct.CLIENTHELLO_MSG* null, %struct.CLIENTHELLO_MSG** %clienthello1, align 8, !tbaa !143
  br label %cleanup636

cleanup636:                                       ; preds = %err, %if.end625, %sw.bb
  %retval.0 = phi i32 [ 0, %err ], [ -1, %sw.bb ], [ 1, %if.end625 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare %struct.ssl_cipher_st* @ssl3_choose_cipher(%struct.ssl_st* noundef, %struct.stack_st_SSL_CIPHER* noundef, %struct.stack_st_SSL_CIPHER* noundef) local_unnamed_addr #2

declare %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @tls_choose_sigalg(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_handle_status_request(%struct.ssl_st* noundef %s) unnamed_addr #1 {
entry:
  %status_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 7
  store i32 0, i32* %status_expected, align 4, !tbaa !59
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %0 = load i32, i32* %status_type, align 8, !tbaa !186
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %cmp2.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp2.not, label %return, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %status_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 6
  %2 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %status_cb, align 8, !tbaa !187
  %cmp6.not = icmp eq i32 (%struct.ssl_st*, i8*)* %2, null
  br i1 %cmp6.not, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 27
  %3 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cert, align 8, !tbaa !96
  %cmp7.not = icmp eq %struct.cert_pkey_st* %3, null
  br i1 %cmp7.not, label %return, label %if.then8

if.then8:                                         ; preds = %if.then
  %cert12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %4 = load %struct.cert_st*, %struct.cert_st** %cert12, align 8, !tbaa !66
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %4, i64 0, i32 0
  store %struct.cert_pkey_st* %3, %struct.cert_pkey_st** %key, align 8, !tbaa !188
  %status_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 60, i32 7
  %5 = load i8*, i8** %status_arg, align 8, !tbaa !189
  %call = tail call i32 %2(%struct.ssl_st* noundef nonnull %s, i8* noundef %5) #13
  switch i32 %call, label %cleanup [
    i32 3, label %sw.bb
    i32 0, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.then8
  store i32 0, i32* %status_expected, align 4, !tbaa !59
  br label %return

sw.bb20:                                          ; preds = %if.then8
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %6 = load i8*, i8** %resp, align 8, !tbaa !190
  %tobool.not = icmp eq i8* %6, null
  br i1 %tobool.not, label %return, label %if.then22

if.then22:                                        ; preds = %sw.bb20
  store i32 1, i32* %status_expected, align 4, !tbaa !59
  br label %return

cleanup:                                          ; preds = %if.then8
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2095, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls_handle_status_request, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 226, i8* noundef null) #13
  br label %return

return:                                           ; preds = %if.then, %sw.bb20, %if.then22, %sw.bb, %entry, %land.lhs.true, %land.lhs.true3, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %land.lhs.true3 ], [ 1, %land.lhs.true ], [ 1, %entry ], [ 1, %sw.bb ], [ 1, %if.then22 ], [ 1, %sw.bb20 ], [ 1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_check_srp_ext_ClientHello(%struct.ssl_st* noundef %s) unnamed_addr #1 {
entry:
  %al = alloca i32, align 4
  %0 = bitcast i32* %al to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 112, i32* %al, align 4, !tbaa !79
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 4
  %2 = load i32, i32* %algorithm_mkey, align 4, !tbaa !65
  %and = and i32 %2, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %TLS_ext_srp_username_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 1
  %3 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %TLS_ext_srp_username_callback, align 8, !tbaa !191
  %cmp.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %3, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %4 = load i8*, i8** %login, align 8, !tbaa !192
  %cmp2 = icmp eq i8* %4, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1258, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ssl_check_srp_ext_ClientHello, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 115, i32 noundef 223, i8* noundef null) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call = call i32 @ssl_srp_server_param_with_username_intern(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %al) #13
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %if.else
  %cmp6 = icmp eq i32 %call, 2
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1268, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ssl_check_srp_ext_ClientHello, i64 0, i64 0)) #13
  %5 = load i32, i32* %al, align 4, !tbaa !79
  %cmp8 = icmp eq i32 %5, 115
  %cond = select i1 %cmp8, i32 223, i32 226
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %5, i32 noundef %cond, i8* noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end, %if.else, %if.then7, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then7 ], [ 0, %if.else ], [ 1, %if.end ], [ 1, %land.lhs.true ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @tls_construct_extensions(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #2

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare i32 @create_synthetic_message_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ssl_get_auto_dh(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ssl_dh_to_pkey(%struct.dh_st* noundef) local_unnamed_addr #2

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ssl_generate_pkey(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare zeroext i16 @tls1_shared_group(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @ssl_generate_pkey_group(%struct.ssl_st* noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i64 @EVP_PKEY_get1_encoded_public_key(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #12

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #2

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #2

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @tls1_lookup_md(%struct.ssl_ctx_st* noundef, %struct.sigalg_lookup_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_length(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @construct_key_exchange_tbs(%struct.ssl_st* noundef, i8** noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_sub_reserve_bytes__(%struct.wpacket_st* noundef, i64 noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_sub_allocate_bytes__(%struct.wpacket_st* noundef, i64 noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tls13_restore_handshake_digest_for_pha(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @ssl3_get_req_cert_type(%struct.ssl_st* noundef, %struct.wpacket_st* noundef) local_unnamed_addr #2

declare i64 @tls12_get_psigalgs(%struct.ssl_st* noundef, i32 noundef, i16** noundef) local_unnamed_addr #2

declare i32 @WPACKET_set_flags(%struct.wpacket_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tls12_copy_sigalgs(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i16* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @construct_ca_names(%struct.ssl_st* noundef, %struct.stack_st_X509_NAME* noundef, %struct.wpacket_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_NAME* @get_ca_names(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_psk_preamble(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #1 {
entry:
  %psk = alloca [512 x i8], align 16
  %psk_identity = alloca %struct.PACKET, align 8
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %psk, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #15
  %1 = bitcast %struct.PACKET* %psk_identity to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %call = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %psk_identity) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2807, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %psk_identity) #14
  %cmp = icmp ugt i64 %call1, 256
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2811, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 146, i8* noundef null) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %psk_server_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 68
  %2 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !193
  %cmp4 = icmp eq i32 (%struct.ssl_st*, i8*, i8*, i32)* %2, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2815, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 225, i8* noundef null) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %psk_identity7 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 9
  %call8 = call fastcc i32 @PACKET_strndup(%struct.PACKET* noundef nonnull %psk_identity, i8** noundef nonnull %psk_identity7) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2820, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %4 = load i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)** %psk_server_callback, align 8, !tbaa !193
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %psk_identity14 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 9
  %6 = load i8*, i8** %psk_identity14, align 8, !tbaa !194
  %call15 = call i32 %4(%struct.ssl_st* noundef nonnull %s, i8* noundef %6, i8* noundef nonnull %0, i32 noundef 512) #13
  %conv = zext i32 %call15 to i64
  %cmp16 = icmp ugt i32 %call15, 512
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end11
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2828, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %cmp19 = icmp eq i32 %call15, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2834, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 115, i32 noundef 223, i8* noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %if.else
  %psk24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 24
  %7 = load i8*, i8** %psk24, align 8, !tbaa !150
  call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2838) #13
  %call26 = call i8* @CRYPTO_memdup(i8* noundef nonnull %0, i64 noundef %conv, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2839) #13
  store i8* %call26, i8** %psk24, align 8, !tbaa !150
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %conv) #13
  %8 = load i8*, i8** %psk24, align 8, !tbaa !150
  %cmp34 = icmp eq i8* %8, null
  %psklen39 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 25
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end23
  store i64 0, i64* %psklen39, align 8, !tbaa !151
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2844, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.tls_process_cke_psk_preamble, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end23
  store i64 %conv, i64* %psklen39, align 8, !tbaa !151
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then36, %if.then21, %if.then18, %if.then10, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.then5 ], [ 0, %if.then18 ], [ 0, %if.then21 ], [ 0, %if.then36 ], [ 1, %if.end40 ], [ 0, %if.then10 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare i32 @ssl_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_rsa(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #1 {
entry:
  %outlen = alloca i64, align 8
  %enc_premaster = alloca %struct.PACKET, align 8
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp31 = alloca %struct.ossl_param_st, align 8
  %tmp35 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = bitcast %struct.PACKET* %enc_premaster to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %2 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %2) #15
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !66
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 5, i64 0, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !109
  %cmp = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2870, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 168, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !29
  switch i32 %5, label %if.else [
    i32 768, label %if.then4
    i32 256, label %if.then4
  ]

if.then4:                                         ; preds = %if.end, %if.end
  %6 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !142
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef %pkt, %struct.PACKET* noundef nonnull %enc_premaster) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.else
  %call6 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp7.not = icmp eq i64 %call6, 0
  br i1 %cmp7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5, %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2880, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false5, %if.then4
  store i64 48, i64* %outlen, align 8, !tbaa !91
  %call11 = tail call i8* @CRYPTO_malloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2886) #13
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2888, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %ctx15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx15, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 85
  %9 = load i8*, i8** %propq, align 8, !tbaa !114
  %call17 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %8, %struct.evp_pkey_st* noundef nonnull %4, i8* noundef %9) #13
  %cmp18 = icmp eq %struct.evp_pkey_ctx_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2894, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end20:                                         ; preds = %if.end14
  %call21 = tail call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call17) #13
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end20
  %call24 = tail call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call17, i32 noundef 7) #13
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false23, %if.end20
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2911, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end27:                                         ; preds = %lor.lhs.false23
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %client_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 84
  %params95 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params95, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %client_version) #13
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %10 = load i64, i64* %options, align 8, !tbaa !62
  %and = and i64 %10, 8388608
  %cmp28.not = icmp eq i64 %and, 0
  br i1 %cmp28.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end27
  %incdec.ptr30 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %11 = bitcast %struct.ossl_param_st* %tmp31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #15
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp31, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32* noundef nonnull %version) #13
  %12 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !195
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #15
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr30, %if.then29 ], [ %incdec.ptr, %if.end27 ]
  %13 = bitcast %struct.ossl_param_st* %tmp35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #15
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp35) #13
  %14 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %14, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !195
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #15
  %call37 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %call17, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then44, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end33
  %call40 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %enc_premaster) #14
  %call41 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %enc_premaster) #14
  %call42 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call17, i8* noundef nonnull %call11, i64* noundef nonnull %outlen, i8* noundef %call40, i64 noundef %call41) #13
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false39, %if.end33
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2927, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end45:                                         ; preds = %lor.lhs.false39
  %15 = load i64, i64* %outlen, align 8, !tbaa !91
  %cmp46.not = icmp eq i64 %15, 48
  br i1 %cmp46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end45
  call void @OPENSSL_cleanse(i8* noundef nonnull %call11, i64 noundef 48) #13
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2937, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_rsa, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 51, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end48:                                         ; preds = %if.end45
  %call49 = call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call11, i64 noundef 48, i32 noundef 0) #13
  %tobool50.not = icmp ne i32 %call49, 0
  %spec.select = zext i1 %tobool50.not to i32
  br label %err

err:                                              ; preds = %if.end48, %if.then47, %if.then44, %if.then26, %if.then19
  %ret.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.then26 ], [ 0, %if.then44 ], [ 0, %if.then47 ], [ %spec.select, %if.end48 ]
  call void @CRYPTO_free(i8* noundef nonnull %call11, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2950) #13
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call17) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then13, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then13 ], [ %ret.0, %err ], [ 0, %if.then8 ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_dhe(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #1 {
entry:
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %i) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %2 = load i32, i32* %i, align 4, !tbaa !79
  %conv = zext i32 %2 to i64
  %cmp.not = icmp eq i64 %call1, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2964, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_dhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 148, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %cmp3 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2969, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_dhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 171, i8* noundef null) #13
  br label %err

if.end6:                                          ; preds = %if.end
  %cmp8 = icmp eq i64 %call1, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2974, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_dhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 171, i8* noundef null) #13
  br label %err

if.end11:                                         ; preds = %if.end6
  %call13 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %call1) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2979, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_dhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end16:                                         ; preds = %if.end11
  %call17 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #13
  %cmp18 = icmp eq %struct.evp_pkey_st* %call17, null
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end16
  %call21 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call17, %struct.evp_pkey_st* noundef nonnull %3) #13
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false20, %if.end16
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2984, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_dhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 296, i8* noundef null) #13
  br label %err

if.end25:                                         ; preds = %lor.lhs.false20
  %4 = load i8*, i8** %data, align 8, !tbaa !80
  %call27 = tail call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call17, i8* noundef %4, i64 noundef %call1) #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2989, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_dhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end30:                                         ; preds = %if.end25
  %call31 = tail call i32 @ssl_derive(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %3, %struct.evp_pkey_st* noundef nonnull %call17, i32 noundef 1) #13
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  br label %err

err:                                              ; preds = %if.end30, %if.end35, %if.then29, %if.then24, %if.then15, %if.then10, %if.then5, %if.then
  %ckey.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then5 ], [ null, %if.then10 ], [ %call17, %if.then24 ], [ %call17, %if.end30 ], [ %call17, %if.end35 ], [ %call17, %if.then29 ], [ null, %if.then15 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then10 ], [ 0, %if.then24 ], [ 0, %if.end30 ], [ 1, %if.end35 ], [ 0, %if.then29 ], [ 0, %if.then15 ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %ckey.0) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_ecdhe(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #1 {
entry:
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %pkey = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 7
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3014, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_cke_ecdhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 311, i8* noundef null) #13
  br label %err

if.else:                                          ; preds = %entry
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #15
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %call1 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef %pkt, i32* noundef nonnull %i) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, i32* %i, align 4, !tbaa !79
  %conv = zext i32 %3 to i64
  %call2 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then8, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp6.not = icmp eq i64 %call5, 0
  br i1 %cmp6.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3028, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_cke_ecdhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 159, i8* noundef null) #13
  br label %cleanup.thread

if.end:                                           ; preds = %lor.lhs.false4
  %cmp9 = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3032, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_cke_ecdhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 311, i8* noundef null) #13
  br label %cleanup.thread

if.end12:                                         ; preds = %if.end
  %call13 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #13
  %cmp14 = icmp eq %struct.evp_pkey_st* %call13, null
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end12
  %call17 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call13, %struct.evp_pkey_st* noundef nonnull %0) #13
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false16, %if.end12
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3038, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_cke_ecdhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 296, i8* noundef null) #13
  br label %cleanup.thread

if.end21:                                         ; preds = %lor.lhs.false16
  %4 = load i8*, i8** %data, align 8, !tbaa !80
  %call23 = tail call i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef nonnull %call13, i8* noundef %4, i64 noundef %conv) #13
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3043, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls_process_cke_ecdhe, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524304, i8* noundef null) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then8, %if.then11, %if.then20, %if.then26
  %ckey.0.ph = phi %struct.evp_pkey_st* [ %call13, %if.then26 ], [ %call13, %if.then20 ], [ null, %if.then11 ], [ null, %if.then8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  br label %err

if.end29:                                         ; preds = %if.end21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #15
  %call30 = tail call i32 @ssl_derive(%struct.ssl_st* noundef nonnull %s, %struct.evp_pkey_st* noundef nonnull %0, %struct.evp_pkey_st* noundef nonnull %call13, i32 noundef 1) #13
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %err, label %if.end34

if.end34:                                         ; preds = %if.end29
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #13
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !101
  br label %err

err:                                              ; preds = %cleanup.thread, %if.end29, %if.end34, %if.then
  %ckey.1 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %call13, %if.end29 ], [ %call13, %if.end34 ], [ %ckey.0.ph, %cleanup.thread ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.end29 ], [ 1, %if.end34 ], [ 0, %cleanup.thread ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %ckey.1) #13
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_srp(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #1 {
entry:
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %i) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %i, align 4, !tbaa !79
  %conv = zext i32 %2 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef %pkt, i8** noundef nonnull %data, i64 noundef %conv) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3070, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_srp, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 50, i32 noundef 347, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %data, align 8, !tbaa !80
  %call3 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %3, i32 noundef %2, %struct.bignum_st* noundef null) #13
  %A = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  store %struct.bignum_st* %call3, %struct.bignum_st** %A, align 8, !tbaa !196
  %cmp = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3074, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_srp, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524291, i8* noundef null) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %4 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !103
  %call10 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %call3, %struct.bignum_st* noundef %4) #13
  %cmp11 = icmp sgt i32 %call10, -1
  br i1 %cmp11, label %if.then18, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end6
  %5 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !196
  %call16 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %5) #13
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false13, %if.end6
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3078, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_srp, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 371, i8* noundef null) #13
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false13
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %srp_username = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %6, i64 0, i32 27
  %7 = load i8*, i8** %srp_username, align 8, !tbaa !197
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3081) #13
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %8 = load i8*, i8** %login, align 8, !tbaa !192
  %call21 = tail call i8* @CRYPTO_strdup(i8* noundef %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3082) #13
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %srp_username23 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 27
  store i8* %call21, i8** %srp_username23, align 8, !tbaa !197
  %cmp26 = icmp eq i8* %call21, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end19
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3084, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tls_process_cke_srp, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end19
  %call30 = tail call i32 @srp_generate_server_master_secret(%struct.ssl_st* noundef nonnull %s) #13
  %tobool31.not = icmp ne i32 %call30, 0
  %. = zext i1 %tobool31.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then18, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then18 ], [ 0, %if.then28 ], [ 0, %if.then ], [ %., %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_gost(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef %pkt) unnamed_addr #1 {
entry:
  %premaster_secret = alloca [32 x i8], align 16
  %outlen = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %premaster_secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15
  %1 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store i64 32, i64* %outlen, align 8, !tbaa !91
  %2 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %3 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !44
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %3, i64 0, i32 5
  %4 = load i32, i32* %algorithm_auth, align 8, !tbaa !45
  %conv = zext i32 %4 to i64
  %and = and i64 %conv, 128
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %5 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !66
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 5, i64 6, i32 1
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !109
  %cmp = icmp eq %struct.evp_pkey_st* %6, null
  br i1 %cmp, label %if.end, label %if.end23

if.end:                                           ; preds = %if.then
  %privatekey6 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 5, i64 5, i32 1
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey6, align 8, !tbaa !109
  %cmp7 = icmp eq %struct.evp_pkey_st* %7, null
  br i1 %cmp7, label %if.end23.sink.split, label %if.end23

if.else:                                          ; preds = %entry
  %and15 = and i64 %conv, 32
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.else
  %cert18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %8 = load %struct.cert_st*, %struct.cert_st** %cert18, align 8, !tbaa !66
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.end, %if.then17
  %.sink = phi %struct.cert_st* [ %8, %if.then17 ], [ %5, %if.end ]
  %privatekey21 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %.sink, i64 0, i32 5, i64 4, i32 1
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey21, align 8, !tbaa !109
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then, %if.else, %if.end
  %pk.1 = phi %struct.evp_pkey_st* [ %7, %if.end ], [ null, %if.else ], [ %6, %if.then ], [ %9, %if.end23.sink.split ]
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %10, i64 0, i32 0
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %10, i64 0, i32 85
  %12 = load i8*, i8** %propq, align 8, !tbaa !114
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %11, %struct.evp_pkey_st* noundef %pk.1, i8* noundef %12) #13
  %cmp25 = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3133, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_cke_gost, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = tail call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #13
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3137, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_cke_gost, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %13 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %13, i64 0, i32 11
  %14 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !32
  %call34 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %14) #13
  %tobool35.not = icmp eq %struct.evp_pkey_st* %call34, null
  br i1 %tobool35.not, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %call34) #13
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then36
  tail call void @ERR_clear_error() #13
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.then40, %if.end33
  %call43 = tail call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #14
  store i8* %call43, i8** %ptr, align 8, !tbaa !80
  %call44 = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %call45 = call %struct.GOST_KX_MESSAGE* @d2i_GOST_KX_MESSAGE(%struct.GOST_KX_MESSAGE** noundef null, i8** noundef nonnull %ptr, i64 noundef %call44) #14
  %cmp46 = icmp eq %struct.GOST_KX_MESSAGE* %call45, null
  br i1 %cmp46, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %kxBlob = getelementptr inbounds %struct.GOST_KX_MESSAGE, %struct.GOST_KX_MESSAGE* %call45, i64 0, i32 0
  %15 = load %struct.asn1_type_st*, %struct.asn1_type_st** %kxBlob, align 8, !tbaa !198
  %cmp48 = icmp eq %struct.asn1_type_st* %15, null
  br i1 %cmp48, label %if.then55, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false
  %call52 = call i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef nonnull %15) #13
  %cmp53.not = icmp eq i32 %call52, 16
  br i1 %cmp53.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false50, %lor.lhs.false, %if.end42
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3159, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_cke_gost, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end56:                                         ; preds = %lor.lhs.false50
  %16 = load i8*, i8** %ptr, align 8, !tbaa !80
  %call57 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #14
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call57 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call58 = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef %pkt, i64 noundef %sub.ptr.sub) #14
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3164, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_cke_gost, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end61:                                         ; preds = %if.end56
  %call62 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp63.not = icmp eq i64 %call62, 0
  br i1 %cmp63.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end61
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3169, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_cke_gost, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end66:                                         ; preds = %if.end61
  %17 = load %struct.asn1_type_st*, %struct.asn1_type_st** %kxBlob, align 8, !tbaa !198
  %value = getelementptr inbounds %struct.asn1_type_st, %struct.asn1_type_st* %17, i64 0, i32 1
  %sequence = bitcast %union.anon* %value to %struct.asn1_string_st**
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %sequence, align 8, !tbaa !122
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 0
  %19 = load i32, i32* %length, align 8, !tbaa !200
  %conv68 = sext i32 %19 to i64
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %18, i64 0, i32 2
  %20 = load i8*, i8** %data, align 8, !tbaa !202
  %call72 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen, i8* noundef %20, i64 noundef %conv68) #13
  %cmp73 = icmp slt i32 %call72, 1
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end66
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3178, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls_process_cke_gost, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end76:                                         ; preds = %if.end66
  %call78 = call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %0, i64 noundef 32, i32 noundef 0) #13
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end81

if.end81:                                         ; preds = %if.end76
  %call82 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %call, i32 noundef -1, i32 noundef -1, i32 noundef 2, i32 noundef 2, i8* noundef null) #13
  %cmp83 = icmp sgt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %err

if.then85:                                        ; preds = %if.end81
  %no_cert_verify = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 11
  store i32 1, i32* %no_cert_verify, align 4, !tbaa !157
  br label %err

err:                                              ; preds = %if.end81, %if.then85, %if.end76, %if.then75, %if.then65, %if.then60, %if.then55
  %ret.0 = phi i32 [ 0, %if.then55 ], [ 0, %if.then65 ], [ 0, %if.then75 ], [ 0, %if.end76 ], [ 0, %if.then60 ], [ 1, %if.then85 ], [ 1, %if.end81 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call) #13
  call void @GOST_KX_MESSAGE_free(%struct.GOST_KX_MESSAGE* noundef %call45) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then32, %if.then27
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 0, %if.then32 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_process_cke_gost18(%struct.ssl_st* noundef %s, %struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #1 {
entry:
  %rnd_dgst = alloca [32 x i8], align 16
  %premaster_secret = alloca [32 x i8], align 16
  %outlen = alloca i64, align 8
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %rnd_dgst, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %premaster_secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #15
  %2 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  store i64 32, i64* %outlen, align 8, !tbaa !91
  %call = tail call i32 @ossl_gost18_cke_cipher_nid(%struct.ssl_st* noundef %s) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3217, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @ossl_gost_ukm(%struct.ssl_st* noundef %s, i8* noundef nonnull %0) #13
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3222, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end4:                                          ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !66
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 5, i64 6, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !109
  %cmp5.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %cmp5.not, label %cond.end, label %if.end16

cond.end:                                         ; preds = %if.end4
  %privatekey13 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 5, i64 5, i32 1
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13, align 8, !tbaa !109
  %cmp14 = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cond.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3231, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 236, i8* noundef null) #13
  br label %err

if.end16:                                         ; preds = %if.end4, %cond.end
  %cond85 = phi %struct.evp_pkey_st* [ %5, %cond.end ], [ %4, %if.end4 ]
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 0
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 85
  %8 = load i8*, i8** %propq, align 8, !tbaa !114
  %call18 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %7, %struct.evp_pkey_st* noundef nonnull %cond85, i8* noundef %8) #13
  %cmp19 = icmp eq %struct.evp_pkey_ctx_st* %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3237, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end21:                                         ; preds = %if.end16
  %call22 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call18) #13
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3241, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end25:                                         ; preds = %if.end21
  %call27 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %call18, i32 noundef -1, i32 noundef 1024, i32 noundef 8, i32 noundef 32, i8* noundef nonnull %0) #13
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3248, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #13
  br label %err

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef nonnull %call18, i32 noundef -1, i32 noundef 1024, i32 noundef 12, i32 noundef %call, i8* noundef null) #13
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3254, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 274, i8* noundef null) #13
  br label %err

if.end34:                                         ; preds = %if.end30
  %call35 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %call36 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef %pkt) #14
  %call38 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call18, i8* noundef nonnull %1, i64* noundef nonnull %outlen, i8* noundef %call36, i64 noundef %call35) #13
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end34
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3261, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls_process_cke_gost18, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 147, i8* noundef null) #13
  br label %err

if.end41:                                         ; preds = %if.end34
  %call43 = call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %1, i64 noundef 32, i32 noundef 0) #13
  %tobool.not = icmp ne i32 %call43, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %err

err:                                              ; preds = %if.end41, %if.then40, %if.then33, %if.then29, %if.then24, %if.then20, %if.then15, %if.then3
  %pkey_ctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then3 ], [ null, %if.then15 ], [ null, %if.then20 ], [ %call18, %if.then24 ], [ %call18, %if.then29 ], [ %call18, %if.then33 ], [ %call18, %if.then40 ], [ %call18, %if.end41 ]
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then15 ], [ 0, %if.then20 ], [ 0, %if.then24 ], [ 0, %if.then29 ], [ 0, %if.then33 ], [ 0, %if.then40 ], [ %spec.select, %if.end41 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pkey_ctx.0) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15
  ret i32 %retval.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_equal(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %ptr, i64 noundef %num) unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp.not = icmp eq i64 %call, %num
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  %call1 = tail call i32 @CRYPTO_memcmp(i8* noundef %0, i8* noundef %ptr, i64 noundef %num) #13
  %cmp2 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_3(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #10 {
entry:
  %length = alloca i64, align 8
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !142
  %call = call fastcc i32 @PACKET_get_net_3(%struct.PACKET* noundef nonnull %tmp, i64* noundef nonnull %length) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %length, align 8, !tbaa !91
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %4) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !142
  %5 = load i8*, i8** %data, align 8, !tbaa !80
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !158
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %4, i64* %remaining, align 8, !tbaa !159
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_3(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_3(%struct.PACKET* noundef %pkt, i64* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 3) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #4 {
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

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @tls_parse_all_extensions(%struct.ssl_st* noundef, i32 noundef, %struct.raw_extension_st* noundef, %struct.x509_st* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ssl_verify_cert_chain(%struct.ssl_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare i32 @ssl_x509err2alert(i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) #2

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare i32 @ssl_handshake_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare i64 @ssl3_output_cert_chain(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, %struct.cert_pkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ssl_generate_session_id(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare i32 @tls13_hkdf_expand(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #9

declare void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @construct_stateful_ticket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %age_add, i8* noundef %tick_nonce) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @create_ticket_prequel(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %age_add, i8* noundef %tick_nonce) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 5, i64 0
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 4
  %1 = load i64, i64* %session_id_length, align 8, !tbaa !90
  %call2 = tail call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %arraydecay, i64 noundef %1) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %return

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3851, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.construct_stateful_ticket, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %entry ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @construct_stateless_ticket(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %age_add, i8* noundef %tick_nonce) unnamed_addr #1 {
entry:
  %p = alloca i8*, align 8
  %encdata1 = alloca i8*, align 8
  %encdata2 = alloca i8*, align 8
  %macdata1 = alloca i8*, align 8
  %macdata2 = alloca i8*, align 8
  %const_p = alloca i8*, align 8
  %len = alloca i32, align 4
  %lenfinal = alloca i32, align 4
  %hlen = alloca i64, align 8
  %iv = alloca [16 x i8], align 16
  %key_name = alloca [16 x i8], align 16
  %macoffset = alloca i64, align 8
  %macendoffset = alloca i64, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  %1 = bitcast i8** %encdata1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  %2 = bitcast i8** %encdata2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #15
  %3 = bitcast i8** %macdata1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #15
  %4 = bitcast i8** %macdata2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #15
  %5 = bitcast i8** %const_p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15
  %6 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15
  %7 = bitcast i32* %lenfinal to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15
  %8 = bitcast i64* %hlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !121
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #15
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %key_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #15
  %12 = bitcast i64* %macoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #15
  %13 = bitcast i64* %macendoffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #15
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %14 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %call = tail call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef %14, i8** noundef null) #13
  %cmp = icmp eq i32 %call, 0
  %cmp1 = icmp sgt i32 %call, 65280
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3678, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3681) #13
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3683, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #13
  %call8 = tail call %struct.ssl_hmac_st* @ssl_hmac_new(%struct.ssl_ctx_st* noundef %9) #13
  %cmp9 = icmp eq %struct.evp_cipher_ctx_st* %call7, null
  %cmp12 = icmp eq %struct.ssl_hmac_st* %call8, null
  %or.cond221 = select i1 %cmp9, i1 true, i1 %cmp12
  br i1 %or.cond221, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end6
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3690, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end15:                                         ; preds = %if.end6
  store i8* %call2, i8** %p, align 8, !tbaa !80
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %call17 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef %15, i8** noundef nonnull %p) #13
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3696, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end19:                                         ; preds = %if.end15
  store i8* %call2, i8** %const_p, align 8, !tbaa !80
  %call21 = call %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef null, i8** noundef nonnull %const_p, i64 noundef %conv) #13
  %cmp22 = icmp eq %struct.ssl_session_st* %call21, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3706, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end25:                                         ; preds = %if.end19
  %call26 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef nonnull %call21, i8** noundef null) #13
  %cmp27 = icmp eq i32 %call26, 0
  %cmp30 = icmp sgt i32 %call26, %call
  %or.cond322 = select i1 %cmp27, i1 true, i1 %cmp30
  br i1 %or.cond322, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3713, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call21) #13
  br label %err

if.end33:                                         ; preds = %if.end25
  store i8* %call2, i8** %p, align 8, !tbaa !80
  %call34 = call i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef nonnull %call21, i8** noundef nonnull %p) #13
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3719, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call21) #13
  br label %err

if.end37:                                         ; preds = %if.end33
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call21) #13
  %ticket_key_evp_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 60, i32 5
  %16 = load i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)** %ticket_key_evp_cb, align 8, !tbaa !203
  %cmp38.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* %16, null
  br i1 %cmp38.not, label %lor.lhs.false40, label %if.then49

lor.lhs.false40:                                  ; preds = %if.end37
  %ticket_key_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 60, i32 4
  %17 = load i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)** %ticket_key_cb, align 8, !tbaa !204
  %cmp42.not = icmp eq i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)* %17, null
  br i1 %cmp42.not, label %if.else84, label %if.then59

if.then49:                                        ; preds = %if.end37
  %call53 = call %struct.evp_mac_ctx_st* @ssl_hmac_get0_EVP_MAC_CTX(%struct.ssl_hmac_st* noundef nonnull %call8) #13
  %call54 = call i32 %16(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %11, i8* noundef nonnull %10, %struct.evp_cipher_ctx_st* noundef nonnull %call7, %struct.evp_mac_ctx_st* noundef %call53, i32 noundef 1) #13
  br label %if.end67

if.then59:                                        ; preds = %lor.lhs.false40
  %call64 = call %struct.hmac_ctx_st* @ssl_hmac_get0_HMAC_CTX(%struct.ssl_hmac_st* noundef nonnull %call8) #13
  %call65 = call i32 %17(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %11, i8* noundef nonnull %10, %struct.evp_cipher_ctx_st* noundef nonnull %call7, %struct.hmac_ctx_st* noundef %call64, i32 noundef 1) #13
  br label %if.end67

if.end67:                                         ; preds = %if.then59, %if.then49
  %ret.0 = phi i32 [ %call54, %if.then49 ], [ %call65, %if.then59 ]
  %cmp68 = icmp eq i32 %ret.0, 0
  br i1 %cmp68, label %if.then70, label %if.end78

if.then70:                                        ; preds = %if.end67
  %call71 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 4) #13
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then76, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.then70
  %call74 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 0, i64 noundef 2) #13
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %cleanup.thread328

if.then76:                                        ; preds = %lor.lhs.false73, %if.then70
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3753, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

cleanup.thread328:                                ; preds = %lor.lhs.false73
  call void @CRYPTO_free(i8* noundef nonnull %call2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3756) #13
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef nonnull %call7) #13
  call void @ssl_hmac_free(%struct.ssl_hmac_st* noundef nonnull %call8) #13
  br label %cleanup199

if.end78:                                         ; preds = %if.end67
  %cmp79 = icmp slt i32 %ret.0, 0
  br i1 %cmp79, label %if.then81, label %cleanup

if.then81:                                        ; preds = %if.end78
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3762, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 234, i8* noundef null) #13
  br label %err

cleanup:                                          ; preds = %if.end78
  %call83 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %call7) #13
  br label %if.end124

if.else84:                                        ; preds = %lor.lhs.false40
  %ctx85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx85, align 8, !tbaa !81
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i64 0, i32 0
  %19 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !113
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %18, i64 0, i32 85
  %20 = load i8*, i8** %propq, align 8, !tbaa !114
  %call87 = call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %19, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* noundef %20) #13
  %cmp88 = icmp eq %struct.evp_cipher_st* %call87, null
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.else84
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80) #13
  br label %err

if.end91:                                         ; preds = %if.else84
  %call92 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %call87) #13
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then115, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.end91
  %21 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx85, align 8, !tbaa !81
  %libctx97 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %21, i64 0, i32 0
  %22 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx97, align 8, !tbaa !113
  %conv99334 = zext i32 %call92 to i64
  %call100 = call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %22, i8* noundef nonnull %10, i64 noundef %conv99334, i32 noundef 0) #13
  %cmp101 = icmp slt i32 %call100, 1
  br i1 %cmp101, label %if.then115, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %lor.lhs.false95
  %secure = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 60, i32 3
  %23 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure, align 8, !tbaa !205
  %arraydecay105 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %23, i64 0, i32 1, i64 0
  %call107 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call7, %struct.evp_cipher_st* noundef nonnull %call87, %struct.engine_st* noundef null, i8* noundef nonnull %arraydecay105, i8* noundef nonnull %10) #13
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then115, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false103
  %24 = load %struct.ssl_ctx_ext_secure_st*, %struct.ssl_ctx_ext_secure_st** %secure, align 8, !tbaa !205
  %arraydecay112 = getelementptr inbounds %struct.ssl_ctx_ext_secure_st, %struct.ssl_ctx_ext_secure_st* %24, i64 0, i32 0, i64 0
  %call113 = call i32 @ssl_hmac_init(%struct.ssl_hmac_st* noundef nonnull %call8, i8* noundef %arraydecay112, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #13
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %cleanup121

if.then115:                                       ; preds = %lor.lhs.false109, %lor.lhs.false103, %lor.lhs.false95, %if.end91
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call87) #13
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3785, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

cleanup121:                                       ; preds = %lor.lhs.false109
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef nonnull %call87) #13
  %arraydecay119 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %9, i64 0, i32 60, i32 2, i64 0
  %call120 = call i8* @memcpy(i8* noundef nonnull %11, i8* noundef nonnull %arraydecay119, i64 noundef 16) #13
  br label %if.end124

if.end124:                                        ; preds = %cleanup121, %cleanup
  %iv_len.2 = phi i32 [ %call83, %cleanup ], [ %call92, %cleanup121 ]
  %call125 = call fastcc i32 @create_ticket_prequel(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef %pkt, i32 noundef %age_add, i8* noundef %tick_nonce) #14
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %if.end128

if.end128:                                        ; preds = %if.end124
  %call129 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %macoffset) #13
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then193, label %lor.lhs.false131

lor.lhs.false131:                                 ; preds = %if.end128
  %call133 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %11, i64 noundef 16) #13
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then193, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false131
  %conv137 = sext i32 %iv_len.2 to i64
  %call138 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef nonnull %10, i64 noundef %conv137) #13
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then193, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false135
  %add = add nsw i32 %call26, 32
  %conv141 = sext i32 %add to i64
  %call142 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv141, i8** noundef nonnull %encdata1) #13
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then193, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false140
  %25 = load i8*, i8** %encdata1, align 8, !tbaa !80
  %call145 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call7, i8* noundef %25, i32* noundef nonnull %len, i8* noundef nonnull %call2, i32 noundef %call26) #13
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then193, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false144
  %26 = load i32, i32* %len, align 4, !tbaa !79
  %conv148 = sext i32 %26 to i64
  %call149 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv148, i8** noundef nonnull %encdata2) #13
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then193, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false147
  %27 = load i8*, i8** %encdata1, align 8, !tbaa !80
  %28 = load i8*, i8** %encdata2, align 8, !tbaa !80
  %cmp152.not = icmp eq i8* %27, %28
  br i1 %cmp152.not, label %lor.lhs.false154, label %if.then193

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %29 = load i32, i32* %len, align 4, !tbaa !79
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %call155 = call i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef nonnull %call7, i8* noundef %add.ptr, i32* noundef nonnull %lenfinal) #13
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then193, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %lor.lhs.false154
  %30 = load i32, i32* %lenfinal, align 4, !tbaa !79
  %conv158 = sext i32 %30 to i64
  %call159 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %conv158, i8** noundef nonnull %encdata2) #13
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then193, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %lor.lhs.false157
  %31 = load i8*, i8** %encdata1, align 8, !tbaa !80
  %32 = load i32, i32* %len, align 4, !tbaa !79
  %idx.ext162 = sext i32 %32 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %31, i64 %idx.ext162
  %33 = load i8*, i8** %encdata2, align 8, !tbaa !80
  %cmp164.not = icmp eq i8* %add.ptr163, %33
  br i1 %cmp164.not, label %lor.lhs.false166, label %if.then193

lor.lhs.false166:                                 ; preds = %lor.lhs.false161
  %34 = load i32, i32* %lenfinal, align 4, !tbaa !79
  %add167 = add nsw i32 %34, %32
  %cmp169 = icmp sgt i32 %add167, %add
  br i1 %cmp169, label %if.then193, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false166
  %call172 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %macendoffset) #13
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then193, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false171
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %35 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !116
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %35, i64 0, i32 1
  %36 = load i8*, i8** %data, align 8, !tbaa !117
  %37 = load i64, i64* %macoffset, align 8, !tbaa !91
  %add.ptr175 = getelementptr inbounds i8, i8* %36, i64 %37
  %38 = load i64, i64* %macendoffset, align 8, !tbaa !91
  %sub = sub i64 %38, %37
  %call176 = call i32 @ssl_hmac_update(%struct.ssl_hmac_st* noundef nonnull %call8, i8* noundef %add.ptr175, i64 noundef %sub) #13
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then193, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false174
  %call179 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef 64, i8** noundef nonnull %macdata1) #13
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then193, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false178
  %39 = load i8*, i8** %macdata1, align 8, !tbaa !80
  %call182 = call i32 @ssl_hmac_final(%struct.ssl_hmac_st* noundef nonnull %call8, i8* noundef %39, i64* noundef nonnull %hlen, i64 noundef 64) #13
  %tobool183 = icmp eq i32 %call182, 0
  %40 = load i64, i64* %hlen, align 8
  %cmp185 = icmp ugt i64 %40, 64
  %or.cond222 = select i1 %tobool183, i1 true, i1 %cmp185
  br i1 %or.cond222, label %if.then193, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %lor.lhs.false181
  %call188 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef %40, i8** noundef nonnull %macdata2) #13
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.then193, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %lor.lhs.false187
  %41 = load i8*, i8** %macdata1, align 8, !tbaa !80
  %42 = load i8*, i8** %macdata2, align 8, !tbaa !80
  %cmp191.not = icmp eq i8* %41, %42
  br i1 %cmp191.not, label %if.end194, label %if.then193

if.then193:                                       ; preds = %lor.lhs.false190, %lor.lhs.false187, %lor.lhs.false181, %lor.lhs.false178, %lor.lhs.false174, %lor.lhs.false171, %lor.lhs.false166, %lor.lhs.false161, %lor.lhs.false157, %lor.lhs.false154, %lor.lhs.false151, %lor.lhs.false147, %lor.lhs.false144, %lor.lhs.false140, %lor.lhs.false135, %lor.lhs.false131, %if.end128
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3822, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end194:                                        ; preds = %lor.lhs.false190
  %call195 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #13
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.then197, label %err

if.then197:                                       ; preds = %if.end194
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3828, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.construct_stateless_ticket, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

err:                                              ; preds = %if.then115, %if.then90, %if.then81, %if.then76, %if.end194, %if.end124, %if.then197, %if.then193, %if.then36, %if.then32, %if.then24, %if.then18, %if.then14, %if.then5, %if.then
  %hctx.0 = phi %struct.ssl_hmac_st* [ null, %if.then ], [ null, %if.then5 ], [ %call8, %if.then14 ], [ %call8, %if.then24 ], [ %call8, %if.then32 ], [ %call8, %if.then193 ], [ %call8, %if.then197 ], [ %call8, %if.end124 ], [ %call8, %if.then36 ], [ %call8, %if.then18 ], [ %call8, %if.end194 ], [ %call8, %if.then76 ], [ %call8, %if.then81 ], [ %call8, %if.then90 ], [ %call8, %if.then115 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ null, %if.then ], [ null, %if.then5 ], [ %call7, %if.then14 ], [ %call7, %if.then24 ], [ %call7, %if.then32 ], [ %call7, %if.then193 ], [ %call7, %if.then197 ], [ %call7, %if.end124 ], [ %call7, %if.then36 ], [ %call7, %if.then18 ], [ %call7, %if.end194 ], [ %call7, %if.then76 ], [ %call7, %if.then81 ], [ %call7, %if.then90 ], [ %call7, %if.then115 ]
  %senc.0 = phi i8* [ null, %if.then ], [ null, %if.then5 ], [ %call2, %if.then14 ], [ %call2, %if.then24 ], [ %call2, %if.then32 ], [ %call2, %if.then193 ], [ %call2, %if.then197 ], [ %call2, %if.end124 ], [ %call2, %if.then36 ], [ %call2, %if.then18 ], [ %call2, %if.end194 ], [ %call2, %if.then76 ], [ %call2, %if.then81 ], [ %call2, %if.then90 ], [ %call2, %if.then115 ]
  %ok.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then14 ], [ 0, %if.then24 ], [ 0, %if.then32 ], [ 0, %if.then193 ], [ 0, %if.then197 ], [ 0, %if.end124 ], [ 0, %if.then36 ], [ 0, %if.then18 ], [ 1, %if.end194 ], [ 0, %if.then76 ], [ 0, %if.then81 ], [ 0, %if.then90 ], [ 0, %if.then115 ]
  call void @CRYPTO_free(i8* noundef %senc.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 3834) #13
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #13
  call void @ssl_hmac_free(%struct.ssl_hmac_st* noundef %hctx.0) #13
  br label %cleanup199

cleanup199:                                       ; preds = %cleanup.thread328, %err
  %retval.1 = phi i32 [ %ok.0, %err ], [ 1, %cleanup.thread328 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.1
}

declare void @ssl_update_cache(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls_construct_cert_status_body(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #1 {
entry:
  %status_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 4
  %0 = load i32, i32* %status_type, align 8, !tbaa !186
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %0, i64 noundef 1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %resp = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 2
  %1 = load i8*, i8** %resp, align 8, !tbaa !190
  %resp_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 8, i32 3
  %2 = load i64, i64* %resp_len, align 8, !tbaa !206
  %call4 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %1, i64 noundef %2, i64 noundef 3) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4003, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.tls_construct_cert_status_body, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_memdup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data, i64* nocapture noundef writeonly %len) unnamed_addr #1 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !80
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef 421) #13
  store i8* null, i8** %data, align 8, !tbaa !80
  store i64 0, i64* %len, align 8, !tbaa !91
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !158
  %call1 = tail call i8* @CRYPTO_memdup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef 430) #13
  store i8* %call1, i8** %data, align 8, !tbaa !80
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  store i64 %call, i64* %len, align 8, !tbaa !91
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  %1 = load i8, i8* %0, align 1, !tbaa !122
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !79
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !158
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !159
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  %1 = load i8, i8* %0, align 1, !tbaa !122
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !79
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !122
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !79
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_sub_packet(%struct.PACKET* nocapture noundef readonly %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  tail call fastcc void @PACKET_buf_init(%struct.PACKET* noundef %subpkt, i8* noundef %0, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_peek_copy_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8* noundef %data, i64 noundef %len) unnamed_addr #1 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  %call1 = tail call i8* @memcpy(i8* noundef %data, i8* noundef %0, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

declare i32 @ssl_choose_server_version(%struct.ssl_st* noundef, %struct.CLIENTHELLO_MSG* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ssl_cache_cipherlist(%struct.ssl_st* noundef, %struct.PACKET* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bytes_to_cipher_list(%struct.ssl_st* noundef, %struct.PACKET* noundef, %struct.stack_st_SSL_CIPHER** noundef, %struct.stack_st_SSL_CIPHER** noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare i32 @ssl_check_version_downgrade(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @tls_parse_extension(%struct.ssl_st* noundef, i32 noundef, i32 noundef, %struct.raw_extension_st* noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_get_new_session(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_get_prev_session(%struct.ssl_st* noundef, %struct.CLIENTHELLO_MSG* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_check_for_safari(%struct.ssl_st* noundef %s, %struct.CLIENTHELLO_MSG* nocapture noundef readonly %hello) unnamed_addr #1 {
entry:
  %type = alloca i32, align 4
  %sni = alloca %struct.PACKET, align 8
  %tmppkt = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  %1 = bitcast %struct.PACKET* %sni to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #15
  %2 = bitcast %struct.PACKET* %tmppkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15
  %extensions = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 10
  %3 = bitcast %struct.PACKET* %extensions to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !142
  %call = call fastcc i32 @PACKET_forward(%struct.PACKET* noundef nonnull %tmppkt, i64 noundef 2) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmppkt, i32* noundef nonnull %type) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %tmppkt, %struct.PACKET* noundef nonnull %sni) #14
  %tobool5.not = icmp ne i32 %call4, 0
  %4 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %4, 0
  %or.cond = select i1 %tobool5.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end7, label %cleanup

if.end7:                                          ; preds = %lor.lhs.false3
  %call8 = tail call i32 @SSL_client_version(%struct.ssl_st* noundef %s) #13
  %shr.mask = and i32 %call8, -256
  %cmp9 = icmp eq i32 %shr.mask, 768
  br i1 %cmp9, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end7
  %call10 = tail call i32 @SSL_client_version(%struct.ssl_st* noundef %s) #13
  %phi.cmp = icmp sgt i32 %call10, 770
  %phi.sel = select i1 %phi.cmp, i64 34, i64 18
  br label %cond.end

cond.end:                                         ; preds = %if.end7, %cond.true
  %cond = phi i64 [ %phi.sel, %cond.true ], [ 18, %if.end7 ]
  %call13 = call fastcc i32 @PACKET_equal(%struct.PACKET* noundef nonnull %tmppkt, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @ssl_check_for_safari.kSafariExtensionsBlock, i64 0, i64 0), i64 noundef %cond) #14
  %conv = trunc i32 %call13 to i8
  %is_probably_safari = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 32
  store i8 %conv, i8* %is_probably_safari, align 4, !tbaa !207
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %lor.lhs.false3, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret void
}

declare i32 @ssl_fill_hello_random(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @ssl_allow_compression(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @tls1_set_server_sigalgs(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @SSL_client_version(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @ssl_srp_server_param_with_username_intern(%struct.ssl_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @PACKET_strndup(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef %data) unnamed_addr #1 {
entry:
  %0 = load i8*, i8** %data, align 8, !tbaa !80
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef 450) #13
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %1 = load i8*, i8** %curr, align 8, !tbaa !158
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %call1 = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef 453) #13
  store i8* %call1, i8** %data, align 8, !tbaa !80
  %cmp = icmp ne i8* %call1, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #5 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  ret i8* %0
}

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set1_encoded_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_derive(%struct.ssl_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @srp_generate_server_master_secret(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @ASN1_TYPE_get(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_gost18_cke_cipher_nid(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @ossl_gost_ukm(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_3(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 3
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  %1 = load i8, i8* %0, align 1, !tbaa !122
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 16
  store i64 %shl, i64* %data, align 8, !tbaa !91
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !122
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !91
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !122
  %conv6 = zext i8 %3 to i64
  %or7 = or i64 %or, %conv6
  store i64 %or7, i64* %data, align 8, !tbaa !91
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !158
  store i8* %0, i8** %data, align 8, !tbaa !80
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_ticket_prequel(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %age_add, i8* noundef %tick_nonce) unnamed_addr #1 {
entry:
  %hit = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 21
  %0 = load i32, i32* %hit, align 8, !tbaa !57
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !4
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !22
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !24
  %and = and i32 %3, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %cond.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !26
  %cmp = icmp slt i32 %4, 772
  %cmp7.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp, %cmp7.not
  br i1 %or.cond, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true2, %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !31
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 15
  %6 = load i64, i64* %timeout, align 8, !tbaa !208
  %conv = trunc i64 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %land.lhs.true2, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 0, %land.lhs.true2 ], [ 0, %land.lhs.true ]
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %cond, i64 noundef 4) #13
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %return.sink.split, label %if.end

if.end:                                           ; preds = %cond.end
  %method9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %7 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method9, align 8, !tbaa !4
  %ssl3_enc10 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 25
  %8 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc10, align 8, !tbaa !22
  %enc_flags11 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %8, i64 0, i32 12
  %9 = load i32, i32* %enc_flags11, align 8, !tbaa !24
  %and12 = and i32 %9, 8
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true14, label %if.end31

land.lhs.true14:                                  ; preds = %if.end
  %version16 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %7, i64 0, i32 0
  %10 = load i32, i32* %version16, align 8, !tbaa !26
  %cmp17 = icmp slt i32 %10, 772
  %cmp22.not = icmp eq i32 %10, 65536
  %or.cond50 = or i1 %cmp17, %cmp22.not
  br i1 %or.cond50, label %if.end31, label %if.then24

if.then24:                                        ; preds = %land.lhs.true14
  %call25 = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %age_add, i64 noundef 4) #13
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24
  %call27 = tail call i32 @WPACKET_sub_memcpy__(%struct.wpacket_st* noundef %pkt, i8* noundef %tick_nonce, i64 noundef 8, i64 noundef 1) #13
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %return.sink.split, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false, %land.lhs.true14, %if.end
  %call32 = tail call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #13
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end31, %if.then24, %lor.lhs.false, %cond.end
  %.sink = phi i32 [ 3633, %cond.end ], [ 3640, %lor.lhs.false ], [ 3640, %if.then24 ], [ 3647, %if.end31 ]
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.create_ticket_prequel, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %return

return:                                           ; preds = %return.sink.split, %if.end31
  %retval.0 = phi i32 [ 1, %if.end31 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare %struct.ssl_hmac_st* @ssl_hmac_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_mac_ctx_st* @ssl_hmac_get0_EVP_MAC_CTX(%struct.ssl_hmac_st* noundef) local_unnamed_addr #2

declare %struct.hmac_ctx_st* @ssl_hmac_get0_HMAC_CTX(%struct.ssl_hmac_st* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare void @ssl_hmac_free(%struct.ssl_hmac_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_send_fatal(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ssl_hmac_init(%struct.ssl_hmac_st* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ssl_hmac_update(%struct.ssl_hmac_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_hmac_final(%struct.ssl_hmac_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #17 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!28 = !{!5, !6, i64 840}
!29 = !{!5, !6, i64 0}
!30 = !{!5, !6, i64 2408}
!31 = !{!5, !9, i64 2328}
!32 = !{!33, !9, i64 696}
!33 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !34, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!34 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!35 = !{!10, !6, i64 44}
!36 = !{!5, !6, i64 1156}
!37 = !{!5, !11, i64 152}
!38 = !{!5, !6, i64 40}
!39 = !{!5, !7, i64 2280}
!40 = !{!5, !6, i64 2864}
!41 = !{!5, !7, i64 132}
!42 = !{!5, !7, i64 2984}
!43 = !{!5, !6, i64 3008}
!44 = !{!5, !9, i64 736}
!45 = !{!46, !6, i64 32}
!46 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!47 = !{!10, !7, i64 24}
!48 = !{!5, !9, i64 1208}
!49 = !{!50, !6, i64 264}
!50 = !{!"dtls1_state_st", !7, i64 0, !11, i64 256, !6, i64 264, !14, i64 268, !14, i64 270, !14, i64 272, !9, i64 280, !9, i64 288, !11, i64 296, !11, i64 304, !51, i64 312, !51, i64 400, !6, i64 488, !53, i64 496, !6, i64 512, !6, i64 516, !9, i64 520}
!51 = !{!"hm_header_st", !7, i64 0, !11, i64 8, !14, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !52, i64 48}
!52 = !{!"dtls1_retransmit_state", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !14, i64 32}
!53 = !{!"timeval", !11, i64 0, !11, i64 8}
!54 = !{!5, !6, i64 2976}
!55 = !{!5, !11, i64 576}
!56 = !{!5, !11, i64 712}
!57 = !{!5, !6, i64 1232}
!58 = !{!5, !6, i64 2712}
!59 = !{!5, !6, i64 2676}
!60 = !{!5, !6, i64 2980}
!61 = !{!5, !6, i64 2716}
!62 = !{!5, !11, i64 2536}
!63 = !{!5, !11, i64 7536}
!64 = !{!5, !11, i64 7544}
!65 = !{!46, !6, i64 28}
!66 = !{!5, !9, i64 2200}
!67 = !{!68, !9, i64 512}
!68 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !11, i64 400, !9, i64 408, !11, i64 416, !9, i64 424, !11, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !69, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!69 = !{!"", !9, i64 0, !11, i64 8}
!70 = !{!5, !6, i64 68}
!71 = !{!10, !6, i64 48}
!72 = !{!33, !9, i64 760}
!73 = !{!25, !9, i64 16}
!74 = !{!5, !11, i64 168}
!75 = !{!5, !6, i64 2568}
!76 = !{!25, !9, i64 32}
!77 = !{!5, !7, i64 128}
!78 = !{!25, !9, i64 24}
!79 = !{!6, !6, i64 0}
!80 = !{!9, !9, i64 0}
!81 = !{!5, !9, i64 2472}
!82 = !{!83, !9, i64 208}
!83 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !84, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !85, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !86, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!84 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!85 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!86 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!87 = !{!50, !11, i64 256}
!88 = !{!33, !6, i64 688}
!89 = !{!83, !6, i64 80}
!90 = !{!33, !11, i64 592}
!91 = !{!11, !11, i64 0}
!92 = !{!5, !9, i64 832}
!93 = !{!94, !6, i64 0}
!94 = !{!"ssl_comp_st", !6, i64 0, !9, i64 8, !9, i64 16}
!95 = !{!23, !9, i64 152}
!96 = !{!5, !9, i64 904}
!97 = !{!5, !9, i64 896}
!98 = !{!68, !6, i64 24}
!99 = !{!68, !9, i64 8}
!100 = !{!68, !9, i64 16}
!101 = !{!5, !9, i64 744}
!102 = !{!33, !6, i64 776}
!103 = !{!5, !9, i64 3064}
!104 = !{!5, !9, i64 3072}
!105 = !{!5, !9, i64 3080}
!106 = !{!5, !9, i64 3088}
!107 = distinct !{!107, !108}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!110, !9, i64 8}
!110 = !{!"cert_pkey_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32}
!111 = !{!112, !14, i64 8}
!112 = !{!"sigalg_lookup_st", !9, i64 0, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!113 = !{!83, !9, i64 0}
!114 = !{!83, !9, i64 1088}
!115 = !{!112, !6, i64 20}
!116 = !{!5, !9, i64 136}
!117 = !{!118, !9, i64 8}
!118 = !{!"buf_mem_st", !11, i64 0, !9, i64 8, !11, i64 16, !11, i64 24}
!119 = !{!5, !9, i64 2992}
!120 = !{!5, !11, i64 3000}
!121 = !{!5, !9, i64 2952}
!122 = !{!7, !7, i64 0}
!123 = !{!33, !6, i64 848}
!124 = !{!5, !11, i64 7552}
!125 = !{!33, !11, i64 8}
!126 = !{!33, !11, i64 736}
!127 = !{!5, !9, i64 1160}
!128 = !{!33, !9, i64 856}
!129 = !{!5, !11, i64 1168}
!130 = !{!33, !11, i64 864}
!131 = !{!5, !6, i64 7488}
!132 = !{!33, !6, i64 852}
!133 = !{!83, !9, i64 1016}
!134 = !{!83, !9, i64 1032}
!135 = !{!5, !11, i64 2560}
!136 = !{!5, !6, i64 1152}
!137 = !{!5, !6, i64 60}
!138 = !{!139, !6, i64 0}
!139 = !{!"", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 40, !7, i64 48, !11, i64 80, !7, i64 88, !69, i64 344, !11, i64 360, !7, i64 368, !69, i64 624, !11, i64 640, !9, i64 648}
!140 = !{!139, !11, i64 40}
!141 = !{!139, !11, i64 80}
!142 = !{i64 0, i64 8, !80, i64 8, i64 8, !91}
!143 = !{!5, !9, i64 2904}
!144 = !{!139, !9, i64 648}
!145 = distinct !{!145, !108}
!146 = !{!5, !9, i64 392}
!147 = !{!5, !11, i64 2488}
!148 = !{!33, !11, i64 712}
!149 = !{!33, !9, i64 704}
!150 = !{!5, !9, i64 880}
!151 = !{!5, !11, i64 888}
!152 = !{!5, !11, i64 2848}
!153 = !{!68, !9, i64 440}
!154 = !{!68, !9, i64 448}
!155 = !{!5, !9, i64 1312}
!156 = !{!5, !9, i64 3152}
!157 = !{!5, !6, i64 116}
!158 = !{!69, !9, i64 0}
!159 = !{!69, !11, i64 8}
!160 = !{!83, !9, i64 664}
!161 = !{!5, !9, i64 1176}
!162 = !{!5, !11, i64 1184}
!163 = !{!83, !9, i64 672}
!164 = !{!5, !6, i64 2868}
!165 = !{!83, !9, i64 520}
!166 = !{!83, !9, i64 528}
!167 = !{!139, !6, i64 4}
!168 = !{!5, !6, i64 2572}
!169 = !{!83, !9, i64 216}
!170 = distinct !{!170, !108}
!171 = !{!46, !6, i64 24}
!172 = !{!5, !11, i64 2400}
!173 = distinct !{!173, !108}
!174 = !{!139, !11, i64 360}
!175 = distinct !{!175, !108}
!176 = !{!5, !9, i64 2808}
!177 = !{!5, !9, i64 2816}
!178 = !{!5, !9, i64 1320}
!179 = !{!5, !9, i64 1328}
!180 = !{!33, !6, i64 756}
!181 = !{!83, !9, i64 280}
!182 = distinct !{!182, !108}
!183 = distinct !{!183, !108}
!184 = distinct !{!184, !108}
!185 = distinct !{!185, !108}
!186 = !{!5, !6, i64 2656}
!187 = !{!83, !9, i64 592}
!188 = !{!68, !9, i64 0}
!189 = !{!83, !9, i64 600}
!190 = !{!5, !9, i64 2696}
!191 = !{!5, !9, i64 3032}
!192 = !{!5, !9, i64 3056}
!193 = !{!5, !9, i64 2448}
!194 = !{!33, !9, i64 680}
!195 = !{i64 0, i64 8, !80, i64 8, i64 4, !79, i64 16, i64 8, !80, i64 24, i64 8, !91, i64 32, i64 8, !91}
!196 = !{!5, !9, i64 3096}
!197 = !{!33, !9, i64 880}
!198 = !{!199, !9, i64 0}
!199 = !{!"", !9, i64 0, !9, i64 8}
!200 = !{!201, !6, i64 0}
!201 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !11, i64 16}
!202 = !{!201, !9, i64 8}
!203 = !{!83, !9, i64 584}
!204 = !{!83, !9, i64 576}
!205 = !{!83, !9, i64 568}
!206 = !{!5, !11, i64 2704}
!207 = !{!5, !7, i64 1196}
!208 = !{!33, !11, i64 728}
