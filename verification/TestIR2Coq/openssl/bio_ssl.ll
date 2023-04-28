; ModuleID = 'ssl/bio_ssl.c'
source_filename = "ssl/bio_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type opaque
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
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

@methods_sslp = internal constant %struct.bio_method_st { i32 519, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @ssl_write, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*, i64, i64*)* @ssl_read, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*)* @ssl_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @ssl_ctrl, i32 (%struct.bio_st*)* @ssl_new, i32 (%struct.bio_st*)* @ssl_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @ssl_callback_ctrl }, align 8
@.str = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ssl/bio_ssl.c\00", align 1
@__func__.ssl_new = private unnamed_addr constant [8 x i8] c"ssl_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_ssl() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_sslp
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_buffer_ssl_connect(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_f_buffer() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @BIO_new_ssl_connect(%struct.ssl_ctx_st* noundef %ctx) #6
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef nonnull %call2) #5
  %cmp7 = icmp eq %struct.bio_st* %call6, null
  br i1 %cmp7, label %err, label %cleanup

err:                                              ; preds = %if.end5, %if.end
  %call10 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  %call11 = tail call i32 @BIO_free(%struct.bio_st* noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry, %err
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ null, %entry ], [ %call6, %if.end5 ]
  ret %struct.bio_st* %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_ssl_connect(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_connect() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bio_st* @BIO_new_ssl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 1) #6
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call2, %struct.bio_st* noundef nonnull %call1) #5
  %cmp7 = icmp eq %struct.bio_st* %call6, null
  br i1 %cmp7, label %err, label %cleanup

err:                                              ; preds = %if.end5, %if.end
  %call10 = tail call i32 @BIO_free(%struct.bio_st* noundef %call2) #5
  %call11 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry, %err
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ null, %entry ], [ %call6, %if.end5 ]
  ret %struct.bio_st* %retval.0
}

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_connect() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_ssl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %client) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_sslp) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %ctx) #5
  %cmp3 = icmp eq %struct.ssl_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 %client, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef nonnull %call2) #5
  br label %if.end8

if.else:                                          ; preds = %if.end6
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %call2) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %0 = bitcast %struct.ssl_st* %call2 to i8*
  %call9 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 109, i64 noundef 1, i8* noundef nonnull %0) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then4
  %retval.0 = phi %struct.bio_st* [ null, %if.then4 ], [ %call1, %if.end8 ], [ null, %entry ]
  ret %struct.bio_st* %retval.0
}

declare %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @SSL_set_accept_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_ssl_copy_session_id(%struct.bio_st* noundef %t, %struct.bio_st* noundef %f) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %t, i32 noundef 519) #5
  %call1 = tail call %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef %f, i32 noundef 519) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %call) #5
  %call4 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %call1) #5
  %ssl = bitcast i8* %call3 to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !4
  %cmp5 = icmp eq %struct.ssl_st* %0, null
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %ssl7 = bitcast i8* %call4 to %struct.ssl_st**
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl7, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.ssl_st* %1, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false6
  %call13 = tail call i32 @SSL_copy_session_id(%struct.ssl_st* noundef nonnull %0, %struct.ssl_st* noundef nonnull %1) #5
  %tobool.not = icmp ne i32 %call13, 0
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %lor.lhs.false6, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false6 ], [ 0, %if.end ], [ %., %if.end10 ]
  ret i32 %retval.0
}

declare %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @SSL_copy_session_id(%struct.ssl_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BIO_ssl_shutdown(%struct.bio_st* noundef %b) local_unnamed_addr #1 {
entry:
  %cmp.not17 = icmp eq %struct.bio_st* %b, null
  br i1 %cmp.not17, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %b.addr.018 = phi %struct.bio_st* [ %call9, %for.inc ], [ %b, %entry ]
  %call = tail call i32 @BIO_method_type(%struct.bio_st* noundef nonnull %b.addr.018) #5
  %cmp1.not = icmp eq i32 %call, 519
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call2 = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %b.addr.018) #5
  %cmp3.not = icmp eq i8* %call2, null
  br i1 %cmp3.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ssl = bitcast i8* %call2 to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !4
  %cmp4.not = icmp eq %struct.ssl_st* %0, null
  br i1 %cmp4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call7 = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef nonnull %0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true, %if.then5, %for.body
  %call9 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %b.addr.018) #5
  %cmp.not = icmp eq %struct.bio_st* %call9, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

declare i32 @BIO_method_type(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @SSL_shutdown(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_write(%struct.bio_st* noundef %b, i8* noundef %buf, i64 noundef %size, i64* noundef %written) #1 {
entry:
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %ssl1 = bitcast i8* %call to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl1, align 8, !tbaa !4
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  %call2 = tail call i32 @ssl_write_internal(%struct.ssl_st* noundef %0, i8* noundef nonnull %buf, i64 noundef %size, i64* noundef %written) #5
  %call3 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %0, i32 noundef %call2) #5
  switch i32 %call3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb27
    i32 2, label %sw.bb28
    i32 4, label %sw.bb29
    i32 7, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %renegotiate_count = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %renegotiate_count to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !13
  %cmp4.not = icmp eq i64 %2, 0
  br i1 %cmp4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %sw.bb
  %3 = load i64, i64* %written, align 8, !tbaa !14
  %byte_count = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %byte_count to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !15
  %add = add i64 %5, %3
  store i64 %add, i64* %4, align 8, !tbaa !15
  %cmp8 = icmp ugt i64 %add, %2
  br i1 %cmp8, label %if.end13.thread, label %if.end13

if.end13.thread:                                  ; preds = %if.then5
  store i64 0, i64* %4, align 8, !tbaa !15
  %num_renegotiates = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %num_renegotiates to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !16
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %6, align 8, !tbaa !16
  %call11 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %0) #5
  br label %sw.epilog

if.end13:                                         ; preds = %if.then5, %sw.bb
  %renegotiate_timeout = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %renegotiate_timeout to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !17
  %cmp14 = icmp eq i64 %9, 0
  br i1 %cmp14, label %sw.epilog, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i64 @time(i64* noundef null) #5
  %last_time = getelementptr inbounds i8, i8* %call, i64 40
  %10 = bitcast i8* %last_time to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !18
  %12 = load i64, i64* %8, align 8, !tbaa !17
  %add18 = add i64 %12, %11
  %cmp19 = icmp ugt i64 %call16, %add18
  br i1 %cmp19, label %if.then20, label %sw.epilog

if.then20:                                        ; preds = %if.then15
  store i64 %call16, i64* %10, align 8, !tbaa !18
  %num_renegotiates22 = getelementptr inbounds i8, i8* %call, i64 8
  %13 = bitcast i8* %num_renegotiates22 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !16
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, i32* %13, align 8, !tbaa !16
  %call24 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %0) #5
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 10) #5
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 9) #5
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13.thread, %if.then15, %if.then20, %if.end, %sw.bb30, %if.end13, %sw.bb29, %sw.bb28, %sw.bb27
  %retry_reason.0 = phi i32 [ 0, %if.end ], [ 2, %sw.bb30 ], [ 1, %sw.bb29 ], [ 0, %sw.bb28 ], [ 0, %sw.bb27 ], [ 0, %if.end13 ], [ 0, %if.then20 ], [ 0, %if.then15 ], [ 0, %if.end13.thread ]
  tail call void @BIO_set_retry_reason(%struct.bio_st* noundef %b, i32 noundef %retry_reason.0) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %call2, %sw.epilog ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_read(%struct.bio_st* noundef %b, i8* noundef %buf, i64 noundef %size, i64* noundef %readbytes) #1 {
entry:
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %ssl1 = bitcast i8* %call to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl1, align 8, !tbaa !4
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  %call2 = tail call i32 @ssl_read_internal(%struct.ssl_st* noundef %0, i8* noundef nonnull %buf, i64 noundef %size, i64* noundef %readbytes) #5
  %call3 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %0, i32 noundef %call2) #5
  switch i32 %call3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb28
    i32 4, label %sw.bb29
    i32 8, label %sw.bb30
    i32 7, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end
  %renegotiate_count = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %renegotiate_count to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !13
  %cmp4.not = icmp eq i64 %2, 0
  br i1 %cmp4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %sw.bb
  %3 = load i64, i64* %readbytes, align 8, !tbaa !14
  %byte_count = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %byte_count to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !15
  %add = add i64 %5, %3
  store i64 %add, i64* %4, align 8, !tbaa !15
  %cmp8 = icmp ugt i64 %add, %2
  br i1 %cmp8, label %if.end13.thread, label %if.end13

if.end13.thread:                                  ; preds = %if.then5
  store i64 0, i64* %4, align 8, !tbaa !15
  %num_renegotiates = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %num_renegotiates to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !16
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %6, align 8, !tbaa !16
  %call11 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %0) #5
  br label %sw.epilog

if.end13:                                         ; preds = %if.then5, %sw.bb
  %renegotiate_timeout = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %renegotiate_timeout to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !17
  %cmp14 = icmp eq i64 %9, 0
  br i1 %cmp14, label %sw.epilog, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i64 @time(i64* noundef null) #5
  %last_time = getelementptr inbounds i8, i8* %call, i64 40
  %10 = bitcast i8* %last_time to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !18
  %12 = load i64, i64* %8, align 8, !tbaa !17
  %add18 = add i64 %12, %11
  %cmp19 = icmp ugt i64 %call16, %add18
  br i1 %cmp19, label %if.then20, label %sw.epilog

if.then20:                                        ; preds = %if.then15
  store i64 %call16, i64* %10, align 8, !tbaa !18
  %num_renegotiates22 = getelementptr inbounds i8, i8* %call, i64 8
  %13 = bitcast i8* %num_renegotiates22 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !16
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, i32* %13, align 8, !tbaa !16
  %call24 = tail call i32 @SSL_renegotiate(%struct.ssl_st* noundef %0) #5
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 9) #5
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 10) #5
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13.thread, %if.then15, %if.then20, %if.end, %if.end13, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27
  %retry_reason.0 = phi i32 [ 0, %if.end ], [ 2, %sw.bb31 ], [ 3, %sw.bb30 ], [ 1, %sw.bb29 ], [ 0, %sw.bb28 ], [ 0, %sw.bb27 ], [ 0, %if.end13 ], [ 0, %if.then20 ], [ 0, %if.then15 ], [ 0, %if.end13.thread ]
  tail call void @BIO_set_retry_reason(%struct.bio_st* noundef %b, i32 noundef %retry_reason.0) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %call2, %sw.epilog ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_puts(%struct.bio_st* noundef %bp, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #7
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @BIO_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ssl_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %ssl2 = bitcast i8* %call to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl2, align 8, !tbaa !4
  %cmp = icmp eq %struct.ssl_st* %0, null
  %cmp3 = icmp ne i32 %cmd, 109
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %sw.default145 [
    i32 1, label %sw.bb
    i32 3, label %cleanup
    i32 119, label %sw.bb30
    i32 127, label %sw.bb35
    i32 125, label %sw.bb41
    i32 126, label %sw.bb46
    i32 109, label %sw.bb47
    i32 110, label %sw.bb71
    i32 8, label %sw.bb77
    i32 9, label %sw.bb80
    i32 13, label %sw.bb82
    i32 10, label %sw.bb84
    i32 11, label %sw.bb95
    i32 6, label %sw.bb98
    i32 7, label %sw.bb108
    i32 101, label %sw.bb113
    i32 12, label %sw.bb123
    i32 105, label %sw.bb141
    i32 14, label %cleanup
  ]

sw.bb:                                            ; preds = %if.end
  %call4 = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef %0) #5
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 6
  %handshake_func5 = bitcast {}** %handshake_func to i32 (%struct.ssl_st*)**
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func5, align 8, !tbaa !19
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !32
  %ssl_connect = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 7
  %3 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_connect, align 8, !tbaa !33
  %cmp6 = icmp eq i32 (%struct.ssl_st*)* %1, %3
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef nonnull %0) #5
  br label %if.end14

if.else:                                          ; preds = %sw.bb
  %ssl_accept = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 6
  %4 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_accept, align 8, !tbaa !35
  %cmp11 = icmp eq i32 (%struct.ssl_st*)* %1, %4
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef nonnull %0) #5
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %if.then7
  %call15 = tail call i32 @SSL_clear(%struct.ssl_st* noundef nonnull %0) #5
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end14
  %cmp18.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

if.else21:                                        ; preds = %if.end17
  %rbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 2
  %5 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !36
  %cmp22.not = icmp eq %struct.bio_st* %5, null
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.else21
  %call25 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %5, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %tobool31.not = icmp eq i64 %num, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %sw.bb30
  tail call void @SSL_set_connect_state(%struct.ssl_st* noundef %0) #5
  br label %cleanup

if.else33:                                        ; preds = %sw.bb30
  tail call void @SSL_set_accept_state(%struct.ssl_st* noundef %0) #5
  br label %cleanup

sw.bb35:                                          ; preds = %if.end
  %renegotiate_timeout = getelementptr inbounds i8, i8* %call, i64 32
  %6 = bitcast i8* %renegotiate_timeout to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !17
  %cmp36 = icmp slt i64 %num, 60
  %spec.store.select = select i1 %cmp36, i64 5, i64 %num
  store i64 %spec.store.select, i64* %6, align 8, !tbaa !17
  %call40 = tail call i64 @time(i64* noundef null) #5
  %last_time = getelementptr inbounds i8, i8* %call, i64 40
  %8 = bitcast i8* %last_time to i64*
  store i64 %call40, i64* %8, align 8, !tbaa !18
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  %renegotiate_count = getelementptr inbounds i8, i8* %call, i64 16
  %9 = bitcast i8* %renegotiate_count to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !13
  %cmp42 = icmp sgt i64 %num, 511
  br i1 %cmp42, label %if.then43, label %cleanup

if.then43:                                        ; preds = %sw.bb41
  store i64 %num, i64* %9, align 8, !tbaa !13
  br label %cleanup

sw.bb46:                                          ; preds = %if.end
  %num_renegotiates = getelementptr inbounds i8, i8* %call, i64 8
  %11 = bitcast i8* %num_renegotiates to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !16
  %conv = sext i32 %12 to i64
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  br i1 %cmp, label %if.end57, label %if.then50

if.then50:                                        ; preds = %sw.bb47
  %call51 = tail call i32 @ssl_free(%struct.bio_st* noundef %b) #6
  %call52 = tail call i32 @ssl_new(%struct.bio_st* noundef %b) #6
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup, label %if.end55

if.end55:                                         ; preds = %if.then50
  %call56 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %sw.bb47
  %bs.0.in = phi i8* [ %call56, %if.end55 ], [ %call, %sw.bb47 ]
  %conv58 = trunc i64 %num to i32
  tail call void @BIO_set_shutdown(%struct.bio_st* noundef %b, i32 noundef %conv58) #5
  %13 = bitcast i8* %ptr to %struct.ssl_st*
  %14 = bitcast i8* %bs.0.in to i8**
  store i8* %ptr, i8** %14, align 8, !tbaa !4
  %call60 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %13) #5
  %cmp61.not = icmp eq %struct.bio_st* %call60, null
  br i1 %cmp61.not, label %if.end70, label %if.then63

if.then63:                                        ; preds = %if.end57
  %cmp64.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp64.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.then63
  %call67 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call60, %struct.bio_st* noundef nonnull %call1) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then63
  tail call void @BIO_set_next(%struct.bio_st* noundef %b, %struct.bio_st* noundef nonnull %call60) #5
  %call69 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call60) #5
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end57
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #5
  br label %cleanup

sw.bb71:                                          ; preds = %if.end
  %cmp72.not = icmp eq i8* %ptr, null
  br i1 %cmp72.not, label %cleanup, label %if.then74

if.then74:                                        ; preds = %sw.bb71
  %15 = bitcast i8* %ptr to %struct.ssl_st**
  store %struct.ssl_st* %0, %struct.ssl_st** %15, align 8, !tbaa !37
  br label %cleanup

sw.bb77:                                          ; preds = %if.end
  %call78 = tail call i32 @BIO_get_shutdown(%struct.bio_st* noundef %b) #5
  %conv79 = sext i32 %call78 to i64
  br label %cleanup

sw.bb80:                                          ; preds = %if.end
  %conv81 = trunc i64 %num to i32
  tail call void @BIO_set_shutdown(%struct.bio_st* noundef %b, i32 noundef %conv81) #5
  br label %cleanup

sw.bb82:                                          ; preds = %if.end
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 3
  %16 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !38
  %call83 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %16, i32 noundef 13, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb84:                                          ; preds = %if.end
  %call85 = tail call i32 @SSL_pending(%struct.ssl_st* noundef %0) #5
  %conv86 = sext i32 %call85 to i64
  %cmp87 = icmp eq i32 %call85, 0
  br i1 %cmp87, label %if.then89, label %cleanup

if.then89:                                        ; preds = %sw.bb84
  %rbio90 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 2
  %17 = load %struct.bio_st*, %struct.bio_st** %rbio90, align 8, !tbaa !36
  %call91 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %17, i32 noundef 10, i64 noundef 0, i8* noundef null) #5
  %sext = shl i64 %call91, 32
  %conv93 = ashr exact i64 %sext, 32
  br label %cleanup

sw.bb95:                                          ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  %wbio96 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 3
  %18 = load %struct.bio_st*, %struct.bio_st** %wbio96, align 8, !tbaa !38
  %call97 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %18, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #5
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #5
  br label %cleanup

sw.bb98:                                          ; preds = %if.end
  %cmp99.not = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp99.not, label %cleanup, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %sw.bb98
  %rbio102 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 2
  %19 = load %struct.bio_st*, %struct.bio_st** %rbio102, align 8, !tbaa !36
  %cmp103.not = icmp eq %struct.bio_st* %call1, %19
  br i1 %cmp103.not, label %cleanup, label %if.then105

if.then105:                                       ; preds = %land.lhs.true101
  %call106 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef nonnull %call1) #5
  tail call void @SSL_set_bio(%struct.ssl_st* noundef nonnull %0, %struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef nonnull %call1) #5
  br label %cleanup

sw.bb108:                                         ; preds = %if.end
  %20 = bitcast i8* %ptr to %struct.bio_st*
  %cmp109 = icmp eq %struct.bio_st* %20, %b
  br i1 %cmp109, label %if.then111, label %cleanup

if.then111:                                       ; preds = %sw.bb108
  tail call void @SSL_set_bio(%struct.ssl_st* noundef %0, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #5
  br label %cleanup

sw.bb113:                                         ; preds = %if.end
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #5
  tail call void @BIO_set_retry_reason(%struct.bio_st* noundef %b, i32 noundef 0) #5
  %call114 = tail call i32 @SSL_do_handshake(%struct.ssl_st* noundef %0) #5
  %conv115 = sext i32 %call114 to i64
  %call117 = tail call i32 @SSL_get_error(%struct.ssl_st* noundef %0, i32 noundef %call114) #5
  switch i32 %call117, label %cleanup [
    i32 2, label %sw.bb118
    i32 3, label %sw.bb119
    i32 7, label %sw.bb120
    i32 4, label %sw.bb122
  ]

sw.bb118:                                         ; preds = %sw.bb113
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 9) #5
  br label %cleanup

sw.bb119:                                         ; preds = %sw.bb113
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 10) #5
  br label %cleanup

sw.bb120:                                         ; preds = %sw.bb113
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  %call121 = tail call i32 @BIO_get_retry_reason(%struct.bio_st* noundef %call1) #5
  tail call void @BIO_set_retry_reason(%struct.bio_st* noundef %b, i32 noundef %call121) #5
  br label %cleanup

sw.bb122:                                         ; preds = %sw.bb113
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef 12) #5
  tail call void @BIO_set_retry_reason(%struct.bio_st* noundef %b, i32 noundef 1) #5
  br label %cleanup

sw.bb123:                                         ; preds = %if.end
  %21 = bitcast i8* %ptr to %struct.bio_st*
  %call124 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %21) #5
  %ssl125 = bitcast i8* %call124 to %struct.ssl_st**
  %22 = load %struct.ssl_st*, %struct.ssl_st** %ssl125, align 8, !tbaa !4
  tail call void @SSL_free(%struct.ssl_st* noundef %22) #5
  %call126 = tail call %struct.ssl_st* @SSL_dup(%struct.ssl_st* noundef %0) #5
  store %struct.ssl_st* %call126, %struct.ssl_st** %ssl125, align 8, !tbaa !4
  %num_renegotiates128 = getelementptr inbounds i8, i8* %call, i64 8
  %23 = bitcast i8* %num_renegotiates128 to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !16
  %num_renegotiates129 = getelementptr inbounds i8, i8* %call124, i64 8
  %25 = bitcast i8* %num_renegotiates129 to i32*
  store i32 %24, i32* %25, align 8, !tbaa !16
  %renegotiate_count130 = getelementptr inbounds i8, i8* %call, i64 16
  %renegotiate_count131 = getelementptr inbounds i8, i8* %call124, i64 16
  %26 = bitcast i8* %renegotiate_count130 to <2 x i64>*
  %27 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !14
  %28 = bitcast i8* %renegotiate_count131 to <2 x i64>*
  store <2 x i64> %27, <2 x i64>* %28, align 8, !tbaa !14
  %renegotiate_timeout133 = getelementptr inbounds i8, i8* %call, i64 32
  %renegotiate_timeout134 = getelementptr inbounds i8, i8* %call124, i64 32
  %29 = bitcast i8* %renegotiate_timeout133 to <2 x i64>*
  %30 = load <2 x i64>, <2 x i64>* %29, align 8, !tbaa !14
  %31 = bitcast i8* %renegotiate_timeout134 to <2 x i64>*
  store <2 x i64> %30, <2 x i64>* %31, align 8, !tbaa !14
  %cmp138 = icmp ne %struct.ssl_st* %call126, null
  %32 = zext i1 %cmp138 to i64
  br label %cleanup

sw.bb141:                                         ; preds = %if.end
  %rbio142 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 2
  %33 = load %struct.bio_st*, %struct.bio_st** %rbio142, align 8, !tbaa !36
  %call143 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %33, i32 noundef 105, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.default145:                                    ; preds = %if.end
  %rbio146 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 2
  %34 = load %struct.bio_st*, %struct.bio_st** %rbio146, align 8, !tbaa !36
  %call147 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %34, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb35, %sw.bb46, %if.end70, %sw.bb77, %sw.bb80, %sw.bb82, %sw.bb95, %sw.bb123, %sw.bb141, %sw.default145, %if.then23, %if.then19, %if.else33, %if.then32, %if.then43, %sw.bb41, %if.then74, %if.then89, %sw.bb84, %if.then105, %land.lhs.true101, %sw.bb98, %if.then111, %sw.bb108, %sw.bb113, %sw.bb122, %sw.bb120, %sw.bb119, %sw.bb118, %if.end14, %if.else21, %if.end, %sw.bb71, %if.end, %if.then50, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.then50 ], [ %call147, %sw.default145 ], [ %call143, %sw.bb141 ], [ %32, %sw.bb123 ], [ %conv115, %sw.bb113 ], [ %conv115, %sw.bb122 ], [ %conv115, %sw.bb120 ], [ %conv115, %sw.bb119 ], [ %conv115, %sw.bb118 ], [ 1, %if.then111 ], [ 1, %sw.bb108 ], [ 1, %if.then105 ], [ 1, %land.lhs.true101 ], [ 1, %sw.bb98 ], [ %call97, %sw.bb95 ], [ %conv93, %if.then89 ], [ %conv86, %sw.bb84 ], [ %call83, %sw.bb82 ], [ 1, %sw.bb80 ], [ %conv79, %sw.bb77 ], [ 1, %if.then74 ], [ 1, %if.end70 ], [ %conv, %sw.bb46 ], [ %10, %if.then43 ], [ %10, %sw.bb41 ], [ %7, %sw.bb35 ], [ 1, %if.then32 ], [ 1, %if.else33 ], [ %call20, %if.then19 ], [ %call25, %if.then23 ], [ 0, %if.end14 ], [ 1, %if.else21 ], [ 0, %if.end ], [ 0, %sw.bb71 ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_new(%struct.bio_st* noundef %bi) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.ssl_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BIO_set_init(%struct.bio_st* noundef %bi, i32 noundef 0) #5
  tail call void @BIO_set_data(%struct.bio_st* noundef %bi, i8* noundef nonnull %call) #5
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bi, i32 noundef -1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ssl_free(%struct.bio_st* noundef %a) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %a) #5
  %ssl = bitcast i8* %call to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.ssl_st* %0, null
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @SSL_shutdown(%struct.ssl_st* noundef nonnull %0) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %call6 = tail call i32 @BIO_get_shutdown(%struct.bio_st* noundef nonnull %a) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @BIO_get_init(%struct.bio_st* noundef nonnull %a) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then7
  %1 = load %struct.ssl_st*, %struct.ssl_st** %ssl, align 8, !tbaa !4
  tail call void @SSL_free(%struct.ssl_st* noundef %1) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %a, i32 noundef -1) #5
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %a, i32 noundef 0) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end5
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 88) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ssl_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %cond = icmp eq i32 %cmd, 14
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ssl1 = bitcast i8* %call to %struct.ssl_st**
  %0 = load %struct.ssl_st*, %struct.ssl_st** %ssl1, align 8, !tbaa !4
  %rbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %0, i64 0, i32 2
  %1 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !36
  %call2 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef %1, i32 noundef 14, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  %ret.0 = phi i64 [ %call2, %sw.bb ], [ 0, %entry ]
  ret i64 %ret.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_write_internal(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

declare i32 @SSL_get_error(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_renegotiate(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #3

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_retry_reason(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_read_internal(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_clear(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @BIO_set_shutdown(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @BIO_set_next(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_get_shutdown(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @SSL_pending(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @SSL_set_bio(%struct.ssl_st* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @SSL_do_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @BIO_get_retry_reason(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.ssl_st* @SSL_dup(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @BIO_get_init(%struct.bio_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"bio_ssl_st", !6, i64 0, !9, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !10, i64 16}
!14 = !{!10, !10, i64 0}
!15 = !{!5, !10, i64 24}
!16 = !{!5, !9, i64 8}
!17 = !{!5, !10, i64 32}
!18 = !{!5, !10, i64 40}
!19 = !{!20, !6, i64 48}
!20 = !{!"ssl_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !6, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !21, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !10, i64 152, !10, i64 160, !22, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !9, i64 1232, !6, i64 1240, !25, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !9, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !10, i64 2272, !7, i64 2280, !10, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !10, i64 2352, !6, i64 2360, !7, i64 2368, !10, i64 2400, !9, i64 2408, !6, i64 2416, !6, i64 2424, !9, i64 2432, !9, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !10, i64 2488, !26, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !10, i64 2536, !9, i64 2544, !9, i64 2548, !9, i64 2552, !10, i64 2560, !9, i64 2568, !9, i64 2572, !10, i64 2576, !10, i64 2584, !10, i64 2592, !27, i64 2600, !6, i64 2904, !9, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !9, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !9, i64 2976, !9, i64 2980, !7, i64 2984, !9, i64 2988, !6, i64 2992, !10, i64 3000, !9, i64 3008, !6, i64 3016, !29, i64 3024, !6, i64 3152, !30, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !10, i64 7480, !9, i64 7488, !9, i64 7492, !9, i64 7496, !6, i64 7504, !6, i64 7512, !10, i64 7520, !6, i64 7528, !10, i64 7536, !10, i64 7544, !10, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !10, i64 7600}
!21 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !7, i64 52, !7, i64 56}
!22 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !9, i64 216, !9, i64 220, !6, i64 224, !6, i64 232, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !7, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !23, i64 280, !7, i64 840, !10, i64 904, !7, i64 912, !10, i64 976, !9, i64 984, !9, i64 988, !6, i64 992, !10, i64 1000, !6, i64 1008, !10, i64 1016, !9, i64 1024, !7, i64 1028, !7, i64 1029, !24, i64 1030, !6, i64 1032}
!23 = !{!"", !7, i64 0, !10, i64 128, !7, i64 136, !10, i64 264, !10, i64 272, !9, i64 280, !6, i64 288, !6, i64 296, !9, i64 304, !6, i64 312, !10, i64 320, !6, i64 328, !10, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !9, i64 368, !10, i64 376, !6, i64 384, !9, i64 392, !6, i64 400, !10, i64 408, !6, i64 416, !10, i64 424, !6, i64 432, !10, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !10, i64 480, !10, i64 488, !6, i64 496, !7, i64 504, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552}
!24 = !{!"short", !7, i64 0}
!25 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 56}
!26 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!27 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !24, i64 72, !9, i64 76, !28, i64 80, !9, i64 112, !9, i64 116, !10, i64 120, !6, i64 128, !10, i64 136, !6, i64 144, !10, i64 152, !6, i64 160, !10, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !10, i64 232, !6, i64 240, !10, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !6, i64 272, !10, i64 280, !9, i64 288, !7, i64 292, !9, i64 296}
!28 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24}
!29 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !9, i64 112, !10, i64 120}
!30 = !{!"record_layer_st", !6, i64 0, !9, i64 8, !9, i64 12, !10, i64 16, !10, i64 24, !31, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !10, i64 4184, !10, i64 4192, !7, i64 4200, !10, i64 4208, !10, i64 4216, !10, i64 4224, !9, i64 4232, !10, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !9, i64 4272, !9, i64 4276, !6, i64 4280}
!31 = !{!"ssl3_buffer_st", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40}
!32 = !{!20, !6, i64 8}
!33 = !{!34, !6, i64 48}
!34 = !{!"ssl_method_st", !9, i64 0, !9, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!35 = !{!34, !6, i64 40}
!36 = !{!20, !6, i64 16}
!37 = !{!6, !6, i64 0}
!38 = !{!20, !6, i64 24}
