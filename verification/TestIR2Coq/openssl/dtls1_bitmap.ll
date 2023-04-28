; ModuleID = 'ssl/record/dtls1_bitmap.c'
source_filename = "ssl/record/dtls1_bitmap.c"
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

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_record_replay_check(%struct.ssl_st* noundef %s, %struct.dtls1_bitmap_st* nocapture noundef readonly %bitmap) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 0
  %arraydecay1 = getelementptr inbounds %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st* %bitmap, i64 0, i32 1, i64 0
  %call = tail call fastcc i32 @satsub64be(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay1) #4
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub nsw i32 0, %call
  %cmp5 = icmp ugt i32 %sub, 63
  br i1 %cmp5, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end
  %conv = zext i32 %sub to i64
  %map = getelementptr inbounds %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st* %bitmap, i64 0, i32 0
  %0 = load i64, i64* %map, align 8, !tbaa !4
  %shl = shl nuw i64 1, %conv
  %and = and i64 %0, %shl
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.else, %entry
  %arraydecay13 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0
  tail call void @SSL3_RECORD_set_seq_num(%struct.ssl3_record_st* noundef nonnull %arraydecay13, i8* noundef nonnull %arraydecay) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.else ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @satsub64be(i8* nocapture noundef readonly %v1, i8* nocapture noundef readonly %v2) unnamed_addr #1 {
entry:
  %incdec.ptr = getelementptr inbounds i8, i8* %v1, i64 1
  %0 = load i8, i8* %v1, align 1, !tbaa !9
  %conv = zext i8 %0 to i64
  %shl = shl nuw i64 %conv, 56
  %incdec.ptr1 = getelementptr inbounds i8, i8* %v1, i64 2
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !9
  %conv2 = zext i8 %1 to i64
  %shl3 = shl nuw nsw i64 %conv2, 48
  %or = or i64 %shl3, %shl
  %incdec.ptr4 = getelementptr inbounds i8, i8* %v1, i64 3
  %2 = load i8, i8* %incdec.ptr1, align 1, !tbaa !9
  %conv5 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %conv5, 40
  %or7 = or i64 %or, %shl6
  %incdec.ptr8 = getelementptr inbounds i8, i8* %v1, i64 4
  %3 = load i8, i8* %incdec.ptr4, align 1, !tbaa !9
  %conv9 = zext i8 %3 to i64
  %shl10 = shl nuw nsw i64 %conv9, 32
  %or11 = or i64 %or7, %shl10
  %incdec.ptr12 = getelementptr inbounds i8, i8* %v1, i64 5
  %4 = load i8, i8* %incdec.ptr8, align 1, !tbaa !9
  %conv13 = zext i8 %4 to i64
  %shl14 = shl nuw nsw i64 %conv13, 24
  %or15 = or i64 %or11, %shl14
  %incdec.ptr16 = getelementptr inbounds i8, i8* %v1, i64 6
  %5 = load i8, i8* %incdec.ptr12, align 1, !tbaa !9
  %conv17 = zext i8 %5 to i64
  %shl18 = shl nuw nsw i64 %conv17, 16
  %or19 = or i64 %or15, %shl18
  %incdec.ptr20 = getelementptr inbounds i8, i8* %v1, i64 7
  %6 = load i8, i8* %incdec.ptr16, align 1, !tbaa !9
  %conv21 = zext i8 %6 to i64
  %shl22 = shl nuw nsw i64 %conv21, 8
  %or23 = or i64 %or19, %shl22
  %7 = load i8, i8* %incdec.ptr20, align 1, !tbaa !9
  %conv25 = zext i8 %7 to i64
  %or26 = or i64 %or23, %conv25
  %incdec.ptr27 = getelementptr inbounds i8, i8* %v2, i64 1
  %8 = load i8, i8* %v2, align 1, !tbaa !9
  %conv28 = zext i8 %8 to i64
  %shl29 = shl nuw i64 %conv28, 56
  %incdec.ptr30 = getelementptr inbounds i8, i8* %v2, i64 2
  %9 = load i8, i8* %incdec.ptr27, align 1, !tbaa !9
  %conv31 = zext i8 %9 to i64
  %shl32 = shl nuw nsw i64 %conv31, 48
  %or33 = or i64 %shl32, %shl29
  %incdec.ptr34 = getelementptr inbounds i8, i8* %v2, i64 3
  %10 = load i8, i8* %incdec.ptr30, align 1, !tbaa !9
  %conv35 = zext i8 %10 to i64
  %shl36 = shl nuw nsw i64 %conv35, 40
  %or37 = or i64 %or33, %shl36
  %incdec.ptr38 = getelementptr inbounds i8, i8* %v2, i64 4
  %11 = load i8, i8* %incdec.ptr34, align 1, !tbaa !9
  %conv39 = zext i8 %11 to i64
  %shl40 = shl nuw nsw i64 %conv39, 32
  %or41 = or i64 %or37, %shl40
  %incdec.ptr42 = getelementptr inbounds i8, i8* %v2, i64 5
  %12 = load i8, i8* %incdec.ptr38, align 1, !tbaa !9
  %conv43 = zext i8 %12 to i64
  %shl44 = shl nuw nsw i64 %conv43, 24
  %or45 = or i64 %or41, %shl44
  %incdec.ptr46 = getelementptr inbounds i8, i8* %v2, i64 6
  %13 = load i8, i8* %incdec.ptr42, align 1, !tbaa !9
  %conv47 = zext i8 %13 to i64
  %shl48 = shl nuw nsw i64 %conv47, 16
  %or49 = or i64 %or45, %shl48
  %incdec.ptr50 = getelementptr inbounds i8, i8* %v2, i64 7
  %14 = load i8, i8* %incdec.ptr46, align 1, !tbaa !9
  %conv51 = zext i8 %14 to i64
  %shl52 = shl nuw nsw i64 %conv51, 8
  %or53 = or i64 %or49, %shl52
  %15 = load i8, i8* %incdec.ptr50, align 1, !tbaa !9
  %conv55 = zext i8 %15 to i64
  %or56 = or i64 %or53, %conv55
  %sub = sub i64 %or26, %or56
  %cmp = icmp ugt i64 %or26, %or56
  %cmp58 = icmp slt i64 %sub, 0
  %or.cond = and i1 %cmp, %cmp58
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp60 = icmp ult i64 %or26, %or56
  %cmp63 = icmp sgt i64 %sub, 0
  %or.cond78 = and i1 %cmp60, %cmp63
  br i1 %or.cond78, label %cleanup, label %if.end66

if.end66:                                         ; preds = %if.else
  %cmp67 = icmp sgt i64 %sub, 128
  br i1 %cmp67, label %cleanup, label %if.else70

if.else70:                                        ; preds = %if.end66
  %16 = icmp sgt i64 %sub, -128
  %spec.select118 = select i1 %16, i64 %sub, i64 -128
  %17 = trunc i64 %spec.select118 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else70, %if.end66, %if.else, %entry
  %retval.0 = phi i32 [ 128, %entry ], [ -128, %if.else ], [ 128, %if.end66 ], [ %17, %if.else70 ]
  ret i32 %retval.0
}

declare void @SSL3_RECORD_set_seq_num(%struct.ssl3_record_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @dtls1_record_bitmap_update(%struct.ssl_st* noundef %s, %struct.dtls1_bitmap_st* noundef %bitmap) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 0
  %arraydecay1 = getelementptr inbounds %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st* %bitmap, i64 0, i32 1, i64 0
  %call = tail call fastcc i32 @satsub64be(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay1) #4
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %cmp3 = icmp ult i32 %call, 64
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %conv = zext i32 %call to i64
  %map = getelementptr inbounds %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st* %bitmap, i64 0, i32 0
  %0 = load i64, i64* %map, align 8, !tbaa !4
  %shl = shl i64 %0, %conv
  %or = or i64 %shl, 1
  store i64 %or, i64* %map, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %if.then
  %map7 = getelementptr inbounds %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st* %bitmap, i64 0, i32 0
  store i64 1, i64* %map7, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay1, i8* noundef nonnull %arraydecay, i64 noundef 8) #5
  br label %if.end21

if.else11:                                        ; preds = %entry
  %sub = sub nsw i32 0, %call
  %cmp13 = icmp ult i32 %sub, 64
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.else11
  %conv12 = zext i32 %sub to i64
  %shl17 = shl nuw i64 1, %conv12
  %map18 = getelementptr inbounds %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st* %bitmap, i64 0, i32 0
  %1 = load i64, i64* %map18, align 8, !tbaa !4
  %or19 = or i64 %1, %shl17
  store i64 %or19, i64* %map18, align 8, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %if.else11, %if.then15, %if.end
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"dtls1_bitmap_st", !6, i64 0, !7, i64 8}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
