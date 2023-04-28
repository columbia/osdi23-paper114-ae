; ModuleID = 'ssl/statem/statem.c'
source_filename = "ssl/statem/statem.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"ssl/statem/statem.c\00", align 1
@__func__.state_machine = private unnamed_addr constant [14 x i8] c"state_machine\00", align 1
@__func__.read_state_machine = private unnamed_addr constant [19 x i8] c"read_state_machine\00", align 1
@__func__.write_state_machine = private unnamed_addr constant [20 x i8] c"write_state_machine\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_get_state(%struct.ssl_st* nocapture noundef readonly %ssl) local_unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_in_init(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %0 = load i32, i32* %in_init, align 4, !tbaa !22
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_is_init_finished(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %0 = load i32, i32* %in_init, align 4, !tbaa !22
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %1 = load i32, i32* %hand_state, align 4, !tbaa !4
  %cmp = icmp eq i32 %1, 1
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_in_before(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 0
  %1 = load i32, i32* %state, align 8, !tbaa !23
  %cmp2 = icmp eq i32 %1, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_statem_clear(%struct.ssl_st* nocapture noundef writeonly %s) local_unnamed_addr #1 {
entry:
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 0
  store i32 0, i32* %state, align 8, !tbaa !23
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  store i32 0, i32* %hand_state, align 4, !tbaa !4
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  store i32 1, i32* %in_init, align 4, !tbaa !22
  %no_cert_verify = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 11
  store i32 0, i32* %no_cert_verify, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_statem_set_renegotiate(%struct.ssl_st* nocapture noundef writeonly %s) local_unnamed_addr #1 {
entry:
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  store i32 1, i32* %in_init, align 4, !tbaa !22
  %request_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 6
  store i32 19, i32* %request_state, align 8, !tbaa !25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_statem_send_fatal(%struct.ssl_st* noundef %s, i32 noundef %al) local_unnamed_addr #2 {
entry:
  %statem = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %0 = load i32, i32* %in_init, align 4, !tbaa !22
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %1 = load i32, i32* %state, align 8, !tbaa !23
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.end11, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* %in_init, align 4, !tbaa !22
  %state5 = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  store i32 1, i32* %state5, align 8, !tbaa !23
  %cmp6.not = icmp eq i32 %al, -1
  br i1 %cmp6.not, label %if.end11, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end
  %enc_write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  %2 = load i32, i32* %enc_write_state, align 4, !tbaa !26
  %cmp9.not = icmp eq i32 %2, 1
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true7
  %call = tail call i32 @ssl3_send_alert(%struct.ssl_st* noundef nonnull %s, i32 noundef 2, i32 noundef %al) #8
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then10, %land.lhs.true7, %if.end
  ret void
}

declare i32 @ssl3_send_alert(%struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef %al, i32 noundef %reason, i8* noundef %fmt, ...) local_unnamed_addr #2 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  call void @ERR_vset_error(i32 noundef 20, i32 noundef %reason, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #8
  call void @llvm.va_end(i8* nonnull %0)
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef %s, i32 noundef %al) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

declare void @ERR_vset_error(i32 noundef, i32 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_statem_in_error(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 0
  %0 = load i32, i32* %state, align 8, !tbaa !23
  %cmp = icmp eq i32 %0, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_statem_set_in_init(%struct.ssl_st* nocapture noundef writeonly %s, i32 noundef %init) local_unnamed_addr #1 {
entry:
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  store i32 %init, i32* %in_init, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_statem_get_in_handshake(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %in_handshake = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 9
  %0 = load i32, i32* %in_handshake, align 4, !tbaa !27
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_statem_set_in_handshake(%struct.ssl_st* nocapture noundef %s, i32 noundef %inhand) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq i32 %inhand, 0
  %in_handshake2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 9
  %0 = load i32, i32* %in_handshake2, align 4, !tbaa !27
  %. = select i1 %tobool.not, i32 -1, i32 1
  %dec = add nsw i32 %0, %.
  store i32 %dec, i32* %in_handshake2, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_statem_skip_early_data(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %0 = load i32, i32* %early_data, align 8, !tbaa !28
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %1 = load i32, i32* %server, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %2 = load i32, i32* %hand_state, align 4, !tbaa !4
  %cmp1.not = icmp eq i32 %2, 46
  br i1 %cmp1.not, label %lor.lhs.false2, label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %3 = load i32, i32* %hello_retry_request, align 8, !tbaa !30
  %cmp3 = icmp ne i32 %3, 2
  %spec.select = zext i1 %cmp3 to i32
  br label %return

return:                                           ; preds = %lor.lhs.false2, %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false2 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ossl_statem_check_finish_init(%struct.ssl_st* nocapture noundef %s, i32 noundef %sending) local_unnamed_addr #6 {
entry:
  %cmp = icmp eq i32 %sending, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !4
  %1 = and i32 %0, -2
  %switch = icmp eq i32 %1, 46
  br i1 %switch, label %if.then5, label %if.end47

if.then5:                                         ; preds = %if.then
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #10
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %2 = load i32, i32* %early_data_state, align 4, !tbaa !31
  %cmp6 = icmp eq i32 %2, 3
  br i1 %cmp6, label %if.then7, label %if.end47

if.then7:                                         ; preds = %if.then5
  store i32 7, i32* %early_data_state, align 4, !tbaa !31
  br label %if.end47

if.else:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %3 = load i32, i32* %server, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then10, label %if.else37

if.then10:                                        ; preds = %if.else
  %tobool11.not = icmp eq i32 %sending, 0
  %hand_state26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %4 = load i32, i32* %hand_state26, align 4, !tbaa !4
  br i1 %tobool11.not, label %land.lhs.true24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then10
  %5 = and i32 %4, -2
  %switch68 = icmp eq i32 %5, 46
  br i1 %switch68, label %land.lhs.true19, label %if.end47

land.lhs.true19:                                  ; preds = %land.lhs.true
  %early_data_state20 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %6 = load i32, i32* %early_data_state20, align 4, !tbaa !31
  %cmp21.not = icmp eq i32 %6, 4
  br i1 %cmp21.not, label %if.end47, label %land.lhs.true30

land.lhs.true24:                                  ; preds = %if.then10
  %cmp27 = icmp eq i32 %4, 46
  br i1 %cmp27, label %if.then28.thread, label %if.end47

if.then28.thread:                                 ; preds = %land.lhs.true24
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #10
  br label %if.end47

land.lhs.true30:                                  ; preds = %land.lhs.true19
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #10
  %7 = load i32, i32* %early_data_state20, align 4, !tbaa !31
  %cmp32 = icmp eq i32 %7, 3
  br i1 %cmp32, label %if.then33, label %if.end47

if.then33:                                        ; preds = %land.lhs.true30
  store i32 7, i32* %early_data_state20, align 4, !tbaa !31
  br label %if.end47

if.else37:                                        ; preds = %if.else
  %early_data_state38 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %8 = load i32, i32* %early_data_state38, align 4, !tbaa !31
  %cmp39 = icmp eq i32 %8, 12
  br i1 %cmp39, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %if.else37
  %hand_state42 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %9 = load i32, i32* %hand_state42, align 4, !tbaa !4
  %cmp43 = icmp eq i32 %9, 46
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %land.lhs.true40
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then28.thread, %land.lhs.true19, %land.lhs.true, %if.then, %land.lhs.true30, %if.then33, %land.lhs.true24, %if.then44, %land.lhs.true40, %if.else37, %if.then7, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_statem_set_hello_verify_done(%struct.ssl_st* nocapture noundef writeonly %s) local_unnamed_addr #1 {
entry:
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 0
  store i32 0, i32* %state, align 8, !tbaa !23
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  store i32 1, i32* %in_init, align 4, !tbaa !22
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  store i32 20, i32* %hand_state, align 4, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_connect(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @state_machine(%struct.ssl_st* noundef %s, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @state_machine(%struct.ssl_st* noundef %s, i32 noundef %server) unnamed_addr #2 {
entry:
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 0
  %0 = load i32, i32* %state, align 4, !tbaa !32
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ERR_clear_error() #8
  %call = tail call i32* @__errno_location() #11
  store i32 0, i32* %call, align 4, !tbaa !33
  %call1 = tail call fastcc void (%struct.ssl_st*, i32, i32)* @get_callback(%struct.ssl_st* noundef nonnull %s) #10
  %in_handshake = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 9
  %1 = load i32, i32* %in_handshake, align 4, !tbaa !34
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %in_handshake, align 4, !tbaa !34
  %call2 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %2 = load i64, i64* %flags, align 8, !tbaa !35
  %and = and i64 %2, 2048
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then5
  %call7 = tail call i32 @SSL_clear(%struct.ssl_st* noundef nonnull %s) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.then5, %land.lhs.true, %lor.lhs.false
  %3 = load i32, i32* %state, align 4, !tbaa !32
  switch i32 %3, label %while.cond.preheader [
    i32 0, label %if.then20
    i32 4, label %if.end21
  ]

if.then20:                                        ; preds = %if.end11
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  store i32 0, i32* %hand_state, align 4, !tbaa !36
  %request_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 6
  store i32 0, i32* %request_state, align 4, !tbaa !37
  br label %if.end21

if.end21:                                         ; preds = %if.end11, %if.then20
  %server22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  store i32 %server, i32* %server22, align 8, !tbaa !29
  %cmp23.not = icmp eq void (%struct.ssl_st*, i32, i32)* %call1, null
  br i1 %cmp23.not, label %if.end43, label %if.then24

if.then24:                                        ; preds = %if.end21
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %4 = load i64, i64* %finish_md_len, align 8, !tbaa !38
  %cmp26 = icmp eq i64 %4, 0
  br i1 %cmp26, label %if.then41, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.then24
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %5 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !39
  %cmp30 = icmp eq i64 %5, 0
  br i1 %cmp30, label %if.then41, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !41
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !43
  %and32 = and i32 %8, 8
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %if.then41

land.lhs.true34:                                  ; preds = %lor.lhs.false31
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 0
  %9 = load i32, i32* %version, align 8, !tbaa !45
  %cmp36 = icmp slt i32 %9, 772
  %cmp40.not = icmp eq i32 %9, 65536
  %or.cond = or i1 %cmp36, %cmp40.not
  br i1 %or.cond, label %if.then41, label %if.end43

if.then41:                                        ; preds = %land.lhs.true34, %lor.lhs.false31, %lor.lhs.false27, %if.then24
  tail call void %call1(%struct.ssl_st* noundef nonnull %s, i32 noundef 16, i32 noundef 1) #8
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true34, %if.then41, %if.end21
  %method44 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method44, align 8, !tbaa !40
  %ssl3_enc45 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 25
  %11 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc45, align 8, !tbaa !41
  %enc_flags46 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %11, i64 0, i32 12
  %12 = load i32, i32* %enc_flags46, align 8, !tbaa !43
  %and47 = and i32 %12, 8
  %tobool48.not = icmp eq i32 %and47, 0
  %version61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %13 = load i32, i32* %version61, align 8, !tbaa !46
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end43
  %and51 = and i32 %13, 65280
  %cmp52.not = icmp eq i32 %and51, 65024
  br i1 %cmp52.not, label %if.end65, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.then49
  %tobool54.not = icmp eq i32 %server, 0
  %cmp58.not = icmp eq i32 %and51, 256
  %or.cond244 = select i1 %tobool54.not, i1 %cmp58.not, i1 false
  br i1 %or.cond244, label %if.end65, label %if.then59

if.then59:                                        ; preds = %land.lhs.true53
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.else:                                          ; preds = %if.end43
  %shr.mask = and i32 %13, -256
  %cmp62.not = icmp eq i32 %shr.mask, 768
  br i1 %cmp62.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.end65:                                         ; preds = %land.lhs.true53, %if.else, %if.then49
  %call67 = tail call i32 @ssl_security(%struct.ssl_st* noundef nonnull %s, i32 noundef 9, i32 noundef 0, i32 noundef %13, i8* noundef null) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.end70:                                         ; preds = %if.end65
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %14 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !47
  %cmp71 = icmp eq %struct.buf_mem_st* %14, null
  br i1 %cmp71, label %if.then72, label %if.end82

if.then72:                                        ; preds = %if.end70
  %call73 = tail call %struct.buf_mem_st* @BUF_MEM_new() #8
  %cmp74 = icmp eq %struct.buf_mem_st* %call73, null
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then72
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.end76:                                         ; preds = %if.then72
  %call77 = tail call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call73, i64 noundef 16384) #8
  %tobool78.not = icmp eq i64 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.end80:                                         ; preds = %if.end76
  store %struct.buf_mem_st* %call73, %struct.buf_mem_st** %init_buf, align 8, !tbaa !47
  br label %if.end82

if.end82:                                         ; preds = %if.end80, %if.end70
  %call83 = tail call i32 @ssl3_setup_buffers(%struct.ssl_st* noundef nonnull %s) #8
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end82
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.end86:                                         ; preds = %if.end82
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !48
  %change_cipher_spec = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 11
  store i32 0, i32* %change_cipher_spec, align 8, !tbaa !49
  %call88 = tail call i32 @ssl_init_wbio_buffer(%struct.ssl_st* noundef nonnull %s) #8
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end86
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 786691, i8* noundef null) #10
  br label %end

if.end91:                                         ; preds = %if.end86
  %call92 = tail call i32 @SSL_in_before(%struct.ssl_st* noundef nonnull %s) #10
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %lor.lhs.false94, label %if.then96

lor.lhs.false94:                                  ; preds = %if.end91
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %15 = load i32, i32* %renegotiate, align 8, !tbaa !50
  %tobool95.not = icmp eq i32 %15, 0
  br i1 %tobool95.not, label %if.end112, label %if.then96

if.then96:                                        ; preds = %lor.lhs.false94, %if.end91
  %call97 = tail call i32 @tls_setup_handshake(%struct.ssl_st* noundef nonnull %s) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %end, label %if.end100

if.end100:                                        ; preds = %if.then96
  %finish_md_len103 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %16 = load i64, i64* %finish_md_len103, align 8, !tbaa !38
  %cmp104 = icmp eq i64 %16, 0
  br i1 %cmp104, label %if.then110, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end100
  %peer_finish_md_len108 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %17 = load i64, i64* %peer_finish_md_len108, align 8, !tbaa !39
  %cmp109 = icmp eq i64 %17, 0
  br i1 %cmp109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %lor.lhs.false105, %if.end100
  %read_state_first_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 8
  store i32 1, i32* %read_state_first_init, align 4, !tbaa !51
  br label %if.end112

if.end112:                                        ; preds = %lor.lhs.false105, %if.then110, %lor.lhs.false94
  store i32 3, i32* %state, align 4, !tbaa !32
  tail call fastcc void @init_write_state_machine(%struct.ssl_st* noundef nonnull %s) #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end11, %if.end112
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %18 = load i32, i32* %state, align 4, !tbaa !32
  switch i32 %18, label %do.body [
    i32 4, label %end
    i32 2, label %if.then119
    i32 3, label %if.then129
  ]

if.then119:                                       ; preds = %while.cond
  %call120 = tail call fastcc i32 @read_state_machine(%struct.ssl_st* noundef nonnull %s) #10
  %cmp121 = icmp eq i32 %call120, 1
  br i1 %cmp121, label %if.then122, label %end

if.then122:                                       ; preds = %if.then119
  store i32 3, i32* %state, align 4, !tbaa !32
  tail call fastcc void @init_write_state_machine(%struct.ssl_st* noundef nonnull %s) #10
  br label %while.cond.backedge

if.then129:                                       ; preds = %while.cond
  %call130 = tail call fastcc i32 @write_state_machine(%struct.ssl_st* noundef nonnull %s) #10
  switch i32 %call130, label %end [
    i32 1, label %if.then132
    i32 2, label %if.then136
  ]

if.then132:                                       ; preds = %if.then129
  store i32 2, i32* %state, align 4, !tbaa !32
  tail call fastcc void @init_read_state_machine(%struct.ssl_st* noundef %s) #10
  br label %while.cond.backedge

if.then136:                                       ; preds = %if.then129
  store i32 4, i32* %state, align 4, !tbaa !32
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then136, %if.then132, %if.then122
  br label %while.cond, !llvm.loop !52

do.body:                                          ; preds = %while.cond
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %19 = load i32, i32* %in_init, align 4, !tbaa !22
  %tobool143.not = icmp ne i32 %19, 0
  %cmp146 = icmp eq i32 %18, 1
  %spec.select = select i1 %tobool143.not, i1 %cmp146, i1 false
  br i1 %spec.select, label %do.end, label %if.then148

if.then148:                                       ; preds = %do.body
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %do.end

do.end:                                           ; preds = %if.then148, %do.body
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.state_machine, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786689, i8* noundef null) #8
  br label %end

end:                                              ; preds = %while.cond, %if.then129, %if.then119, %if.then96, %do.end, %if.then90, %if.then85, %if.then79, %if.then75, %if.then69, %if.then63, %if.then59
  %buf.2 = phi %struct.buf_mem_st* [ null, %if.then59 ], [ null, %if.then75 ], [ null, %do.end ], [ null, %if.then96 ], [ null, %if.then90 ], [ null, %if.then85 ], [ %call73, %if.then79 ], [ null, %if.then69 ], [ null, %if.then63 ], [ null, %if.then119 ], [ null, %if.then129 ], [ null, %while.cond ]
  %ret.0 = phi i32 [ -1, %if.then59 ], [ -1, %if.then75 ], [ -1, %do.end ], [ -1, %if.then96 ], [ -1, %if.then90 ], [ -1, %if.then85 ], [ -1, %if.then79 ], [ -1, %if.then69 ], [ -1, %if.then63 ], [ 1, %while.cond ], [ -1, %if.then129 ], [ -1, %if.then119 ]
  %20 = load i32, i32* %in_handshake, align 4, !tbaa !34
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %in_handshake, align 4, !tbaa !34
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %buf.2) #8
  %cmp153.not = icmp eq void (%struct.ssl_st*, i32, i32)* %call1, null
  br i1 %cmp153.not, label %cleanup, label %if.then154

if.then154:                                       ; preds = %end
  %tobool155.not = icmp eq i32 %server, 0
  %. = select i1 %tobool155.not, i32 4098, i32 8194
  tail call void %call1(%struct.ssl_st* noundef nonnull %s, i32 noundef %., i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then154, %end, %land.lhs.true, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %land.lhs.true ], [ %ret.0, %end ], [ %ret.0, %if.then154 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_statem_accept(%struct.ssl_st* noundef %s) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @state_machine(%struct.ssl_st* noundef %s, i32 noundef 1) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @statem_flush(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #2 {
entry:
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 2, i32* %rwstate, align 8, !tbaa !54
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %0 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !55
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #8
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  store i32 1, i32* %rwstate, align 8, !tbaa !54
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_statem_app_data_allowed(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 0
  %0 = load i32, i32* %state, align 4, !tbaa !32
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %in_read_app_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 19
  %1 = load i32, i32* %in_read_app_data, align 8, !tbaa !56
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %total_renegotiations = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 17
  %2 = load i32, i32* %total_renegotiations, align 8, !tbaa !57
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %3 = load i32, i32* %server, align 8, !tbaa !29
  %tobool5.not = icmp eq i32 %3, 0
  %hand_state13 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %4 = load i32, i32* %hand_state13, align 4, !tbaa !36
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %switch.selectcmp.case1 = icmp eq i32 %4, 0
  %switch.selectcmp.case2 = icmp eq i32 %4, 20
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %cmp14 = icmp eq i32 %4, 12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.end, %lor.lhs.false, %entry
  %retval.0.shrunk = phi i1 [ false, %entry ], [ false, %lor.lhs.false ], [ false, %if.end ], [ %switch.selectcmp, %if.then6 ], [ %cmp14, %if.else ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_statem_export_allowed(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %previous_server_finished_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 24
  %0 = load i64, i64* %previous_server_finished_len, align 8, !tbaa !58
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %1 = load i32, i32* %hand_state, align 4, !tbaa !4
  %cmp1 = icmp ne i32 %1, 36
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_statem_export_early_allowed(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %0 = load i32, i32* %early_data, align 8, !tbaa !28
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %1 = load i32, i32* %server, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %cmp3 = icmp ne i32 %0, 0
  %phi.cast = zext i1 %cmp3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

declare void @ERR_clear_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (%struct.ssl_st*, i32, i32)* @get_callback(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #0 {
entry:
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 64
  %0 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !59
  %cmp.not = icmp eq void (%struct.ssl_st*, i32, i32)* %0, null
  br i1 %cmp.not, label %if.else, label %return

if.else:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !60
  %info_callback2 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 31
  %2 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback2, align 8, !tbaa !61
  br label %return

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi void (%struct.ssl_st*, i32, i32)* [ %0, %entry ], [ %2, %if.else ]
  ret void (%struct.ssl_st*, i32, i32)* %retval.0
}

declare i32 @SSL_clear(%struct.ssl_st* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @ssl_security(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #3

declare i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ssl3_setup_buffers(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ssl_init_wbio_buffer(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @tls_setup_handshake(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @init_write_state_machine(%struct.ssl_st* nocapture noundef writeonly %s) unnamed_addr #1 {
entry:
  %write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 1
  store i32 0, i32* %write_state, align 4, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_state_machine(%struct.ssl_st* noundef %s) unnamed_addr #2 {
entry:
  %mt = alloca i32, align 4
  %len = alloca i64, align 8
  %pkt = alloca %struct.PACKET, align 8
  %statem = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11
  %0 = bitcast i32* %mt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %len, align 8, !tbaa !67
  %2 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %call = tail call fastcc void (%struct.ssl_st*, i32, i32)* @get_callback(%struct.ssl_st* noundef %s) #10
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %3 = load i32, i32* %server, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %3, 0
  %ossl_statem_client_read_transition.ossl_statem_server_read_transition = select i1 %tobool.not, i32 (%struct.ssl_st*, i32)* @ossl_statem_client_read_transition, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_read_transition
  %ossl_statem_client_process_message.ossl_statem_server_process_message = select i1 %tobool.not, i32 (%struct.ssl_st*, %struct.PACKET*)* @ossl_statem_client_process_message, i32 (%struct.ssl_st*, %struct.PACKET*)* @ossl_statem_server_process_message
  %ossl_statem_client_post_process_message.ossl_statem_server_post_process_message = select i1 %tobool.not, i32 (%struct.ssl_st*, i32)* @ossl_statem_client_post_process_message, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_post_process_message
  %ossl_statem_client_max_message_size.ossl_statem_server_max_message_size = select i1 %tobool.not, i64 (%struct.ssl_st*)* @ossl_statem_client_max_message_size, i64 (%struct.ssl_st*)* @ossl_statem_server_max_message_size
  %read_state_first_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 8
  %4 = load i32, i32* %read_state_first_init, align 4, !tbaa !51
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %entry
  %first_packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  store i32 1, i32* %first_packet, align 8, !tbaa !68
  store i32 0, i32* %read_state_first_init, align 4, !tbaa !51
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry
  %read_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 3
  %read_state_work87 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 4
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %cmp13.not = icmp eq void (%struct.ssl_st*, i32, i32)* %call, null
  %message_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  %first_packet61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  %init_msg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end4
  %5 = load i32, i32* %read_state, align 4, !tbaa !69
  switch i32 %5, label %sw.default119 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
    i32 2, label %sw.bb86
  ]

sw.bb:                                            ; preds = %while.cond
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !41
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !43
  %and = and i32 %8, 8
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %sw.bb
  %call7 = call i32 @dtls_get_message(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %mt) #8
  br label %if.end10

if.else8:                                         ; preds = %sw.bb
  %call9 = call i32 @tls_get_message_header(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %mt) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %ret.0 = phi i32 [ %call7, %if.then6 ], [ %call9, %if.else8 ]
  %cmp = icmp eq i32 %ret.0, 0
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end10
  br i1 %cmp13.not, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.end12
  %9 = load i32, i32* %server, align 8, !tbaa !29
  %tobool16.not = icmp eq i32 %9, 0
  %. = select i1 %tobool16.not, i32 4097, i32 8193
  call void %call(%struct.ssl_st* noundef nonnull %s, i32 noundef %., i32 noundef 1) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end12
  %10 = load i32, i32* %mt, align 4, !tbaa !33
  %call21 = call i32 %ossl_statem_client_read_transition.ossl_statem_server_read_transition(%struct.ssl_st* noundef nonnull %s, i32 noundef %10) #8, !callees !70
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %11 = load i64, i64* %message_size, align 8, !tbaa !71
  %call25 = call i64 %ossl_statem_client_max_message_size.ossl_statem_server_max_message_size(%struct.ssl_st* noundef nonnull %s) #8, !callees !72
  %cmp26 = icmp ugt i64 %11, %call25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.read_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 152, i8* noundef null) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc30 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc30, align 8, !tbaa !41
  %enc_flags31 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 12
  %14 = load i32, i32* %enc_flags31, align 8, !tbaa !43
  %and32 = and i32 %14, 8
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end45

land.lhs.true:                                    ; preds = %if.end28
  %15 = load i64, i64* %message_size, align 8, !tbaa !71
  %cmp37.not = icmp eq i64 %15, 0
  br i1 %cmp37.not, label %if.end45, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true
  %add = add i64 %15, 4
  %call42 = call fastcc i32 @grow_init_buf(%struct.ssl_st* noundef nonnull %s, i64 noundef %add) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %land.lhs.true38
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 620, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.read_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524295, i8* noundef null) #10
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true38, %land.lhs.true, %if.end28
  store i32 1, i32* %read_state, align 4, !tbaa !69
  br label %sw.bb47

sw.bb47:                                          ; preds = %while.cond, %if.end45
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc49 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 25
  %17 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc49, align 8, !tbaa !41
  %enc_flags50 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 12
  %18 = load i32, i32* %enc_flags50, align 8, !tbaa !43
  %and51 = and i32 %18, 8
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %sw.bb47
  %call54 = call i32 @dtls_get_message_body(%struct.ssl_st* noundef nonnull %s, i64* noundef nonnull %len) #8
  br label %if.end57

if.else55:                                        ; preds = %sw.bb47
  %call56 = call i32 @tls_get_message_body(%struct.ssl_st* noundef nonnull %s, i64* noundef nonnull %len) #8
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then53
  %ret.1 = phi i32 [ %call54, %if.then53 ], [ %call56, %if.else55 ]
  %cmp58 = icmp eq i32 %ret.1, 0
  br i1 %cmp58, label %cleanup, label %if.end60

if.end60:                                         ; preds = %if.end57
  store i32 0, i32* %first_packet61, align 8, !tbaa !68
  %19 = load i8*, i8** %init_msg, align 8, !tbaa !73
  %20 = load i64, i64* %len, align 8, !tbaa !67
  %call62 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %19, i64 noundef %20) #10
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 644, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.read_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %call66 = call i32 %ossl_statem_client_process_message.ossl_statem_server_process_message(%struct.ssl_st* noundef nonnull %s, %struct.PACKET* noundef nonnull %pkt) #8, !callees !74
  store i64 0, i64* %init_num, align 8, !tbaa !48
  switch i32 %call66, label %sw.default [
    i32 0, label %do.body
    i32 1, label %sw.bb75
    i32 2, label %sw.bb83
  ]

do.body:                                          ; preds = %if.end65
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %21 = load i32, i32* %in_init, align 4, !tbaa !22
  %tobool69.not = icmp eq i32 %21, 0
  br i1 %tobool69.not, label %if.then73, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %state = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %22 = load i32, i32* %state, align 8, !tbaa !23
  %cmp71 = icmp eq i32 %22, 1
  br i1 %cmp71, label %cleanup, label %if.then73

if.then73:                                        ; preds = %do.body, %land.rhs
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 654, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.read_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %cleanup

sw.bb75:                                          ; preds = %if.end65
  %23 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc77 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %23, i64 0, i32 25
  %24 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc77, align 8, !tbaa !41
  %enc_flags78 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %24, i64 0, i32 12
  %25 = load i32, i32* %enc_flags78, align 8, !tbaa !43
  %and79 = and i32 %25, 8
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %cleanup, label %if.then81

if.then81:                                        ; preds = %sw.bb75
  call void @dtls1_stop_timer(%struct.ssl_st* noundef nonnull %s) #8
  br label %cleanup

sw.bb83:                                          ; preds = %if.end65
  store i32 2, i32* %read_state, align 4, !tbaa !69
  store i32 3, i32* %read_state_work87, align 4, !tbaa !75
  br label %while.cond.backedge

sw.default:                                       ; preds = %if.end65
  store i32 0, i32* %read_state, align 4, !tbaa !69
  br label %while.cond.backedge

sw.bb86:                                          ; preds = %while.cond
  %26 = load i32, i32* %read_state_work87, align 4, !tbaa !75
  %call88 = call i32 %ossl_statem_client_post_process_message.ossl_statem_server_post_process_message(%struct.ssl_st* noundef nonnull %s, i32 noundef %26) #8, !callees !76
  store i32 %call88, i32* %read_state_work87, align 4, !tbaa !75
  switch i32 %call88, label %while.cond.backedge [
    i32 0, label %do.body92
    i32 3, label %cleanup
    i32 4, label %cleanup
    i32 5, label %cleanup
    i32 2, label %sw.bb108
    i32 1, label %sw.bb110
  ]

do.body92:                                        ; preds = %sw.bb86
  %in_init94 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %27 = load i32, i32* %in_init94, align 4, !tbaa !22
  %tobool95.not = icmp eq i32 %27, 0
  br i1 %tobool95.not, label %if.then103, label %land.rhs96

land.rhs96:                                       ; preds = %do.body92
  %state98 = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %28 = load i32, i32* %state98, align 8, !tbaa !23
  %cmp99 = icmp eq i32 %28, 1
  br i1 %cmp99, label %cleanup, label %if.then103

if.then103:                                       ; preds = %do.body92, %land.rhs96
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 678, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.read_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %cleanup

sw.bb108:                                         ; preds = %sw.bb86
  store i32 0, i32* %read_state, align 4, !tbaa !69
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb108, %sw.bb86, %sw.bb83, %sw.default
  br label %while.cond

sw.bb110:                                         ; preds = %sw.bb86
  %29 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc112 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %29, i64 0, i32 25
  %30 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc112, align 8, !tbaa !41
  %enc_flags113 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %30, i64 0, i32 12
  %31 = load i32, i32* %enc_flags113, align 8, !tbaa !43
  %and114 = and i32 %31, 8
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %cleanup, label %if.then116

if.then116:                                       ; preds = %sw.bb110
  call void @dtls1_stop_timer(%struct.ssl_st* noundef nonnull %s) #8
  br label %cleanup

sw.default119:                                    ; preds = %while.cond
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 699, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.read_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb86, %sw.bb86, %sw.bb86, %if.end57, %if.end20, %if.end10, %sw.bb110, %if.then116, %if.then103, %land.rhs96, %sw.bb75, %if.then81, %land.rhs, %if.then73, %sw.default119, %if.then64, %if.then44, %if.then27
  %retval.0 = phi i32 [ 0, %sw.default119 ], [ 0, %if.then64 ], [ 0, %if.then27 ], [ 0, %if.then44 ], [ 0, %if.then73 ], [ 0, %land.rhs ], [ 1, %if.then81 ], [ 1, %sw.bb75 ], [ 0, %land.rhs96 ], [ 0, %if.then103 ], [ 1, %if.then116 ], [ 1, %sw.bb110 ], [ 0, %if.end10 ], [ 0, %if.end20 ], [ 0, %if.end57 ], [ 0, %sw.bb86 ], [ 0, %sw.bb86 ], [ 0, %sw.bb86 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @write_state_machine(%struct.ssl_st* noundef %s) unnamed_addr #2 {
entry:
  %confunc = alloca i32 (%struct.ssl_st*, %struct.wpacket_st*)*, align 8
  %mt = alloca i32, align 4
  %pkt = alloca %struct.wpacket_st, align 8
  %statem = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11
  %0 = bitcast i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i32* %mt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #9
  %call = tail call fastcc void (%struct.ssl_st*, i32, i32)* @get_callback(%struct.ssl_st* noundef %s) #10
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %3 = load i32, i32* %server, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %3, 0
  %ossl_statem_client_write_transition.ossl_statem_server_write_transition = select i1 %tobool.not, i32 (%struct.ssl_st*)* @ossl_statem_client_write_transition, i32 (%struct.ssl_st*)* @ossl_statem_server_write_transition
  %ossl_statem_client_pre_work.ossl_statem_server_pre_work = select i1 %tobool.not, i32 (%struct.ssl_st*, i32)* @ossl_statem_client_pre_work, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_pre_work
  %ossl_statem_client_post_work.ossl_statem_server_post_work = select i1 %tobool.not, i32 (%struct.ssl_st*, i32)* @ossl_statem_client_post_work, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_post_work
  %ossl_statem_client_construct_message.ossl_statem_server_construct_message = select i1 %tobool.not, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32 (%struct.ssl_st*, %struct.wpacket_st*)**, i32*)* @ossl_statem_client_construct_message, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32 (%struct.ssl_st*, %struct.wpacket_st*)**, i32*)* @ossl_statem_server_construct_message
  %write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 1
  %write_state_work21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 2
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %use_timer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 12
  %cmp.not = icmp eq void (%struct.ssl_st*, i32, i32)* %call, null
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %4 = load i32, i32* %write_state, align 4, !tbaa !66
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb89
    i32 3, label %while.cond.sw.bb103_crit_edge
  ]

while.cond.sw.bb103_crit_edge:                    ; preds = %while.cond
  %.pre = load i32, i32* %write_state_work21, align 4, !tbaa !77
  br label %sw.bb103

sw.bb:                                            ; preds = %while.cond
  br i1 %cmp.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %sw.bb
  %5 = load i32, i32* %server, align 8, !tbaa !29
  %tobool3.not = icmp eq i32 %5, 0
  %. = select i1 %tobool3.not, i32 4097, i32 8193
  call void %call(%struct.ssl_st* noundef nonnull %s, i32 noundef %., i32 noundef 1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %sw.bb
  %call8 = call i32 %ossl_statem_client_write_transition.ossl_statem_server_write_transition(%struct.ssl_st* noundef nonnull %s) #8, !callees !78
  switch i32 %call8, label %while.cond.backedge [
    i32 1, label %sw.bb9
    i32 2, label %cleanup.loopexit
    i32 0, label %do.body
  ]

sw.bb9:                                           ; preds = %if.end7
  store i32 1, i32* %write_state, align 4, !tbaa !66
  store i32 3, i32* %write_state_work21, align 4, !tbaa !77
  br label %while.cond.backedge

do.body:                                          ; preds = %if.end7
  %in_init = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %6 = load i32, i32* %in_init, align 4, !tbaa !22
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %if.then18, label %land.rhs

land.rhs:                                         ; preds = %do.body
  %state = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %7 = load i32, i32* %state, align 8, !tbaa !23
  %cmp16 = icmp eq i32 %7, 1
  br i1 %cmp16, label %cleanup, label %if.then18

if.then18:                                        ; preds = %do.body, %land.rhs
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 814, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %cleanup

sw.bb20:                                          ; preds = %while.cond
  %8 = load i32, i32* %write_state_work21, align 4, !tbaa !77
  %call22 = call i32 %ossl_statem_client_pre_work.ossl_statem_server_pre_work(%struct.ssl_st* noundef nonnull %s, i32 noundef %8) #8, !callees !79
  store i32 %call22, i32* %write_state_work21, align 4, !tbaa !77
  switch i32 %call22, label %sw.epilog44 [
    i32 0, label %do.body25
    i32 3, label %cleanup.loopexit
    i32 4, label %cleanup.loopexit
    i32 5, label %cleanup.loopexit
    i32 2, label %sw.bb41
    i32 1, label %cleanup
  ]

do.body25:                                        ; preds = %sw.bb20
  %in_init27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %9 = load i32, i32* %in_init27, align 4, !tbaa !22
  %tobool28.not = icmp eq i32 %9, 0
  br i1 %tobool28.not, label %if.then36, label %land.rhs29

land.rhs29:                                       ; preds = %do.body25
  %state31 = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %10 = load i32, i32* %state31, align 8, !tbaa !23
  %cmp32 = icmp eq i32 %10, 1
  br i1 %cmp32, label %cleanup, label %if.then36

if.then36:                                        ; preds = %do.body25, %land.rhs29
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 822, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb20
  store i32 2, i32* %write_state, align 4, !tbaa !66
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb20, %sw.bb41
  %call45 = call i32 %ossl_statem_client_construct_message.ossl_statem_server_construct_message(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef nonnull %pkt, i32 (%struct.ssl_st*, %struct.wpacket_st*)** noundef nonnull %confunc, i32* noundef nonnull %mt) #8, !callees !80
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup.loopexit, label %if.end48

if.end48:                                         ; preds = %sw.epilog44
  %11 = load i32, i32* %mt, align 4, !tbaa !33
  %cmp49 = icmp eq i32 %11, -1
  br i1 %cmp49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end48
  store i32 3, i32* %write_state, align 4, !tbaa !66
  store i32 3, i32* %write_state_work21, align 4, !tbaa !77
  br label %while.cond.backedge

if.end53:                                         ; preds = %if.end48
  %12 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !47
  %call54 = call i32 @WPACKET_init(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef %12) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53
  %13 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %13, i64 0, i32 25
  %14 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !41
  %set_handshake_header = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %14, i64 0, i32 13
  %15 = load i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)** %set_handshake_header, align 8, !tbaa !81
  %16 = load i32, i32* %mt, align 4, !tbaa !33
  %call56 = call i32 %15(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef nonnull %pkt, i32 noundef %16) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %if.end59

if.then58:                                        ; preds = %lor.lhs.false, %if.end53
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %pkt) #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 849, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false
  %17 = load i32 (%struct.ssl_st*, %struct.wpacket_st*)*, i32 (%struct.ssl_st*, %struct.wpacket_st*)** %confunc, align 8, !tbaa !82
  %cmp60.not = icmp eq i32 (%struct.ssl_st*, %struct.wpacket_st*)* %17, null
  br i1 %cmp60.not, label %if.end79, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end59
  %call61 = call i32 %17(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef nonnull %pkt) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end79

if.then63:                                        ; preds = %land.lhs.true
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %pkt) #8
  %in_init66 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %18 = load i32, i32* %in_init66, align 4, !tbaa !22
  %tobool67.not = icmp eq i32 %18, 0
  br i1 %tobool67.not, label %if.then75, label %land.rhs68

land.rhs68:                                       ; preds = %if.then63
  %state70 = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %19 = load i32, i32* %state70, align 8, !tbaa !23
  %cmp71 = icmp eq i32 %19, 1
  br i1 %cmp71, label %cleanup, label %if.then75

if.then75:                                        ; preds = %if.then63, %land.rhs68
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 854, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true, %if.end59
  %20 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc81 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 25
  %21 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc81, align 8, !tbaa !41
  %close_construct_packet = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %21, i64 0, i32 14
  %22 = load i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)** %close_construct_packet, align 8, !tbaa !83
  %23 = load i32, i32* %mt, align 4, !tbaa !33
  %call82 = call i32 %22(%struct.ssl_st* noundef nonnull %s, %struct.wpacket_st* noundef nonnull %pkt, i32 noundef %23) #8
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then87, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.end79
  %call85 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %sw.bb89

if.then87:                                        ; preds = %lor.lhs.false84, %if.end79
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %pkt) #8
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 860, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

sw.bb89:                                          ; preds = %lor.lhs.false84, %while.cond
  %24 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc91 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %24, i64 0, i32 25
  %25 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc91, align 8, !tbaa !41
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %25, i64 0, i32 12
  %26 = load i32, i32* %enc_flags, align 8, !tbaa !43
  %and = and i32 %26, 8
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %if.end96, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %sw.bb89
  %27 = load i32, i32* %use_timer, align 4, !tbaa !84
  %tobool94.not = icmp eq i32 %27, 0
  br i1 %tobool94.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %land.lhs.true93
  call void @dtls1_start_timer(%struct.ssl_st* noundef nonnull %s) #8
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %land.lhs.true93, %sw.bb89
  %call97 = call fastcc i32 @statem_do_write(%struct.ssl_st* noundef nonnull %s) #10
  %cmp98 = icmp slt i32 %call97, 1
  br i1 %cmp98, label %cleanup.loopexit, label %if.end100

if.end100:                                        ; preds = %if.end96
  store i32 3, i32* %write_state, align 4, !tbaa !66
  store i32 3, i32* %write_state_work21, align 4, !tbaa !77
  br label %sw.bb103

sw.bb103:                                         ; preds = %while.cond.sw.bb103_crit_edge, %if.end100
  %28 = phi i32 [ %.pre, %while.cond.sw.bb103_crit_edge ], [ 3, %if.end100 ]
  %call105 = call i32 %ossl_statem_client_post_work.ossl_statem_server_post_work(%struct.ssl_st* noundef nonnull %s, i32 noundef %28) #8, !callees !85
  store i32 %call105, i32* %write_state_work21, align 4, !tbaa !77
  switch i32 %call105, label %while.cond.backedge [
    i32 0, label %do.body108
    i32 3, label %cleanup.loopexit
    i32 4, label %cleanup.loopexit
    i32 5, label %cleanup.loopexit
    i32 2, label %sw.bb124
    i32 1, label %cleanup
  ]

do.body108:                                       ; preds = %sw.bb103
  %in_init110 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 7
  %29 = load i32, i32* %in_init110, align 4, !tbaa !22
  %tobool111.not = icmp eq i32 %29, 0
  br i1 %tobool111.not, label %if.then119, label %land.rhs112

land.rhs112:                                      ; preds = %do.body108
  %state114 = getelementptr inbounds %struct.ossl_statem_st, %struct.ossl_statem_st* %statem, i64 0, i32 0
  %30 = load i32, i32* %state114, align 8, !tbaa !23
  %cmp115 = icmp eq i32 %30, 1
  br i1 %cmp115, label %cleanup, label %if.then119

if.then119:                                       ; preds = %do.body108, %land.rhs112
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 881, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 256, i8* noundef null) #10
  br label %cleanup

sw.bb124:                                         ; preds = %sw.bb103
  store i32 0, i32* %write_state, align 4, !tbaa !66
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb124, %sw.bb103, %sw.bb9, %if.end7, %if.then50
  br label %while.cond

sw.default:                                       ; preds = %while.cond
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 898, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.write_state_machine, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end7, %sw.bb20, %sw.bb20, %sw.bb20, %sw.epilog44, %if.end96, %sw.bb103, %sw.bb103, %sw.bb103
  %retval.0.ph = phi i32 [ 0, %sw.bb103 ], [ 0, %sw.bb103 ], [ 0, %sw.bb103 ], [ 0, %if.end96 ], [ 0, %sw.epilog44 ], [ 0, %sw.bb20 ], [ 0, %sw.bb20 ], [ 0, %sw.bb20 ], [ 1, %if.end7 ]
  br label %cleanup

cleanup:                                          ; preds = %sw.bb103, %sw.bb20, %cleanup.loopexit, %if.then119, %land.rhs112, %land.rhs68, %if.then75, %if.then36, %land.rhs29, %land.rhs, %if.then18, %sw.default, %if.then87, %if.then58
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then87 ], [ 0, %if.then58 ], [ 0, %if.then18 ], [ 0, %land.rhs ], [ 0, %land.rhs29 ], [ 0, %if.then36 ], [ 0, %if.then75 ], [ 0, %land.rhs68 ], [ 0, %land.rhs112 ], [ 0, %if.then119 ], [ %retval.0.ph, %cleanup.loopexit ], [ 2, %sw.bb20 ], [ 2, %sw.bb103 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @init_read_state_machine(%struct.ssl_st* nocapture noundef writeonly %s) unnamed_addr #1 {
entry:
  %read_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 3
  store i32 0, i32* %read_state, align 4, !tbaa !69
  ret void
}

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_read_transition(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_process_message(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

declare i64 @ossl_statem_server_max_message_size(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_post_process_message(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_read_transition(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_process_message(%struct.ssl_st* noundef, %struct.PACKET* noundef) local_unnamed_addr #3

declare i64 @ossl_statem_client_max_message_size(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_post_process_message(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dtls_get_message(%struct.ssl_st* noundef, i32* noundef) local_unnamed_addr #3

declare i32 @tls_get_message_header(%struct.ssl_st* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @grow_init_buf(%struct.ssl_st* nocapture noundef %s, i64 noundef %size) unnamed_addr #2 {
entry:
  %init_msg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  %0 = load i8*, i8** %init_msg, align 8, !tbaa !73
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !47
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !86
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext = shl i64 %size, 32
  %conv2 = ashr exact i64 %sext, 32
  %call = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef %1, i64 noundef %conv2) #8
  %tobool.not = icmp eq i64 %call, 0
  %cmp = icmp ugt i64 %sub.ptr.sub, %size
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !47
  %data7 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %data7, align 8, !tbaa !86
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub
  store i8* %add.ptr, i8** %init_msg, align 8, !tbaa !73
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @dtls_get_message_body(%struct.ssl_st* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @tls_get_message_body(%struct.ssl_st* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #1 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !88
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !90
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @dtls1_stop_timer(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_write_transition(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_pre_work(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_post_work(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_server_construct_message(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 (%struct.ssl_st*, %struct.wpacket_st*)** noundef, i32* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_write_transition(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_pre_work(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_post_work(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_client_construct_message(%struct.ssl_st* noundef, %struct.wpacket_st* noundef, i32 (%struct.ssl_st*, %struct.wpacket_st*)** noundef, i32* noundef) local_unnamed_addr #3

declare i32 @WPACKET_init(%struct.wpacket_st* noundef, %struct.buf_mem_st* noundef) local_unnamed_addr #3

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #3

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #3

declare void @dtls1_start_timer(%struct.ssl_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @statem_do_write(%struct.ssl_st* noundef %s) unnamed_addr #2 {
entry:
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %0 = load i32, i32* %hand_state, align 4, !tbaa !36
  switch i32 %0, label %if.else5 [
    i32 16, label %if.then
    i32 35, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %1 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !40
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %1, i64 0, i32 25
  %2 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !41
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %2, i64 0, i32 12
  %3 = load i32, i32* %enc_flags, align 8, !tbaa !43
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call = tail call i32 @dtls1_do_write(%struct.ssl_st* noundef nonnull %s, i32 noundef 20) #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call4 = tail call i32 @ssl3_do_write(%struct.ssl_st* noundef nonnull %s, i32 noundef 20) #8
  br label %cleanup

if.else5:                                         ; preds = %entry
  %method6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method6, align 8, !tbaa !40
  %ssl3_enc7 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %4, i64 0, i32 25
  %5 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc7, align 8, !tbaa !41
  %do_write = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %5, i64 0, i32 15
  %6 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %do_write, align 8, !tbaa !91
  %call8 = tail call i32 %6(%struct.ssl_st* noundef nonnull %s) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else5, %if.else, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call4, %if.else ], [ %call8, %if.else5 ]
  ret i32 %retval.0
}

declare i32 @dtls1_do_write(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl3_do_write(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 92}
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
!22 = !{!5, !6, i64 100}
!23 = !{!5, !7, i64 72}
!24 = !{!5, !6, i64 116}
!25 = !{!5, !7, i64 96}
!26 = !{!5, !7, i64 124}
!27 = !{!5, !6, i64 108}
!28 = !{!5, !6, i64 2864}
!29 = !{!5, !6, i64 56}
!30 = !{!5, !7, i64 2280}
!31 = !{!5, !7, i64 132}
!32 = !{!10, !7, i64 0}
!33 = !{!6, !6, i64 0}
!34 = !{!10, !6, i64 36}
!35 = !{!5, !11, i64 168}
!36 = !{!10, !7, i64 20}
!37 = !{!10, !7, i64 24}
!38 = !{!5, !11, i64 576}
!39 = !{!5, !11, i64 712}
!40 = !{!5, !9, i64 8}
!41 = !{!42, !9, i64 192}
!42 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!43 = !{!44, !6, i64 96}
!44 = !{!"ssl3_enc_method", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !11, i64 72, !9, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120}
!45 = !{!42, !6, i64 0}
!46 = !{!5, !6, i64 0}
!47 = !{!5, !9, i64 136}
!48 = !{!5, !11, i64 152}
!49 = !{!5, !6, i64 408}
!50 = !{!5, !6, i64 2976}
!51 = !{!10, !6, i64 32}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!5, !6, i64 40}
!55 = !{!5, !9, i64 24}
!56 = !{!5, !6, i64 440}
!57 = !{!5, !6, i64 432}
!58 = !{!5, !11, i64 1144}
!59 = !{!5, !9, i64 2424}
!60 = !{!5, !9, i64 2472}
!61 = !{!62, !9, i64 288}
!62 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !63, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !64, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !65, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!63 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!64 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!65 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!66 = !{!10, !7, i64 4}
!67 = !{!11, !11, i64 0}
!68 = !{!5, !6, i64 2568}
!69 = !{!10, !7, i64 12}
!70 = !{i32 (%struct.ssl_st*, i32)* @ossl_statem_client_read_transition, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_read_transition}
!71 = !{!5, !11, i64 720}
!72 = !{i64 (%struct.ssl_st*)* @ossl_statem_client_max_message_size, i64 (%struct.ssl_st*)* @ossl_statem_server_max_message_size}
!73 = !{!5, !9, i64 144}
!74 = !{i32 (%struct.ssl_st*, %struct.PACKET*)* @ossl_statem_client_process_message, i32 (%struct.ssl_st*, %struct.PACKET*)* @ossl_statem_server_process_message}
!75 = !{!10, !7, i64 16}
!76 = !{i32 (%struct.ssl_st*, i32)* @ossl_statem_client_post_process_message, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_post_process_message}
!77 = !{!10, !7, i64 8}
!78 = !{i32 (%struct.ssl_st*)* @ossl_statem_client_write_transition, i32 (%struct.ssl_st*)* @ossl_statem_server_write_transition}
!79 = !{i32 (%struct.ssl_st*, i32)* @ossl_statem_client_pre_work, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_pre_work}
!80 = !{i32 (%struct.ssl_st*, %struct.wpacket_st*, i32 (%struct.ssl_st*, %struct.wpacket_st*)**, i32*)* @ossl_statem_client_construct_message, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32 (%struct.ssl_st*, %struct.wpacket_st*)**, i32*)* @ossl_statem_server_construct_message}
!81 = !{!44, !9, i64 104}
!82 = !{!9, !9, i64 0}
!83 = !{!44, !9, i64 112}
!84 = !{!10, !6, i64 48}
!85 = !{i32 (%struct.ssl_st*, i32)* @ossl_statem_client_post_work, i32 (%struct.ssl_st*, i32)* @ossl_statem_server_post_work}
!86 = !{!87, !9, i64 8}
!87 = !{!"buf_mem_st", !11, i64 0, !9, i64 8, !11, i64 16, !11, i64 24}
!88 = !{!89, !9, i64 0}
!89 = !{!"", !9, i64 0, !11, i64 8}
!90 = !{!89, !11, i64 8}
!91 = !{!44, !9, i64 120}
