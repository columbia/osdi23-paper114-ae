; ModuleID = 'ssl/s3_msg.c'
source_filename = "ssl/s3_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, {}*, {}*, void (%struct.ssl_st*)*, {}*, {}*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, {}*, {}*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, {}*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, {}*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, {}* }
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

@.str = private unnamed_addr constant [13 x i8] c"ssl/s3_msg.c\00", align 1
@__func__.ssl3_do_change_cipher_spec = private unnamed_addr constant [27 x i8] c"ssl3_do_change_cipher_spec\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_do_change_cipher_spec(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %0 = load i32, i32* %server, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %0, 0
  %. = select i1 %tobool.not, i32 17, i32 33
  %key_block = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 13
  %1 = load i8*, i8** %key_block, align 8, !tbaa !22
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then1, label %if.end14

if.then1:                                         ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !23
  %cmp2 = icmp eq %struct.ssl_session_st* %2, null
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 1
  %3 = load i64, i64* %master_key_length, align 8, !tbaa !24
  %cmp4 = icmp eq i64 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.then1
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl3_do_change_cipher_spec, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 133, i8* noundef null) #3
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !27
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 20
  store %struct.ssl_cipher_st* %4, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !28
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %5 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !29
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %5, i64 0, i32 25
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !30
  %setup_key_block = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 2
  %setup_key_block10 = bitcast {}** %setup_key_block to i32 (%struct.ssl_st*)**
  %7 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %setup_key_block10, align 8, !tbaa !32
  %call = tail call i32 %7(%struct.ssl_st* noundef nonnull %s) #3
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end6, %entry
  %method15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %8 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method15, align 8, !tbaa !29
  %ssl3_enc16 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %8, i64 0, i32 25
  %9 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc16, align 8, !tbaa !30
  %change_cipher_state = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %9, i64 0, i32 4
  %10 = load i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32)** %change_cipher_state, align 8, !tbaa !34
  %call17 = tail call i32 %10(%struct.ssl_st* noundef nonnull %s, i32 noundef %.) #3
  %tobool18.not = icmp ne i32 %call17, 0
  %.31 = zext i1 %tobool18.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end6, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end6 ], [ %.31, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_send_alert(%struct.ssl_st* noundef %s, i32 noundef %level, i32 noundef %desc) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !29
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !30
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !35
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !36
  %cmp = icmp slt i32 %3, 772
  %cmp5.not = icmp eq i32 %3, 65536
  %or.cond83 = or i1 %cmp, %cmp5.not
  br i1 %or.cond83, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %4 = load i32, i32* %early_data_state, align 4, !tbaa !37
  %.off = add i32 %4, -1
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %5 = load i32, i32* %hello_retry_request, align 8, !tbaa !38
  %cmp17 = icmp eq i32 %5, 1
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %lor.lhs.false16
  %call = tail call i32 @tls13_alert_code(i32 noundef %desc) #3
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false16
  %alert_value = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 10
  %6 = load i32 (i32)*, i32 (i32)** %alert_value, align 8, !tbaa !39
  %call20 = tail call i32 %6(i32 noundef %desc) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %desc.addr.0 = phi i32 [ %call, %if.then ], [ %call20, %if.else ]
  %version21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %7 = load i32, i32* %version21, align 8, !tbaa !40
  %cmp22 = icmp eq i32 %7, 768
  %cmp24 = icmp eq i32 %desc.addr.0, 70
  %or.cond = select i1 %cmp22, i1 %cmp24, i1 false
  %spec.store.select = select i1 %or.cond, i32 40, i32 %desc.addr.0
  %cmp27 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp27, label %return, label %if.end29

if.end29:                                         ; preds = %if.end
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %8 = load i32, i32* %shutdown, align 4, !tbaa !41
  %and30 = and i32 %8, 1
  %tobool31 = icmp ne i32 %and30, 0
  %cmp33 = icmp ne i32 %spec.store.select, 0
  %or.cond55 = select i1 %tobool31, i1 %cmp33, i1 false
  br i1 %or.cond55, label %return, label %if.end35

if.end35:                                         ; preds = %if.end29
  %cmp36 = icmp eq i32 %level, 2
  br i1 %cmp36, label %land.lhs.true37, label %if.end42

land.lhs.true37:                                  ; preds = %if.end35
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !23
  %cmp38.not = icmp eq %struct.ssl_session_st* %9, null
  br i1 %cmp38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %land.lhs.true37
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !42
  %call41 = tail call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %10, %struct.ssl_session_st* noundef nonnull %9) #3
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %land.lhs.true37, %if.end35
  %alert_dispatch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  store i32 1, i32* %alert_dispatch, align 4, !tbaa !43
  %conv = trunc i32 %level to i8
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 15, i64 0
  store i8 %conv, i8* %arrayidx, align 8, !tbaa !44
  %conv44 = trunc i32 %spec.store.select to i8
  %arrayidx47 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 15, i64 1
  store i8 %conv44, i8* %arrayidx47, align 1, !tbaa !44
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call48 = tail call i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef nonnull %rlayer) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %return

if.then50:                                        ; preds = %if.end42
  %11 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !29
  %ssl_dispatch_alert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %11, i64 0, i32 16
  %ssl_dispatch_alert52 = bitcast {}** %ssl_dispatch_alert to i32 (%struct.ssl_st*)**
  %12 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_dispatch_alert52, align 8, !tbaa !45
  %call53 = tail call i32 %12(%struct.ssl_st* noundef nonnull %s) #3
  br label %return

return:                                           ; preds = %if.end42, %if.end29, %if.end, %if.then50
  %retval.0 = phi i32 [ %call53, %if.then50 ], [ -1, %if.end ], [ -1, %if.end29 ], [ -1, %if.end42 ]
  ret i32 %retval.0
}

declare i32 @tls13_alert_code(i32 noundef) local_unnamed_addr #2

declare i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_dispatch_alert(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %alertlen = alloca i64, align 8
  %written = alloca i64, align 8
  %0 = bitcast i64* %alertlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %alert_dispatch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  store i32 0, i32* %alert_dispatch, align 4, !tbaa !43
  store i64 2, i64* %alertlen, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 15, i64 0
  %call = call i32 @do_ssl3_write(%struct.ssl_st* noundef %s, i32 noundef 21, i8* noundef nonnull %arrayidx, i64* noundef nonnull %alertlen, i64 noundef 1, i32 noundef 0, i64* noundef nonnull %written) #3
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %alert_dispatch, align 4, !tbaa !43
  br label %if.end34

if.else:                                          ; preds = %entry
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %2 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !47
  %call4 = call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 11, i64 noundef 0, i8* noundef null) #3
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %3 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !48
  %tobool.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %3, null
  br i1 %tobool.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !40
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %5 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !49
  call void %3(i32 noundef 1, i32 noundef %4, i32 noundef 21, i8* noundef nonnull %arrayidx, i64 noundef 2, %struct.ssl_st* noundef nonnull %s, i8* noundef %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 64
  %6 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !50
  %cmp9.not = icmp eq void (%struct.ssl_st*, i32, i32)* %6, null
  br i1 %cmp9.not, label %if.end21, label %if.then24

if.end21:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !51
  %info_callback14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 31
  %8 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback14, align 8, !tbaa !52
  %cmp22.not = icmp eq void (%struct.ssl_st*, i32, i32)* %8, null
  br i1 %cmp22.not, label %if.end34, label %if.then24

if.then24:                                        ; preds = %if.end, %if.end21
  %cb.061 = phi void (%struct.ssl_st*, i32, i32)* [ %8, %if.end21 ], [ %6, %if.end ]
  %9 = load i8, i8* %arrayidx, align 8, !tbaa !44
  %conv28 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv28, 8
  %arrayidx31 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 15, i64 1
  %10 = load i8, i8* %arrayidx31, align 1, !tbaa !44
  %conv32 = zext i8 %10 to i32
  %or = or i32 %shl, %conv32
  call void %cb.061(%struct.ssl_st* noundef nonnull %s, i32 noundef 16392, i32 noundef %or) #3
  br label %if.end34

if.end34:                                         ; preds = %if.end21, %if.then24, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %call
}

declare i32 @do_ssl3_write(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64* noundef, i64 noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 56}
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
!22 = !{!5, !9, i64 792}
!23 = !{!5, !9, i64 2328}
!24 = !{!25, !11, i64 8}
!25 = !{!"ssl_session_st", !6, i64 0, !11, i64 8, !7, i64 16, !7, i64 80, !11, i64 592, !7, i64 600, !11, i64 632, !7, i64 640, !9, i64 672, !9, i64 680, !6, i64 688, !9, i64 696, !9, i64 704, !11, i64 712, !7, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !6, i64 752, !6, i64 756, !9, i64 760, !11, i64 768, !6, i64 776, !16, i64 784, !9, i64 800, !9, i64 808, !26, i64 816, !9, i64 880, !9, i64 888, !11, i64 896, !6, i64 904, !9, i64 912, !9, i64 920}
!26 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !11, i64 48, !7, i64 56}
!27 = !{!5, !9, i64 736}
!28 = !{!25, !9, i64 760}
!29 = !{!5, !9, i64 8}
!30 = !{!31, !9, i64 192}
!31 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!32 = !{!33, !9, i64 16}
!33 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!34 = !{!33, !9, i64 32}
!35 = !{!33, !6, i64 96}
!36 = !{!31, !6, i64 0}
!37 = !{!5, !7, i64 132}
!38 = !{!5, !7, i64 2280}
!39 = !{!33, !9, i64 80}
!40 = !{!5, !6, i64 0}
!41 = !{!5, !6, i64 68}
!42 = !{!5, !9, i64 2952}
!43 = !{!5, !6, i64 420}
!44 = !{!7, !7, i64 0}
!45 = !{!31, !9, i64 120}
!46 = !{!11, !11, i64 0}
!47 = !{!5, !9, i64 24}
!48 = !{!5, !9, i64 1216}
!49 = !{!5, !9, i64 1224}
!50 = !{!5, !9, i64 2424}
!51 = !{!5, !9, i64 2472}
!52 = !{!53, !9, i64 288}
!53 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !54, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !55, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !56, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!54 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!55 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!56 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
