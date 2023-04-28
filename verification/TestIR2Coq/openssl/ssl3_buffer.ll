; ModuleID = 'ssl/record/ssl3_buffer.c'
source_filename = "ssl/record/ssl3_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl3_buffer_st = type { i8*, i64, i64, i64, i64, i32 }
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
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"ssl/record/ssl3_buffer.c\00", align 1
@__func__.ssl3_setup_read_buffer = private unnamed_addr constant [23 x i8] c"ssl3_setup_read_buffer\00", align 1
@__func__.ssl3_setup_write_buffer = private unnamed_addr constant [24 x i8] c"ssl3_setup_write_buffer\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @SSL3_BUFFER_set_data(%struct.ssl3_buffer_st* nocapture noundef %b, i8* noundef %d, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %d, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %b, i64 0, i32 0
  %0 = load i8*, i8** %buf, align 8, !tbaa !4
  %call = tail call i8* @memcpy(i8* noundef %0, i8* noundef nonnull %d, i64 noundef %n) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %left = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %b, i64 0, i32 4
  store i64 %n, i64* %left, align 8, !tbaa !11
  %offset = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %b, i64 0, i32 3
  store i64 0, i64* %offset, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL3_BUFFER_clear(%struct.ssl3_buffer_st* nocapture noundef writeonly %b) local_unnamed_addr #2 {
entry:
  %offset = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %b, i64 0, i32 3
  %0 = bitcast i64* %offset to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SSL3_BUFFER_release(%struct.ssl3_buffer_st* nocapture noundef %b) local_unnamed_addr #0 {
entry:
  %buf = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %b, i64 0, i32 0
  %0 = load i8*, i8** %buf, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 33) #4
  store i8* null, i8** %buf, align 8, !tbaa !4
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_setup_read_buffer(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !14
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !26
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !28
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i64 16712, i64 16720
  %buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %3 = load i8*, i8** %buf, align 8, !tbaa !4
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then1, label %cleanup

if.then1:                                         ; preds = %entry
  %call = tail call i32 @ssl_allow_compression(%struct.ssl_st* noundef nonnull %s) #4
  %tobool3.not = icmp eq i32 %call, 0
  %add5 = or i64 %., 1024
  %spec.select = select i1 %tobool3.not, i64 %., i64 %add5
  %default_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 1
  %4 = load i64, i64* %default_len, align 8, !tbaa !30
  %cmp7 = icmp ugt i64 %4, %spec.select
  %len.1 = select i1 %cmp7, i64 %4, i64 %spec.select
  %call11 = tail call i8* @CRYPTO_malloc(i64 noundef %len.1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 63) #4
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then1
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ssl3_setup_read_buffer, i64 0, i64 0)) #4
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end14:                                         ; preds = %if.then1
  store i8* %call11, i8** %buf, align 8, !tbaa !4
  %len16 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 2
  store i64 %len.1, i64* %len16, align 8, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 1, %if.end14 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @ssl_allow_compression(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_setup_write_buffer(%struct.ssl_st* noundef %s, i64 noundef %numwpipes, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %numwpipes1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 4
  store i64 %numwpipes, i64* %numwpipes1, align 8, !tbaa !32
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !14
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !26
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !28
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i64 5, i64 14
  %call = tail call i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef nonnull %s) #4
  %add = add i32 %call, 80
  %conv = zext i32 %add to i64
  %add3 = add nuw nsw i64 %., %conv
  %call5 = tail call i32 @ssl_allow_compression(%struct.ssl_st* noundef nonnull %s) #4
  %tobool6.not = icmp eq i32 %call5, 0
  %len.addr.0.v = select i1 %tobool6.not, i64 7, i64 1031
  %len.addr.0 = add nuw nsw i64 %add3, %len.addr.0.v
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %3 = load i64, i64* %options, align 8, !tbaa !33
  %and10 = and i64 %3, 2048
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.then
  %add14 = add nuw nsw i64 %., 87
  %add15 = add nuw nsw i64 %add14, %len.addr.0
  br label %if.end17

if.end17:                                         ; preds = %if.then, %if.then12, %entry
  %len.addr.1 = phi i64 [ %len.addr.0, %if.then ], [ %add15, %if.then12 ], [ %len, %entry ]
  %cmp1985.not = icmp eq i64 %numwpipes, 0
  br i1 %cmp1985.not, label %cleanup47, label %for.body

for.body:                                         ; preds = %if.end17, %for.inc
  %currpipe.086 = phi i64 [ %inc, %for.inc ], [ 0, %if.end17 ]
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %currpipe.086
  %len21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %currpipe.086, i32 2
  %4 = load i64, i64* %len21, align 8, !tbaa !31
  %cmp22.not = icmp eq i64 %4, %len.addr.1
  %buf27.phi.trans.insert = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %arrayidx, i64 0, i32 0
  %.pre = load i8*, i8** %buf27.phi.trans.insert, align 8, !tbaa !4
  br i1 %cmp22.not, label %if.end26, label %if.end26.thread

if.end26.thread:                                  ; preds = %for.body
  tail call void @CRYPTO_free(i8* noundef %.pre, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #4
  store i8* null, i8** %buf27.phi.trans.insert, align 8, !tbaa !4
  br label %if.then30

if.end26:                                         ; preds = %for.body
  %cmp28 = icmp eq i8* %.pre, null
  br i1 %cmp28, label %if.then30, label %for.inc

if.then30:                                        ; preds = %if.end26.thread, %if.end26
  %call34 = tail call i8* @CRYPTO_malloc(i64 noundef %len.addr.1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #4
  %cmp35 = icmp eq i8* %call34, null
  br i1 %cmp35, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.then30
  store i64 %currpipe.086, i64* %numwpipes1, align 8, !tbaa !32
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl3_setup_write_buffer, i64 0, i64 0)) #4
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup47

if.end42:                                         ; preds = %if.then30
  %buf2791 = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %arrayidx, i64 0, i32 0
  %5 = bitcast %struct.ssl3_buffer_st* %arrayidx to i8*
  %call43 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 48) #4
  store i8* %call34, i8** %buf2791, align 8, !tbaa !4
  store i64 %len.addr.1, i64* %len21, align 8, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %if.end26
  %inc = add nuw i64 %currpipe.086, 1
  %exitcond.not = icmp eq i64 %inc, %numwpipes
  br i1 %exitcond.not, label %cleanup47, label %for.body, !llvm.loop !34

cleanup47:                                        ; preds = %for.inc, %if.end17, %if.then37
  %retval.2 = phi i32 [ 0, %if.then37 ], [ 1, %if.end17 ], [ 1, %for.inc ]
  ret i32 %retval.2
}

declare i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_setup_buffers(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl3_setup_read_buffer(%struct.ssl_st* noundef %s) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ssl3_setup_write_buffer(%struct.ssl_st* noundef %s, i64 noundef 1, i64 noundef 0) #5
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_release_write_buffer(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %numwpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 4
  %0 = load i64, i64* %numwpipes, align 8, !tbaa !32
  %cmp.not15 = icmp eq i64 %0, 0
  br i1 %cmp.not15, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %pipes.016 = phi i64 [ %sub, %if.end ], [ %0, %entry ]
  %sub = add i64 %pipes.016, -1
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %sub
  %app_buffer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %sub, i32 5
  %1 = load i32, i32* %app_buffer, align 8, !tbaa !36
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %app_buffer, align 8, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %while.body
  %buf = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %arrayidx, i64 0, i32 0
  %2 = load i8*, i8** %buf, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 167) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf3 = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %arrayidx, i64 0, i32 0
  store i8* null, i8** %buf3, align 8, !tbaa !4
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !37

while.end:                                        ; preds = %if.end, %entry
  store i64 0, i64* %numwpipes, align 8, !tbaa !32
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_release_read_buffer(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %rbuf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %0 = load i64, i64* %options, align 8, !tbaa !33
  %and = and i64 %0, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %rbuf, i64 0, i32 0
  %1 = load i8*, i8** %buf, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 2
  %2 = load i64, i64* %len, align 8, !tbaa !31
  tail call void @OPENSSL_cleanse(i8* noundef %1, i64 noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %buf1 = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %rbuf, i64 0, i32 0
  %3 = load i8*, i8** %buf1, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #4
  store i8* null, i8** %buf1, align 8, !tbaa !4
  ret i32 1
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ssl3_buffer_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !9, i64 32}
!12 = !{!5, !9, i64 24}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !6, i64 8}
!15 = !{!"ssl_st", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !16, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !9, i64 152, !9, i64 160, !17, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !10, i64 1232, !6, i64 1240, !20, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !10, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !9, i64 2352, !6, i64 2360, !7, i64 2368, !9, i64 2400, !10, i64 2408, !6, i64 2416, !6, i64 2424, !10, i64 2432, !10, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !9, i64 2488, !21, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !9, i64 2536, !10, i64 2544, !10, i64 2548, !10, i64 2552, !9, i64 2560, !10, i64 2568, !10, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !22, i64 2600, !6, i64 2904, !10, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !10, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !10, i64 2976, !10, i64 2980, !7, i64 2984, !10, i64 2988, !6, i64 2992, !9, i64 3000, !10, i64 3008, !6, i64 3016, !24, i64 3024, !6, i64 3152, !25, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !9, i64 7480, !10, i64 7488, !10, i64 7492, !10, i64 7496, !6, i64 7504, !6, i64 7512, !9, i64 7520, !6, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !9, i64 7600}
!16 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !7, i64 52, !7, i64 56}
!17 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !10, i64 216, !10, i64 220, !6, i64 224, !6, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !7, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !18, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !10, i64 984, !10, i64 988, !6, i64 992, !9, i64 1000, !6, i64 1008, !9, i64 1016, !10, i64 1024, !7, i64 1028, !7, i64 1029, !19, i64 1030, !6, i64 1032}
!18 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !10, i64 280, !6, i64 288, !6, i64 296, !10, i64 304, !6, i64 312, !9, i64 320, !6, i64 328, !9, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !10, i64 368, !9, i64 376, !6, i64 384, !10, i64 392, !6, i64 400, !9, i64 408, !6, i64 416, !9, i64 424, !6, i64 432, !9, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !9, i64 480, !9, i64 488, !6, i64 496, !7, i64 504, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552}
!19 = !{!"short", !7, i64 0}
!20 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !9, i64 56}
!21 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!22 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !19, i64 72, !10, i64 76, !23, i64 80, !10, i64 112, !10, i64 116, !9, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !9, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !9, i64 232, !6, i64 240, !9, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !6, i64 272, !9, i64 280, !10, i64 288, !7, i64 292, !10, i64 296}
!23 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!24 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !10, i64 112, !9, i64 120}
!25 = !{!"record_layer_st", !6, i64 0, !10, i64 8, !10, i64 12, !9, i64 16, !9, i64 24, !5, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !10, i64 4232, !9, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !10, i64 4272, !10, i64 4276, !6, i64 4280}
!26 = !{!27, !6, i64 192}
!27 = !{!"ssl_method_st", !10, i64 0, !10, i64 4, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!28 = !{!29, !10, i64 96}
!29 = !{!"ssl3_enc_method", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !9, i64 72, !6, i64 80, !6, i64 88, !10, i64 96, !6, i64 104, !6, i64 112, !6, i64 120}
!30 = !{!5, !9, i64 8}
!31 = !{!5, !9, i64 16}
!32 = !{!15, !9, i64 3184}
!33 = !{!15, !9, i64 2536}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!5, !10, i64 40}
!37 = distinct !{!37, !35}
