; ModuleID = 'ssl/tls13_enc.c'
source_filename = "ssl/tls13_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.ssl_mac_buf_st = type { i8*, i32 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon.2 = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.3, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.3 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.evp_cipher_st = type opaque
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
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque

@.str = private unnamed_addr constant [10 x i8] c"TLS13-KDF\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ssl/tls13_enc.c\00", align 1
@__func__.tls13_hkdf_expand = private unnamed_addr constant [18 x i8] c"tls13_hkdf_expand\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.4 = private constant [4 x i8] c"key\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@label_prefix = internal constant [7 x i8] c"tls13 \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@tls13_derive_iv.ivlabel = internal constant [3 x i8] c"iv\00", align 1
@tls13_derive_finishedkey.finishedlabel = internal constant [9 x i8] c"finished\00", align 1
@tls13_generate_secret.derived_secret_label = internal constant [8 x i8] c"derived\00", align 1
@__func__.tls13_generate_secret = private unnamed_addr constant [22 x i8] c"tls13_generate_secret\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@__func__.tls13_final_finish_mac = private unnamed_addr constant [23 x i8] c"tls13_final_finish_mac\00", align 1
@tls13_change_cipher_state.client_early_traffic = internal constant [12 x i8] c"c e traffic\00", align 1
@tls13_change_cipher_state.client_handshake_traffic = internal constant [13 x i8] c"c hs traffic\00", align 1
@tls13_change_cipher_state.client_application_traffic = internal constant [13 x i8] c"c ap traffic\00", align 1
@tls13_change_cipher_state.server_handshake_traffic = internal constant [13 x i8] c"s hs traffic\00", align 1
@tls13_change_cipher_state.server_application_traffic = internal constant [13 x i8] c"s ap traffic\00", align 1
@tls13_change_cipher_state.exporter_master_secret = internal constant [11 x i8] c"exp master\00", align 1
@tls13_change_cipher_state.resumption_master_secret = internal constant [11 x i8] c"res master\00", align 1
@tls13_change_cipher_state.early_exporter_master_secret = internal constant [13 x i8] c"e exp master\00", align 1
@__func__.tls13_change_cipher_state = private unnamed_addr constant [26 x i8] c"tls13_change_cipher_state\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"CLIENT_EARLY_TRAFFIC_SECRET\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"EARLY_EXPORTER_SECRET\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"CLIENT_HANDSHAKE_TRAFFIC_SECRET\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"CLIENT_TRAFFIC_SECRET_0\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"SERVER_HANDSHAKE_TRAFFIC_SECRET\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"SERVER_TRAFFIC_SECRET_0\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"EXPORTER_SECRET\00", align 1
@tls13_update_key.application_traffic = internal constant [12 x i8] c"traffic upd\00", align 1
@tls13_export_keying_material.exporterlabel = internal constant [9 x i8] c"exporter\00", align 1
@tls13_export_keying_material_early.exporterlabel = internal constant [9 x i8] c"exporter\00", align 1
@__func__.derive_secret_key_and_iv = private unnamed_addr constant [25 x i8] c"derive_secret_key_and_iv\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef %label, i64 noundef %labellen, i8* noundef %data, i64 noundef %datalen, i8* noundef %out, i64 noundef %outlen, i32 noundef %fatal) local_unnamed_addr #0 {
entry:
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %mode = alloca i32, align 4
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %tmp29 = alloca %struct.ossl_param_st, align 8
  %tmp32 = alloca %struct.ossl_param_st, align 8
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !26
  %call = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef %2) #5
  %3 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %3) #6
  %arraydecay = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %4 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  store i32 2, i32* %mode, align 4, !tbaa !27
  %call2 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md) #5
  %call3 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call) #5
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call) #5
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %call3, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i64 %labellen, 249
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %tobool.not = icmp eq i32 %fatal, 0
  tail call void @ERR_new() #5
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls13_hkdf_expand, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %if.end7

if.else:                                          ; preds = %if.then5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls13_hkdf_expand, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 367, i8* noundef null) #5
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call3) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #5
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call3) #5
  %tobool12.not = icmp eq i32 %fatal, 0
  tail call void @ERR_new() #5
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.then11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls13_hkdf_expand, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.else14:                                        ; preds = %if.then11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls13_hkdf_expand, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %conv82 = zext i32 %call9 to i64
  %incdec.ptr = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params83 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params83, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %mode) #5
  %incdec.ptr17 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call2, i64 noundef 0) #5
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  %incdec.ptr19 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %7 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef %secret, i64 noundef %conv82) #5
  %8 = bitcast %struct.ossl_param_st* %incdec.ptr17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6
  %incdec.ptr21 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %9 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @label_prefix, i64 0, i64 0), i64 noundef 6) #5
  %10 = bitcast %struct.ossl_param_st* %incdec.ptr19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #6
  %incdec.ptr23 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %11 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef %label, i64 noundef %labellen) #5
  %12 = bitcast %struct.ossl_param_st* %incdec.ptr21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #6
  %cmp25.not = icmp eq i8* %data, null
  br i1 %cmp25.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end16
  %incdec.ptr28 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %13 = bitcast %struct.ossl_param_st* %tmp29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %data, i64 noundef %datalen) #5
  %14 = bitcast %struct.ossl_param_st* %incdec.ptr23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %14, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end16
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr28, %if.then27 ], [ %incdec.ptr23, %if.end16 ]
  %15 = bitcast %struct.ossl_param_st* %tmp32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp32) #5
  %16 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %16, i8* noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #6
  %call34 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call3, i8* noundef %out, i64 noundef %outlen, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp35 = icmp slt i32 %call34, 1
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call3) #5
  br i1 %cmp35, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end30
  %tobool40.not = icmp eq i32 %fatal, 0
  call void @ERR_new() #5
  br i1 %tobool40.not, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.then39
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls13_hkdf_expand, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %if.end44

if.else42:                                        ; preds = %if.then39
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.tls13_hkdf_expand, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else42, %if.end30
  %cmp45 = xor i1 %cmp35, true
  %conv46 = zext i1 %cmp45 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else14, %entry, %if.end44, %if.end7
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %conv46, %if.end44 ], [ 0, %entry ], [ 0, %if.else14 ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %3) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_new() local_unnamed_addr #2

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare dso_local i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_derive_key(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef %key, i64 noundef %keylen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef 3, i8* noundef null, i64 noundef 0, i8* noundef %key, i64 noundef %keylen, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_derive_iv(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef %iv, i64 noundef %ivlen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @tls13_derive_iv.ivlabel, i64 0, i64 0), i64 noundef 2, i8* noundef null, i64 noundef 0, i8* noundef %iv, i64 noundef %ivlen, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_derive_finishedkey(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef %fin, i64 noundef %finlen) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @tls13_derive_finishedkey.finishedlabel, i64 0, i64 0), i64 noundef 8, i8* noundef null, i64 noundef 0, i8* noundef %fin, i64 noundef %finlen, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_generate_secret(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %prevsecret, i8* noundef %insecret, i64 noundef %insecretlen, i8* noundef %outsecret) local_unnamed_addr #0 {
entry:
  %params = alloca [7 x %struct.ossl_param_st], align 16
  %mode = alloca i32, align 4
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp17 = alloca %struct.ossl_param_st, align 8
  %tmp23 = alloca %struct.ossl_param_st, align 8
  %tmp26 = alloca %struct.ossl_param_st, align 8
  %tmp28 = alloca %struct.ossl_param_st, align 8
  %tmp30 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [7 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 280, i8* nonnull %0) #6
  %arraydecay = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  store i32 1, i32* %mode, align 4, !tbaa !27
  %call = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md) #5
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !26
  %call2 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* noundef %4) #5
  %call3 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call2) #5
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call2) #5
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %call3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls13_generate_secret, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #5
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls13_generate_secret, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call3) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv1076 = zext i32 %call4 to i64
  %incdec.ptr = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params77 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params77, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %mode) #5
  %incdec.ptr11 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #6
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call, i64 noundef 0) #5
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #6
  %cmp13.not = icmp eq i8* %insecret, null
  br i1 %cmp13.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %if.end9
  %incdec.ptr16 = getelementptr inbounds [7 x %struct.ossl_param_st], [7 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %7 = bitcast %struct.ossl_param_st* %tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp17, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %insecret, i64 noundef %insecretlen) #5
  %8 = bitcast %struct.ossl_param_st* %incdec.ptr11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end9
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr16, %if.then15 ], [ %incdec.ptr11, %if.end9 ]
  %cmp19.not = icmp eq i8* %prevsecret, null
  br i1 %cmp19.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end18
  %incdec.ptr22 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %9 = bitcast %struct.ossl_param_st* %tmp23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp23, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* noundef nonnull %prevsecret, i64 noundef %conv1076) #5
  %10 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18
  %p.1 = phi %struct.ossl_param_st* [ %incdec.ptr22, %if.then21 ], [ %p.0, %if.end18 ]
  %incdec.ptr25 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1, i64 1
  %11 = bitcast %struct.ossl_param_st* %tmp26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @label_prefix, i64 0, i64 0), i64 noundef 6) #5
  %12 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #6
  %incdec.ptr27 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1, i64 2
  %13 = bitcast %struct.ossl_param_st* %tmp28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #6
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp28, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @tls13_generate_secret.derived_secret_label, i64 0, i64 0), i64 noundef 7) #5
  %14 = bitcast %struct.ossl_param_st* %incdec.ptr25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %14, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #6
  %15 = bitcast %struct.ossl_param_st* %tmp30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %15) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp30) #5
  %16 = bitcast %struct.ossl_param_st* %incdec.ptr27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %16, i8* noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %15) #6
  %call32 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call3, i8* noundef %outsecret, i64 noundef %conv1076, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end24
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tls13_generate_secret, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end24
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call3) #5
  %cmp39 = xor i1 %cmp33, true
  %conv40 = zext i1 %cmp39 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv40, %if.end38 ], [ 0, %if.then8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 280, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_generate_handshake_secret(%struct.ssl_st* noundef %s, i8* noundef %insecret, i64 noundef %insecretlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef %s) #5
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 29, i64 0
  %0 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 30, i64 0
  %call1 = tail call i32 @tls13_generate_secret(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef nonnull %arraydecay, i8* noundef %insecret, i64 noundef %insecretlen, i8* noundef nonnull %0) #7
  ret i32 %call1
}

declare dso_local %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_generate_master_secret(%struct.ssl_st* noundef %s, i8* noundef %out, i8* noundef %prev, i64 noundef %prevlen, i64* nocapture noundef writeonly %secret_size) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef %s) #5
  %call1 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call) #5
  %conv = sext i32 %call1 to i64
  store i64 %conv, i64* %secret_size, align 8, !tbaa !30
  %call2 = tail call i32 @tls13_generate_secret(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef %prev, i8* noundef null, i64 noundef 0, i8* noundef %out) #7
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @tls13_final_finish_mac(%struct.ssl_st* noundef %s, i8* noundef readnone %str, i64 noundef %slen, i8* noundef %out) local_unnamed_addr #0 {
entry:
  %hash = alloca [64 x i8], align 16
  %finsecret = alloca [64 x i8], align 16
  %len = alloca i64, align 8
  %hashlen = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef %s) #5
  %call1 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %call) #5
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %finsecret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i64 0, i64* %len, align 8, !tbaa !30
  %3 = bitcast i64* %hashlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %4 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #6
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 85
  %6 = load i8*, i8** %propq, align 8, !tbaa !26
  %cmp.not = icmp eq i8* %6, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params58 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params58, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %6, i64 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr, %if.then ], [ %arraydecay, %entry ]
  %7 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #6
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4) #5
  %8 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !28
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #6
  %call6 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %0, i64 noundef 64, i64* noundef nonnull %hashlen) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %9 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !31
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %9, i64 0, i32 25
  %10 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !32
  %server_finished_label = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %10, i64 0, i32 8
  %11 = load i8*, i8** %server_finished_label, align 8, !tbaa !34
  %cmp9 = icmp eq i8* %11, %str
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %arraydecay11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 34, i64 0
  br label %if.end29

if.else:                                          ; preds = %if.end8
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %12 = load i64, i64* %finish_md_len, align 8, !tbaa !36
  %cmp13 = icmp eq i64 %12, 0
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %13 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !37
  %cmp16 = icmp eq i64 %13, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %lor.lhs.false, %if.else
  %arraydecay18 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 33, i64 0
  br label %if.end29

if.else19:                                        ; preds = %lor.lhs.false
  %call20 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %arraydecay21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 37, i64 0
  %14 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call23 = call i32 @tls13_derive_finishedkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call20, i8* noundef nonnull %arraydecay21, i8* noundef nonnull %1, i64 noundef %14) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end29

if.end29:                                         ; preds = %if.else19, %if.then17, %if.then10
  %key.0 = phi i8* [ %arraydecay11, %if.then10 ], [ %arraydecay18, %if.then17 ], [ %1, %if.else19 ]
  %15 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %15, i64 0, i32 0
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !21
  %propq32 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %15, i64 0, i32 85
  %17 = load i8*, i8** %propq32, align 8, !tbaa !26
  %18 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call35 = call i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* noundef %17, i8* noundef %call1, %struct.ossl_param_st* noundef nonnull %arraydecay, i8* noundef nonnull %key.0, i64 noundef %18, i8* noundef nonnull %0, i64 noundef %18, i8* noundef %out, i64 noundef 128, i64* noundef nonnull %len) #5
  %tobool36.not = icmp eq i8* %call35, null
  br i1 %tobool36.not, label %if.then37, label %err

if.then37:                                        ; preds = %if.end29
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.tls13_final_finish_mac, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %err

err:                                              ; preds = %if.end29, %if.else19, %if.end, %if.then37
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #5
  %19 = load i64, i64* %len, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i64 %19
}

declare dso_local i32 @ssl_handshake_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.ossl_param_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_setup_key_block(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %c = alloca %struct.evp_cipher_st*, align 8
  %hash = alloca %struct.evp_md_st*, align 8
  %0 = bitcast %struct.evp_cipher_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast %struct.evp_md_st** %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !38
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !39
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 20
  store %struct.ssl_cipher_st* %2, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !40
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %call = call i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef %4, %struct.ssl_session_st* noundef %3, %struct.evp_cipher_st** noundef nonnull %c, %struct.evp_md_st** noundef nonnull %hash, i32* noundef null, i64* noundef null, %struct.ssl_comp_st** noundef null, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !43
  call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %5) #5
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !29
  store %struct.evp_cipher_st* %6, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !43
  %new_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 15
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %new_hash, align 8, !tbaa !44
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef %7) #5
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %hash, align 8, !tbaa !29
  store %struct.evp_md_st* %8, %struct.evp_md_st** %new_hash, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare dso_local i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef, %struct.evp_cipher_st** noundef, %struct.evp_md_st** noundef, i32* noundef, i64* noundef, %struct.ssl_comp_st** noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ossl_statem_send_fatal(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @ssl_evp_md_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_change_cipher_state(%struct.ssl_st* noundef %s, i32 noundef %which) local_unnamed_addr #0 {
entry:
  %key = alloca [64 x i8], align 16
  %secret = alloca [64 x i8], align 16
  %hashval = alloca [64 x i8], align 16
  %hashlen = alloca i64, align 8
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %hdata = alloca i8*, align 8
  %hashlenui = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %hashval, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %3 = bitcast i64* %hashlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store i64 0, i64* %hashlen, align 8, !tbaa !30
  %4 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !29
  %and = and i32 %which, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %5 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !45
  %cmp.not = icmp eq %struct.evp_cipher_ctx_st* %5, null
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %call = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %5) #5
  %.pre = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !45
  br label %if.end8

if.else:                                          ; preds = %if.then
  %call3 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  store %struct.evp_cipher_ctx_st* %call3, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !45
  %cmp6 = icmp eq %struct.evp_cipher_ctx_st* %call3, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end8:                                          ; preds = %if.else, %if.then1
  %6 = phi %struct.evp_cipher_ctx_st* [ %call3, %if.else ], [ %.pre, %if.then1 ]
  %arraydecay10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 42, i64 0
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef nonnull %rlayer) #5
  br label %if.end27

if.else11:                                        ; preds = %entry
  %enc_write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 1, i32* %enc_write_state, align 4, !tbaa !46
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !47
  %cmp12.not = icmp eq %struct.evp_cipher_ctx_st* %7, null
  br i1 %cmp12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.else11
  %call15 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %7) #5
  %.pre398 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !47
  br label %if.end23

if.else16:                                        ; preds = %if.else11
  %call17 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #5
  store %struct.evp_cipher_ctx_st* %call17, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !47
  %cmp20 = icmp eq %struct.evp_cipher_ctx_st* %call17, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.else16
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end23:                                         ; preds = %if.else16, %if.then13
  %8 = phi %struct.evp_cipher_ctx_st* [ %call17, %if.else16 ], [ %.pre398, %if.then13 ]
  %arraydecay25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 47, i64 0
  %rlayer26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef nonnull %rlayer26) #5
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end8
  %iv.0 = phi i8* [ %arraydecay10, %if.end8 ], [ %arraydecay25, %if.end23 ]
  %ciph_ctx.0 = phi %struct.evp_cipher_ctx_st* [ %6, %if.end8 ], [ %8, %if.end23 ]
  %and30 = and i32 %which, 2
  %9 = and i32 %which, 18
  %.not = icmp eq i32 %9, 18
  %10 = and i32 %which, 33
  %.not396 = icmp eq i32 %10, 33
  %or.cond397 = or i1 %.not, %.not396
  br i1 %or.cond397, label %if.then37, label %if.else124

if.then37:                                        ; preds = %if.end27
  %and38 = and i32 %which, 64
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else109, label %if.then40

if.then40:                                        ; preds = %if.then37
  %11 = bitcast i8** %hdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #6
  %12 = bitcast i32* %hashlenui to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %13 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !39
  %call41 = tail call %struct.ssl_cipher_st* @SSL_SESSION_get0_cipher(%struct.ssl_session_st* noundef %13) #5
  %arraydecay42 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 29, i64 0
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %14 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !48
  %call43 = call i64 @BIO_ctrl(%struct.bio_st* noundef %14, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %11) #5
  %cmp44 = icmp slt i64 %call43, 1
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then40
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 487, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 332, i8* noundef null) #5
  br label %cleanup.thread

if.end46:                                         ; preds = %if.then40
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %15 = load i32, i32* %early_data_state, align 4, !tbaa !49
  %cmp47 = icmp eq i32 %15, 2
  br i1 %cmp47, label %land.lhs.true48, label %if.end66

land.lhs.true48:                                  ; preds = %if.end46
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %16 = load i32, i32* %max_early_data, align 8, !tbaa !50
  %cmp49.not = icmp eq i32 %16, 0
  br i1 %cmp49.not, label %if.end66, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true48
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !39
  %max_early_data52 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %17, i64 0, i32 26, i32 5
  %18 = load i32, i32* %max_early_data52, align 4, !tbaa !51
  %cmp53 = icmp eq i32 %18, 0
  br i1 %cmp53, label %if.then54, label %if.end66

if.then54:                                        ; preds = %land.lhs.true50
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %19 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !52
  %cmp55.not = icmp eq %struct.ssl_session_st* %19, null
  br i1 %cmp55.not, label %if.then62, label %land.rhs

land.rhs:                                         ; preds = %if.then54
  %max_early_data59 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %19, i64 0, i32 26, i32 5
  %20 = load i32, i32* %max_early_data59, align 4, !tbaa !51
  %cmp60 = icmp eq i32 %16, %20
  br i1 %cmp60, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then54, %land.rhs
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 502, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup.thread

if.end63:                                         ; preds = %land.rhs
  %call65 = call %struct.ssl_cipher_st* @SSL_SESSION_get0_cipher(%struct.ssl_session_st* noundef nonnull %19) #5
  br label %if.end66

if.end66:                                         ; preds = %if.end63, %land.lhs.true50, %land.lhs.true48, %if.end46
  %sslcipher.0 = phi %struct.ssl_cipher_st* [ %call65, %if.end63 ], [ %call41, %land.lhs.true50 ], [ %call41, %land.lhs.true48 ], [ %call41, %if.end46 ]
  %cmp67 = icmp eq %struct.ssl_cipher_st* %sslcipher.0, null
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end66
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 219, i8* noundef null) #5
  br label %cleanup.thread

if.end69:                                         ; preds = %if.end66
  %call70 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %cmp71 = icmp eq %struct.evp_md_ctx_st* %call70, null
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end69
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup.thread

if.end73:                                         ; preds = %if.end69
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %21 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %call74 = call i32 @ssl_cipher_get_evp_cipher(%struct.ssl_ctx_st* noundef %21, %struct.ssl_cipher_st* noundef nonnull %sslcipher.0, %struct.evp_cipher_st** noundef nonnull %cipher) #5
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end73
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80) #5
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call70) #5
  br label %cleanup.thread

if.end77:                                         ; preds = %if.end73
  %22 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !3
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %sslcipher.0, i64 0, i32 13
  %23 = load i32, i32* %algorithm2, align 8, !tbaa !53
  %call79 = call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %22, i32 noundef %23) #5
  %cmp80 = icmp eq %struct.evp_md_st* %call79, null
  br i1 %cmp80, label %if.then91, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end77
  %call82 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call70, %struct.evp_md_st* noundef nonnull %call79, %struct.engine_st* noundef null) #5
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then91, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false81
  %24 = load i8*, i8** %hdata, align 8, !tbaa !29
  %call85 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call70, i8* noundef %24, i64 noundef %call43) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then91, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %call89 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call70, i8* noundef nonnull %2, i32* noundef nonnull %hashlenui) #5
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.end92

if.then91:                                        ; preds = %lor.lhs.false87, %lor.lhs.false84, %lor.lhs.false81, %if.end77
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 538, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call70) #5
  br label %cleanup.thread

if.end92:                                         ; preds = %lor.lhs.false87
  %25 = load i32, i32* %hashlenui, align 4, !tbaa !27
  %conv = zext i32 %25 to i64
  store i64 %conv, i64* %hashlen, align 8, !tbaa !30
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call70) #5
  %arraydecay94 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 40, i64 0
  %call95 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef nonnull %call79, i8* noundef nonnull %arraydecay42, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.early_exporter_master_secret, i64 0, i64 0), i64 noundef 12, i8* noundef nonnull %2, i64 noundef %conv, i8* noundef nonnull %arraydecay94, i64 noundef %conv, i32 noundef 1) #7
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end92
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.tls13_change_cipher_state, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup.thread

if.end98:                                         ; preds = %if.end92
  %call101 = call i32 @ssl_log_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %arraydecay94, i64 noundef %conv) #5
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then45, %if.then68, %if.then72, %if.then91, %if.then97, %if.then76, %if.then62, %if.end98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6
  br label %err

cleanup:                                          ; preds = %if.end98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6
  br label %if.end138

if.else109:                                       ; preds = %if.then37
  %and110 = and i32 %which, 128
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.else119, label %if.then112

if.then112:                                       ; preds = %if.else109
  %arraydecay113 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 30, i64 0
  %arraydecay114 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 33, i64 0
  %call115 = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %call116 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call115) #5
  %conv117 = sext i32 %call116 to i64
  %arraydecay118 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 36, i64 0
  br label %if.end138

if.else119:                                       ; preds = %if.else109
  %arraydecay120 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 31, i64 0
  %arraydecay121 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 35, i64 0
  br label %if.end138

if.else124:                                       ; preds = %if.end27
  %and125 = and i32 %which, 128
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else134, label %if.then127

if.then127:                                       ; preds = %if.else124
  %arraydecay129 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 30, i64 0
  %arraydecay130 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 34, i64 0
  %call131 = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %call132 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call131) #5
  %conv133 = sext i32 %call132 to i64
  br label %if.end138

if.else134:                                       ; preds = %if.else124
  %arraydecay136 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 31, i64 0
  br label %if.end138

if.end138:                                        ; preds = %cleanup, %if.then127, %if.else134, %if.else119, %if.then112
  %hash.0 = phi i8* [ %2, %cleanup ], [ %arraydecay118, %if.then112 ], [ %arraydecay121, %if.else119 ], [ %2, %if.then127 ], [ %2, %if.else134 ]
  %insecret.0 = phi i8* [ %arraydecay42, %cleanup ], [ %arraydecay113, %if.then112 ], [ %arraydecay120, %if.else119 ], [ %arraydecay129, %if.then127 ], [ %arraydecay136, %if.else134 ]
  %finsecret.0 = phi i8* [ null, %cleanup ], [ %arraydecay114, %if.then112 ], [ null, %if.else119 ], [ %arraydecay130, %if.then127 ], [ null, %if.else134 ]
  %log_label.0 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), %cleanup ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), %if.then112 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), %if.else119 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), %if.then127 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), %if.else134 ]
  %finsecretlen.0 = phi i64 [ 0, %cleanup ], [ %conv117, %if.then112 ], [ 0, %if.else119 ], [ %conv133, %if.then127 ], [ 0, %if.else134 ]
  %cmp153 = phi i1 [ false, %cleanup ], [ false, %if.then112 ], [ false, %if.else119 ], [ false, %if.then127 ], [ true, %if.else134 ]
  %cmp161 = phi i1 [ false, %cleanup ], [ false, %if.then112 ], [ false, %if.else119 ], [ true, %if.then127 ], [ false, %if.else134 ]
  %cmp169 = phi i1 [ false, %cleanup ], [ false, %if.then112 ], [ true, %if.else119 ], [ false, %if.then127 ], [ false, %if.else134 ]
  %cmp236 = phi i1 [ true, %cleanup ], [ false, %if.then112 ], [ false, %if.else119 ], [ false, %if.then127 ], [ false, %if.else134 ]
  %label.0 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @tls13_change_cipher_state.client_early_traffic, i64 0, i64 0), %cleanup ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.client_handshake_traffic, i64 0, i64 0), %if.then112 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.client_application_traffic, i64 0, i64 0), %if.else119 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_handshake_traffic, i64 0, i64 0), %if.then127 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @tls13_change_cipher_state.server_application_traffic, i64 0, i64 0), %if.else134 ]
  %labellen.0 = phi i64 [ 11, %cleanup ], [ 12, %if.then112 ], [ 12, %if.else119 ], [ 12, %if.then127 ], [ 12, %if.else134 ]
  %md.1 = phi %struct.evp_md_st* [ %call79, %cleanup ], [ null, %if.then112 ], [ null, %if.else119 ], [ null, %if.then127 ], [ null, %if.else134 ]
  %and139 = and i32 %which, 64
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.then141, label %if.end152

if.then141:                                       ; preds = %if.end138
  %call142 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %26 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !43
  store %struct.evp_cipher_st* %26, %struct.evp_cipher_st** %cipher, align 8, !tbaa !29
  %call144 = call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #5
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %err, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %if.then141
  %call148 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %2, i64 noundef 64, i64* noundef nonnull %hashlen) #5
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %if.end152

if.end152:                                        ; preds = %lor.lhs.false146, %if.end138
  %md.2 = phi %struct.evp_md_st* [ %md.1, %if.end138 ], [ %call142, %lor.lhs.false146 ]
  br i1 %cmp153, label %if.then155, label %if.end160

if.then155:                                       ; preds = %if.end152
  %arraydecay157 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 35, i64 0
  %27 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call159 = call i8* @memcpy(i8* noundef nonnull %arraydecay157, i8* noundef nonnull %2, i64 noundef %27) #5
  br label %if.end160

if.end160:                                        ; preds = %if.then155, %if.end152
  br i1 %cmp161, label %if.then163, label %if.end168

if.then163:                                       ; preds = %if.end160
  %arraydecay165 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 36, i64 0
  %28 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call167 = call i8* @memcpy(i8* noundef nonnull %arraydecay165, i8* noundef nonnull %2, i64 noundef %28) #5
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %if.end160
  br i1 %cmp169, label %if.then171, label %if.end179

if.then171:                                       ; preds = %if.end168
  %call172 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %29 = load i64, i64* %hashlen, align 8, !tbaa !30
  %arraydecay174 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 32, i64 0
  %call175 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call172, i8* noundef nonnull %insecret.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @tls13_change_cipher_state.resumption_master_secret, i64 0, i64 0), i64 noundef 10, i8* noundef nonnull %2, i64 noundef %29, i8* noundef nonnull %arraydecay174, i64 noundef %29, i32 noundef 1) #7
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %if.end179

if.end179:                                        ; preds = %if.then171, %if.end168
  %30 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !29
  %cmp180.not = icmp eq %struct.evp_cipher_st* %30, null
  br i1 %cmp180.not, label %err, label %if.end185

if.end185:                                        ; preds = %if.end179
  %call189 = call fastcc i32 @derive_secret_key_and_iv(%struct.ssl_st* noundef nonnull %s, i32 noundef %and30, %struct.evp_md_st* noundef %md.2, %struct.evp_cipher_st* noundef nonnull %30, i8* noundef nonnull %insecret.0, i8* noundef nonnull %hash.0, i8* noundef %label.0, i64 noundef %labellen.0, i8* noundef nonnull %1, i8* noundef nonnull %0, i8* noundef nonnull %iv.0, %struct.evp_cipher_ctx_st* noundef %ciph_ctx.0) #7
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %err, label %if.end192

if.end192:                                        ; preds = %if.end185
  br i1 %cmp153, label %if.then195, label %if.else211

if.then195:                                       ; preds = %if.end192
  %arraydecay196 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 38, i64 0
  %31 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call198 = call i8* @memcpy(i8* noundef nonnull %arraydecay196, i8* noundef nonnull %1, i64 noundef %31) #5
  %call199 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %32 = load i64, i64* %hashlen, align 8, !tbaa !30
  %arraydecay200 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 39, i64 0
  %call201 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call199, i8* noundef nonnull %insecret.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @tls13_change_cipher_state.exporter_master_secret, i64 0, i64 0), i64 noundef 10, i8* noundef nonnull %hash.0, i64 noundef %32, i8* noundef nonnull %arraydecay200, i64 noundef %32, i32 noundef 1) #7
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %if.end204

if.end204:                                        ; preds = %if.then195
  %33 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call207 = call i32 @ssl_log_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %arraydecay200, i64 noundef %33) #5
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %err, label %if.end219

if.else211:                                       ; preds = %if.end192
  br i1 %cmp169, label %if.then214, label %if.end219

if.then214:                                       ; preds = %if.else211
  %arraydecay215 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 37, i64 0
  %34 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call217 = call i8* @memcpy(i8* noundef nonnull %arraydecay215, i8* noundef nonnull %1, i64 noundef %34) #5
  br label %if.end219

if.end219:                                        ; preds = %if.else211, %if.then214, %if.end204
  %35 = load i64, i64* %hashlen, align 8, !tbaa !30
  %call221 = call i32 @ssl_log_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef %log_label.0, i8* noundef nonnull %1, i64 noundef %35) #5
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %err, label %if.end224

if.end224:                                        ; preds = %if.end219
  %cmp225.not = icmp eq i8* %finsecret.0, null
  br i1 %cmp225.not, label %if.end233, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %if.end224
  %call228 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %call230 = call i32 @tls13_derive_finishedkey(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call228, i8* noundef nonnull %1, i8* noundef nonnull %finsecret.0, i64 noundef %finsecretlen.0) #7
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %err, label %if.end233

if.end233:                                        ; preds = %land.lhs.true227, %if.end224
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %36 = load i32, i32* %server, align 8, !tbaa !55
  %tobool234 = icmp eq i32 %36, 0
  %or.cond = and i1 %cmp236, %tobool234
  %enc_write_state240 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  br i1 %or.cond, label %if.then238, label %if.else241

if.then238:                                       ; preds = %if.end233
  store i32 2, i32* %enc_write_state240, align 4, !tbaa !46
  br label %err

if.else241:                                       ; preds = %if.end233
  store i32 0, i32* %enc_write_state240, align 4, !tbaa !46
  br label %err

err:                                              ; preds = %cleanup.thread, %if.then238, %if.else241, %land.lhs.true227, %if.end219, %if.end204, %if.then195, %if.end185, %if.end179, %if.then171, %if.then141, %lor.lhs.false146, %if.then21, %if.then7
  %ret.0 = phi i32 [ 0, %land.lhs.true227 ], [ 0, %if.end219 ], [ 0, %if.end204 ], [ 0, %if.then195 ], [ 0, %if.end185 ], [ 0, %if.end179 ], [ 0, %if.then171 ], [ 0, %lor.lhs.false146 ], [ 0, %if.then141 ], [ 0, %if.then7 ], [ 0, %if.then21 ], [ 1, %if.else241 ], [ 1, %if.then238 ], [ 0, %cleanup.thread ]
  %and245 = and i32 %which, 64
  %cmp246.not = icmp eq i32 %and245, 0
  br i1 %cmp246.not, label %if.end249, label %if.then248

if.then248:                                       ; preds = %err
  %37 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !29
  call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %37) #5
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %err
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %ret.0
}

declare dso_local i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare dso_local void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare dso_local void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_cipher_st* @SSL_SESSION_get0_cipher(%struct.ssl_session_st* noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare dso_local i32 @ssl_cipher_get_evp_cipher(%struct.ssl_ctx_st* noundef, %struct.ssl_cipher_st* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @ssl_log_secret(%struct.ssl_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @derive_secret_key_and_iv(%struct.ssl_st* noundef %s, i32 noundef %sending, %struct.evp_md_st* noundef %md, %struct.evp_cipher_st* noundef %ciph, i8* noundef %insecret, i8* noundef %hash, i8* noundef %label, i64 noundef %labellen, i8* noundef %secret, i8* noundef %key, i8* noundef %iv, %struct.evp_cipher_ctx_st* noundef %ciph_ctx) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #5
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.derive_secret_key_and_iv, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #5
  br label %cleanup74

if.end:                                           ; preds = %entry
  %conv3118 = zext i32 %call to i64
  %call4 = tail call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %insecret, i8* noundef %label, i64 noundef %labellen, i8* noundef %hash, i64 noundef %conv3118, i8* noundef %secret, i64 noundef %conv3118, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup74, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %ciph) #5
  %conv8 = sext i32 %call7 to i64
  %call9 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %ciph) #5
  %cmp10 = icmp eq i32 %call9, 7
  br i1 %cmp10, label %if.then12, label %if.else44

if.then12:                                        ; preds = %if.end6
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !38
  %cmp13.not = icmp eq %struct.ssl_cipher_st* %0, null
  br i1 %cmp13.not, label %if.else, label %cleanup.thread

if.else:                                          ; preds = %if.then12
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !39
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 20
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !40
  %cmp19.not = icmp eq %struct.ssl_cipher_st* %2, null
  br i1 %cmp19.not, label %if.else25, label %cleanup.thread

if.else25:                                        ; preds = %if.else
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !52
  %cmp26.not = icmp eq %struct.ssl_session_st* %3, null
  br i1 %cmp26.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else25
  %cipher29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 20
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher29, align 8, !tbaa !40
  %cmp30.not = icmp eq %struct.ssl_cipher_st* %4, null
  br i1 %cmp30.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true, %if.else, %if.then12
  %.sink = phi %struct.ssl_cipher_st* [ %0, %if.then12 ], [ %2, %if.else ], [ %4, %land.lhs.true ]
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %.sink, i64 0, i32 6
  %algenc.0 = load i32, i32* %algorithm_enc, align 4, !tbaa !56
  %and = and i32 %algenc.0, 196608
  %tobool40.not = icmp eq i32 %and, 0
  %. = select i1 %tobool40.not, i64 16, i64 8
  br label %if.end47

cleanup:                                          ; preds = %if.else25, %land.lhs.true
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.derive_secret_key_and_iv, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #5
  br label %cleanup74

if.else44:                                        ; preds = %if.end6
  %call45 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %ciph) #5
  %conv46 = sext i32 %call45 to i64
  br label %if.end47

if.end47:                                         ; preds = %cleanup.thread, %if.else44
  %taglen.2 = phi i64 [ 0, %if.else44 ], [ %., %cleanup.thread ]
  %ivlen.0 = phi i64 [ %conv46, %if.else44 ], [ 12, %cleanup.thread ]
  %call48 = tail call i32 @tls13_derive_key(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef %key, i64 noundef %conv8) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %call50 = tail call i32 @tls13_derive_iv(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %md, i8* noundef %secret, i8* noundef %iv, i64 noundef %ivlen.0) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup74, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false
  %call54 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ciph_ctx, %struct.evp_cipher_st* noundef %ciph, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %sending) #5
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %if.then72, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end53
  %conv58 = trunc i64 %ivlen.0 to i32
  %call59 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %ciph_ctx, i32 noundef 9, i32 noundef %conv58, i8* noundef null) #5
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then72, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false57
  %cmp62.not = icmp eq i64 %taglen.2, 0
  br i1 %cmp62.not, label %lor.lhs.false68, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %lor.lhs.false61
  %conv65 = trunc i64 %taglen.2 to i32
  %call66 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %ciph_ctx, i32 noundef 17, i32 noundef %conv65, i8* noundef null) #5
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %land.lhs.true64, %lor.lhs.false61
  %call69 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ciph_ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %key, i8* noundef null, i32 noundef -1) #5
  %cmp70 = icmp slt i32 %call69, 1
  br i1 %cmp70, label %if.then72, label %cleanup74

if.then72:                                        ; preds = %lor.lhs.false68, %land.lhs.true64, %lor.lhs.false57, %if.end53
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.derive_secret_key_and_iv, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #5
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup, %lor.lhs.false68, %if.end47, %lor.lhs.false, %if.end, %if.then72, %if.then
  %retval.1 = phi i32 [ 0, %if.then72 ], [ 0, %cleanup ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end47 ], [ 1, %lor.lhs.false68 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_update_key(%struct.ssl_st* noundef %s, i32 noundef %sending) local_unnamed_addr #0 {
entry:
  %key = alloca [64 x i8], align 16
  %secret = alloca [64 x i8], align 16
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef %s) #5
  %call1 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call) #5
  %conv = sext i32 %call1 to i64
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %secret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !55
  %cmp = icmp eq i32 %2, %sending
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 38, i64 0
  %arraydecay3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 37, i64 0
  %insecret.0 = select i1 %cmp, i8* %arraydecay, i8* %arraydecay3
  %tobool.not = icmp eq i32 %sending, 0
  br i1 %tobool.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  %enc_write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 1, i32* %enc_write_state, align 4, !tbaa !46
  %arraydecay5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 47, i64 0
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %3 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !47
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef nonnull %rlayer) #5
  br label %if.end9

if.else6:                                         ; preds = %entry
  %arraydecay7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 42, i64 0
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %4 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !45
  %rlayer8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef nonnull %rlayer8) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then4
  %iv.0 = phi i8* [ %arraydecay5, %if.then4 ], [ %arraydecay7, %if.else6 ]
  %ciph_ctx.0 = phi %struct.evp_cipher_ctx_st* [ %3, %if.then4 ], [ %4, %if.else6 ]
  %call10 = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #5
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !43
  %call13 = call fastcc i32 @derive_secret_key_and_iv(%struct.ssl_st* noundef nonnull %s, i32 noundef %sending, %struct.evp_md_st* noundef %call10, %struct.evp_cipher_st* noundef %5, i8* noundef nonnull %insecret.0, i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @tls13_update_key.application_traffic, i64 0, i64 0), i64 noundef 11, i8* noundef nonnull %1, i8* noundef nonnull %0, i8* noundef nonnull %iv.0, %struct.evp_cipher_ctx_st* noundef %ciph_ctx.0) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end9
  %call18 = call i8* @memcpy(i8* noundef nonnull %insecret.0, i8* noundef nonnull %1, i64 noundef %conv) #5
  %enc_write_state20 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 0, i32* %enc_write_state20, align 4, !tbaa !46
  br label %err

err:                                              ; preds = %if.end9, %if.end16
  %ret.0 = phi i32 [ 1, %if.end16 ], [ 0, %if.end9 ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 64) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_alert_code(i32 noundef %code) local_unnamed_addr #0 {
entry:
  switch i32 %code, label %if.end [
    i32 116, label %return
    i32 109, label %return
  ]

if.end:                                           ; preds = %entry
  %call = tail call i32 @tls1_alert_code(i32 noundef %code) #5
  br label %return

return:                                           ; preds = %entry, %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ %code, %entry ], [ %code, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @tls1_alert_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_export_keying_material(%struct.ssl_st* noundef %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen, i32 noundef %use_context) local_unnamed_addr #0 {
entry:
  %exportsecret = alloca [64 x i8], align 16
  %hash = alloca [64 x i8], align 16
  %data = alloca [64 x i8], align 16
  %hashsize = alloca i32, align 4
  %datalen = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %exportsecret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %call = tail call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef %s) #5
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %3 = bitcast i32* %hashsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = bitcast i32* %datalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %cmp = icmp eq %struct.evp_md_ctx_st* %call1, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @ossl_statem_export_allowed(%struct.ssl_st* noundef %s) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_md_st* noundef %call, %struct.engine_st* noundef null) #5
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %tobool3.not = icmp eq i32 %use_context, 0
  %spec.select = select i1 %tobool3.not, i64 0, i64 %contextlen
  %call9 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef %context, i64 noundef %spec.select) #5
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %1, i32* noundef nonnull %hashsize) #5
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %call15 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, %struct.evp_md_st* noundef %call, %struct.engine_st* noundef null) #5
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call19 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call1, i8* noundef nonnull %2, i32* noundef nonnull %datalen) #5
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %arraydecay22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 39, i64 0
  %5 = load i32, i32* %datalen, align 4, !tbaa !27
  %conv = zext i32 %5 to i64
  %6 = load i32, i32* %hashsize, align 4, !tbaa !27
  %conv25 = zext i32 %6 to i64
  %call26 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef nonnull %arraydecay22, i8* noundef %label, i64 noundef %llen, i8* noundef nonnull %2, i64 noundef %conv, i8* noundef nonnull %0, i64 noundef %conv25, i32 noundef 0) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false21
  %7 = load i32, i32* %hashsize, align 4, !tbaa !27
  %conv31 = zext i32 %7 to i64
  %call32 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef %s, %struct.evp_md_st* noundef %call, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @tls13_export_keying_material.exporterlabel, i64 0, i64 0), i64 noundef 8, i8* noundef nonnull %1, i64 noundef %conv31, i8* noundef %out, i64 noundef %olen, i32 noundef 0) #7
  %tobool33.not = icmp ne i32 %call32, 0
  %spec.select52 = zext i1 %tobool33.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false28, %if.end, %lor.lhs.false8, %lor.lhs.false11, %lor.lhs.false14, %lor.lhs.false17, %lor.lhs.false21, %entry, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false ], [ %spec.select52, %lor.lhs.false28 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %ret.0
}

declare dso_local i32 @ossl_statem_export_allowed(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tls13_export_keying_material_early(%struct.ssl_st* noundef %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen) local_unnamed_addr #0 {
entry:
  %exportsecret = alloca [64 x i8], align 16
  %hash = alloca [64 x i8], align 16
  %data = alloca [64 x i8], align 16
  %hashsize = alloca i32, align 4
  %datalen = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %exportsecret, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #6
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %3 = bitcast i32* %hashsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %4 = bitcast i32* %datalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ossl_statem_export_early_allowed(%struct.ssl_st* noundef %s) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %5 = load i32, i32* %server, align 8, !tbaa !55
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %max_early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 114
  %6 = load i32, i32* %max_early_data, align 8, !tbaa !50
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !39
  %max_early_data5 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %7, i64 0, i32 26, i32 5
  %8 = load i32, i32* %max_early_data5, align 4, !tbaa !51
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true4
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %session9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %session9.sink = phi %struct.ssl_session_st** [ %session9, %if.else ], [ %psksession, %if.then7 ]
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session9.sink, align 8, !tbaa !29
  %call10 = tail call %struct.ssl_cipher_st* @SSL_SESSION_get0_cipher(%struct.ssl_session_st* noundef %9) #5
  %ctx12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx12, align 8, !tbaa !3
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call10, i64 0, i32 13
  %11 = load i32, i32* %algorithm2, align 8, !tbaa !53
  %call13 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %10, i32 noundef %11) #5
  %call14 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %call13, %struct.engine_st* noundef null) #5
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end11
  %call17 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %context, i64 noundef %contextlen) #5
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %call20 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %1, i32* noundef nonnull %hashsize) #5
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call23 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %call13, %struct.engine_st* noundef null) #5
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %call27 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %2, i32* noundef nonnull %datalen) #5
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %arraydecay30 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 40, i64 0
  %12 = load i32, i32* %datalen, align 4, !tbaa !27
  %conv = zext i32 %12 to i64
  %13 = load i32, i32* %hashsize, align 4, !tbaa !27
  %conv33 = zext i32 %13 to i64
  %call34 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call13, i8* noundef nonnull %arraydecay30, i8* noundef %label, i64 noundef %llen, i8* noundef nonnull %2, i64 noundef %conv, i8* noundef nonnull %0, i64 noundef %conv33, i32 noundef 0) #7
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false29
  %14 = load i32, i32* %hashsize, align 4, !tbaa !27
  %conv39 = zext i32 %14 to i64
  %call40 = call i32 @tls13_hkdf_expand(%struct.ssl_st* noundef nonnull %s, %struct.evp_md_st* noundef %call13, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @tls13_export_keying_material_early.exporterlabel, i64 0, i64 0), i64 noundef 8, i8* noundef nonnull %1, i64 noundef %conv39, i8* noundef %out, i64 noundef %olen, i32 noundef 0) #7
  %tobool41.not = icmp ne i32 %call40, 0
  %spec.select = zext i1 %tobool41.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false36, %if.end11, %lor.lhs.false16, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %lor.lhs.false29, %entry, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end11 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false ], [ %spec.select, %lor.lhs.false36 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret i32 %ret.0
}

declare dso_local i32 @ossl_statem_export_early_allowed(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 2472}
!4 = !{!"ssl_st", !5, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !8, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !9, i64 72, !6, i64 132, !8, i64 136, !8, i64 144, !10, i64 152, !10, i64 160, !11, i64 168, !8, i64 1208, !8, i64 1216, !8, i64 1224, !5, i64 1232, !8, i64 1240, !14, i64 1248, !8, i64 1312, !8, i64 1320, !8, i64 1328, !8, i64 1336, !5, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !8, i64 2120, !6, i64 2128, !8, i64 2144, !8, i64 2152, !8, i64 2160, !8, i64 2168, !6, i64 2176, !8, i64 2192, !8, i64 2200, !6, i64 2208, !10, i64 2272, !6, i64 2280, !10, i64 2288, !6, i64 2296, !8, i64 2328, !8, i64 2336, !8, i64 2344, !10, i64 2352, !8, i64 2360, !6, i64 2368, !10, i64 2400, !5, i64 2408, !8, i64 2416, !8, i64 2424, !5, i64 2432, !5, i64 2436, !8, i64 2440, !8, i64 2448, !8, i64 2456, !8, i64 2464, !8, i64 2472, !8, i64 2480, !10, i64 2488, !15, i64 2496, !8, i64 2512, !8, i64 2520, !6, i64 2528, !10, i64 2536, !5, i64 2544, !5, i64 2548, !5, i64 2552, !10, i64 2560, !5, i64 2568, !5, i64 2572, !10, i64 2576, !10, i64 2584, !10, i64 2592, !16, i64 2600, !8, i64 2904, !5, i64 2912, !8, i64 2920, !8, i64 2928, !8, i64 2936, !5, i64 2944, !8, i64 2952, !8, i64 2960, !8, i64 2968, !5, i64 2976, !5, i64 2980, !6, i64 2984, !5, i64 2988, !8, i64 2992, !10, i64 3000, !5, i64 3008, !8, i64 3016, !18, i64 3024, !8, i64 3152, !19, i64 3160, !8, i64 7448, !8, i64 7456, !8, i64 7464, !8, i64 7472, !10, i64 7480, !5, i64 7488, !5, i64 7492, !5, i64 7496, !8, i64 7504, !8, i64 7512, !10, i64 7520, !8, i64 7528, !10, i64 7536, !10, i64 7544, !10, i64 7552, !8, i64 7560, !8, i64 7568, !8, i64 7576, !8, i64 7584, !8, i64 7592, !10, i64 7600}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 52, !6, i64 56}
!10 = !{!"long", !6, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !5, i64 216, !5, i64 220, !8, i64 224, !8, i64 232, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !6, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !12, i64 280, !6, i64 840, !10, i64 904, !6, i64 912, !10, i64 976, !5, i64 984, !5, i64 988, !8, i64 992, !10, i64 1000, !8, i64 1008, !10, i64 1016, !5, i64 1024, !6, i64 1028, !6, i64 1029, !13, i64 1030, !8, i64 1032}
!12 = !{!"", !6, i64 0, !10, i64 128, !6, i64 136, !10, i64 264, !10, i64 272, !5, i64 280, !8, i64 288, !8, i64 296, !5, i64 304, !8, i64 312, !10, i64 320, !8, i64 328, !10, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !5, i64 368, !10, i64 376, !8, i64 384, !5, i64 392, !8, i64 400, !10, i64 408, !8, i64 416, !10, i64 424, !8, i64 432, !10, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !10, i64 480, !10, i64 488, !8, i64 496, !6, i64 504, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552}
!13 = !{!"short", !6, i64 0}
!14 = !{!"ssl_dane_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !10, i64 56}
!15 = !{!"crypto_ex_data_st", !8, i64 0, !8, i64 8}
!16 = !{!"", !6, i64 0, !8, i64 32, !8, i64 40, !8, i64 48, !5, i64 56, !8, i64 64, !13, i64 72, !5, i64 76, !17, i64 80, !5, i64 112, !5, i64 116, !10, i64 120, !8, i64 128, !10, i64 136, !8, i64 144, !10, i64 152, !8, i64 160, !10, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !10, i64 232, !8, i64 240, !10, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !8, i64 272, !10, i64 280, !5, i64 288, !6, i64 292, !5, i64 296}
!17 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !10, i64 24}
!18 = !{!"srp_ctx_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !5, i64 112, !10, i64 120}
!19 = !{!"record_layer_st", !8, i64 0, !5, i64 8, !5, i64 12, !10, i64 16, !10, i64 24, !20, i64 32, !6, i64 80, !6, i64 1616, !8, i64 4176, !10, i64 4184, !10, i64 4192, !6, i64 4200, !10, i64 4208, !10, i64 4216, !10, i64 4224, !5, i64 4232, !10, i64 4240, !8, i64 4248, !6, i64 4256, !6, i64 4264, !5, i64 4272, !5, i64 4276, !8, i64 4280}
!20 = !{!"ssl3_buffer_st", !8, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!21 = !{!22, !8, i64 0}
!22 = !{!"ssl_ctx_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !10, i64 56, !8, i64 64, !8, i64 72, !5, i64 80, !10, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !23, i64 120, !6, i64 164, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !15, i64 240, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !10, i64 312, !5, i64 320, !5, i64 324, !5, i64 328, !10, i64 336, !8, i64 344, !5, i64 352, !8, i64 360, !8, i64 368, !5, i64 376, !10, i64 384, !6, i64 392, !8, i64 424, !8, i64 432, !8, i64 440, !5, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !24, i64 536, !8, i64 760, !8, i64 768, !8, i64 776, !8, i64 784, !18, i64 792, !25, i64 920, !8, i64 952, !8, i64 960, !8, i64 968, !8, i64 976, !5, i64 984, !5, i64 988, !8, i64 992, !8, i64 1000, !10, i64 1008, !8, i64 1016, !8, i64 1024, !8, i64 1032, !10, i64 1040, !8, i64 1048, !8, i64 1056, !5, i64 1064, !8, i64 1072, !8, i64 1080, !8, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !8, i64 1568, !8, i64 1576, !10, i64 1584, !10, i64 1592, !5, i64 1600, !5, i64 1604, !5, i64 1608, !5, i64 1612}
!23 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!24 = !{!"", !8, i64 0, !8, i64 8, !6, i64 16, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !5, i64 72, !6, i64 76, !10, i64 80, !8, i64 88, !10, i64 96, !8, i64 104, !8, i64 112, !10, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !10, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !6, i64 192}
!25 = !{!"dane_ctx_st", !8, i64 0, !8, i64 8, !6, i64 16, !10, i64 24}
!26 = !{!22, !8, i64 1088}
!27 = !{!5, !5, i64 0}
!28 = !{i64 0, i64 8, !29, i64 8, i64 4, !27, i64 16, i64 8, !29, i64 24, i64 8, !30, i64 32, i64 8, !30}
!29 = !{!8, !8, i64 0}
!30 = !{!10, !10, i64 0}
!31 = !{!4, !8, i64 8}
!32 = !{!33, !8, i64 192}
!33 = !{!"ssl_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216}
!34 = !{!35, !8, i64 64}
!35 = !{!"ssl3_enc_method", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !10, i64 56, !8, i64 64, !10, i64 72, !8, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120}
!36 = !{!4, !10, i64 576}
!37 = !{!4, !10, i64 712}
!38 = !{!4, !8, i64 736}
!39 = !{!4, !8, i64 2328}
!40 = !{!41, !8, i64 760}
!41 = !{!"ssl_session_st", !5, i64 0, !10, i64 8, !6, i64 16, !6, i64 80, !10, i64 592, !6, i64 600, !10, i64 632, !6, i64 640, !8, i64 672, !8, i64 680, !5, i64 688, !8, i64 696, !8, i64 704, !10, i64 712, !6, i64 720, !10, i64 728, !10, i64 736, !10, i64 744, !5, i64 752, !5, i64 756, !8, i64 760, !10, i64 768, !5, i64 776, !15, i64 784, !8, i64 800, !8, i64 808, !42, i64 816, !8, i64 880, !8, i64 888, !10, i64 896, !5, i64 904, !8, i64 912, !8, i64 920}
!42 = !{!"", !8, i64 0, !8, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !8, i64 40, !10, i64 48, !6, i64 56}
!43 = !{!4, !8, i64 800}
!44 = !{!4, !8, i64 808}
!45 = !{!4, !8, i64 2120}
!46 = !{!4, !6, i64 124}
!47 = !{!4, !8, i64 2168}
!48 = !{!4, !8, i64 392}
!49 = !{!4, !6, i64 132}
!50 = !{!4, !5, i64 7488}
!51 = !{!41, !5, i64 852}
!52 = !{!4, !8, i64 2336}
!53 = !{!54, !5, i64 64}
!54 = !{!"ssl_cipher_st", !5, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72}
!55 = !{!4, !5, i64 56}
!56 = !{!54, !5, i64 36}
