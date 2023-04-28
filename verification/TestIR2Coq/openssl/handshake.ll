; ModuleID = 'test/helpers/handshake.c'
source_filename = "test/helpers/handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.handshake_result = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i8*, i8* }
%struct.stack_st_X509_NAME = type opaque
%struct.stack_st = type opaque
%struct.X509_name_st = type opaque
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.0, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.0 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evp_cipher_st = type opaque
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type opaque
%struct.cert_pkey_st = type { %struct.x509_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, i8*, i64 }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.dtls1_state_st = type { [255 x i8], i64, i32, i16, i16, i16, %struct.pqueue_st*, %struct.pqueue_st*, i64, i64, %struct.hm_header_st, %struct.hm_header_st, i32, %struct.timeval, i32, i32, i32 (%struct.ssl_st*, i32)* }
%struct.pqueue_st = type opaque
%struct.hm_header_st = type { i8, i64, i16, i64, i64, i32, %struct.dtls1_retransmit_state }
%struct.dtls1_retransmit_state = type { %struct.evp_cipher_ctx_st*, %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.ssl_session_st*, i16 }
%struct.timeval = type { i64, i64 }
%struct.ssl_dane_st = type { %struct.dane_ctx_st*, %struct.stack_st_danetls_record*, %struct.stack_st_X509*, %struct.danetls_record_st*, %struct.x509_st*, i32, i32, i32, i64 }
%struct.stack_st_danetls_record = type opaque
%struct.danetls_record_st = type { i8, i8, i8, i8*, i64, %struct.evp_pkey_st* }
%struct.comp_ctx_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.anon.2 = type { [26 x i8], void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i8*, i16, i32, %struct.anon.3, i32, i32, i64, i8*, i64, i8*, i64, i16*, i64, i16*, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, i8*, i64, i8*, i64, i32, i32, i32, i32, i8*, i64, i32, i8, i32 }
%struct.anon.3 = type { %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i64 }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.CLIENTHELLO_MSG = type { i32, i32, [32 x i8], i64, [32 x i8], i64, [255 x i8], %struct.PACKET, i64, [255 x i8], %struct.PACKET, i64, %struct.raw_extension_st* }
%struct.PACKET = type { i8*, i64 }
%struct.raw_extension_st = type { %struct.PACKET, i32, i32, i32, i64 }
%struct.stack_st_SCT = type opaque
%struct.srtp_protection_profile_st = type { i8*, i64 }
%struct.evp_md_ctx_st = type opaque
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
%struct.stack_st_SSL_CIPHER = type opaque
%struct.x509_store_st = type opaque
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon.1, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.anon.1 = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x509_store_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_SSL_COMP = type opaque
%struct.cert_st = type { %struct.cert_pkey_st*, %struct.evp_pkey_st*, %struct.dh_st* (%struct.ssl_st*, i32, i32)*, i32, i32, [9 x %struct.cert_pkey_st], i8*, i64, i16*, i64, i16*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.x509_store_st*, %struct.x509_store_st*, %struct.custom_ext_methods, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32, i8*, i8*, i32, i8* }
%struct.dh_st = type opaque
%struct.custom_ext_methods = type { %struct.custom_ext_method*, i64 }
%struct.custom_ext_method = type { i16, i32, i32, i32, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i8*)*, i8*, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)*, i8* }
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.ctlog_store_st = type opaque
%struct.ct_policy_eval_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.anon.5 = type { i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], %struct.ssl_ctx_ext_secure_st*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i8, i64, i8*, i64, i16*, i16*, i64, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i64, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, [32 x i8] }
%struct.ssl_ctx_ext_secure_st = type { [32 x i8], [32 x i8] }
%struct.hmac_ctx_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.srp_ctx_st = type { i8*, i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)*, i8*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i32, i64 }
%struct.bignum_st = type opaque
%struct.dane_ctx_st = type { %struct.evp_md_st**, i8*, i8, i64 }
%struct.stack_st_SRTP_PROTECTION_PROFILE = type opaque
%struct.sigalg_lookup_st = type { i8*, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.tls_group_info_st = type { i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, i8 }
%struct.SSL_TEST_CTX = type { i32, i32, i32, i32, i32, %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, %struct.stack_st_X509_NAME*, i32, i32, i32, i32, i8*, i8*, %struct.ossl_lib_ctx_st* }
%struct.SSL_TEST_EXTRA_CONF = type { %struct.SSL_TEST_CLIENT_CONF, %struct.SSL_TEST_SERVER_CONF, %struct.SSL_TEST_SERVER_CONF }
%struct.SSL_TEST_CLIENT_CONF = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32 }
%struct.SSL_TEST_SERVER_CONF = type { i32, i8*, i8*, i32, i32, i8*, i8*, i32, i8* }
%struct.peer_st = type { %struct.ssl_st*, i8*, i32, i8*, i32, i32, i32, i32 }
%struct.handshake_ex_data_st = type { i32, i32, i32, i32, i32 }
%struct.ctx_data_st = type { i8*, i64, i8*, i64, i8*, i8*, i8* }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }

@.str = private unnamed_addr constant [25 x i8] c"test/helpers/handshake.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ret = OPENSSL_zalloc(sizeof(*ret))\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"configure_handshake_ctx\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"creating server context\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"creating client context\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"SSL_CTX_add_session(server_ctx, serv_sess_in)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"SSL_set_session(client.ssl, session_in)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"client_to_server\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"server_to_client\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"BIO_up_ref(server_to_client)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"BIO_up_ref(client_to_server)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ex data\00", align 1
@ex_data_idx = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ex_data_idx\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"SSL_set_ex_data(server.ssl, ex_data_idx, &server_ex_data)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"SSL_set_ex_data(client.ssl, ex_data_idx, &client_ex_data)\00", align 1
@n_retries = internal unnamed_addr global i32 0, align 4
@.str.17 = private unnamed_addr constant [67 x i8] c"SSL_CTX_set_max_send_fragment(server_ctx, test->max_fragment_size)\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"SSL_CTX_set_max_send_fragment(server2_ctx, test->max_fragment_size)\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"SSL_CTX_set_max_send_fragment(client_ctx, test->max_fragment_size)\00", align 1
@dummy_ocsp_resp_good_val = internal global i8 -1, align 1
@dummy_ocsp_resp_bad_val = internal global i8 -2, align 1
@.str.20 = private unnamed_addr constant [112 x i8] c"parse_protos(extra->server.npn_protocols, &server_ctx_data->npn_protocols, &server_ctx_data->npn_protocols_len)\00", align 1
@.str.21 = private unnamed_addr constant [115 x i8] c"parse_protos(extra->server2.npn_protocols, &server2_ctx_data->npn_protocols, &server2_ctx_data->npn_protocols_len)\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"server2_ctx\00", align 1
@.str.23 = private unnamed_addr constant [112 x i8] c"parse_protos(extra->client.npn_protocols, &client_ctx_data->npn_protocols, &client_ctx_data->npn_protocols_len)\00", align 1
@.str.24 = private unnamed_addr constant [115 x i8] c"parse_protos(extra->server.alpn_protocols, &server_ctx_data->alpn_protocols, &server_ctx_data->alpn_protocols_len)\00", align 1
@.str.25 = private unnamed_addr constant [119 x i8] c"parse_protos(extra->server2.alpn_protocols, &server2_ctx_data->alpn_protocols, &server2_ctx_data->alpn_protocols_len )\00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"parse_protos(extra->client.alpn_protocols, &alpn_protos, &alpn_protos_len)\00", align 1
@.str.27 = private unnamed_addr constant [66 x i8] c"SSL_CTX_set_alpn_protos(client_ctx, alpn_protos, alpn_protos_len)\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"ticket_keys = OPENSSL_zalloc(ticket_key_len)\00", align 1
@.str.29 = private unnamed_addr constant [72 x i8] c"SSL_CTX_set_tlsext_ticket_keys(server_ctx, ticket_keys, ticket_key_len)\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"SSL_CTX_set_default_ctlog_list_file(client_ctx)\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"SSL_CTX_enable_ct(client_ctx, SSL_CT_VALIDATION_PERMISSIVE)\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"SSL_CTX_enable_ct(client_ctx, SSL_CT_VALIDATION_STRICT)\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"server2\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"server1\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"*out\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"*out = OPENSSL_malloc(len + 1)\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"i - 1\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.40 = private unnamed_addr constant [63 x i8] c"ret == OPENSSL_NPN_NEGOTIATED || ret == OPENSSL_NPN_NO_OVERLAP\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"ssl = SSL_new(ctx)\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"write_buf = OPENSSL_zalloc(peer_buffer_size)\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"read_buf = OPENSSL_zalloc(peer_buffer_size)\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"Action after connection done\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"peer->status\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"PEER_RETRY\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"peer->bytes_to_read\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"write_bytes\00", align 1
@.str.52 = private unnamed_addr constant [329 x i8] c"test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_SERVER || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RENEG_CLIENT || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_KEY_UPDATE_SERVER || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_KEY_UPDATE_CLIENT || test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_POST_HANDSHAKE_AUTH\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"Trying to progress after connection done\00", align 1
@.str.54 = private unnamed_addr constant [40 x i8] c"OPENSSL_strnlen((const char*)(in), len)\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"ret = OPENSSL_strndup((const char*)(in), len)\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@switch.table.handshake_status = private unnamed_addr constant [4 x i32] [i32 0, i32 4, i32 3, i32 4], align 4
@switch.table.decrypt_session_ticket_cb = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 3, i32 4], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.handshake_result* @HANDSHAKE_RESULT_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 168, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 31) #8
  %0 = bitcast i8* %call to %struct.handshake_result*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call) #8
  ret %struct.handshake_result* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @HANDSHAKE_RESULT_free(%struct.handshake_result* noundef %result) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.handshake_result* %result, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %client_npn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 13
  %0 = load i8*, i8** %client_npn_negotiated, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #8
  %server_npn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 14
  %1 = load i8*, i8** %server_npn_negotiated, align 8, !tbaa !9
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #8
  %client_alpn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 15
  %2 = load i8*, i8** %client_alpn_negotiated, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #8
  %server_alpn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 16
  %3 = load i8*, i8** %server_alpn_negotiated, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #8
  %result_session_ticket_app_data = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 30
  %4 = load i8*, i8** %result_session_ticket_app_data, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #8
  %server_ca_names = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 23
  %5 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %server_ca_names, align 8, !tbaa !13
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %5) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #8
  %client_ca_names = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 27
  %6 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names, align 8, !tbaa !14
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %6) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call2, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #8
  %cipher = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %result, i64 0, i32 29
  %7 = load i8*, i8** %cipher, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 46) #8
  %8 = bitcast %struct.handshake_result* %result to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 47) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.handshake_result* @do_handshake(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.ssl_ctx_st* noundef %resume_server_ctx, %struct.ssl_ctx_st* noundef %resume_client_ctx, %struct.SSL_TEST_CTX* noundef %test_ctx) local_unnamed_addr #0 {
entry:
  %session = alloca %struct.ssl_session_st*, align 8
  %serv_sess = alloca %struct.ssl_session_st*, align 8
  %0 = bitcast %struct.ssl_session_st** %session to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %session, align 8, !tbaa !16
  %1 = bitcast %struct.ssl_session_st** %serv_sess to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %serv_sess, align 8, !tbaa !16
  %extra = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 5
  %call = call fastcc %struct.handshake_result* @do_handshake_internal(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.SSL_TEST_CTX* noundef %test_ctx, %struct.SSL_TEST_EXTRA_CONF* noundef nonnull %extra, %struct.ssl_session_st* noundef null, %struct.ssl_session_st* noundef null, %struct.ssl_session_st** noundef nonnull %session, %struct.ssl_session_st** noundef nonnull %serv_sess) #9
  %cmp = icmp eq %struct.handshake_result* %call, null
  br i1 %cmp, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 1
  %2 = load i32, i32* %handshake_mode, align 4, !tbaa !17
  %cmp1.not = icmp eq i32 %2, 1
  br i1 %cmp1.not, label %lor.lhs.false2, label %end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %result3 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 0
  %3 = load i32, i32* %result3, align 8, !tbaa !22
  switch i32 %3, label %if.then7 [
    i32 3, label %end
    i32 0, label %if.end9
  ]

if.then7:                                         ; preds = %lor.lhs.false2
  store i32 4, i32* %result3, align 8, !tbaa !22
  br label %end

if.end9:                                          ; preds = %lor.lhs.false2
  call void @HANDSHAKE_RESULT_free(%struct.handshake_result* noundef nonnull %call) #9
  %resume_extra = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 6
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %serv_sess, align 8, !tbaa !16
  %call10 = call fastcc %struct.handshake_result* @do_handshake_internal(%struct.ssl_ctx_st* noundef %resume_server_ctx, %struct.ssl_ctx_st* noundef null, %struct.ssl_ctx_st* noundef %resume_client_ctx, %struct.SSL_TEST_CTX* noundef nonnull %test_ctx, %struct.SSL_TEST_EXTRA_CONF* noundef nonnull %resume_extra, %struct.ssl_session_st* noundef %4, %struct.ssl_session_st* noundef %5, %struct.ssl_session_st** noundef null, %struct.ssl_session_st** noundef null) #9
  br label %end

end:                                              ; preds = %lor.lhs.false2, %entry, %lor.lhs.false, %if.end9, %if.then7
  %result.0 = phi %struct.handshake_result* [ null, %entry ], [ %call, %lor.lhs.false ], [ %call, %lor.lhs.false2 ], [ %call, %if.then7 ], [ %call10, %if.end9 ]
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %6) #8
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %serv_sess, align 8, !tbaa !16
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %7) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.handshake_result* %result.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.handshake_result* @do_handshake_internal(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx, %struct.SSL_TEST_EXTRA_CONF* noundef %extra, %struct.ssl_session_st* noundef %session_in, %struct.ssl_session_st* noundef %serv_sess_in, %struct.ssl_session_st** noundef writeonly %session_out, %struct.ssl_session_st** noundef writeonly %serv_sess_out) unnamed_addr #0 {
entry:
  %server = alloca %struct.peer_st, align 8
  %client = alloca %struct.peer_st, align 8
  %server_ex_data = alloca %struct.handshake_ex_data_st, align 4
  %client_ex_data = alloca %struct.handshake_ex_data_st, align 4
  %client_ctx_data = alloca %struct.ctx_data_st, align 8
  %server_ctx_data = alloca %struct.ctx_data_st, align 8
  %server2_ctx_data = alloca %struct.ctx_data_st, align 8
  %tick = alloca i8*, align 8
  %tick_len = alloca i64, align 8
  %sess_id_len = alloca i32, align 4
  %proto = alloca i8*, align 8
  %proto_len = alloca i32, align 4
  %tmp_key = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.peer_st* %server to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #10
  %1 = bitcast %struct.peer_st* %client to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #10
  %2 = bitcast %struct.handshake_ex_data_st* %server_ex_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #10
  %3 = bitcast %struct.handshake_ex_data_st* %client_ex_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %3) #10
  %4 = bitcast %struct.ctx_data_st* %client_ctx_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10
  %5 = bitcast %struct.ctx_data_st* %server_ctx_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10
  %6 = bitcast %struct.ctx_data_st* %server2_ctx_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10
  %call = tail call %struct.handshake_result* @HANDSHAKE_RESULT_new() #9
  %7 = bitcast i8** %tick to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10
  store i8* null, i8** %tick, align 8, !tbaa !16
  %8 = bitcast i64* %tick_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #10
  store i64 0, i64* %tick_len, align 8, !tbaa !23
  %9 = bitcast i32* %sess_id_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #10
  store i32 0, i32* %sess_id_len, align 4, !tbaa !25
  %10 = bitcast i8** %proto to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  store i8* null, i8** %proto, align 8, !tbaa !16
  %11 = bitcast i32* %proto_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #10
  store i32 0, i32* %proto_len, align 4, !tbaa !25
  %12 = bitcast %struct.evp_pkey_st** %tmp_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #10
  %cmp = icmp eq %struct.handshake_result* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 56) #8
  %call2 = call i8* @memset(i8* noundef nonnull %6, i32 noundef 0, i64 noundef 56) #8
  %call3 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 56) #8
  %call4 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 48) #8
  %call5 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 48) #8
  %call6 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 20) #8
  %call7 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 20) #8
  %call8 = call fastcc i32 @configure_handshake_ctx(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.SSL_TEST_CTX* noundef %test_ctx, %struct.SSL_TEST_EXTRA_CONF* noundef %extra, %struct.ctx_data_st* noundef nonnull %server_ctx_data, %struct.ctx_data_st* noundef nonnull %server2_ctx_data, %struct.ctx_data_st* noundef nonnull %client_ctx_data) #9
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc i32 @create_peer(%struct.peer_st* noundef nonnull %server, %struct.ssl_ctx_st* noundef %server_ctx) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %err

if.end14:                                         ; preds = %if.end10
  %call15 = call fastcc i32 @create_peer(%struct.peer_st* noundef nonnull %client, %struct.ssl_ctx_st* noundef %client_ctx) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0)) #8
  br label %err

if.end18:                                         ; preds = %if.end14
  %app_data_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 2
  %13 = load i32, i32* %app_data_size, align 8, !tbaa !26
  %bytes_to_read = getelementptr inbounds %struct.peer_st, %struct.peer_st* %client, i64 0, i32 6
  store i32 %13, i32* %bytes_to_read, align 8, !tbaa !27
  %bytes_to_write = getelementptr inbounds %struct.peer_st, %struct.peer_st* %server, i64 0, i32 5
  store i32 %13, i32* %bytes_to_write, align 4, !tbaa !29
  %bytes_to_read20 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %server, i64 0, i32 6
  store i32 %13, i32* %bytes_to_read20, align 8, !tbaa !27
  %bytes_to_write21 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %client, i64 0, i32 5
  store i32 %13, i32* %bytes_to_write21, align 4, !tbaa !29
  %ssl = getelementptr inbounds %struct.peer_st, %struct.peer_st* %server, i64 0, i32 0
  %ssl22 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %client, i64 0, i32 0
  %14 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !30
  call fastcc void @configure_handshake_ssl(%struct.ssl_st* noundef %14, %struct.SSL_TEST_EXTRA_CONF* noundef %extra) #9
  %cmp23.not = icmp eq %struct.ssl_session_st* %session_in, null
  br i1 %cmp23.not, label %if.end39, label %if.then24

if.then24:                                        ; preds = %if.end18
  %call25 = call i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef %serv_sess_in, i32* noundef nonnull %sess_id_len) #8
  %15 = load i32, i32* %sess_id_len, align 4, !tbaa !25
  %cmp26.not = icmp eq i32 %15, 0
  br i1 %cmp26.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24
  %call27 = call i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_session_st* noundef %serv_sess_in) #8
  %cmp28 = icmp ne i32 %call27, 0
  %conv = zext i1 %cmp28 to i32
  %call29 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1456, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then24
  %16 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !30
  %call32 = call i32 @SSL_set_session(%struct.ssl_st* noundef %16, %struct.ssl_session_st* noundef nonnull %session_in) #8
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1457, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv34) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %sess_id_len, align 4, !tbaa !25
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end18
  %result = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 0
  store i32 3, i32* %result, align 8, !tbaa !22
  %use_sctp = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 26
  %17 = load i32, i32* %use_sctp, align 8, !tbaa !31
  %tobool40.not = icmp eq i32 %17, 0
  br i1 %tobool40.not, label %if.else, label %if.end46

if.else:                                          ; preds = %if.end39
  %call42 = call %struct.bio_method_st* @BIO_s_mem() #8
  %call43 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call42) #8
  %call44 = call %struct.bio_method_st* @BIO_s_mem() #8
  %call45 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call44) #8
  br label %if.end46

if.end46:                                         ; preds = %if.end39, %if.else
  %server_to_client.0 = phi %struct.bio_st* [ null, %if.end39 ], [ %call45, %if.else ]
  %client_to_server.0 = phi %struct.bio_st* [ null, %if.end39 ], [ %call43, %if.else ]
  %18 = bitcast %struct.bio_st* %client_to_server.0 to i8*
  %call47 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1478, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* noundef %18) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end46
  %19 = bitcast %struct.bio_st* %server_to_client.0 to i8*
  %call50 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1479, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* noundef %19) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false49
  %call54 = call i64 @BIO_ctrl(%struct.bio_st* noundef %client_to_server.0, i32 noundef 102, i64 noundef 1, i8* noundef null) #8
  %call55 = call i64 @BIO_ctrl(%struct.bio_st* noundef %server_to_client.0, i32 noundef 102, i64 noundef 1, i8* noundef null) #8
  %20 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !30
  call void @SSL_set_connect_state(%struct.ssl_st* noundef %20) #8
  %21 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  call void @SSL_set_accept_state(%struct.ssl_st* noundef %21) #8
  %22 = load i32, i32* %use_sctp, align 8, !tbaa !31
  %tobool59.not = icmp eq i32 %22, 0
  %23 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !30
  br i1 %tobool59.not, label %if.else63, label %if.then60

if.then60:                                        ; preds = %if.end53
  call void @SSL_set_bio(%struct.ssl_st* noundef %23, %struct.bio_st* noundef %client_to_server.0, %struct.bio_st* noundef %client_to_server.0) #8
  %24 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  call void @SSL_set_bio(%struct.ssl_st* noundef %24, %struct.bio_st* noundef %server_to_client.0, %struct.bio_st* noundef %server_to_client.0) #8
  br label %if.end75

if.else63:                                        ; preds = %if.end53
  call void @SSL_set_bio(%struct.ssl_st* noundef %23, %struct.bio_st* noundef %server_to_client.0, %struct.bio_st* noundef %client_to_server.0) #8
  %call65 = call i32 @BIO_up_ref(%struct.bio_st* noundef %server_to_client.0) #8
  %call66 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1495, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call65, i32 noundef 0) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.else63
  %call69 = call i32 @BIO_up_ref(%struct.bio_st* noundef %client_to_server.0) #8
  %call70 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1496, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call69, i32 noundef 0) #8
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false68
  %25 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  call void @SSL_set_bio(%struct.ssl_st* noundef %25, %struct.bio_st* noundef %client_to_server.0, %struct.bio_st* noundef %server_to_client.0) #8
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %if.then60
  %call76 = call i32 @CRYPTO_get_ex_new_index(i32 noundef 0, i64 noundef 0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef null, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef null, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef null) #8
  store i32 %call76, i32* @ex_data_idx, align 4, !tbaa !25
  %call77 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1502, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call76, i32 noundef 0) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end75
  %26 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %27 = load i32, i32* @ex_data_idx, align 4, !tbaa !25
  %call81 = call i32 @SSL_set_ex_data(%struct.ssl_st* noundef %26, i32 noundef %27, i8* noundef nonnull %2) #8
  %call82 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1503, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call81, i32 noundef 1) #8
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false79
  %28 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !30
  %29 = load i32, i32* @ex_data_idx, align 4, !tbaa !25
  %call86 = call i32 @SSL_set_ex_data(%struct.ssl_st* noundef %28, i32 noundef %29, i8* noundef nonnull %3) #8
  %call87 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1504, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call86, i32 noundef 1) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %if.end90

if.end90:                                         ; preds = %lor.lhs.false84
  %30 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  call void @SSL_set_info_callback(%struct.ssl_st* noundef %30, void (%struct.ssl_st*, i32, i32)* noundef nonnull @info_cb) #8
  %31 = load %struct.ssl_st*, %struct.ssl_st** %ssl22, align 8, !tbaa !30
  call void @SSL_set_info_callback(%struct.ssl_st* noundef %31, void (%struct.ssl_st*, i32, i32)* noundef nonnull @info_cb) #8
  %status93 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %client, i64 0, i32 7
  store i32 1, i32* %status93, align 4, !tbaa !32
  %status94 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %server, i64 0, i32 7
  store i32 3, i32* %status94, align 4, !tbaa !32
  %call95 = call i64 @time(i64* noundef null) #8
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %if.end90, %if.else117
  %client_wait_count.0.ph.ph = phi i32 [ 0, %if.end90 ], [ %client_wait_count.0.ph443, %if.else117 ]
  %phase.0.ph.ph = phi i32 [ 0, %if.end90 ], [ %call112, %if.else117 ]
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %for.cond.outer.outer
  %client_turn.0.ph = phi i32 [ 1, %for.cond.outer.outer ], [ %client_turn.0.ph.be, %for.cond.outer.backedge ]
  %client_turn_count.0.ph = phi i32 [ 0, %for.cond.outer.outer ], [ %client_turn_count.0.ph.be, %for.cond.outer.backedge ]
  %client_wait_count.0.ph = phi i32 [ %client_wait_count.0.ph.ph, %for.cond.outer.outer ], [ %client_wait_count.0.ph443, %for.cond.outer.backedge ]
  %tobool96 = icmp ne i32 %client_turn.0.ph, 0
  %tobool142 = icmp eq i32 %client_turn.0.ph, 0
  br label %for.cond.outer441

for.cond.outer441:                                ; preds = %for.cond.outer, %if.then160
  %client_turn_count.0.ph442 = phi i32 [ %client_turn_count.0.ph, %for.cond.outer ], [ %inc, %if.then160 ]
  %client_wait_count.0.ph443 = phi i32 [ %client_wait_count.0.ph, %for.cond.outer ], [ %inc161, %if.then160 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer441
  br i1 %tobool96, label %if.then97, label %if.else107

if.then97:                                        ; preds = %for.cond
  call fastcc void @do_connect_step(%struct.SSL_TEST_CTX* noundef %test_ctx, %struct.peer_st* noundef nonnull %client, i32 noundef %phase.0.ph.ph) #9
  %32 = load i32, i32* %status93, align 4, !tbaa !32
  %33 = load i32, i32* %status94, align 4, !tbaa !32
  %call100 = call fastcc i32 @handshake_status(i32 noundef %32, i32 noundef %33, i32 noundef 1) #9
  %cmp102 = icmp eq i32 %33, 3
  br i1 %cmp102, label %if.then104, label %if.end111

if.then104:                                       ; preds = %if.then97
  store i32 1, i32* %status94, align 4, !tbaa !32
  br label %if.end111

if.else107:                                       ; preds = %for.cond
  call fastcc void @do_connect_step(%struct.SSL_TEST_CTX* noundef %test_ctx, %struct.peer_st* noundef nonnull %server, i32 noundef %phase.0.ph.ph) #9
  %34 = load i32, i32* %status94, align 4, !tbaa !32
  %35 = load i32, i32* %status93, align 4, !tbaa !32
  %call110 = call fastcc i32 @handshake_status(i32 noundef %34, i32 noundef %35, i32 noundef 0) #9
  br label %if.end111

if.end111:                                        ; preds = %if.then97, %if.then104, %if.else107
  %36 = phi i32 [ 1, %if.then104 ], [ %33, %if.then97 ], [ %34, %if.else107 ]
  %status.0 = phi i32 [ %call100, %if.then104 ], [ %call100, %if.then97 ], [ %call110, %if.else107 ]
  switch i32 %status.0, label %for.cond.backedge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb120
    i32 2, label %sw.bb122
    i32 3, label %sw.bb124
    i32 4, label %sw.bb126
  ]

sw.bb:                                            ; preds = %if.end111
  %call112 = call fastcc i32 @next_phase(%struct.SSL_TEST_CTX* noundef %test_ctx, i32 noundef %phase.0.ph.ph) #9
  %cmp113 = icmp eq i32 %call112, 6
  br i1 %cmp113, label %if.then115, label %if.else117

if.then115:                                       ; preds = %sw.bb
  store i32 0, i32* %result, align 8, !tbaa !22
  br label %err

if.else117:                                       ; preds = %sw.bb
  store i32 1, i32* %status94, align 4, !tbaa !32
  store i32 1, i32* %status93, align 4, !tbaa !32
  br label %for.cond.outer.outer

sw.bb120:                                         ; preds = %if.end111
  store i32 2, i32* %result, align 8, !tbaa !22
  br label %err

sw.bb122:                                         ; preds = %if.end111
  store i32 1, i32* %result, align 8, !tbaa !22
  br label %err

sw.bb124:                                         ; preds = %if.end111
  store i32 3, i32* %result, align 8, !tbaa !22
  br label %err

sw.bb126:                                         ; preds = %if.end111
  %37 = load i32, i32* %use_sctp, align 8, !tbaa !31
  %tobool128.not = icmp eq i32 %37, 0
  br i1 %tobool128.not, label %if.else149, label %if.then129

if.then129:                                       ; preds = %sw.bb126
  %call130 = call i64 @time(i64* noundef null) #8
  %sub = sub nsw i64 %call130, %call95
  %cmp131 = icmp sgt i64 %sub, 3
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.then129
  store i32 3, i32* %result, align 8, !tbaa !22
  br label %err

if.end135:                                        ; preds = %if.then129
  %38 = load i32, i32* %status94, align 4
  %cmp139 = icmp eq i32 %38, 1
  %or.cond = select i1 %tobool96, i1 %cmp139, i1 false
  br i1 %or.cond, label %for.cond.outer.backedge, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.end135
  %39 = load i32, i32* %status93, align 4
  %cmp145 = icmp eq i32 %39, 1
  %or.cond326 = select i1 %tobool142, i1 %cmp145, i1 false
  br i1 %or.cond326, label %for.cond.outer.backedge, label %for.cond.backedge

for.cond.backedge:                                ; preds = %lor.lhs.false141, %if.end111
  br label %for.cond

for.cond.outer.backedge:                          ; preds = %if.end154, %if.end135, %lor.lhs.false141
  %client_turn_count.0.ph.be = phi i32 [ %client_turn_count.0.ph442, %lor.lhs.false141 ], [ %client_turn_count.0.ph442, %if.end135 ], [ %inc, %if.end154 ]
  %client_turn.0.ph.be = xor i32 %client_turn.0.ph, 1
  br label %for.cond.outer

if.else149:                                       ; preds = %sw.bb126
  %inc = add nsw i32 %client_turn_count.0.ph442, 1
  %cmp150 = icmp sgt i32 %client_turn_count.0.ph442, 1999
  br i1 %cmp150, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.else149
  store i32 3, i32* %result, align 8, !tbaa !22
  br label %err

if.end154:                                        ; preds = %if.else149
  %cmp158 = icmp eq i32 %36, 0
  %or.cond327 = and i1 %tobool96, %cmp158
  br i1 %or.cond327, label %if.then160, label %for.cond.outer.backedge

if.then160:                                       ; preds = %if.end154
  %inc161 = add nsw i32 %client_wait_count.0.ph443, 1
  %cmp162 = icmp sgt i32 %client_wait_count.0.ph443, 1
  br i1 %cmp162, label %if.then164, label %for.cond.outer441

if.then164:                                       ; preds = %if.then160
  store i32 3, i32* %result, align 8, !tbaa !22
  br label %err

err:                                              ; preds = %if.end75, %lor.lhs.false79, %lor.lhs.false84, %if.else63, %lor.lhs.false68, %if.end46, %lor.lhs.false49, %land.lhs.true, %lor.lhs.false, %if.then164, %if.then152, %if.then133, %sw.bb124, %sw.bb122, %sw.bb120, %if.then115, %if.then17, %if.then13
  %alert_sent = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %server_ex_data, i64 0, i32 0
  %40 = load i32, i32* %alert_sent, align 4, !tbaa !33
  %server_alert_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 4
  store i32 %40, i32* %server_alert_sent, align 8, !tbaa !35
  %num_fatal_alerts_sent = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %server_ex_data, i64 0, i32 1
  %41 = load i32, i32* %num_fatal_alerts_sent, align 4, !tbaa !36
  %server_num_fatal_alerts_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 5
  store i32 %41, i32* %server_num_fatal_alerts_sent, align 4, !tbaa !37
  %alert_received = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %client_ex_data, i64 0, i32 2
  %42 = load i32, i32* %alert_received, align 4, !tbaa !38
  %server_alert_received = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 6
  store i32 %42, i32* %server_alert_received, align 8, !tbaa !39
  %alert_sent171 = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %client_ex_data, i64 0, i32 0
  %43 = load i32, i32* %alert_sent171, align 4, !tbaa !33
  %client_alert_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 1
  store i32 %43, i32* %client_alert_sent, align 4, !tbaa !40
  %num_fatal_alerts_sent172 = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %client_ex_data, i64 0, i32 1
  %44 = load i32, i32* %num_fatal_alerts_sent172, align 4, !tbaa !36
  %client_num_fatal_alerts_sent = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 2
  store i32 %44, i32* %client_num_fatal_alerts_sent, align 8, !tbaa !41
  %alert_received173 = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %server_ex_data, i64 0, i32 2
  %45 = load i32, i32* %alert_received173, align 4, !tbaa !38
  %client_alert_received = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 3
  store i32 %45, i32* %client_alert_received, align 4, !tbaa !42
  %ssl174 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %server, i64 0, i32 0
  %46 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %call175 = call i32 @SSL_version(%struct.ssl_st* noundef %46) #8
  %server_protocol = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 7
  store i32 %call175, i32* %server_protocol, align 4, !tbaa !43
  %ssl176 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %client, i64 0, i32 0
  %47 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call177 = call i32 @SSL_version(%struct.ssl_st* noundef %47) #8
  %client_protocol = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 8
  store i32 %call177, i32* %client_protocol, align 8, !tbaa !44
  %servername = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %server_ex_data, i64 0, i32 4
  %48 = load i32, i32* %servername, align 4, !tbaa !45
  %servername178 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 9
  store i32 %48, i32* %servername178, align 4, !tbaa !46
  %49 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call180 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %49) #8
  %cmp181.not = icmp eq %struct.ssl_session_st* %call180, null
  br i1 %cmp181.not, label %if.end194, label %if.end185

if.end185:                                        ; preds = %err
  call void @SSL_SESSION_get0_ticket(%struct.ssl_session_st* noundef nonnull %call180, i8** noundef nonnull %tick, i64* noundef nonnull %tick_len) #8
  %call184 = call i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef nonnull %call180, i32* noundef nonnull %sess_id_len) #8
  %.pre = load i8*, i8** %tick, align 8, !tbaa !16
  %phi.cmp = icmp eq i8* %.pre, null
  %50 = load i64, i64* %tick_len, align 8
  %cmp189 = icmp eq i64 %50, 0
  %or.cond328 = select i1 %phi.cmp, i1 true, i1 %cmp189
  %spec.select = select i1 %or.cond328, i32 2, i32 1
  %phi.cmp440 = icmp eq i8* %call184, null
  br label %if.end194

if.end194:                                        ; preds = %if.end185, %err
  %sess_id.0437 = phi i1 [ true, %err ], [ %phi.cmp440, %if.end185 ]
  %.sink = phi i32 [ 2, %err ], [ %spec.select, %if.end185 ]
  %51 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 10
  store i32 %.sink, i32* %51, align 8
  %52 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call196 = call %struct.comp_method_st* @SSL_get_current_compression(%struct.ssl_st* noundef %52) #8
  %cmp197 = icmp ne %struct.comp_method_st* %call196, null
  %cond = zext i1 %cmp197 to i32
  %compression = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 11
  store i32 %cond, i32* %compression, align 4, !tbaa !47
  %53 = load i32, i32* %sess_id_len, align 4
  %cmp202 = icmp eq i32 %53, 0
  %or.cond329 = select i1 %sess_id.0437, i1 true, i1 %cmp202
  %spec.select439 = select i1 %or.cond329, i32 2, i32 1
  %54 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 28
  store i32 %spec.select439, i32* %54, align 8
  %session_ticket_do_not_call = getelementptr inbounds %struct.handshake_ex_data_st, %struct.handshake_ex_data_st* %server_ex_data, i64 0, i32 3
  %55 = load i32, i32* %session_ticket_do_not_call, align 4, !tbaa !48
  %session_ticket_do_not_call208 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 12
  store i32 %55, i32* %session_ticket_do_not_call208, align 8, !tbaa !49
  %verify_callback = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 0
  %56 = load i32, i32* %verify_callback, align 8, !tbaa !50
  %cmp210 = icmp eq i32 %56, 2
  %57 = load i32, i32* @n_retries, align 4
  %cmp213 = icmp ne i32 %57, -1
  %or.cond330 = select i1 %cmp210, i1 %cmp213, i1 false
  br i1 %or.cond330, label %if.then215, label %if.end217

if.then215:                                       ; preds = %if.end194
  %result216 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 0
  store i32 1, i32* %result216, align 8, !tbaa !22
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end194
  %58 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  call void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef %58, i8** noundef nonnull %proto, i32* noundef nonnull %proto_len) #8
  %59 = load i8*, i8** %proto, align 8, !tbaa !16
  %60 = load i32, i32* %proto_len, align 4, !tbaa !25
  %conv219 = zext i32 %60 to i64
  %call220 = call fastcc i8* @dup_str(i8* noundef %59, i64 noundef %conv219) #9
  %client_npn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 13
  store i8* %call220, i8** %client_npn_negotiated, align 8, !tbaa !3
  %61 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  call void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef %61, i8** noundef nonnull %proto, i32* noundef nonnull %proto_len) #8
  %62 = load i8*, i8** %proto, align 8, !tbaa !16
  %63 = load i32, i32* %proto_len, align 4, !tbaa !25
  %conv222 = zext i32 %63 to i64
  %call223 = call fastcc i8* @dup_str(i8* noundef %62, i64 noundef %conv222) #9
  %server_npn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 14
  store i8* %call223, i8** %server_npn_negotiated, align 8, !tbaa !9
  %64 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  call void @SSL_get0_alpn_selected(%struct.ssl_st* noundef %64, i8** noundef nonnull %proto, i32* noundef nonnull %proto_len) #8
  %65 = load i8*, i8** %proto, align 8, !tbaa !16
  %66 = load i32, i32* %proto_len, align 4, !tbaa !25
  %conv225 = zext i32 %66 to i64
  %call226 = call fastcc i8* @dup_str(i8* noundef %65, i64 noundef %conv225) #9
  %client_alpn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 15
  store i8* %call226, i8** %client_alpn_negotiated, align 8, !tbaa !10
  %67 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  call void @SSL_get0_alpn_selected(%struct.ssl_st* noundef %67, i8** noundef nonnull %proto, i32* noundef nonnull %proto_len) #8
  %68 = load i8*, i8** %proto, align 8, !tbaa !16
  %69 = load i32, i32* %proto_len, align 4, !tbaa !25
  %conv228 = zext i32 %69 to i64
  %call229 = call fastcc i8* @dup_str(i8* noundef %68, i64 noundef %conv228) #9
  %server_alpn_negotiated = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 16
  store i8* %call229, i8** %server_alpn_negotiated, align 8, !tbaa !11
  %70 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %call231 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %70) #8
  %cmp232.not = icmp eq %struct.ssl_session_st* %call231, null
  br i1 %cmp232.not, label %if.end237, label %if.then234

if.then234:                                       ; preds = %if.end217
  %call235 = call i32 @SSL_SESSION_get0_ticket_appdata(%struct.ssl_session_st* noundef nonnull %call231, i8** noundef nonnull %tick, i64* noundef nonnull %tick_len) #8
  %71 = load i8*, i8** %tick, align 8, !tbaa !16
  %72 = load i64, i64* %tick_len, align 8, !tbaa !23
  %call236 = call i8* @CRYPTO_strndup(i8* noundef %71, i64 noundef %72, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1654) #8
  %result_session_ticket_app_data = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 30
  store i8* %call236, i8** %result_session_ticket_app_data, align 8, !tbaa !12
  br label %if.end237

if.end237:                                        ; preds = %if.then234, %if.end217
  %73 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call239 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %73) #8
  %client_resumed = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 17
  store i32 %call239, i32* %client_resumed, align 8, !tbaa !51
  %74 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %call241 = call i32 @SSL_session_reused(%struct.ssl_st* noundef %74) #8
  %server_resumed = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 18
  store i32 %call241, i32* %server_resumed, align 4, !tbaa !52
  %75 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call243 = call %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef %75) #8
  %call244 = call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %call243) #8
  %call245 = call i64 @strlen(i8* noundef %call244) #11
  %call246 = call fastcc i8* @dup_str(i8* noundef %call244, i64 noundef %call245) #9
  %cipher247 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 29
  store i8* %call246, i8** %cipher247, align 8, !tbaa !15
  %cmp248.not = icmp eq %struct.ssl_session_st** %session_out, null
  br i1 %cmp248.not, label %if.end253, label %if.then250

if.then250:                                       ; preds = %if.end237
  %76 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call252 = call %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* noundef %76) #8
  store %struct.ssl_session_st* %call252, %struct.ssl_session_st** %session_out, align 8, !tbaa !16
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end237
  %cmp254.not = icmp eq %struct.ssl_session_st** %serv_sess_out, null
  br i1 %cmp254.not, label %if.end264, label %if.then256

if.then256:                                       ; preds = %if.end253
  %77 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %call258 = call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %77) #8
  %cmp259.not = icmp eq %struct.ssl_session_st* %call258, null
  br i1 %cmp259.not, label %if.end264, label %if.then261

if.then261:                                       ; preds = %if.then256
  %call262 = call %struct.ssl_session_st* @SSL_SESSION_dup(%struct.ssl_session_st* noundef nonnull %call258) #8
  store %struct.ssl_session_st* %call262, %struct.ssl_session_st** %serv_sess_out, align 8, !tbaa !16
  br label %if.end264

if.end264:                                        ; preds = %if.then256, %if.then261, %if.end253
  %78 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call266 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %78, i32 noundef 109, i64 noundef 0, i8* noundef nonnull %12) #8
  %tobool267.not = icmp eq i64 %call266, 0
  br i1 %tobool267.not, label %if.end270, label %if.then268

if.then268:                                       ; preds = %if.end264
  %79 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmp_key, align 8, !tbaa !16
  %call269 = call fastcc i32 @pkey_type(%struct.evp_pkey_st* noundef %79) #9
  %tmp_key_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 19
  store i32 %call269, i32* %tmp_key_type, align 8, !tbaa !53
  %80 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmp_key, align 8, !tbaa !16
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %80) #8
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %if.end264
  %81 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %server_sign_hash = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 21
  %82 = bitcast i32* %server_sign_hash to i8*
  %call272 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %81, i32 noundef 108, i64 noundef 0, i8* noundef nonnull %82) #8
  %83 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %client_sign_hash = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 25
  %84 = bitcast i32* %client_sign_hash to i8*
  %call274 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %83, i32 noundef 108, i64 noundef 0, i8* noundef nonnull %84) #8
  %85 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %server_sign_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 22
  %call276 = call i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* noundef %85, i32* noundef nonnull %server_sign_type) #8
  %86 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %client_sign_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 26
  %call278 = call i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* noundef %86, i32* noundef nonnull %client_sign_type) #8
  %87 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call280 = call %struct.stack_st_X509_NAME* @SSL_get0_peer_CA_list(%struct.ssl_st* noundef %87) #8
  %cmp281 = icmp eq %struct.stack_st_X509_NAME* %call280, null
  br i1 %cmp281, label %if.end287, label %if.else284

if.else284:                                       ; preds = %if.end270
  %call285 = call %struct.stack_st_X509_NAME* @SSL_dup_CA_list(%struct.stack_st_X509_NAME* noundef nonnull %call280) #8
  br label %if.end287

if.end287:                                        ; preds = %if.end270, %if.else284
  %call285.sink = phi %struct.stack_st_X509_NAME* [ %call285, %if.else284 ], [ null, %if.end270 ]
  %88 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 27
  store %struct.stack_st_X509_NAME* %call285.sink, %struct.stack_st_X509_NAME** %88, align 8
  %89 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %call289 = call %struct.stack_st_X509_NAME* @SSL_get0_peer_CA_list(%struct.ssl_st* noundef %89) #8
  %cmp290 = icmp eq %struct.stack_st_X509_NAME* %call289, null
  br i1 %cmp290, label %if.end296, label %if.else293

if.else293:                                       ; preds = %if.end287
  %call294 = call %struct.stack_st_X509_NAME* @SSL_dup_CA_list(%struct.stack_st_X509_NAME* noundef nonnull %call289) #8
  br label %if.end296

if.end296:                                        ; preds = %if.end287, %if.else293
  %call294.sink = phi %struct.stack_st_X509_NAME* [ %call294, %if.else293 ], [ null, %if.end287 ]
  %90 = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 23
  store %struct.stack_st_X509_NAME* %call294.sink, %struct.stack_st_X509_NAME** %90, align 8
  %91 = load %struct.ssl_st*, %struct.ssl_st** %ssl176, align 8, !tbaa !30
  %call298 = call fastcc i32 @peer_pkey_type(%struct.ssl_st* noundef %91) #9
  %server_cert_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 20
  store i32 %call298, i32* %server_cert_type, align 4, !tbaa !54
  %92 = load %struct.ssl_st*, %struct.ssl_st** %ssl174, align 8, !tbaa !30
  %call300 = call fastcc i32 @peer_pkey_type(%struct.ssl_st* noundef %92) #9
  %client_cert_type = getelementptr inbounds %struct.handshake_result, %struct.handshake_result* %call, i64 0, i32 24
  store i32 %call300, i32* %client_cert_type, align 8, !tbaa !55
  call fastcc void @ctx_data_free_data(%struct.ctx_data_st* noundef nonnull %server_ctx_data) #9
  call fastcc void @ctx_data_free_data(%struct.ctx_data_st* noundef nonnull %server2_ctx_data) #9
  call fastcc void @ctx_data_free_data(%struct.ctx_data_st* noundef nonnull %client_ctx_data) #9
  call fastcc void @peer_free_data(%struct.peer_st* noundef nonnull %server) #9
  call fastcc void @peer_free_data(%struct.peer_st* noundef nonnull %client) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end296, %if.then9
  %retval.0 = phi %struct.handshake_result* [ %call, %if.end296 ], [ null, %if.then9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #10
  ret %struct.handshake_result* %retval.0
}

declare dso_local void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @configure_handshake_ctx(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.SSL_TEST_CTX* nocapture noundef readonly %test, %struct.SSL_TEST_EXTRA_CONF* noundef %extra, %struct.ctx_data_st* noundef %server_ctx_data, %struct.ctx_data_st* noundef %server2_ctx_data, %struct.ctx_data_st* noundef %client_ctx_data) unnamed_addr #0 {
entry:
  %alpn_protos = alloca i8*, align 8
  %alpn_protos_len = alloca i64, align 8
  %max_fragment_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test, i64 0, i32 3
  %0 = load i32, i32* %max_fragment_size, align 4, !tbaa !56
  %conv = sext i32 %0 to i64
  %call = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 52, i64 noundef %conv, i8* noundef null) #8
  %conv1 = trunc i64 %call to i32
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv1, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq %struct.ssl_ctx_st* %server2_ctx, null
  br i1 %cmp.not, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load i32, i32* %max_fragment_size, align 4, !tbaa !56
  %conv6 = sext i32 %1 to i64
  %call7 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %server2_ctx, i32 noundef 52, i64 noundef %conv6, i8* noundef null) #8
  %conv8 = trunc i64 %call7 to i32
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv8, i32 noundef 1) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.then4, %if.end
  %2 = load i32, i32* %max_fragment_size, align 4, !tbaa !56
  %conv15 = sext i32 %2 to i64
  %call16 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %client_ctx, i32 noundef 52, i64 noundef %conv15, i8* noundef null) #8
  %conv17 = trunc i64 %call16 to i32
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv17, i32 noundef 1) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end13
  %verify_callback = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 0
  %3 = load i32, i32* %verify_callback, align 8, !tbaa !50
  switch i32 %3, label %sw.epilog [
    i32 1, label %sw.epilog.sink.split
    i32 2, label %sw.bb22
    i32 3, label %sw.bb23
  ]

sw.bb22:                                          ; preds = %if.end21
  store i32 1, i32* @n_retries, align 4, !tbaa !25
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %if.end21
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end21, %sw.bb22, %sw.bb23
  %verify_reject_cb.sink = phi i32 (%struct.x509_store_ctx_st*, i8*)* [ @verify_reject_cb, %sw.bb23 ], [ @verify_retry_cb, %sw.bb22 ], [ @verify_accept_cb, %if.end21 ]
  tail call void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* noundef %client_ctx, i32 (%struct.x509_store_ctx_st*, i8*)* noundef nonnull %verify_reject_cb.sink, i8* noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end21
  %max_fragment_len_mode = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 2
  %4 = load i32, i32* %max_fragment_len_mode, align 8, !tbaa !57
  %switch = icmp ult i32 %4, 5
  br i1 %switch, label %sw.bb25, label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog
  %conv28 = trunc i32 %4 to i8
  %call29 = tail call i32 @SSL_CTX_set_tlsext_max_fragment_length(%struct.ssl_ctx_st* noundef %client_ctx, i8 noundef zeroext %conv28) #8
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.epilog, %sw.bb25
  %servername_callback = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 0
  %5 = load i32, i32* %servername_callback, align 8, !tbaa !58
  switch i32 %5, label %sw.epilog40 [
    i32 1, label %sw.bb31
    i32 2, label %sw.bb34
    i32 5, label %sw.bb39
    i32 3, label %sw.bb37
    i32 4, label %sw.bb38
  ]

sw.bb31:                                          ; preds = %sw.epilog30
  %call32 = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 53, void ()* noundef bitcast (i32 (%struct.ssl_st*, i32*, i8*)* @servername_ignore_cb to void ()*)) #8
  %6 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  %call33 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 54, i64 noundef 0, i8* noundef %6) #8
  br label %sw.epilog40

sw.bb34:                                          ; preds = %sw.epilog30
  %call35 = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 53, void ()* noundef bitcast (i32 (%struct.ssl_st*, i32*, i8*)* @servername_reject_cb to void ()*)) #8
  %7 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  %call36 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 54, i64 noundef 0, i8* noundef %7) #8
  br label %sw.epilog40

sw.bb37:                                          ; preds = %sw.epilog30
  %8 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  tail call void @SSL_CTX_set_client_hello_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef nonnull @client_hello_ignore_cb, i8* noundef %8) #8
  br label %sw.epilog40

sw.bb38:                                          ; preds = %sw.epilog30
  %9 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  tail call void @SSL_CTX_set_client_hello_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef nonnull @client_hello_reject_cb, i8* noundef %9) #8
  br label %sw.epilog40

sw.bb39:                                          ; preds = %sw.epilog30
  %10 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  tail call void @SSL_CTX_set_client_hello_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef nonnull @client_hello_nov12_cb, i8* noundef %10) #8
  br label %sw.epilog40

sw.epilog40:                                      ; preds = %sw.bb39, %sw.epilog30, %sw.bb38, %sw.bb37, %sw.bb34, %sw.bb31
  %cert_status = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 4
  %11 = load i32, i32* %cert_status, align 4, !tbaa !59
  %cmp42.not = icmp eq i32 %11, 0
  br i1 %cmp42.not, label %if.end54, label %if.then44

if.then44:                                        ; preds = %sw.epilog40
  %call45 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %client_ctx, i32 noundef 65, i64 noundef 1, i8* noundef null) #8
  %call46 = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %client_ctx, i32 noundef 63, void ()* noundef bitcast (i32 (%struct.ssl_st*, i8*)* @client_ocsp_cb to void ()*)) #8
  %call47 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %client_ctx, i32 noundef 64, i64 noundef 0, i8* noundef null) #8
  %call48 = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 63, void ()* noundef bitcast (i32 (%struct.ssl_st*, i8*)* @server_ocsp_cb to void ()*)) #8
  %12 = load i32, i32* %cert_status, align 4, !tbaa !59
  %cmp51 = icmp eq i32 %12, 1
  %cond = select i1 %cmp51, i8* @dummy_ocsp_resp_good_val, i8* @dummy_ocsp_resp_bad_val
  %call53 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 64, i64 noundef 0, i8* noundef nonnull %cond) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then44, %sw.epilog40
  br i1 %cmp.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end54
  %call58 = tail call i32 @SSL_CTX_set_tlsext_ticket_key_evp_cb(%struct.ssl_ctx_st* noundef nonnull %server2_ctx, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* noundef nonnull @do_not_call_session_ticket_cb) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54
  %broken_session_ticket = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 3
  %13 = load i32, i32* %broken_session_ticket, align 8, !tbaa !60
  %tobool61.not = icmp eq i32 %13, 0
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end59
  %call63 = tail call i32 @SSL_CTX_set_tlsext_ticket_key_evp_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* noundef nonnull @broken_session_ticket_cb) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59
  %npn_protocols = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 1
  %14 = load i8*, i8** %npn_protocols, align 8, !tbaa !61
  %cmp66.not = icmp eq i8* %14, null
  br i1 %cmp66.not, label %if.end79, label %if.then68

if.then68:                                        ; preds = %if.end64
  %npn_protocols71 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 0
  %npn_protocols_len = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 1
  %call72 = tail call fastcc i32 @parse_protos(i8* noundef nonnull %14, i8** noundef %npn_protocols71, i64* noundef nonnull %npn_protocols_len) #9
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv74) #8
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %if.end78

if.end78:                                         ; preds = %if.then68
  %15 = bitcast %struct.ctx_data_st* %server_ctx_data to i8*
  tail call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @server_npn_cb, i8* noundef %15) #8
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end64
  %npn_protocols80 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 2, i32 1
  %16 = load i8*, i8** %npn_protocols80, align 8, !tbaa !62
  %cmp81.not = icmp eq i8* %16, null
  br i1 %cmp81.not, label %if.end97, label %if.then83

if.then83:                                        ; preds = %if.end79
  %npn_protocols86 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 0
  %npn_protocols_len87 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 1
  %call88 = tail call fastcc i32 @parse_protos(i8* noundef nonnull %16, i8** noundef %npn_protocols86, i64* noundef nonnull %npn_protocols_len87) #9
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 588, i8* noundef getelementptr inbounds ([115 x i8], [115 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv90) #8
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then83
  %17 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  %call93 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 589, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %17) #8
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %if.end96

if.end96:                                         ; preds = %lor.lhs.false
  %18 = bitcast %struct.ctx_data_st* %server2_ctx_data to i8*
  tail call void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef %server2_ctx, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef nonnull @server_npn_cb, i8* noundef %18) #8
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end79
  %npn_protocols99 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 3
  %19 = load i8*, i8** %npn_protocols99, align 8, !tbaa !63
  %cmp100.not = icmp eq i8* %19, null
  br i1 %cmp100.not, label %if.end114, label %if.then102

if.then102:                                       ; preds = %if.end97
  %npn_protocols105 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %client_ctx_data, i64 0, i32 0
  %npn_protocols_len106 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %client_ctx_data, i64 0, i32 1
  %call107 = tail call fastcc i32 @parse_protos(i8* noundef nonnull %19, i8** noundef %npn_protocols105, i64* noundef nonnull %npn_protocols_len106) #9
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 597, i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv109) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.end113

if.end113:                                        ; preds = %if.then102
  %20 = bitcast %struct.ctx_data_st* %client_ctx_data to i8*
  tail call void @SSL_CTX_set_next_proto_select_cb(%struct.ssl_ctx_st* noundef %client_ctx, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @client_npn_cb, i8* noundef %20) #8
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end97
  %alpn_protocols = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 2
  %21 = load i8*, i8** %alpn_protocols, align 8, !tbaa !64
  %cmp116.not = icmp eq i8* %21, null
  br i1 %cmp116.not, label %if.end129, label %if.then118

if.then118:                                       ; preds = %if.end114
  %alpn_protocols121 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 2
  %alpn_protocols_len = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 3
  %call122 = tail call fastcc i32 @parse_protos(i8* noundef nonnull %21, i8** noundef nonnull %alpn_protocols121, i64* noundef nonnull %alpn_protocols_len) #9
  %cmp123 = icmp ne i32 %call122, 0
  %conv124 = zext i1 %cmp123 to i32
  %call125 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([115 x i8], [115 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv124) #8
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %if.end128

if.end128:                                        ; preds = %if.then118
  %22 = bitcast %struct.ctx_data_st* %server_ctx_data to i8*
  tail call void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @server_alpn_cb, i8* noundef %22) #8
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end114
  %alpn_protocols131 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 2, i32 2
  %23 = load i8*, i8** %alpn_protocols131, align 8, !tbaa !65
  %cmp132.not = icmp eq i8* %23, null
  br i1 %cmp132.not, label %if.end149, label %if.then134

if.then134:                                       ; preds = %if.end129
  %24 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  %call135 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %24) #8
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.then134
  %25 = load i8*, i8** %alpn_protocols131, align 8, !tbaa !65
  %alpn_protocols140 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 2
  %alpn_protocols_len141 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 3
  %call142 = tail call fastcc i32 @parse_protos(i8* noundef %25, i8** noundef nonnull %alpn_protocols140, i64* noundef nonnull %alpn_protocols_len141) #9
  %cmp143 = icmp ne i32 %call142, 0
  %conv144 = zext i1 %cmp143 to i32
  %call145 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 615, i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv144) #8
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %if.end148

if.end148:                                        ; preds = %lor.lhs.false137
  %26 = bitcast %struct.ctx_data_st* %server2_ctx_data to i8*
  tail call void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef %server2_ctx, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef nonnull @server_alpn_cb, i8* noundef %26) #8
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end129
  %alpn_protocols151 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 4
  %27 = load i8*, i8** %alpn_protocols151, align 8, !tbaa !66
  %cmp152.not = icmp eq i8* %27, null
  br i1 %cmp152.not, label %if.end170, label %if.then154

if.then154:                                       ; preds = %if.end149
  %28 = bitcast i8** %alpn_protos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #10
  store i8* null, i8** %alpn_protos, align 8, !tbaa !16
  %29 = bitcast i64* %alpn_protos_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #10
  store i64 0, i64* %alpn_protos_len, align 8, !tbaa !23
  %call157 = call fastcc i32 @parse_protos(i8* noundef nonnull %27, i8** noundef nonnull %alpn_protos, i64* noundef nonnull %alpn_protos_len) #9
  %cmp158 = icmp ne i32 %call157, 0
  %conv159 = zext i1 %cmp158 to i32
  %call160 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv159) #8
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %cleanup.thread, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %if.then154
  %30 = load i8*, i8** %alpn_protos, align 8, !tbaa !16
  %31 = load i64, i64* %alpn_protos_len, align 8, !tbaa !23
  %conv163 = trunc i64 %31 to i32
  %call164 = tail call i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* noundef %client_ctx, i8* noundef %30, i32 noundef %conv163) #8
  %call165 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 628, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call164, i32 noundef 0) #8
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false162, %if.then154
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  br label %err

cleanup:                                          ; preds = %lor.lhs.false162
  tail call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 630) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #10
  br label %if.end170

if.end170:                                        ; preds = %cleanup, %if.end149
  %session_ticket_app_data = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 1, i32 8
  %32 = load i8*, i8** %session_ticket_app_data, align 8, !tbaa !67
  %cmp172.not = icmp eq i8* %32, null
  br i1 %cmp172.not, label %if.end180, label %if.then174

if.then174:                                       ; preds = %if.end170
  %call177 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 635) #8
  %session_ticket_app_data178 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server_ctx_data, i64 0, i32 6
  store i8* %call177, i8** %session_ticket_app_data178, align 8, !tbaa !68
  %33 = bitcast %struct.ctx_data_st* %server_ctx_data to i8*
  %call179 = tail call i32 @SSL_CTX_set_session_ticket_cb(%struct.ssl_ctx_st* noundef %server_ctx, i32 (%struct.ssl_st*, i8*)* noundef nonnull @generate_session_ticket_cb, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)* noundef nonnull @decrypt_session_ticket_cb, i8* noundef %33) #8
  br label %if.end180

if.end180:                                        ; preds = %if.then174, %if.end170
  %session_ticket_app_data182 = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 2, i32 8
  %34 = load i8*, i8** %session_ticket_app_data182, align 8, !tbaa !70
  %cmp183.not = icmp eq i8* %34, null
  br i1 %cmp183.not, label %if.end195, label %if.then185

if.then185:                                       ; preds = %if.end180
  %35 = bitcast %struct.ssl_ctx_st* %server2_ctx to i8*
  %call186 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 640, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %35) #8
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %err, label %if.end189

if.end189:                                        ; preds = %if.then185
  %36 = load i8*, i8** %session_ticket_app_data182, align 8, !tbaa !70
  %call192 = tail call i8* @CRYPTO_strdup(i8* noundef %36, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 643) #8
  %session_ticket_app_data193 = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %server2_ctx_data, i64 0, i32 6
  store i8* %call192, i8** %session_ticket_app_data193, align 8, !tbaa !68
  %37 = bitcast %struct.ctx_data_st* %server2_ctx_data to i8*
  %call194 = tail call i32 @SSL_CTX_set_session_ticket_cb(%struct.ssl_ctx_st* noundef %server2_ctx, i32 (%struct.ssl_st*, i8*)* noundef null, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)* noundef nonnull @decrypt_session_ticket_cb, i8* noundef %37) #8
  br label %if.end195

if.end195:                                        ; preds = %if.end189, %if.end180
  %call196 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 59, i64 noundef 0, i8* noundef null) #8
  %call197 = tail call i8* @CRYPTO_zalloc(i64 noundef %call196, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 653) #8
  %call198 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 653, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call197) #8
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.then205, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %if.end195
  %call201 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %server_ctx, i32 noundef 59, i64 noundef %call196, i8* noundef %call197) #8
  %conv202 = trunc i64 %call201 to i32
  %call203 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 656, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv202, i32 noundef 1) #8
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.then205, label %if.end206

if.then205:                                       ; preds = %lor.lhs.false200, %if.end195
  tail call void @CRYPTO_free(i8* noundef %call197, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 657) #8
  br label %err

if.end206:                                        ; preds = %lor.lhs.false200
  tail call void @CRYPTO_free(i8* noundef %call197, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 660) #8
  %call207 = tail call i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef %client_ctx) #8
  %cmp208 = icmp ne i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %call210 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 664, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv209) #8
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %if.end213

if.end213:                                        ; preds = %if.end206
  %ct_validation = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 5
  %38 = load i32, i32* %ct_validation, align 8, !tbaa !71
  switch i32 %38, label %sw.epilog231 [
    i32 1, label %sw.bb215
    i32 2, label %sw.bb223
  ]

sw.bb215:                                         ; preds = %if.end213
  %call216 = tail call i32 @SSL_CTX_enable_ct(%struct.ssl_ctx_st* noundef %client_ctx, i32 noundef 0) #8
  %cmp217 = icmp ne i32 %call216, 0
  %conv218 = zext i1 %cmp217 to i32
  %call219 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 669, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv218) #8
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %err, label %sw.epilog231

sw.bb223:                                         ; preds = %if.end213
  %call224 = tail call i32 @SSL_CTX_enable_ct(%struct.ssl_ctx_st* noundef %client_ctx, i32 noundef 1) #8
  %cmp225 = icmp ne i32 %call224, 0
  %conv226 = zext i1 %cmp225 to i32
  %call227 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 673, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv226) #8
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %err, label %sw.epilog231

sw.epilog231:                                     ; preds = %sw.bb223, %sw.bb215, %if.end213
  %call232 = tail call i32 @configure_handshake_ctx_for_srp(%struct.ssl_ctx_st* noundef %server_ctx, %struct.ssl_ctx_st* noundef %server2_ctx, %struct.ssl_ctx_st* noundef %client_ctx, %struct.SSL_TEST_EXTRA_CONF* noundef nonnull %extra, %struct.ctx_data_st* noundef %server_ctx_data, %struct.ctx_data_st* noundef %server2_ctx_data, %struct.ctx_data_st* noundef %client_ctx_data) #8
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %err, label %cleanup236

err:                                              ; preds = %cleanup.thread, %sw.epilog231, %sw.bb223, %sw.bb215, %if.end206, %if.then185, %if.then134, %lor.lhs.false137, %if.then118, %if.then102, %if.then83, %lor.lhs.false, %if.then68, %if.end13, %if.then4, %entry, %if.then205
  br label %cleanup236

cleanup236:                                       ; preds = %sw.epilog231, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %sw.epilog231 ]
  ret i32 %retval.0
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_peer(%struct.peer_st* nocapture noundef writeonly %peer, %struct.ssl_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %ctx) #8
  %0 = bitcast %struct.ssl_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 730, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i8* @CRYPTO_zalloc(i64 noundef 65536, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 731) #8
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i64 0, i64 0), i8* noundef %call2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i8* @CRYPTO_zalloc(i64 noundef 65536, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 732) #8
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i64 0, i64 0), i8* noundef %call6) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %ssl9 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  store %struct.ssl_st* %call, %struct.ssl_st** %ssl9, align 8, !tbaa !30
  %write_buf10 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 1
  store i8* %call2, i8** %write_buf10, align 8, !tbaa !72
  %read_buf11 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 3
  store i8* %call6, i8** %read_buf11, align 8, !tbaa !73
  %read_buf_len = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 4
  store i32 65536, i32* %read_buf_len, align 8, !tbaa !74
  %write_buf_len = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 2
  store i32 65536, i32* %write_buf_len, align 8, !tbaa !75
  br label %cleanup

err:                                              ; preds = %entry, %lor.lhs.false, %lor.lhs.false5
  %read_buf.0 = phi i8* [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %write_buf.0 = phi i8* [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  tail call void @SSL_free(%struct.ssl_st* noundef %call) #8
  tail call void @CRYPTO_free(i8* noundef %write_buf.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 742) #8
  tail call void @CRYPTO_free(i8* noundef %read_buf.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 743) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @configure_handshake_ssl(%struct.ssl_st* noundef %client, %struct.SSL_TEST_EXTRA_CONF* nocapture noundef readonly %extra) unnamed_addr #0 {
entry:
  %servername = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 1
  %0 = load i32, i32* %servername, align 4, !tbaa !76
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @ssl_servername_name(i32 noundef %0) #8
  %call4 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %client, i32 noundef 55, i64 noundef 0, i8* noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %enable_pha = getelementptr inbounds %struct.SSL_TEST_EXTRA_CONF, %struct.SSL_TEST_EXTRA_CONF* %extra, i64 0, i32 0, i32 9
  %1 = load i32, i32* %enable_pha, align 8, !tbaa !77
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @SSL_set_post_handshake_auth(%struct.ssl_st* noundef %client, i32 noundef 1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  ret void
}

declare dso_local i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_set_session(%struct.ssl_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_accept_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @CRYPTO_get_ex_new_index(i32 noundef, i64 noundef, i8* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_set_ex_data(%struct.ssl_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_info_callback(%struct.ssl_st* noundef, void (%struct.ssl_st*, i32, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @info_cb(%struct.ssl_st* noundef %s, i32 noundef %where, i32 noundef %ret) #0 {
entry:
  %and = and i32 %where, 16384
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @ex_data_idx, align 4, !tbaa !25
  %call = tail call i8* @SSL_get_ex_data(%struct.ssl_st* noundef %s, i32 noundef %0) #8
  %and1 = and i32 %where, 8
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %alert_sent = bitcast i8* %call to i32*
  store i32 %ret, i32* %alert_sent, align 4, !tbaa !33
  %call4 = tail call i8* @SSL_alert_type_string(i32 noundef %ret) #8
  %call5 = tail call i32 @strcmp(i8* noundef %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #11
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %call6 = tail call i8* @SSL_alert_desc_string(i32 noundef %ret) #8
  %call7 = tail call i32 @strcmp(i8* noundef %call6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #11
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %if.then3
  %num_fatal_alerts_sent = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %num_fatal_alerts_sent to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !36
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %1, align 4, !tbaa !36
  br label %if.end11

if.else:                                          ; preds = %if.then
  %alert_received = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %alert_received to i32*
  store i32 %ret, i32* %3, align 4, !tbaa !38
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_connect_step(%struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx, %struct.peer_st* nocapture noundef %peer, i32 noundef %phase) unnamed_addr #0 {
entry:
  switch i32 %phase, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  tail call fastcc void @do_handshake_step(%struct.peer_st* noundef %peer) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  tail call fastcc void @do_app_data_step(%struct.peer_st* noundef %peer) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call fastcc void @do_reneg_setup_step(%struct.SSL_TEST_CTX* noundef %test_ctx, %struct.peer_st* noundef %peer) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call fastcc void @do_handshake_step(%struct.peer_st* noundef %peer) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  tail call fastcc void @do_app_data_step(%struct.peer_st* noundef %peer) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call fastcc void @do_shutdown_step(%struct.peer_st* noundef %peer) #9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1134, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0)) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @handshake_status(i32 noundef %last_status, i32 noundef %previous_status, i32 noundef %client_spoke_last) unnamed_addr #3 {
entry:
  switch i32 %last_status, label %return [
    i32 2, label %sw.bb8
    i32 1, label %sw.bb7
    i32 0, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %entry
  %0 = icmp ult i32 %previous_status, 4
  br i1 %0, label %switch.lookup, label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  switch i32 %previous_status, label %return [
    i32 2, label %sw.bb15
    i32 3, label %sw.bb10
    i32 0, label %sw.bb11
    i32 1, label %sw.bb14
  ]

sw.bb10:                                          ; preds = %sw.bb8
  %tobool.not = icmp eq i32 %client_spoke_last, 0
  %cond = select i1 %tobool.not, i32 3, i32 1
  br label %return

sw.bb11:                                          ; preds = %sw.bb8
  %tobool12.not = icmp eq i32 %client_spoke_last, 0
  %cond13 = select i1 %tobool12.not, i32 2, i32 1
  br label %return

sw.bb14:                                          ; preds = %sw.bb8
  br label %return

sw.bb15:                                          ; preds = %sw.bb8
  %tobool16.not = icmp eq i32 %client_spoke_last, 0
  %cond17 = select i1 %tobool16.not, i32 1, i32 2
  br label %return

switch.lookup:                                    ; preds = %sw.bb2
  %1 = sext i32 %previous_status to i64
  %switch.gep = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.handshake_status, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.bb2, %entry, %sw.bb8, %sw.bb15, %sw.bb14, %sw.bb11, %sw.bb10, %sw.bb7
  %retval.0 = phi i32 [ %cond17, %sw.bb15 ], [ 4, %sw.bb14 ], [ %cond13, %sw.bb11 ], [ %cond, %sw.bb10 ], [ 4, %sw.bb7 ], [ 3, %sw.bb8 ], [ 3, %sw.bb2 ], [ 3, %entry ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @next_phase(%struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx, i32 noundef %phase) unnamed_addr #0 {
entry:
  switch i32 %phase, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %return
    i32 2, label %sw.bb4
    i32 3, label %sw.bb9
    i32 4, label %sw.bb10
    i32 5, label %sw.bb11
    i32 6, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @renegotiate_op(%struct.SSL_TEST_CTX* noundef %test_ctx) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %sw.bb
  %call1 = tail call fastcc i32 @post_handshake_op(%struct.SSL_TEST_CTX* noundef %test_ctx) #9
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 4, i32 1
  br label %return

sw.bb4:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @post_handshake_op(%struct.SSL_TEST_CTX* noundef %test_ctx) #9
  %tobool6.not = icmp eq i32 %call5, 0
  %. = select i1 %tobool6.not, i32 3, i32 4
  br label %return

sw.bb9:                                           ; preds = %entry
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %return

sw.bb11:                                          ; preds = %entry
  br label %return

sw.bb12:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1105, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0)) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb12
  br label %return

return:                                           ; preds = %lor.lhs.false, %sw.bb4, %entry, %sw.bb, %sw.epilog, %sw.bb11, %sw.bb10, %sw.bb9
  %retval.0 = phi i32 [ -1, %sw.epilog ], [ 6, %sw.bb11 ], [ 5, %sw.bb10 ], [ 4, %sw.bb9 ], [ 1, %sw.bb ], [ 2, %entry ], [ %., %sw.bb4 ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_SESSION_get0_ticket(%struct.ssl_session_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare dso_local %struct.comp_method_st* @SSL_get_current_compression(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_get0_next_proto_negotiated(%struct.ssl_st* noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @dup_str(i8* noundef %in, i64 noundef %len) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @OPENSSL_strnlen(i8* noundef %in, i64 noundef %len) #8
  %call1 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1224, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 noundef %call, i64 noundef %len) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i8* @CRYPTO_strndup(i8* noundef %in, i64 noundef %len, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1225) #8
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1225, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i8* noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call3, %if.then2 ], [ null, %if.end ]
  ret i8* %retval.0
}

declare dso_local void @SSL_get0_alpn_selected(%struct.ssl_st* noundef, i8** noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_get0_ticket_appdata(%struct.ssl_session_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_session_reused(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_cipher_st* @SSL_get_current_cipher(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_session_st* @SSL_SESSION_dup(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkey_type(%struct.evp_pkey_st* noundef %pkey) unnamed_addr #0 {
entry:
  %name = alloca [80 x i8], align 16
  %name_len = alloca i64, align 8
  %call = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pkey, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #10
  %1 = bitcast i64* %name_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %call1 = call i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef %pkey, i8* noundef nonnull %0, i64 noundef 80, i64* noundef nonnull %name_len) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call5 = call i32 @OBJ_txt2nid(i8* noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #10
  br label %return

if.end7:                                          ; preds = %entry
  %call8 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %pkey) #8
  br label %return

return:                                           ; preds = %if.end7, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call8, %if.end7 ]
  ret i32 %retval.1
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_peer_signature_type_nid(%struct.ssl_st* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509_NAME* @SSL_get0_peer_CA_list(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509_NAME* @SSL_dup_CA_list(%struct.stack_st_X509_NAME* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @peer_pkey_type(%struct.ssl_st* noundef %s) unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef %s) #8
  %cmp.not = icmp eq %struct.x509_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %call) #8
  %call2 = tail call fastcc i32 @pkey_type(%struct.evp_pkey_st* noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ctx_data_free_data(%struct.ctx_data_st* nocapture noundef %ctx_data) unnamed_addr #0 {
entry:
  %npn_protocols = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %ctx_data, i64 0, i32 0
  %0 = load i8*, i8** %npn_protocols, align 8, !tbaa !78
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 66) #8
  store i8* null, i8** %npn_protocols, align 8, !tbaa !78
  %alpn_protocols = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %ctx_data, i64 0, i32 2
  %1 = load i8*, i8** %alpn_protocols, align 8, !tbaa !79
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 68) #8
  store i8* null, i8** %alpn_protocols, align 8, !tbaa !79
  %srp_user = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %ctx_data, i64 0, i32 4
  %2 = load i8*, i8** %srp_user, align 8, !tbaa !80
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #8
  store i8* null, i8** %srp_user, align 8, !tbaa !80
  %srp_password = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %ctx_data, i64 0, i32 5
  %3 = load i8*, i8** %srp_password, align 8, !tbaa !81
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 72) #8
  store i8* null, i8** %srp_password, align 8, !tbaa !81
  %session_ticket_app_data = getelementptr inbounds %struct.ctx_data_st, %struct.ctx_data_st* %ctx_data, i64 0, i32 6
  %4 = load i8*, i8** %session_ticket_app_data, align 8, !tbaa !68
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 74) #8
  store i8* null, i8** %session_ticket_app_data, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @peer_free_data(%struct.peer_st* nocapture noundef readonly %peer) unnamed_addr #0 {
entry:
  %ssl = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  tail call void @SSL_free(%struct.ssl_st* noundef %0) #8
  %write_buf = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 1
  %1 = load i8*, i8** %write_buf, align 8, !tbaa !72
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 750) #8
  %read_buf = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 3
  %2 = load i8*, i8** %read_buf, align 8, !tbaa !73
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 751) #8
  ret void
}

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_set_cert_verify_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.x509_store_ctx_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @verify_accept_cb(%struct.x509_store_ctx_st* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %arg) #3 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_retry_cb(%struct.x509_store_ctx_st* noundef %ctx, i8* nocapture noundef readnone %arg) #0 {
entry:
  %0 = load i32, i32* @n_retries, align 4, !tbaa !25
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @n_retries, align 4, !tbaa !25
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @X509_STORE_CTX_set_error(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef 50) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_reject_cb(%struct.x509_store_ctx_st* noundef %ctx, i8* nocapture noundef readnone %arg) #0 {
entry:
  tail call void @X509_STORE_CTX_set_error(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef 50) #8
  ret i32 0
}

declare dso_local i32 @SSL_CTX_set_tlsext_max_fragment_length(%struct.ssl_ctx_st* noundef, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @servername_ignore_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef readnone %ad, i8* noundef %arg) #0 {
entry:
  %call = tail call fastcc i32 @select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @servername_reject_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef readnone %ad, i8* noundef %arg) #0 {
entry:
  %call = tail call fastcc i32 @select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef 0) #9
  ret i32 %call
}

declare dso_local void @SSL_CTX_set_client_hello_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_hello_ignore_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %al, i8* noundef %arg) #0 {
entry:
  %call = tail call fastcc i32 @client_hello_select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  store i32 112, i32* %al, align 4, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_hello_reject_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %al, i8* noundef %arg) #0 {
entry:
  %call = tail call fastcc i32 @client_hello_select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  store i32 112, i32* %al, align 4, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_hello_nov12_cb(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %al, i8* noundef %arg) #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = tail call i32 @SSL_client_hello_get0_legacy_version(%struct.ssl_st* noundef %s) #8
  %1 = add i32 %call, -772
  %2 = icmp ult i32 %1, -4
  br i1 %2, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i64 @SSL_client_hello_get0_session_id(%struct.ssl_st* noundef %s, i8** noundef nonnull %p) #8
  %3 = load i8*, i8** %p, align 8, !tbaa !16
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %cleanup.sink.split, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %call5 = call i64 @SSL_client_hello_get0_random(%struct.ssl_st* noundef %s, i8** noundef nonnull %p) #8
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %cleanup.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = call i64 @SSL_client_hello_get0_ciphers(%struct.ssl_st* noundef %s, i8** noundef nonnull %p) #8
  %cmp9 = icmp eq i64 %call8, 0
  br i1 %cmp9, label %cleanup.sink.split, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call i64 @SSL_client_hello_get0_compression_methods(%struct.ssl_st* noundef %s, i8** noundef nonnull %p) #8
  %cmp12 = icmp eq i64 %call11, 0
  br i1 %cmp12, label %cleanup.sink.split, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false10
  %call15 = call fastcc i32 @client_hello_select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef 0) #9
  %call16 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 124, i64 noundef 770, i8* noundef null) #8
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end14, %if.end, %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false10, %entry
  %.sink = phi i32 [ 70, %entry ], [ 80, %lor.lhs.false10 ], [ 80, %lor.lhs.false7 ], [ 80, %lor.lhs.false4 ], [ 80, %if.end ], [ 112, %if.end14 ]
  store i32 %.sink, i32* %al, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_ocsp_cb(%struct.ssl_st* noundef %s, i8* nocapture noundef readnone %arg) #0 {
entry:
  %resp = alloca i8*, align 8
  %0 = bitcast i8** %resp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 70, i64 noundef 0, i8* noundef nonnull %0) #8
  %conv = trunc i64 %call to i32
  %cmp.not = icmp eq i32 %conv, 1
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %resp, align 8, !tbaa !16
  %2 = load i8, i8* %1, align 1, !tbaa !82
  %3 = load i8, i8* @dummy_ocsp_resp_good_val, align 1, !tbaa !82
  %cmp4.not = icmp eq i8 %2, %3
  %spec.select = zext i1 %cmp4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @server_ocsp_cb(%struct.ssl_st* noundef %s, i8* nocapture noundef readonly %arg) #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 274) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %arg, align 1, !tbaa !82
  store i8 %0, i8* %call, align 1, !tbaa !82
  %call1 = tail call i64 @SSL_ctrl(%struct.ssl_st* noundef %s, i32 noundef 71, i64 noundef 1, i8* noundef nonnull %call) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 282) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ 2, %if.then2 ], [ 2, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_CTX_set_tlsext_ticket_key_evp_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @do_not_call_session_ticket_cb(%struct.ssl_st* noundef %s, i8* nocapture noundef readnone %key_name, i8* nocapture noundef readnone %iv, %struct.evp_cipher_ctx_st* nocapture noundef readnone %ctx, %struct.evp_mac_ctx_st* nocapture noundef readnone %hctx, i32 noundef %enc) #0 {
entry:
  %0 = load i32, i32* @ex_data_idx, align 4, !tbaa !25
  %call = tail call i8* @SSL_get_ex_data(%struct.ssl_st* noundef %s, i32 noundef %0) #8
  %session_ticket_do_not_call = getelementptr inbounds i8, i8* %call, i64 12
  %1 = bitcast i8* %session_ticket_do_not_call to i32*
  store i32 1, i32* %1, align 4, !tbaa !48
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @broken_session_ticket_cb(%struct.ssl_st* nocapture noundef readnone %s, i8* nocapture noundef readnone %key_name, i8* nocapture noundef readnone %iv, %struct.evp_cipher_ctx_st* nocapture noundef readnone %ctx, %struct.evp_mac_ctx_st* nocapture noundef readnone %hctx, i32 noundef %enc) #3 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_protos(i8* noundef %protos, i8** nocapture noundef %out, i64* nocapture noundef writeonly %outlen) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %protos) #11
  %0 = load i8*, i8** %out, align 8, !tbaa !16
  %call1 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %add = add i64 %call, 1
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 346) #8
  store i8* %call2, i8** %out, align 8, !tbaa !16
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  store i64 %add, i64* %outlen, align 8, !tbaa !23
  %1 = load i8*, i8** %out, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %call6 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %protos, i64 noundef %call) #8
  %cmp.not61 = icmp eq i64 %call, 0
  br i1 %cmp.not61, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end21
  %prefix.064 = phi i64 [ %prefix.1, %if.end21 ], [ 0, %if.end ]
  %i.062 = phi i64 [ %inc, %if.end21 ], [ 1, %if.end ]
  %2 = load i8*, i8** %out, align 8, !tbaa !16
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %i.062
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !82
  %cmp8 = icmp eq i8 %3, 44
  br i1 %cmp8, label %if.then10, label %if.end21

if.then10:                                        ; preds = %while.body
  %sub = add i64 %i.062, -1
  %conv11 = trunc i64 %sub to i32
  %conv12 = trunc i64 %prefix.064 to i32
  %call13 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv11, i32 noundef %conv12) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.then10
  %sub18 = sub i64 %sub, %prefix.064
  %conv19 = trunc i64 %sub18 to i8
  %4 = load i8*, i8** %out, align 8, !tbaa !16
  %arrayidx20 = getelementptr inbounds i8, i8* %4, i64 %prefix.064
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !82
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %while.body
  %prefix.1 = phi i64 [ %i.062, %if.end16 ], [ %prefix.064, %while.body ]
  %inc = add i64 %i.062, 1
  %cmp.not = icmp ugt i64 %inc, %call
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !83

while.end:                                        ; preds = %if.end21, %if.end
  %prefix.0.lcssa = phi i64 [ 0, %if.end ], [ %prefix.1, %if.end21 ]
  %conv22 = trunc i64 %call to i32
  %conv23 = trunc i64 %prefix.0.lcssa to i32
  %call24 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv22, i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %while.end
  %sub28 = sub i64 %call, %prefix.0.lcssa
  %conv29 = trunc i64 %sub28 to i8
  %5 = load i8*, i8** %out, align 8, !tbaa !16
  %arrayidx30 = getelementptr inbounds i8, i8* %5, i64 %prefix.0.lcssa
  store i8 %conv29, i8* %arrayidx30, align 1, !tbaa !82
  br label %cleanup

err:                                              ; preds = %if.then10, %while.end
  %6 = load i8*, i8** %out, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 373) #8
  store i8* null, i8** %out, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %err, %if.end27
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end27 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local void @SSL_CTX_set_next_protos_advertised_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @server_npn_cb(%struct.ssl_st* nocapture noundef readnone %s, i8** nocapture noundef writeonly %data, i32* nocapture noundef writeonly %len, i8* nocapture noundef readonly %arg) #6 {
entry:
  %npn_protocols = bitcast i8* %arg to i8**
  %0 = load i8*, i8** %npn_protocols, align 8, !tbaa !78
  store i8* %0, i8** %data, align 8, !tbaa !16
  %npn_protocols_len = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %npn_protocols_len to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !85
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !25
  ret i32 0
}

declare dso_local void @SSL_CTX_set_next_proto_select_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @client_npn_cb(%struct.ssl_st* nocapture noundef readnone %s, i8** noundef %out, i8* noundef %outlen, i8* noundef %in, i32 noundef %inlen, i8* nocapture noundef readonly %arg) #0 {
entry:
  %npn_protocols = bitcast i8* %arg to i8**
  %0 = load i8*, i8** %npn_protocols, align 8, !tbaa !78
  %npn_protocols_len = getelementptr inbounds i8, i8* %arg, i64 8
  %1 = bitcast i8* %npn_protocols_len to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !85
  %conv = trunc i64 %2 to i32
  %call = tail call i32 @SSL_select_next_proto(i8** noundef %out, i8* noundef %outlen, i8* noundef %in, i32 noundef %inlen, i8* noundef %0, i32 noundef %conv) #8
  %3 = add i32 %call, -1
  %4 = icmp ult i32 %3, 2
  %lor.ext = zext i1 %4 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.40, i64 0, i64 0), i32 noundef %lor.ext) #8
  %tobool.not = icmp eq i32 %call6, 0
  %cond = select i1 %tobool.not, i32 2, i32 0
  ret i32 %cond
}

declare dso_local void @SSL_CTX_set_alpn_select_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @server_alpn_cb(%struct.ssl_st* nocapture noundef readnone %s, i8** nocapture noundef writeonly %out, i8* noundef %outlen, i8* noundef %in, i32 noundef %inlen, i8* nocapture noundef readonly %arg) #0 {
entry:
  %tmp_out = alloca i8*, align 8
  %0 = bitcast i8** %tmp_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %alpn_protocols = getelementptr inbounds i8, i8* %arg, i64 16
  %1 = bitcast i8* %alpn_protocols to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !79
  %alpn_protocols_len = getelementptr inbounds i8, i8* %arg, i64 24
  %3 = bitcast i8* %alpn_protocols_len to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !86
  %conv = trunc i64 %4 to i32
  %call = call i32 @SSL_select_next_proto(i8** noundef nonnull %tmp_out, i8* noundef %outlen, i8* noundef %2, i32 noundef %conv, i8* noundef %in, i32 noundef %inlen) #8
  %5 = load i8*, i8** %tmp_out, align 8, !tbaa !16
  store i8* %5, i8** %out, align 8, !tbaa !16
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %cond
}

declare dso_local i32 @SSL_CTX_set_alpn_protos(%struct.ssl_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_set_session_ticket_cb(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*)* noundef, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @generate_session_ticket_cb(%struct.ssl_st* noundef %s, i8* nocapture noundef readonly %arg) #0 {
entry:
  %call = tail call %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* noundef %s) #8
  %session_ticket_app_data = getelementptr inbounds i8, i8* %arg, i64 48
  %0 = bitcast i8* %session_ticket_app_data to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !68
  %cmp = icmp eq %struct.ssl_session_st* %call, null
  %cmp1 = icmp eq i8* %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* noundef nonnull %1) #11
  %call3 = tail call i32 @SSL_SESSION_set1_ticket_appdata(%struct.ssl_session_st* noundef nonnull %call, i8* noundef nonnull %1, i64 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @decrypt_session_ticket_cb(%struct.ssl_st* nocapture noundef readnone %s, %struct.ssl_session_st* nocapture noundef readnone %ss, i8* nocapture noundef readnone %keyname, i64 noundef %keyname_len, i32 noundef %status, i8* nocapture noundef readnone %arg) #3 {
entry:
  %switch.tableidx = add i32 %status, -3
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.decrypt_session_ticket_cb, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @SSL_CTX_set_default_ctlog_list_file(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_enable_ct(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @configure_handshake_ctx_for_srp(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.SSL_TEST_EXTRA_CONF* noundef, %struct.ctx_data_st* noundef, %struct.ctx_data_st* noundef, %struct.ctx_data_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_set_error(%struct.x509_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef %ignore) unnamed_addr #0 {
entry:
  %call = tail call i8* @SSL_get_servername(%struct.ssl_st* noundef %s, i32 noundef 0) #8
  %0 = load i32, i32* @ex_data_idx, align 4, !tbaa !25
  %call1 = tail call i8* @SSL_get_ex_data(%struct.ssl_st* noundef %s, i32 noundef %0) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #11
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %1 = bitcast i8* %arg to %struct.ssl_ctx_st*
  %call6 = tail call %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %1) #8
  %call7 = tail call i64 @SSL_clear_options(%struct.ssl_st* noundef %s, i64 noundef 4294967295) #8
  %call8 = tail call i64 @SSL_CTX_get_options(%struct.ssl_ctx_st* noundef %1) #8
  %call9 = tail call i64 @SSL_set_options(%struct.ssl_st* noundef %s, i64 noundef %call8) #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %call11 = tail call i32 @strcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #11
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cleanup.sink.split, label %if.else15

if.else15:                                        ; preds = %if.else
  %tobool.not = icmp eq i32 %ignore, 0
  br i1 %tobool.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else15, %if.else, %entry, %if.then5
  %.sink = phi i32 [ 2, %if.then5 ], [ 1, %entry ], [ 1, %if.else ], [ 1, %if.else15 ]
  %retval.0.ph = phi i32 [ 0, %if.then5 ], [ 3, %entry ], [ 0, %if.else ], [ 3, %if.else15 ]
  %servername17 = getelementptr inbounds i8, i8* %call1, i64 16
  %2 = bitcast i8* %servername17 to i32*
  store i32 %.sink, i32* %2, align 4, !tbaa !45
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else15
  %retval.0 = phi i32 [ 2, %if.else15 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local i8* @SSL_get_servername(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_get_ex_data(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_clear_options(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_set_options(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_CTX_get_options(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @client_hello_select_server_ctx(%struct.ssl_st* noundef %s, i8* noundef %arg, i32 noundef %ignore) unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %remaining = alloca i64, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = bitcast i64* %remaining to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = load i32, i32* @ex_data_idx, align 4, !tbaa !25
  %call = tail call i8* @SSL_get_ex_data(%struct.ssl_st* noundef %s, i32 noundef %2) #8
  %call1 = call i32 @SSL_client_hello_get0_ext(%struct.ssl_st* noundef %s, i32 noundef 0, i8** noundef nonnull %p, i64* noundef nonnull %remaining) #8
  %tobool = icmp eq i32 %call1, 0
  %3 = load i64, i64* %remaining, align 8
  %cmp = icmp ult i64 %3, 3
  %or.cond = select i1 %tobool, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !tbaa !16
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !16
  %5 = load i8, i8* %4, align 1, !tbaa !82
  %conv = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i64 2
  store i8* %incdec.ptr3, i8** %p, align 8, !tbaa !16
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !82
  %conv4 = zext i8 %6 to i64
  %add = or i64 %shl, %conv4
  %add5 = add nuw nsw i64 %add, 2
  %cmp6.not = icmp eq i64 %add5, %3
  br i1 %cmp6.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end
  store i64 %add, i64* %remaining, align 8, !tbaa !23
  %cmp10 = icmp eq i64 %add, 0
  br i1 %cmp10, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %incdec.ptr13 = getelementptr inbounds i8, i8* %4, i64 3
  store i8* %incdec.ptr13, i8** %p, align 8, !tbaa !16
  %7 = load i8, i8* %incdec.ptr3, align 1, !tbaa !82
  %cmp15.not = icmp eq i8 %7, 0
  br i1 %cmp15.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %lor.lhs.false12
  %dec = add nsw i64 %add, -1
  store i64 %dec, i64* %remaining, align 8, !tbaa !23
  %cmp19 = icmp ult i64 %dec, 3
  br i1 %cmp19, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end18
  %incdec.ptr23 = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %incdec.ptr23, i8** %p, align 8, !tbaa !16
  %8 = load i8, i8* %incdec.ptr13, align 1, !tbaa !82
  %conv24 = zext i8 %8 to i64
  %shl25 = shl nuw nsw i64 %conv24, 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %4, i64 5
  store i8* %incdec.ptr27, i8** %p, align 8, !tbaa !16
  %9 = load i8, i8* %incdec.ptr23, align 1, !tbaa !82
  %conv28 = zext i8 %9 to i64
  %add29 = or i64 %shl25, %conv28
  %add30 = add nuw nsw i64 %add29, 2
  %cmp31 = icmp ugt i64 %add30, %dec
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.end22
  store i64 %add29, i64* %remaining, align 8, !tbaa !23
  %call35 = call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #11
  %cmp36 = icmp eq i64 %add29, %call35
  br i1 %cmp36, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end34
  %call38 = call i32 @strncmp(i8* noundef nonnull %incdec.ptr27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i64 noundef %add29) #11
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %land.lhs.true
  %10 = bitcast i8* %arg to %struct.ssl_ctx_st*
  %call42 = call %struct.ssl_ctx_st* @SSL_set_SSL_CTX(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %10) #8
  %call43 = call i64 @SSL_clear_options(%struct.ssl_st* noundef %s, i64 noundef 4294967295) #8
  %call44 = call i64 @SSL_CTX_get_options(%struct.ssl_ctx_st* noundef %10) #8
  %call45 = call i64 @SSL_set_options(%struct.ssl_st* noundef %s, i64 noundef %call44) #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true, %if.end34
  %call47 = call i64 @strlen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)) #11
  %cmp48 = icmp eq i64 %add29, %call47
  br i1 %cmp48, label %land.lhs.true50, label %if.else56

land.lhs.true50:                                  ; preds = %if.else
  %call51 = call i32 @strncmp(i8* noundef nonnull %incdec.ptr27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i64 noundef %add29) #11
  %cmp52 = icmp ne i32 %call51, 0
  %tobool57.not = icmp eq i32 %ignore, 0
  %or.cond89 = and i1 %cmp52, %tobool57.not
  br i1 %or.cond89, label %cleanup, label %cleanup.sink.split

if.else56:                                        ; preds = %if.else
  %tobool57.not.old = icmp eq i32 %ignore, 0
  br i1 %tobool57.not.old, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else56, %land.lhs.true50, %if.then41
  %.sink = phi i32 [ 2, %if.then41 ], [ 1, %land.lhs.true50 ], [ 1, %if.else56 ]
  %servername59 = getelementptr inbounds i8, i8* %call, i64 16
  %11 = bitcast i8* %servername59 to i32*
  store i32 %.sink, i32* %11, align 4, !tbaa !45
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true50, %cleanup.sink.split, %if.else56, %if.end22, %if.end18, %if.end9, %lor.lhs.false12, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false12 ], [ 0, %if.end9 ], [ 0, %if.end18 ], [ 0, %if.end22 ], [ 0, %if.else56 ], [ 1, %cleanup.sink.split ], [ 0, %land.lhs.true50 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare dso_local i32 @SSL_client_hello_get0_ext(%struct.ssl_st* noundef, i32 noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @SSL_client_hello_get0_legacy_version(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_client_hello_get0_session_id(%struct.ssl_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_client_hello_get0_random(%struct.ssl_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_client_hello_get0_ciphers(%struct.ssl_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_client_hello_get0_compression_methods(%struct.ssl_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @SSL_select_next_proto(i8** noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_SESSION_set1_ticket_appdata(%struct.ssl_session_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i8* @ssl_servername_name(i32 noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_post_handshake_auth(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_alert_type_string(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @SSL_alert_desc_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_handshake_step(%struct.peer_st* nocapture noundef %peer) unnamed_addr #0 {
entry:
  %status = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 7
  %0 = load i32, i32* %status, align 4, !tbaa !32
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 760, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i32 noundef %0, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end18.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %ssl = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %call2 = tail call i32 @SSL_do_handshake(%struct.ssl_st* noundef %1) #8
  switch i32 %call2, label %if.else9 [
    i32 1, label %if.end18.sink.split
    i32 0, label %if.then7
  ]

if.then7:                                         ; preds = %if.else
  br label %if.end18.sink.split

if.else9:                                         ; preds = %if.else
  %2 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %call11 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %2, i32 noundef %call2) #8
  switch i32 %call11, label %if.end18.sink.split [
    i32 12, label %if.end18
    i32 2, label %if.end18
  ]

if.end18.sink.split:                              ; preds = %if.else9, %if.else, %entry, %if.then7
  %.sink = phi i32 [ 2, %if.then7 ], [ 4, %entry ], [ 0, %if.else ], [ 2, %if.else9 ]
  store i32 %.sink, i32* %status, align 4, !tbaa !32
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else9, %if.else9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_app_data_step(%struct.peer_st* nocapture noundef %peer) unnamed_addr #0 {
entry:
  %status = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 7
  %0 = load i32, i32* %status, align 4, !tbaa !32
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 793, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i32 noundef %0, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup52.sink.split, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %bytes_to_read = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 6
  %ssl = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %read_buf = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 3
  %read_buf_len = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 4
  %.pr = load i32, i32* %bytes_to_read, align 8, !tbaa !27
  %tobool2.not96 = icmp eq i32 %.pr, 0
  br i1 %tobool2.not96, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end24
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %2 = load i8*, i8** %read_buf, align 8, !tbaa !73
  %3 = load i32, i32* %read_buf_len, align 8, !tbaa !74
  %call3 = tail call i32 @SSL_read(%struct.ssl_st* noundef %1, i8* noundef %2, i32 noundef %3) #8
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %4 = load i32, i32* %bytes_to_read, align 8, !tbaa !27
  %call7 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0), i32 noundef %call3, i32 noundef %4) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup52.sink.split, label %if.end24

if.else:                                          ; preds = %while.body
  %cmp13 = icmp eq i32 %call3, 0
  br i1 %cmp13, label %cleanup52.sink.split, label %if.else16

if.else16:                                        ; preds = %if.else
  %5 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %call18 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %5, i32 noundef %call3) #8
  %cmp19.not = icmp eq i32 %call18, 2
  br i1 %cmp19.not, label %while.end, label %cleanup52.sink.split

if.end24:                                         ; preds = %if.then5
  %6 = load i32, i32* %bytes_to_read, align 8, !tbaa !27
  %sub = sub nsw i32 %6, %call3
  store i32 %sub, i32* %bytes_to_read, align 8, !tbaa !27
  %tobool2.not = icmp eq i32 %sub, 0
  br i1 %tobool2.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end24, %while.cond.preheader, %if.else16
  %bytes_to_write = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 5
  %7 = load i32, i32* %bytes_to_write, align 4, !tbaa !29
  %write_buf_len = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 2
  %8 = load i32, i32* %write_buf_len, align 8, !tbaa !75
  %cmp25 = icmp slt i32 %7, %8
  %. = select i1 %cmp25, i32 %7, i32 %8
  %tobool28.not = icmp eq i32 %., 0
  br i1 %tobool28.not, label %if.end44, label %if.then29

if.then29:                                        ; preds = %while.end
  %9 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %write_buf = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 1
  %10 = load i8*, i8** %write_buf, align 8, !tbaa !72
  %call31 = tail call i32 @SSL_write(%struct.ssl_st* noundef %9, i8* noundef %10, i32 noundef %.) #8
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %cleanup52.sink.split

if.then33:                                        ; preds = %if.then29
  %call34 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 826, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 noundef %call31, i32 noundef %.) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup52.sink.split, label %if.end38

if.end38:                                         ; preds = %if.then33
  %11 = load i32, i32* %bytes_to_write, align 4, !tbaa !29
  %sub40 = sub nsw i32 %11, %call31
  store i32 %sub40, i32* %bytes_to_write, align 4, !tbaa !29
  br label %if.end44

if.end44:                                         ; preds = %while.end, %if.end38
  %12 = phi i32 [ %sub40, %if.end38 ], [ %7, %while.end ]
  %cmp46 = icmp eq i32 %12, 0
  br i1 %cmp46, label %land.lhs.true, label %cleanup52

land.lhs.true:                                    ; preds = %if.end44
  %13 = load i32, i32* %bytes_to_read, align 8, !tbaa !27
  %cmp48 = icmp eq i32 %13, 0
  br i1 %cmp48, label %cleanup52.sink.split, label %cleanup52

cleanup52.sink.split:                             ; preds = %if.then5, %land.lhs.true, %if.then29, %if.then33, %if.else16, %if.else, %entry
  %.sink = phi i32 [ 4, %entry ], [ 2, %if.else ], [ 2, %if.else16 ], [ 4, %if.then33 ], [ 2, %if.then29 ], [ 0, %land.lhs.true ], [ 4, %if.then5 ]
  store i32 %.sink, i32* %status, align 4, !tbaa !32
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.sink.split, %if.end44, %land.lhs.true
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_reneg_setup_step(%struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx, %struct.peer_st* nocapture noundef %peer) unnamed_addr #0 {
entry:
  %buf = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %buf) #10
  %status = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 7
  %0 = load i32, i32* %status, align 4, !tbaa !32
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %status, align 4, !tbaa !32
  tail call fastcc void @do_handshake_step(%struct.peer_st* noundef nonnull %peer) #9
  br label %cleanup177

if.end:                                           ; preds = %entry
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 868, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i32 noundef %0, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 1
  %1 = load i32, i32* %handshake_mode, align 4, !tbaa !17
  %.off = add i32 %1, -2
  %switch = icmp ult i32 %.off, 5
  %lor.ext = zext i1 %switch to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 878, i8* noundef getelementptr inbounds ([329 x i8], [329 x i8]* @.str.52, i64 0, i64 0), i32 noundef %lor.ext) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false, %if.end
  store i32 4, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end20:                                         ; preds = %lor.lhs.false
  %app_data_size = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 2
  %2 = load i32, i32* %app_data_size, align 8, !tbaa !26
  %bytes_to_read = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 6
  store i32 %2, i32* %bytes_to_read, align 8, !tbaa !27
  %bytes_to_write = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 5
  store i32 %2, i32* %bytes_to_write, align 4, !tbaa !29
  %3 = load i32, i32* %handshake_mode, align 4, !tbaa !17
  %cmp22 = icmp eq i32 %3, 2
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false26

land.lhs.true:                                    ; preds = %if.end20
  %ssl = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %4 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %call24 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %4) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false26thread-pre-split, label %if.then34

lor.lhs.false26thread-pre-split:                  ; preds = %land.lhs.true
  %.pr = load i32, i32* %handshake_mode, align 4, !tbaa !17
  br label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false26thread-pre-split, %if.end20
  %5 = phi i32 [ %.pr, %lor.lhs.false26thread-pre-split ], [ %3, %if.end20 ]
  %cmp28 = icmp eq i32 %5, 3
  br i1 %cmp28, label %land.lhs.true30, label %if.else92

land.lhs.true30:                                  ; preds = %lor.lhs.false26
  %ssl31 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %6 = load %struct.ssl_st*, %struct.ssl_st** %ssl31, align 8, !tbaa !30
  %call32 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %6) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true30.if.else92_crit_edge

land.lhs.true30.if.else92_crit_edge:              ; preds = %land.lhs.true30
  %.pre = load i32, i32* %handshake_mode, align 4, !tbaa !17
  br label %if.else92

if.then34:                                        ; preds = %land.lhs.true30, %land.lhs.true
  %ssl35 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %7 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call36 = tail call i32 @SSL_renegotiate_pending(%struct.ssl_st* noundef %7) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end152

if.then38:                                        ; preds = %if.then34
  %8 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call40 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %8) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then38
  %9 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call44 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %9) #8
  br label %if.end73

if.else:                                          ; preds = %if.then38
  %no_extms_on_reneg = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 5, i32 0, i32 10
  %10 = load i32, i32* %no_extms_on_reneg, align 4, !tbaa !87
  %tobool45.not = icmp eq i32 %10, 0
  br i1 %tobool45.not, label %if.end49, label %if.end49.thread

if.end49:                                         ; preds = %if.else
  %reneg_ciphers = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 5, i32 0, i32 6
  %11 = load i8*, i8** %reneg_ciphers, align 8, !tbaa !88
  %cmp52.not = icmp eq i8* %11, null
  br i1 %cmp52.not, label %if.else69, label %if.then54

if.end49.thread:                                  ; preds = %if.else
  %12 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call48 = tail call i64 @SSL_set_options(%struct.ssl_st* noundef %12, i64 noundef 1) #8
  %reneg_ciphers257 = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 5, i32 0, i32 6
  %13 = load i8*, i8** %reneg_ciphers257, align 8, !tbaa !88
  %cmp52.not258 = icmp eq i8* %13, null
  br i1 %cmp52.not258, label %if.then66, label %if.then54

if.then54:                                        ; preds = %if.end49.thread, %if.end49
  %14 = phi i8* [ %13, %if.end49.thread ], [ %11, %if.end49 ]
  %15 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call59 = tail call i32 @SSL_set_cipher_list(%struct.ssl_st* noundef %15, i8* noundef nonnull %14) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %cleanup, label %if.then66

if.then66:                                        ; preds = %if.end49.thread, %if.then54
  %16 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call68 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %16) #8
  br label %if.end73

if.else69:                                        ; preds = %if.end49
  %17 = load %struct.ssl_st*, %struct.ssl_st** %ssl35, align 8, !tbaa !30
  %call71 = tail call i32 @SSL_renegotiate_abbreviated(%struct.ssl_st* noundef %17) #8
  br label %if.end73

cleanup:                                          ; preds = %if.then54
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end73:                                         ; preds = %if.then66, %if.else69, %if.then42
  %ret.2 = phi i32 [ %call44, %if.then42 ], [ %call71, %if.else69 ], [ %call68, %if.then66 ]
  %tobool74.not = icmp eq i32 %ret.2, 0
  br i1 %tobool74.not, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end73
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end77:                                         ; preds = %if.end73
  tail call fastcc void @do_handshake_step(%struct.peer_st* noundef nonnull %peer) #9
  %18 = load i32, i32* %status, align 4, !tbaa !32
  switch i32 %18, label %cleanup177 [
    i32 1, label %if.then81
    i32 0, label %if.then87
  ]

if.then81:                                        ; preds = %if.end77
  store i32 0, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.then87:                                        ; preds = %if.end77
  store i32 1, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.else92:                                        ; preds = %land.lhs.true30.if.else92_crit_edge, %lor.lhs.false26
  %19 = phi i32 [ %.pre, %land.lhs.true30.if.else92_crit_edge ], [ %5, %lor.lhs.false26 ]
  switch i32 %19, label %if.end152 [
    i32 4, label %if.then100
    i32 5, label %if.then100
    i32 6, label %if.then127
  ]

if.then100:                                       ; preds = %if.else92, %if.else92
  %ssl101 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %20 = load %struct.ssl_st*, %struct.ssl_st** %ssl101, align 8, !tbaa !30
  %call102 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %20) #8
  %21 = load i32, i32* %handshake_mode, align 4, !tbaa !17
  %cmp104 = icmp eq i32 %21, 4
  %conv105 = zext i1 %cmp104 to i32
  %cmp106.not = icmp eq i32 %call102, %conv105
  br i1 %cmp106.not, label %if.end110, label %if.then108

if.then108:                                       ; preds = %if.then100
  store i32 0, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end110:                                        ; preds = %if.then100
  %22 = load %struct.ssl_st*, %struct.ssl_st** %ssl101, align 8, !tbaa !30
  %key_update_type = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 4
  %23 = load i32, i32* %key_update_type, align 8, !tbaa !89
  %call112 = tail call i32 @SSL_key_update(%struct.ssl_st* noundef %22, i32 noundef %23) #8
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end110
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end116:                                        ; preds = %if.end110
  tail call fastcc void @do_handshake_step(%struct.peer_st* noundef nonnull %peer) #9
  %24 = load i32, i32* %status, align 4, !tbaa !32
  %cmp118.not = icmp eq i32 %24, 0
  br i1 %cmp118.not, label %cleanup177, label %if.then120

if.then120:                                       ; preds = %if.end116
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.then127:                                       ; preds = %if.else92
  %ssl128 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %25 = load %struct.ssl_st*, %struct.ssl_st** %ssl128, align 8, !tbaa !30
  %call129 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %25) #8
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end143, label %if.then131

if.then131:                                       ; preds = %if.then127
  %force_pha = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 5, i32 1, i32 7
  %26 = load i32, i32* %force_pha, align 8, !tbaa !90
  %tobool133.not = icmp eq i32 %26, 0
  %.pre256 = load %struct.ssl_st*, %struct.ssl_st** %ssl128, align 8, !tbaa !30
  br i1 %tobool133.not, label %if.end136, label %if.then134

if.then134:                                       ; preds = %if.then131
  %post_handshake_auth = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %.pre256, i64 0, i32 100
  store i32 2, i32* %post_handshake_auth, align 8, !tbaa !91
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %if.then134
  %call138 = tail call i32 @SSL_verify_client_post_handshake(%struct.ssl_st* noundef %.pre256) #8
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then140, label %if.end143

if.then140:                                       ; preds = %if.end136
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end143:                                        ; preds = %if.end136, %if.then127
  tail call fastcc void @do_handshake_step(%struct.peer_st* noundef nonnull %peer) #9
  %27 = load i32, i32* %status, align 4, !tbaa !32
  %cmp145.not = icmp eq i32 %27, 0
  br i1 %cmp145.not, label %cleanup177, label %if.then147

if.then147:                                       ; preds = %if.end143
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end152:                                        ; preds = %if.else92, %if.then34
  %ssl153 = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %28 = load %struct.ssl_st*, %struct.ssl_st** %ssl153, align 8, !tbaa !30
  %call154 = call i32 @SSL_read(%struct.ssl_st* noundef %28, i8* noundef nonnull %buf, i32 noundef 1) #8
  %cmp155 = icmp sgt i32 %call154, -1
  br i1 %cmp155, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.end152
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.else159:                                       ; preds = %if.end152
  %29 = load %struct.ssl_st*, %struct.ssl_st** %ssl153, align 8, !tbaa !30
  %call161 = call i32 @SSL_get_error(%struct.ssl_st* noundef %29, i32 noundef %call154) #8
  %cmp162.not = icmp eq i32 %call161, 2
  br i1 %cmp162.not, label %if.end166, label %if.then164

if.then164:                                       ; preds = %if.else159
  store i32 2, i32* %status, align 4, !tbaa !32
  br label %cleanup177

if.end166:                                        ; preds = %if.else159
  %30 = load %struct.ssl_st*, %struct.ssl_st** %ssl153, align 8, !tbaa !30
  %call168 = call i32 @SSL_in_init(%struct.ssl_st* noundef %30) #8
  %tobool169.not.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not.not, label %cleanup177, label %if.end175

if.end175:                                        ; preds = %if.end166
  store i32 0, i32* %status, align 4, !tbaa !32
  br label %cleanup177

cleanup177:                                       ; preds = %cleanup, %if.then164, %if.end143, %if.then147, %if.end116, %if.then120, %if.then81, %if.then87, %if.end77, %if.end166, %if.end175, %if.then157, %if.then140, %if.then114, %if.then108, %if.then75, %if.then18, %if.then
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %buf) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_shutdown_step(%struct.peer_st* nocapture noundef %peer) unnamed_addr #0 {
entry:
  %status = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 7
  %0 = load i32, i32* %status, align 4, !tbaa !32
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1035, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i32 noundef %0, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %ssl = getelementptr inbounds %struct.peer_st, %struct.peer_st* %peer, i64 0, i32 0
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %call2 = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef %1) #8
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %cleanup.sink.split, label %if.else

if.else:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %call2, 0
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.else
  %2 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !30
  %call8 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %2, i32 noundef %call2) #8
  %3 = and i32 %call8, -2
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.end, %entry
  %.sink = phi i32 [ 4, %entry ], [ 0, %if.end ], [ 2, %if.then6 ]
  store i32 %.sink, i32* %status, align 4, !tbaa !32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else, %if.then6
  ret void
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @SSL_do_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_read(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_is_server(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_renegotiate_pending(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_renegotiate(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_set_cipher_list(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_renegotiate_abbreviated(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_key_update(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_verify_client_post_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @renegotiate_op(%struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #7 {
entry:
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 1
  %0 = load i32, i32* %handshake_mode, align 4, !tbaa !17
  %1 = and i32 %0, -2
  %switch = icmp eq i32 %1, 2
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @post_handshake_op(%struct.SSL_TEST_CTX* nocapture noundef readonly %test_ctx) unnamed_addr #7 {
entry:
  %handshake_mode = getelementptr inbounds %struct.SSL_TEST_CTX, %struct.SSL_TEST_CTX* %test_ctx, i64 0, i32 1
  %0 = load i32, i32* %handshake_mode, align 4, !tbaa !17
  %.off = add i32 %0, -4
  %switch = icmp ult i32 %.off, 3
  %. = zext i1 %switch to i32
  ret i32 %.
}

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @OPENSSL_strnlen(i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_group_name(%struct.evp_pkey_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @SSL_get0_peer_certificate(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 56}
!4 = !{!"handshake_result", !5, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !5, i64 36, !5, i64 40, !7, i64 44, !7, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !8, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !8, i64 136, !5, i64 144, !8, i64 152, !8, i64 160}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!4, !8, i64 64}
!10 = !{!4, !8, i64 72}
!11 = !{!4, !8, i64 80}
!12 = !{!4, !8, i64 160}
!13 = !{!4, !8, i64 112}
!14 = !{!4, !8, i64 136}
!15 = !{!4, !8, i64 152}
!16 = !{!8, !8, i64 0}
!17 = !{!18, !5, i64 4}
!18 = !{!"", !5, i64 0, !5, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !19, i64 24, !19, i64 224, !5, i64 424, !7, i64 428, !7, i64 432, !7, i64 436, !5, i64 440, !5, i64 444, !7, i64 448, !8, i64 456, !8, i64 464, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !8, i64 496, !7, i64 504, !7, i64 508, !7, i64 512, !8, i64 520, !7, i64 528, !7, i64 532, !7, i64 536, !5, i64 540, !8, i64 544, !8, i64 552, !8, i64 560}
!19 = !{!"", !20, i64 0, !21, i64 72, !21, i64 136}
!20 = !{!"", !5, i64 0, !5, i64 4, !7, i64 8, !8, i64 16, !8, i64 24, !5, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !7, i64 68}
!21 = !{!"", !5, i64 0, !8, i64 8, !8, i64 16, !7, i64 24, !5, i64 28, !8, i64 32, !8, i64 40, !7, i64 48, !8, i64 56}
!22 = !{!4, !5, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!18, !7, i64 8}
!27 = !{!28, !7, i64 40}
!28 = !{!"peer_st", !8, i64 0, !8, i64 8, !7, i64 16, !8, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !5, i64 44}
!29 = !{!28, !7, i64 36}
!30 = !{!28, !8, i64 0}
!31 = !{!18, !7, i64 528}
!32 = !{!28, !5, i64 44}
!33 = !{!34, !7, i64 0}
!34 = !{!"handshake_ex_data_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !5, i64 16}
!35 = !{!4, !7, i64 16}
!36 = !{!34, !7, i64 4}
!37 = !{!4, !7, i64 20}
!38 = !{!34, !7, i64 8}
!39 = !{!4, !7, i64 24}
!40 = !{!4, !7, i64 4}
!41 = !{!4, !7, i64 8}
!42 = !{!4, !7, i64 12}
!43 = !{!4, !7, i64 28}
!44 = !{!4, !7, i64 32}
!45 = !{!34, !5, i64 16}
!46 = !{!4, !5, i64 36}
!47 = !{!4, !7, i64 44}
!48 = !{!34, !7, i64 12}
!49 = !{!4, !7, i64 48}
!50 = !{!19, !5, i64 0}
!51 = !{!4, !7, i64 88}
!52 = !{!4, !7, i64 92}
!53 = !{!4, !7, i64 96}
!54 = !{!4, !7, i64 100}
!55 = !{!4, !7, i64 120}
!56 = !{!18, !7, i64 12}
!57 = !{!19, !7, i64 8}
!58 = !{!19, !5, i64 72}
!59 = !{!19, !5, i64 100}
!60 = !{!19, !7, i64 96}
!61 = !{!19, !8, i64 80}
!62 = !{!19, !8, i64 144}
!63 = !{!19, !8, i64 16}
!64 = !{!19, !8, i64 88}
!65 = !{!19, !8, i64 152}
!66 = !{!19, !8, i64 24}
!67 = !{!19, !8, i64 128}
!68 = !{!69, !8, i64 48}
!69 = !{!"ctx_data_st", !8, i64 0, !24, i64 8, !8, i64 16, !24, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!70 = !{!19, !8, i64 192}
!71 = !{!19, !5, i64 32}
!72 = !{!28, !8, i64 8}
!73 = !{!28, !8, i64 24}
!74 = !{!28, !7, i64 32}
!75 = !{!28, !7, i64 16}
!76 = !{!19, !5, i64 4}
!77 = !{!19, !7, i64 64}
!78 = !{!69, !8, i64 0}
!79 = !{!69, !8, i64 16}
!80 = !{!69, !8, i64 32}
!81 = !{!69, !8, i64 40}
!82 = !{!5, !5, i64 0}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!69, !24, i64 8}
!86 = !{!69, !24, i64 24}
!87 = !{!18, !7, i64 92}
!88 = !{!18, !8, i64 64}
!89 = !{!18, !7, i64 16}
!90 = !{!18, !7, i64 144}
!91 = !{!92, !5, i64 2984}
!92 = !{!"ssl_st", !7, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !93, i64 72, !5, i64 132, !8, i64 136, !8, i64 144, !24, i64 152, !24, i64 160, !94, i64 168, !8, i64 1208, !8, i64 1216, !8, i64 1224, !7, i64 1232, !8, i64 1240, !97, i64 1248, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !7, i64 1344, !5, i64 1348, !5, i64 1412, !5, i64 1476, !5, i64 1540, !5, i64 1604, !5, i64 1668, !5, i64 1732, !5, i64 1796, !5, i64 1860, !5, i64 1924, !5, i64 1988, !5, i64 2052, !8, i64 2120, !5, i64 2128, !8, i64 2144, !8, i64 2152, !8, i64 2160, !8, i64 2168, !5, i64 2176, !8, i64 2192, !8, i64 2200, !5, i64 2208, !24, i64 2272, !5, i64 2280, !24, i64 2288, !5, i64 2296, !8, i64 2328, !8, i64 2336, !8, i64 2344, !24, i64 2352, !8, i64 2360, !5, i64 2368, !24, i64 2400, !7, i64 2408, !8, i64 2416, !8, i64 2424, !7, i64 2432, !7, i64 2436, !8, i64 2440, !8, i64 2448, !8, i64 2456, !8, i64 2464, !8, i64 2472, !8, i64 2480, !24, i64 2488, !98, i64 2496, !8, i64 2512, !8, i64 2520, !5, i64 2528, !24, i64 2536, !7, i64 2544, !7, i64 2548, !7, i64 2552, !24, i64 2560, !7, i64 2568, !7, i64 2572, !24, i64 2576, !24, i64 2584, !24, i64 2592, !99, i64 2600, !8, i64 2904, !7, i64 2912, !8, i64 2920, !8, i64 2928, !8, i64 2936, !7, i64 2944, !8, i64 2952, !8, i64 2960, !8, i64 2968, !7, i64 2976, !7, i64 2980, !5, i64 2984, !7, i64 2988, !8, i64 2992, !24, i64 3000, !7, i64 3008, !8, i64 3016, !101, i64 3024, !8, i64 3152, !102, i64 3160, !8, i64 7448, !8, i64 7456, !8, i64 7464, !8, i64 7472, !24, i64 7480, !7, i64 7488, !7, i64 7492, !7, i64 7496, !8, i64 7504, !8, i64 7512, !24, i64 7520, !8, i64 7528, !24, i64 7536, !24, i64 7544, !24, i64 7552, !8, i64 7560, !8, i64 7568, !8, i64 7576, !8, i64 7584, !8, i64 7592, !24, i64 7600}
!93 = !{!"ossl_statem_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !5, i64 52, !5, i64 56}
!94 = !{!"", !24, i64 0, !24, i64 8, !5, i64 16, !24, i64 80, !5, i64 88, !5, i64 152, !5, i64 184, !7, i64 216, !7, i64 220, !8, i64 224, !8, i64 232, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !5, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !95, i64 280, !5, i64 840, !24, i64 904, !5, i64 912, !24, i64 976, !7, i64 984, !7, i64 988, !8, i64 992, !24, i64 1000, !8, i64 1008, !24, i64 1016, !7, i64 1024, !5, i64 1028, !5, i64 1029, !96, i64 1030, !8, i64 1032}
!95 = !{!"", !5, i64 0, !24, i64 128, !5, i64 136, !24, i64 264, !24, i64 272, !7, i64 280, !8, i64 288, !8, i64 296, !7, i64 304, !8, i64 312, !24, i64 320, !8, i64 328, !24, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !7, i64 368, !24, i64 376, !8, i64 384, !7, i64 392, !8, i64 400, !24, i64 408, !8, i64 416, !24, i64 424, !8, i64 432, !24, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !24, i64 480, !24, i64 488, !8, i64 496, !5, i64 504, !7, i64 540, !7, i64 544, !7, i64 548, !7, i64 552}
!96 = !{!"short", !5, i64 0}
!97 = !{!"ssl_dane_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !24, i64 56}
!98 = !{!"crypto_ex_data_st", !8, i64 0, !8, i64 8}
!99 = !{!"", !5, i64 0, !8, i64 32, !8, i64 40, !8, i64 48, !7, i64 56, !8, i64 64, !96, i64 72, !7, i64 76, !100, i64 80, !7, i64 112, !7, i64 116, !24, i64 120, !8, i64 128, !24, i64 136, !8, i64 144, !24, i64 152, !8, i64 160, !24, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !24, i64 232, !8, i64 240, !24, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !8, i64 272, !24, i64 280, !7, i64 288, !5, i64 292, !7, i64 296}
!100 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !24, i64 24}
!101 = !{!"srp_ctx_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !7, i64 112, !24, i64 120}
!102 = !{!"record_layer_st", !8, i64 0, !7, i64 8, !7, i64 12, !24, i64 16, !24, i64 24, !103, i64 32, !5, i64 80, !5, i64 1616, !8, i64 4176, !24, i64 4184, !24, i64 4192, !5, i64 4200, !24, i64 4208, !24, i64 4216, !24, i64 4224, !7, i64 4232, !24, i64 4240, !8, i64 4248, !5, i64 4256, !5, i64 4264, !7, i64 4272, !7, i64 4276, !8, i64 4280}
!103 = !{!"ssl3_buffer_st", !8, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !7, i64 40}
