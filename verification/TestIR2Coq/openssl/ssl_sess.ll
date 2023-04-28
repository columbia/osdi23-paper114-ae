; ModuleID = 'ssl/ssl_sess.c'
source_filename = "ssl/ssl_sess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.anon = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.0, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon.0 = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.1, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.1 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.evp_cipher_st = type opaque
%struct.ssl_comp_st = type { i32, i8*, %struct.comp_method_st* }
%struct.comp_method_st = type opaque
%struct.cert_pkey_st = type { %struct.x509_st*, %struct.evp_pkey_st*, %struct.stack_st_X509*, i8*, i64 }
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
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x509_store_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.stack_st_SSL_COMP = type opaque
%struct.stack_st_X509_NAME = type opaque
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
%struct.ossl_init_settings_st = type opaque
%struct.stack_st = type opaque
%struct.lhash_st = type opaque
%struct.stack_st_SSL_SESSION = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [15 x i8] c"ssl/ssl_sess.c\00", align 1
@__func__.SSL_SESSION_new = private unnamed_addr constant [16 x i8] c"SSL_SESSION_new\00", align 1
@__func__.ssl_session_dup = private unnamed_addr constant [16 x i8] c"ssl_session_dup\00", align 1
@__func__.ssl_generate_session_id = private unnamed_addr constant [24 x i8] c"ssl_generate_session_id\00", align 1
@__func__.ssl_get_new_session = private unnamed_addr constant [20 x i8] c"ssl_get_new_session\00", align 1
@__func__.ssl_get_prev_session = private unnamed_addr constant [21 x i8] c"ssl_get_prev_session\00", align 1
@__func__.SSL_SESSION_set1_id = private unnamed_addr constant [20 x i8] c"SSL_SESSION_set1_id\00", align 1
@__func__.SSL_SESSION_set1_id_context = private unnamed_addr constant [28 x i8] c"SSL_SESSION_set1_id_context\00", align 1
@__func__.SSL_set_session_ticket_ext = private unnamed_addr constant [27 x i8] c"SSL_set_session_ticket_ext\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SSL SESSION PARAMETERS\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ssl_session_calculate_timeout(%struct.ssl_session_st* nocapture noundef %ss) local_unnamed_addr #0 {
entry:
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 15
  %0 = load i64, i64* %timeout, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %timeout, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ 0, %if.then ], [ %0, %entry ]
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 16
  %2 = load i64, i64* %time, align 8, !tbaa !13
  %add = add nsw i64 %1, %2
  %calc_timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 17
  store i64 %add, i64* %calc_timeout, align 8, !tbaa !14
  %cmp4 = icmp sgt i64 %2, 0
  %.lobit = lshr i64 %1, 63
  %3 = trunc i64 %.lobit to i32
  %4 = select i1 %cmp4, i32 %3, i32 0
  %timeout_ovf = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 18
  store i32 %4, i32* %timeout_ovf, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_session_st* @SSL_get_session(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #1 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  ret %struct.ssl_session_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @SSL_get1_session(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #2 {
entry:
  %lock = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 120
  %0 = load i8*, i8** %lock, align 8, !tbaa !28
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 55
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  %tobool1.not = icmp eq %struct.ssl_session_st* %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef nonnull %1) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i8*, i8** %lock, align 8, !tbaa !28
  %call6 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  %retval.0 = phi %struct.ssl_session_st* [ %1, %if.end4 ], [ null, %entry ]
  ret %struct.ssl_session_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* nocapture noundef %ss) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %references = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 14
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #13
  %1 = load i32, i32* %i, align 4, !tbaa !29
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %cond
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set_ex_data(%struct.ssl_session_st* noundef %s, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #2 {
entry:
  %ex_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 23
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #12
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_SESSION_get_ex_data(%struct.ssl_session_st* noundef %s, i32 noundef %idx) local_unnamed_addr #2 {
entry:
  %ex_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 23
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #12
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @SSL_SESSION_new() local_unnamed_addr #2 {
entry:
  %call = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, %struct.ossl_init_settings_st* noundef null) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 928, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 129) #12
  %0 = bitcast i8* %call1 to %struct.ssl_session_st*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SSL_SESSION_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %verify_result = getelementptr inbounds i8, i8* %call1, i64 712
  %1 = bitcast i8* %verify_result to i64*
  store i64 1, i64* %1, align 8, !tbaa !30
  %references = getelementptr inbounds i8, i8* %call1, i64 720
  %2 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !31
  %timeout = getelementptr inbounds i8, i8* %call1, i64 728
  %3 = bitcast i8* %timeout to i64*
  store i64 304, i64* %3, align 8, !tbaa !4
  %call4 = tail call i64 @time(i64* noundef null) #12
  %time = getelementptr inbounds i8, i8* %call1, i64 736
  %4 = bitcast i8* %time to i64*
  store i64 %call4, i64* %4, align 8, !tbaa !13
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %0) #13
  %call5 = tail call i8* @CRYPTO_THREAD_lock_new() #12
  %lock = getelementptr inbounds i8, i8* %call1, i64 920
  %5 = bitcast i8* %lock to i8**
  store i8* %call5, i8** %5, align 8, !tbaa !32
  %cmp7 = icmp eq i8* %call5, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.SSL_SESSION_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 143) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %ex_data = getelementptr inbounds i8, i8* %call1, i64 784
  %6 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call10 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 2, i8* noundef nonnull %call1, %struct.crypto_ex_data_st* noundef nonnull %6) #12
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end9
  %7 = load i8*, i8** %5, align 8, !tbaa !32
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #12
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 149) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry, %if.then12, %if.then8, %if.then2
  %retval.0 = phi %struct.ssl_session_st* [ null, %if.then2 ], [ null, %if.then8 ], [ null, %if.then12 ], [ null, %entry ], [ %0, %if.end9 ]
  ret %struct.ssl_session_st* %retval.0
}

declare i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #6

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @SSL_SESSION_dup(%struct.ssl_session_st* noundef %src) local_unnamed_addr #2 {
entry:
  %call = tail call %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef %src, i32 noundef 1) #13
  ret %struct.ssl_session_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @ssl_session_dup(%struct.ssl_session_st* noundef %src, i32 noundef %ticket) local_unnamed_addr #2 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 928, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 168) #12
  %0 = bitcast i8* %call to %struct.ssl_session_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.ssl_session_st* %src to i8*
  %call1 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %1, i64 noundef 928) #12
  %psk_identity_hint = getelementptr inbounds i8, i8* %call, i64 672
  %2 = bitcast i8* %psk_identity_hint to i8**
  %psk_identity = getelementptr inbounds i8, i8* %call, i64 680
  %3 = bitcast i8* %psk_identity to i8**
  %4 = bitcast i8* %psk_identity_hint to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %4, align 8, !tbaa !33
  %ext = getelementptr inbounds i8, i8* %call, i64 816
  %hostname = bitcast i8* %ext to i8**
  %tick = getelementptr inbounds i8, i8* %call, i64 824
  %5 = bitcast i8* %tick to i8**
  %6 = bitcast i8* %ext to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %6, align 8, !tbaa !33
  %alpn_selected = getelementptr inbounds i8, i8* %call, i64 856
  %7 = bitcast i8* %alpn_selected to i8**
  store i8* null, i8** %7, align 8, !tbaa !34
  %srp_username = getelementptr inbounds i8, i8* %call, i64 880
  %8 = bitcast i8* %srp_username to i8**
  store i8* null, i8** %8, align 8, !tbaa !35
  %peer_chain = getelementptr inbounds i8, i8* %call, i64 704
  %9 = bitcast i8* %peer_chain to %struct.stack_st_X509**
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %9, align 8, !tbaa !36
  %peer = getelementptr inbounds i8, i8* %call, i64 696
  %10 = bitcast i8* %peer to %struct.x509_st**
  store %struct.x509_st* null, %struct.x509_st** %10, align 8, !tbaa !37
  %ticket_appdata = getelementptr inbounds i8, i8* %call, i64 888
  %11 = bitcast i8* %ticket_appdata to i8**
  store i8* null, i8** %11, align 8, !tbaa !38
  %ex_data = getelementptr inbounds i8, i8* %call, i64 784
  %12 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call4 = tail call i8* @memset(i8* noundef nonnull %ex_data, i32 noundef 0, i64 noundef 16) #12
  %prev = getelementptr inbounds i8, i8* %call, i64 800
  %13 = bitcast i8* %prev to <2 x %struct.ssl_session_st*>*
  store <2 x %struct.ssl_session_st*> zeroinitializer, <2 x %struct.ssl_session_st*>* %13, align 8, !tbaa !33
  %references = getelementptr inbounds i8, i8* %call, i64 720
  %14 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %14 seq_cst, align 4, !tbaa !31
  %call5 = tail call i8* @CRYPTO_THREAD_lock_new() #12
  %lock = getelementptr inbounds i8, i8* %call, i64 920
  %15 = bitcast i8* %lock to i8**
  store i8* %call5, i8** %15, align 8, !tbaa !32
  %cmp7 = icmp eq i8* %call5, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 2, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %12) #12
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %peer14 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 11
  %16 = load %struct.x509_st*, %struct.x509_st** %peer14, align 8, !tbaa !37
  %cmp15.not = icmp eq %struct.x509_st* %16, null
  br i1 %cmp15.not, label %if.end24, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call18 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %16) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.then16
  %17 = load %struct.x509_st*, %struct.x509_st** %peer14, align 8, !tbaa !37
  store %struct.x509_st* %17, %struct.x509_st** %10, align 8, !tbaa !37
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end13
  %peer_chain25 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 12
  %18 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain25, align 8, !tbaa !36
  %cmp26.not = icmp eq %struct.stack_st_X509* %18, null
  br i1 %cmp26.not, label %if.end35, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call29 = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %18) #12
  store %struct.stack_st_X509* %call29, %struct.stack_st_X509** %9, align 8, !tbaa !36
  %cmp32 = icmp eq %struct.stack_st_X509* %call29, null
  br i1 %cmp32, label %err, label %if.end35

if.end35:                                         ; preds = %if.then27, %if.end24
  %psk_identity_hint36 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 8
  %19 = load i8*, i8** %psk_identity_hint36, align 8, !tbaa !39
  %tobool37.not = icmp eq i8* %19, null
  br i1 %tobool37.not, label %if.end46, label %if.then38

if.then38:                                        ; preds = %if.end35
  %call40 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 219) #12
  store i8* %call40, i8** %2, align 8, !tbaa !39
  %cmp43 = icmp eq i8* %call40, null
  br i1 %cmp43, label %err, label %if.end46

if.end46:                                         ; preds = %if.then38, %if.end35
  %psk_identity47 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 9
  %20 = load i8*, i8** %psk_identity47, align 8, !tbaa !40
  %tobool48.not = icmp eq i8* %20, null
  br i1 %tobool48.not, label %if.end57, label %if.then49

if.then49:                                        ; preds = %if.end46
  %call51 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 225) #12
  store i8* %call51, i8** %3, align 8, !tbaa !40
  %cmp54 = icmp eq i8* %call51, null
  br i1 %cmp54, label %err, label %if.end57

if.end57:                                         ; preds = %if.then49, %if.end46
  %ex_data59 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 23
  %call60 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 2, %struct.crypto_ex_data_st* noundef nonnull %12, %struct.crypto_ex_data_st* noundef nonnull %ex_data59) #12
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %if.end57
  %hostname65 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 26, i32 0
  %21 = load i8*, i8** %hostname65, align 8, !tbaa !41
  %tobool66.not = icmp eq i8* %21, null
  br i1 %tobool66.not, label %if.end78, label %if.then67

if.then67:                                        ; preds = %if.end63
  %call70 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 238) #12
  store i8* %call70, i8** %hostname, align 8, !tbaa !41
  %cmp75 = icmp eq i8* %call70, null
  br i1 %cmp75, label %err, label %if.end78

if.end78:                                         ; preds = %if.then67, %if.end63
  %cmp79.not = icmp eq i32 %ticket, 0
  br i1 %cmp79.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end78
  %tick81 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 26, i32 1
  %22 = load i8*, i8** %tick81, align 8, !tbaa !42
  %cmp82.not = icmp eq i8* %22, null
  br i1 %cmp82.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %land.lhs.true
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 26, i32 2
  %23 = load i64, i64* %ticklen, align 8, !tbaa !43
  %call87 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %22, i64 noundef %23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 246) #12
  store i8* %call87, i8** %5, align 8, !tbaa !42
  %cmp92 = icmp eq i8* %call87, null
  br i1 %cmp92, label %err, label %if.end98

if.else:                                          ; preds = %land.lhs.true, %if.end78
  %ticklen97 = getelementptr inbounds i8, i8* %call, i64 832
  %24 = bitcast i8* %ticklen97 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 8, !tbaa !44
  br label %if.end98

if.end98:                                         ; preds = %if.then83, %if.else
  %alpn_selected100 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 26, i32 6
  %25 = load i8*, i8** %alpn_selected100, align 8, !tbaa !34
  %cmp101.not = icmp eq i8* %25, null
  br i1 %cmp101.not, label %if.end114, label %if.then102

if.then102:                                       ; preds = %if.end98
  %alpn_selected_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 26, i32 7
  %26 = load i64, i64* %alpn_selected_len, align 8, !tbaa !45
  %call106 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %25, i64 noundef %26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 256) #12
  store i8* %call106, i8** %7, align 8, !tbaa !34
  %cmp111 = icmp eq i8* %call106, null
  br i1 %cmp111, label %err, label %if.end114

if.end114:                                        ; preds = %if.then102, %if.end98
  %srp_username115 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 27
  %27 = load i8*, i8** %srp_username115, align 8, !tbaa !35
  %tobool116.not = icmp eq i8* %27, null
  br i1 %tobool116.not, label %if.end125, label %if.then117

if.then117:                                       ; preds = %if.end114
  %call119 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #12
  store i8* %call119, i8** %8, align 8, !tbaa !35
  %cmp122 = icmp eq i8* %call119, null
  br i1 %cmp122, label %err, label %if.end125

if.end125:                                        ; preds = %if.then117, %if.end114
  %ticket_appdata126 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 28
  %28 = load i8*, i8** %ticket_appdata126, align 8, !tbaa !38
  %cmp127.not = icmp eq i8* %28, null
  br i1 %cmp127.not, label %cleanup, label %if.then128

if.then128:                                       ; preds = %if.end125
  %ticket_appdata_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %src, i64 0, i32 29
  %29 = load i64, i64* %ticket_appdata_len, align 8, !tbaa !46
  %call130 = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %28, i64 noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 272) #12
  store i8* %call130, i8** %11, align 8, !tbaa !38
  %cmp133 = icmp eq i8* %call130, null
  br i1 %cmp133, label %err, label %cleanup

err:                                              ; preds = %if.then128, %if.then117, %if.then102, %if.then83, %if.then67, %if.end57, %if.then49, %if.then38, %if.then27, %if.then16, %if.end9, %if.end, %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl_session_dup, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.then128, %err
  %retval.0 = phi %struct.ssl_session_st* [ null, %err ], [ %0, %if.then128 ], [ %0, %if.end125 ]
  ret %struct.ssl_session_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #4

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @SSL_SESSION_free(%struct.ssl_session_st* noundef %ss) #2 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %cmp = icmp eq %struct.ssl_session_st* %ss, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 14
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #13
  %1 = load i32, i32* %i, align 4, !tbaa !29
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 32
  %2 = bitcast %struct.ssl_session_st* %ss to i8*
  %ex_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 23
  tail call void @CRYPTO_free_ex_data(i32 noundef 2, i8* noundef nonnull %2, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #12
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 3, i64 0
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay, i64 noundef 512) #12
  %arraydecay4 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 5, i64 0
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay4, i64 noundef 32) #12
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 11
  %3 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !37
  tail call void @X509_free(%struct.x509_st* noundef %3) #12
  %peer_chain = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 12
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %peer_chain, align 8, !tbaa !36
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #13
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call5, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 26, i32 0
  %5 = load i8*, i8** %hostname, align 8, !tbaa !41
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 832) #12
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 26, i32 1
  %6 = load i8*, i8** %tick, align 8, !tbaa !42
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 833) #12
  %psk_identity_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 8
  %7 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !39
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 835) #12
  %psk_identity = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 9
  %8 = load i8*, i8** %psk_identity, align 8, !tbaa !40
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 836) #12
  %srp_username = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 27
  %9 = load i8*, i8** %srp_username, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 839) #12
  %alpn_selected = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 26, i32 6
  %10 = load i8*, i8** %alpn_selected, align 8, !tbaa !34
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 841) #12
  %ticket_appdata = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 28
  %11 = load i8*, i8** %ticket_appdata, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 842) #12
  %12 = load i8*, i8** %lock, align 8, !tbaa !32
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %12) #12
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %2, i64 noundef 928, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 844) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define nonnull i8* @SSL_SESSION_get_id(%struct.ssl_session_st* noundef readonly %s, i32* noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32* %len, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 4
  %0 = load i64, i64* %session_id_length, align 8, !tbaa !47
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 5, i64 0
  ret i8* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define nonnull i8* @SSL_SESSION_get0_id_context(%struct.ssl_session_st* noundef readonly %s, i32* noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32* %len, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 6
  %0 = load i64, i64* %sid_ctx_length, align 8, !tbaa !48
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 7, i64 0
  ret i8* %arraydecay
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_SESSION_get_compress_id(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 19
  %0 = load i32, i32* %compress_meth, align 4, !tbaa !49
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_generate_session_id(%struct.ssl_st* noundef %s, %struct.ssl_session_st* noundef %ss) local_unnamed_addr #2 {
entry:
  %tmp = alloca i32, align 4
  %0 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %1 = load i32, i32* %version, align 8, !tbaa !50
  switch i32 %1, label %sw.default [
    i32 768, label %sw.bb
    i32 769, label %sw.bb
    i32 770, label %sw.bb
    i32 771, label %sw.bb
    i32 772, label %sw.bb
    i32 256, label %sw.bb
    i32 65279, label %sw.bb
    i32 65277, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 4
  store i64 32, i64* %session_id_length, align 8, !tbaa !47
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  %2 = load i32, i32* %ticket_expected, align 8, !tbaa !51
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_session_id, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 259, i8* noundef null) #12
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  store i64 0, i64* %session_id_length, align 8, !tbaa !47
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 120
  %3 = load i8*, i8** %lock, align 8, !tbaa !28
  %call = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %3) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %lock5 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 69
  %5 = load i8*, i8** %lock5, align 8, !tbaa !53
  %call6 = tail call i32 @CRYPTO_THREAD_read_lock(i8* noundef %5) #12
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  %6 = load i8*, i8** %lock, align 8, !tbaa !28
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_session_id, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 277, i8* noundef null) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %generate_session_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 59
  %7 = load i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id, align 8, !tbaa !58
  %tobool12.not = icmp eq i32 (%struct.ssl_st*, i8*, i32*)* %7, null
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  br i1 %tobool12.not, label %if.else, label %if.end22

if.else:                                          ; preds = %if.end11
  %generate_session_id16 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i64 0, i32 47
  %9 = load i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32*)** %generate_session_id16, align 8, !tbaa !59
  %tobool17.not = icmp eq i32 (%struct.ssl_st*, i8*, i32*)* %9, null
  %spec.select = select i1 %tobool17.not, i32 (%struct.ssl_st*, i8*, i32*)* @def_generate_session_id, i32 (%struct.ssl_st*, i8*, i32*)* %9
  br label %if.end22

if.end22:                                         ; preds = %if.end11, %if.else
  %cb.0 = phi i32 (%struct.ssl_st*, i8*, i32*)* [ %spec.select, %if.else ], [ %7, %if.end11 ]
  %lock24 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i64 0, i32 69
  %10 = load i8*, i8** %lock24, align 8, !tbaa !53
  %call25 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %10) #12
  %11 = load i8*, i8** %lock, align 8, !tbaa !28
  %call27 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %11) #12
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 5, i64 0
  %12 = load i64, i64* %session_id_length, align 8, !tbaa !47
  %call29 = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef %12) #12
  %13 = load i64, i64* %session_id_length, align 8, !tbaa !47
  %conv = trunc i64 %13 to i32
  store i32 %conv, i32* %tmp, align 4, !tbaa !29
  %call33 = call i32 %cb.0(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i32* noundef nonnull %tmp) #12
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end22
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 400, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_session_id, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 301, i8* noundef null) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end22
  %14 = load i32, i32* %tmp, align 4, !tbaa !29
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %conv38 = zext i32 %14 to i64
  %15 = load i64, i64* %session_id_length, align 8, !tbaa !47
  %cmp40 = icmp ult i64 %15, %conv38
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false, %if.end36
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_session_id, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 303, i8* noundef null) #12
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false
  store i64 %conv38, i64* %session_id_length, align 8, !tbaa !47
  %call50 = call i32 @SSL_has_matching_session_id(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i32 noundef %14) #12
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %if.then52

if.then52:                                        ; preds = %if.end43
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_generate_session_id, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 302, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end, %if.then52, %if.then42, %if.then35, %if.then8, %if.then, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %if.then ], [ 0, %if.then42 ], [ 0, %if.then52 ], [ 0, %if.then35 ], [ 0, %if.then8 ], [ 0, %if.end ], [ 1, %if.end43 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @def_generate_session_id(%struct.ssl_st* noundef %ssl, i8* noundef %id, i32* nocapture noundef readonly %id_len) unnamed_addr #2 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %retry.0 = phi i32 [ 0, %entry ], [ %inc, %land.rhs ]
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !61
  %2 = load i32, i32* %id_len, align 4, !tbaa !29
  %conv = zext i32 %2 to i64
  %call = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %id, i64 noundef %conv, i32 noundef 0) #12
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %id_len, align 4, !tbaa !29
  %call2 = tail call i32 @SSL_has_matching_session_id(%struct.ssl_st* noundef nonnull %ssl, i8* noundef %id, i32 noundef %3) #12
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %inc = add nuw nsw i32 %retry.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %do.body, !llvm.loop !62

do.end:                                           ; preds = %do.cond, %land.rhs
  %retry.1 = phi i32 [ 10, %land.rhs ], [ %retry.0, %do.cond ]
  %cmp5 = icmp ult i32 %retry.1, 10
  %. = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end
  %retval.0 = phi i32 [ %., %do.end ], [ 0, %do.body ]
  ret i32 %retval.0
}

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @SSL_has_matching_session_id(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_get_new_session(%struct.ssl_st* noundef %s, i32 noundef %session) local_unnamed_addr #2 {
entry:
  %call = tail call %struct.ssl_session_st* @SSL_SESSION_new() #13
  %cmp = icmp eq %struct.ssl_session_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ssl_get_new_session, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %session_timeout = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 11
  %1 = load i64, i64* %session_timeout, align 8, !tbaa !64
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i64 @SSL_get_default_timeout(%struct.ssl_st* noundef nonnull %s) #12
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then2
  %.sink = phi i64 [ %call3, %if.then2 ], [ %1, %if.end ]
  %2 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 15
  store i64 %.sink, i64* %2, align 8
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %call) #13
  %session8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session8, align 8, !tbaa !16
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %3) #13
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %session8, align 8, !tbaa !16
  %tobool.not = icmp eq i32 %session, 0
  br i1 %tobool.not, label %if.end27.sink.split, label %if.then10

if.then10:                                        ; preds = %if.end7
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !65
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !66
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 12
  %6 = load i32, i32* %enc_flags, align 8, !tbaa !68
  %and = and i32 %6, 8
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.else19

land.lhs.true:                                    ; preds = %if.then10
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !70
  %cmp13 = icmp slt i32 %7, 772
  %cmp17.not = icmp eq i32 %7, 65536
  %or.cond = or i1 %cmp13, %cmp17.not
  br i1 %or.cond, label %if.else19, label %if.end27.sink.split

if.else19:                                        ; preds = %land.lhs.true, %if.then10
  %call20 = tail call i32 @ssl_generate_session_id(%struct.ssl_st* noundef nonnull %s, %struct.ssl_session_st* noundef nonnull %call) #13
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.else19
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call) #13
  br label %cleanup

if.end27.sink.split:                              ; preds = %if.end7, %land.lhs.true
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 4
  store i64 0, i64* %session_id_length, align 8, !tbaa !47
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else19
  %sid_ctx_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 53
  %8 = load i64, i64* %sid_ctx_length, align 8, !tbaa !71
  %cmp28 = icmp ugt i64 %8, 32
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ssl_get_new_session, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 7, i64 0
  %arraydecay32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 54, i64 0
  %call34 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay32, i64 noundef %8) #12
  %9 = load i64, i64* %sid_ctx_length, align 8, !tbaa !71
  %sid_ctx_length36 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 6
  store i64 %9, i64* %sid_ctx_length36, align 8, !tbaa !48
  store %struct.ssl_session_st* %call, %struct.ssl_session_st** %session8, align 8, !tbaa !16
  %version38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %10 = load i32, i32* %version38, align 8, !tbaa !50
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 0
  store i32 %10, i32* %ssl_version, align 8, !tbaa !72
  %verify_result = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 13
  store i64 0, i64* %verify_result, align 8, !tbaa !30
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %11 = load i64, i64* %flags, align 8, !tbaa !73
  %and39 = and i64 %11, 512
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.end30
  %flags42 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %call, i64 0, i32 30
  %12 = load i32, i32* %flags42, align 8, !tbaa !74
  %or = or i32 %12, 1
  store i32 %or, i32* %flags42, align 8, !tbaa !74
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then41, %if.then29, %if.then22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then29 ], [ 0, %if.then22 ], [ 1, %if.then41 ], [ 1, %if.end30 ]
  ret i32 %retval.0
}

declare i64 @SSL_get_default_timeout(%struct.ssl_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @lookup_sess_in_cache(%struct.ssl_st* noundef %s, i8* noundef %sess_id, i64 noundef %sess_id_len) local_unnamed_addr #2 {
entry:
  %data = alloca %struct.ssl_session_st, align 8
  %copy = alloca i32, align 4
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 10
  %1 = load i32, i32* %session_cache_mode, align 8, !tbaa !75
  %and = and i32 %1, 256
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %land.lhs.true

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.ssl_session_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 928, i8* nonnull %2) #14
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !50
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %data, i64 0, i32 0
  store i32 %3, i32* %ssl_version, align 8, !tbaa !72
  %cmp1 = icmp ult i64 %sess_id_len, 33
  br i1 %cmp1, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %data, i64 0, i32 5, i64 0
  %call = call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %sess_id, i64 noundef %sess_id_len) #12
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %data, i64 0, i32 4
  store i64 %sess_id_len, i64* %session_id_length, align 8, !tbaa !47
  %4 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %4, i64 0, i32 69
  %5 = load i8*, i8** %lock, align 8, !tbaa !53
  %call6 = call i32 @CRYPTO_THREAD_read_lock(i8* noundef %5) #12
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 6
  %7 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call10 = call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_retrieve(%struct.lhash_st_SSL_SESSION* noundef %7, %struct.ssl_session_st* noundef nonnull %data) #13
  %cmp11.not = icmp eq %struct.ssl_session_st* %call10, null
  br i1 %cmp11.not, label %if.end24.thread87, label %if.end24

if.end24.thread87:                                ; preds = %if.end8
  %8 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %lock1781 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %8, i64 0, i32 69
  %9 = load i8*, i8** %lock1781, align 8, !tbaa !53
  %call1882 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #12
  %10 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %sess_miss = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %10, i64 0, i32 15, i32 6
  %11 = atomicrmw add i32* %sess_miss, i32 1 monotonic, align 4
  call void @llvm.lifetime.end.p0i8(i64 928, i8* nonnull %2) #14
  %.pre = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  br label %land.lhs.true

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 928, i8* nonnull %2) #14
  br label %cleanup57

if.end24:                                         ; preds = %if.end8
  %call14 = call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef nonnull %call10) #13
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %lock17 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 69
  %13 = load i8*, i8** %lock17, align 8, !tbaa !53
  %call18 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %13) #12
  call void @llvm.lifetime.end.p0i8(i64 928, i8* nonnull %2) #14
  br label %cleanup57

land.lhs.true:                                    ; preds = %entry, %if.end24.thread87
  %14 = phi %struct.ssl_ctx_st* [ %0, %entry ], [ %.pre, %if.end24.thread87 ]
  %get_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %14, i64 0, i32 14
  %15 = load %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)** %get_session_cb, align 8, !tbaa !77
  %cmp28.not = icmp eq %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* %15, null
  br i1 %cmp28.not, label %cleanup57, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  %16 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #14
  store i32 1, i32* %copy, align 4, !tbaa !29
  %conv33 = trunc i64 %sess_id_len to i32
  %call34 = call %struct.ssl_session_st* %15(%struct.ssl_st* noundef nonnull %s, i8* noundef %sess_id, i32 noundef %conv33, i32* noundef nonnull %copy) #12
  %cmp35.not = icmp eq %struct.ssl_session_st* %call34, null
  br i1 %cmp35.not, label %if.end55, label %if.then37

if.then37:                                        ; preds = %if.then30
  %17 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %sess_cb_hit = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %17, i64 0, i32 15, i32 10
  %18 = atomicrmw add i32* %sess_cb_hit, i32 1 monotonic, align 4
  %19 = load i32, i32* %copy, align 4, !tbaa !29
  %tobool42.not = icmp eq i32 %19, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.then37
  %call44 = call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef nonnull %call34) #13
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then37
  %20 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %session_cache_mode47 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %20, i64 0, i32 10
  %21 = load i32, i32* %session_cache_mode47, align 8, !tbaa !75
  %and48 = and i32 %21, 512
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end45
  %call53 = call i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef nonnull %20, %struct.ssl_session_st* noundef nonnull %call34) #13
  br label %if.end55

if.end55:                                         ; preds = %if.end45, %if.then51, %if.then30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #14
  br label %cleanup57

cleanup57:                                        ; preds = %if.end24, %cleanup, %land.lhs.true, %if.end55
  %retval.1 = phi %struct.ssl_session_st* [ null, %cleanup ], [ %call34, %if.end55 ], [ null, %land.lhs.true ], [ %call10, %if.end24 ]
  ret %struct.ssl_session_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @lh_SSL_SESSION_retrieve(%struct.lhash_st_SSL_SESSION* noundef %lh, %struct.ssl_session_st* noundef %d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ssl_session_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #12
  %2 = bitcast i8* %call to %struct.ssl_session_st*
  ret %struct.ssl_session_st* %2
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_add_session(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* noundef %c) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef %c) #13
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 69
  %0 = load i8*, i8** %lock, align 8, !tbaa !53
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %c) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 6
  %1 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call2 = tail call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_insert(%struct.lhash_st_SSL_SESSION* noundef %1, %struct.ssl_session_st* noundef %c) #13
  %cmp.not = icmp eq %struct.ssl_session_st* %call2, null
  %cmp3.not = icmp eq %struct.ssl_session_st* %call2, %c
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call fastcc void @SSL_SESSION_list_remove(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.ssl_session_st* noundef nonnull %call2) #13
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %call2) #13
  br label %if.end12

if.else:                                          ; preds = %if.end
  br i1 %cmp.not, label %land.lhs.true6, label %if.end12

land.lhs.true6:                                   ; preds = %if.else
  %2 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call8 = tail call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_retrieve(%struct.lhash_st_SSL_SESSION* noundef %2, %struct.ssl_session_st* noundef %c) #13
  %cmp9 = icmp eq %struct.ssl_session_st* %call8, null
  %spec.select = select i1 %cmp9, %struct.ssl_session_st* %c, %struct.ssl_session_st* null
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true6, %if.else, %if.then4
  %s.0 = phi %struct.ssl_session_st* [ null, %if.then4 ], [ %call2, %if.else ], [ %spec.select, %land.lhs.true6 ]
  %session_cache_mode = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 10
  %3 = load i32, i32* %session_cache_mode, align 8, !tbaa !75
  %and = and i32 %3, 1024
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i64 @time(i64* noundef null) #12
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %c, i64 0, i32 16
  store i64 %call15, i64* %time, align 8, !tbaa !13
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef %c) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  tail call fastcc void @SSL_SESSION_list_add(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.ssl_session_st* noundef %c) #13
  %cmp17.not = icmp eq %struct.ssl_session_st* %s.0, null
  br i1 %cmp17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.end16
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %s.0) #13
  br label %if.end32

if.else19:                                        ; preds = %if.end16
  %call20 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 43, i64 noundef 0, i8* noundef null) #12
  %cmp21 = icmp sgt i64 %call20, 0
  br i1 %cmp21, label %while.cond.preheader, label %if.end32

while.cond.preheader:                             ; preds = %if.else19
  %session_cache_tail = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 9
  %call2364 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 20, i64 noundef 0, i8* noundef null) #12
  %call2465 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 43, i64 noundef 0, i8* noundef null) #12
  %cmp2566 = icmp sgt i64 %call2364, %call2465
  br i1 %cmp2566, label %while.body.lr.ph, label %if.end32

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sess_cache_full = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 15, i32 8
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.else29
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session_cache_tail, align 8, !tbaa !78
  %call26 = tail call fastcc i32 @remove_session_lock(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.ssl_session_st* noundef %4, i32 noundef 0) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %if.else29

if.else29:                                        ; preds = %while.body
  %5 = atomicrmw add i32* %sess_cache_full, i32 1 monotonic, align 4
  %call23 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 20, i64 noundef 0, i8* noundef null) #12
  %call24 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 43, i64 noundef 0, i8* noundef null) #12
  %cmp25 = icmp sgt i64 %call23, %call24
  br i1 %cmp25, label %while.body, label %if.end32, !llvm.loop !79

if.end32:                                         ; preds = %if.else29, %while.body, %while.cond.preheader, %if.else19, %if.then18
  %ret.0 = phi i32 [ 0, %if.then18 ], [ 1, %if.else19 ], [ 1, %while.cond.preheader ], [ 1, %while.body ], [ 1, %if.else29 ]
  %6 = load i8*, i8** %lock, align 8, !tbaa !53
  %call34 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.end32 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_get_prev_session(%struct.ssl_st* noundef %s, %struct.CLIENTHELLO_MSG* noundef %hello) local_unnamed_addr #2 {
entry:
  %ret = alloca %struct.ssl_session_st*, align 8
  %0 = bitcast %struct.ssl_session_st** %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !65
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !66
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !68
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !70
  %cmp = icmp slt i32 %4, 772
  %cmp5.not = icmp eq i32 %4, 65536
  %or.cond = or i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %ticket_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 1, i32* %ticket_expected, align 8, !tbaa !51
  %pre_proc_exts = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 12
  %5 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !80
  %call = tail call i32 @tls_parse_extension(%struct.ssl_st* noundef nonnull %s, i32 noundef 18, i32 noundef 128, %struct.raw_extension_st* noundef %5, %struct.x509_st* noundef null, i64 noundef 0) #12
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.raw_extension_st*, %struct.raw_extension_st** %pre_proc_exts, align 8, !tbaa !80
  %call8 = tail call i32 @tls_parse_extension(%struct.ssl_st* noundef nonnull %s, i32 noundef 25, i32 noundef 128, %struct.raw_extension_st* noundef %6, %struct.x509_st* noundef null, i64 noundef 0) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  store %struct.ssl_session_st* %7, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %entry
  %call11 = call i32 @tls_get_ticket_from_client(%struct.ssl_st* noundef nonnull %s, %struct.CLIENTHELLO_MSG* noundef %hello, %struct.ssl_session_st** noundef nonnull %ret) #12
  switch i32 %call11, label %if.end19thread-pre-split [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 592, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_get_prev_session, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %err

sw.bb12:                                          ; preds = %if.else, %if.else
  %session_id_len = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 3
  %8 = load i64, i64* %session_id_len, align 8, !tbaa !83
  %cmp13.not = icmp eq i64 %8, 0
  br i1 %cmp13.not, label %if.end19thread-pre-split, label %if.then14

if.then14:                                        ; preds = %sw.bb12
  %arraydecay = getelementptr inbounds %struct.CLIENTHELLO_MSG, %struct.CLIENTHELLO_MSG* %hello, i64 0, i32 4, i64 0
  %call16 = call %struct.ssl_session_st* @lookup_sess_in_cache(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %arraydecay, i64 noundef %8) #13
  store %struct.ssl_session_st* %call16, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  br label %if.end19

if.end19thread-pre-split:                         ; preds = %sw.bb12, %if.else
  %.pr = load %struct.ssl_session_st*, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.then14, %if.end
  %9 = phi %struct.ssl_session_st* [ %.pr, %if.end19thread-pre-split ], [ %call16, %if.then14 ], [ %7, %if.end ]
  %tobool49.not = phi i1 [ true, %if.end19thread-pre-split ], [ false, %if.then14 ], [ true, %if.end ]
  %try_session_cache.0 = phi i32 [ 0, %if.end19thread-pre-split ], [ 1, %if.then14 ], [ 0, %if.end ]
  %cmp20 = icmp eq %struct.ssl_session_st* %9, null
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end19
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 0
  %10 = load i32, i32* %ssl_version, align 8, !tbaa !72
  %version23 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %11 = load i32, i32* %version23, align 8, !tbaa !50
  %cmp24.not = icmp eq i32 %10, %11
  br i1 %cmp24.not, label %if.end26, label %err

if.end26:                                         ; preds = %if.end22
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 6
  %12 = load i64, i64* %sid_ctx_length, align 8, !tbaa !48
  %sid_ctx_length27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 53
  %13 = load i64, i64* %sid_ctx_length27, align 8, !tbaa !71
  %cmp28.not = icmp eq i64 %12, %13
  br i1 %cmp28.not, label %lor.lhs.false29, label %err

lor.lhs.false29:                                  ; preds = %if.end26
  %arraydecay30 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %9, i64 0, i32 7, i64 0
  %arraydecay32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 54, i64 0
  %call34 = call i32 @memcmp(i8* noundef nonnull %arraydecay30, i8* noundef nonnull %arraydecay32, i64 noundef %12) #15
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %err

if.end37:                                         ; preds = %lor.lhs.false29
  %verify_mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 62
  %14 = load i32, i32* %verify_mode, align 8, !tbaa !84
  %and38 = and i32 %14, 1
  %tobool39.not = icmp ne i32 %and38, 0
  %cmp42 = icmp eq i64 %12, 0
  %or.cond173 = select i1 %tobool39.not, i1 %cmp42, i1 false
  br i1 %or.cond173, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 639, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_get_prev_session, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 277, i8* noundef null) #12
  br label %err

if.end44:                                         ; preds = %if.end37
  %call45 = call i64 @time(i64* noundef null) #12
  %15 = load %struct.ssl_session_st*, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  %call46 = call fastcc i32 @sess_timedout(i64 noundef %call45, %struct.ssl_session_st* noundef %15) #13
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end54, label %if.then48

if.then48:                                        ; preds = %if.end44
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %16 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %sess_timeout = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %16, i64 0, i32 15, i32 7
  %17 = atomicrmw add i32* %sess_timeout, i32 1 monotonic, align 4
  br i1 %tobool49.not, label %err, label %if.then50

if.then50:                                        ; preds = %if.then48
  %18 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %call52 = call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %18, %struct.ssl_session_st* noundef %15) #13
  br label %err

if.end54:                                         ; preds = %if.end44
  %flags = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %15, i64 0, i32 30
  %19 = load i32, i32* %flags, align 8, !tbaa !74
  %and55 = and i32 %19, 1
  %tobool56.not = icmp eq i32 %and55, 0
  %flags65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %20 = load i64, i64* %flags65, align 8, !tbaa !73
  %and66 = and i64 %20, 512
  %tobool67.not = icmp eq i64 %and66, 0
  br i1 %tobool56.not, label %if.else63, label %if.then57

if.then57:                                        ; preds = %if.end54
  br i1 %tobool67.not, label %if.then61, label %if.end70

if.then61:                                        ; preds = %if.then57
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 657, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_get_prev_session, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 104, i8* noundef null) #12
  br label %err

if.else63:                                        ; preds = %if.end54
  br i1 %tobool67.not, label %if.end70, label %err

if.end70:                                         ; preds = %if.else63, %if.then57
  %21 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !65
  %ssl3_enc72 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 25
  %22 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc72, align 8, !tbaa !66
  %enc_flags73 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %22, i64 0, i32 12
  %23 = load i32, i32* %enc_flags73, align 8, !tbaa !68
  %and74 = and i32 %23, 8
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.then84

land.lhs.true76:                                  ; preds = %if.end70
  %version78 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 0
  %24 = load i32, i32* %version78, align 8, !tbaa !70
  %cmp79 = icmp slt i32 %24, 772
  %cmp83.not = icmp eq i32 %24, 65536
  %or.cond174 = or i1 %cmp79, %cmp83.not
  br i1 %or.cond174, label %if.then84, label %if.end87

if.then84:                                        ; preds = %land.lhs.true76, %if.end70
  %session85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %25 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session85, align 8, !tbaa !16
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %25) #13
  %26 = load %struct.ssl_session_st*, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  store %struct.ssl_session_st* %26, %struct.ssl_session_st** %session85, align 8, !tbaa !16
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true76, %if.then84
  %session_ctx88 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %27 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx88, align 8, !tbaa !52
  %sess_hit = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %27, i64 0, i32 15, i32 9
  %28 = atomicrmw add i32* %sess_hit, i32 1 monotonic, align 4
  %session92 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %29 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session92, align 8, !tbaa !16
  %verify_result = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %29, i64 0, i32 13
  %30 = load i64, i64* %verify_result, align 8, !tbaa !30
  %verify_result93 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  store i64 %30, i64* %verify_result93, align 8, !tbaa !85
  br label %cleanup

err:                                              ; preds = %if.else63, %if.then48, %if.then50, %if.end26, %lor.lhs.false29, %if.end22, %if.end19, %if.then61, %if.then43, %sw.bb
  %try_session_cache.1 = phi i32 [ %try_session_cache.0, %if.end19 ], [ %try_session_cache.0, %if.end22 ], [ %try_session_cache.0, %if.end26 ], [ %try_session_cache.0, %lor.lhs.false29 ], [ %try_session_cache.0, %if.then43 ], [ 1, %if.then50 ], [ 0, %if.then48 ], [ %try_session_cache.0, %if.then61 ], [ %try_session_cache.0, %if.else63 ], [ 0, %sw.bb ]
  %tobool118.not = phi i32 [ 0, %if.end19 ], [ 0, %if.end22 ], [ 0, %if.end26 ], [ 0, %lor.lhs.false29 ], [ -1, %if.then43 ], [ 0, %if.then50 ], [ 0, %if.then48 ], [ -1, %if.then61 ], [ 0, %if.else63 ], [ -1, %sw.bb ]
  %31 = load %struct.ssl_session_st*, %struct.ssl_session_st** %ret, align 8, !tbaa !33
  %cmp94.not = icmp eq %struct.ssl_session_st* %31, null
  br i1 %cmp94.not, label %cleanup, label %if.then95

if.then95:                                        ; preds = %err
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %31) #13
  %32 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !65
  %ssl3_enc97 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %32, i64 0, i32 25
  %33 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc97, align 8, !tbaa !66
  %enc_flags98 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %33, i64 0, i32 12
  %34 = load i32, i32* %enc_flags98, align 8, !tbaa !68
  %and99 = and i32 %34, 8
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %land.lhs.true101, label %if.end111

land.lhs.true101:                                 ; preds = %if.then95
  %version103 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %32, i64 0, i32 0
  %35 = load i32, i32* %version103, align 8, !tbaa !70
  %cmp104 = icmp slt i32 %35, 772
  %cmp108.not = icmp eq i32 %35, 65536
  %or.cond175 = or i1 %cmp104, %cmp108.not
  br i1 %or.cond175, label %if.end111, label %if.then109

if.then109:                                       ; preds = %land.lhs.true101
  %session110 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  store %struct.ssl_session_st* null, %struct.ssl_session_st** %session110, align 8, !tbaa !16
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %land.lhs.true101, %if.then95
  %tobool112.not = icmp eq i32 %try_session_cache.1, 0
  br i1 %tobool112.not, label %if.then113, label %cleanup

if.then113:                                       ; preds = %if.end111
  %ticket_expected115 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 9
  store i32 1, i32* %ticket_expected115, align 8, !tbaa !51
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then113, %if.end111, %if.then, %lor.lhs.false, %if.end87
  %retval.0 = phi i32 [ 1, %if.end87 ], [ -1, %lor.lhs.false ], [ -1, %if.then ], [ %tobool118.not, %if.end111 ], [ %tobool118.not, %if.then113 ], [ %tobool118.not, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @tls_parse_extension(%struct.ssl_st* noundef, i32 noundef, i32 noundef, %struct.raw_extension_st* noundef, %struct.x509_st* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @tls_get_ticket_from_client(%struct.ssl_st* noundef, %struct.CLIENTHELLO_MSG* noundef, %struct.ssl_session_st** noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @sess_timedout(i64 noundef %t, %struct.ssl_session_st* nocapture noundef readonly %ss) unnamed_addr #1 {
entry:
  %timeout_ovf = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 18
  %0 = load i32, i32* %timeout_ovf, align 8, !tbaa !15
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %calc_timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 17
  %1 = load i64, i64* %calc_timeout, align 8, !tbaa !14
  %cmp = icmp slt i64 %1, %t
  %conv = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* noundef %c) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @remove_session_lock(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* noundef %c, i32 noundef 1) #13
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @lh_SSL_SESSION_insert(%struct.lhash_st_SSL_SESSION* noundef %lh, %struct.ssl_session_st* noundef %d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ssl_session_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #12
  %2 = bitcast i8* %call to %struct.ssl_session_st*
  ret %struct.ssl_session_st* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @SSL_SESSION_list_remove(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* nocapture noundef %s) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 25
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %next, align 8, !tbaa !86
  %cmp = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %prev = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 24
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %prev, align 8, !tbaa !87
  %cmp1 = icmp eq %struct.ssl_session_st* %1, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %session_cache_tail = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 9
  %2 = bitcast %struct.ssl_session_st** %session_cache_tail to %struct.ssl_session_st*
  %cmp3 = icmp eq %struct.ssl_session_st* %0, %2
  %session_cache_head = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 8
  %3 = bitcast %struct.ssl_session_st** %session_cache_head to %struct.ssl_session_st*
  %cmp6 = icmp eq %struct.ssl_session_st* %1, %3
  br i1 %cmp3, label %if.then4, label %if.else16

if.then4:                                         ; preds = %if.end
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %4 = bitcast %struct.ssl_session_st** %session_cache_head to <2 x %struct.ssl_session_st*>*
  store <2 x %struct.ssl_session_st*> zeroinitializer, <2 x %struct.ssl_session_st*>* %4, align 8, !tbaa !33
  br label %if.end34

if.else:                                          ; preds = %if.then4
  store %struct.ssl_session_st* %1, %struct.ssl_session_st** %session_cache_tail, align 8, !tbaa !78
  %next14 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %1, i64 0, i32 25
  %5 = bitcast %struct.ssl_session_st** %next14 to %struct.ssl_session_st***
  store %struct.ssl_session_st** %session_cache_tail, %struct.ssl_session_st*** %5, align 8, !tbaa !86
  br label %if.end34

if.else16:                                        ; preds = %if.end
  br i1 %cmp6, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.else16
  store %struct.ssl_session_st* %0, %struct.ssl_session_st** %session_cache_head, align 8, !tbaa !88
  %prev25 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 24
  %6 = bitcast %struct.ssl_session_st** %prev25 to %struct.ssl_session_st***
  store %struct.ssl_session_st** %session_cache_head, %struct.ssl_session_st*** %6, align 8, !tbaa !87
  br label %if.end34

if.else26:                                        ; preds = %if.else16
  %prev29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 24
  store %struct.ssl_session_st* %1, %struct.ssl_session_st** %prev29, align 8, !tbaa !87
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %prev, align 8, !tbaa !87
  %next32 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %7, i64 0, i32 25
  store %struct.ssl_session_st* %0, %struct.ssl_session_st** %next32, align 8, !tbaa !86
  br label %if.end34

if.end34:                                         ; preds = %if.then20, %if.else26, %if.then7, %if.else
  %8 = bitcast %struct.ssl_session_st** %prev to <2 x %struct.ssl_session_st*>*
  store <2 x %struct.ssl_session_st*> zeroinitializer, <2 x %struct.ssl_session_st*>* %8, align 8, !tbaa !33
  %owner = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 31
  store %struct.ssl_ctx_st* null, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @SSL_SESSION_list_add(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* noundef %s) unnamed_addr #8 {
entry:
  %next1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 25
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %next1, align 8, !tbaa !86
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %prev = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 24
  %1 = load %struct.ssl_session_st*, %struct.ssl_session_st** %prev, align 8, !tbaa !87
  %cmp2.not = icmp eq %struct.ssl_session_st* %1, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @SSL_SESSION_list_remove(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* noundef nonnull %s) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %session_cache_head = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 8
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session_cache_head, align 8, !tbaa !88
  %cmp3 = icmp eq %struct.ssl_session_st* %2, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %session_cache_head, align 8, !tbaa !88
  %session_cache_tail = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 9
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %session_cache_tail, align 8, !tbaa !78
  %prev7 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 24
  %3 = bitcast %struct.ssl_session_st** %prev7 to %struct.ssl_session_st***
  store %struct.ssl_session_st** %session_cache_head, %struct.ssl_session_st*** %3, align 8, !tbaa !87
  %4 = bitcast %struct.ssl_session_st** %next1 to %struct.ssl_session_st***
  store %struct.ssl_session_st** %session_cache_tail, %struct.ssl_session_st*** %4, align 8, !tbaa !86
  br label %if.end50

if.else:                                          ; preds = %if.end
  %call = tail call fastcc i32 @timeoutcmp(%struct.ssl_session_st* noundef nonnull %s, %struct.ssl_session_st* noundef nonnull %2) #13
  %cmp11 = icmp sgt i32 %call, -1
  br i1 %cmp11, label %if.then12, label %if.else20

if.then12:                                        ; preds = %if.else
  store %struct.ssl_session_st* %2, %struct.ssl_session_st** %next1, align 8, !tbaa !86
  %prev16 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %2, i64 0, i32 24
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %prev16, align 8, !tbaa !87
  %prev18 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 24
  %5 = bitcast %struct.ssl_session_st** %prev18 to %struct.ssl_session_st***
  store %struct.ssl_session_st** %session_cache_head, %struct.ssl_session_st*** %5, align 8, !tbaa !87
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %session_cache_head, align 8, !tbaa !88
  br label %if.end50

if.else20:                                        ; preds = %if.else
  %session_cache_tail21 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 9
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session_cache_tail21, align 8, !tbaa !78
  %call22 = tail call fastcc i32 @timeoutcmp(%struct.ssl_session_st* noundef nonnull %s, %struct.ssl_session_st* noundef %6) #13
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else20
  %7 = bitcast %struct.ssl_session_st** %session_cache_tail21 to %struct.ssl_session_st*
  br label %while.cond

if.then24:                                        ; preds = %if.else20
  %prev26 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 24
  store %struct.ssl_session_st* %6, %struct.ssl_session_st** %prev26, align 8, !tbaa !87
  %next28 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %6, i64 0, i32 25
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %next28, align 8, !tbaa !86
  %8 = bitcast %struct.ssl_session_st** %next1 to %struct.ssl_session_st***
  store %struct.ssl_session_st** %session_cache_tail21, %struct.ssl_session_st*** %8, align 8, !tbaa !86
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %session_cache_tail21, align 8, !tbaa !78
  br label %if.end50

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %.pn = phi %struct.ssl_session_st* [ %next.0, %while.body ], [ %2, %while.cond.preheader ]
  %next.0.in = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.pn, i64 0, i32 25
  %next.0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %next.0.in, align 8, !tbaa !86
  %cmp36.not = icmp eq %struct.ssl_session_st* %next.0, %7
  br i1 %cmp36.not, label %if.end50, label %while.body

while.body:                                       ; preds = %while.cond
  %call37 = tail call fastcc i32 @timeoutcmp(%struct.ssl_session_st* noundef %s, %struct.ssl_session_st* noundef %next.0) #13
  %cmp38 = icmp sgt i32 %call37, -1
  br i1 %cmp38, label %if.then39, label %while.cond, !llvm.loop !90

if.then39:                                        ; preds = %while.body
  store %struct.ssl_session_st* %next.0, %struct.ssl_session_st** %next1, align 8, !tbaa !86
  %prev41 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %next.0, i64 0, i32 24
  %9 = load %struct.ssl_session_st*, %struct.ssl_session_st** %prev41, align 8, !tbaa !87
  %prev42 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 24
  store %struct.ssl_session_st* %9, %struct.ssl_session_st** %prev42, align 8, !tbaa !87
  %10 = load %struct.ssl_session_st*, %struct.ssl_session_st** %prev41, align 8, !tbaa !87
  %next44 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %10, i64 0, i32 25
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %next44, align 8, !tbaa !86
  store %struct.ssl_session_st* %s, %struct.ssl_session_st** %prev41, align 8, !tbaa !87
  br label %if.end50

if.end50:                                         ; preds = %while.cond, %if.then12, %if.then39, %if.then24, %if.then4
  %owner = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 31
  store %struct.ssl_ctx_st* %ctx, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  ret void
}

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @remove_session_lock(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_session_st* noundef %c, i32 noundef %lck) unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.ssl_session_st* %c, null
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %c, i64 0, i32 4
  %0 = load i64, i64* %session_id_length, align 8, !tbaa !47
  %cmp1.not = icmp eq i64 %0, 0
  br i1 %cmp1.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tobool.not = icmp eq i32 %lck, 0
  br i1 %tobool.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.then
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 69
  %1 = load i8*, i8** %lock, align 8, !tbaa !53
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #12
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 6
  %2 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call6 = tail call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_retrieve(%struct.lhash_st_SSL_SESSION* noundef %2, %struct.ssl_session_st* noundef nonnull %c) #13
  %cmp7.not = icmp eq %struct.ssl_session_st* %call6, null
  br i1 %cmp7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  %3 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call10 = tail call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_delete(%struct.lhash_st_SSL_SESSION* noundef %3, %struct.ssl_session_st* noundef nonnull %call6) #13
  tail call fastcc void @SSL_SESSION_list_remove(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.ssl_session_st* noundef %call10) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  %r.0 = phi %struct.ssl_session_st* [ %call10, %if.then8 ], [ null, %if.end5 ]
  %not_resumable = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %c, i64 0, i32 10
  store i32 1, i32* %not_resumable, align 8, !tbaa !91
  br i1 %tobool.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end11
  %lock14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 69
  %4 = load i8*, i8** %lock14, align 8, !tbaa !53
  %call15 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  %remove_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 13
  %5 = load void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)** %remove_session_cb, align 8, !tbaa !92
  %cmp17.not = icmp eq void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* %5, null
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  tail call void %5(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.ssl_session_st* noundef nonnull %c) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  br i1 %cmp7.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.end20
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %r.0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then22, %if.end20, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.then22 ], [ 0, %if.end20 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #9 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !29
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @X509_free(%struct.x509_st* noundef) #4

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #10 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #9 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_session(%struct.ssl_st* noundef %s, %struct.ssl_session_st* noundef %session) local_unnamed_addr #2 {
entry:
  %call = tail call i32 @ssl_clear_bad_session(%struct.ssl_st* noundef %s) #13
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !93
  %method1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method1, align 8, !tbaa !65
  %cmp.not = icmp eq %struct.ssl_method_st* %1, %2
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @SSL_set_ssl_method(%struct.ssl_st* noundef nonnull %s, %struct.ssl_method_st* noundef %1) #12
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %cmp7.not = icmp eq %struct.ssl_session_st* %session, null
  br i1 %cmp7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @SSL_SESSION_up_ref(%struct.ssl_session_st* noundef nonnull %session) #13
  %verify_result = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %session, i64 0, i32 13
  %3 = load i64, i64* %verify_result, align 8, !tbaa !30
  %verify_result10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 73
  store i64 %3, i64* %verify_result10, align 8, !tbaa !85
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6
  %session12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %4 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session12, align 8, !tbaa !16
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %4) #13
  store %struct.ssl_session_st* %session, %struct.ssl_session_st** %session12, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %if.then, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_clear_bad_session(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  %cmp.not = icmp eq %struct.ssl_session_st* %0, null
  br i1 %cmp.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %1 = load i32, i32* %shutdown, align 4, !tbaa !94
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true1, label %return

land.lhs.true1:                                   ; preds = %land.lhs.true
  %call = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %land.lhs.true1
  %call3 = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #12
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !52
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !16
  %call6 = tail call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %2, %struct.ssl_session_st* noundef %3) #13
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %land.lhs.true1, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true1 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @SSL_set_ssl_method(%struct.ssl_st* noundef, %struct.ssl_method_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set1_id(%struct.ssl_session_st* noundef %s, i8* noundef %sid, i32 noundef %sid_len) local_unnamed_addr #2 {
entry:
  %cmp = icmp ugt i32 %sid_len, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 881, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_SESSION_set1_id, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 408, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i32 %sid_len to i64
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 4
  store i64 %conv, i64* %session_id_length, align 8, !tbaa !47
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 5, i64 0
  %cmp1.not = icmp eq i8* %arraydecay, %sid
  br i1 %cmp1.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %sid, i64 noundef %conv) #12
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_SESSION_set_timeout(%struct.ssl_session_st* noundef %s, i64 noundef %t) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.ssl_session_st* %s, null
  %cmp1 = icmp slt i64 %t, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 31
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  %cmp2.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 69
  %1 = load i8*, i8** %lock, align 8, !tbaa !53
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then3
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 15
  store i64 %t, i64* %timeout, align 8, !tbaa !4
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %s) #13
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  tail call fastcc void @SSL_SESSION_list_add(%struct.ssl_ctx_st* noundef %2, %struct.ssl_session_st* noundef nonnull %s) #13
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  %lock9 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 69
  %4 = load i8*, i8** %lock9, align 8, !tbaa !53
  %call10 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %timeout11 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 15
  store i64 %t, i64* %timeout11, align 8, !tbaa !4
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %s) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else, %if.then3, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.then3 ], [ 1, %if.else ], [ 1, %if.end6 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_SESSION_get_timeout(%struct.ssl_session_st* noundef readonly %s) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ssl_session_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 15
  %0 = load i64, i64* %timeout, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_SESSION_get_time(%struct.ssl_session_st* noundef readonly %s) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ssl_session_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 16
  %0 = load i64, i64* %time, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @SSL_SESSION_set_time(%struct.ssl_session_st* noundef %s, i64 noundef %t) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq %struct.ssl_session_st* %s, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 31
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  %cmp1.not = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 69
  %1 = load i8*, i8** %lock, align 8, !tbaa !53
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 16
  store i64 %t, i64* %time, align 8, !tbaa !13
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %s) #13
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  tail call fastcc void @SSL_SESSION_list_add(%struct.ssl_ctx_st* noundef %2, %struct.ssl_session_st* noundef nonnull %s) #13
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %owner, align 8, !tbaa !89
  %lock8 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 69
  %4 = load i8*, i8** %lock8, align 8, !tbaa !53
  %call9 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %4) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %time10 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 16
  store i64 %t, i64* %time10, align 8, !tbaa !13
  tail call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %s) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.else, %if.then2, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.then2 ], [ %t, %if.else ], [ %t, %if.end5 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_SESSION_get_protocol_version(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 0
  %0 = load i32, i32* %ssl_version, align 8, !tbaa !72
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_SESSION_set_protocol_version(%struct.ssl_session_st* nocapture noundef writeonly %s, i32 noundef %version) local_unnamed_addr #11 {
entry:
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 0
  store i32 %version, i32* %ssl_version, align 8, !tbaa !72
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_cipher_st* @SSL_SESSION_get0_cipher(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 20
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !95
  ret %struct.ssl_cipher_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_SESSION_set_cipher(%struct.ssl_session_st* nocapture noundef writeonly %s, %struct.ssl_cipher_st* noundef %cipher) local_unnamed_addr #11 {
entry:
  %cipher1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 20
  store %struct.ssl_cipher_st* %cipher, %struct.ssl_cipher_st** %cipher1, align 8, !tbaa !95
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_SESSION_get0_hostname(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 0
  %0 = load i8*, i8** %hostname, align 8, !tbaa !41
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set1_hostname(%struct.ssl_session_st* nocapture noundef %s, i8* noundef %hostname) local_unnamed_addr #2 {
entry:
  %hostname1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 0
  %0 = load i8*, i8** %hostname1, align 8, !tbaa !41
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 973) #12
  %cmp = icmp eq i8* %hostname, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %hostname1, align 8, !tbaa !41
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %hostname, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 978) #12
  store i8* %call, i8** %hostname1, align 8, !tbaa !41
  %cmp8 = icmp ne i8* %call, null
  %conv = zext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_SESSION_has_ticket(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 2
  %0 = load i64, i64* %ticklen, align 8, !tbaa !43
  %cmp.not = icmp ne i64 %0, 0
  %cond = zext i1 %cmp.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_SESSION_get_ticket_lifetime_hint(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %tick_lifetime_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 3
  %0 = load i64, i64* %tick_lifetime_hint, align 8, !tbaa !96
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_SESSION_get0_ticket(%struct.ssl_session_st* nocapture noundef readonly %s, i8** noundef writeonly %tick, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 2
  %0 = load i64, i64* %ticklen, align 8, !tbaa !43
  store i64 %0, i64* %len, align 8, !tbaa !44
  %cmp.not = icmp eq i8** %tick, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tick2 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 1
  %1 = load i8*, i8** %tick2, align 8, !tbaa !42
  store i8* %1, i8** %tick, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_SESSION_get_max_early_data(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 5
  %0 = load i32, i32* %max_early_data, align 4, !tbaa !97
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_SESSION_set_max_early_data(%struct.ssl_session_st* nocapture noundef writeonly %s, i32 noundef %max_early_data) local_unnamed_addr #11 {
entry:
  %max_early_data1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 5
  store i32 %max_early_data, i32* %max_early_data1, align 4, !tbaa !97
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @SSL_SESSION_get0_alpn_selected(%struct.ssl_session_st* nocapture noundef readonly %s, i8** nocapture noundef writeonly %alpn, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %alpn_selected = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 6
  %0 = load i8*, i8** %alpn_selected, align 8, !tbaa !34
  store i8* %0, i8** %alpn, align 8, !tbaa !33
  %alpn_selected_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 7
  %1 = load i64, i64* %alpn_selected_len, align 8, !tbaa !45
  store i64 %1, i64* %len, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set1_alpn_selected(%struct.ssl_session_st* nocapture noundef %s, i8* noundef %alpn, i64 noundef %len) local_unnamed_addr #2 {
entry:
  %alpn_selected = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 6
  %0 = load i8*, i8** %alpn_selected, align 8, !tbaa !34
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1024) #12
  %cmp = icmp eq i8* %alpn, null
  %cmp1 = icmp eq i64 %len, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %alpn_selected, align 8, !tbaa !34
  %alpn_selected_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 7
  store i64 0, i64* %alpn_selected_len, align 8, !tbaa !45
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %alpn, i64 noundef %len, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1030) #12
  store i8* %call, i8** %alpn_selected, align 8, !tbaa !34
  %cmp9 = icmp eq i8* %call, null
  %alpn_selected_len12 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 7
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  store i64 0, i64* %alpn_selected_len12, align 8, !tbaa !45
  br label %return

if.end13:                                         ; preds = %if.end
  store i64 %len, i64* %alpn_selected_len12, align 8, !tbaa !45
  br label %return

return:                                           ; preds = %if.end13, %if.then10, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then10 ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @SSL_SESSION_get0_peer(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 11
  %0 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !37
  ret %struct.x509_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set1_id_context(%struct.ssl_session_st* noundef %s, i8* noundef %sid_ctx, i32 noundef %sid_ctx_len) local_unnamed_addr #2 {
entry:
  %cmp = icmp ugt i32 %sid_ctx_len, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1049, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_SESSION_set1_id_context, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 273, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i32 %sid_ctx_len to i64
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 6
  store i64 %conv, i64* %sid_ctx_length, align 8, !tbaa !48
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 7, i64 0
  %cmp2.not = icmp eq i8* %arraydecay, %sid_ctx
  br i1 %cmp2.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.end
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %sid_ctx, i64 noundef %conv) #12
  br label %return

return:                                           ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then4 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_SESSION_is_resumable(%struct.ssl_session_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %not_resumable = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 10
  %0 = load i32, i32* %not_resumable, align 8, !tbaa !91
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 4
  %1 = load i64, i64* %session_id_length, align 8, !tbaa !47
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %lor.rhs, label %land.end

lor.rhs:                                          ; preds = %land.rhs
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 26, i32 2
  %2 = load i64, i64* %ticklen, align 8, !tbaa !43
  %cmp1 = icmp ne i64 %2, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i64 @SSL_CTX_set_timeout(%struct.ssl_ctx_st* noundef %s, i64 noundef %t) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %s, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %session_timeout = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 11
  %0 = load i64, i64* %session_timeout, align 8, !tbaa !64
  store i64 %t, i64* %session_timeout, align 8, !tbaa !64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SSL_CTX_get_timeout(%struct.ssl_ctx_st* noundef readonly %s) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %session_timeout = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 11
  %0 = load i64, i64* %session_timeout, align 8, !tbaa !64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_session_secret_cb(%struct.ssl_st* noundef writeonly %s, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* noundef %tls_session_secret_cb, i8* noundef %arg) local_unnamed_addr #11 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %session_secret_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 22
  store i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)* %tls_session_secret_cb, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)** %session_secret_cb, align 8, !tbaa !98
  %session_secret_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 23
  store i8* %arg, i8** %session_secret_cb_arg, align 8, !tbaa !99
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @SSL_set_session_ticket_ext_cb(%struct.ssl_st* noundef writeonly %s, i32 (%struct.ssl_st*, i8*, i32, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #11 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %session_ticket_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 20
  store i32 (%struct.ssl_st*, i8*, i32, i8*)* %cb, i32 (%struct.ssl_st*, i8*, i32, i8*)** %session_ticket_cb, align 8, !tbaa !100
  %session_ticket_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 21
  store i8* %arg, i8** %session_ticket_cb_arg, align 8, !tbaa !101
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_session_ticket_ext(%struct.ssl_st* nocapture noundef %s, i8* noundef %ext_data, i32 noundef %ext_len) local_unnamed_addr #2 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !50
  %cmp = icmp sgt i32 %0, 768
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %session_ticket = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 19
  %1 = bitcast %struct.tls_session_ticket_ext_st** %session_ticket to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !102
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1110) #12
  store %struct.tls_session_ticket_ext_st* null, %struct.tls_session_ticket_ext_st** %session_ticket, align 8, !tbaa !102
  %conv = sext i32 %ext_len to i64
  %add = add nsw i64 %conv, 16
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1113) #12
  store i8* %call, i8** %1, align 8, !tbaa !102
  %cmp7 = icmp eq i8* %call, null
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1115, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SSL_set_session_ticket_ext, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %if.then
  %cmp10.not = icmp eq i8* %ext_data, null
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %conv13 = trunc i32 %ext_len to i16
  %length = bitcast i8* %call to i16*
  store i16 %conv13, i16* %length, align 8, !tbaa !103
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 16
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %data to i8**
  store i8* %add.ptr, i8** %3, align 8, !tbaa !105
  %call24 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %ext_data, i64 noundef %conv) #12
  br label %return

if.else:                                          ; preds = %if.end
  %length27 = bitcast i8* %call to i16*
  store i16 0, i16* %length27, align 8, !tbaa !103
  %data30 = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %data30 to i8**
  store i8* null, i8** %4, align 8, !tbaa !105
  br label %return

return:                                           ; preds = %entry, %if.then12, %if.else, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 1, %if.else ], [ 1, %if.then12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_flush_sessions(%struct.ssl_ctx_st* noundef %s, i64 noundef %t) local_unnamed_addr #2 {
entry:
  %lock = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 69
  %0 = load i8*, i8** %lock, align 8, !tbaa !53
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st_SSL_SESSION* @sk_SSL_SESSION_new_null() #13
  %sessions = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 6
  %1 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call2 = tail call fastcc i64 @lh_SSL_SESSION_get_down_load(%struct.lhash_st_SSL_SESSION* noundef %1) #13
  %2 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  tail call fastcc void @lh_SSL_SESSION_set_down_load(%struct.lhash_st_SSL_SESSION* noundef %2, i64 noundef 0) #13
  %session_cache_tail = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 9
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session_cache_tail, align 8, !tbaa !78
  %cmp.not51 = icmp eq %struct.ssl_session_st* %3, null
  br i1 %cmp.not51, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %cmp5 = icmp eq i64 %t, 0
  %remove_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %s, i64 0, i32 13
  %cmp15 = icmp eq %struct.stack_st_SSL_SESSION* %call1, null
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end21
  %4 = phi %struct.ssl_session_st* [ %3, %while.body.lr.ph ], [ %7, %if.end21 ]
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %call6 = tail call fastcc i32 @sess_timedout(i64 noundef %t, %struct.ssl_session_st* noundef nonnull %4) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.end, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %while.body
  %5 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  %call10 = tail call fastcc %struct.ssl_session_st* @lh_SSL_SESSION_delete(%struct.lhash_st_SSL_SESSION* noundef %5, %struct.ssl_session_st* noundef nonnull %4) #13
  tail call fastcc void @SSL_SESSION_list_remove(%struct.ssl_ctx_st* noundef nonnull %s, %struct.ssl_session_st* noundef nonnull %4) #13
  %not_resumable = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %4, i64 0, i32 10
  store i32 1, i32* %not_resumable, align 8, !tbaa !91
  %6 = load void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)** %remove_session_cb, align 8, !tbaa !92
  %cmp11.not = icmp eq void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* %6, null
  br i1 %cmp11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.then8
  tail call void %6(%struct.ssl_ctx_st* noundef nonnull %s, %struct.ssl_session_st* noundef nonnull %4) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then8
  br i1 %cmp15, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %if.end14
  %call17 = tail call fastcc i32 @sk_SSL_SESSION_push(%struct.stack_st_SSL_SESSION* noundef nonnull %call1, %struct.ssl_session_st* noundef nonnull %4) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false16, %if.end14
  tail call void @SSL_SESSION_free(%struct.ssl_session_st* noundef nonnull %4) #13
  br label %if.end21

if.end21:                                         ; preds = %lor.lhs.false16, %if.then19
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session_cache_tail, align 8, !tbaa !78
  %cmp.not = icmp eq %struct.ssl_session_st* %7, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !106

while.end:                                        ; preds = %if.end21, %lor.lhs.false, %if.end
  %8 = load %struct.lhash_st_SSL_SESSION*, %struct.lhash_st_SSL_SESSION** %sessions, align 8, !tbaa !76
  tail call fastcc void @lh_SSL_SESSION_set_down_load(%struct.lhash_st_SSL_SESSION* noundef %8, i64 noundef %call2) #13
  %9 = load i8*, i8** %lock, align 8, !tbaa !53
  %call24 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %9) #12
  tail call fastcc void @sk_SSL_SESSION_pop_free(%struct.stack_st_SSL_SESSION* noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_SSL_SESSION* @sk_SSL_SESSION_new_null() unnamed_addr #2 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #12
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_SSL_SESSION*
  ret %struct.stack_st_SSL_SESSION* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @lh_SSL_SESSION_get_down_load(%struct.lhash_st_SSL_SESSION* noundef %lh) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  %call = tail call i64 @OPENSSL_LH_get_down_load(%struct.lhash_st* noundef %0) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_SSL_SESSION_set_down_load(%struct.lhash_st_SSL_SESSION* noundef %lh, i64 noundef %dl) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_set_down_load(%struct.lhash_st* noundef %0, i64 noundef %dl) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ssl_session_st* @lh_SSL_SESSION_delete(%struct.lhash_st_SSL_SESSION* noundef %lh, %struct.ssl_session_st* noundef %d) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.lhash_st_SSL_SESSION* %lh to %struct.lhash_st*
  %1 = bitcast %struct.ssl_session_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %0, i8* noundef %1) #12
  %2 = bitcast i8* %call to %struct.ssl_session_st*
  ret %struct.ssl_session_st* %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_SSL_SESSION_push(%struct.stack_st_SSL_SESSION* noundef %sk, %struct.ssl_session_st* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_SSL_SESSION* %sk to %struct.stack_st*
  %1 = bitcast %struct.ssl_session_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_SSL_SESSION_pop_free(%struct.stack_st_SSL_SESSION* noundef %sk) unnamed_addr #2 {
entry:
  %0 = bitcast %struct.stack_st_SSL_SESSION* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ssl_session_st*)* @SSL_SESSION_free to void (i8*)*)) #12
  ret void
}

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #4

declare i32 @SSL_in_before(%struct.ssl_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_sess_set_new_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, %struct.ssl_session_st*)* noundef %cb) local_unnamed_addr #11 {
entry:
  %new_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 12
  store i32 (%struct.ssl_st*, %struct.ssl_session_st*)* %cb, i32 (%struct.ssl_st*, %struct.ssl_session_st*)** %new_session_cb, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ssl_st*, %struct.ssl_session_st*)* @SSL_CTX_sess_get_new_cb(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #1 {
entry:
  %new_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 12
  %0 = load i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*)** %new_session_cb, align 8, !tbaa !107
  ret i32 (%struct.ssl_st*, %struct.ssl_session_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_sess_set_remove_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* noundef %cb) local_unnamed_addr #11 {
entry:
  %remove_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 13
  store void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* %cb, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)** %remove_session_cb, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* @SSL_CTX_sess_get_remove_cb(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #1 {
entry:
  %remove_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 13
  %0 = load void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)** %remove_session_cb, align 8, !tbaa !92
  ret void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_sess_set_get_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* noundef %cb) local_unnamed_addr #11 {
entry:
  %get_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 14
  store %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* %cb, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)** %get_session_cb, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* @SSL_CTX_sess_get_get_cb(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #1 {
entry:
  %get_session_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)** %get_session_cb, align 8, !tbaa !77
  ret %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_info_callback(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, void (%struct.ssl_st*, i32, i32)* noundef %cb) local_unnamed_addr #11 {
entry:
  %info_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 31
  store void (%struct.ssl_st*, i32, i32)* %cb, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define void (%struct.ssl_st*, i32, i32)* @SSL_CTX_get_info_callback(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #1 {
entry:
  %info_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 31
  %0 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !108
  ret void (%struct.ssl_st*, i32, i32)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_client_cert_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)* noundef %cb) local_unnamed_addr #11 {
entry:
  %client_cert_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 21
  store i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)* %cb, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)** %client_cert_cb, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)* @SSL_CTX_get_client_cert_cb(%struct.ssl_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #1 {
entry:
  %client_cert_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 21
  %0 = load i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)** %client_cert_cb, align 8, !tbaa !109
  ret i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_cookie_generate_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i32*)* noundef %cb) local_unnamed_addr #11 {
entry:
  %app_gen_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 22
  store i32 (%struct.ssl_st*, i8*, i32*)* %cb, i32 (%struct.ssl_st*, i8*, i32*)** %app_gen_cookie_cb, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_cookie_verify_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i32)* noundef %cb) local_unnamed_addr #11 {
entry:
  %app_verify_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 23
  store i32 (%struct.ssl_st*, i8*, i32)* %cb, i32 (%struct.ssl_st*, i8*, i32)** %app_verify_cookie_cb, align 8, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_set1_ticket_appdata(%struct.ssl_session_st* nocapture noundef %ss, i8* noundef %data, i64 noundef %len) local_unnamed_addr #2 {
entry:
  %ticket_appdata = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 28
  %0 = load i8*, i8** %ticket_appdata, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1350) #12
  %ticket_appdata_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 29
  store i64 0, i64* %ticket_appdata_len, align 8, !tbaa !46
  %cmp = icmp eq i8* %data, null
  %cmp1 = icmp eq i64 %len, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %ticket_appdata, align 8, !tbaa !38
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_memdup(i8* noundef nonnull %data, i64 noundef %len, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 1356) #12
  store i8* %call, i8** %ticket_appdata, align 8, !tbaa !38
  %cmp5.not = icmp eq i8* %call, null
  br i1 %cmp5.not, label %return, label %if.then6

if.then6:                                         ; preds = %if.end
  store i64 %len, i64* %ticket_appdata_len, align 8, !tbaa !46
  br label %return

return:                                           ; preds = %if.end, %if.then6, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then6 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_SESSION_get0_ticket_appdata(%struct.ssl_session_st* nocapture noundef readonly %ss, i8** nocapture noundef writeonly %data, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %ticket_appdata = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 28
  %0 = load i8*, i8** %ticket_appdata, align 8, !tbaa !38
  store i8* %0, i8** %data, align 8, !tbaa !33
  %ticket_appdata_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ss, i64 0, i32 29
  %1 = load i64, i64* %ticket_appdata_len, align 8, !tbaa !46
  store i64 %1, i64* %len, align 8, !tbaa !44
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_stateless_cookie_generate_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i64*)* noundef %cb) local_unnamed_addr #11 {
entry:
  %gen_stateless_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 24
  store i32 (%struct.ssl_st*, i8*, i64*)* %cb, i32 (%struct.ssl_st*, i8*, i64*)** %gen_stateless_cookie_cb, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_stateless_cookie_verify_cb(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.ssl_st*, i8*, i64)* noundef %cb) local_unnamed_addr #11 {
entry:
  %verify_stateless_cookie_cb = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 25
  store i32 (%struct.ssl_st*, i8*, i64)* %cb, i32 (%struct.ssl_st*, i8*, i64)** %verify_stateless_cookie_cb, align 8, !tbaa !113
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @PEM_read_bio_SSL_SESSION(%struct.bio_st* noundef %bp, %struct.ssl_session_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.ssl_session_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef bitcast (%struct.ssl_session_st* (%struct.ssl_session_st**, i8**, i64)* @d2i_SSL_SESSION to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %bp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #12
  %1 = bitcast i8* %call to %struct.ssl_session_st*
  ret %struct.ssl_session_st* %1
}

declare i8* @PEM_ASN1_read_bio(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct.bio_st* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef, i8** noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @PEM_read_SSL_SESSION(%struct._IO_FILE* noundef %fp, %struct.ssl_session_st** noundef %x, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.ssl_session_st** %x to i8**
  %call = tail call i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef bitcast (%struct.ssl_session_st* (%struct.ssl_session_st**, i8**, i64)* @d2i_SSL_SESSION to i8* (i8**, i8**, i64)*), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %fp, i8** noundef %0, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %u) #12
  %1 = bitcast i8* %call to %struct.ssl_session_st*
  ret %struct.ssl_session_st* %1
}

declare i8* @PEM_ASN1_read(i8* (i8**, i8**, i64)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_bio_SSL_SESSION(%struct.bio_st* noundef %out, %struct.ssl_session_st* noundef %x) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.ssl_session_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ssl_session_st*, i8**)* @i2d_SSL_SESSION to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.bio_st* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  ret i32 %call
}

declare i32 @PEM_ASN1_write_bio(i32 (i8*, i8**)* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef, i8** noundef) #4

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_write_SSL_SESSION(%struct._IO_FILE* noundef %out, %struct.ssl_session_st* noundef %x) local_unnamed_addr #2 {
entry:
  %0 = bitcast %struct.ssl_session_st* %x to i8*
  %call = tail call i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ssl_session_st*, i8**)* @i2d_SSL_SESSION to i32 (i8*, i8**)*), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %out, i8* noundef %0, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #12
  ret i32 %call
}

declare i32 @PEM_ASN1_write(i32 (i8*, i8**)* noundef, i8* noundef, %struct._IO_FILE* noundef, i8* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #4

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #4

declare i64 @OPENSSL_LH_get_down_load(%struct.lhash_st* noundef) local_unnamed_addr #4

declare void @OPENSSL_LH_set_down_load(%struct.lhash_st* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @timeoutcmp(%struct.ssl_session_st* nocapture noundef readonly %a, %struct.ssl_session_st* nocapture noundef readonly %b) unnamed_addr #1 {
entry:
  %timeout_ovf = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 18
  %0 = load i32, i32* %timeout_ovf, align 8, !tbaa !15
  %tobool.not = icmp eq i32 %0, 0
  %timeout_ovf6 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %b, i64 0, i32 18
  %1 = load i32, i32* %timeout_ovf6, align 8, !tbaa !15
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool7.not, label %return, label %if.end9

land.lhs.true5:                                   ; preds = %entry
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %land.lhs.true, %land.lhs.true5
  %calc_timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %a, i64 0, i32 17
  %2 = load i64, i64* %calc_timeout, align 8, !tbaa !14
  %calc_timeout10 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %b, i64 0, i32 17
  %3 = load i64, i64* %calc_timeout10, align 8, !tbaa !14
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %return, label %if.end12

if.end12:                                         ; preds = %if.end9
  %cmp15 = icmp sgt i64 %2, %3
  %. = zext i1 %cmp15 to i32
  br label %return

return:                                           ; preds = %if.end12, %if.end9, %land.lhs.true5, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ -1, %land.lhs.true5 ], [ -1, %if.end9 ], [ %., %if.end12 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 728}
!5 = !{!"ssl_session_st", !6, i64 0, !9, i64 8, !7, i64 16, !7, i64 80, !9, i64 592, !7, i64 600, !9, i64 632, !7, i64 640, !10, i64 672, !10, i64 680, !6, i64 688, !10, i64 696, !10, i64 704, !9, i64 712, !7, i64 720, !9, i64 728, !9, i64 736, !9, i64 744, !6, i64 752, !6, i64 756, !10, i64 760, !9, i64 768, !6, i64 776, !11, i64 784, !10, i64 800, !10, i64 808, !12, i64 816, !10, i64 880, !10, i64 888, !9, i64 896, !6, i64 904, !10, i64 912, !10, i64 920}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!12 = !{!"", !10, i64 0, !10, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !9, i64 48, !7, i64 56}
!13 = !{!5, !9, i64 736}
!14 = !{!5, !9, i64 744}
!15 = !{!5, !6, i64 752}
!16 = !{!17, !10, i64 2328}
!17 = !{!"ssl_st", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !10, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !18, i64 72, !7, i64 132, !10, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !19, i64 168, !10, i64 1208, !10, i64 1216, !10, i64 1224, !6, i64 1232, !10, i64 1240, !22, i64 1248, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !6, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !10, i64 2120, !7, i64 2128, !10, i64 2144, !10, i64 2152, !10, i64 2160, !10, i64 2168, !7, i64 2176, !10, i64 2192, !10, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !10, i64 2328, !10, i64 2336, !10, i64 2344, !9, i64 2352, !10, i64 2360, !7, i64 2368, !9, i64 2400, !6, i64 2408, !10, i64 2416, !10, i64 2424, !6, i64 2432, !6, i64 2436, !10, i64 2440, !10, i64 2448, !10, i64 2456, !10, i64 2464, !10, i64 2472, !10, i64 2480, !9, i64 2488, !11, i64 2496, !10, i64 2512, !10, i64 2520, !7, i64 2528, !9, i64 2536, !6, i64 2544, !6, i64 2548, !6, i64 2552, !9, i64 2560, !6, i64 2568, !6, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !23, i64 2600, !10, i64 2904, !6, i64 2912, !10, i64 2920, !10, i64 2928, !10, i64 2936, !6, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !6, i64 2976, !6, i64 2980, !7, i64 2984, !6, i64 2988, !10, i64 2992, !9, i64 3000, !6, i64 3008, !10, i64 3016, !25, i64 3024, !10, i64 3152, !26, i64 3160, !10, i64 7448, !10, i64 7456, !10, i64 7464, !10, i64 7472, !9, i64 7480, !6, i64 7488, !6, i64 7492, !6, i64 7496, !10, i64 7504, !10, i64 7512, !9, i64 7520, !10, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !10, i64 7560, !10, i64 7568, !10, i64 7576, !10, i64 7584, !10, i64 7592, !9, i64 7600}
!18 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 52, !7, i64 56}
!19 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !6, i64 216, !6, i64 220, !10, i64 224, !10, i64 232, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !7, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !20, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !6, i64 984, !6, i64 988, !10, i64 992, !9, i64 1000, !10, i64 1008, !9, i64 1016, !6, i64 1024, !7, i64 1028, !7, i64 1029, !21, i64 1030, !10, i64 1032}
!20 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !6, i64 280, !10, i64 288, !10, i64 296, !6, i64 304, !10, i64 312, !9, i64 320, !10, i64 328, !9, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !6, i64 368, !9, i64 376, !10, i64 384, !6, i64 392, !10, i64 400, !9, i64 408, !10, i64 416, !9, i64 424, !10, i64 432, !9, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !9, i64 480, !9, i64 488, !10, i64 496, !7, i64 504, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552}
!21 = !{!"short", !7, i64 0}
!22 = !{!"ssl_dane_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !9, i64 56}
!23 = !{!"", !7, i64 0, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !21, i64 72, !6, i64 76, !24, i64 80, !6, i64 112, !6, i64 116, !9, i64 120, !10, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !10, i64 160, !9, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !9, i64 232, !10, i64 240, !9, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !10, i64 272, !9, i64 280, !6, i64 288, !7, i64 292, !6, i64 296}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !9, i64 24}
!25 = !{!"srp_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !6, i64 112, !9, i64 120}
!26 = !{!"record_layer_st", !10, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !27, i64 32, !7, i64 80, !7, i64 1616, !10, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !6, i64 4232, !9, i64 4240, !10, i64 4248, !7, i64 4256, !7, i64 4264, !6, i64 4272, !6, i64 4276, !10, i64 4280}
!27 = !{!"ssl3_buffer_st", !10, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40}
!28 = !{!17, !10, i64 7528}
!29 = !{!6, !6, i64 0}
!30 = !{!5, !9, i64 712}
!31 = !{!5, !7, i64 720}
!32 = !{!5, !10, i64 920}
!33 = !{!10, !10, i64 0}
!34 = !{!5, !10, i64 856}
!35 = !{!5, !10, i64 880}
!36 = !{!5, !10, i64 704}
!37 = !{!5, !10, i64 696}
!38 = !{!5, !10, i64 888}
!39 = !{!5, !10, i64 672}
!40 = !{!5, !10, i64 680}
!41 = !{!5, !10, i64 816}
!42 = !{!5, !10, i64 824}
!43 = !{!5, !9, i64 832}
!44 = !{!9, !9, i64 0}
!45 = !{!5, !9, i64 864}
!46 = !{!5, !9, i64 896}
!47 = !{!5, !9, i64 592}
!48 = !{!5, !9, i64 632}
!49 = !{!5, !6, i64 756}
!50 = !{!17, !6, i64 0}
!51 = !{!17, !6, i64 2712}
!52 = !{!17, !10, i64 2952}
!53 = !{!54, !10, i64 968}
!54 = !{!"ssl_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !9, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !9, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !55, i64 120, !7, i64 164, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !11, i64 240, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !9, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !9, i64 336, !10, i64 344, !6, i64 352, !10, i64 360, !10, i64 368, !6, i64 376, !9, i64 384, !7, i64 392, !10, i64 424, !10, i64 432, !10, i64 440, !6, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !56, i64 536, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !25, i64 792, !57, i64 920, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !6, i64 984, !6, i64 988, !10, i64 992, !10, i64 1000, !9, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !9, i64 1040, !10, i64 1048, !10, i64 1056, !6, i64 1064, !10, i64 1072, !10, i64 1080, !10, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !10, i64 1568, !10, i64 1576, !9, i64 1584, !9, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!55 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!56 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !7, i64 76, !9, i64 80, !10, i64 88, !9, i64 96, !10, i64 104, !10, i64 112, !9, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !9, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !7, i64 192}
!57 = !{!"dane_ctx_st", !10, i64 0, !10, i64 8, !7, i64 16, !9, i64 24}
!58 = !{!17, !10, i64 2360}
!59 = !{!54, !10, i64 432}
!60 = !{!17, !10, i64 2472}
!61 = !{!54, !10, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!54, !9, i64 88}
!65 = !{!17, !10, i64 8}
!66 = !{!67, !10, i64 192}
!67 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216}
!68 = !{!69, !6, i64 96}
!69 = !{!"ssl3_enc_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !9, i64 56, !10, i64 64, !9, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!70 = !{!67, !6, i64 0}
!71 = !{!17, !9, i64 2288}
!72 = !{!5, !6, i64 0}
!73 = !{!17, !9, i64 168}
!74 = !{!5, !6, i64 904}
!75 = !{!54, !6, i64 80}
!76 = !{!54, !10, i64 48}
!77 = !{!54, !10, i64 112}
!78 = !{!54, !10, i64 72}
!79 = distinct !{!79, !63}
!80 = !{!81, !10, i64 648}
!81 = !{!"", !6, i64 0, !6, i64 4, !7, i64 8, !9, i64 40, !7, i64 48, !9, i64 80, !7, i64 88, !82, i64 344, !9, i64 360, !7, i64 368, !82, i64 624, !9, i64 640, !10, i64 648}
!82 = !{!"", !10, i64 0, !9, i64 8}
!83 = !{!81, !9, i64 40}
!84 = !{!17, !6, i64 2408}
!85 = !{!17, !9, i64 2488}
!86 = !{!5, !10, i64 808}
!87 = !{!5, !10, i64 800}
!88 = !{!54, !10, i64 64}
!89 = !{!5, !10, i64 912}
!90 = distinct !{!90, !63}
!91 = !{!5, !6, i64 688}
!92 = !{!54, !10, i64 104}
!93 = !{!54, !10, i64 8}
!94 = !{!17, !6, i64 68}
!95 = !{!5, !10, i64 760}
!96 = !{!5, !9, i64 840}
!97 = !{!5, !6, i64 852}
!98 = !{!17, !10, i64 2808}
!99 = !{!17, !10, i64 2816}
!100 = !{!17, !10, i64 2792}
!101 = !{!17, !10, i64 2800}
!102 = !{!17, !10, i64 2784}
!103 = !{!104, !21, i64 0}
!104 = !{!"tls_session_ticket_ext_st", !21, i64 0, !10, i64 8}
!105 = !{!104, !10, i64 8}
!106 = distinct !{!106, !63}
!107 = !{!54, !10, i64 96}
!108 = !{!54, !10, i64 288}
!109 = !{!54, !10, i64 200}
!110 = !{!54, !10, i64 208}
!111 = !{!54, !10, i64 216}
!112 = !{!54, !10, i64 224}
!113 = !{!54, !10, i64 232}
