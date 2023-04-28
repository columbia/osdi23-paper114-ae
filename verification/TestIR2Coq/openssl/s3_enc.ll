; ModuleID = 'ssl/s3_enc.c'
source_filename = "ssl/s3_enc.c"
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
%struct.ossl_provider_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"ssl/s3_enc.c\00", align 1
@__func__.ssl3_change_cipher_state = private unnamed_addr constant [25 x i8] c"ssl3_change_cipher_state\00", align 1
@__func__.ssl3_setup_key_block = private unnamed_addr constant [21 x i8] c"ssl3_setup_key_block\00", align 1
@__func__.ssl3_init_finished_mac = private unnamed_addr constant [23 x i8] c"ssl3_init_finished_mac\00", align 1
@__func__.ssl3_finish_mac = private unnamed_addr constant [16 x i8] c"ssl3_finish_mac\00", align 1
@__func__.ssl3_digest_cached_records = private unnamed_addr constant [27 x i8] c"ssl3_digest_cached_records\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ssl3-ms\00", align 1
@__func__.ssl3_final_finish_mac = private unnamed_addr constant [22 x i8] c"ssl3_final_finish_mac\00", align 1
@ssl3_generate_master_secret.salt = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CCC\00", align 1
@__func__.ssl3_generate_master_secret = private unnamed_addr constant [28 x i8] c"ssl3_generate_master_secret\00", align 1
@__func__.ssl3_generate_key_block = private unnamed_addr constant [24 x i8] c"ssl3_generate_key_block\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_change_cipher_state(%struct.ssl_st* noundef %s, i32 noundef %which) local_unnamed_addr #0 {
entry:
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !4
  %new_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 15
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %new_hash, align 8, !tbaa !22
  %cmp.not = icmp eq %struct.evp_md_st* %1, null
  br i1 %cmp.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  %2 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !23
  %cmp7 = icmp eq %struct.ssl_comp_st* %2, null
  br i1 %cmp7, label %if.end13, label %if.else

if.else:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %2, i64 0, i32 2
  %3 = load %struct.comp_method_st*, %struct.comp_method_st** %method, align 8, !tbaa !24
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.else
  %comp.0 = phi %struct.comp_method_st* [ %3, %if.else ], [ null, %if.end ]
  %and = and i32 %which, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else47, label %if.then14

if.then14:                                        ; preds = %if.end13
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %4 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !26
  %cmp15.not = icmp eq %struct.evp_cipher_ctx_st* %4, null
  br i1 %cmp15.not, label %if.else18, label %if.end27

if.else18:                                        ; preds = %if.then14
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #7
  store %struct.evp_cipher_ctx_st* %call, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !26
  %cmp20 = icmp eq %struct.evp_cipher_ctx_st* %call, null
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else18
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.else23:                                        ; preds = %if.else18
  %call25 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %call) #7
  %.pre = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !26
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %if.else23
  %5 = phi %struct.evp_cipher_ctx_st* [ %.pre, %if.else23 ], [ %4, %if.then14 ]
  %reuse_dd.0 = phi i32 [ 0, %if.else23 ], [ 1, %if.then14 ]
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 43
  %call29 = tail call %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** noundef nonnull %read_hash, %struct.evp_md_st* noundef nonnull %1) #7
  %cmp30 = icmp eq %struct.evp_md_ctx_st* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end27
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 45
  %6 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !27
  tail call void @COMP_CTX_free(%struct.comp_ctx_st* noundef %6) #7
  store %struct.comp_ctx_st* null, %struct.comp_ctx_st** %expand, align 8, !tbaa !27
  %cmp35.not = icmp eq %struct.comp_method_st* %comp.0, null
  br i1 %cmp35.not, label %if.end45, label %if.then37

if.then37:                                        ; preds = %if.end33
  %call38 = tail call %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef nonnull %comp.0) #7
  store %struct.comp_ctx_st* %call38, %struct.comp_ctx_st** %expand, align 8, !tbaa !27
  %cmp41 = icmp eq %struct.comp_ctx_st* %call38, null
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then37
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 142, i8* noundef null) #7
  br label %cleanup

if.end45:                                         ; preds = %if.then37, %if.end33
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef nonnull %rlayer) #7
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 2, i64 0
  br label %if.end83

if.else47:                                        ; preds = %if.end13
  %enc_write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 1, i32* %enc_write_state, align 4, !tbaa !28
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %7 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !29
  %cmp48.not = icmp eq %struct.evp_cipher_ctx_st* %7, null
  br i1 %cmp48.not, label %if.else51, label %if.end61

if.else51:                                        ; preds = %if.else47
  %call52 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #7
  store %struct.evp_cipher_ctx_st* %call52, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !29
  %cmp54 = icmp eq %struct.evp_cipher_ctx_st* %call52, null
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else51
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.else57:                                        ; preds = %if.else51
  %call59 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %call52) #7
  %.pre258 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !29
  br label %if.end61

if.end61:                                         ; preds = %if.else47, %if.else57
  %8 = phi %struct.evp_cipher_ctx_st* [ %.pre258, %if.else57 ], [ %7, %if.else47 ]
  %reuse_dd.1 = phi i32 [ 0, %if.else57 ], [ 1, %if.else47 ]
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %call63 = tail call %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** noundef nonnull %write_hash, %struct.evp_md_st* noundef nonnull %1) #7
  %cmp64 = icmp eq %struct.evp_md_ctx_st* %call63, null
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end61
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end67:                                         ; preds = %if.end61
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %9 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !30
  tail call void @COMP_CTX_free(%struct.comp_ctx_st* noundef %9) #7
  store %struct.comp_ctx_st* null, %struct.comp_ctx_st** %compress, align 8, !tbaa !30
  %cmp69.not = icmp eq %struct.comp_method_st* %comp.0, null
  br i1 %cmp69.not, label %if.end79, label %if.then71

if.then71:                                        ; preds = %if.end67
  %call72 = tail call %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef nonnull %comp.0) #7
  store %struct.comp_ctx_st* %call72, %struct.comp_ctx_st** %compress, align 8, !tbaa !30
  %cmp75 = icmp eq %struct.comp_ctx_st* %call72, null
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.then71
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 142, i8* noundef null) #7
  br label %cleanup

if.end79:                                         ; preds = %if.then71, %if.end67
  %rlayer80 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef nonnull %rlayer80) #7
  %arrayidx82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 4, i64 0
  br label %if.end83

if.end83:                                         ; preds = %if.end79, %if.end45
  %dd.0 = phi %struct.evp_cipher_ctx_st* [ %5, %if.end45 ], [ %8, %if.end79 ]
  %mac_secret.0 = phi i8* [ %arrayidx, %if.end45 ], [ %arrayidx82, %if.end79 ]
  %reuse_dd.2 = phi i32 [ %reuse_dd.0, %if.end45 ], [ %reuse_dd.1, %if.end79 ]
  %tobool84.not = icmp eq i32 %reuse_dd.2, 0
  br i1 %tobool84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end83
  %call86 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %dd.0) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end83
  %key_block = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 13
  %10 = load i8*, i8** %key_block, align 8, !tbaa !31
  %call90 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %1) #7
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end87
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end94:                                         ; preds = %if.end87
  %conv95257 = zext i32 %call90 to i64
  %call96 = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %0) #7
  %conv97 = sext i32 %call96 to i64
  %call98 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %0) #7
  %conv99 = sext i32 %call98 to i64
  switch i32 %which, label %if.else112 [
    i32 33, label %if.then104
    i32 18, label %if.then104
  ]

if.then104:                                       ; preds = %if.end94, %if.end94
  %add = shl nuw nsw i64 %conv95257, 1
  %11 = add nsw i64 %conv97, %conv95257
  %add108 = shl nsw i64 %11, 1
  %12 = add nsw i64 %11, %conv99
  %add111 = shl nsw i64 %12, 1
  br label %if.end121

if.else112:                                       ; preds = %if.end94
  %arrayidx113 = getelementptr inbounds i8, i8* %10, i64 %conv95257
  %reass.add = shl nuw nsw i64 %conv95257, 1
  %add115 = add nsw i64 %reass.add, %conv97
  %add117 = add nsw i64 %conv99, %conv97
  %add118 = add nsw i64 %add117, %add115
  %add120 = add nsw i64 %add118, %conv99
  br label %if.end121

if.end121:                                        ; preds = %if.else112, %if.then104
  %add108.pn = phi i64 [ %add108, %if.then104 ], [ %add118, %if.else112 ]
  %n.0 = phi i64 [ %add111, %if.then104 ], [ %add120, %if.else112 ]
  %add.pn = phi i64 [ %add, %if.then104 ], [ %add115, %if.else112 ]
  %ms.0 = phi i8* [ %10, %if.then104 ], [ %arrayidx113, %if.else112 ]
  %key_block_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 12
  %13 = load i64, i64* %key_block_length, align 8, !tbaa !32
  %cmp124 = icmp ugt i64 %n.0, %13
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end121
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end127:                                        ; preds = %if.end121
  %key.0 = getelementptr inbounds i8, i8* %10, i64 %add.pn
  %iv.0 = getelementptr inbounds i8, i8* %10, i64 %add108.pn
  %call128 = tail call i8* @memcpy(i8* noundef nonnull %mac_secret.0, i8* noundef %ms.0, i64 noundef %conv95257) #7
  %and129 = and i32 %which, 2
  %call130 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef %0, %struct.engine_st* noundef null, i8* noundef %key.0, i8* noundef %iv.0, i32 noundef %and129) #7
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end127
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl3_change_cipher_state, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end133:                                        ; preds = %if.end127
  %call134 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef %0) #7
  %cmp135.not = icmp eq %struct.ossl_provider_st* %call134, null
  br i1 %cmp135.not, label %if.end140, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end133
  %call137 = tail call i32 @tls_provider_set_tls_params(%struct.ssl_st* noundef nonnull %s, %struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef %0, %struct.evp_md_st* noundef nonnull %1) #7
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %cleanup, label %if.end140

if.end140:                                        ; preds = %land.lhs.true, %if.end133
  %enc_write_state142 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 0, i32* %enc_write_state142, align 4, !tbaa !28
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then22, %if.then32, %if.then43, %if.then56, %if.then66, %if.then77, %if.then93, %if.then126, %if.then132, %land.lhs.true, %if.end140
  %retval.0 = phi i32 [ 1, %if.end140 ], [ 0, %land.lhs.true ], [ 0, %if.then132 ], [ 0, %if.then126 ], [ 0, %if.then93 ], [ 0, %if.then77 ], [ 0, %if.then66 ], [ 0, %if.then56 ], [ 0, %if.then43 ], [ 0, %if.then32 ], [ 0, %if.then22 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @COMP_CTX_free(%struct.comp_ctx_st* noundef) local_unnamed_addr #2

declare %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef) local_unnamed_addr #2

declare void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @tls_provider_set_tls_params(%struct.ssl_st* noundef, %struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_setup_key_block(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %c = alloca %struct.evp_cipher_st*, align 8
  %hash = alloca %struct.evp_md_st*, align 8
  %comp = alloca %struct.ssl_comp_st*, align 8
  %0 = bitcast %struct.evp_cipher_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast %struct.evp_md_st** %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast %struct.ssl_comp_st** %comp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %key_block_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 12
  %3 = load i64, i64* %key_block_length, align 8, !tbaa !32
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !33
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %call = call i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef %4, %struct.ssl_session_st* noundef %5, %struct.evp_cipher_st** noundef nonnull %c, %struct.evp_md_st** noundef nonnull %hash, i32* noundef null, i64* noundef null, %struct.ssl_comp_st** noundef nonnull %comp, i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80) #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %6 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !4
  call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %6) #7
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !35
  store %struct.evp_cipher_st* %7, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !4
  %new_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 15
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %new_hash, align 8, !tbaa !22
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef %8) #7
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %hash, align 8, !tbaa !35
  store %struct.evp_md_st* %9, %struct.evp_md_st** %new_hash, align 8, !tbaa !22
  %10 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %comp, align 8, !tbaa !35
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  store %struct.ssl_comp_st* %10, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !23
  %call15 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %9) #7
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end2
  %11 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !35
  %call19 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %11) #7
  %add = add nsw i32 %call19, %call15
  %12 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !35
  %call20 = call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %12) #7
  %add21 = add nsw i32 %add, %call20
  %mul = shl nsw i32 %add21, 1
  call void @ssl3_cleanup_key_block(%struct.ssl_st* noundef nonnull %s) #9
  %conv = sext i32 %mul to i64
  %call22 = call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 278) #7
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end18
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl3_setup_key_block, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  store i64 %conv, i64* %key_block_length, align 8, !tbaa !32
  %key_block = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 13
  store i8* %call22, i8** %key_block, align 8, !tbaa !31
  %call33 = call fastcc i32 @ssl3_generate_key_block(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call22, i32 noundef %mul) #9
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %13 = load i64, i64* %options, align 8, !tbaa !36
  %and = and i64 %13, 2048
  %tobool34.not = icmp eq i64 %and, 0
  br i1 %tobool34.not, label %if.then35, label %cleanup

if.then35:                                        ; preds = %if.end26
  %need_empty_fragments = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 7
  store i32 1, i32* %need_empty_fragments, align 8, !tbaa !37
  %14 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %14, i64 0, i32 20
  %15 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !38
  %cmp38.not = icmp eq %struct.ssl_cipher_st* %15, null
  br i1 %cmp38.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %if.then35
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %15, i64 0, i32 6
  %16 = load i32, i32* %algorithm_enc, align 4, !tbaa !41
  switch i32 %16, label %cleanup [
    i32 32, label %if.end48.thread
    i32 4, label %if.then54
  ]

if.end48.thread:                                  ; preds = %if.then40
  store i32 0, i32* %need_empty_fragments, align 8, !tbaa !37
  br label %cleanup

if.then54:                                        ; preds = %if.then40
  store i32 0, i32* %need_empty_fragments, align 8, !tbaa !37
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end48.thread, %if.end26, %if.then54, %if.then35, %if.end2, %entry, %if.then25, %if.then1
  %retval.0 = phi i32 [ 0, %if.then25 ], [ 0, %if.then1 ], [ 1, %entry ], [ 0, %if.end2 ], [ %call33, %if.then35 ], [ %call33, %if.then54 ], [ %call33, %if.end26 ], [ %call33, %if.end48.thread ], [ %call33, %if.then40 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef, %struct.evp_cipher_st** noundef, %struct.evp_md_st** noundef, i32* noundef, i64* noundef, %struct.ssl_comp_st** noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_statem_send_fatal(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @ssl_evp_md_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ssl3_cleanup_key_block(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %key_block = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 13
  %0 = load i8*, i8** %key_block, align 8, !tbaa !31
  %key_block_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 12
  %1 = load i64, i64* %key_block_length, align 8, !tbaa !32
  tail call void @CRYPTO_clear_free(i8* noundef %0, i64 noundef %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 310) #7
  store i8* null, i8** %key_block, align 8, !tbaa !31
  store i64 0, i64* %key_block_length, align 8, !tbaa !32
  ret void
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl3_generate_key_block(%struct.ssl_st* noundef %s, i8* noundef %km, i32 noundef %num) unnamed_addr #0 {
entry:
  %buf = alloca [16 x i8], align 16
  %smd = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %smd, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #8
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !33
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !43
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !48
  %call = tail call %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %3, i32 noundef 4, i8* noundef %4) #7
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !33
  %libctx3 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx3, align 8, !tbaa !43
  %propq5 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 85
  %7 = load i8*, i8** %propq5, align 8, !tbaa !48
  %call6 = tail call %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %6, i32 noundef 64, i8* noundef %7) #7
  %call7 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %call8 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %cmp = icmp eq %struct.evp_md_st* %call, null
  %cmp9 = icmp eq %struct.evp_md_st* %call6, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  %cmp11 = icmp eq %struct.evp_md_ctx_st* %call7, null
  %or.cond82 = select i1 %or.cond, i1 true, i1 %cmp11
  %cmp13 = icmp eq %struct.evp_md_ctx_st* %call8, null
  %or.cond83 = select i1 %or.cond82, i1 true, i1 %cmp13
  br i1 %or.cond83, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp14133 = icmp sgt i32 %num, 0
  br i1 %cmp14133, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %arraydecay35 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %arraydecay40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %8 = zext i32 %num to i64
  br label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl3_generate_key_block, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %err

for.body:                                         ; preds = %for.body.lr.ph, %if.end79
  %indvars.iv141 = phi i32 [ 65, %for.body.lr.ph ], [ %indvars.iv.next142, %if.end79 ]
  %indvars.iv139 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next140, %if.end79 ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end79 ]
  %km.addr.0134 = phi i8* [ %km, %for.body.lr.ph ], [ %add.ptr, %if.end79 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl3_generate_key_block, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %err

if.end18:                                         ; preds = %for.body
  %call21 = call i8* @memset(i8* noundef nonnull %0, i32 noundef %indvars.iv141, i64 noundef %indvars.iv.next) #7
  %indvars.iv.next142 = add nuw nsw i32 %indvars.iv141, 1
  %call23 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call8, %struct.evp_md_st* noundef %call6, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.then62, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end18
  %call27 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call8, i8* noundef nonnull %0, i64 noundef %indvars.iv.next) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then62, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %arraydecay30 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 1
  %10 = load i64, i64* %master_key_length, align 8, !tbaa !49
  %call32 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call8, i8* noundef nonnull %arraydecay30, i64 noundef %10) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then62, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false29
  %call36 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call8, i8* noundef nonnull %arraydecay35, i64 noundef 32) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then62, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %call41 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call8, i8* noundef nonnull %arraydecay40, i64 noundef 32) #7
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then62, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false38
  %call45 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call8, i8* noundef nonnull %1, i32* noundef null) #7
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then62, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %call48 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call7, %struct.evp_md_st* noundef %call, %struct.engine_st* noundef null) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then62, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %11 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %arraydecay53 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %11, i64 0, i32 3, i64 0
  %master_key_length55 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %11, i64 0, i32 1
  %12 = load i64, i64* %master_key_length55, align 8, !tbaa !49
  %call56 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call7, i8* noundef nonnull %arraydecay53, i64 noundef %12) #7
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then62, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false50
  %call60 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call7, i8* noundef nonnull %1, i64 noundef 20) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end63

if.then62:                                        ; preds = %lor.lhs.false58, %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false43, %lor.lhs.false38, %lor.lhs.false34, %lor.lhs.false29, %lor.lhs.false24, %if.end18
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl3_generate_key_block, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %err

if.end63:                                         ; preds = %lor.lhs.false58
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 16
  %cmp64 = icmp ugt i64 %indvars.iv.next140, %8
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end63
  %call68 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call7, i8* noundef nonnull %1, i32* noundef null) #7
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then66
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl3_generate_key_block, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %err

if.end71:                                         ; preds = %if.then66
  %13 = trunc i64 %indvars.iv139 to i32
  %sub = sub i32 %num, %13
  %conv73 = zext i32 %sub to i64
  %call74 = call i8* @memcpy(i8* noundef %km.addr.0134, i8* noundef nonnull %1, i64 noundef %conv73) #7
  br label %if.end79

if.else:                                          ; preds = %if.end63
  %call75 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call7, i8* noundef %km.addr.0134, i32* noundef null) #7
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.else
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl3_generate_key_block, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %err

if.end79:                                         ; preds = %if.else, %if.end71
  %add.ptr = getelementptr inbounds i8, i8* %km.addr.0134, i64 16
  %cmp14 = icmp ult i64 %indvars.iv.next140, %8
  br i1 %cmp14, label %for.body, label %for.end, !llvm.loop !50

for.end:                                          ; preds = %if.end79, %for.cond.preheader
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 20) #7
  br label %err

err:                                              ; preds = %for.end, %if.then77, %if.then70, %if.then62, %if.then17, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then17 ], [ 0, %if.then70 ], [ 0, %if.then77 ], [ 0, %if.then62 ], [ 1, %for.end ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call7) #7
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call8) #7
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef %call) #7
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef %call6) #7
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %ret.0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_init_finished_mac(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #7
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ssl3_init_finished_mac, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ssl3_free_digest_list(%struct.ssl_st* noundef %s) #9
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  store %struct.bio_st* %call1, %struct.bio_st** %handshake_buffer, align 8, !tbaa !52
  %call4 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 9, i64 noundef 1, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ssl3_free_digest_list(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %0 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !52
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef %0) #7
  store %struct.bio_st* null, %struct.bio_st** %handshake_buffer, align 8, !tbaa !52
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %1) #7
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  ret void
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_finish_mac(%struct.ssl_st* noundef %s, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %cmp = icmp eq %struct.evp_md_ctx_st* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp1 = icmp ugt i64 %len, 2147483647
  br i1 %cmp1, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %if.then
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %1 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !52
  %conv = trunc i64 %len to i32
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %1, i8* noundef %buf, i32 noundef %conv) #7
  %cmp4 = icmp sgt i32 %call, 0
  %cmp7.not = icmp eq i32 %call, %conv
  %or.cond = and i1 %cmp4, %cmp7.not
  br i1 %or.cond, label %cleanup, label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %call13 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %0, i8* noundef %buf, i64 noundef %len) #7
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.else, %if.end, %if.then
  %.sink29 = phi i32 [ 349, %if.then ], [ 354, %if.end ], [ 360, %if.else ]
  %.sink = phi i32 [ 237, %if.then ], [ 786691, %if.end ], [ 786691, %if.else ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink29, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_finish_mac, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %if.else ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef %s, i32 noundef %keep) local_unnamed_addr #0 {
entry:
  %hdata = alloca i8*, align 8
  %0 = bitcast i8** %hdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %cmp = icmp eq %struct.evp_md_ctx_st* %1, null
  br i1 %cmp, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %handshake_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %2 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer, align 8, !tbaa !52
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #7
  %cmp2 = icmp slt i64 %call, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl3_digest_cached_records, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 332, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  store %struct.evp_md_ctx_st* %call4, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %cmp9 = icmp eq %struct.evp_md_ctx_st* %call4, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl3_digest_cached_records, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef nonnull %s) #7
  %cmp13 = icmp eq %struct.evp_md_st* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl3_digest_cached_records, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 297, i8* noundef null) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %call18 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %3, %struct.evp_md_st* noundef nonnull %call12, %struct.engine_st* noundef null) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %5 = load i8*, i8** %hdata, align 8, !tbaa !35
  %call21 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %4, i8* noundef %5, i64 noundef %call) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false, %if.end15
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl3_digest_cached_records, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false, %entry
  %cmp26 = icmp eq i32 %keep, 0
  br i1 %cmp26, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.end25
  %handshake_buffer29 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 9
  %6 = load %struct.bio_st*, %struct.bio_st** %handshake_buffer29, align 8, !tbaa !52
  %call30 = call i32 @BIO_free(%struct.bio_st* noundef %6) #7
  store %struct.bio_st* null, %struct.bio_st** %handshake_buffer29, align 8, !tbaa !52
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then27, %if.then23, %if.then14, %if.then10, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then10 ], [ 0, %if.then14 ], [ 0, %if.then23 ], [ 1, %if.then27 ], [ 1, %if.end25 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ssl3_digest_master_key_set_params(%struct.ssl_session_st* noundef %session, %struct.ossl_param_st* nocapture noundef writeonly %params) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %session, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %session, i64 0, i32 1
  %1 = load i64, i64* %master_key_length, align 8, !tbaa !49
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %arraydecay, i64 noundef %1) #7
  %2 = bitcast %struct.ossl_param_st* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8
  %arrayidx3 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #8
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4) #7
  %4 = bitcast %struct.ossl_param_st* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #8
  ret void
}

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i64 @ssl3_final_finish_mac(%struct.ssl_st* noundef %s, i8* noundef %sender, i64 noundef %len, i8* noundef %p) local_unnamed_addr #0 {
entry:
  %digest_cmd_params = alloca [3 x %struct.ossl_param_st], align 16
  %call = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef %s, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %handshake_dgst = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 10
  %0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %call1 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %0) #7
  %call2 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %call1) #7
  %cmp.not = icmp eq i32 %call2, 114
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl3_final_finish_mac, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 324, i8* noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %cmp6 = icmp eq %struct.evp_md_ctx_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl3_final_finish_mac, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %1 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %handshake_dgst, align 8, !tbaa !53
  %call11 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call5, %struct.evp_md_ctx_st* noundef %1) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl3_final_finish_mac, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %err

if.end14:                                         ; preds = %if.end8
  %call15 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %call5) #7
  %call16 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call15) #7
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 445, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl3_final_finish_mac, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %err

if.end19:                                         ; preds = %if.end14
  %cmp20.not = icmp eq i8* %sender, null
  br i1 %cmp20.not, label %err, label %if.then21

if.then21:                                        ; preds = %if.end19
  %2 = bitcast [3 x %struct.ossl_param_st]* %digest_cmd_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %2) #8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !34
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %digest_cmd_params, i64 0, i64 0
  call void @ssl3_digest_master_key_set_params(%struct.ssl_session_st* noundef %3, %struct.ossl_param_st* noundef nonnull %arraydecay) #9
  %call22 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call5, i8* noundef nonnull %sender, i64 noundef %len) #7
  %cmp23 = icmp slt i32 %call22, 1
  br i1 %cmp23, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %call25 = call i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef nonnull %call5, %struct.ossl_param_st* noundef nonnull %arraydecay) #7
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %call28 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call5, i8* noundef %p, i32* noundef null) #7
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false, %if.then21
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 458, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl3_final_finish_mac, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false27
  %ret.0 = phi i32 [ 0, %if.then30 ], [ %call16, %lor.lhs.false27 ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %2) #8
  br label %err

err:                                              ; preds = %if.end19, %if.end31, %if.then18, %if.then13
  %ret.1 = phi i32 [ 0, %if.then18 ], [ %ret.0, %if.end31 ], [ %call16, %if.end19 ], [ 0, %if.then13 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call5) #7
  %conv52 = zext i32 %ret.1 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.then7, %if.then3
  %retval.0 = phi i64 [ 0, %if.then3 ], [ 0, %if.then7 ], [ %conv52, %err ], [ 0, %entry ]
  ret i64 %retval.0
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_generate_master_secret(%struct.ssl_st* noundef %s, i8* noundef %out, i8* noundef %p, i64 noundef %len, i64* nocapture noundef writeonly %secret_size) local_unnamed_addr #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %n = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #7
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %ctx2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %arrayidx14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %arrayidx19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx2, align 8, !tbaa !33
  %sha194 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 28
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %sha194, align 8, !tbaa !57
  %call395 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %3, %struct.engine_st* noundef null) #7
  %cmp496 = icmp slt i32 %call395, 1
  br i1 %cmp496, label %if.then41, label %lor.lhs.false

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ssl3_generate_master_secret, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

for.body:                                         ; preds = %if.end42
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.084100, i64 %idx.ext
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx2, align 8, !tbaa !33
  %sha1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 28
  %5 = load %struct.evp_md_st*, %struct.evp_md_st** %sha1, align 8, !tbaa !57
  %call3 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %5, %struct.engine_st* noundef null) #7
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then41, label %lor.lhs.false, !llvm.loop !58

lor.lhs.false:                                    ; preds = %for.cond.preheader, %for.body
  %out.addr.084100 = phi i8* [ %add.ptr, %for.body ], [ %out, %for.cond.preheader ]
  %ret_secret_size.08699 = phi i64 [ %add, %for.body ], [ 0, %for.cond.preheader ]
  %cmp18798 = phi i1 [ %cmp1, %for.body ], [ true, %for.cond.preheader ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @ssl3_generate_master_secret.salt, i64 0, i64 %indvars.iv97
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !35
  %call7 = call i64 @strlen(i8* noundef %6) #10
  %call8 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %6, i64 noundef %call7) #7
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %if.then41, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %p, i64 noundef %len) #7
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %if.then41, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call15 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %arrayidx14, i64 noundef 32) #7
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then41, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call20 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %arrayidx19, i64 noundef 32) #7
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.then41, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %call23 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef nonnull %n) #7
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then41, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx2, align 8, !tbaa !33
  %md5 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 27
  %8 = load %struct.evp_md_st*, %struct.evp_md_st** %md5, align 8, !tbaa !59
  %call27 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.evp_md_st* noundef %8, %struct.engine_st* noundef null) #7
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %if.then41, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %p, i64 noundef %len) #7
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.then41, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %9 = load i32, i32* %n, align 4, !tbaa !55
  %conv = zext i32 %9 to i64
  %call34 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef %conv) #7
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false32
  %call38 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef %out.addr.084100, i32* noundef nonnull %n) #7
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.body, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false22, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false32, %lor.lhs.false37, %for.cond.preheader
  %cmp187.lcssa = phi i1 [ true, %for.cond.preheader ], [ %cmp1, %for.body ], [ %cmp18798, %lor.lhs.false ], [ %cmp18798, %lor.lhs.false10 ], [ %cmp18798, %lor.lhs.false13 ], [ %cmp18798, %lor.lhs.false17 ], [ %cmp18798, %lor.lhs.false22 ], [ %cmp18798, %lor.lhs.false25 ], [ %cmp18798, %lor.lhs.false29 ], [ %cmp18798, %lor.lhs.false32 ], [ %cmp18798, %lor.lhs.false37 ]
  %ret_secret_size.086.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add, %for.body ], [ %ret_secret_size.08699, %lor.lhs.false ], [ %ret_secret_size.08699, %lor.lhs.false10 ], [ %ret_secret_size.08699, %lor.lhs.false13 ], [ %ret_secret_size.08699, %lor.lhs.false17 ], [ %ret_secret_size.08699, %lor.lhs.false22 ], [ %ret_secret_size.08699, %lor.lhs.false25 ], [ %ret_secret_size.08699, %lor.lhs.false29 ], [ %ret_secret_size.08699, %lor.lhs.false32 ], [ %ret_secret_size.08699, %lor.lhs.false37 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ssl3_generate_master_secret, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %for.end

if.end42:                                         ; preds = %lor.lhs.false37
  %10 = load i32, i32* %n, align 4, !tbaa !55
  %idx.ext = zext i32 %10 to i64
  %add = add i64 %ret_secret_size.08699, %idx.ext
  %indvars.iv.next = add nuw nsw i64 %indvars.iv97, 1
  %cmp1 = icmp ult i64 %indvars.iv97, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !58

for.end:                                          ; preds = %if.end42, %if.then41
  %ret_secret_size.083 = phi i64 [ %ret_secret_size.086.lcssa, %if.then41 ], [ %add, %if.end42 ]
  %cmp181 = phi i1 [ %cmp187.lcssa, %if.then41 ], [ %cmp1, %if.end42 ]
  %ret.0 = phi i32 [ 0, %if.then41 ], [ 1, %if.end42 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call) #7
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #7
  br i1 %cmp181, label %cleanup, label %if.then45

if.then45:                                        ; preds = %for.end
  store i64 %ret_secret_size.083, i64* %secret_size, align 8, !tbaa !56
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then45, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %if.then45 ], [ %ret.0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @ssl3_alert_code(i32 noundef %code) local_unnamed_addr #6 {
entry:
  switch i32 %code, label %sw.default [
    i32 0, label %return
    i32 10, label %return
    i32 20, label %return
    i32 21, label %sw.bb3
    i32 22, label %sw.bb4
    i32 30, label %return
    i32 40, label %return
    i32 41, label %return
    i32 42, label %return
    i32 43, label %return
    i32 44, label %return
    i32 45, label %return
    i32 46, label %return
    i32 47, label %return
    i32 48, label %sw.bb14
    i32 49, label %sw.bb15
    i32 50, label %sw.bb16
    i32 51, label %sw.bb17
    i32 60, label %sw.bb18
    i32 70, label %sw.bb19
    i32 71, label %sw.bb20
    i32 80, label %sw.bb21
    i32 90, label %sw.bb22
    i32 100, label %sw.bb23
    i32 110, label %sw.bb24
    i32 111, label %sw.bb25
    i32 112, label %sw.bb26
    i32 113, label %sw.bb27
    i32 114, label %sw.bb28
    i32 115, label %return
    i32 86, label %return
    i32 120, label %return
    i32 116, label %sw.bb32
    i32 109, label %sw.bb33
  ]

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb14:                                          ; preds = %entry
  br label %return

sw.bb15:                                          ; preds = %entry
  br label %return

sw.bb16:                                          ; preds = %entry
  br label %return

sw.bb17:                                          ; preds = %entry
  br label %return

sw.bb18:                                          ; preds = %entry
  br label %return

sw.bb19:                                          ; preds = %entry
  br label %return

sw.bb20:                                          ; preds = %entry
  br label %return

sw.bb21:                                          ; preds = %entry
  br label %return

sw.bb22:                                          ; preds = %entry
  br label %return

sw.bb23:                                          ; preds = %entry
  br label %return

sw.bb24:                                          ; preds = %entry
  br label %return

sw.bb25:                                          ; preds = %entry
  br label %return

sw.bb26:                                          ; preds = %entry
  br label %return

sw.bb27:                                          ; preds = %entry
  br label %return

sw.bb28:                                          ; preds = %entry
  br label %return

sw.bb32:                                          ; preds = %entry
  br label %return

sw.bb33:                                          ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default, %sw.bb33, %sw.bb32, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb4, %sw.bb3
  %retval.0 = phi i32 [ -1, %sw.default ], [ 40, %sw.bb33 ], [ 40, %sw.bb32 ], [ 40, %sw.bb28 ], [ 40, %sw.bb27 ], [ 40, %sw.bb26 ], [ 40, %sw.bb25 ], [ 40, %sw.bb24 ], [ -1, %sw.bb23 ], [ 40, %sw.bb22 ], [ 40, %sw.bb21 ], [ 40, %sw.bb20 ], [ 40, %sw.bb19 ], [ 40, %sw.bb18 ], [ 40, %sw.bb17 ], [ 40, %sw.bb16 ], [ 40, %sw.bb15 ], [ 42, %sw.bb14 ], [ 20, %sw.bb4 ], [ 20, %sw.bb3 ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 800}
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
!22 = !{!5, !9, i64 808}
!23 = !{!5, !9, i64 832}
!24 = !{!25, !9, i64 16}
!25 = !{!"ssl_comp_st", !6, i64 0, !9, i64 8, !9, i64 16}
!26 = !{!5, !9, i64 2120}
!27 = !{!5, !9, i64 2160}
!28 = !{!5, !7, i64 124}
!29 = !{!5, !9, i64 2168}
!30 = !{!5, !9, i64 2152}
!31 = !{!5, !9, i64 792}
!32 = !{!5, !11, i64 784}
!33 = !{!5, !9, i64 2472}
!34 = !{!5, !9, i64 2328}
!35 = !{!9, !9, i64 0}
!36 = !{!5, !11, i64 2536}
!37 = !{!5, !6, i64 384}
!38 = !{!39, !9, i64 760}
!39 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !40, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!40 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!41 = !{!42, !6, i64 36}
!42 = !{!"ssl_cipher_st", !6, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!43 = !{!44, !9, i64 0}
!44 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !45, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !46, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !47, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!45 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!46 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!47 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!48 = !{!44, !9, i64 1088}
!49 = !{!39, !11, i64 8}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!5, !9, i64 392}
!53 = !{!5, !9, i64 400}
!54 = !{i64 0, i64 8, !35, i64 8, i64 4, !55, i64 16, i64 8, !35, i64 24, i64 8, !56, i64 32, i64 8, !56}
!55 = !{!6, !6, i64 0}
!56 = !{!11, !11, i64 0}
!57 = !{!44, !9, i64 264}
!58 = distinct !{!58, !51}
!59 = !{!44, !9, i64 256}
