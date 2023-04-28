; ModuleID = 'test/tls13secretstest.c'
source_filename = "test/tls13secretstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

@full_hash = internal unnamed_addr global i1 false, align 4
@hs_full_hash = internal global [32 x i8] c"\F8\C1\9E\8Cw\C08y\BB\C8\EBmV\E0\0D\D5\D8n\F5Y'\EE\FC\08\E1\B0\02\B6\EC\E0]\BF", align 16
@hs_start_hash = internal global [32 x i8] c"\C6\C9\18\AD/A\99\D5Y\8E\AF\01\16\CBz\\,\14\CBTx\12\18\88\8D\B7\03\0D\D5\0D^m", align 16
@.str = private unnamed_addr constant [23 x i8] c"test_handshake_secrets\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test/tls13secretstest.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"s->session\00", align 1
@.str.5 = private unnamed_addr constant [96 x i8] c"tls13_generate_secret(s, ssl_handshake_md(s), NULL, NULL, 0, (unsigned char *)&s->early_secret)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Early secret generation failed\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"s->early_secret\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"early_secret\00", align 1
@early_secret = internal global [32 x i8] c"3\AD\0A\1C`~\C0;\09\E6\CD\98\93h\0C\E2\10\AD\F3\00\AA\1F&`\E1\B2.\10\F1p\F9*", align 16
@.str.9 = private unnamed_addr constant [28 x i8] c"Early secret does not match\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"tls13_generate_handshake_secret(s, ecdhe_secret, sizeof(ecdhe_secret))\00", align 1
@ecdhe_secret = internal global [32 x i8] c"\81Q\D1FL\1BUS6#\B9\C2$jj\0En~\18Pc\E1J\FD\AF\F0\B6\E1\C6\1A\86B", align 16
@.str.11 = private unnamed_addr constant [35 x i8] c"Handshake secret generation failed\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"s->handshake_secret\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"handshake_secret\00", align 1
@handshake_secret = internal global [32 x i8] c"[O\96]\F0<h,F\E6\EE\86\C3\11cf\15\A1\D2\BB\B2CE\C2R\05\95<\87\9E\8D\06", align 16
@.str.14 = private unnamed_addr constant [19 x i8] c"sizeof(client_hts)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"hashsize\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"sizeof(client_hts_key)\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"KEYLEN\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"sizeof(client_hts_iv)\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"IVLEN\00", align 1
@.str.20 = private unnamed_addr constant [140 x i8] c"test_secret(s, s->handshake_secret, (unsigned char *)client_hts_label, strlen(client_hts_label), client_hts, client_hts_key, client_hts_iv)\00", align 1
@client_hts = internal global [32 x i8] c"\E2\E22\07\BD\93\FB\7F\E4\FC.)z\FE\AB\16\0ER+Z\B7]d\A8nu\BC\AC?>Q\03", align 16
@client_hts_key = internal global [16 x i8] c"&y\A4>\1Dvx@4\EA\17\97\D5\AD&I", align 16
@client_hts_iv = internal global [12 x i8] c"T\82@R\90\DD\0D/\81\C0\D9B", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Client handshake secret test failed\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"sizeof(server_hts)\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"sizeof(server_hts_key)\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"sizeof(server_hts_iv)\00", align 1
@.str.25 = private unnamed_addr constant [140 x i8] c"test_secret(s, s->handshake_secret, (unsigned char *)server_hts_label, strlen(server_hts_label), server_hts, server_hts_key, server_hts_iv)\00", align 1
@server_hts = internal global [32 x i8] c";z\83\9C#\9E\F2\BF\0Bs\05\A0\E0\C4\E5\A8\C6\C6\930\A7S\B3\08\F5\E3\A8:\A2\EFiy", align 16
@server_hts_key = internal global [16 x i8] c"\C6l\B1\AE\C5\19\DFD\C9\1E\10\99U\11\AC\8B", align 16
@server_hts_iv = internal global [12 x i8] c"\F7\F6\88LI\81ql-\0D)\A4", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Server handshake secret test failed\00", align 1
@.str.27 = private unnamed_addr constant [105 x i8] c"tls13_generate_master_secret(s, out_master_secret, s->handshake_secret, hashsize, &master_secret_length)\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Master secret generation failed\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"out_master_secret\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"master_secret\00", align 1
@master_secret = internal global [32 x i8] c"\\y\D1iBN&+V2\03b{\E4\EBQ\03?X\8CC\C9\CE\03s7-\BC\BC\01\85\A7", align 16
@.str.31 = private unnamed_addr constant [29 x i8] c"Master secret does not match\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"sizeof(client_ats)\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"sizeof(client_ats_key)\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"sizeof(client_ats_iv)\00", align 1
@.str.35 = private unnamed_addr constant [138 x i8] c"test_secret(s, out_master_secret, (unsigned char *)client_ats_label, strlen(client_ats_label), client_ats, client_ats_key, client_ats_iv)\00", align 1
@client_ats = internal global [32 x i8] c"\E2\F0\DBj\82\E8\82\80\FC&\F7<\89\85N\E8a^%\DF(\B2 yb\FAx\22&\B26&", align 16
@client_ats_key = internal global [16 x i8] c"\88\B9j\D6\86\C8K\E5Z\CE\18\A5\9C\CE\\\87", align 16
@client_ats_iv = internal global [12 x i8] c"\B9\9D\C5\8C\D5\FFZ\B0\82\FD\AD\19", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"Client application data secret test failed\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"sizeof(server_ats)\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"sizeof(server_ats_key)\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"sizeof(server_ats_iv)\00", align 1
@.str.40 = private unnamed_addr constant [138 x i8] c"test_secret(s, out_master_secret, (unsigned char *)server_ats_label, strlen(server_ats_label), server_ats, server_ats_key, server_ats_iv)\00", align 1
@server_ats = internal global [32 x i8] c"[s\B1\08\D9\AC\1B\9B\0C\82H\CA9&\ECn{\C4~A\17\06\969\87\EC\11C]0W\19", align 16
@server_ats_key = internal global [16 x i8] c"\A6\88\EB\B5\AC\82moB\D4\\\0C\C4K\9B}", align 16
@server_ats_iv = internal global [12 x i8] c"\C1\CA\D4BZC\8B]\E7\14\83\0A", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"Server application data secret test failed\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Failed to get hash\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"Secret generation failed\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"gensecret\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"ref_secret\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Key generation failed\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"ref_key\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"IV generation failed\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ref_iv\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"c hs traffic\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"s hs traffic\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"c ap traffic\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"s ap traffic\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ssl3_digest_cached_records(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %keep) local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ssl_handshake_hash(%struct.ssl_st* nocapture readnone %s, i8* noundef %out, i64 noundef %outlen, i64* nocapture noundef writeonly %hashlen) local_unnamed_addr #1 {
entry:
  %cmp = icmp ult i64 %outlen, 32
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @full_hash, align 4
  %. = select i1 %.b, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @hs_full_hash, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @hs_start_hash, i64 0, i64 0)
  %call2 = tail call i8* @memcpy(i8* noundef %out, i8* noundef %., i64 noundef 32) #6
  store i64 32, i64* %hashlen, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* nocapture readnone %s) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #6
  ret %struct.evp_md_st* %call
}

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* nocapture noundef %rl) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* nocapture noundef %rl) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ssl_cipher_get_evp_cipher(%struct.ssl_ctx_st* nocapture noundef readnone %ctx, %struct.ssl_cipher_st* nocapture noundef readnone %sslc, %struct.evp_cipher_st** nocapture noundef readnone %enc) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* nocapture noundef readnone %ctx, %struct.ssl_session_st* nocapture noundef readnone %s, %struct.evp_cipher_st** nocapture noundef readnone %enc, %struct.evp_md_st** nocapture noundef readnone %md, i32* nocapture noundef readnone %mac_pkey_type, i64* nocapture noundef readnone %mac_secret_size, %struct.ssl_comp_st** nocapture noundef readnone %comp, i32 noundef %use_etm) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @tls1_alert_code(i32 noundef returned %code) local_unnamed_addr #0 {
entry:
  ret i32 %code
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ssl_log_secret(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %label, i8* nocapture noundef readnone %secret, i64 noundef %secret_len) local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* nocapture noundef readnone %ctx, i32 noundef %idx) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #6
  ret %struct.evp_md_st* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ossl_statem_send_fatal(%struct.ssl_st* nocapture noundef %s, i32 noundef %al) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ossl_statem_fatal(%struct.ssl_st* nocapture noundef %s, i32 noundef %al, i32 noundef %reason, i8* nocapture noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ossl_statem_export_allowed(%struct.ssl_st* nocapture noundef readnone %s) local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @ossl_statem_export_early_allowed(%struct.ssl_st* nocapture noundef readnone %s) local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ssl_evp_cipher_free(%struct.evp_cipher_st* nocapture noundef %cipher) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @ssl_evp_md_free(%struct.evp_md_st* nocapture noundef %md) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_handshake_secrets) #6
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_handshake_secrets() #1 {
entry:
  %out_master_secret = alloca [64 x i8], align 16
  %master_secret_length = alloca i64, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %out_master_secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = bitcast i64* %master_secret_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %call = tail call %struct.ssl_method_st* @TLS_method() #6
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #6
  %2 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 284, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %call1) #6
  %3 = bitcast %struct.ssl_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef %3) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.ssl_session_st* @SSL_SESSION_new() #6
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call3, i64 0, i32 55
  store %struct.ssl_session_st* %call8, %struct.ssl_session_st** %session, align 8, !tbaa !7
  %4 = bitcast %struct.ssl_session_st* %call8 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end7
  %call14 = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* undef) #8
  %5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call3, i64 0, i32 29, i64 0
  %call15 = tail call i32 @tls13_generate_secret(%struct.ssl_st* noundef nonnull %call3, %struct.evp_md_st* noundef %call14, i8* noundef null, i8* noundef null, i64 noundef 0, i8* noundef nonnull %5) #6
  %cmp = icmp ne i32 %call15, 0
  %conv = zext i1 %cmp to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #6
  br label %err

if.end19:                                         ; preds = %if.end13
  %call21 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %5, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @early_secret, i64 0, i64 0), i64 noundef 32) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0)) #6
  br label %err

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef nonnull %call3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ecdhe_secret, i64 0, i64 0), i64 noundef 32) #6
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv27) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0)) #6
  br label %err

if.end31:                                         ; preds = %if.end24
  %arraydecay32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %call3, i64 0, i32 30, i64 0
  %call33 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %arraydecay32, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @handshake_secret, i64 0, i64 0), i64 noundef 32) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end31
  %call37 = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* undef) #8
  %call38 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call37) #6
  %conv39 = sext i32 %call38 to i64
  %call40 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef 32, i64 noundef %conv39) #6
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end43

if.end43:                                         ; preds = %if.end36
  %call44 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 noundef 16, i64 noundef 16) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 noundef 12, i64 noundef 12) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end47
  %call54 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0)) #9
  %call55 = tail call fastcc i32 @test_secret(%struct.ssl_st* noundef nonnull %call3, i8* noundef nonnull %arraydecay32, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i64 noundef %call54, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @client_hts, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @client_hts_key, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @client_hts_iv, i64 0, i64 0)) #8
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([140 x i8], [140 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv57) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end51
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %err

if.end61:                                         ; preds = %if.end51
  %call62 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef 32, i64 noundef %conv39) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end65

if.end65:                                         ; preds = %if.end61
  %call66 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 noundef 16, i64 noundef 16) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %if.end69

if.end69:                                         ; preds = %if.end65
  %call70 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 noundef 12, i64 noundef 12) #6
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %if.end69
  %call76 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0)) #9
  %call77 = tail call fastcc i32 @test_secret(%struct.ssl_st* noundef nonnull %call3, i8* noundef nonnull %arraydecay32, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i64 noundef %call76, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @server_hts, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @server_hts_key, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @server_hts_iv, i64 0, i64 0)) #8
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([140 x i8], [140 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv79) #6
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end73
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0)) #6
  br label %err

if.end83:                                         ; preds = %if.end73
  store i1 true, i1* @full_hash, align 4
  %call87 = call i32 @tls13_generate_master_secret(%struct.ssl_st* noundef nonnull %call3, i8* noundef nonnull %0, i8* noundef nonnull %arraydecay32, i64 noundef %conv39, i64* noundef nonnull %master_secret_length) #6
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv89) #6
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end83
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0)) #6
  br label %err

if.end93:                                         ; preds = %if.end83
  %6 = load i64, i64* %master_secret_length, align 8, !tbaa !3
  %call95 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %6, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @master_secret, i64 0, i64 0), i64 noundef 32) #6
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end93
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0)) #6
  br label %err

if.end98:                                         ; preds = %if.end93
  %call99 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef 32, i64 noundef %conv39) #6
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %if.end102

if.end102:                                        ; preds = %if.end98
  %call103 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 noundef 16, i64 noundef 16) #6
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %if.end106

if.end106:                                        ; preds = %if.end102
  %call107 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 noundef 12, i64 noundef 12) #6
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %if.end110

if.end110:                                        ; preds = %if.end106
  %call112 = call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0)) #9
  %call113 = call fastcc i32 @test_secret(%struct.ssl_st* noundef nonnull %call3, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0), i64 noundef %call112, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @client_ats, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @client_ats_key, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @client_ats_iv, i64 0, i64 0)) #8
  %cmp114 = icmp ne i32 %call113, 0
  %conv115 = zext i1 %cmp114 to i32
  %call116 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([138 x i8], [138 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv115) #6
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end110
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0)) #6
  br label %err

if.end119:                                        ; preds = %if.end110
  %call120 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef 32, i64 noundef %conv39) #6
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %if.end123

if.end123:                                        ; preds = %if.end119
  %call124 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i64 noundef 16, i64 noundef 16) #6
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %if.end127

if.end127:                                        ; preds = %if.end123
  %call128 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 noundef 12, i64 noundef 12) #6
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %err, label %if.end131

if.end131:                                        ; preds = %if.end127
  %call133 = call i64 @strlen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0)) #9
  %call134 = call fastcc i32 @test_secret(%struct.ssl_st* noundef nonnull %call3, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), i64 noundef %call133, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @server_ats, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @server_ats_key, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @server_ats_iv, i64 0, i64 0)) #8
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([138 x i8], [138 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv136) #6
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.then139, label %err

if.then139:                                       ; preds = %if.end131
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %err

err:                                              ; preds = %if.end131, %if.end127, %if.end123, %if.end119, %if.end106, %if.end102, %if.end98, %if.end69, %if.end65, %if.end61, %if.end47, %if.end43, %if.end36, %if.end31, %if.end7, %if.end, %entry, %if.then139, %if.then118, %if.then97, %if.then92, %if.then82, %if.then60, %if.then30, %if.then23, %if.then18
  %s.0 = phi %struct.ssl_st* [ %call3, %if.then139 ], [ %call3, %if.end127 ], [ %call3, %if.end123 ], [ %call3, %if.end119 ], [ %call3, %if.then118 ], [ %call3, %if.end106 ], [ %call3, %if.end102 ], [ %call3, %if.end98 ], [ %call3, %if.then97 ], [ %call3, %if.then92 ], [ %call3, %if.then82 ], [ %call3, %if.end69 ], [ %call3, %if.end65 ], [ %call3, %if.end61 ], [ %call3, %if.then60 ], [ %call3, %if.end47 ], [ %call3, %if.end43 ], [ %call3, %if.end36 ], [ %call3, %if.end31 ], [ %call3, %if.then30 ], [ %call3, %if.then23 ], [ %call3, %if.then18 ], [ %call3, %if.end7 ], [ %call3, %if.end ], [ null, %entry ], [ %call3, %if.end131 ]
  %ret.0 = phi i32 [ 0, %if.then139 ], [ 0, %if.end127 ], [ 0, %if.end123 ], [ 0, %if.end119 ], [ 0, %if.then118 ], [ 0, %if.end106 ], [ 0, %if.end102 ], [ 0, %if.end98 ], [ 0, %if.then97 ], [ 0, %if.then92 ], [ 0, %if.then82 ], [ 0, %if.end69 ], [ 0, %if.end65 ], [ 0, %if.end61 ], [ 0, %if.then60 ], [ 0, %if.end47 ], [ 0, %if.end43 ], [ 0, %if.end36 ], [ 0, %if.end31 ], [ 0, %if.then30 ], [ 0, %if.then23 ], [ 0, %if.then18 ], [ 0, %if.end7 ], [ 0, %if.end ], [ 0, %entry ], [ 1, %if.end131 ]
  call void @SSL_free(%struct.ssl_st* noundef %s.0) #6
  call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ssl_session_st* @SSL_SESSION_new() local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @tls13_generate_secret(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_secret(%struct.ssl_st* noundef %s, i8* noundef %prk, i8* noundef %label, i64 noundef %labellen, i8* noundef %ref_secret, i8* noundef %ref_key, i8* noundef %ref_iv) unnamed_addr #1 {
entry:
  %hashsize = alloca i64, align 8
  %gensecret = alloca [64 x i8], align 16
  %hash = alloca [64 x i8], align 16
  %key = alloca [16 x i8], align 16
  %iv = alloca [12 x i8], align 1
  %0 = bitcast i64* %hashsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %gensecret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #7
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #7
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* undef) #8
  %call1 = call i32 @ssl_handshake_hash(%struct.ssl_st* undef, i8* noundef nonnull %2, i64 noundef 64, i64* noundef nonnull %hashsize) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0)) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %hashsize, align 8, !tbaa !3
  %call4 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef %prk, i8* noundef %label, i64 noundef %labellen, i8* noundef nonnull %2, i64 noundef %5, i8* noundef nonnull %1, i64 noundef %5, i32 noundef 1) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0)) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %5, i8* noundef %ref_secret, i64 noundef %5) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call15 = call i32 @tls13_derive_key(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef nonnull %1, i8* noundef nonnull %3, i64 noundef 16) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0)) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call20 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 16, i8* noundef %ref_key, i64 noundef 16) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end18
  %call26 = call i32 @tls13_derive_iv(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef nonnull %1, i8* noundef nonnull %4, i64 noundef 12) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %call31 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 12, i8* noundef %ref_iv, i64 noundef 12) #6
  %tobool32.not = icmp ne i32 %call31, 0
  %. = zext i1 %tobool32.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end18, %if.end7, %if.then28, %if.then17, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 0, %if.then17 ], [ 0, %if.then6 ], [ 0, %if.then ], [ 0, %if.end7 ], [ 0, %if.end18 ], [ %., %if.end29 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i32 @tls13_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #3

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @tls13_hkdf_expand(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @tls13_derive_key(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @tls13_derive_iv(%struct.ssl_st* noundef, %struct.evp_md_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 2328}
!8 = !{!"ssl_st", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !10, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !11, i64 72, !5, i64 132, !10, i64 136, !10, i64 144, !4, i64 152, !4, i64 160, !12, i64 168, !10, i64 1208, !10, i64 1216, !10, i64 1224, !9, i64 1232, !10, i64 1240, !15, i64 1248, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !9, i64 1344, !5, i64 1348, !5, i64 1412, !5, i64 1476, !5, i64 1540, !5, i64 1604, !5, i64 1668, !5, i64 1732, !5, i64 1796, !5, i64 1860, !5, i64 1924, !5, i64 1988, !5, i64 2052, !10, i64 2120, !5, i64 2128, !10, i64 2144, !10, i64 2152, !10, i64 2160, !10, i64 2168, !5, i64 2176, !10, i64 2192, !10, i64 2200, !5, i64 2208, !4, i64 2272, !5, i64 2280, !4, i64 2288, !5, i64 2296, !10, i64 2328, !10, i64 2336, !10, i64 2344, !4, i64 2352, !10, i64 2360, !5, i64 2368, !4, i64 2400, !9, i64 2408, !10, i64 2416, !10, i64 2424, !9, i64 2432, !9, i64 2436, !10, i64 2440, !10, i64 2448, !10, i64 2456, !10, i64 2464, !10, i64 2472, !10, i64 2480, !4, i64 2488, !16, i64 2496, !10, i64 2512, !10, i64 2520, !5, i64 2528, !4, i64 2536, !9, i64 2544, !9, i64 2548, !9, i64 2552, !4, i64 2560, !9, i64 2568, !9, i64 2572, !4, i64 2576, !4, i64 2584, !4, i64 2592, !17, i64 2600, !10, i64 2904, !9, i64 2912, !10, i64 2920, !10, i64 2928, !10, i64 2936, !9, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !9, i64 2976, !9, i64 2980, !5, i64 2984, !9, i64 2988, !10, i64 2992, !4, i64 3000, !9, i64 3008, !10, i64 3016, !19, i64 3024, !10, i64 3152, !20, i64 3160, !10, i64 7448, !10, i64 7456, !10, i64 7464, !10, i64 7472, !4, i64 7480, !9, i64 7488, !9, i64 7492, !9, i64 7496, !10, i64 7504, !10, i64 7512, !4, i64 7520, !10, i64 7528, !4, i64 7536, !4, i64 7544, !4, i64 7552, !10, i64 7560, !10, i64 7568, !10, i64 7576, !10, i64 7584, !10, i64 7592, !4, i64 7600}
!9 = !{!"int", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"ossl_statem_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52, !5, i64 56}
!12 = !{!"", !4, i64 0, !4, i64 8, !5, i64 16, !4, i64 80, !5, i64 88, !5, i64 152, !5, i64 184, !9, i64 216, !9, i64 220, !10, i64 224, !10, i64 232, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !5, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !13, i64 280, !5, i64 840, !4, i64 904, !5, i64 912, !4, i64 976, !9, i64 984, !9, i64 988, !10, i64 992, !4, i64 1000, !10, i64 1008, !4, i64 1016, !9, i64 1024, !5, i64 1028, !5, i64 1029, !14, i64 1030, !10, i64 1032}
!13 = !{!"", !5, i64 0, !4, i64 128, !5, i64 136, !4, i64 264, !4, i64 272, !9, i64 280, !10, i64 288, !10, i64 296, !9, i64 304, !10, i64 312, !4, i64 320, !10, i64 328, !4, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !9, i64 368, !4, i64 376, !10, i64 384, !9, i64 392, !10, i64 400, !4, i64 408, !10, i64 416, !4, i64 424, !10, i64 432, !4, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !4, i64 480, !4, i64 488, !10, i64 496, !5, i64 504, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552}
!14 = !{!"short", !5, i64 0}
!15 = !{!"ssl_dane_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !4, i64 56}
!16 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!17 = !{!"", !5, i64 0, !10, i64 32, !10, i64 40, !10, i64 48, !9, i64 56, !10, i64 64, !14, i64 72, !9, i64 76, !18, i64 80, !9, i64 112, !9, i64 116, !4, i64 120, !10, i64 128, !4, i64 136, !10, i64 144, !4, i64 152, !10, i64 160, !4, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !4, i64 232, !10, i64 240, !4, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !10, i64 272, !4, i64 280, !9, i64 288, !5, i64 292, !9, i64 296}
!18 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24}
!19 = !{!"srp_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !9, i64 112, !4, i64 120}
!20 = !{!"record_layer_st", !10, i64 0, !9, i64 8, !9, i64 12, !4, i64 16, !4, i64 24, !21, i64 32, !5, i64 80, !5, i64 1616, !10, i64 4176, !4, i64 4184, !4, i64 4192, !5, i64 4200, !4, i64 4208, !4, i64 4216, !4, i64 4224, !9, i64 4232, !4, i64 4240, !10, i64 4248, !5, i64 4256, !5, i64 4264, !9, i64 4272, !9, i64 4276, !10, i64 4280}
!21 = !{!"ssl3_buffer_st", !10, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !9, i64 40}
