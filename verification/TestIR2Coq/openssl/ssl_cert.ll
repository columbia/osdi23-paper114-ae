; ModuleID = 'ssl/ssl_cert.c'
source_filename = "ssl/ssl_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SSL_CERT_LOOKUP = type { i32, i32 }
%struct.cert_st = type { %struct.cert_pkey_st*, %struct.evp_pkey_st*, %struct.dh_st* (%struct.ssl_st*, i32, i32)*, i32, i32, [9 x %struct.cert_pkey_st], i8*, i64, i16*, i64, i16*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.x509_store_st*, %struct.x509_store_st*, %struct.custom_ext_methods, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32, i8*, i8*, i32, i8* }
%struct.cert_pkey_st = type { %struct.x509_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, i8*, i64 }
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.evp_pkey_st = type opaque
%struct.dh_st = type opaque
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
%struct.evp_md_st = type opaque
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type opaque
%struct.sigalg_lookup_st = type { i8*, i16, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.anon = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
%struct.x509_store_ctx_st = type opaque
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
%struct.x509_store_st = type opaque
%struct.custom_ext_methods = type { %struct.custom_ext_method*, i64 }
%struct.custom_ext_method = type { i16, i32, i32, i32, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i8*)*, i8*, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)*, i8* }
%struct.stack_st = type opaque
%struct.X509_name_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.lhash_st_X509_NAME = type { %union.lh_X509_NAME_dummy }
%union.lh_X509_NAME_dummy = type { i8* }
%struct.lhash_st = type opaque
%struct.OPENSSL_dir_context_st = type opaque
%struct.ossl_store_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_store_info_st = type opaque

@ssl_x509_store_ctx_once = internal global i32 0, align 4
@ssl_x509_store_ctx_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@ssl_x509_store_ctx_idx = internal global i32 -1, align 4
@.str = private unnamed_addr constant [15 x i8] c"ssl/ssl_cert.c\00", align 1
@__func__.ssl_cert_new = private unnamed_addr constant [13 x i8] c"ssl_cert_new\00", align 1
@__func__.ssl_cert_dup = private unnamed_addr constant [13 x i8] c"ssl_cert_dup\00", align 1
@__func__.ssl_cert_set0_chain = private unnamed_addr constant [20 x i8] c"ssl_cert_set0_chain\00", align 1
@__func__.ssl_cert_add0_chain_cert = private unnamed_addr constant [25 x i8] c"ssl_cert_add0_chain_cert\00", align 1
@__func__.ssl_verify_cert_chain = private unnamed_addr constant [22 x i8] c"ssl_verify_cert_chain\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ssl_client\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ssl_server\00", align 1
@__func__.SSL_dup_CA_list = private unnamed_addr constant [16 x i8] c"SSL_dup_CA_list\00", align 1
@__func__.SSL_load_client_CA_file_ex = private unnamed_addr constant [27 x i8] c"SSL_load_client_CA_file_ex\00", align 1
@__func__.SSL_add_file_cert_subjects_to_stack = private unnamed_addr constant [36 x i8] c"SSL_add_file_cert_subjects_to_stack\00", align 1
@__func__.SSL_add_dir_cert_subjects_to_stack = private unnamed_addr constant [35 x i8] c"SSL_add_dir_cert_subjects_to_stack\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"calling OPENSSL_dir_read(%s)\00", align 1
@__func__.ssl_build_cert_chain = private unnamed_addr constant [21 x i8] c"ssl_build_cert_chain\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Verify error:%s\00", align 1
@ssl_get_security_level_bits.minbits_table = internal unnamed_addr constant [6 x i32] [i32 0, i32 80, i32 112, i32 128, i32 192, i32 256], align 16
@ssl_cert_info = internal constant [9 x %struct.SSL_CERT_LOOKUP] [%struct.SSL_CERT_LOOKUP { i32 6, i32 1 }, %struct.SSL_CERT_LOOKUP { i32 912, i32 1 }, %struct.SSL_CERT_LOOKUP { i32 116, i32 2 }, %struct.SSL_CERT_LOOKUP { i32 408, i32 8 }, %struct.SSL_CERT_LOOKUP { i32 811, i32 32 }, %struct.SSL_CERT_LOOKUP { i32 979, i32 128 }, %struct.SSL_CERT_LOOKUP { i32 980, i32 128 }, %struct.SSL_CERT_LOOKUP { i32 1087, i32 8 }, %struct.SSL_CERT_LOOKUP { i32 1088, i32 8 }], align 16
@.str.6 = private unnamed_addr constant [24 x i8] c"SSL for verify callback\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @ssl_x509_store_ctx_once, void ()* noundef nonnull @ssl_x509_store_ctx_init_ossl_) #12
  %tobool = icmp ne i32 %call, 0
  %0 = load i32, i32* @ssl_x509_store_ctx_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %0, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load volatile i32, i32* @ssl_x509_store_ctx_idx, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @ssl_x509_store_ctx_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @ssl_x509_store_ctx_init() #13
  store i32 %call, i32* @ssl_x509_store_ctx_init_ossl_ret_, align 4, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.cert_st* @ssl_cert_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 536, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_cert_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.cert_st*
  %pkeys = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %call to i8**
  store i8* %pkeys, i8** %1, align 8, !tbaa !8
  %references = getelementptr inbounds i8, i8* %call, i64 520
  %2 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !13
  %sec_cb = getelementptr inbounds i8, i8* %call, i64 488
  %3 = bitcast i8* %sec_cb to i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)**
  store i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* @ssl_security_default_callback, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %3, align 8, !tbaa !14
  %sec_level = getelementptr inbounds i8, i8* %call, i64 496
  %4 = bitcast i8* %sec_level to i32*
  store i32 1, i32* %4, align 8, !tbaa !15
  %sec_ex = getelementptr inbounds i8, i8* %call, i64 504
  %5 = bitcast i8* %sec_ex to i8**
  store i8* null, i8** %5, align 8, !tbaa !16
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #12
  %lock = getelementptr inbounds i8, i8* %call, i64 528
  %6 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %6, align 8, !tbaa !17
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_cert_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 68) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi %struct.cert_st* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end ]
  ret %struct.cert_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_security_default_callback(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* nocapture noundef readonly %other, i8* nocapture noundef readnone %ex) #0 {
entry:
  %level = alloca i32, align 4
  %0 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call = call i32 @ssl_get_security_level_bits(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i32* noundef nonnull %level) #13
  %1 = load i32, i32* %level, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp1 = icmp ne i32 %op, 262151
  %cmp2 = icmp sgt i32 %bits, 79
  %not.or.cond = or i1 %cmp1, %cmp2
  %. = zext i1 %not.or.cond to i32
  br label %cleanup71

if.end4:                                          ; preds = %entry
  switch i32 %op, label %sw.default [
    i32 65537, label %sw.bb
    i32 65538, label %sw.bb
    i32 65539, label %sw.bb
    i32 9, label %sw.bb34
    i32 15, label %sw.bb60
    i32 10, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end4, %if.end4, %if.end4
  %cmp5 = icmp sgt i32 %call, %bits
  br i1 %cmp5, label %cleanup71, label %if.end7

if.end7:                                          ; preds = %sw.bb
  %algorithm_auth = getelementptr inbounds i8, i8* %other, i64 32
  %2 = bitcast i8* %algorithm_auth to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !18
  %and = and i32 %3, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %cleanup71

if.end9:                                          ; preds = %if.end7
  %algorithm_mac = getelementptr inbounds i8, i8* %other, i64 40
  %4 = bitcast i8* %algorithm_mac to i32*
  %5 = load i32, i32* %4, align 8, !tbaa !20
  %and10 = and i32 %5, 1
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup71

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp slt i32 %call, 161
  %and17 = and i32 %5, 2
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond96 = select i1 %cmp14, i1 true, i1 %tobool18.not
  br i1 %or.cond96, label %if.end20, label %cleanup71

if.end20:                                         ; preds = %if.end13
  %cmp21 = icmp sgt i32 %1, 1
  br i1 %cmp21, label %land.lhs.true22, label %sw.epilog

land.lhs.true22:                                  ; preds = %if.end20
  %algorithm_enc = getelementptr inbounds i8, i8* %other, i64 36
  %6 = bitcast i8* %algorithm_enc to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !21
  %cmp23 = icmp eq i32 %7, 4
  br i1 %cmp23, label %cleanup71, label %if.end25

if.end25:                                         ; preds = %land.lhs.true22
  %cmp26 = icmp ugt i32 %1, 2
  br i1 %cmp26, label %land.lhs.true27, label %sw.epilog

land.lhs.true27:                                  ; preds = %if.end25
  %min_tls = getelementptr inbounds i8, i8* %other, i64 44
  %8 = bitcast i8* %min_tls to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !22
  %cmp28.not = icmp eq i32 %9, 772
  br i1 %cmp28.not, label %sw.epilog, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %algorithm_mkey = getelementptr inbounds i8, i8* %other, i64 28
  %10 = bitcast i8* %algorithm_mkey to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !23
  %and30 = and i32 %11, 6
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %cleanup71, label %sw.epilog

sw.bb34:                                          ; preds = %if.end4
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !24
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !37
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags, align 8, !tbaa !39
  %and35 = and i32 %14, 8
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %sw.bb34
  %cmp38 = icmp slt i32 %nid, 769
  %cmp40 = icmp sgt i32 %1, 1
  %or.cond74 = select i1 %cmp38, i1 %cmp40, i1 false
  br i1 %or.cond74, label %cleanup71, label %if.end42

if.end42:                                         ; preds = %if.then37
  %cmp43 = icmp slt i32 %nid, 770
  %cmp45 = icmp sgt i32 %1, 2
  %or.cond75 = select i1 %cmp43, i1 %cmp45, i1 false
  br i1 %or.cond75, label %cleanup71, label %if.end47

if.end47:                                         ; preds = %if.end42
  %cmp48 = icmp slt i32 %nid, 771
  %cmp50 = icmp sgt i32 %1, 3
  %or.cond76 = select i1 %cmp48, i1 %cmp50, i1 false
  br i1 %or.cond76, label %cleanup71, label %sw.epilog

if.else:                                          ; preds = %sw.bb34
  %cmp53 = icmp eq i32 %nid, 256
  %cmp5495 = icmp sgt i32 %nid, 65277
  %cmp54 = or i1 %cmp53, %cmp5495
  %cmp56 = icmp sgt i32 %1, 3
  %or.cond77 = select i1 %cmp54, i1 %cmp56, i1 false
  br i1 %or.cond77, label %cleanup71, label %sw.epilog

sw.bb60:                                          ; preds = %if.end4
  %cmp61 = icmp sgt i32 %1, 1
  br i1 %cmp61, label %cleanup71, label %sw.epilog

sw.bb64:                                          ; preds = %if.end4
  %cmp65 = icmp sgt i32 %1, 2
  br i1 %cmp65, label %cleanup71, label %sw.epilog

sw.default:                                       ; preds = %if.end4
  %cmp68 = icmp sgt i32 %call, %bits
  br i1 %cmp68, label %cleanup71, label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %if.end25, %land.lhs.true27, %land.lhs.true29, %sw.default, %sw.bb64, %sw.bb60, %if.end47, %if.else
  br label %cleanup71

cleanup71:                                        ; preds = %sw.default, %sw.bb64, %sw.bb60, %if.else, %if.end47, %if.end42, %if.then37, %sw.bb, %if.end7, %if.end9, %if.end13, %land.lhs.true22, %land.lhs.true29, %if.then, %sw.epilog
  %retval.1 = phi i32 [ 1, %sw.epilog ], [ %., %if.then ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true22 ], [ 0, %if.end13 ], [ 0, %if.end9 ], [ 0, %if.end7 ], [ 0, %sw.bb ], [ 0, %if.then37 ], [ 0, %if.end42 ], [ 0, %if.end47 ], [ 0, %if.else ], [ 0, %sw.bb60 ], [ 0, %sw.bb64 ], [ 0, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.1
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.cert_st* @ssl_cert_dup(%struct.cert_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 536, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 77) #12
  %0 = bitcast i8* %call to %struct.cert_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_cert_dup, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup172

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds i8, i8* %call, i64 520
  %1 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %1 seq_cst, align 4, !tbaa !13
  %pkeys = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %pkeys to [9 x %struct.cert_pkey_st]*
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 0
  %3 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !8
  %pkeys1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 5
  %sub.ptr.lhs.cast = ptrtoint %struct.cert_pkey_st* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint [9 x %struct.cert_pkey_st]* %pkeys1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %arrayidx = getelementptr inbounds [9 x %struct.cert_pkey_st], [9 x %struct.cert_pkey_st]* %2, i64 0, i64 %sub.ptr.div
  %key2 = bitcast i8* %call to %struct.cert_pkey_st**
  store %struct.cert_pkey_st* %arrayidx, %struct.cert_pkey_st** %key2, align 8, !tbaa !8
  %call3 = tail call i8* @CRYPTO_THREAD_lock_new() #12
  %lock = getelementptr inbounds i8, i8* %call, i64 528
  %4 = bitcast i8* %lock to i8**
  store i8* %call3, i8** %4, align 8, !tbaa !17
  %cmp5 = icmp eq i8* %call3, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_cert_dup, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 90) #12
  br label %cleanup172

if.end7:                                          ; preds = %if.end
  %dh_tmp = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 1
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dh_tmp, align 8, !tbaa !41
  %cmp8.not = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end7
  %dh_tmp11 = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %dh_tmp11 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %5, %struct.evp_pkey_st** %6, align 8, !tbaa !41
  %call13 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %5) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7
  %dh_tmp_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 2
  %7 = load %struct.dh_st* (%struct.ssl_st*, i32, i32)*, %struct.dh_st* (%struct.ssl_st*, i32, i32)** %dh_tmp_cb, align 8, !tbaa !42
  %dh_tmp_cb15 = getelementptr inbounds i8, i8* %call, i64 16
  %8 = bitcast i8* %dh_tmp_cb15 to %struct.dh_st* (%struct.ssl_st*, i32, i32)**
  store %struct.dh_st* (%struct.ssl_st*, i32, i32)* %7, %struct.dh_st* (%struct.ssl_st*, i32, i32)** %8, align 8, !tbaa !42
  %dh_tmp_auto = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 3
  %9 = load i32, i32* %dh_tmp_auto, align 8, !tbaa !43
  %dh_tmp_auto16 = getelementptr inbounds i8, i8* %call, i64 24
  %10 = bitcast i8* %dh_tmp_auto16 to i32*
  store i32 %9, i32* %10, align 8, !tbaa !43
  %arraydecay21 = bitcast i8* %pkeys to %struct.cert_pkey_st*
  br label %for.body

for.body:                                         ; preds = %if.end14, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end14 ], [ %indvars.iv.next, %for.inc ]
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 5, i64 %indvars.iv, i32 0
  %11 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  %cmp24.not = icmp eq %struct.x509_st* %11, null
  br i1 %cmp24.not, label %if.end30, label %if.then25

if.then25:                                        ; preds = %for.body
  %x50927 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %arraydecay21, i64 %indvars.iv, i32 0
  store %struct.x509_st* %11, %struct.x509_st** %x50927, align 8, !tbaa !44
  %call29 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %11) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %for.body
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 5, i64 %indvars.iv, i32 1
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !46
  %cmp31.not = icmp eq %struct.evp_pkey_st* %12, null
  br i1 %cmp31.not, label %if.end37, label %if.then32

if.then32:                                        ; preds = %if.end30
  %privatekey34 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %arraydecay21, i64 %indvars.iv, i32 1
  store %struct.evp_pkey_st* %12, %struct.evp_pkey_st** %privatekey34, align 8, !tbaa !46
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !46
  %call36 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %13) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end30
  %chain = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 5, i64 %indvars.iv, i32 2
  %14 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !47
  %tobool.not = icmp eq %struct.stack_st_X509* %14, null
  br i1 %tobool.not, label %if.end46, label %if.then38

if.then38:                                        ; preds = %if.end37
  %call40 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %14) #12
  %chain41 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %arraydecay21, i64 %indvars.iv, i32 2
  store %struct.stack_st_X509* %call40, %struct.stack_st_X509** %chain41, align 8, !tbaa !47
  %tobool43.not = icmp eq %struct.stack_st_X509* %call40, null
  br i1 %tobool43.not, label %err.sink.split, label %if.end46

if.end46:                                         ; preds = %if.then38, %if.end37
  %serverinfo = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 5, i64 %indvars.iv, i32 3
  %15 = load i8*, i8** %serverinfo, align 8, !tbaa !48
  %cmp49.not = icmp eq i8* %15, null
  br i1 %cmp49.not, label %for.inc, label %if.then50

if.then50:                                        ; preds = %if.end46
  %serverinfo_length = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 5, i64 %indvars.iv, i32 4
  %16 = load i64, i64* %serverinfo_length, align 8, !tbaa !49
  %call54 = tail call i8* @CRYPTO_malloc(i64 noundef %16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 125) #12
  %serverinfo58 = getelementptr inbounds [9 x %struct.cert_pkey_st], [9 x %struct.cert_pkey_st]* %2, i64 0, i64 %indvars.iv, i32 3
  store i8* %call54, i8** %serverinfo58, align 8, !tbaa !48
  %cmp63 = icmp eq i8* %call54, null
  br i1 %cmp63, label %err.sink.split, label %if.end65

if.end65:                                         ; preds = %if.then50
  %17 = load i64, i64* %serverinfo_length, align 8, !tbaa !49
  %serverinfo_length73 = getelementptr inbounds [9 x %struct.cert_pkey_st], [9 x %struct.cert_pkey_st]* %2, i64 0, i64 %indvars.iv, i32 4
  store i64 %17, i64* %serverinfo_length73, align 8, !tbaa !49
  %18 = load i8*, i8** %serverinfo, align 8, !tbaa !48
  %19 = load i64, i64* %serverinfo_length, align 8, !tbaa !49
  %call86 = tail call i8* @memcpy(i8* noundef nonnull %call54, i8* noundef %18, i64 noundef %19) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end65, %if.end46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !50

for.end:                                          ; preds = %for.inc
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 8
  %20 = load i16*, i16** %conf_sigalgs, align 8, !tbaa !52
  %tobool89.not = icmp eq i16* %20, null
  br i1 %tobool89.not, label %if.else, label %if.then90

if.then90:                                        ; preds = %for.end
  %conf_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 9
  %21 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !53
  %mul = shl i64 %21, 1
  %call91 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 139) #12
  %conf_sigalgs92 = getelementptr inbounds i8, i8* %call, i64 408
  %22 = bitcast i8* %conf_sigalgs92 to i8**
  store i8* %call91, i8** %22, align 8, !tbaa !52
  %cmp94 = icmp eq i8* %call91, null
  br i1 %cmp94, label %err, label %if.end96

if.end96:                                         ; preds = %if.then90
  %23 = bitcast i16** %conf_sigalgs to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !52
  %25 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !53
  %mul100 = shl i64 %25, 1
  %call101 = tail call i8* @memcpy(i8* noundef nonnull %call91, i8* noundef %24, i64 noundef %mul100) #12
  %26 = load i64, i64* %conf_sigalgslen, align 8, !tbaa !53
  %conf_sigalgslen103 = getelementptr inbounds i8, i8* %call, i64 416
  %27 = bitcast i8* %conf_sigalgslen103 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !53
  br label %if.end105

if.else:                                          ; preds = %for.end
  %conf_sigalgs104 = getelementptr inbounds i8, i8* %call, i64 408
  %28 = bitcast i8* %conf_sigalgs104 to i16**
  store i16* null, i16** %28, align 8, !tbaa !52
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.end96
  %client_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 10
  %29 = load i16*, i16** %client_sigalgs, align 8, !tbaa !54
  %tobool106.not = icmp eq i16* %29, null
  br i1 %tobool106.not, label %if.else122, label %if.then107

if.then107:                                       ; preds = %if.end105
  %client_sigalgslen = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 11
  %30 = load i64, i64* %client_sigalgslen, align 8, !tbaa !55
  %mul108 = shl i64 %30, 1
  %call109 = tail call i8* @CRYPTO_malloc(i64 noundef %mul108, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 150) #12
  %client_sigalgs110 = getelementptr inbounds i8, i8* %call, i64 424
  %31 = bitcast i8* %client_sigalgs110 to i8**
  store i8* %call109, i8** %31, align 8, !tbaa !54
  %cmp112 = icmp eq i8* %call109, null
  br i1 %cmp112, label %err, label %if.end114

if.end114:                                        ; preds = %if.then107
  %32 = bitcast i16** %client_sigalgs to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !54
  %34 = load i64, i64* %client_sigalgslen, align 8, !tbaa !55
  %mul118 = shl i64 %34, 1
  %call119 = tail call i8* @memcpy(i8* noundef nonnull %call109, i8* noundef %33, i64 noundef %mul118) #12
  %35 = load i64, i64* %client_sigalgslen, align 8, !tbaa !55
  %client_sigalgslen121 = getelementptr inbounds i8, i8* %call, i64 432
  %36 = bitcast i8* %client_sigalgslen121 to i64*
  store i64 %35, i64* %36, align 8, !tbaa !55
  br label %if.end124

if.else122:                                       ; preds = %if.end105
  %client_sigalgs123 = getelementptr inbounds i8, i8* %call, i64 424
  %37 = bitcast i8* %client_sigalgs123 to i16**
  store i16* null, i16** %37, align 8, !tbaa !54
  br label %if.end124

if.end124:                                        ; preds = %if.else122, %if.end114
  %ctype = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 6
  %38 = load i8*, i8** %ctype, align 8, !tbaa !56
  %tobool125.not = icmp eq i8* %38, null
  br i1 %tobool125.not, label %if.end136, label %if.then126

if.then126:                                       ; preds = %if.end124
  %ctype_len = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 7
  %39 = load i64, i64* %ctype_len, align 8, !tbaa !57
  %call128 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %38, i64 noundef %39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 160) #12
  %ctype129 = getelementptr inbounds i8, i8* %call, i64 392
  %40 = bitcast i8* %ctype129 to i8**
  store i8* %call128, i8** %40, align 8, !tbaa !56
  %cmp131 = icmp eq i8* %call128, null
  br i1 %cmp131, label %err, label %if.end133

if.end133:                                        ; preds = %if.then126
  %41 = load i64, i64* %ctype_len, align 8, !tbaa !57
  %ctype_len135 = getelementptr inbounds i8, i8* %call, i64 400
  %42 = bitcast i8* %ctype_len135 to i64*
  store i64 %41, i64* %42, align 8, !tbaa !57
  br label %if.end136

if.end136:                                        ; preds = %if.end133, %if.end124
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 4
  %43 = load i32, i32* %cert_flags, align 4, !tbaa !58
  %cert_flags137 = getelementptr inbounds i8, i8* %call, i64 28
  %44 = bitcast i8* %cert_flags137 to i32*
  store i32 %43, i32* %44, align 4, !tbaa !58
  %cert_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 12
  %45 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %cert_cb, align 8, !tbaa !59
  %cert_cb138 = getelementptr inbounds i8, i8* %call, i64 440
  %46 = bitcast i8* %cert_cb138 to i32 (%struct.ssl_st*, i8*)**
  store i32 (%struct.ssl_st*, i8*)* %45, i32 (%struct.ssl_st*, i8*)** %46, align 8, !tbaa !59
  %cert_cb_arg = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 13
  %47 = load i8*, i8** %cert_cb_arg, align 8, !tbaa !60
  %cert_cb_arg139 = getelementptr inbounds i8, i8* %call, i64 448
  %48 = bitcast i8* %cert_cb_arg139 to i8**
  store i8* %47, i8** %48, align 8, !tbaa !60
  %verify_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 15
  %49 = load %struct.x509_store_st*, %struct.x509_store_st** %verify_store, align 8, !tbaa !61
  %tobool140.not = icmp eq %struct.x509_store_st* %49, null
  br i1 %tobool140.not, label %if.end146, label %if.then141

if.then141:                                       ; preds = %if.end136
  %call143 = tail call i32 @X509_STORE_up_ref(%struct.x509_store_st* noundef nonnull %49) #12
  %50 = load %struct.x509_store_st*, %struct.x509_store_st** %verify_store, align 8, !tbaa !61
  %verify_store145 = getelementptr inbounds i8, i8* %call, i64 464
  %51 = bitcast i8* %verify_store145 to %struct.x509_store_st**
  store %struct.x509_store_st* %50, %struct.x509_store_st** %51, align 8, !tbaa !61
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %if.end136
  %chain_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 14
  %52 = load %struct.x509_store_st*, %struct.x509_store_st** %chain_store, align 8, !tbaa !62
  %tobool147.not = icmp eq %struct.x509_store_st* %52, null
  br i1 %tobool147.not, label %if.end153, label %if.then148

if.then148:                                       ; preds = %if.end146
  %call150 = tail call i32 @X509_STORE_up_ref(%struct.x509_store_st* noundef nonnull %52) #12
  %53 = load %struct.x509_store_st*, %struct.x509_store_st** %chain_store, align 8, !tbaa !62
  %chain_store152 = getelementptr inbounds i8, i8* %call, i64 456
  %54 = bitcast i8* %chain_store152 to %struct.x509_store_st**
  store %struct.x509_store_st* %53, %struct.x509_store_st** %54, align 8, !tbaa !62
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.end146
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 17
  %55 = load i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !14
  %sec_cb154 = getelementptr inbounds i8, i8* %call, i64 488
  %56 = bitcast i8* %sec_cb154 to i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)**
  store i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)* %55, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %56, align 8, !tbaa !14
  %sec_level = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 18
  %57 = load i32, i32* %sec_level, align 8, !tbaa !15
  %sec_level155 = getelementptr inbounds i8, i8* %call, i64 496
  %58 = bitcast i8* %sec_level155 to i32*
  store i32 %57, i32* %58, align 8, !tbaa !15
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 19
  %59 = load i8*, i8** %sec_ex, align 8, !tbaa !16
  %sec_ex156 = getelementptr inbounds i8, i8* %call, i64 504
  %60 = bitcast i8* %sec_ex156 to i8**
  store i8* %59, i8** %60, align 8, !tbaa !16
  %custext = getelementptr inbounds i8, i8* %call, i64 472
  %61 = bitcast i8* %custext to %struct.custom_ext_methods*
  %custext157 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 16
  %call158 = tail call i32 @custom_exts_copy(%struct.custom_ext_methods* noundef nonnull %61, %struct.custom_ext_methods* noundef nonnull %custext157) #12
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %err, label %if.end161

if.end161:                                        ; preds = %if.end153
  %psk_identity_hint = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cert, i64 0, i32 20
  %62 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !63
  %tobool162.not = icmp eq i8* %62, null
  br i1 %tobool162.not, label %cleanup172, label %if.then163

if.then163:                                       ; preds = %if.end161
  %call165 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 189) #12
  %psk_identity_hint166 = getelementptr inbounds i8, i8* %call, i64 512
  %63 = bitcast i8* %psk_identity_hint166 to i8**
  store i8* %call165, i8** %63, align 8, !tbaa !63
  %cmp168 = icmp eq i8* %call165, null
  br i1 %cmp168, label %err, label %cleanup172

err.sink.split:                                   ; preds = %if.then50, %if.then38
  %.sink = phi i32 [ 118, %if.then38 ], [ 127, %if.then50 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_cert_dup, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %err

err:                                              ; preds = %err.sink.split, %if.then163, %if.end153, %if.then126, %if.then107, %if.then90
  tail call void @ssl_cert_free(%struct.cert_st* noundef nonnull %0) #13
  br label %cleanup172

cleanup172:                                       ; preds = %if.end161, %if.then163, %err, %if.then6, %if.then
  %retval.0 = phi %struct.cert_st* [ null, %if.then ], [ null, %if.then6 ], [ null, %err ], [ %0, %if.then163 ], [ %0, %if.end161 ]
  ret %struct.cert_st* %retval.0
}

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @X509_STORE_up_ref(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare i32 @custom_exts_copy(%struct.custom_ext_methods* noundef, %struct.custom_ext_methods* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ssl_cert_free(%struct.cert_st* noundef %c) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %cmp = icmp eq %struct.cert_st* %c, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 21
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #13
  %1 = load i32, i32* %i, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 22
  %dh_tmp = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 1
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %dh_tmp, align 8, !tbaa !41
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #12
  tail call void @ssl_cert_clear_certs(%struct.cert_st* noundef nonnull %c) #13
  %conf_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 8
  %3 = bitcast i16** %conf_sigalgs to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !52
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 238) #12
  %client_sigalgs = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 10
  %5 = bitcast i16** %client_sigalgs to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !54
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 239) #12
  %ctype = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 6
  %7 = load i8*, i8** %ctype, align 8, !tbaa !56
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 240) #12
  %verify_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 15
  %8 = load %struct.x509_store_st*, %struct.x509_store_st** %verify_store, align 8, !tbaa !61
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %8) #12
  %chain_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 14
  %9 = load %struct.x509_store_st*, %struct.x509_store_st** %chain_store, align 8, !tbaa !62
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %9) #12
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 16
  tail call void @custom_exts_free(%struct.custom_ext_methods* noundef nonnull %custext) #12
  %psk_identity_hint = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 20
  %10 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !63
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 245) #12
  %11 = load i8*, i8** %lock, align 8, !tbaa !17
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %11) #12
  %12 = bitcast %struct.cert_st* %c to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 248) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_cert_clear_certs(%struct.cert_st* noundef %c) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.cert_st* %c, null
  br i1 %cmp, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  tail call void @X509_free(%struct.x509_st* noundef %0) #12
  store %struct.x509_st* null, %struct.x509_st** %x509, align 8, !tbaa !44
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv, i32 1
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !46
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #12
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !46
  %chain = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv, i32 2
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !47
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !47
  %serverinfo = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv, i32 3
  %3 = load i8*, i8** %serverinfo, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 217) #12
  store i8* null, i8** %serverinfo, align 8, !tbaa !48
  %serverinfo_length = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv, i32 4
  store i64 0, i64* %serverinfo_length, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !64

cleanup:                                          ; preds = %for.body, %entry
  ret void
}

declare void @X509_free(%struct.x509_st* noundef) #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #5 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !4
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #1

declare void @custom_exts_free(%struct.custom_ext_methods* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_set0_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ssl_st* %s, null
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %cert1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %.pn.in = select i1 %cmp.not, %struct.cert_st** %cert1, %struct.cert_st** %cert
  %.pn = load %struct.cert_st*, %struct.cert_st** %.pn.in, align 8, !tbaa !65
  %cond.in = getelementptr inbounds %struct.cert_st, %struct.cert_st* %.pn, i64 0, i32 0
  %cond = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cond.in, align 8, !tbaa !8
  %tobool.not = icmp eq %struct.cert_pkey_st* %cond, null
  br i1 %tobool.not, label %cleanup15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #13
  %call333 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #12
  %cmp434 = icmp sgt i32 %call333, 0
  br i1 %cmp434, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #12
  %cmp4 = icmp slt i32 %inc, %call3
  br i1 %cmp4, label %for.body, label %for.end, !llvm.loop !66

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.035 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.035) #12
  %0 = bitcast i8* %call6 to %struct.x509_st*
  %call7 = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %0, i32 noundef 0, i32 noundef 0) #12
  %cmp8.not = icmp eq i32 %call7, 1
  %inc = add nuw nsw i32 %i.035, 1
  br i1 %cmp8.not, label %for.cond, label %if.then9

if.then9:                                         ; preds = %for.body
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ssl_cert_set0_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call7, i8* noundef null) #12
  br label %cleanup15

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %chain11 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cond, i64 0, i32 2
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain11, align 8, !tbaa !47
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %1) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call12, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  store %struct.stack_st_X509* %chain, %struct.stack_st_X509** %chain11, align 8, !tbaa !47
  br label %cleanup15

cleanup15:                                        ; preds = %if.then9, %entry, %for.end
  %retval.2 = phi i32 [ 0, %if.then9 ], [ 1, %for.end ], [ 0, %entry ]
  ret i32 %retval.2
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ssl_security_cert(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, %struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_set1_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ssl_cert_set0_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %chain) #12
  %tobool2.not = icmp eq %struct.stack_st_X509* %call1, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ssl_cert_set0_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef nonnull %call1) #13
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end4
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call1) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call8, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call, %if.then ], [ 0, %if.end ], [ 1, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_add0_chain_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ssl_st* %s, null
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %cert1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %.pn.in = select i1 %tobool.not, %struct.cert_st** %cert1, %struct.cert_st** %cert
  %.pn = load %struct.cert_st*, %struct.cert_st** %.pn.in, align 8, !tbaa !65
  %cond.in = getelementptr inbounds %struct.cert_st, %struct.cert_st* %.pn, i64 0, i32 0
  %cond = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %cond.in, align 8, !tbaa !8
  %tobool3.not = icmp eq %struct.cert_pkey_st* %cond, null
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef 0, i32 noundef 0) #12
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cert_add0_chain_cert, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %chain = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %cond, i64 0, i32 2
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !47
  %tobool6.not = icmp eq %struct.stack_st_X509* %0, null
  br i1 %tobool6.not, label %if.end10, label %lor.lhs.false

if.end10:                                         ; preds = %if.end5
  %call8 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %1 = bitcast %struct.stack_st_X509** %chain to %struct.stack_st**
  store %struct.stack_st* %call8, %struct.stack_st** %1, align 8, !tbaa !47
  %2 = bitcast %struct.stack_st* %call8 to %struct.stack_st_X509*
  %tobool12.not = icmp eq %struct.stack_st* %call8, null
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5, %if.end10
  %3 = phi %struct.stack_st_X509* [ %2, %if.end10 ], [ %0, %if.end5 ]
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %3) #13
  %4 = bitcast %struct.x509_st* %x to i8*
  %call16 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call14, i8* noundef %4) #12
  %tobool17.not = icmp ne i32 %call16, 0
  %spec.select = zext i1 %tobool17.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end10, %entry, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %entry ], [ 0, %if.end10 ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_add1_chain_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_cert_add0_chain_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_up_ref(%struct.x509_st* noundef %x) #12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_select_current(%struct.cert_st* noundef %c, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %cleanup30, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %add.ptr = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 0
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  %cmp2 = icmp eq %struct.x509_st* %0, %x
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 0, i32 1
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !46
  %tobool.not = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %tobool.not, label %for.inc, label %cleanup30.sink.split

for.inc:                                          ; preds = %land.lhs.true, %for.body.preheader
  %add.ptr.1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 1
  %x509.1 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.1, i64 0, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509.1, align 8, !tbaa !44
  %cmp2.1 = icmp eq %struct.x509_st* %2, %x
  br i1 %cmp2.1, label %land.lhs.true.1, label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %privatekey.1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 1, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.1, align 8, !tbaa !46
  %tobool.not.1 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %tobool.not.1, label %for.inc.1, label %cleanup30.sink.split

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc
  %add.ptr.2 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 2
  %x509.2 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.2, i64 0, i32 0
  %4 = load %struct.x509_st*, %struct.x509_st** %x509.2, align 8, !tbaa !44
  %cmp2.2 = icmp eq %struct.x509_st* %4, %x
  br i1 %cmp2.2, label %land.lhs.true.2, label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %privatekey.2 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 2, i32 1
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.2, align 8, !tbaa !46
  %tobool.not.2 = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %tobool.not.2, label %for.inc.2, label %cleanup30.sink.split

for.inc.2:                                        ; preds = %land.lhs.true.2, %for.inc.1
  %add.ptr.3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 3
  %x509.3 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.3, i64 0, i32 0
  %6 = load %struct.x509_st*, %struct.x509_st** %x509.3, align 8, !tbaa !44
  %cmp2.3 = icmp eq %struct.x509_st* %6, %x
  br i1 %cmp2.3, label %land.lhs.true.3, label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %privatekey.3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 3, i32 1
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.3, align 8, !tbaa !46
  %tobool.not.3 = icmp eq %struct.evp_pkey_st* %7, null
  br i1 %tobool.not.3, label %for.inc.3, label %cleanup30.sink.split

for.inc.3:                                        ; preds = %land.lhs.true.3, %for.inc.2
  %add.ptr.4 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 4
  %x509.4 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.4, i64 0, i32 0
  %8 = load %struct.x509_st*, %struct.x509_st** %x509.4, align 8, !tbaa !44
  %cmp2.4 = icmp eq %struct.x509_st* %8, %x
  br i1 %cmp2.4, label %land.lhs.true.4, label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %privatekey.4 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 4, i32 1
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.4, align 8, !tbaa !46
  %tobool.not.4 = icmp eq %struct.evp_pkey_st* %9, null
  br i1 %tobool.not.4, label %for.inc.4, label %cleanup30.sink.split

for.inc.4:                                        ; preds = %land.lhs.true.4, %for.inc.3
  %add.ptr.5 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 5
  %x509.5 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.5, i64 0, i32 0
  %10 = load %struct.x509_st*, %struct.x509_st** %x509.5, align 8, !tbaa !44
  %cmp2.5 = icmp eq %struct.x509_st* %10, %x
  br i1 %cmp2.5, label %land.lhs.true.5, label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %privatekey.5 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 5, i32 1
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.5, align 8, !tbaa !46
  %tobool.not.5 = icmp eq %struct.evp_pkey_st* %11, null
  br i1 %tobool.not.5, label %for.inc.5, label %cleanup30.sink.split

for.inc.5:                                        ; preds = %land.lhs.true.5, %for.inc.4
  %add.ptr.6 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 6
  %x509.6 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.6, i64 0, i32 0
  %12 = load %struct.x509_st*, %struct.x509_st** %x509.6, align 8, !tbaa !44
  %cmp2.6 = icmp eq %struct.x509_st* %12, %x
  br i1 %cmp2.6, label %land.lhs.true.6, label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %privatekey.6 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 6, i32 1
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.6, align 8, !tbaa !46
  %tobool.not.6 = icmp eq %struct.evp_pkey_st* %13, null
  br i1 %tobool.not.6, label %for.inc.6, label %cleanup30.sink.split

for.inc.6:                                        ; preds = %land.lhs.true.6, %for.inc.5
  %add.ptr.7 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 7
  %x509.7 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.7, i64 0, i32 0
  %14 = load %struct.x509_st*, %struct.x509_st** %x509.7, align 8, !tbaa !44
  %cmp2.7 = icmp eq %struct.x509_st* %14, %x
  br i1 %cmp2.7, label %land.lhs.true.7, label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %privatekey.7 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 7, i32 1
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.7, align 8, !tbaa !46
  %tobool.not.7 = icmp eq %struct.evp_pkey_st* %15, null
  br i1 %tobool.not.7, label %for.inc.7, label %cleanup30.sink.split

for.inc.7:                                        ; preds = %land.lhs.true.7, %for.inc.6
  %add.ptr.8 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 8
  %x509.8 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr.8, i64 0, i32 0
  %16 = load %struct.x509_st*, %struct.x509_st** %x509.8, align 8, !tbaa !44
  %cmp2.8 = icmp eq %struct.x509_st* %16, %x
  br i1 %cmp2.8, label %land.lhs.true.8, label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %privatekey.8 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 8, i32 1
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey.8, align 8, !tbaa !46
  %tobool.not.8 = icmp eq %struct.evp_pkey_st* %17, null
  br i1 %tobool.not.8, label %for.inc.8, label %cleanup30.sink.split

for.inc.8:                                        ; preds = %land.lhs.true.8, %for.inc.7
  %privatekey13 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 0, i32 1
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13, align 8, !tbaa !46
  %tobool14.not = icmp eq %struct.evp_pkey_st* %18, null
  %tobool17.not = icmp eq %struct.x509_st* %0, null
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %for.inc27, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %for.inc.8
  %call = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %0, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %cleanup30.sink.split, label %for.inc27

for.inc27:                                        ; preds = %land.lhs.true18, %for.inc.8
  %privatekey13.1 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 1, i32 1
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.1, align 8, !tbaa !46
  %tobool14.not.1 = icmp eq %struct.evp_pkey_st* %19, null
  br i1 %tobool14.not.1, label %for.inc27.1, label %land.lhs.true15.1

land.lhs.true15.1:                                ; preds = %for.inc27
  %20 = load %struct.x509_st*, %struct.x509_st** %x509.1, align 8, !tbaa !44
  %tobool17.not.1 = icmp eq %struct.x509_st* %20, null
  br i1 %tobool17.not.1, label %for.inc27.1, label %land.lhs.true18.1

land.lhs.true18.1:                                ; preds = %land.lhs.true15.1
  %call.1 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %20, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool20.not.1, label %cleanup30.sink.split, label %for.inc27.1

for.inc27.1:                                      ; preds = %land.lhs.true18.1, %land.lhs.true15.1, %for.inc27
  %privatekey13.2 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 2, i32 1
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.2, align 8, !tbaa !46
  %tobool14.not.2 = icmp eq %struct.evp_pkey_st* %21, null
  br i1 %tobool14.not.2, label %for.inc27.2, label %land.lhs.true15.2

land.lhs.true15.2:                                ; preds = %for.inc27.1
  %22 = load %struct.x509_st*, %struct.x509_st** %x509.2, align 8, !tbaa !44
  %tobool17.not.2 = icmp eq %struct.x509_st* %22, null
  br i1 %tobool17.not.2, label %for.inc27.2, label %land.lhs.true18.2

land.lhs.true18.2:                                ; preds = %land.lhs.true15.2
  %call.2 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %22, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool20.not.2, label %cleanup30.sink.split, label %for.inc27.2

for.inc27.2:                                      ; preds = %land.lhs.true18.2, %land.lhs.true15.2, %for.inc27.1
  %privatekey13.3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 3, i32 1
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.3, align 8, !tbaa !46
  %tobool14.not.3 = icmp eq %struct.evp_pkey_st* %23, null
  br i1 %tobool14.not.3, label %for.inc27.3, label %land.lhs.true15.3

land.lhs.true15.3:                                ; preds = %for.inc27.2
  %24 = load %struct.x509_st*, %struct.x509_st** %x509.3, align 8, !tbaa !44
  %tobool17.not.3 = icmp eq %struct.x509_st* %24, null
  br i1 %tobool17.not.3, label %for.inc27.3, label %land.lhs.true18.3

land.lhs.true18.3:                                ; preds = %land.lhs.true15.3
  %call.3 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %24, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool20.not.3, label %cleanup30.sink.split, label %for.inc27.3

for.inc27.3:                                      ; preds = %land.lhs.true18.3, %land.lhs.true15.3, %for.inc27.2
  %privatekey13.4 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 4, i32 1
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.4, align 8, !tbaa !46
  %tobool14.not.4 = icmp eq %struct.evp_pkey_st* %25, null
  br i1 %tobool14.not.4, label %for.inc27.4, label %land.lhs.true15.4

land.lhs.true15.4:                                ; preds = %for.inc27.3
  %26 = load %struct.x509_st*, %struct.x509_st** %x509.4, align 8, !tbaa !44
  %tobool17.not.4 = icmp eq %struct.x509_st* %26, null
  br i1 %tobool17.not.4, label %for.inc27.4, label %land.lhs.true18.4

land.lhs.true18.4:                                ; preds = %land.lhs.true15.4
  %call.4 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %26, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool20.not.4, label %cleanup30.sink.split, label %for.inc27.4

for.inc27.4:                                      ; preds = %land.lhs.true18.4, %land.lhs.true15.4, %for.inc27.3
  %privatekey13.5 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 5, i32 1
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.5, align 8, !tbaa !46
  %tobool14.not.5 = icmp eq %struct.evp_pkey_st* %27, null
  br i1 %tobool14.not.5, label %for.inc27.5, label %land.lhs.true15.5

land.lhs.true15.5:                                ; preds = %for.inc27.4
  %28 = load %struct.x509_st*, %struct.x509_st** %x509.5, align 8, !tbaa !44
  %tobool17.not.5 = icmp eq %struct.x509_st* %28, null
  br i1 %tobool17.not.5, label %for.inc27.5, label %land.lhs.true18.5

land.lhs.true18.5:                                ; preds = %land.lhs.true15.5
  %call.5 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %28, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool20.not.5, label %cleanup30.sink.split, label %for.inc27.5

for.inc27.5:                                      ; preds = %land.lhs.true18.5, %land.lhs.true15.5, %for.inc27.4
  %privatekey13.6 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 6, i32 1
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.6, align 8, !tbaa !46
  %tobool14.not.6 = icmp eq %struct.evp_pkey_st* %29, null
  br i1 %tobool14.not.6, label %for.inc27.6, label %land.lhs.true15.6

land.lhs.true15.6:                                ; preds = %for.inc27.5
  %30 = load %struct.x509_st*, %struct.x509_st** %x509.6, align 8, !tbaa !44
  %tobool17.not.6 = icmp eq %struct.x509_st* %30, null
  br i1 %tobool17.not.6, label %for.inc27.6, label %land.lhs.true18.6

land.lhs.true18.6:                                ; preds = %land.lhs.true15.6
  %call.6 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %30, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool20.not.6, label %cleanup30.sink.split, label %for.inc27.6

for.inc27.6:                                      ; preds = %land.lhs.true18.6, %land.lhs.true15.6, %for.inc27.5
  %privatekey13.7 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 7, i32 1
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.7, align 8, !tbaa !46
  %tobool14.not.7 = icmp eq %struct.evp_pkey_st* %31, null
  br i1 %tobool14.not.7, label %for.inc27.7, label %land.lhs.true15.7

land.lhs.true15.7:                                ; preds = %for.inc27.6
  %32 = load %struct.x509_st*, %struct.x509_st** %x509.7, align 8, !tbaa !44
  %tobool17.not.7 = icmp eq %struct.x509_st* %32, null
  br i1 %tobool17.not.7, label %for.inc27.7, label %land.lhs.true18.7

land.lhs.true18.7:                                ; preds = %land.lhs.true15.7
  %call.7 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %32, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool20.not.7, label %cleanup30.sink.split, label %for.inc27.7

for.inc27.7:                                      ; preds = %land.lhs.true18.7, %land.lhs.true15.7, %for.inc27.6
  %privatekey13.8 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 8, i32 1
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey13.8, align 8, !tbaa !46
  %tobool14.not.8 = icmp eq %struct.evp_pkey_st* %33, null
  br i1 %tobool14.not.8, label %cleanup30, label %land.lhs.true15.8

land.lhs.true15.8:                                ; preds = %for.inc27.7
  %34 = load %struct.x509_st*, %struct.x509_st** %x509.8, align 8, !tbaa !44
  %tobool17.not.8 = icmp eq %struct.x509_st* %34, null
  br i1 %tobool17.not.8, label %cleanup30, label %land.lhs.true18.8

land.lhs.true18.8:                                ; preds = %land.lhs.true15.8
  %call.8 = tail call i32 @X509_cmp(%struct.x509_st* noundef nonnull %34, %struct.x509_st* noundef nonnull %x) #12
  %tobool20.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool20.not.8, label %cleanup30.sink.split, label %cleanup30

cleanup30.sink.split:                             ; preds = %land.lhs.true18, %land.lhs.true18.1, %land.lhs.true18.2, %land.lhs.true18.3, %land.lhs.true18.4, %land.lhs.true18.5, %land.lhs.true18.6, %land.lhs.true18.7, %land.lhs.true18.8, %land.lhs.true, %land.lhs.true.1, %land.lhs.true.2, %land.lhs.true.3, %land.lhs.true.4, %land.lhs.true.5, %land.lhs.true.6, %land.lhs.true.7, %land.lhs.true.8
  %add.ptr12.lcssa.sink = phi %struct.cert_pkey_st* [ %add.ptr, %land.lhs.true ], [ %add.ptr.1, %land.lhs.true.1 ], [ %add.ptr.2, %land.lhs.true.2 ], [ %add.ptr.3, %land.lhs.true.3 ], [ %add.ptr.4, %land.lhs.true.4 ], [ %add.ptr.5, %land.lhs.true.5 ], [ %add.ptr.6, %land.lhs.true.6 ], [ %add.ptr.7, %land.lhs.true.7 ], [ %add.ptr.8, %land.lhs.true.8 ], [ %add.ptr, %land.lhs.true18 ], [ %add.ptr.1, %land.lhs.true18.1 ], [ %add.ptr.2, %land.lhs.true18.2 ], [ %add.ptr.3, %land.lhs.true18.3 ], [ %add.ptr.4, %land.lhs.true18.4 ], [ %add.ptr.5, %land.lhs.true18.5 ], [ %add.ptr.6, %land.lhs.true18.6 ], [ %add.ptr.7, %land.lhs.true18.7 ], [ %add.ptr.8, %land.lhs.true18.8 ]
  %key22 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 0
  store %struct.cert_pkey_st* %add.ptr12.lcssa.sink, %struct.cert_pkey_st** %key22, align 8, !tbaa !8
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %for.inc27.7, %land.lhs.true15.8, %land.lhs.true18.8, %entry
  %retval.4 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true18.8 ], [ 0, %land.lhs.true15.8 ], [ 0, %for.inc27.7 ], [ 1, %cleanup30.sink.split ]
  ret i32 %retval.4
}

declare i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @ssl_cert_set_current(%struct.cert_st* noundef %c, i64 noundef %op) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.cert_st* %c, null
  br i1 %tobool.not, label %cleanup20, label %if.end

if.end:                                           ; preds = %entry
  switch i64 %op, label %cleanup20 [
    i64 1, label %for.body.preheader
    i64 2, label %if.then3
  ]

if.then3:                                         ; preds = %if.end
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 0
  %0 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 0
  %sub.ptr.lhs.cast = ptrtoint %struct.cert_pkey_st* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cert_pkey_st* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  %1 = trunc i64 %sub.ptr.div to i32
  %conv = add i32 %1, 1
  %cmp4 = icmp sgt i32 %conv, 8
  br i1 %cmp4, label %cleanup20, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then3, %if.end
  %idx.0 = phi i32 [ %conv, %if.then3 ], [ 0, %if.end ]
  %2 = sext i32 %idx.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %add.ptr = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %add.ptr, i64 0, i32 0
  %3 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  %tobool15.not = icmp eq %struct.x509_st* %3, null
  br i1 %tobool15.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %indvars.iv, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !46
  %tobool16.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %tobool16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %key18 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 0
  store %struct.cert_pkey_st* %add.ptr, %struct.cert_pkey_st** %key18, align 8, !tbaa !8
  br label %cleanup20

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 9
  br i1 %exitcond.not, label %cleanup20, label %for.body, !llvm.loop !67

cleanup20:                                        ; preds = %for.inc, %if.then17, %if.end, %if.then3, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.end ], [ 1, %if.then17 ], [ 0, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ssl_cert_set_cert_cb(%struct.cert_st* nocapture noundef writeonly %c, i32 (%struct.ssl_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #7 {
entry:
  %cert_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 12
  store i32 (%struct.ssl_st*, i8*)* %cb, i32 (%struct.ssl_st*, i8*)** %cert_cb, align 8, !tbaa !59
  %cert_cb_arg = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 13
  store i8* %arg, i8** %cert_cb_arg, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_verify_cert_chain(%struct.ssl_st* noundef %s, %struct.stack_st_X509* noundef %sk) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st_X509* %sk, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %sk) #13
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #12
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !68
  %verify_store3 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 15
  %1 = load %struct.x509_store_st*, %struct.x509_store_st** %verify_store3, align 8, !tbaa !61
  %tobool.not = icmp eq %struct.x509_store_st* %1, null
  %ctx7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx7, align 8, !tbaa !69
  br i1 %tobool.not, label %if.else, label %if.end8

if.else:                                          ; preds = %if.end
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 5
  %3 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !70
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.else
  %verify_store.0 = phi %struct.x509_store_st* [ %3, %if.else ], [ %1, %if.end ]
  %ctx9 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !75
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %5 = load i8*, i8** %propq, align 8, !tbaa !76
  %call11 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #12
  %cmp12 = icmp eq %struct.x509_store_ctx_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_verify_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call16 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef 0) #12
  %6 = bitcast i8* %call16 to %struct.x509_st*
  %call17 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call11, %struct.x509_store_st* noundef %verify_store.0, %struct.x509_st* noundef %6, %struct.stack_st_X509* noundef nonnull %sk) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_verify_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524299, i8* noundef null) #12
  br label %end

if.end20:                                         ; preds = %if.end14
  %call21 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* noundef nonnull %call11) #12
  %call22 = tail call i32 @SSL_get_security_level(%struct.ssl_st* noundef nonnull %s) #12
  tail call void @X509_VERIFY_PARAM_set_auth_level(%struct.X509_VERIFY_PARAM_st* noundef %call21, i32 noundef %call22) #12
  %7 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !68
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %7, i64 0, i32 4
  %8 = load i32, i32* %cert_flags, align 4, !tbaa !58
  %and = and i32 %8, 196608
  %conv = zext i32 %and to i64
  tail call void @X509_STORE_CTX_set_flags(%struct.x509_store_ctx_st* noundef nonnull %call11, i64 noundef %conv) #12
  %call24 = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #13
  %9 = bitcast %struct.ssl_st* %s to i8*
  %call25 = tail call i32 @X509_STORE_CTX_set_ex_data(%struct.x509_store_ctx_st* noundef nonnull %call11, i32 noundef %call24, i8* noundef %9) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %if.end28

if.end28:                                         ; preds = %if.end20
  %trecs = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23, i32 1
  %10 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !77
  %call32 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %10) #13
  %cmp33 = icmp sgt i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end28
  %dane = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 23
  tail call void @X509_STORE_CTX_set0_dane(%struct.x509_store_ctx_st* noundef nonnull %call11, %struct.ssl_dane_st* noundef nonnull %dane) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end28
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %11 = load i32, i32* %server, align 8, !tbaa !78
  %tobool38.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool38.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %call39 = tail call i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef nonnull %call11, i8* noundef %cond) #12
  %param40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 22
  %12 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param40, align 8, !tbaa !79
  %call41 = tail call i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef %call21, %struct.X509_VERIFY_PARAM_st* noundef %12) #12
  %verify_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 63
  %13 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_callback, align 8, !tbaa !80
  %tobool42.not = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %13, null
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end37
  tail call void @X509_STORE_CTX_set_verify_cb(%struct.x509_store_ctx_st* noundef nonnull %call11, i32 (i32, %struct.x509_store_ctx_st*)* noundef nonnull %13) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end37
  %14 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx9, align 8, !tbaa !69
  %app_verify_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %14, i64 0, i32 17
  %15 = load i32 (%struct.x509_store_ctx_st*, i8*)*, i32 (%struct.x509_store_ctx_st*, i8*)** %app_verify_callback, align 8, !tbaa !81
  %cmp47.not = icmp eq i32 (%struct.x509_store_ctx_st*, i8*)* %15, null
  br i1 %cmp47.not, label %if.else54, label %if.then49

if.then49:                                        ; preds = %if.end45
  %app_verify_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %14, i64 0, i32 18
  %16 = load i8*, i8** %app_verify_arg, align 8, !tbaa !82
  %call53 = tail call i32 %15(%struct.x509_store_ctx_st* noundef nonnull %call11, i8* noundef %16) #12
  br label %if.end56

if.else54:                                        ; preds = %if.end45
  %call55 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call11) #12
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then49
  %i.0 = phi i32 [ %call53, %if.then49 ], [ %call55, %if.else54 ]
  %call57 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call11) #12
  %conv58 = sext i32 %call57 to i64
  %verify_result = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  store i64 %conv58, i64* %verify_result, align 8, !tbaa !83
  %verified_chain = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 72
  %17 = load %struct.stack_st_X509*, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !84
  %call59 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %17) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call59, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !84
  %call62 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get0_chain(%struct.x509_store_ctx_st* noundef nonnull %call11) #12
  %cmp63.not = icmp eq %struct.stack_st_X509* %call62, null
  br i1 %cmp63.not, label %if.end73, label %if.then65

if.then65:                                        ; preds = %if.end56
  %call66 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef nonnull %call11) #12
  store %struct.stack_st_X509* %call66, %struct.stack_st_X509** %verified_chain, align 8, !tbaa !84
  %cmp69 = icmp eq %struct.stack_st_X509* %call66, null
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.then65
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_verify_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %if.then71, %if.end56
  %i.1 = phi i32 [ 0, %if.then71 ], [ %i.0, %if.then65 ], [ %i.0, %if.end56 ]
  %18 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param40, align 8, !tbaa !79
  tail call void @X509_VERIFY_PARAM_move_peername(%struct.X509_VERIFY_PARAM_st* noundef %18, %struct.X509_VERIFY_PARAM_st* noundef %call21) #12
  br label %end

end:                                              ; preds = %if.end20, %if.end73, %if.then19
  %i.2 = phi i32 [ %i.1, %if.end73 ], [ 0, %if.end20 ], [ 0, %if.then19 ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call11) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %end, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %i.2, %end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #1

declare %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare void @X509_VERIFY_PARAM_set_auth_level(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SSL_get_security_level(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @X509_STORE_CTX_set_flags(%struct.x509_store_ctx_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @X509_STORE_CTX_set_ex_data(%struct.x509_store_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #12
  ret i32 %call
}

declare void @X509_STORE_CTX_set0_dane(%struct.x509_store_ctx_st* noundef, %struct.ssl_dane_st* noundef) local_unnamed_addr #1

declare i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare void @X509_STORE_CTX_set_verify_cb(%struct.x509_store_ctx_st* noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #1

declare i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_X509* @X509_STORE_CTX_get0_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

declare void @X509_VERIFY_PARAM_move_peername(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_NAME* @SSL_dup_CA_list(%struct.stack_st_X509_NAME* noundef %sk) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %sk) #13
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #12
  %call2 = tail call fastcc i32 (i8*, i8*)* @ossl_check_X509_NAME_compfunc_type(i32 (%struct.X509_name_st**, %struct.X509_name_st**)* noundef null) #13
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef %call2, i32 noundef %call1) #12
  %0 = bitcast %struct.stack_st* %call3 to %struct.stack_st_X509_NAME*
  %cmp = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp431 = icmp sgt i32 %call1, 0
  br i1 %cmp431, label %for.body, label %cleanup

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SSL_dup_CA_list, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %if.end12
  %i.032 = phi i32 [ %inc, %if.end12 ], [ 0, %for.cond.preheader ]
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.032) #12
  %1 = bitcast i8* %call6 to %struct.X509_name_st*
  %call7 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %1) #12
  %cmp8 = icmp eq %struct.X509_name_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %for.body
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SSL_dup_CA_list, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %0) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call10, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #12
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef nonnull %0) #13
  %2 = bitcast %struct.X509_name_st* %call7 to i8*
  %call15 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef nonnull %2) #12
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !85

cleanup:                                          ; preds = %if.end12, %for.cond.preheader, %if.then9, %if.then
  %retval.0 = phi %struct.stack_st_X509_NAME* [ null, %if.then ], [ null, %if.then9 ], [ %0, %for.cond.preheader ], [ %0, %if.end12 ]
  ret %struct.stack_st_X509_NAME* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 (i8*, i8*)* @ossl_check_X509_NAME_compfunc_type(i32 (%struct.X509_name_st**, %struct.X509_name_st**)* noundef readnone %cmp) unnamed_addr #4 {
entry:
  %0 = bitcast i32 (%struct.X509_name_st**, %struct.X509_name_st**)* %cmp to i32 (i8*, i8*)*
  ret i32 (i8*, i8*)* %0
}

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_X509_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_NAME_free(%struct.X509_name_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_set0_CA_list(%struct.ssl_st* nocapture noundef %s, %struct.stack_st_X509_NAME* noundef %name_list) local_unnamed_addr #0 {
entry:
  %ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 75
  tail call fastcc void @set0_CA_list(%struct.stack_st_X509_NAME** noundef nonnull %ca_names, %struct.stack_st_X509_NAME* noundef %name_list) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @set0_CA_list(%struct.stack_st_X509_NAME** nocapture noundef %ca_list, %struct.stack_st_X509_NAME* noundef %name_list) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_list, align 8, !tbaa !65
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %0) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #12
  store %struct.stack_st_X509_NAME* %name_list, %struct.stack_st_X509_NAME** %ca_list, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set0_CA_list(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.stack_st_X509_NAME* noundef %name_list) local_unnamed_addr #0 {
entry:
  %ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 32
  tail call fastcc void @set0_CA_list(%struct.stack_st_X509_NAME** noundef nonnull %ca_names, %struct.stack_st_X509_NAME* noundef %name_list) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_NAME* @SSL_CTX_get0_CA_list(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #8 {
entry:
  %ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 32
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_names, align 8, !tbaa !86
  ret %struct.stack_st_X509_NAME* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_NAME* @SSL_get0_CA_list(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #8 {
entry:
  %ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 75
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_names, align 8, !tbaa !87
  %cmp.not = icmp eq %struct.stack_st_X509_NAME* %0, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !69
  %ca_names2 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 32
  %2 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %ca_names2, align 8, !tbaa !86
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.stack_st_X509_NAME* [ %2, %cond.false ], [ %0, %entry ]
  ret %struct.stack_st_X509_NAME* %cond
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_client_CA_list(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.stack_st_X509_NAME* noundef %name_list) local_unnamed_addr #0 {
entry:
  %client_ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 33
  tail call fastcc void @set0_CA_list(%struct.stack_st_X509_NAME** noundef nonnull %client_ca_names, %struct.stack_st_X509_NAME* noundef %name_list) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_NAME* @SSL_CTX_get_client_CA_list(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #8 {
entry:
  %client_ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 33
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names, align 8, !tbaa !88
  ret %struct.stack_st_X509_NAME* %0
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_client_CA_list(%struct.ssl_st* nocapture noundef %s, %struct.stack_st_X509_NAME* noundef %name_list) local_unnamed_addr #0 {
entry:
  %client_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 76
  tail call fastcc void @set0_CA_list(%struct.stack_st_X509_NAME** noundef nonnull %client_ca_names, %struct.stack_st_X509_NAME* noundef %name_list) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_NAME* @SSL_get0_peer_CA_list(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #8 {
entry:
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %peer_ca_names, align 8, !tbaa !89
  ret %struct.stack_st_X509_NAME* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_NAME* @SSL_get_client_CA_list(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #8 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !78
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %peer_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 11
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %client_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 76
  %1 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names, align 8, !tbaa !90
  %cmp.not = icmp eq %struct.stack_st_X509_NAME* %1, null
  br i1 %cmp.not, label %cond.false, label %return

cond.false:                                       ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !69
  %client_ca_names2 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 33
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then, %cond.false
  %client_ca_names2.sink = phi %struct.stack_st_X509_NAME** [ %client_ca_names2, %cond.false ], [ %peer_ca_names, %if.then ]
  %3 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %client_ca_names2.sink, align 8, !tbaa !65
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi %struct.stack_st_X509_NAME* [ %1, %if.end ], [ %3, %return.sink.split ]
  ret %struct.stack_st_X509_NAME* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_add1_to_CA_list(%struct.ssl_st* nocapture noundef %ssl, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 75
  %call = tail call fastcc i32 @add_ca_name(%struct.stack_st_X509_NAME** noundef nonnull %ca_names, %struct.x509_st* noundef %x) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_ca_name(%struct.stack_st_X509_NAME** nocapture noundef %sk, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %sk, align 8, !tbaa !65
  %cmp1 = icmp eq %struct.stack_st_X509_NAME* %0, null
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %1 = bitcast %struct.stack_st_X509_NAME** %sk to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %1, align 8, !tbaa !65
  %cmp2 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %call5 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %x) #12
  %call6 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call5) #12
  %cmp7 = icmp eq %struct.X509_name_st* %call6, null
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end4
  %2 = load %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME** %sk, align 8, !tbaa !65
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %2) #13
  %3 = bitcast %struct.X509_name_st* %call6 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef nonnull %3) #12
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end9
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4, %land.lhs.true, %entry, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.end4 ], [ 1, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_add1_to_CA_list(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 32
  %call = tail call fastcc i32 @add_ca_name(%struct.stack_st_X509_NAME** noundef nonnull %ca_names, %struct.x509_st* noundef %x) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_add_client_CA(%struct.ssl_st* nocapture noundef %ssl, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %client_ca_names = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 76
  %call = tail call fastcc i32 @add_ca_name(%struct.stack_st_X509_NAME** noundef nonnull %client_ca_names, %struct.x509_st* noundef %x) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_add_client_CA(%struct.ssl_ctx_st* nocapture noundef %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %client_ca_names = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 33
  %call = tail call fastcc i32 @add_ca_name(%struct.stack_st_X509_NAME** noundef nonnull %client_ca_names, %struct.x509_st* noundef %x) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_NAME* @SSL_load_client_CA_file_ex(i8* noundef %file, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !65
  %call2 = tail call fastcc %struct.lhash_st_X509_NAME* @lh_X509_NAME_new() #13
  %cmp = icmp eq %struct.lhash_st_X509_NAME* %call2, null
  %cmp3 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 619, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_load_client_CA_file_ex, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #12
  store %struct.x509_st* %call4, %struct.x509_st** %x, align 8, !tbaa !65
  %cmp5 = icmp eq %struct.x509_st* %call4, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_load_client_CA_file_ex, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end7:                                          ; preds = %if.end
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call8 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end7
  %call11 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %libctx) #12
  %call1283 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  %cmp1384 = icmp eq %struct.x509_st* %call1283, null
  br i1 %cmp1384, label %done, label %if.end16

if.end16:                                         ; preds = %if.end10, %if.end47
  %xn.086 = phi %struct.X509_name_st* [ %xn.1, %if.end47 ], [ null, %if.end10 ]
  %ret.085 = phi %struct.stack_st_X509_NAME* [ %ret.1, %if.end47 ], [ null, %if.end10 ]
  %cmp17 = icmp eq %struct.stack_st_X509_NAME* %ret.085, null
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end16
  %call20 = call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %1 = bitcast %struct.stack_st* %call20 to %struct.stack_st_X509_NAME*
  %cmp21 = icmp eq %struct.stack_st* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then19
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 639, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_load_client_CA_file_ex, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end25:                                         ; preds = %if.then19, %if.end16
  %ret.1 = phi %struct.stack_st_X509_NAME* [ %1, %if.then19 ], [ %ret.085, %if.end16 ]
  %2 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !65
  %call26 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %2) #12
  %cmp27 = icmp eq %struct.X509_name_st* %call26, null
  br i1 %cmp27, label %err, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call31 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %call26) #12
  %cmp32 = icmp eq %struct.X509_name_st* %call31, null
  br i1 %cmp32, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  %call36 = call fastcc %struct.X509_name_st* @lh_X509_NAME_retrieve(%struct.lhash_st_X509_NAME* noundef %call2, %struct.X509_name_st* noundef nonnull %call31) #13
  %cmp37.not = icmp eq %struct.X509_name_st* %call36, null
  br i1 %cmp37.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call31) #12
  br label %if.end47

if.else:                                          ; preds = %if.end35
  call fastcc void @lh_X509_NAME_insert(%struct.lhash_st_X509_NAME* noundef %call2, %struct.X509_name_st* noundef nonnull %call31) #13
  %call41 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %ret.1) #13
  %3 = bitcast %struct.X509_name_st* %call31 to i8*
  %call43 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call41, i8* noundef nonnull %3) #12
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.else, %if.then39
  %xn.1 = phi %struct.X509_name_st* [ null, %if.then39 ], [ %call31, %if.else ]
  %call12 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call1, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  %cmp13 = icmp eq %struct.x509_st* %call12, null
  br i1 %cmp13, label %done, label %if.end16

err:                                              ; preds = %if.else, %if.end30, %if.end25, %if.end7, %if.then23, %if.then6, %if.then
  %ret.2 = phi %struct.stack_st_X509_NAME* [ null, %if.then ], [ null, %if.then6 ], [ null, %if.then23 ], [ null, %if.end7 ], [ %ret.1, %if.end25 ], [ %ret.1, %if.end30 ], [ %ret.1, %if.else ]
  %xn.2 = phi %struct.X509_name_st* [ null, %if.then ], [ null, %if.then6 ], [ %xn.086, %if.then23 ], [ null, %if.end7 ], [ %call31, %if.else ], [ null, %if.end30 ], [ null, %if.end25 ]
  %prev_libctx.0 = phi %struct.ossl_lib_ctx_st* [ null, %if.then ], [ null, %if.then6 ], [ %call11, %if.then23 ], [ null, %if.end7 ], [ %call11, %if.end25 ], [ %call11, %if.end30 ], [ %call11, %if.else ]
  call void @X509_NAME_free(%struct.X509_name_st* noundef %xn.2) #12
  %call48 = call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %ret.2) #13
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call48, void (i8*)* noundef bitcast (void (%struct.X509_name_st*)* @X509_NAME_free to void (i8*)*)) #12
  br label %done

done:                                             ; preds = %if.end47, %if.end10, %err
  %ret.3 = phi %struct.stack_st_X509_NAME* [ null, %err ], [ null, %if.end10 ], [ %ret.1, %if.end47 ]
  %prev_libctx.1 = phi %struct.ossl_lib_ctx_st* [ %prev_libctx.0, %err ], [ %call11, %if.end10 ], [ %call11, %if.end47 ]
  %call50 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %prev_libctx.1) #12
  %call51 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #12
  %4 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !65
  call void @X509_free(%struct.x509_st* noundef %4) #12
  call fastcc void @lh_X509_NAME_free(%struct.lhash_st_X509_NAME* noundef %call2) #13
  %cmp52.not = icmp eq %struct.stack_st_X509_NAME* %ret.3, null
  br i1 %cmp52.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %done
  call void @ERR_clear_error() #12
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %done
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret %struct.stack_st_X509_NAME* %ret.3
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_X509_NAME* @lh_X509_NAME_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.X509_name_st*)* @xname_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.X509_name_st*, %struct.X509_name_st*)* @xname_cmp to i32 (i8*, i8*)*)) #12
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_X509_NAME*
  ret %struct.lhash_st_X509_NAME* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @xname_hash(%struct.X509_name_st* noundef %a) #0 {
entry:
  %call = tail call i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef %a, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32* noundef null) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @xname_cmp(%struct.X509_name_st* noundef %a, %struct.X509_name_st* noundef %b) #0 {
entry:
  %abuf = alloca i8*, align 8
  %bbuf = alloca i8*, align 8
  %0 = bitcast i8** %abuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %abuf, align 8, !tbaa !65
  %1 = bitcast i8** %bbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i8* null, i8** %bbuf, align 8, !tbaa !65
  %call = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %a, i8** noundef nonnull %abuf) #12
  %call1 = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %b, i8** noundef nonnull %bbuf) #12
  %cmp = icmp slt i32 %call, 0
  %cmp2 = icmp slt i32 %call1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.end7, label %if.else

if.else:                                          ; preds = %entry
  %cmp3.not = icmp eq i32 %call, %call1
  br i1 %cmp3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  %sub = sub nsw i32 %call, %call1
  br label %if.end7

if.else5:                                         ; preds = %if.else
  %2 = load i8*, i8** %abuf, align 8, !tbaa !65
  %3 = load i8*, i8** %bbuf, align 8, !tbaa !65
  %conv16 = zext i32 %call to i64
  %call6 = call i32 @memcmp(i8* noundef %2, i8* noundef %3, i64 noundef %conv16) #15
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then4, %if.else5
  %ret.0 = phi i32 [ %sub, %if.then4 ], [ %call6, %if.else5 ], [ -2, %entry ]
  %4 = load i8*, i8** %abuf, align 8, !tbaa !65
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 590) #12
  %5 = load i8*, i8** %bbuf, align 8, !tbaa !65
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 591) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_name_st* @lh_X509_NAME_retrieve(%struct.lhash_st_X509_NAME* noundef %lh, %struct.X509_name_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_X509_NAME* %lh to %struct.lhash_st*
  %1 = bitcast %struct.X509_name_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #12
  %2 = bitcast i8* %call to %struct.X509_name_st*
  ret %struct.X509_name_st* %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_X509_NAME_insert(%struct.lhash_st_X509_NAME* noundef %lh, %struct.X509_name_st* noundef %d) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_X509_NAME* %lh to %struct.lhash_st*
  %1 = bitcast %struct.X509_name_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #12
  ret void
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_X509_NAME_free(%struct.lhash_st_X509_NAME* noundef %lh) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.lhash_st_X509_NAME* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #12
  ret void
}

declare void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_NAME* @SSL_load_client_CA_file(i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st_X509_NAME* @SSL_load_client_CA_file_ex(i8* noundef %file, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #13
  ret %struct.stack_st_X509_NAME* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_add_file_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !65
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %stack) #13
  %call1 = tail call fastcc i32 (i8*, i8*)* @ossl_check_X509_NAME_compfunc_type(i32 (%struct.X509_name_st**, %struct.X509_name_st**)* noundef nonnull @xname_sk_cmp) #13
  %call2 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call, i32 (i8*, i8*)* noundef %call1) #12
  %call3 = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #12
  %cmp = icmp eq %struct.bio_st* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 695, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.SSL_add_file_cert_subjects_to_stack, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %done

if.end:                                           ; preds = %entry
  %call5 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call4, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call5 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %done, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call855 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call4, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  %cmp956 = icmp eq %struct.x509_st* %call855, null
  br i1 %cmp956, label %for.end, label %if.end12

if.end12:                                         ; preds = %for.cond.preheader, %if.end35
  %1 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !65
  %call13 = call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %1) #12
  %cmp14 = icmp eq %struct.X509_name_st* %call13, null
  br i1 %cmp14, label %done, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %call13) #12
  %cmp19 = icmp eq %struct.X509_name_st* %call18, null
  br i1 %cmp19, label %done, label %if.end22

if.end22:                                         ; preds = %if.end17
  %2 = bitcast %struct.X509_name_st* %call18 to i8*
  %call25 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call, i8* noundef nonnull %2) #12
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end22
  call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call18) #12
  br label %if.end35

if.else:                                          ; preds = %if.end22
  %call31 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef nonnull %2) #12
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else
  call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call18) #12
  br label %done

if.end35:                                         ; preds = %if.else, %if.then28
  %call8 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call4, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  %cmp9 = icmp eq %struct.x509_st* %call8, null
  br i1 %cmp9, label %for.end, label %if.end12

for.end:                                          ; preds = %if.end35, %for.cond.preheader
  call void @ERR_clear_error() #12
  br label %done

done:                                             ; preds = %if.end12, %if.end17, %if.then, %if.then33, %if.end, %for.end
  %ret.0 = phi i32 [ 1, %for.end ], [ 0, %if.end ], [ 0, %if.then33 ], [ 0, %if.then ], [ 0, %if.end17 ], [ 0, %if.end12 ]
  %3 = bitcast i32 (i8*, i8*)* %call2 to i32 (%struct.X509_name_st**, %struct.X509_name_st**)*
  %call36 = call i32 @BIO_free(%struct.bio_st* noundef %call4) #12
  %4 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !65
  call void @X509_free(%struct.x509_st* noundef %4) #12
  %call38 = call fastcc i32 (i8*, i8*)* @ossl_check_X509_NAME_compfunc_type(i32 (%struct.X509_name_st**, %struct.X509_name_st**)* noundef %3) #13
  %call39 = call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call, i32 (i8*, i8*)* noundef %call38) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

declare i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @xname_sk_cmp(%struct.X509_name_st** nocapture noundef readonly %a, %struct.X509_name_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %a, align 8, !tbaa !65
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %b, align 8, !tbaa !65
  %call = tail call i32 @xname_cmp(%struct.X509_name_st* noundef %0, %struct.X509_name_st* noundef %1) #13
  ret i32 %call
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_add_dir_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef %dir) local_unnamed_addr #0 {
entry:
  %d = alloca %struct.OPENSSL_dir_context_st*, align 8
  %buf = alloca [1024 x i8], align 16
  %0 = bitcast %struct.OPENSSL_dir_context_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.OPENSSL_dir_context_st* null, %struct.OPENSSL_dir_context_st** %d, align 8, !tbaa !65
  %call39 = call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %d, i8* noundef %dir) #12
  %tobool.not40 = icmp eq i8* %call39, null
  br i1 %tobool.not40, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call41 = phi i8* [ %call39, %while.body.lr.ph ], [ %call, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #14
  %call1 = call i64 @strlen(i8* noundef %dir) #15
  %call2 = call i64 @strlen(i8* noundef nonnull %call41) #15
  %add = add i64 %call1, -1023
  %2 = add i64 %add, %call2
  %cmp = icmp ult i64 %2, -1025
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.SSL_add_dir_cert_subjects_to_stack, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 270, i8* noundef null) #12
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  %call4 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %dir, i8* noundef nonnull %call41) #12
  %3 = add i32 %call4, -1024
  %4 = icmp ult i32 %3, -1023
  br i1 %4, label %cleanup.thread, label %if.end8

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @SSL_add_file_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef nonnull %1) #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end, %if.end8, %if.then
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14
  br label %err

cleanup:                                          ; preds = %if.end8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #14
  %call = call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %d, i8* noundef %dir) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry
  %call15 = tail call i32* @__errno_location() #16
  %5 = load i32, i32* %call15, align 4, !tbaa !4
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %err, label %if.then17

if.then17:                                        ; preds = %while.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 760, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.SSL_add_dir_cert_subjects_to_stack, i64 0, i64 0)) #12
  %6 = load i32, i32* %call15, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %6, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef %dir) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.SSL_add_dir_cert_subjects_to_stack, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %err

err:                                              ; preds = %cleanup.thread, %while.end, %if.then17
  %ret.0 = phi i32 [ 0, %if.then17 ], [ 1, %while.end ], [ 0, %cleanup.thread ]
  %7 = load %struct.OPENSSL_dir_context_st*, %struct.OPENSSL_dir_context_st** %d, align 8, !tbaa !65
  %tobool20.not = icmp eq %struct.OPENSSL_dir_context_st* %7, null
  br i1 %tobool20.not, label %cleanup24, label %if.then21

if.then21:                                        ; preds = %err
  %call22 = call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %d) #12
  br label %cleanup24

cleanup24:                                        ; preds = %err, %if.then21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

declare i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #9

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

declare i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_add_store_cert_subjects_to_stack(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef %store) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %stack) #13
  %call1 = tail call fastcc i32 (i8*, i8*)* @ossl_check_X509_NAME_compfunc_type(i32 (%struct.X509_name_st**, %struct.X509_name_st**)* noundef nonnull @xname_sk_cmp) #13
  %call2 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call, i32 (i8*, i8*)* noundef %call1) #12
  %0 = bitcast i32 (i8*, i8*)* %call2 to i32 (%struct.X509_name_st**, %struct.X509_name_st**)*
  %call3 = tail call fastcc i32 @add_uris_recursive(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef %store, i32 noundef 1) #13
  %call5 = tail call fastcc i32 (i8*, i8*)* @ossl_check_X509_NAME_compfunc_type(i32 (%struct.X509_name_st**, %struct.X509_name_st**)* noundef %0) #13
  %call6 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call, i32 (i8*, i8*)* noundef %call5) #12
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_uris_recursive(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef %uri, i32 noundef %depth) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_open(i8* noundef %uri, %struct.ui_method_st* noundef null, i8* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #12
  %cmp = icmp eq %struct.ossl_store_ctx_st* %call, null
  br i1 %cmp, label %cleanup45, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call176 = tail call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %call) #12
  %tobool.not77 = icmp eq i32 %call176, 0
  br i1 %tobool.not77, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %cmp12 = icmp sgt i32 %depth, 0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %cleanup
  %ok.078 = phi i32 [ 1, %land.rhs.lr.ph ], [ %ok.2, %cleanup ]
  %call2 = tail call i32 @OSSL_STORE_error(%struct.ossl_store_ctx_st* noundef nonnull %call) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call4 = tail call %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef nonnull %call) #12
  %cmp5 = icmp eq %struct.ossl_store_info_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end9

if.end9:                                          ; preds = %while.body
  %call6 = tail call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %call4) #12
  switch i32 %call6, label %if.end42 [
    i32 1, label %if.then11
    i32 5, label %if.then18
  ]

if.then11:                                        ; preds = %if.end9
  br i1 %cmp12, label %if.then13, label %if.end42

if.then13:                                        ; preds = %if.then11
  %call14 = tail call i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef nonnull %call4) #12
  %call15 = tail call fastcc i32 @add_uris_recursive(%struct.stack_st_X509_NAME* noundef %stack, i8* noundef %call14, i32 noundef 0) #13
  br label %if.end42

if.then18:                                        ; preds = %if.end9
  %call19 = tail call %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef nonnull %call4) #12
  %cmp20 = icmp eq %struct.x509_st* %call19, null
  br i1 %cmp20, label %cleanup45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then18
  %call21 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %call19) #12
  %cmp22 = icmp eq %struct.X509_name_st* %call21, null
  br i1 %cmp22, label %cleanup45, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %call24 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef nonnull %call21) #12
  %cmp25 = icmp eq %struct.X509_name_st* %call24, null
  br i1 %cmp25, label %cleanup45, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_X509_NAME_sk_type(%struct.stack_st_X509_NAME* noundef %stack) #13
  %0 = bitcast %struct.X509_name_st* %call24 to i8*
  %call30 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call28, i8* noundef nonnull %0) #12
  %cmp31 = icmp sgt i32 %call30, -1
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end27
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call24) #12
  br label %if.end42

if.else33:                                        ; preds = %if.end27
  %call36 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call28, i8* noundef nonnull %0) #12
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.else33
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call24) #12
  br label %cleanup45

if.end42:                                         ; preds = %if.end9, %if.else33, %if.then32, %if.then11, %if.then13
  %ok.1 = phi i32 [ %call15, %if.then13 ], [ %ok.078, %if.then11 ], [ %ok.078, %if.then32 ], [ %ok.078, %if.else33 ], [ %ok.078, %if.end9 ]
  tail call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end42
  %ok.2 = phi i32 [ %ok.1, %if.end42 ], [ %ok.078, %while.body ]
  %call1 = tail call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %cleanup, %while.cond.preheader
  %ok.0.lcssa = phi i32 [ 1, %while.cond.preheader ], [ %ok.2, %cleanup ], [ %ok.078, %land.rhs ]
  tail call void @ERR_clear_error() #12
  br label %cleanup45

cleanup45:                                        ; preds = %if.then18, %lor.lhs.false, %lor.lhs.false23, %if.then38, %while.end, %entry
  %ok.3 = phi i32 [ %ok.0.lcssa, %while.end ], [ 0, %entry ], [ 0, %if.then38 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false ], [ 0, %if.then18 ]
  %call44 = tail call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef %call) #12
  ret i32 %ok.3
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_build_cert_chain(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ssl_st* %s, null
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %cert1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %cond.in = select i1 %tobool.not, %struct.cert_st** %cert1, %struct.cert_st** %cert
  %cond = load %struct.cert_st*, %struct.cert_st** %cond.in, align 8, !tbaa !65
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 0
  %0 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !8
  br i1 %tobool.not, label %cond.end5, label %cond.false3

cond.false3:                                      ; preds = %entry
  %ctx4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx4, align 8, !tbaa !69
  br label %cond.end5

cond.end5:                                        ; preds = %entry, %cond.false3
  %cond6 = phi %struct.ssl_ctx_st* [ %1, %cond.false3 ], [ %ctx, %entry ]
  %x509 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %0, i64 0, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  %tobool7.not = icmp eq %struct.x509_st* %2, null
  br i1 %tobool7.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_build_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 179, i8* noundef null) #12
  %.pre = and i32 %flags, 4
  br label %err

if.end:                                           ; preds = %cond.end5
  %and = and i32 %flags, 4
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #12
  %cmp10 = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp10, label %if.then131, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then9
  %chain13 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %0, i64 0, i32 2
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain13, align 8, !tbaa !47
  %call14216 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #13
  %call15217 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14216) #12
  %cmp16218 = icmp sgt i32 %call15217, 0
  br i1 %cmp16218, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain13, align 8, !tbaa !47
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %4) #13
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #12
  %cmp16 = icmp slt i32 %inc, %call15
  br i1 %cmp16, label %for.body, label %for.end, !llvm.loop !91

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0219 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain13, align 8, !tbaa !47
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %5) #13
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %i.0219) #12
  %6 = bitcast i8* %call19 to %struct.x509_st*
  %call20 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef nonnull %call, %struct.x509_st* noundef %6) #12
  %tobool21.not = icmp eq i32 %call20, 0
  %inc = add nuw nsw i32 %i.0219, 1
  br i1 %tobool21.not, label %if.then131, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %7 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  %call25 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef nonnull %call, %struct.x509_st* noundef %7) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then131, label %if.end46

if.else:                                          ; preds = %if.end
  %chain_store29 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 14
  %8 = load %struct.x509_store_st*, %struct.x509_store_st** %chain_store29, align 8, !tbaa !62
  %tobool30.not = icmp eq %struct.x509_store_st* %8, null
  br i1 %tobool30.not, label %if.else33, label %if.end40

if.else33:                                        ; preds = %if.else
  br i1 %tobool.not, label %if.end40.sink.split, label %if.then35

if.then35:                                        ; preds = %if.else33
  %ctx36 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %9 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx36, align 8, !tbaa !69
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.else33, %if.then35
  %.sink = phi %struct.ssl_ctx_st* [ %9, %if.then35 ], [ %ctx, %if.else33 ]
  %cert_store = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %.sink, i64 0, i32 5
  %10 = load %struct.x509_store_st*, %struct.x509_store_st** %cert_store, align 8, !tbaa !70
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.else
  %chain_store.0 = phi %struct.x509_store_st* [ %8, %if.else ], [ %10, %if.end40.sink.split ]
  %and41 = and i32 %flags, 1
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.end40
  %chain44 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %0, i64 0, i32 2
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain44, align 8, !tbaa !47
  br label %if.end46

if.end46:                                         ; preds = %if.end40, %if.then43, %for.end
  %untrusted.0 = phi %struct.stack_st_X509* [ null, %for.end ], [ %11, %if.then43 ], [ null, %if.end40 ]
  %chain_store.1 = phi %struct.x509_store_st* [ %call, %for.end ], [ %chain_store.0, %if.then43 ], [ %chain_store.0, %if.end40 ]
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %cond6, i64 0, i32 0
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !75
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %cond6, i64 0, i32 85
  %13 = load i8*, i8** %propq, align 8, !tbaa !76
  %call47 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %12, i8* noundef %13) #12
  %cmp48 = icmp eq %struct.x509_store_ctx_st* %call47, null
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end46
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 883, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_build_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %err

if.end50:                                         ; preds = %if.end46
  %14 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !44
  %call52 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call47, %struct.x509_store_st* noundef %chain_store.1, %struct.x509_st* noundef %14, %struct.stack_st_X509* noundef %untrusted.0) #12
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 887, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_build_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524299, i8* noundef null) #12
  br label %err

if.end55:                                         ; preds = %if.end50
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 4
  %15 = load i32, i32* %cert_flags, align 4, !tbaa !58
  %and56 = and i32 %15, 196608
  %conv = zext i32 %and56 to i64
  tail call void @X509_STORE_CTX_set_flags(%struct.x509_store_ctx_st* noundef nonnull %call47, i64 noundef %conv) #12
  %call57 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call47) #12
  %cmp58 = icmp sgt i32 %call57, 0
  %and60 = and i32 %flags, 8
  %tobool61.not = icmp eq i32 %and60, 0
  %or.cond = or i1 %tobool61.not, %cmp58
  br i1 %or.cond, label %if.end67, label %if.then62

if.then62:                                        ; preds = %if.end55
  %and63 = and i32 %flags, 16
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end79, label %if.then65

if.then65:                                        ; preds = %if.then62
  tail call void @ERR_clear_error() #12
  br label %if.end79

if.end67:                                         ; preds = %if.end55
  br i1 %cmp58, label %if.end79, label %if.then75

if.then75:                                        ; preds = %if.end67
  %call76 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call47) #12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 905, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_build_cert_chain, i64 0, i64 0)) #12
  %conv77 = sext i32 %call76 to i64
  %call78 = tail call i8* @X509_verify_cert_error_string(i64 noundef %conv77) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 134, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call78) #12
  br label %err

if.end79:                                         ; preds = %if.then62, %if.then65, %if.end67
  %rv.0208 = phi i32 [ 0, %if.end67 ], [ 2, %if.then65 ], [ 2, %if.then62 ]
  %call71 = tail call %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* noundef nonnull %call47) #12
  %call80 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call71) #13
  %call81 = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call80) #12
  %16 = bitcast i8* %call81 to %struct.x509_st*
  tail call void @X509_free(%struct.x509_st* noundef %16) #12
  %and82 = and i32 %flags, 2
  %tobool83.not = icmp eq i32 %and82, 0
  %.pre224 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %call71) #13
  br i1 %tobool83.not, label %if.end102, label %if.then84

if.then84:                                        ; preds = %if.end79
  %call86 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %.pre224) #12
  %cmp87 = icmp sgt i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end102

if.then89:                                        ; preds = %if.then84
  %call92 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %.pre224) #12
  %sub = add nsw i32 %call92, -1
  %call93 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %.pre224, i32 noundef %sub) #12
  %17 = bitcast i8* %call93 to %struct.x509_st*
  %call94 = tail call i32 @X509_get_extension_flags(%struct.x509_st* noundef %17) #12
  %and95 = and i32 %call94, 8192
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end102, label %if.then97

if.then97:                                        ; preds = %if.then89
  %call99 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call80) #12
  %18 = bitcast i8* %call99 to %struct.x509_st*
  tail call void @X509_free(%struct.x509_st* noundef %18) #12
  br label %if.end102

if.end102:                                        ; preds = %if.end79, %if.then84, %if.then97, %if.then89
  %call105220 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %.pre224) #12
  %cmp106221 = icmp sgt i32 %call105220, 0
  br i1 %cmp106221, label %for.body108, label %for.end120

for.cond103:                                      ; preds = %for.body108
  %call105 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %.pre224) #12
  %cmp106 = icmp slt i32 %inc119, %call105
  br i1 %cmp106, label %for.body108, label %for.end120, !llvm.loop !92

for.body108:                                      ; preds = %if.end102, %for.cond103
  %i.2222 = phi i32 [ %inc119, %for.cond103 ], [ 0, %if.end102 ]
  %call110 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %.pre224, i32 noundef %i.2222) #12
  %19 = bitcast i8* %call110 to %struct.x509_st*
  %call111 = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %19, i32 noundef 0, i32 noundef 0) #12
  %cmp112.not = icmp eq i32 %call111, 1
  %inc119 = add nuw nsw i32 %i.2222, 1
  br i1 %cmp112.not, label %for.cond103, label %if.then114

if.then114:                                       ; preds = %for.body108
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 931, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_build_cert_chain, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call111, i8* noundef null) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call80, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  br label %err

for.end120:                                       ; preds = %for.cond103, %if.end102
  %rv.1.lcssa = phi i32 [ %rv.0208, %if.end102 ], [ 1, %for.cond103 ]
  %chain121 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %0, i64 0, i32 2
  %20 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain121, align 8, !tbaa !47
  %call122 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %20) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call122, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  store %struct.stack_st_X509* %call71, %struct.stack_st_X509** %chain121, align 8, !tbaa !47
  %cmp125 = icmp eq i32 %rv.1.lcssa, 0
  %spec.select = select i1 %cmp125, i32 1, i32 %rv.1.lcssa
  br label %err

err:                                              ; preds = %for.end120, %if.then114, %if.then75, %if.then54, %if.then49, %if.then
  %and129.pre-phi = phi i32 [ %and, %if.then114 ], [ %and, %if.then75 ], [ %and, %if.then54 ], [ %and, %if.then49 ], [ %.pre, %if.then ], [ %and, %for.end120 ]
  %xs_ctx.0 = phi %struct.x509_store_ctx_st* [ %call47, %if.then114 ], [ %call47, %if.then75 ], [ %call47, %if.then54 ], [ null, %if.then49 ], [ null, %if.then ], [ %call47, %for.end120 ]
  %chain_store.2 = phi %struct.x509_store_st* [ %chain_store.1, %if.then114 ], [ %chain_store.1, %if.then75 ], [ %chain_store.1, %if.then54 ], [ %chain_store.1, %if.then49 ], [ null, %if.then ], [ %chain_store.1, %for.end120 ]
  %rv.2 = phi i32 [ 0, %if.then114 ], [ 0, %if.then75 ], [ 0, %if.then54 ], [ 0, %if.then49 ], [ 0, %if.then ], [ %spec.select, %for.end120 ]
  %tobool130.not = icmp eq i32 %and129.pre-phi, 0
  br i1 %tobool130.not, label %if.end132, label %if.then131

if.then131:                                       ; preds = %for.body, %if.then9, %for.end, %err
  %rv.2233 = phi i32 [ %rv.2, %err ], [ 0, %for.end ], [ 0, %if.then9 ], [ 0, %for.body ]
  %chain_store.2232 = phi %struct.x509_store_st* [ %chain_store.2, %err ], [ %call, %for.end ], [ null, %if.then9 ], [ %call, %for.body ]
  %xs_ctx.0230 = phi %struct.x509_store_ctx_st* [ %xs_ctx.0, %err ], [ null, %for.end ], [ null, %if.then9 ], [ null, %for.body ]
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %chain_store.2232) #12
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %err
  %rv.2234 = phi i32 [ %rv.2233, %if.then131 ], [ %rv.2, %err ]
  %xs_ctx.0231 = phi %struct.x509_store_ctx_st* [ %xs_ctx.0230, %if.then131 ], [ %xs_ctx.0, %err ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %xs_ctx.0231) #12
  ret i32 %rv.2234
}

declare %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #1

declare i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #1

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #1

declare i32 @X509_get_extension_flags(%struct.x509_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_set_cert_store(%struct.cert_st* nocapture noundef %c, %struct.x509_store_st* noundef %store, i32 noundef %chain, i32 noundef %ref) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %chain, 0
  %chain_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 14
  %verify_store = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 15
  %pstore.0 = select i1 %tobool.not, %struct.x509_store_st** %verify_store, %struct.x509_store_st** %chain_store
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %pstore.0, align 8, !tbaa !65
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %0) #12
  store %struct.x509_store_st* %store, %struct.x509_store_st** %pstore.0, align 8, !tbaa !65
  %tobool1 = icmp ne i32 %ref, 0
  %tobool2 = icmp ne %struct.x509_store_st* %store, null
  %or.cond = and i1 %tobool2, %tobool1
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  %call = tail call i32 @X509_STORE_up_ref(%struct.x509_store_st* noundef nonnull %store) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_get_security_level_bits(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i32* noundef writeonly %levelp) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @SSL_CTX_get_security_level(%struct.ssl_ctx_st* noundef nonnull %ctx) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @SSL_get_security_level(%struct.ssl_st* noundef %s) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %level.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  %0 = icmp sgt i32 %level.0, 0
  %spec.store.select = select i1 %0, i32 %level.0, i32 0
  %1 = icmp ult i32 %spec.store.select, 5
  %level.1 = select i1 %1, i32 %spec.store.select, i32 5
  %cmp9.not = icmp eq i32* %levelp, null
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  store i32 %level.1, i32* %levelp, align 4, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %idxprom = zext i32 %level.1 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @ssl_get_security_level_bits.minbits_table, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !4
  ret i32 %2
}

declare i32 @SSL_CTX_get_security_level(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_security(%struct.ssl_st* noundef %s, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* noundef %other) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !68
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 17
  %1 = load i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !14
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 19
  %2 = load i8*, i8** %sec_ex, align 8, !tbaa !16
  %call = tail call i32 %1(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* noundef %other, i8* noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_ctx_security(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* noundef %other) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !93
  %sec_cb = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 17
  %1 = load i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_ctx_st*, i32, i32, i32, i8*, i8*)** %sec_cb, align 8, !tbaa !14
  %sec_ex = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 19
  %2 = load i8*, i8** %sec_ex, align 8, !tbaa !16
  %call = tail call i32 %1(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, i32 noundef %op, i32 noundef %bits, i32 noundef %nid, i8* noundef %other, i8* noundef %2) #12
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define i32 @ssl_cert_lookup_by_nid(i32 noundef %nid, i64* nocapture noundef writeonly %pidx) local_unnamed_addr #11 {
entry:
  switch i32 %nid, label %cleanup [
    i32 6, label %if.then
    i32 912, label %if.then.fold.split
    i32 116, label %if.then.fold.split10
    i32 408, label %if.then.fold.split11
    i32 811, label %if.then.fold.split12
    i32 979, label %if.then.fold.split13
    i32 980, label %if.then.fold.split14
    i32 1087, label %if.then.fold.split15
    i32 1088, label %if.then.fold.split16
  ]

if.then.fold.split:                               ; preds = %entry
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %entry, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split
  %i.08.lcssa = phi i64 [ 0, %entry ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split10 ], [ 3, %if.then.fold.split11 ], [ 4, %if.then.fold.split12 ], [ 5, %if.then.fold.split13 ], [ 6, %if.then.fold.split14 ], [ 7, %if.then.fold.split15 ], [ 8, %if.then.fold.split16 ]
  store i64 %i.08.lcssa, i64* %pidx, align 8, !tbaa !94
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef %pk, i64* noundef writeonly %pidx) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.022 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds [9 x %struct.SSL_CERT_LOOKUP], [9 x %struct.SSL_CERT_LOOKUP]* @ssl_cert_info, i64 0, i64 %i.022
  %nid = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %arrayidx, i64 0, i32 0
  %0 = load i32, i32* %nid, align 8, !tbaa !95
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %0) #12
  %call1 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %call3 = tail call i8* @OBJ_nid2ln(i32 noundef %0) #12
  %call4 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %pk, i8* noundef %call3) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.inc, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %cmp6.not = icmp eq i64* %pidx, null
  br i1 %cmp6.not, label %cleanup9, label %if.then7

if.then7:                                         ; preds = %if.then
  store i64 %i.022, i64* %pidx, align 8, !tbaa !94
  br label %cleanup9

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw nsw i64 %i.022, 1
  %exitcond.not = icmp eq i64 %inc, 9
  br i1 %exitcond.not, label %cleanup9, label %for.body, !llvm.loop !97

cleanup9:                                         ; preds = %for.inc, %if.then, %if.then7
  %retval.2 = phi %struct.SSL_CERT_LOOKUP* [ %arrayidx, %if.then7 ], [ %arrayidx, %if.then ], [ null, %for.inc ]
  ret %struct.SSL_CERT_LOOKUP* %retval.2
}

declare i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2ln(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef %idx) local_unnamed_addr #4 {
entry:
  %cmp = icmp ugt i64 %idx, 8
  %arrayidx = getelementptr inbounds [9 x %struct.SSL_CERT_LOOKUP], [9 x %struct.SSL_CERT_LOOKUP]* @ssl_cert_info, i64 0, i64 %idx
  %retval.0 = select i1 %cmp, %struct.SSL_CERT_LOOKUP* null, %struct.SSL_CERT_LOOKUP* %arrayidx
  ret %struct.SSL_CERT_LOOKUP* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_x509_store_ctx_init() unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_get_ex_new_index(i32 noundef 5, i64 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef null, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef null, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef null) #12
  store volatile i32 %call, i32* @ssl_x509_store_ctx_idx, align 4, !tbaa !4
  %0 = load volatile i32, i32* @ssl_x509_store_ctx_idx, align 4, !tbaa !4
  %1 = xor i32 %0, -1
  %.lobit.not = lshr i32 %1, 31
  ret i32 %.lobit.not
}

declare i32 @CRYPTO_get_ex_new_index(i32 noundef, i64 noundef, i8* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef, i32 (%struct.crypto_ex_data_st*, %struct.crypto_ex_data_st*, i8**, i32, i64, i8*)* noundef, void (i8*, i8*, %struct.crypto_ex_data_st*, i32, i64, i8*)* noundef) local_unnamed_addr #1

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #1

declare %struct.ossl_store_ctx_st* @OSSL_STORE_open(i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_STORE_error(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #1

declare %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef) local_unnamed_addr #1

declare i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef) local_unnamed_addr #1

declare %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef) local_unnamed_addr #1

declare void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"cert_st", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !6, i64 32, !10, i64 392, !11, i64 400, !10, i64 408, !11, i64 416, !10, i64 424, !11, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !12, i64 472, !10, i64 488, !5, i64 496, !10, i64 504, !10, i64 512, !6, i64 520, !10, i64 528}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"", !10, i64 0, !11, i64 8}
!13 = !{!9, !6, i64 520}
!14 = !{!9, !10, i64 488}
!15 = !{!9, !5, i64 496}
!16 = !{!9, !10, i64 504}
!17 = !{!9, !10, i64 528}
!18 = !{!19, !5, i64 32}
!19 = !{!"ssl_cipher_st", !5, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72}
!20 = !{!19, !5, i64 40}
!21 = !{!19, !5, i64 36}
!22 = !{!19, !5, i64 44}
!23 = !{!19, !5, i64 28}
!24 = !{!25, !10, i64 8}
!25 = !{!"ssl_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !26, i64 72, !6, i64 132, !10, i64 136, !10, i64 144, !11, i64 152, !11, i64 160, !27, i64 168, !10, i64 1208, !10, i64 1216, !10, i64 1224, !5, i64 1232, !10, i64 1240, !30, i64 1248, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !5, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !10, i64 2120, !6, i64 2128, !10, i64 2144, !10, i64 2152, !10, i64 2160, !10, i64 2168, !6, i64 2176, !10, i64 2192, !10, i64 2200, !6, i64 2208, !11, i64 2272, !6, i64 2280, !11, i64 2288, !6, i64 2296, !10, i64 2328, !10, i64 2336, !10, i64 2344, !11, i64 2352, !10, i64 2360, !6, i64 2368, !11, i64 2400, !5, i64 2408, !10, i64 2416, !10, i64 2424, !5, i64 2432, !5, i64 2436, !10, i64 2440, !10, i64 2448, !10, i64 2456, !10, i64 2464, !10, i64 2472, !10, i64 2480, !11, i64 2488, !31, i64 2496, !10, i64 2512, !10, i64 2520, !6, i64 2528, !11, i64 2536, !5, i64 2544, !5, i64 2548, !5, i64 2552, !11, i64 2560, !5, i64 2568, !5, i64 2572, !11, i64 2576, !11, i64 2584, !11, i64 2592, !32, i64 2600, !10, i64 2904, !5, i64 2912, !10, i64 2920, !10, i64 2928, !10, i64 2936, !5, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !5, i64 2976, !5, i64 2980, !6, i64 2984, !5, i64 2988, !10, i64 2992, !11, i64 3000, !5, i64 3008, !10, i64 3016, !34, i64 3024, !10, i64 3152, !35, i64 3160, !10, i64 7448, !10, i64 7456, !10, i64 7464, !10, i64 7472, !11, i64 7480, !5, i64 7488, !5, i64 7492, !5, i64 7496, !10, i64 7504, !10, i64 7512, !11, i64 7520, !10, i64 7528, !11, i64 7536, !11, i64 7544, !11, i64 7552, !10, i64 7560, !10, i64 7568, !10, i64 7576, !10, i64 7584, !10, i64 7592, !11, i64 7600}
!26 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !6, i64 52, !6, i64 56}
!27 = !{!"", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !5, i64 216, !5, i64 220, !10, i64 224, !10, i64 232, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !6, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !28, i64 280, !6, i64 840, !11, i64 904, !6, i64 912, !11, i64 976, !5, i64 984, !5, i64 988, !10, i64 992, !11, i64 1000, !10, i64 1008, !11, i64 1016, !5, i64 1024, !6, i64 1028, !6, i64 1029, !29, i64 1030, !10, i64 1032}
!28 = !{!"", !6, i64 0, !11, i64 128, !6, i64 136, !11, i64 264, !11, i64 272, !5, i64 280, !10, i64 288, !10, i64 296, !5, i64 304, !10, i64 312, !11, i64 320, !10, i64 328, !11, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !5, i64 368, !11, i64 376, !10, i64 384, !5, i64 392, !10, i64 400, !11, i64 408, !10, i64 416, !11, i64 424, !10, i64 432, !11, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !11, i64 480, !11, i64 488, !10, i64 496, !6, i64 504, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552}
!29 = !{!"short", !6, i64 0}
!30 = !{!"ssl_dane_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !11, i64 56}
!31 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!32 = !{!"", !6, i64 0, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !10, i64 64, !29, i64 72, !5, i64 76, !33, i64 80, !5, i64 112, !5, i64 116, !11, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !11, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !11, i64 232, !10, i64 240, !11, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !10, i64 272, !11, i64 280, !5, i64 288, !6, i64 292, !5, i64 296}
!33 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24}
!34 = !{!"srp_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !5, i64 112, !11, i64 120}
!35 = !{!"record_layer_st", !10, i64 0, !5, i64 8, !5, i64 12, !11, i64 16, !11, i64 24, !36, i64 32, !6, i64 80, !6, i64 1616, !10, i64 4176, !11, i64 4184, !11, i64 4192, !6, i64 4200, !11, i64 4208, !11, i64 4216, !11, i64 4224, !5, i64 4232, !11, i64 4240, !10, i64 4248, !6, i64 4256, !6, i64 4264, !5, i64 4272, !5, i64 4276, !10, i64 4280}
!36 = !{!"ssl3_buffer_st", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40}
!37 = !{!38, !10, i64 192}
!38 = !{!"ssl_method_st", !5, i64 0, !5, i64 4, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216}
!39 = !{!40, !5, i64 96}
!40 = !{!"ssl3_enc_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 88, !5, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!41 = !{!9, !10, i64 8}
!42 = !{!9, !10, i64 16}
!43 = !{!9, !5, i64 24}
!44 = !{!45, !10, i64 0}
!45 = !{!"cert_pkey_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32}
!46 = !{!45, !10, i64 8}
!47 = !{!45, !10, i64 16}
!48 = !{!45, !10, i64 24}
!49 = !{!45, !11, i64 32}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!9, !10, i64 408}
!53 = !{!9, !11, i64 416}
!54 = !{!9, !10, i64 424}
!55 = !{!9, !11, i64 432}
!56 = !{!9, !10, i64 392}
!57 = !{!9, !11, i64 400}
!58 = !{!9, !5, i64 28}
!59 = !{!9, !10, i64 440}
!60 = !{!9, !10, i64 448}
!61 = !{!9, !10, i64 464}
!62 = !{!9, !10, i64 456}
!63 = !{!9, !10, i64 512}
!64 = distinct !{!64, !51}
!65 = !{!10, !10, i64 0}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !51}
!68 = !{!25, !10, i64 2200}
!69 = !{!25, !10, i64 2472}
!70 = !{!71, !10, i64 40}
!71 = !{!"ssl_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !11, i64 56, !10, i64 64, !10, i64 72, !5, i64 80, !11, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !72, i64 120, !6, i64 164, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !31, i64 240, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !11, i64 312, !5, i64 320, !5, i64 324, !5, i64 328, !11, i64 336, !10, i64 344, !5, i64 352, !10, i64 360, !10, i64 368, !5, i64 376, !11, i64 384, !6, i64 392, !10, i64 424, !10, i64 432, !10, i64 440, !5, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !73, i64 536, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !34, i64 792, !74, i64 920, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !5, i64 984, !5, i64 988, !10, i64 992, !10, i64 1000, !11, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !11, i64 1040, !10, i64 1048, !10, i64 1056, !5, i64 1064, !10, i64 1072, !10, i64 1080, !10, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !10, i64 1568, !10, i64 1576, !11, i64 1584, !11, i64 1592, !5, i64 1600, !5, i64 1604, !5, i64 1608, !5, i64 1612}
!72 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!73 = !{!"", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !6, i64 76, !11, i64 80, !10, i64 88, !11, i64 96, !10, i64 104, !10, i64 112, !11, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !6, i64 192}
!74 = !{!"dane_ctx_st", !10, i64 0, !10, i64 8, !6, i64 16, !11, i64 24}
!75 = !{!71, !10, i64 0}
!76 = !{!71, !10, i64 1088}
!77 = !{!25, !10, i64 1256}
!78 = !{!25, !5, i64 56}
!79 = !{!25, !10, i64 1240}
!80 = !{!25, !10, i64 2416}
!81 = !{!71, !10, i64 168}
!82 = !{!71, !10, i64 176}
!83 = !{!25, !11, i64 2488}
!84 = !{!25, !10, i64 2480}
!85 = distinct !{!85, !51}
!86 = !{!71, !10, i64 296}
!87 = !{!25, !10, i64 2512}
!88 = !{!71, !10, i64 304}
!89 = !{!25, !10, i64 776}
!90 = !{!25, !10, i64 2520}
!91 = distinct !{!91, !51}
!92 = distinct !{!92, !51}
!93 = !{!71, !10, i64 344}
!94 = !{!11, !11, i64 0}
!95 = !{!96, !5, i64 0}
!96 = !{!"", !5, i64 0, !5, i64 4}
!97 = distinct !{!97, !51}
