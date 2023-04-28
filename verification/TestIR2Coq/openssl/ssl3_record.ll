; ModuleID = 'ssl/record/ssl3_record.c'
source_filename = "ssl/record/ssl3_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
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
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"ssl/record/ssl3_record.c\00", align 1
@__func__.early_data_count_ok = private unnamed_addr constant [20 x i8] c"early_data_count_ok\00", align 1
@__func__.ssl3_get_record = private unnamed_addr constant [16 x i8] c"ssl3_get_record\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"HEAD \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PUT \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CONNE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"tls-mac\00", align 1
@__func__.ssl3_enc = private unnamed_addr constant [9 x i8] c"ssl3_enc\00", align 1
@__func__.tls1_enc = private unnamed_addr constant [9 x i8] c"tls1_enc\00", align 1
@ssl3_pad_1 = internal constant [48 x i8] c"666666666666666666666666666666666666666666666666", align 16
@ssl3_pad_2 = internal constant [48 x i8] c"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\", align 16
@.str.7 = private unnamed_addr constant [14 x i8] c"tls-data-size\00", align 1
@__func__.dtls1_process_record = private unnamed_addr constant [21 x i8] c"dtls1_process_record\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @SSL3_RECORD_clear(%struct.ssl3_record_st* noundef %r, i64 noundef %num_recs) local_unnamed_addr #0 {
entry:
  %cmp13.not = icmp eq i64 %num_recs, 0
  br i1 %cmp13.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.014 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %r, i64 %i.014
  %comp1 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %r, i64 %i.014, i32 7
  %0 = load i8*, i8** %comp1, align 8, !tbaa !4
  %1 = bitcast %struct.ssl3_record_st* %arrayidx to i8*
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 80) #12
  store i8* %0, i8** %comp1, align 8, !tbaa !4
  %inc = add nuw i64 %i.014, 1
  %exitcond.not = icmp eq i64 %inc, %num_recs
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @SSL3_RECORD_release(%struct.ssl3_record_st* nocapture noundef %r, i64 noundef %num_recs) local_unnamed_addr #0 {
entry:
  %cmp8.not = icmp eq i64 %num_recs, 0
  br i1 %cmp8.not, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.09 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  %comp = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %r, i64 %i.09, i32 7
  %0 = load i8*, i8** %comp, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #12
  store i8* null, i8** %comp, align 8, !tbaa !4
  %inc = add nuw i64 %i.09, 1
  %exitcond.not = icmp eq i64 %inc, %num_recs
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.end:                                          ; preds = %for.body, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @SSL3_RECORD_set_seq_num(%struct.ssl3_record_st* noundef %r, i8* noundef %seq_num) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %r, i64 0, i32 10, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %seq_num, i64 noundef 8) #12
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @early_data_count_ok(%struct.ssl_st* noundef %s, i64 noundef %length, i64 noundef %overhead, i32 noundef %send) local_unnamed_addr #0 {
entry:
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %1 = load i32, i32* %server, align 8, !tbaa !27
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %max_early_data1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 26, i32 5
  %2 = load i32, i32* %max_early_data1, align 4, !tbaa !28
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %land.lhs.true
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !31
  %cmp2.not = icmp eq %struct.ssl_session_st* %3, null
  br i1 %cmp2.not, label %if.then8, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %max_early_data5 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %3, i64 0, i32 26, i32 5
  %4 = load i32, i32* %max_early_data5, align 4, !tbaa !28
  %cmp6.not = icmp eq i32 %4, 0
  br i1 %cmp6.not, label %if.then8, label %if.end33

if.then8:                                         ; preds = %if.then, %land.rhs
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.early_data_count_ok, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %early_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 30
  %5 = load i32, i32* %early_data, align 8, !tbaa !32
  %cmp17.not = icmp eq i32 %5, 2
  %recv_max_early_data20 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 115
  %6 = load i32, i32* %recv_max_early_data20, align 4, !tbaa !33
  br i1 %cmp17.not, label %if.else19, label %if.end28

if.else19:                                        ; preds = %if.else
  %max_early_data22 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 26, i32 5
  %7 = load i32, i32* %max_early_data22, align 4, !tbaa !28
  %cmp23 = icmp ult i32 %6, %7
  %. = select i1 %cmp23, i32 %6, i32 %7
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.else19
  %max_early_data.0 = phi i32 [ %., %if.else19 ], [ %6, %if.else ]
  %cmp29 = icmp eq i32 %max_early_data.0, 0
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end28
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.early_data_count_ok, i64 0, i64 0)) #12
  %tobool31.not = icmp eq i32 %send, 0
  %cond32 = select i1 %tobool31.not, i32 10, i32 80
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %cond32, i32 noundef 164, i8* noundef null) #12
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true, %land.rhs, %if.end28
  %max_early_data.078 = phi i32 [ %max_early_data.0, %if.end28 ], [ %2, %land.lhs.true ], [ %4, %land.rhs ]
  %8 = trunc i64 %overhead to i32
  %conv34 = add i32 %max_early_data.078, %8
  %early_data_count = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 116
  %9 = load i32, i32* %early_data_count, align 8, !tbaa !34
  %conv35 = zext i32 %9 to i64
  %add36 = add i64 %conv35, %length
  %conv37 = zext i32 %conv34 to i64
  %cmp38 = icmp ugt i64 %add36, %conv37
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end33
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.early_data_count_ok, i64 0, i64 0)) #12
  %tobool41.not = icmp eq i32 %send, 0
  %cond42 = select i1 %tobool41.not, i32 10, i32 80
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %cond42, i32 noundef 164, i8* noundef null) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %conv47 = trunc i64 %add36 to i32
  store i32 %conv47, i32* %early_data_count, align 8, !tbaa !34
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then40, %if.then30, %if.then8
  %retval.0 = phi i32 [ 0, %if.then30 ], [ 0, %if.then40 ], [ 1, %if.end43 ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_get_record(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %n = alloca i64, align 8
  %md = alloca [64 x i8], align 16
  %version = alloca i32, align 4
  %pkt = alloca %struct.PACKET, align 8
  %sslv2pkt = alloca %struct.PACKET, align 8
  %sslv2len = alloca i64, align 8
  %type = alloca i32, align 4
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #13
  %2 = bitcast i32* %version to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #13
  %4 = bitcast %struct.PACKET* %sslv2pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #13
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0
  %max_pipelines = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 87
  %5 = load i64, i64* %max_pipelines, align 8, !tbaa !35
  %cmp3 = icmp eq i64 %5, 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %6 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  %7 = bitcast i64* %sslv2len to i8*
  %8 = bitcast i32* %type to i8*
  %len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 2
  %packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %is_first_record = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 20
  %msg_callback75 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %msg_callback_arg79 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %first_packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %version99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %enc_read_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 14
  %finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 1
  %peer_finish_md_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 3
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 45
  %.op = add i64 %5, -1
  %9 = select i1 %cmp3, i64 0, i64 %.op
  br label %do.body

do.body:                                          ; preds = %land.rhs, %entry
  %num_recs.0 = phi i64 [ 0, %entry ], [ %inc, %land.rhs ]
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0
  %10 = load i32, i32* %rstate, align 4, !tbaa !36
  %cmp6.not = icmp eq i32 %10, 241
  br i1 %cmp6.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %do.body
  %11 = load i64, i64* %packet_length, align 8, !tbaa !37
  %cmp9 = icmp ult i64 %11, 5
  br i1 %cmp9, label %if.then11, label %if.end215

if.then11:                                        ; preds = %lor.lhs.false, %do.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #13
  %12 = load i64, i64* %len, align 8, !tbaa !38
  %cmp12 = icmp eq i64 %num_recs.0, 0
  %cond = zext i1 %cmp12 to i32
  %call = call i32 @ssl3_read_n(%struct.ssl_st* noundef nonnull %s, i64 noundef 5, i64 noundef %12, i32 noundef 0, i32 noundef %cond, i64* noundef nonnull %n) #12
  %cmp14 = icmp slt i32 %call, 1
  br i1 %cmp14, label %cleanup.thread, label %if.end17

if.end17:                                         ; preds = %if.then11
  store i32 241, i32* %rstate, align 4, !tbaa !36
  %13 = load i8*, i8** %packet, align 8, !tbaa !39
  %14 = load i64, i64* %packet_length, align 8, !tbaa !37
  %call25 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef %13, i64 noundef %14) #14
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end17
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup.thread

if.end27:                                         ; preds = %if.end17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !40
  %call28 = call fastcc i32 @PACKET_get_net_2_len(%struct.PACKET* noundef nonnull %sslv2pkt, i64* noundef nonnull %sslv2len) #14
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %sslv2pkt, i32* noundef nonnull %type) #14
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false30, %if.end27
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup.thread

if.end34:                                         ; preds = %lor.lhs.false30
  %15 = load i32, i32* %server, align 8, !tbaa !27
  %tobool35.not = icmp eq i32 %15, 0
  br i1 %tobool35.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end34
  %16 = load i32, i32* %is_first_record, align 8, !tbaa !43
  %tobool37.not = icmp eq i32 %16, 0
  br i1 %tobool37.not, label %if.else, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true
  %17 = load i64, i64* %sslv2len, align 8, !tbaa !42
  %and = and i64 %17, 32768
  %cmp39 = icmp ne i64 %and, 0
  %18 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %18, 1
  %or.cond = select i1 %cmp39, i1 %cmp42, i1 false
  br i1 %or.cond, label %if.then44, label %if.else

if.then44:                                        ; preds = %land.lhs.true38
  %type45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 1
  store i32 22, i32* %type45, align 4, !tbaa !44
  %rec_version = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %arrayidx, i64 0, i32 0
  store i32 2, i32* %rec_version, align 8, !tbaa !45
  %and46 = and i64 %17, 32767
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 2
  store i64 %and46, i64* %length, align 8, !tbaa !46
  %19 = load i64, i64* %len, align 8, !tbaa !38
  %sub = add i64 %19, -2
  %cmp49 = icmp ugt i64 %and46, %sub
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then44
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 198, i8* noundef null) #12
  br label %cleanup.thread

if.end52:                                         ; preds = %if.then44
  %cmp54 = icmp ult i64 %and46, 9
  br i1 %cmp54, label %if.then56, label %cleanup

if.then56:                                        ; preds = %if.end52
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 160, i8* noundef null) #12
  br label %cleanup.thread

if.else:                                          ; preds = %land.lhs.true38, %land.lhs.true, %if.end34
  %call58 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %type) #14
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then67, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.else
  %call61 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %version) #14
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %length64 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 2
  %call65 = call fastcc i32 @PACKET_get_net_2_len(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %length64) #14
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.end72

if.then67:                                        ; preds = %lor.lhs.false63, %lor.lhs.false60, %if.else
  %20 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback75, align 8, !tbaa !47
  %tobool68.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %20, null
  br i1 %tobool68.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.then67
  %21 = load i8*, i8** %msg_callback_arg79, align 8, !tbaa !48
  call void %20(i32 noundef 0, i32 noundef 0, i32 noundef 256, i8* noundef %13, i64 noundef 5, %struct.ssl_st* noundef nonnull %s, i8* noundef %21) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup.thread

if.end72:                                         ; preds = %lor.lhs.false63
  %22 = load i32, i32* %type, align 4, !tbaa !49
  %type73 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 1
  store i32 %22, i32* %type73, align 4, !tbaa !44
  %23 = load i32, i32* %version, align 4, !tbaa !49
  %rec_version74 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %arrayidx, i64 0, i32 0
  store i32 %23, i32* %rec_version74, align 8, !tbaa !45
  %24 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback75, align 8, !tbaa !47
  %tobool76.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %24, null
  br i1 %tobool76.not, label %if.end80, label %if.then77

if.then77:                                        ; preds = %if.end72
  %25 = load i8*, i8** %msg_callback_arg79, align 8, !tbaa !48
  call void %24(i32 noundef 0, i32 noundef %23, i32 noundef 256, i8* noundef %13, i64 noundef 5, %struct.ssl_st* noundef nonnull %s, i8* noundef %25) #12
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end72
  %26 = load i32, i32* %first_packet, align 8, !tbaa !50
  %tobool81.not = icmp eq i32 %26, 0
  br i1 %tobool81.not, label %land.lhs.true82, label %if.end122

land.lhs.true82:                                  ; preds = %if.end80
  %27 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %27, i64 0, i32 25
  %28 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !52
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %28, i64 0, i32 12
  %29 = load i32, i32* %enc_flags, align 8, !tbaa !54
  %and83 = and i32 %29, 8
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %land.lhs.true95

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %version87 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %27, i64 0, i32 0
  %30 = load i32, i32* %version87, align 8, !tbaa !56
  %cmp88 = icmp slt i32 %30, 772
  %cmp93.not = icmp eq i32 %30, 65536
  %or.cond1112 = or i1 %cmp88, %cmp93.not
  br i1 %or.cond1112, label %land.lhs.true95, label %if.end122

land.lhs.true95:                                  ; preds = %land.lhs.true85, %land.lhs.true82
  %31 = load i32, i32* %hello_retry_request, align 8, !tbaa !57
  %cmp96.not = icmp eq i32 %31, 1
  br i1 %cmp96.not, label %if.end122, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %32 = load i32, i32* %version99, align 8, !tbaa !58
  %cmp100.not = icmp eq i32 %23, %32
  br i1 %cmp100.not, label %if.end122, label %if.then102

if.then102:                                       ; preds = %land.lhs.true98
  %33 = xor i32 %32, %23
  %34 = and i32 %33, 65280
  %cmp106 = icmp eq i32 %34, 0
  br i1 %cmp106, label %land.lhs.true108, label %if.end121

land.lhs.true108:                                 ; preds = %if.then102
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %35 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !59
  %tobool109.not = icmp eq %struct.evp_cipher_ctx_st* %35, null
  br i1 %tobool109.not, label %land.lhs.true110, label %if.end121

land.lhs.true110:                                 ; preds = %land.lhs.true108
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %36 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !60
  %tobool111.not = icmp eq %struct.evp_md_ctx_st* %36, null
  br i1 %tobool111.not, label %if.then112, label %if.end121

if.then112:                                       ; preds = %land.lhs.true110
  %37 = load i32, i32* %type73, align 4, !tbaa !44
  %cmp114 = icmp eq i32 %37, 21
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.then112
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 267, i8* noundef null) #12
  br label %cleanup.thread

if.end117:                                        ; preds = %if.then112
  %conv119 = and i32 %23, 65535
  store i32 %conv119, i32* %version99, align 8, !tbaa !58
  br label %if.end121

if.end121:                                        ; preds = %if.end117, %land.lhs.true110, %land.lhs.true108, %if.then102
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 267, i8* noundef null) #12
  br label %cleanup.thread

if.end122:                                        ; preds = %land.lhs.true85, %land.lhs.true98, %land.lhs.true95, %if.end80
  %shr.mask = and i32 %23, -256
  %cmp123.not = icmp eq i32 %shr.mask, 768
  br i1 %cmp123.not, label %if.end156, label %if.then125

if.then125:                                       ; preds = %if.end122
  %38 = load i32, i32* %is_first_record, align 8, !tbaa !43
  %tobool128.not = icmp eq i32 %38, 0
  br i1 %tobool128.not, label %if.else155, label %if.then129

if.then129:                                       ; preds = %if.then125
  %39 = load i8*, i8** %packet, align 8, !tbaa !39
  %call132 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 noundef 4) #15
  %cmp133 = icmp eq i32 %call132, 0
  br i1 %cmp133, label %if.then147, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %if.then129
  %call136 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 noundef 5) #15
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then147, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false135
  %call140 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef 5) #15
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then147, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %lor.lhs.false139
  %call144 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef 4) #15
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then147, label %if.else148

if.then147:                                       ; preds = %lor.lhs.false143, %lor.lhs.false139, %lor.lhs.false135, %if.then129
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 156, i8* noundef null) #12
  br label %cleanup.thread

if.else148:                                       ; preds = %lor.lhs.false143
  %call149 = call i32 @strncmp(i8* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef 5) #15
  %cmp150 = icmp eq i32 %call149, 0
  call void @ERR_new() #12
  br i1 %cmp150, label %if.then152, label %if.end154

if.then152:                                       ; preds = %if.else148
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 155, i8* noundef null) #12
  br label %cleanup.thread

if.end154:                                        ; preds = %if.else148
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 267, i8* noundef null) #12
  br label %cleanup.thread

if.else155:                                       ; preds = %if.then125
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 70, i32 noundef 267, i8* noundef null) #12
  br label %cleanup.thread

if.end156:                                        ; preds = %if.end122
  %40 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc158 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 25
  %41 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc158, align 8, !tbaa !52
  %enc_flags159 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %41, i64 0, i32 12
  %42 = load i32, i32* %enc_flags159, align 8, !tbaa !54
  %and160 = and i32 %42, 8
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %land.lhs.true162, label %if.end205

land.lhs.true162:                                 ; preds = %if.end156
  %version164 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %40, i64 0, i32 0
  %43 = load i32, i32* %version164, align 8, !tbaa !56
  %cmp165 = icmp slt i32 %43, 772
  %cmp170.not = icmp eq i32 %43, 65536
  %or.cond1113 = or i1 %cmp165, %cmp170.not
  br i1 %or.cond1113, label %if.end205, label %land.lhs.true172

land.lhs.true172:                                 ; preds = %land.lhs.true162
  %44 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp173.not = icmp eq %struct.evp_cipher_ctx_st* %44, null
  br i1 %cmp173.not, label %if.end205, label %if.then175

if.then175:                                       ; preds = %land.lhs.true172
  %45 = load i32, i32* %type73, align 4, !tbaa !44
  switch i32 %45, label %if.then198 [
    i32 23, label %if.end199
    i32 20, label %lor.lhs.false183
    i32 21, label %lor.lhs.false195
  ]

lor.lhs.false183:                                 ; preds = %if.then175
  %46 = load i64, i64* %finish_md_len, align 8, !tbaa !62
  %cmp184 = icmp eq i64 %46, 0
  br i1 %cmp184, label %if.end199, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %lor.lhs.false183
  %47 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !63
  %cmp189 = icmp eq i64 %47, 0
  br i1 %cmp189, label %if.end199, label %if.then198

lor.lhs.false195:                                 ; preds = %if.then175
  %48 = load i32, i32* %enc_read_state, align 8, !tbaa !64
  %cmp196.not = icmp eq i32 %48, 1
  br i1 %cmp196.not, label %if.end199, label %if.then198

if.then198:                                       ; preds = %if.then175, %lor.lhs.false186, %lor.lhs.false195
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 443, i8* noundef null) #12
  br label %cleanup.thread

if.end199:                                        ; preds = %if.then175, %lor.lhs.false195, %lor.lhs.false186, %lor.lhs.false183
  %49 = load i32, i32* %rec_version74, align 8, !tbaa !45
  %cmp201.not = icmp eq i32 %49, 771
  br i1 %cmp201.not, label %if.end205, label %if.then203

if.then203:                                       ; preds = %if.end199
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 377, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 267, i8* noundef null) #12
  br label %cleanup.thread

if.end205:                                        ; preds = %if.end199, %land.lhs.true172, %land.lhs.true162, %if.end156
  %50 = load i64, i64* %length64, align 8, !tbaa !46
  %51 = load i64, i64* %len, align 8, !tbaa !38
  %sub208 = add i64 %51, -5
  %cmp209 = icmp ugt i64 %50, %sub208
  br i1 %cmp209, label %if.then211, label %cleanup

if.then211:                                       ; preds = %if.end205
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 198, i8* noundef null) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then11, %if.then211, %if.then203, %if.then198, %if.else155, %if.end154, %if.then152, %if.then147, %if.end121, %if.then116, %if.end71, %if.then56, %if.then51, %if.then33, %if.then26
  %retval.1.ph = phi i32 [ -1, %if.then26 ], [ -1, %if.then33 ], [ -1, %if.then51 ], [ -1, %if.then56 ], [ -1, %if.end71 ], [ -1, %if.then116 ], [ -1, %if.end121 ], [ -1, %if.then147 ], [ -1, %if.then152 ], [ -1, %if.end154 ], [ -1, %if.else155 ], [ -1, %if.then198 ], [ -1, %if.then203 ], [ -1, %if.then211 ], [ %call, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  br label %cleanup760

cleanup:                                          ; preds = %if.end52, %if.end205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  br label %if.end215

if.end215:                                        ; preds = %cleanup, %lor.lhs.false
  %52 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc217 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %52, i64 0, i32 25
  %53 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc217, align 8, !tbaa !52
  %enc_flags218 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %53, i64 0, i32 12
  %54 = load i32, i32* %enc_flags218, align 8, !tbaa !54
  %and219 = and i32 %54, 8
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %land.lhs.true221, label %if.else237

land.lhs.true221:                                 ; preds = %if.end215
  %version223 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %52, i64 0, i32 0
  %55 = load i32, i32* %version223, align 8, !tbaa !56
  %cmp224 = icmp slt i32 %55, 772
  %cmp229.not = icmp eq i32 %55, 65536
  %or.cond1114 = or i1 %cmp224, %cmp229.not
  br i1 %or.cond1114, label %if.else237, label %if.then231

if.then231:                                       ; preds = %land.lhs.true221
  %length232 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 2
  %56 = load i64, i64* %length232, align 8, !tbaa !46
  %cmp233 = icmp ugt i64 %56, 16640
  br i1 %cmp233, label %if.then235, label %if.end252

if.then235:                                       ; preds = %if.then231
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 150, i8* noundef null) #12
  br label %cleanup760

if.else237:                                       ; preds = %land.lhs.true221, %if.end215
  %57 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !65
  %cmp239 = icmp eq %struct.comp_ctx_st* %57, null
  %spec.select = select i1 %cmp239, i64 16704, i64 17728
  %length244 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 2
  %58 = load i64, i64* %length244, align 8, !tbaa !46
  %cmp245 = icmp ugt i64 %58, %spec.select
  br i1 %cmp245, label %cleanup249.thread, label %if.end252

cleanup249.thread:                                ; preds = %if.else237
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 150, i8* noundef null) #12
  br label %cleanup760

if.end252:                                        ; preds = %if.else237, %if.then231
  %59 = phi i64 [ %58, %if.else237 ], [ %56, %if.then231 ]
  %rec_version253 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %arrayidx, i64 0, i32 0
  %60 = load i32, i32* %rec_version253, align 8, !tbaa !45
  %cmp254 = icmp eq i32 %60, 2
  %sub258 = add i64 %59, -3
  %spec.select1314 = select i1 %cmp254, i64 %sub258, i64 %59
  %cmp262.not = icmp eq i64 %spec.select1314, 0
  br i1 %cmp262.not, label %if.end270, label %if.then264

if.then264:                                       ; preds = %if.end252
  %call265 = call i32 @ssl3_read_n(%struct.ssl_st* noundef nonnull %s, i64 noundef %spec.select1314, i64 noundef %spec.select1314, i32 noundef 1, i32 noundef 0, i64* noundef nonnull %n) #12
  %cmp266 = icmp slt i32 %call265, 1
  br i1 %cmp266, label %cleanup760, label %if.then264.if.end270_crit_edge

if.then264.if.end270_crit_edge:                   ; preds = %if.then264
  %.pre = load i32, i32* %rec_version253, align 8, !tbaa !45
  br label %if.end270

if.end270:                                        ; preds = %if.then264.if.end270_crit_edge, %if.end252
  %61 = phi i32 [ %.pre, %if.then264.if.end270_crit_edge ], [ %60, %if.end252 ]
  store i32 240, i32* %rstate, align 4, !tbaa !36
  %cmp274 = icmp eq i32 %61, 2
  %62 = load i8*, i8** %packet, align 8, !tbaa !39
  %. = select i1 %cmp274, i64 2, i64 5
  %arrayidx283 = getelementptr inbounds i8, i8* %62, i64 %.
  %63 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 6
  store i8* %arrayidx283, i8** %63, align 8
  %data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 5
  store i8* %arrayidx283, i8** %data, align 8, !tbaa !66
  %length287 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 2
  %64 = load i64, i64* %length287, align 8, !tbaa !46
  %orig_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 3
  store i64 %64, i64* %orig_len, align 8, !tbaa !67
  %read = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 8
  store i32 0, i32* %read, align 8, !tbaa !68
  %inc = add nuw i64 %num_recs.0, 1
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  store i32 0, i32* %is_first_record, align 8, !tbaa !43
  %exitcond.not = icmp eq i64 %num_recs.0, %9
  br i1 %exitcond.not, label %do.end, label %land.lhs.true294

land.lhs.true294:                                 ; preds = %if.end270
  %type295 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %num_recs.0, i32 1
  %65 = load i32, i32* %type295, align 4, !tbaa !44
  %cmp296 = icmp eq i32 %65, 23
  br i1 %cmp296, label %land.lhs.true298, label %do.end

land.lhs.true298:                                 ; preds = %land.lhs.true294
  %66 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc300 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %66, i64 0, i32 25
  %67 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc300, align 8, !tbaa !52
  %enc_flags301 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %67, i64 0, i32 12
  %68 = load i32, i32* %enc_flags301, align 8, !tbaa !54
  %and302 = and i32 %68, 1
  %tobool303.not = icmp eq i32 %and302, 0
  br i1 %tobool303.not, label %do.end, label %land.lhs.true304

land.lhs.true304:                                 ; preds = %land.lhs.true298
  %69 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp306.not = icmp eq %struct.evp_cipher_ctx_st* %69, null
  br i1 %cmp306.not, label %do.end, label %land.lhs.true308

land.lhs.true308:                                 ; preds = %land.lhs.true304
  %call310 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %69) #12
  %call311 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call310) #12
  %and312 = and i64 %call311, 8388608
  %cmp313.not = icmp eq i64 %and312, 0
  br i1 %cmp313.not, label %do.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true308
  %call315 = call fastcc i32 @ssl3_record_app_data_waiting(%struct.ssl_st* noundef nonnull %s) #14
  %tobool316.not = icmp eq i32 %call315, 0
  br i1 %tobool316.not, label %do.end, label %do.body, !llvm.loop !69

do.end:                                           ; preds = %if.end270, %land.lhs.true294, %land.lhs.true298, %land.lhs.true304, %land.lhs.true308, %land.rhs
  %num_recs.0.lcssa1270 = phi i64 [ %9, %if.end270 ], [ %num_recs.0, %land.lhs.true294 ], [ %num_recs.0, %land.lhs.true298 ], [ %num_recs.0, %land.lhs.true304 ], [ %num_recs.0, %land.lhs.true308 ], [ %num_recs.0, %land.rhs ]
  %cmp317 = icmp eq i64 %num_recs.0.lcssa1270, 0
  br i1 %cmp317, label %land.lhs.true319, label %if.end378

land.lhs.true319:                                 ; preds = %do.end
  %type320 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 1
  %70 = load i32, i32* %type320, align 4, !tbaa !44
  %cmp321 = icmp eq i32 %70, 20
  br i1 %cmp321, label %land.lhs.true323, label %if.end378

land.lhs.true323:                                 ; preds = %land.lhs.true319
  %71 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc325 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %71, i64 0, i32 25
  %72 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc325, align 8, !tbaa !52
  %enc_flags326 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %72, i64 0, i32 12
  %73 = load i32, i32* %enc_flags326, align 8, !tbaa !54
  %and327 = and i32 %73, 8
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %land.lhs.true329, label %lor.lhs.false339

land.lhs.true329:                                 ; preds = %land.lhs.true323
  %version331 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %71, i64 0, i32 0
  %74 = load i32, i32* %version331, align 8, !tbaa !56
  %cmp332 = icmp slt i32 %74, 772
  %cmp337.not = icmp eq i32 %74, 65536
  %or.cond1115 = or i1 %cmp332, %cmp337.not
  br i1 %or.cond1115, label %lor.lhs.false339, label %land.lhs.true343

lor.lhs.false339:                                 ; preds = %land.lhs.true329, %land.lhs.true323
  %75 = load i32, i32* %hello_retry_request, align 8, !tbaa !57
  %cmp341.not = icmp eq i32 %75, 0
  br i1 %cmp341.not, label %if.end378, label %land.lhs.true343

land.lhs.true343:                                 ; preds = %land.lhs.true329, %lor.lhs.false339
  %76 = load i64, i64* %finish_md_len, align 8, !tbaa !62
  %cmp347 = icmp eq i64 %76, 0
  br i1 %cmp347, label %if.then355, label %lor.lhs.false349

lor.lhs.false349:                                 ; preds = %land.lhs.true343
  %77 = load i64, i64* %peer_finish_md_len, align 8, !tbaa !63
  %cmp353 = icmp eq i64 %77, 0
  br i1 %cmp353, label %if.then355, label %if.end378

if.then355:                                       ; preds = %lor.lhs.false349, %land.lhs.true343
  %78 = load i64, i64* %length287, align 8, !tbaa !46
  %cmp357.not = icmp eq i64 %78, 1
  br i1 %cmp357.not, label %lor.lhs.false359, label %if.then365

lor.lhs.false359:                                 ; preds = %if.then355
  %79 = load i8*, i8** %data, align 8, !tbaa !66
  %80 = load i8, i8* %79, align 1, !tbaa !70
  %cmp363.not = icmp eq i8 %80, 1
  br i1 %cmp363.not, label %if.end366, label %if.then365

if.then365:                                       ; preds = %lor.lhs.false359, %if.then355
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 260, i8* noundef null) #12
  br label %cleanup760

if.end366:                                        ; preds = %lor.lhs.false359
  store i32 22, i32* %type320, align 4, !tbaa !44
  %empty_record_count = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 13
  %81 = load i64, i64* %empty_record_count, align 8, !tbaa !71
  %inc369 = add i64 %81, 1
  store i64 %inc369, i64* %empty_record_count, align 8, !tbaa !71
  %cmp372 = icmp ugt i64 %inc369, 32
  br i1 %cmp372, label %if.then374, label %if.end375

if.then374:                                       ; preds = %if.end366
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 508, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 262, i8* noundef null) #12
  br label %cleanup760

if.end375:                                        ; preds = %if.end366
  store i32 1, i32* %read, align 8, !tbaa !68
  %numrpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 3
  store i64 1, i64* %numrpipes, align 8, !tbaa !72
  br label %cleanup760

if.end378:                                        ; preds = %lor.lhs.false349, %lor.lhs.false339, %land.lhs.true319, %do.end
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 43
  %82 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %cmp379.not = icmp eq %struct.evp_md_ctx_st* %82, null
  br i1 %cmp379.not, label %if.end403, label %if.then381

if.then381:                                       ; preds = %if.end378
  %call383 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %82) #12
  %cmp384.not = icmp eq %struct.evp_md_st* %call383, null
  br i1 %cmp384.not, label %if.end403, label %if.then386

if.then386:                                       ; preds = %if.then381
  %call387 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call383) #12
  %83 = icmp ult i32 %call387, 65
  br i1 %83, label %if.end397, label %cleanup400

if.end397:                                        ; preds = %if.then386
  %conv3981139 = zext i32 %call387 to i64
  br label %if.end403

cleanup400:                                       ; preds = %if.then386
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 530, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #12
  br label %cleanup760

if.end403:                                        ; preds = %if.then381, %if.end397, %if.end378
  %mac_size.2 = phi i64 [ 0, %if.end378 ], [ 0, %if.then381 ], [ %conv3981139, %if.end397 ]
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %84 = load i64, i64* %flags, align 8, !tbaa !74
  %and405 = and i64 %84, 256
  %tobool406.not = icmp eq i64 %and405, 0
  br i1 %tobool406.not, label %if.end441, label %land.lhs.true407

land.lhs.true407:                                 ; preds = %if.end403
  %85 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %tobool409.not = icmp eq %struct.evp_md_ctx_st* %85, null
  br i1 %tobool409.not, label %if.end441, label %for.body

for.cond:                                         ; preds = %lor.lhs.false430
  %inc437 = add nuw i64 %j.01219, 1
  %exitcond1273.not = icmp eq i64 %j.01219, %num_recs.0.lcssa1270
  br i1 %exitcond1273.not, label %if.end450, label %for.body, !llvm.loop !75

for.body:                                         ; preds = %land.lhs.true407, %for.cond
  %j.01219 = phi i64 [ %inc437, %for.cond ], [ 0, %land.lhs.true407 ]
  %length414 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.01219, i32 2
  %86 = load i64, i64* %length414, align 8, !tbaa !46
  %cmp415 = icmp ult i64 %86, %mac_size.2
  br i1 %cmp415, label %if.then417, label %if.end418

if.then417:                                       ; preds = %for.body
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 548, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 160, i8* noundef null) #12
  br label %cleanup760

if.end418:                                        ; preds = %for.body
  %arrayidx413 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.01219
  %sub420 = sub i64 %86, %mac_size.2
  store i64 %sub420, i64* %length414, align 8, !tbaa !46
  %data421 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.01219, i32 5
  %87 = load i8*, i8** %data421, align 8, !tbaa !66
  %88 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc424 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %88, i64 0, i32 25
  %89 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc424, align 8, !tbaa !52
  %mac425 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %89, i64 0, i32 1
  %90 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac425, align 8, !tbaa !76
  %call427 = call i32 %90(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arrayidx413, i8* noundef nonnull %1, i32 noundef 0) #12
  %cmp428 = icmp eq i32 %call427, 0
  br i1 %cmp428, label %if.then435, label %lor.lhs.false430

lor.lhs.false430:                                 ; preds = %if.end418
  %add.ptr = getelementptr inbounds i8, i8* %87, i64 %sub420
  %call432 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %1, i8* noundef %add.ptr, i64 noundef %mac_size.2) #12
  %cmp433.not = icmp eq i32 %call432, 0
  br i1 %cmp433.not, label %for.cond, label %if.then435

if.then435:                                       ; preds = %lor.lhs.false430, %if.end418
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 20, i32 noundef 281, i8* noundef null) #12
  br label %cleanup760

if.end441:                                        ; preds = %land.lhs.true407, %if.end403
  %cmp442.not = icmp eq i64 %mac_size.2, 0
  br i1 %cmp442.not, label %if.end450, label %if.then444

if.then444:                                       ; preds = %if.end441
  %mul = shl i64 %inc, 4
  %call445 = call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 568) #12
  %91 = bitcast i8* %call445 to %struct.ssl_mac_buf_st*
  %cmp446 = icmp eq i8* %call445, null
  br i1 %cmp446, label %if.then448, label %if.end450

if.then448:                                       ; preds = %if.then444
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup760

if.end450:                                        ; preds = %for.cond, %if.then444, %if.end441
  %mac_size.41136 = phi i64 [ %mac_size.2, %if.then444 ], [ 0, %if.end441 ], [ 0, %for.cond ]
  %macbufs.0 = phi %struct.ssl_mac_buf_st* [ %91, %if.then444 ], [ null, %if.end441 ], [ null, %for.cond ]
  %92 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc452 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %92, i64 0, i32 25
  %93 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc452, align 8, !tbaa !52
  %enc = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %93, i64 0, i32 0
  %94 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)** %enc, align 8, !tbaa !77
  %call453 = call i32 %94(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i64 noundef %inc, i32 noundef 0, %struct.ssl_mac_buf_st* noundef %macbufs.0, i64 noundef %mac_size.41136) #12
  %cmp454 = icmp eq i32 %call453, 0
  br i1 %cmp454, label %if.then456, label %do.body480

if.then456:                                       ; preds = %if.end450
  %call457 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #12
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %if.end460, label %end742

if.end460:                                        ; preds = %if.then456
  br i1 %cmp317, label %land.lhs.true463, label %if.end478

land.lhs.true463:                                 ; preds = %if.end460
  %call464 = call i32 @ossl_statem_skip_early_data(%struct.ssl_st* noundef nonnull %s) #12
  %tobool465.not = icmp eq i32 %call464, 0
  br i1 %tobool465.not, label %if.end478, label %if.then466

if.then466:                                       ; preds = %land.lhs.true463
  %length468 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  %95 = load i64, i64* %length468, align 8, !tbaa !46
  %call469 = call i32 @early_data_count_ok(%struct.ssl_st* noundef nonnull %s, i64 noundef %95, i64 noundef 104, i32 noundef 0) #14
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %end742, label %if.end472

if.end472:                                        ; preds = %if.then466
  store i64 0, i64* %length468, align 8, !tbaa !46
  %read474 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 8
  store i32 1, i32* %read474, align 8, !tbaa !68
  %numrpipes476 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 3
  store i64 1, i64* %numrpipes476, align 8, !tbaa !72
  call void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef nonnull %rlayer) #12
  br label %end742

if.end478:                                        ; preds = %land.lhs.true463, %if.end460
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 610, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 20, i32 noundef 281, i8* noundef null) #12
  br label %end742

do.body480:                                       ; preds = %if.end450
  %cmp483.not = icmp eq %struct.ssl_session_st* %6, null
  br i1 %cmp483.not, label %for.cond546.preheader, label %land.lhs.true485

land.lhs.true485:                                 ; preds = %do.body480
  %96 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp487.not = icmp eq %struct.evp_cipher_ctx_st* %96, null
  br i1 %cmp487.not, label %for.cond546.preheader, label %land.lhs.true489

land.lhs.true489:                                 ; preds = %land.lhs.true485
  %97 = load i64, i64* %flags, align 8, !tbaa !74
  %and492 = and i64 %97, 256
  %tobool493.not = icmp eq i64 %and492, 0
  br i1 %tobool493.not, label %land.lhs.true494, label %for.cond546.preheader

land.lhs.true494:                                 ; preds = %land.lhs.true489
  %98 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %call496 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %98) #12
  %cmp497.not = icmp eq %struct.evp_md_st* %call496, null
  br i1 %cmp497.not, label %for.cond546.preheader, label %for.cond500.preheader

for.cond500.preheader:                            ; preds = %land.lhs.true494
  %cmp514 = icmp eq %struct.ssl_mac_buf_st* %macbufs.0, null
  %add529 = add nuw nsw i64 %mac_size.41136, 17408
  br label %for.body503

for.body503:                                      ; preds = %for.cond500.preheader, %if.end527
  %enc_err.01221 = phi i32 [ %call453, %for.cond500.preheader ], [ %spec.select1116, %if.end527 ]
  %j.11220 = phi i64 [ 0, %for.cond500.preheader ], [ %inc535, %if.end527 ]
  %arrayidx505 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.11220
  %99 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc507 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %99, i64 0, i32 25
  %100 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc507, align 8, !tbaa !52
  %mac508 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %100, i64 0, i32 1
  %101 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac508, align 8, !tbaa !76
  %call510 = call i32 %101(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arrayidx505, i8* noundef nonnull %1, i32 noundef 0) #12
  %cmp511 = icmp eq i32 %call510, 0
  %or.cond790 = or i1 %cmp514, %cmp511
  br i1 %or.cond790, label %if.then526, label %lor.lhs.false516

lor.lhs.false516:                                 ; preds = %for.body503
  %mac517 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macbufs.0, i64 %j.11220, i32 0
  %102 = load i8*, i8** %mac517, align 8, !tbaa !78
  %cmp518 = icmp eq i8* %102, null
  br i1 %cmp518, label %if.then526, label %lor.lhs.false520

lor.lhs.false520:                                 ; preds = %lor.lhs.false516
  %call523 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %1, i8* noundef nonnull %102, i64 noundef %mac_size.41136) #12
  %cmp524.not = icmp eq i32 %call523, 0
  br i1 %cmp524.not, label %if.end527, label %if.then526

if.then526:                                       ; preds = %lor.lhs.false520, %lor.lhs.false516, %for.body503
  br label %if.end527

if.end527:                                        ; preds = %if.then526, %lor.lhs.false520
  %enc_err.1 = phi i32 [ 0, %if.then526 ], [ %enc_err.01221, %lor.lhs.false520 ]
  %length528 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.11220, i32 2
  %103 = load i64, i64* %length528, align 8, !tbaa !46
  %cmp530 = icmp ugt i64 %103, %add529
  %spec.select1116 = select i1 %cmp530, i32 0, i32 %enc_err.1
  %inc535 = add nuw i64 %j.11220, 1
  %exitcond1274.not = icmp eq i64 %j.11220, %num_recs.0.lcssa1270
  br i1 %exitcond1274.not, label %if.end537, label %for.body503, !llvm.loop !80

if.end537:                                        ; preds = %if.end527
  %phi.cmp = icmp eq i32 %spec.select1116, 0
  br i1 %phi.cmp, label %if.then540, label %for.cond546.preheader

for.cond546.preheader:                            ; preds = %do.body480, %land.lhs.true485, %land.lhs.true494, %land.lhs.true489, %if.end537
  %empty_record_count721 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 13
  br label %for.body549

if.then540:                                       ; preds = %if.end537
  %call541 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #12
  %tobool542.not = icmp eq i32 %call541, 0
  br i1 %tobool542.not, label %if.end544, label %end742

if.end544:                                        ; preds = %if.then540
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 650, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 20, i32 noundef 281, i8* noundef null) #12
  br label %end742

for.body549:                                      ; preds = %for.cond546.preheader, %for.inc723
  %j.21222 = phi i64 [ 0, %for.cond546.preheader ], [ %inc724, %for.inc723 ]
  %arrayidx550 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222
  %104 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !65
  %cmp552.not = icmp eq %struct.comp_ctx_st* %104, null
  br i1 %cmp552.not, label %if.end564, label %if.then554

if.then554:                                       ; preds = %for.body549
  %length555 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 2
  %105 = load i64, i64* %length555, align 8, !tbaa !46
  %cmp556 = icmp ugt i64 %105, 17408
  br i1 %cmp556, label %if.then558, label %if.end559

if.then558:                                       ; preds = %if.then554
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 663, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 140, i8* noundef null) #12
  br label %end742

if.end559:                                        ; preds = %if.then554
  %call560 = call i32 @ssl3_do_uncompress(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arrayidx550) #14
  %tobool561.not = icmp eq i32 %call560, 0
  br i1 %tobool561.not, label %if.then562, label %if.end564

if.then562:                                       ; preds = %if.end559
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 668, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 30, i32 noundef 107, i8* noundef null) #12
  br label %end742

if.end564:                                        ; preds = %if.end559, %for.body549
  %106 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc566 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %106, i64 0, i32 25
  %107 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc566, align 8, !tbaa !52
  %enc_flags567 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %107, i64 0, i32 12
  %108 = load i32, i32* %enc_flags567, align 8, !tbaa !54
  %and568 = and i32 %108, 8
  %tobool569.not = icmp eq i32 %and568, 0
  br i1 %tobool569.not, label %land.lhs.true570, label %if.end644

land.lhs.true570:                                 ; preds = %if.end564
  %version572 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %106, i64 0, i32 0
  %109 = load i32, i32* %version572, align 8, !tbaa !56
  %cmp573 = icmp slt i32 %109, 772
  %cmp578.not = icmp eq i32 %109, 65536
  %or.cond1117 = or i1 %cmp573, %cmp578.not
  br i1 %or.cond1117, label %if.end644, label %land.lhs.true580

land.lhs.true580:                                 ; preds = %land.lhs.true570
  %110 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp582.not = icmp eq %struct.evp_cipher_ctx_st* %110, null
  br i1 %cmp582.not, label %if.end644, label %land.lhs.true584

land.lhs.true584:                                 ; preds = %land.lhs.true580
  %type585 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 1
  %111 = load i32, i32* %type585, align 4, !tbaa !44
  %cmp586.not = icmp eq i32 %111, 21
  br i1 %cmp586.not, label %if.end644, label %if.then588

if.then588:                                       ; preds = %land.lhs.true584
  %length589 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 2
  %112 = load i64, i64* %length589, align 8, !tbaa !46
  %cmp590 = icmp ne i64 %112, 0
  %cmp594.not = icmp eq i32 %111, 23
  %or.cond1118 = select i1 %cmp590, i1 %cmp594.not, i1 false
  br i1 %or.cond1118, label %for.cond600.preheader, label %if.then596

for.cond600.preheader:                            ; preds = %if.then588
  %data604 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 5
  %.pre1277 = load i8*, i8** %data604, align 8, !tbaa !66
  br label %for.cond600

if.then596:                                       ; preds = %if.then588
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 680, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 443, i8* noundef null) #12
  br label %end742

for.cond600:                                      ; preds = %for.cond600.preheader, %land.rhs603
  %end.0.in = phi i64 [ %end.0, %land.rhs603 ], [ %112, %for.cond600.preheader ]
  %end.0 = add i64 %end.0.in, -1
  %cmp601.not = icmp eq i64 %end.0, 0
  br i1 %cmp601.not, label %for.end613, label %land.rhs603

land.rhs603:                                      ; preds = %for.cond600
  %arrayidx605 = getelementptr inbounds i8, i8* %.pre1277, i64 %end.0
  %113 = load i8, i8* %arrayidx605, align 1, !tbaa !70
  %cmp607 = icmp eq i8 %113, 0
  br i1 %cmp607, label %for.cond600, label %for.end613, !llvm.loop !81

for.end613:                                       ; preds = %land.rhs603, %for.cond600
  store i64 %end.0, i64* %length589, align 8, !tbaa !46
  %arrayidx616 = getelementptr inbounds i8, i8* %.pre1277, i64 %end.0
  %114 = load i8, i8* %arrayidx616, align 1, !tbaa !70
  %conv617 = zext i8 %114 to i32
  store i32 %conv617, i32* %type585, align 4, !tbaa !44
  %.off = add i8 %114, -21
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end631, label %if.then630

if.then630:                                       ; preds = %for.end613
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 443, i8* noundef null) #12
  br label %end742

if.end631:                                        ; preds = %for.end613
  %115 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback75, align 8, !tbaa !47
  %tobool633.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %115, null
  br i1 %tobool633.not, label %if.end644, label %if.then634

if.then634:                                       ; preds = %if.end631
  %116 = load i32, i32* %version99, align 8, !tbaa !58
  %117 = load i8*, i8** %msg_callback_arg79, align 8, !tbaa !48
  call void %115(i32 noundef 0, i32 noundef %116, i32 noundef 257, i8* noundef nonnull %arrayidx616, i64 noundef 1, %struct.ssl_st* noundef nonnull %s, i8* noundef %117) #12
  %.pre1278 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc646.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre1278, i64 0, i32 25
  %.pre1279 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc646.phi.trans.insert, align 8, !tbaa !52
  %enc_flags647.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre1279, i64 0, i32 12
  %.pre1280 = load i32, i32* %enc_flags647.phi.trans.insert, align 8, !tbaa !54
  br label %if.end644

if.end644:                                        ; preds = %if.end631, %if.then634, %land.lhs.true584, %land.lhs.true580, %land.lhs.true570, %if.end564
  %118 = phi i32 [ %108, %if.end631 ], [ %.pre1280, %if.then634 ], [ %108, %land.lhs.true584 ], [ %108, %land.lhs.true580 ], [ %108, %land.lhs.true570 ], [ %108, %if.end564 ]
  %119 = phi %struct.ssl_method_st* [ %106, %if.end631 ], [ %.pre1278, %if.then634 ], [ %106, %land.lhs.true584 ], [ %106, %land.lhs.true580 ], [ %106, %land.lhs.true570 ], [ %106, %if.end564 ]
  %and648 = and i32 %118, 8
  %tobool649.not = icmp eq i32 %and648, 0
  br i1 %tobool649.not, label %land.lhs.true650, label %if.end673

land.lhs.true650:                                 ; preds = %if.end644
  %version652 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %119, i64 0, i32 0
  %120 = load i32, i32* %version652, align 8, !tbaa !56
  %cmp653 = icmp slt i32 %120, 772
  %cmp658.not = icmp eq i32 %120, 65536
  %or.cond1119 = or i1 %cmp653, %cmp658.not
  br i1 %or.cond1119, label %if.end673, label %land.lhs.true660

land.lhs.true660:                                 ; preds = %land.lhs.true650
  %type661 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 1
  %121 = load i32, i32* %type661, align 4, !tbaa !44
  %.off1121 = add i32 %121, -21
  %switch1122 = icmp ult i32 %.off1121, 2
  br i1 %switch1122, label %land.lhs.true668, label %if.end673

land.lhs.true668:                                 ; preds = %land.lhs.true660
  %length669 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 2
  %122 = load i64, i64* %length669, align 8, !tbaa !46
  %cmp670 = icmp eq i64 %122, 0
  br i1 %cmp670, label %if.then672, label %if.end673

if.then672:                                       ; preds = %land.lhs.true668
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 710, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 271, i8* noundef null) #12
  br label %end742

if.end673:                                        ; preds = %land.lhs.true660, %land.lhs.true668, %land.lhs.true650, %if.end644
  %length674 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 2
  %123 = load i64, i64* %length674, align 8, !tbaa !46
  %cmp675 = icmp ugt i64 %123, 16384
  br i1 %cmp675, label %if.then677, label %if.end678

if.then677:                                       ; preds = %if.end673
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 716, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 146, i8* noundef null) #12
  br label %end742

if.end678:                                        ; preds = %if.end673
  %124 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %cmp680.not = icmp eq %struct.ssl_session_st* %124, null
  br i1 %cmp680.not, label %if.end705, label %land.lhs.true682

land.lhs.true682:                                 ; preds = %if.end678
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %124, i64 0, i32 26, i32 8
  %125 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !82
  %126 = add i8 %125, -1
  %127 = icmp ult i8 %126, 4
  br i1 %127, label %land.lhs.true694, label %if.end705

land.lhs.true694:                                 ; preds = %land.lhs.true682
  %conv684 = zext i8 %125 to i32
  %sub700 = add nsw i32 %conv684, -1
  %shl = shl nuw nsw i32 512, %sub700
  %conv701 = zext i32 %shl to i64
  %cmp702 = icmp ugt i64 %123, %conv701
  br i1 %cmp702, label %if.then704, label %if.end705

if.then704:                                       ; preds = %land.lhs.true694
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 724, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 146, i8* noundef null) #12
  br label %end742

if.end705:                                        ; preds = %land.lhs.true694, %land.lhs.true682, %if.end678
  %off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %j.21222, i32 4
  store i64 0, i64* %off, align 8, !tbaa !83
  %cmp707 = icmp eq i64 %123, 0
  br i1 %cmp707, label %if.then709, label %if.else719

if.then709:                                       ; preds = %if.end705
  %128 = load i64, i64* %empty_record_count721, align 8, !tbaa !71
  %inc712 = add i64 %128, 1
  store i64 %inc712, i64* %empty_record_count721, align 8, !tbaa !71
  %cmp715 = icmp ugt i64 %inc712, 32
  br i1 %cmp715, label %if.then717, label %for.inc723

if.then717:                                       ; preds = %if.then709
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 742, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_get_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 298, i8* noundef null) #12
  br label %end742

if.else719:                                       ; preds = %if.end705
  store i64 0, i64* %empty_record_count721, align 8, !tbaa !71
  br label %for.inc723

for.inc723:                                       ; preds = %if.else719, %if.then709
  %inc724 = add nuw i64 %j.21222, 1
  %exitcond1275 = icmp eq i64 %j.21222, %num_recs.0.lcssa1270
  br i1 %exitcond1275, label %for.end725, label %for.body549, !llvm.loop !84

for.end725:                                       ; preds = %for.inc723
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %129 = load i32, i32* %early_data_state, align 4, !tbaa !85
  %cmp726 = icmp eq i32 %129, 11
  br i1 %cmp726, label %if.then728, label %if.end739

if.then728:                                       ; preds = %for.end725
  %type730 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 1
  %130 = load i32, i32* %type730, align 4, !tbaa !44
  %cmp731 = icmp eq i32 %130, 23
  br i1 %cmp731, label %land.lhs.true733, label %if.end739

land.lhs.true733:                                 ; preds = %if.then728
  %length734 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  %131 = load i64, i64* %length734, align 8, !tbaa !46
  %call735 = call i32 @early_data_count_ok(%struct.ssl_st* noundef nonnull %s, i64 noundef %131, i64 noundef 0, i32 noundef 0) #14
  %tobool736.not = icmp eq i32 %call735, 0
  br i1 %tobool736.not, label %end742, label %if.end739

if.end739:                                        ; preds = %if.then728, %land.lhs.true733, %for.end725
  %numrpipes741 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 3
  store i64 %inc, i64* %numrpipes741, align 8, !tbaa !72
  br label %end742

end742:                                           ; preds = %if.then596, %if.then630, %land.lhs.true733, %if.then540, %if.then466, %if.then456, %if.end739, %if.then717, %if.then704, %if.then677, %if.then672, %if.then562, %if.then558, %if.end544, %if.end478, %if.end472
  %ret.0 = phi i32 [ -1, %if.then456 ], [ 1, %if.end472 ], [ -1, %if.then466 ], [ -1, %if.end478 ], [ -1, %if.then540 ], [ -1, %if.end544 ], [ -1, %if.then558 ], [ -1, %if.then677 ], [ -1, %if.then704 ], [ -1, %if.then717 ], [ -1, %if.then672 ], [ -1, %if.then562 ], [ 1, %if.end739 ], [ -1, %land.lhs.true733 ], [ -1, %if.then630 ], [ -1, %if.then596 ]
  %cmp743.not = icmp eq %struct.ssl_mac_buf_st* %macbufs.0, null
  br i1 %cmp743.not, label %cleanup760, label %for.body749

for.body749:                                      ; preds = %end742, %for.inc756
  %j.31226 = phi i64 [ %inc757, %for.inc756 ], [ 0, %end742 ]
  %alloced = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macbufs.0, i64 %j.31226, i32 1
  %132 = load i32, i32* %alloced, align 8, !tbaa !86
  %tobool751.not = icmp eq i32 %132, 0
  br i1 %tobool751.not, label %for.inc756, label %if.then752

if.then752:                                       ; preds = %for.body749
  %mac754 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macbufs.0, i64 %j.31226, i32 0
  %133 = load i8*, i8** %mac754, align 8, !tbaa !78
  call void @CRYPTO_free(i8* noundef %133, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 765) #12
  br label %for.inc756

for.inc756:                                       ; preds = %for.body749, %if.then752
  %inc757 = add nuw i64 %j.31226, 1
  %exitcond1276.not = icmp eq i64 %j.31226, %num_recs.0.lcssa1270
  br i1 %exitcond1276.not, label %for.end758, label %for.body749, !llvm.loop !87

for.end758:                                       ; preds = %for.inc756
  %134 = bitcast %struct.ssl_mac_buf_st* %macbufs.0 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %134, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 767) #12
  br label %cleanup760

cleanup760:                                       ; preds = %if.then264, %if.then435, %if.then417, %cleanup400, %cleanup249.thread, %cleanup.thread, %end742, %for.end758, %if.then448, %if.end375, %if.then374, %if.then365, %if.then235
  %retval.9 = phi i32 [ -1, %if.then365 ], [ -1, %if.then374 ], [ 1, %if.end375 ], [ -1, %if.then448 ], [ -1, %cleanup400 ], [ -1, %if.then235 ], [ %ret.0, %for.end758 ], [ %ret.0, %end742 ], [ %retval.1.ph, %cleanup.thread ], [ -1, %cleanup249.thread ], [ -1, %if.then417 ], [ -1, %if.then435 ], [ %call265, %if.then264 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.9
}

declare i32 @ssl3_read_n(%struct.ssl_st* noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #4 {
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

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2_len(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #6 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef %pkt, i32* noundef nonnull %i) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4, !tbaa !49
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %data, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 1) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ssl3_record_app_data_waiting(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #9 {
entry:
  %buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %0 = load i8*, i8** %buf, align 8, !tbaa !91
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %left2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 4
  %1 = load i64, i64* %left2, align 8, !tbaa !92
  %cmp3 = icmp ult i64 %1, 5
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 3
  %2 = load i64, i64* %offset, align 8, !tbaa !93
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %2
  %3 = load i8, i8* %add.ptr, align 1, !tbaa !70
  %cmp6.not = icmp eq i8 %3, 23
  br i1 %cmp6.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.end5
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 3
  %4 = load i8, i8* %add.ptr10, align 1, !tbaa !70
  %conv11 = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv11, 8
  %arrayidx12 = getelementptr inbounds i8, i8* %add.ptr10, i64 1
  %5 = load i8, i8* %arrayidx12, align 1, !tbaa !70
  %conv13 = zext i8 %5 to i64
  %or = or i64 %shl, %conv13
  %add = add nuw nsw i64 %or, 5
  %cmp16 = icmp uge i64 %1, %add
  %. = zext i1 %cmp16 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end5 ], [ %., %if.end9 ]
  ret i32 %retval.0
}

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ossl_statem_in_error(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_skip_early_data(%struct.ssl_st* noundef) local_unnamed_addr #3

declare void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_do_uncompress(%struct.ssl_st* nocapture noundef readonly %ssl, %struct.ssl3_record_st* nocapture noundef %rr) local_unnamed_addr #0 {
entry:
  %comp = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr, i64 0, i32 7
  %0 = load i8*, i8** %comp, align 8, !tbaa !4
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 17728, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 779) #12
  store i8* %call, i8** %comp, align 8, !tbaa !4
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %1 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 45
  %2 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !65
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr, i64 0, i32 5
  %3 = load i8*, i8** %data, align 8, !tbaa !66
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr, i64 0, i32 2
  %4 = load i64, i64* %length, align 8, !tbaa !46
  %conv = trunc i64 %4 to i32
  %call7 = tail call i32 @COMP_expand_block(%struct.comp_ctx_st* noundef %2, i8* noundef nonnull %1, i32 noundef 16384, i8* noundef %3, i32 noundef %conv) #12
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end5
  %conv1127 = zext i32 %call7 to i64
  store i64 %conv1127, i64* %length, align 8, !tbaa !46
  %5 = load i8*, i8** %comp, align 8, !tbaa !4
  store i8* %5, i8** %data, align 8, !tbaa !66
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @COMP_expand_block(%struct.comp_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_do_compress(%struct.ssl_st* nocapture noundef readonly %ssl, %struct.ssl3_record_st* nocapture noundef %wr) local_unnamed_addr #0 {
entry:
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 44
  %0 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !94
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 5
  %1 = load i8*, i8** %data, align 8, !tbaa !66
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 2
  %2 = load i64, i64* %length, align 8, !tbaa !46
  %3 = trunc i64 %2 to i32
  %conv = add i32 %3, 1024
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 6
  %4 = load i8*, i8** %input, align 8, !tbaa !95
  %call = tail call i32 @COMP_compress_block(%struct.comp_ctx_st* noundef %0, i8* noundef %1, i32 noundef %conv, i8* noundef %4, i32 noundef %3) #12
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %conv416 = zext i32 %call to i64
  store i64 %conv416, i64* %length, align 8, !tbaa !46
  %5 = load i8*, i8** %data, align 8, !tbaa !66
  store i8* %5, i8** %input, align 8, !tbaa !95
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @COMP_compress_block(%struct.comp_ctx_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_enc(%struct.ssl_st* noundef %s, %struct.ssl3_record_st* noundef %inrecs, i64 noundef %n_recs, i32 noundef %sending, %struct.ssl_mac_buf_st* noundef %mac, i64 noundef %macsize) local_unnamed_addr #0 {
entry:
  %outlen = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp77 = alloca %struct.ossl_param_st, align 8
  %cmp.not = icmp eq i64 %n_recs, 1
  br i1 %cmp.not, label %if.end, label %cleanup118

if.end:                                           ; preds = %entry
  %tobool = icmp ne i32 %sending, 0
  br i1 %tobool, label %if.then1, label %if.else7

if.then1:                                         ; preds = %if.end
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !59
  %cmp3 = icmp eq %struct.evp_cipher_ctx_st* %0, null
  br i1 %cmp3, label %if.then20, label %if.end15

if.else7:                                         ; preds = %if.end
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp9 = icmp eq %struct.evp_cipher_ctx_st* %1, null
  br i1 %cmp9, label %if.then20, label %if.end15

if.end15:                                         ; preds = %if.else7, %if.then1
  %.sink = phi %struct.evp_cipher_ctx_st* [ %0, %if.then1 ], [ %1, %if.else7 ]
  %call13 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %.sink) #12
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %cmp16 = icmp eq %struct.ssl_session_st* %2, null
  %cmp19 = icmp eq %struct.evp_cipher_st* %call13, null
  %or.cond127 = select i1 %cmp16, i1 true, i1 %cmp19
  br i1 %or.cond127, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else7, %if.then1, %if.end15
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 5
  %3 = load i8*, i8** %data, align 8, !tbaa !66
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 6
  %4 = load i8*, i8** %input, align 8, !tbaa !95
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 2
  %5 = load i64, i64* %length, align 8, !tbaa !46
  %call21 = tail call i8* @memmove(i8* noundef %3, i8* noundef %4, i64 noundef %5) #12
  %6 = load i8*, i8** %data, align 8, !tbaa !66
  store i8* %6, i8** %input, align 8, !tbaa !95
  br label %cleanup118

if.else24:                                        ; preds = %if.end15
  %call25 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %call13) #12
  %cmp26 = icmp ne %struct.ossl_provider_st* %call25, null
  %length27 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 2
  %7 = load i64, i64* %length27, align 8, !tbaa !46
  %call28 = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef nonnull %.sink) #12
  %conv29 = sext i32 %call28 to i64
  %cmp30 = icmp ne i32 %call28, 1
  %or.cond128 = and i1 %tobool, %cmp30
  %or.cond128.not = xor i1 %or.cond128, true
  %or.cond129 = select i1 %or.cond128.not, i1 true, i1 %cmp26
  br i1 %or.cond129, label %if.end46, label %if.then35

if.then35:                                        ; preds = %if.else24
  %rem = urem i64 %7, %conv29
  %sub = sub i64 %conv29, %rem
  %add = add i64 %sub, %7
  %input36 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 6
  %8 = load i8*, i8** %input36, align 8, !tbaa !95
  %9 = load i64, i64* %length27, align 8, !tbaa !46
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9
  %call38 = tail call i8* @memset(i8* noundef %arrayidx, i32 noundef 0, i64 noundef %sub) #12
  %10 = load i64, i64* %length27, align 8, !tbaa !46
  %add40 = add i64 %10, %sub
  store i64 %add40, i64* %length27, align 8, !tbaa !46
  %11 = trunc i64 %sub to i8
  %conv42 = add i8 %11, -1
  %12 = load i8*, i8** %input36, align 8, !tbaa !95
  %sub44 = add i64 %add, -1
  %arrayidx45 = getelementptr inbounds i8, i8* %12, i64 %sub44
  store i8 %conv42, i8* %arrayidx45, align 1, !tbaa !70
  br label %if.end46

if.end46:                                         ; preds = %if.then35, %if.else24
  %l.0 = phi i64 [ %7, %if.else24 ], [ %add, %if.then35 ]
  br i1 %tobool, label %if.end57, label %if.then48

if.then48:                                        ; preds = %if.end46
  %cmp49 = icmp eq i64 %l.0, 0
  br i1 %cmp49, label %cleanup118, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.then48
  %rem52 = urem i64 %l.0, %conv29
  %cmp53.not = icmp eq i64 %rem52, 0
  br i1 %cmp53.not, label %if.end57, label %cleanup118

if.end57:                                         ; preds = %lor.lhs.false51, %if.end46
  %call58 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %call13) #12
  %cmp59.not = icmp eq %struct.ossl_provider_st* %call58, null
  br i1 %cmp59.not, label %if.else88, label %if.then61

if.then61:                                        ; preds = %if.end57
  %13 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #13
  %data62 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 5
  %14 = load i8*, i8** %data62, align 8, !tbaa !66
  %input63 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 6
  %15 = load i8*, i8** %input63, align 8, !tbaa !95
  %conv64 = trunc i64 %l.0 to i32
  %call65 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %.sink, i8* noundef %14, i32* noundef nonnull %outlen, i8* noundef %15, i32 noundef %conv64) #12
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup85, label %if.end68

if.end68:                                         ; preds = %if.then61
  %16 = load i32, i32* %outlen, align 4, !tbaa !49
  %conv69 = sext i32 %16 to i64
  store i64 %conv69, i64* %length27, align 8, !tbaa !46
  %tobool71 = icmp eq i32 %sending, 0
  %cmp73 = icmp ne %struct.ssl_mac_buf_st* %mac, null
  %or.cond130 = and i1 %tobool71, %cmp73
  br i1 %or.cond130, label %if.then75, label %if.end84

if.then75:                                        ; preds = %if.end68
  %17 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %17) #13
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %alloced = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %mac, i64 0, i32 1
  store i32 0, i32* %alloced, align 8, !tbaa !86
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %mac76 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %mac, i64 0, i32 0
  %params210 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params210, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** noundef nonnull %mac76, i64 noundef %macsize) #12
  %18 = bitcast %struct.ossl_param_st* %tmp77 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp77) #12
  %19 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #13
  %call79 = call i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* noundef nonnull %.sink, %struct.ossl_param_st* noundef nonnull %arraydecay) #12
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %if.end84.critedge

if.then81:                                        ; preds = %if.then75
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 910, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.ssl3_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %17) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #13
  br label %cleanup118

if.end84.critedge:                                ; preds = %if.then75
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %17) #13
  br label %if.end84

if.end84:                                         ; preds = %if.end84.critedge, %if.end68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #13
  br label %cleanup118

cleanup85:                                        ; preds = %if.then61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #13
  br label %cleanup118

if.else88:                                        ; preds = %if.end57
  %data89 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 5
  %20 = load i8*, i8** %data89, align 8, !tbaa !66
  %input90 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 6
  %21 = load i8*, i8** %input90, align 8, !tbaa !95
  %conv91 = trunc i64 %l.0 to i32
  %call92 = tail call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef nonnull %.sink, i8* noundef %20, i8* noundef %21, i32 noundef %conv91) #12
  %cmp93 = icmp slt i32 %call92, 1
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.else88
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 917, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.ssl3_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 20, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup118

if.end96:                                         ; preds = %if.else88
  br i1 %tobool, label %cleanup118, label %if.then98

if.then98:                                        ; preds = %if.end96
  %orig_len = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %inrecs, i64 0, i32 3
  %22 = load i64, i64* %orig_len, align 8, !tbaa !67
  %23 = load i8*, i8** %data89, align 8, !tbaa !66
  %cmp101.not = icmp eq %struct.ssl_mac_buf_st* %mac, null
  %mac103 = getelementptr %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %mac, i64 0, i32 0
  %alloced107 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %mac, i64 0, i32 1
  %cond110 = select i1 %cmp101.not, i32* null, i32* %alloced107
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %24 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !97
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %24, i64 0, i32 0
  %25 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !98
  %call111 = tail call i32 @ssl3_cbc_remove_padding_and_mac(i64* noundef nonnull %length27, i64 noundef %22, i8* noundef %23, i8** noundef %mac103, i32* noundef %cond110, i64 noundef %conv29, i64 noundef %macsize, %struct.ossl_lib_ctx_st* noundef %25) #12
  br label %cleanup118

cleanup118:                                       ; preds = %if.then81, %if.then48, %lor.lhs.false51, %if.then95, %if.then98, %cleanup85, %if.then20, %if.end96, %if.end84, %entry
  %retval.5 = phi i32 [ 0, %entry ], [ 1, %if.end84 ], [ 1, %if.end96 ], [ 1, %if.then20 ], [ 0, %if.then81 ], [ 0, %if.then48 ], [ 0, %lor.lhs.false51 ], [ 0, %if.then95 ], [ %call111, %if.then98 ], [ 0, %cleanup85 ]
  ret i32 %retval.5
}

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ssl3_cbc_remove_padding_and_mac(i64* noundef, i64 noundef, i8* noundef, i8** noundef, i32* noundef, i64 noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_enc(%struct.ssl_st* noundef %s, %struct.ssl3_record_st* noundef %recs, i64 noundef %n_recs, i32 noundef %sending, %struct.ssl_mac_buf_st* noundef %macs, i64 noundef %macsize) local_unnamed_addr #0 {
entry:
  %reclen = alloca [32 x i64], align 16
  %buf = alloca [32 x [13 x i8]], align 16
  %dtlsseq = alloca [8 x i8], align 1
  %data304 = alloca [32 x i8*], align 16
  %outlen = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp455 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [32 x i64]* %reclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #13
  %1 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %1) #13
  %tobool = icmp ne i32 %sending, 0
  %mac_flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 28
  %2 = load i32, i32* %mac_flags, align 8, !tbaa !103
  br i1 %tobool, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %and = and i32 %2, 8
  %cmp = icmp eq i64 %n_recs, 0
  br i1 %cmp, label %if.then, label %if.then4

cond.end.thread:                                  ; preds = %entry
  %and2 = and i32 %2, 4
  %cmp945 = icmp eq i64 %n_recs, 0
  br i1 %cmp945, label %if.then, label %if.else55

if.then:                                          ; preds = %cond.end.thread, %cond.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 960, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.then4:                                         ; preds = %cond.end
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !60
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %3) #12
  %tobool5.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %tobool5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.then4
  %4 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !60
  %call8 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %4) #12
  %call9 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call8) #12
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.then6
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 968, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.end15:                                         ; preds = %if.then6, %if.then4
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %5 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !59
  %cmp17 = icmp eq %struct.evp_cipher_ctx_st* %5, null
  br i1 %cmp17, label %for.body93.preheader, label %if.else

if.else:                                          ; preds = %if.end15
  %call21 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %5) #12
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 25
  %7 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !52
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %7, i64 0, i32 12
  %8 = load i32, i32* %enc_flags, align 8, !tbaa !54
  %and22 = and i32 %8, 1
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end81, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call24 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call21) #12
  %cmp25 = icmp eq i32 %call24, 2
  br i1 %cmp25, label %if.end30, label %if.end81

if.end30:                                         ; preds = %land.lhs.true
  %call28 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %call21) #12
  %cmp31 = icmp sgt i32 %call28, 1
  br i1 %cmp31, label %for.body.lr.ph, label %if.end81

for.body.lr.ph:                                   ; preds = %if.end30
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %conv431038 = zext i32 %call28 to i64
  br label %for.body

for.cond:                                         ; preds = %if.else40
  %exitcond.not = icmp eq i64 %inc, %n_recs
  br i1 %exitcond.not, label %if.end81, label %for.body, !llvm.loop !104

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %ctr.0970 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.0970, i32 5
  %9 = load i8*, i8** %data, align 8, !tbaa !66
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.0970, i32 6
  %10 = load i8*, i8** %input, align 8, !tbaa !95
  %cmp37.not = icmp eq i8* %9, %10
  br i1 %cmp37.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %for.body
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 992, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.else40:                                        ; preds = %for.body
  %11 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !97
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %11, i64 0, i32 0
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !98
  %call44 = tail call i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef %12, i8* noundef %9, i64 noundef %conv431038, i32 noundef 0) #12
  %cmp45 = icmp slt i32 %call44, 1
  %inc = add nuw i64 %ctr.0970, 1
  br i1 %cmp45, label %if.then47, label %for.cond

if.then47:                                        ; preds = %if.else40
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 996, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.else55:                                        ; preds = %cond.end.thread
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 43
  %13 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %call56 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %13) #12
  %tobool57.not = icmp eq %struct.evp_md_st* %call56, null
  br i1 %tobool57.not, label %if.end72, label %if.then58

if.then58:                                        ; preds = %if.else55
  %14 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %call61 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %14) #12
  %call62 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call61) #12
  %cmp63 = icmp sgt i32 %call62, -1
  br i1 %cmp63, label %if.end72, label %if.then67

if.then67:                                        ; preds = %if.then58
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1006, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.end72:                                         ; preds = %if.then58, %if.else55
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %15 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp74 = icmp eq %struct.evp_cipher_ctx_st* %15, null
  br i1 %cmp74, label %for.body93.preheader, label %if.else77

if.else77:                                        ; preds = %if.end72
  %call79 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %15) #12
  br label %if.end81

if.end81:                                         ; preds = %for.cond, %if.else, %land.lhs.true, %if.end30, %if.else77
  %cond946948 = phi i32 [ %and2, %if.else77 ], [ %and, %if.end30 ], [ %and, %land.lhs.true ], [ %and, %if.else ], [ %and, %for.cond ]
  %enc.0 = phi %struct.evp_cipher_st* [ %call79, %if.else77 ], [ %call21, %if.end30 ], [ %call21, %land.lhs.true ], [ %call21, %if.else ], [ %call21, %for.cond ]
  %ds.0 = phi %struct.evp_cipher_ctx_st* [ %15, %if.else77 ], [ %5, %if.end30 ], [ %5, %land.lhs.true ], [ %5, %if.else ], [ %5, %for.cond ]
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %16 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %cmp82 = icmp eq %struct.ssl_session_st* %16, null
  %cmp87 = icmp eq %struct.evp_cipher_st* %enc.0, null
  %or.cond645 = select i1 %cmp82, i1 true, i1 %cmp87
  br i1 %or.cond645, label %for.cond90.preheader, label %if.else107

for.cond90.preheader:                             ; preds = %if.end81
  %cmp91996.not = icmp eq i64 %n_recs, 0
  br i1 %cmp91996.not, label %cleanup623, label %for.body93.preheader

for.body93.preheader:                             ; preds = %if.end15, %if.end72, %for.cond90.preheader
  br label %for.body93

for.body93:                                       ; preds = %for.body93.preheader, %for.body93
  %ctr.1997 = phi i64 [ %inc105, %for.body93 ], [ 0, %for.body93.preheader ]
  %data95 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.1997, i32 5
  %17 = load i8*, i8** %data95, align 8, !tbaa !66
  %input97 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.1997, i32 6
  %18 = load i8*, i8** %input97, align 8, !tbaa !95
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.1997, i32 2
  %19 = load i64, i64* %length, align 8, !tbaa !46
  %call99 = tail call i8* @memmove(i8* noundef %17, i8* noundef %18, i64 noundef %19) #12
  %20 = load i8*, i8** %data95, align 8, !tbaa !66
  store i8* %20, i8** %input97, align 8, !tbaa !95
  %inc105 = add nuw i64 %ctr.1997, 1
  %exitcond1015.not = icmp eq i64 %inc105, %n_recs
  br i1 %exitcond1015.not, label %cleanup623, label %for.body93, !llvm.loop !105

if.else107:                                       ; preds = %if.end81
  %call108 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef nonnull %enc.0) #12
  %cmp109 = icmp ne %struct.ossl_provider_st* %call108, null
  %call111 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0) #12
  %call112 = tail call i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef %call111) #12
  %conv113 = sext i32 %call112 to i64
  %cmp114 = icmp ugt i64 %n_recs, 1
  br i1 %cmp114, label %if.then116, label %if.end124

if.then116:                                       ; preds = %if.else107
  %call117 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0) #12
  %call118 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call117) #12
  %and119 = and i64 %call118, 8388608
  %cmp120 = icmp eq i64 %and119, 0
  br i1 %cmp120, label %if.then122, label %for.body128.lr.ph

if.then122:                                       ; preds = %if.then116
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1034, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 406, i8* noundef null) #12
  br label %cleanup623

if.end124:                                        ; preds = %if.else107
  %cmp126975.not = icmp eq i64 %n_recs, 0
  br i1 %cmp126975.not, label %if.end348, label %for.body128.lr.ph

for.body128.lr.ph:                                ; preds = %if.then116, %if.end124
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  %arraydecay142 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 0
  %cond144 = select i1 %tobool, i8* %arraydecay, i8* %arraydecay142
  %method145 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %dtlsseq, i64 0, i64 0
  %d158 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %arrayidx180 = getelementptr inbounds [8 x i8], [8 x i8]* %dtlsseq, i64 0, i64 1
  %add.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %dtlsseq, i64 0, i64 2
  %arrayidx181 = getelementptr inbounds i8, i8* %cond144, i64 2
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %cmp251 = icmp ne i32 %call112, 1
  %or.cond646 = and i1 %tobool, %cmp251
  %or.cond646.not = xor i1 %or.cond646, true
  %or.cond647 = select i1 %or.cond646.not, i1 true, i1 %cmp109
  %arrayidx195 = getelementptr inbounds i8, i8* %cond144, i64 7
  %arrayidx195.1 = getelementptr inbounds i8, i8* %cond144, i64 6
  %arrayidx195.2 = getelementptr inbounds i8, i8* %cond144, i64 5
  %arrayidx195.3 = getelementptr inbounds i8, i8* %cond144, i64 4
  %arrayidx195.4 = getelementptr inbounds i8, i8* %cond144, i64 3
  %arrayidx195.5 = getelementptr inbounds i8, i8* %cond144, i64 2
  %arrayidx195.6 = getelementptr inbounds i8, i8* %cond144, i64 1
  br label %for.body128

for.body128:                                      ; preds = %for.body128.lr.ph, %for.inc298
  %pad.0982 = phi i32 [ 0, %for.body128.lr.ph ], [ %pad.1956, %for.inc298 ]
  %ctr.2976 = phi i64 [ 0, %for.body128.lr.ph ], [ %inc299, %for.inc298 ]
  %length130 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.2976, i32 2
  %22 = load i64, i64* %length130, align 8, !tbaa !46
  %arrayidx131 = getelementptr inbounds [32 x i64], [32 x i64]* %reclen, i64 0, i64 %ctr.2976
  store i64 %22, i64* %arrayidx131, align 8, !tbaa !42
  %call132 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0) #12
  %call133 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call132) #12
  %and134 = and i64 %call133, 2097152
  %cmp135.not = icmp eq i64 %and134, 0
  br i1 %cmp135.not, label %if.else250, label %if.then137

if.then137:                                       ; preds = %for.body128
  %23 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method145, align 8, !tbaa !51
  %ssl3_enc146 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %23, i64 0, i32 25
  %24 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc146, align 8, !tbaa !52
  %enc_flags147 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %24, i64 0, i32 12
  %25 = load i32, i32* %enc_flags147, align 8, !tbaa !54
  %and148 = and i32 %25, 8
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.else187, label %if.then150

if.then150:                                       ; preds = %if.then137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #13
  %26 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d158, align 8, !tbaa !106
  br i1 %tobool, label %cond.true166, label %cond.false171

cond.true166:                                     ; preds = %if.then150
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %26, i64 0, i32 1
  %cond161.in953 = load i16, i16* %w_epoch, align 2, !tbaa !107
  %27 = lshr i16 %cond161.in953, 8
  %conv163954 = trunc i16 %27 to i8
  store i8 %conv163954, i8* %21, align 1, !tbaa !70
  br label %cond.end176

cond.false171:                                    ; preds = %if.then150
  %r_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %26, i64 0, i32 0
  %cond161.in = load i16, i16* %r_epoch, align 2, !tbaa !107
  %28 = lshr i16 %cond161.in, 8
  %conv163 = trunc i16 %28 to i8
  store i8 %conv163, i8* %21, align 1, !tbaa !70
  %cond177.in.pre = load i16, i16* %r_epoch, align 2, !tbaa !107
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false171, %cond.true166
  %cond177.in = phi i16 [ %cond161.in953, %cond.true166 ], [ %cond177.in.pre, %cond.false171 ]
  %conv179 = trunc i16 %cond177.in to i8
  store i8 %conv179, i8* %arrayidx180, align 1, !tbaa !70
  %call182 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %arrayidx181, i64 noundef 6) #12
  %arraydecay184 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 0
  %call186 = call i8* @memcpy(i8* noundef nonnull %arraydecay184, i8* noundef nonnull %21, i64 noundef 8) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #13
  br label %if.end206

if.else187:                                       ; preds = %if.then137
  %arraydecay189 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 0
  %call190 = call i8* @memcpy(i8* noundef nonnull %arraydecay189, i8* noundef nonnull %cond144, i64 noundef 8) #12
  %29 = load i8, i8* %arrayidx195, align 1, !tbaa !70
  %inc196 = add i8 %29, 1
  store i8 %inc196, i8* %arrayidx195, align 1, !tbaa !70
  %cmp200.not = icmp eq i8 %inc196, 0
  br i1 %cmp200.not, label %for.body194.1, label %if.end206, !llvm.loop !108

for.body194.1:                                    ; preds = %if.else187
  %30 = load i8, i8* %arrayidx195.1, align 1, !tbaa !70
  %inc196.1 = add i8 %30, 1
  store i8 %inc196.1, i8* %arrayidx195.1, align 1, !tbaa !70
  %cmp200.not.1 = icmp eq i8 %inc196.1, 0
  br i1 %cmp200.not.1, label %for.body194.2, label %if.end206, !llvm.loop !108

for.body194.2:                                    ; preds = %for.body194.1
  %31 = load i8, i8* %arrayidx195.2, align 1, !tbaa !70
  %inc196.2 = add i8 %31, 1
  store i8 %inc196.2, i8* %arrayidx195.2, align 1, !tbaa !70
  %cmp200.not.2 = icmp eq i8 %inc196.2, 0
  br i1 %cmp200.not.2, label %for.body194.3, label %if.end206, !llvm.loop !108

for.body194.3:                                    ; preds = %for.body194.2
  %32 = load i8, i8* %arrayidx195.3, align 1, !tbaa !70
  %inc196.3 = add i8 %32, 1
  store i8 %inc196.3, i8* %arrayidx195.3, align 1, !tbaa !70
  %cmp200.not.3 = icmp eq i8 %inc196.3, 0
  br i1 %cmp200.not.3, label %for.body194.4, label %if.end206, !llvm.loop !108

for.body194.4:                                    ; preds = %for.body194.3
  %33 = load i8, i8* %arrayidx195.4, align 1, !tbaa !70
  %inc196.4 = add i8 %33, 1
  store i8 %inc196.4, i8* %arrayidx195.4, align 1, !tbaa !70
  %cmp200.not.4 = icmp eq i8 %inc196.4, 0
  br i1 %cmp200.not.4, label %for.body194.5, label %if.end206, !llvm.loop !108

for.body194.5:                                    ; preds = %for.body194.4
  %34 = load i8, i8* %arrayidx195.5, align 1, !tbaa !70
  %inc196.5 = add i8 %34, 1
  store i8 %inc196.5, i8* %arrayidx195.5, align 1, !tbaa !70
  %cmp200.not.5 = icmp eq i8 %inc196.5, 0
  br i1 %cmp200.not.5, label %for.body194.6, label %if.end206, !llvm.loop !108

for.body194.6:                                    ; preds = %for.body194.5
  %35 = load i8, i8* %arrayidx195.6, align 1, !tbaa !70
  %inc196.6 = add i8 %35, 1
  store i8 %inc196.6, i8* %arrayidx195.6, align 1, !tbaa !70
  %cmp200.not.6 = icmp eq i8 %inc196.6, 0
  br i1 %cmp200.not.6, label %for.body194.7, label %if.end206, !llvm.loop !108

for.body194.7:                                    ; preds = %for.body194.6
  %36 = load i8, i8* %cond144, align 1, !tbaa !70
  %inc196.7 = add i8 %36, 1
  store i8 %inc196.7, i8* %cond144, align 1, !tbaa !70
  br label %if.end206

if.end206:                                        ; preds = %if.else187, %for.body194.1, %for.body194.2, %for.body194.3, %for.body194.4, %for.body194.5, %for.body194.6, %for.body194.7, %cond.end176
  %type = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.2976, i32 1
  %37 = load i32, i32* %type, align 4, !tbaa !44
  %conv208 = trunc i32 %37 to i8
  %arrayidx210 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 8
  store i8 %conv208, i8* %arrayidx210, align 1, !tbaa !70
  %38 = load i32, i32* %version, align 8, !tbaa !58
  %39 = lshr i32 %38, 8
  %conv212 = trunc i32 %39 to i8
  %arrayidx214 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 9
  store i8 %conv212, i8* %arrayidx214, align 1, !tbaa !70
  %conv216 = trunc i32 %38 to i8
  %arrayidx218 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 10
  store i8 %conv216, i8* %arrayidx218, align 1, !tbaa !70
  %40 = load i64, i64* %length130, align 8, !tbaa !46
  %shr221 = lshr i64 %40, 8
  %conv222 = trunc i64 %shr221 to i8
  %arrayidx224 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 11
  store i8 %conv222, i8* %arrayidx224, align 1, !tbaa !70
  %conv228 = trunc i64 %40 to i8
  %arrayidx230 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 12
  store i8 %conv228, i8* %arrayidx230, align 1, !tbaa !70
  %arraydecay232 = getelementptr inbounds [32 x [13 x i8]], [32 x [13 x i8]]* %buf, i64 0, i64 %ctr.2976, i64 0
  %call233 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i32 noundef 22, i32 noundef 13, i8* noundef nonnull %arraydecay232) #12
  %cmp234 = icmp slt i32 %call233, 1
  br i1 %cmp234, label %cleanup247, label %if.end237

if.end237:                                        ; preds = %if.end206
  br i1 %tobool, label %if.end284.thread, label %if.then286

if.end284.thread:                                 ; preds = %if.end237
  %conv240961 = zext i32 %call233 to i64
  %41 = load i64, i64* %arrayidx131, align 8, !tbaa !42
  %add = add i64 %41, %conv240961
  store i64 %add, i64* %arrayidx131, align 8, !tbaa !42
  %42 = load i64, i64* %length130, align 8, !tbaa !46
  %add245 = add i64 %42, %conv240961
  store i64 %add245, i64* %length130, align 8, !tbaa !46
  br label %for.inc298

cleanup247:                                       ; preds = %if.end206
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1073, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.else250:                                       ; preds = %for.body128
  br i1 %or.cond647, label %if.end284, label %if.then257

if.then257:                                       ; preds = %if.else250
  %43 = load i64, i64* %arrayidx131, align 8, !tbaa !42
  %rem = urem i64 %43, %conv113
  %sub = sub i64 %conv113, %rem
  %cmp259 = icmp ugt i64 %sub, 256
  br i1 %cmp259, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.then257
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1092, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.end262:                                        ; preds = %if.then257
  %44 = trunc i64 %sub to i8
  %conv264 = add i8 %44, -1
  %add268972 = add i64 %43, %sub
  %cmp269973 = icmp ult i64 %43, %add268972
  br i1 %cmp269973, label %for.body271.lr.ph, label %for.end277

for.body271.lr.ph:                                ; preds = %if.end262
  %input273 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.2976, i32 6
  br label %for.body271

for.body271:                                      ; preds = %for.body271.lr.ph, %for.body271
  %loop.0974 = phi i64 [ %43, %for.body271.lr.ph ], [ %inc276, %for.body271 ]
  %45 = load i8*, i8** %input273, align 8, !tbaa !95
  %arrayidx274 = getelementptr inbounds i8, i8* %45, i64 %loop.0974
  store i8 %conv264, i8* %arrayidx274, align 1, !tbaa !70
  %inc276 = add nuw i64 %loop.0974, 1
  %46 = load i64, i64* %arrayidx131, align 8, !tbaa !42
  %add268 = add i64 %46, %sub
  %cmp269 = icmp ult i64 %inc276, %add268
  br i1 %cmp269, label %for.body271, label %for.end277, !llvm.loop !109

for.end277:                                       ; preds = %for.body271, %if.end262
  %add268.lcssa = phi i64 [ %add268972, %if.end262 ], [ %add268, %for.body271 ]
  store i64 %add268.lcssa, i64* %arrayidx131, align 8, !tbaa !42
  %47 = load i64, i64* %length130, align 8, !tbaa !46
  %add282 = add i64 %47, %sub
  store i64 %add282, i64* %length130, align 8, !tbaa !46
  br label %if.end284

if.end284:                                        ; preds = %if.else250, %for.end277
  br i1 %tobool, label %for.inc298, label %if.then286

if.then286:                                       ; preds = %if.end237, %if.end284
  %pad.1959 = phi i32 [ %pad.0982, %if.end284 ], [ %call233, %if.end237 ]
  %48 = load i64, i64* %arrayidx131, align 8, !tbaa !42
  %cmp288 = icmp eq i64 %48, 0
  br i1 %cmp288, label %cleanup623, label %lor.lhs.false290

lor.lhs.false290:                                 ; preds = %if.then286
  %rem292 = urem i64 %48, %conv113
  %cmp293.not = icmp eq i64 %rem292, 0
  br i1 %cmp293.not, label %for.inc298, label %cleanup623

for.inc298:                                       ; preds = %if.end284.thread, %if.end284, %lor.lhs.false290
  %pad.1956 = phi i32 [ %call233, %if.end284.thread ], [ %pad.0982, %if.end284 ], [ %pad.1959, %lor.lhs.false290 ]
  %inc299 = add nuw i64 %ctr.2976, 1
  %exitcond1007.not = icmp eq i64 %inc299, %n_recs
  br i1 %exitcond1007.not, label %for.end300, label %for.body128, !llvm.loop !110

for.end300:                                       ; preds = %for.inc298
  br i1 %cmp114, label %for.body308.preheader, label %if.end348

for.body308.preheader:                            ; preds = %for.end300
  %49 = bitcast [32 x i8*]* %data304 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %49) #13
  %min.iters.check = icmp ult i64 %n_recs, 4
  br i1 %min.iters.check, label %for.body308.preheader1065, label %vector.ph

vector.ph:                                        ; preds = %for.body308.preheader
  %n.vec = and i64 %n_recs, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %50 = or i64 %index, 1
  %51 = or i64 %index, 2
  %52 = or i64 %index, 3
  %53 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %index, i32 5
  %54 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %50, i32 5
  %55 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %51, i32 5
  %56 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %52, i32 5
  %57 = load i8*, i8** %53, align 8, !tbaa !66
  %58 = load i8*, i8** %54, align 8, !tbaa !66
  %59 = insertelement <2 x i8*> poison, i8* %57, i64 0
  %60 = insertelement <2 x i8*> %59, i8* %58, i64 1
  %61 = load i8*, i8** %55, align 8, !tbaa !66
  %62 = load i8*, i8** %56, align 8, !tbaa !66
  %63 = insertelement <2 x i8*> poison, i8* %61, i64 0
  %64 = insertelement <2 x i8*> %63, i8* %62, i64 1
  %65 = getelementptr inbounds [32 x i8*], [32 x i8*]* %data304, i64 0, i64 %index
  %66 = bitcast i8** %65 to <2 x i8*>*
  store <2 x i8*> %60, <2 x i8*>* %66, align 16, !tbaa !41
  %67 = getelementptr inbounds i8*, i8** %65, i64 2
  %68 = bitcast i8** %67 to <2 x i8*>*
  store <2 x i8*> %64, <2 x i8*>* %68, align 16, !tbaa !41
  %index.next = add nuw i64 %index, 4
  %69 = icmp eq i64 %index.next, %n.vec
  br i1 %69, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %n_recs
  br i1 %cmp.n, label %for.end314, label %for.body308.preheader1065

for.body308.preheader1065:                        ; preds = %for.body308.preheader, %middle.block
  %ctr.3985.ph = phi i64 [ 0, %for.body308.preheader ], [ %n.vec, %middle.block ]
  br label %for.body308

for.body308:                                      ; preds = %for.body308.preheader1065, %for.body308
  %ctr.3985 = phi i64 [ %inc313, %for.body308 ], [ %ctr.3985.ph, %for.body308.preheader1065 ]
  %data310 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.3985, i32 5
  %70 = load i8*, i8** %data310, align 8, !tbaa !66
  %arrayidx311 = getelementptr inbounds [32 x i8*], [32 x i8*]* %data304, i64 0, i64 %ctr.3985
  store i8* %70, i8** %arrayidx311, align 8, !tbaa !41
  %inc313 = add nuw i64 %ctr.3985, 1
  %exitcond1008.not = icmp eq i64 %inc313, %n_recs
  br i1 %exitcond1008.not, label %for.end314, label %for.body308, !llvm.loop !113

for.end314:                                       ; preds = %for.body308, %middle.block
  %conv315 = trunc i64 %n_recs to i32
  %call317 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i32 noundef 34, i32 noundef %conv315, i8* noundef nonnull %49) #12
  %cmp318 = icmp slt i32 %call317, 1
  br i1 %cmp318, label %if.then320, label %for.body325.preheader

for.body325.preheader:                            ; preds = %for.end314
  %umax1009 = call i64 @llvm.umax.i64(i64 %n_recs, i64 1)
  %min.iters.check1053 = icmp ult i64 %umax1009, 4
  br i1 %min.iters.check1053, label %for.body325.preheader1064, label %vector.ph1054

vector.ph1054:                                    ; preds = %for.body325.preheader
  %n.vec1056 = and i64 %umax1009, -4
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %vector.ph1054
  %index1059 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1060, %vector.body1052 ]
  %71 = or i64 %index1059, 1
  %72 = or i64 %index1059, 2
  %73 = or i64 %index1059, 3
  %74 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %index1059, i32 6
  %75 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %71, i32 6
  %76 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %72, i32 6
  %77 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %73, i32 6
  %78 = load i8*, i8** %74, align 8, !tbaa !95
  %79 = load i8*, i8** %75, align 8, !tbaa !95
  %80 = insertelement <2 x i8*> poison, i8* %78, i64 0
  %81 = insertelement <2 x i8*> %80, i8* %79, i64 1
  %82 = load i8*, i8** %76, align 8, !tbaa !95
  %83 = load i8*, i8** %77, align 8, !tbaa !95
  %84 = insertelement <2 x i8*> poison, i8* %82, i64 0
  %85 = insertelement <2 x i8*> %84, i8* %83, i64 1
  %86 = getelementptr inbounds [32 x i8*], [32 x i8*]* %data304, i64 0, i64 %index1059
  %87 = bitcast i8** %86 to <2 x i8*>*
  store <2 x i8*> %81, <2 x i8*>* %87, align 16, !tbaa !41
  %88 = getelementptr inbounds i8*, i8** %86, i64 2
  %89 = bitcast i8** %88 to <2 x i8*>*
  store <2 x i8*> %85, <2 x i8*>* %89, align 16, !tbaa !41
  %index.next1060 = add nuw i64 %index1059, 4
  %90 = icmp eq i64 %index.next1060, %n.vec1056
  br i1 %90, label %middle.block1050, label %vector.body1052, !llvm.loop !115

middle.block1050:                                 ; preds = %vector.body1052
  %cmp.n1058 = icmp eq i64 %umax1009, %n.vec1056
  br i1 %cmp.n1058, label %for.end331, label %for.body325.preheader1064

for.body325.preheader1064:                        ; preds = %for.body325.preheader, %middle.block1050
  %ctr.4987.ph = phi i64 [ 0, %for.body325.preheader ], [ %n.vec1056, %middle.block1050 ]
  br label %for.body325

if.then320:                                       ; preds = %for.end314
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1119, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 406, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %49) #13
  br label %cleanup623

for.body325:                                      ; preds = %for.body325.preheader1064, %for.body325
  %ctr.4987 = phi i64 [ %inc330, %for.body325 ], [ %ctr.4987.ph, %for.body325.preheader1064 ]
  %input327 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.4987, i32 6
  %91 = load i8*, i8** %input327, align 8, !tbaa !95
  %arrayidx328 = getelementptr inbounds [32 x i8*], [32 x i8*]* %data304, i64 0, i64 %ctr.4987
  store i8* %91, i8** %arrayidx328, align 8, !tbaa !41
  %inc330 = add nuw i64 %ctr.4987, 1
  %exitcond1010.not = icmp eq i64 %inc330, %umax1009
  br i1 %exitcond1010.not, label %for.end331, label %for.body325, !llvm.loop !116

for.end331:                                       ; preds = %for.body325, %middle.block1050
  %call334 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i32 noundef 35, i32 noundef %conv315, i8* noundef nonnull %49) #12
  %cmp335 = icmp slt i32 %call334, 1
  br i1 %cmp335, label %if.then343, label %lor.lhs.false337

lor.lhs.false337:                                 ; preds = %for.end331
  %call340 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i32 noundef 36, i32 noundef %conv315, i8* noundef nonnull %0) #12
  %cmp341 = icmp slt i32 %call340, 1
  br i1 %cmp341, label %if.then343, label %cleanup345

if.then343:                                       ; preds = %lor.lhs.false337, %for.end331
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1130, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 406, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %49) #13
  br label %cleanup623

cleanup345:                                       ; preds = %lor.lhs.false337
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %49) #13
  br label %if.end348

if.end348:                                        ; preds = %if.end124, %cleanup345, %for.end300
  %pad.0.lcssa1035 = phi i32 [ %pad.1956, %cleanup345 ], [ %pad.1956, %for.end300 ], [ 0, %if.end124 ]
  %cmp126975.not10301034 = phi i1 [ false, %cleanup345 ], [ false, %for.end300 ], [ true, %if.end124 ]
  %method349 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %92 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method349, align 8, !tbaa !51
  %ssl3_enc350 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %92, i64 0, i32 25
  %93 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc350, align 8, !tbaa !52
  %enc_flags351 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %93, i64 0, i32 12
  %94 = load i32, i32* %enc_flags351, align 8, !tbaa !54
  %and352 = and i32 %94, 8
  %tobool353 = icmp eq i32 %and352, 0
  %tobool355 = icmp ne i32 %cond946948, 0
  %or.cond648 = select i1 %tobool353, i1 %tobool355, i1 false
  br i1 %or.cond648, label %if.then356, label %if.end384

if.then356:                                       ; preds = %if.end348
  br i1 %tobool, label %land.lhs.true359, label %if.end363

land.lhs.true359:                                 ; preds = %if.then356
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %95 = load i64, i64* %flags, align 8, !tbaa !74
  %96 = trunc i64 %95 to i32
  %97 = lshr i32 %96, 10
  %98 = and i32 %97, 1
  %99 = xor i32 %98, 1
  br label %if.end363

if.end363:                                        ; preds = %land.lhs.true359, %if.then356
  %decrement_seq.0 = phi i32 [ 0, %if.then356 ], [ %99, %land.lhs.true359 ]
  %arraydecay368 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  %arraydecay372 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 0
  %cond374 = select i1 %tobool, i8* %arraydecay368, i8* %arraydecay372
  %call375 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i32 noundef 42, i32 noundef %decrement_seq.0, i8* noundef nonnull %cond374) #12
  %cmp376 = icmp slt i32 %call375, 1
  br i1 %cmp376, label %if.then378, label %if.end384

if.then378:                                       ; preds = %if.end363
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1150, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup623

if.end384:                                        ; preds = %if.end363, %if.end348
  br i1 %cmp109, label %if.then386, label %if.else470

if.then386:                                       ; preds = %if.end384
  %100 = bitcast i32* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %100) #13
  br i1 %cmp114, label %if.then389, label %if.end390

if.then389:                                       ; preds = %if.then386
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1160, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  br label %cleanup467

if.end390:                                        ; preds = %if.then386
  %data392 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 5
  %101 = load i8*, i8** %data392, align 8, !tbaa !66
  %input394 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 6
  %102 = load i8*, i8** %input394, align 8, !tbaa !95
  %arrayidx395 = getelementptr inbounds [32 x i64], [32 x i64]* %reclen, i64 0, i64 0
  %103 = load i64, i64* %arrayidx395, align 16, !tbaa !42
  %conv396 = trunc i64 %103 to i32
  %call397 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i8* noundef %101, i32* noundef nonnull %outlen, i8* noundef %102, i32 noundef %conv396) #12
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %cleanup467, label %if.end400

if.end400:                                        ; preds = %if.end390
  %104 = load i32, i32* %outlen, align 4, !tbaa !49
  %conv401 = sext i32 %104 to i64
  %length403 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 2
  store i64 %conv401, i64* %length403, align 8, !tbaa !46
  br i1 %tobool, label %if.end466, label %if.then405

if.then405:                                       ; preds = %if.end400
  %call406 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %enc.0) #12
  %cmp407 = icmp eq i32 %call406, 6
  br i1 %cmp407, label %if.then409, label %if.else416

if.then409:                                       ; preds = %if.then405
  %105 = bitcast i8** %data392 to <2 x i8*>*
  %106 = load <2 x i8*>, <2 x i8*>* %105, align 8, !tbaa !41
  %107 = getelementptr i8, <2 x i8*> %106, <2 x i64> <i64 8, i64 8>
  %108 = bitcast i8** %data392 to <2 x i8*>*
  store <2 x i8*> %107, <2 x i8*>* %108, align 8, !tbaa !41
  br label %if.end447

if.else416:                                       ; preds = %if.then405
  %call417 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %enc.0) #12
  %cmp418 = icmp eq i32 %call417, 7
  br i1 %cmp418, label %if.then420, label %if.else427

if.then420:                                       ; preds = %if.else416
  %109 = bitcast i8** %data392 to <2 x i8*>*
  %110 = load <2 x i8*>, <2 x i8*>* %109, align 8, !tbaa !41
  %111 = getelementptr i8, <2 x i8*> %110, <2 x i64> <i64 8, i64 8>
  %112 = bitcast i8** %data392 to <2 x i8*>*
  store <2 x i8*> %111, <2 x i8*>* %112, align 8, !tbaa !41
  br label %if.end447

if.else427:                                       ; preds = %if.else416
  %cmp428.not = icmp eq i32 %call112, 1
  br i1 %cmp428.not, label %if.end447, label %land.lhs.true430

land.lhs.true430:                                 ; preds = %if.else427
  %113 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method349, align 8, !tbaa !51
  %ssl3_enc432 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %113, i64 0, i32 25
  %114 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc432, align 8, !tbaa !52
  %enc_flags433 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %114, i64 0, i32 12
  %115 = load i32, i32* %enc_flags433, align 8, !tbaa !54
  %and434 = and i32 %115, 1
  %tobool435.not = icmp eq i32 %and434, 0
  br i1 %tobool435.not, label %if.end447, label %if.then436

if.then436:                                       ; preds = %land.lhs.true430
  %116 = load i8*, i8** %data392, align 8, !tbaa !66
  %add.ptr439 = getelementptr inbounds i8, i8* %116, i64 %conv113
  store i8* %add.ptr439, i8** %data392, align 8, !tbaa !66
  %117 = load i8*, i8** %input394, align 8, !tbaa !95
  %add.ptr442 = getelementptr inbounds i8, i8* %117, i64 %conv113
  store i8* %add.ptr442, i8** %input394, align 8, !tbaa !95
  %orig_len = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 3
  %118 = load i64, i64* %orig_len, align 8, !tbaa !67
  %sub444 = sub i64 %118, %conv113
  store i64 %sub444, i64* %orig_len, align 8, !tbaa !67
  br label %if.end447

if.end447:                                        ; preds = %if.then420, %if.then436, %land.lhs.true430, %if.else427, %if.then409
  %cmp448.not = icmp eq %struct.ssl_mac_buf_st* %macs, null
  br i1 %cmp448.not, label %if.end466, label %if.then450

if.then450:                                       ; preds = %if.end447
  %119 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %119) #13
  %arraydecay452 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %alloced = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macs, i64 0, i32 1
  store i32 0, i32* %alloced, align 8, !tbaa !86
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %mac = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macs, i64 0, i32 0
  %params1039 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params1039, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** noundef nonnull %mac, i64 noundef %macsize) #12
  %120 = bitcast %struct.ossl_param_st* %tmp455 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %120) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp455) #12
  %121 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %121, i8* noundef nonnull align 8 dereferenceable(40) %120, i64 40, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %120) #13
  %call457 = call i32 @EVP_CIPHER_CTX_get_params(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, %struct.ossl_param_st* noundef nonnull %arraydecay452) #12
  %tobool458.not = icmp eq i32 %call457, 0
  br i1 %tobool458.not, label %if.then459, label %if.end466.critedge

if.then459:                                       ; preds = %if.then450
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1202, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_enc, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #12
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %119) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100) #13
  br label %cleanup623

if.end466.critedge:                               ; preds = %if.then450
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %119) #13
  br label %if.end466

if.end466:                                        ; preds = %if.end466.critedge, %if.end447, %if.end400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100) #13
  br label %cleanup623

cleanup467:                                       ; preds = %if.end390, %if.then389
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100) #13
  br label %cleanup623

if.else470:                                       ; preds = %if.end384
  %data472 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 5
  %122 = load i8*, i8** %data472, align 8, !tbaa !66
  %input474 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 6
  %123 = load i8*, i8** %input474, align 8, !tbaa !95
  %arrayidx475 = getelementptr inbounds [32 x i64], [32 x i64]* %reclen, i64 0, i64 0
  %124 = load i64, i64* %arrayidx475, align 16, !tbaa !42
  %conv476 = trunc i64 %124 to i32
  %call477 = call i32 @EVP_Cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0, i8* noundef %122, i8* noundef %123, i32 noundef %conv476) #12
  %call478 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %ds.0) #12
  %call479 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call478) #12
  %and480 = and i64 %call479, 1048576
  %cmp481.not = icmp eq i64 %and480, 0
  br i1 %cmp481.not, label %cond.false486, label %cond.true483

cond.true483:                                     ; preds = %if.else470
  %cmp484 = icmp slt i32 %call477, 0
  %brmerge942 = or i1 %tobool, %cmp484
  %not.cmp484 = xor i1 %cmp484, true
  br i1 %brmerge942, label %cleanup623, label %if.then492

cond.false486:                                    ; preds = %if.else470
  %cmp487 = icmp eq i32 %call477, 0
  %brmerge = or i1 %tobool, %cmp487
  %not.cmp487 = xor i1 %cmp487, true
  br i1 %brmerge, label %cleanup623, label %if.then492

if.then492:                                       ; preds = %cond.true483, %cond.false486
  %call493 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %enc.0) #12
  %cmp494 = icmp eq i32 %call493, 6
  br i1 %cmp494, label %for.cond497.preheader, label %if.else513

for.cond497.preheader:                            ; preds = %if.then492
  br i1 %cmp126975.not10301034, label %for.end602, label %for.body500.preheader

for.body500.preheader:                            ; preds = %for.cond497.preheader
  %xtraiter1068 = and i64 %n_recs, 1
  %125 = icmp eq i64 %n_recs, 1
  br i1 %125, label %if.end535.loopexit.unr-lcssa, label %for.body500.preheader.new

for.body500.preheader.new:                        ; preds = %for.body500.preheader
  %unroll_iter1070 = and i64 %n_recs, -2
  br label %for.body500

for.body500:                                      ; preds = %for.body500, %for.body500.preheader.new
  %ctr.5991 = phi i64 [ 0, %for.body500.preheader.new ], [ %inc511.1, %for.body500 ]
  %niter1071 = phi i64 [ 0, %for.body500.preheader.new ], [ %niter1071.next.1, %for.body500 ]
  %data502 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.5991, i32 5
  %126 = bitcast i8** %data502 to <2 x i8*>*
  %127 = load <2 x i8*>, <2 x i8*>* %126, align 8, !tbaa !41
  %128 = getelementptr i8, <2 x i8*> %127, <2 x i64> <i64 8, i64 8>
  %129 = bitcast i8** %data502 to <2 x i8*>*
  store <2 x i8*> %128, <2 x i8*>* %129, align 8, !tbaa !41
  %length508 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.5991, i32 2
  %130 = load i64, i64* %length508, align 8, !tbaa !46
  %sub509 = add i64 %130, -8
  store i64 %sub509, i64* %length508, align 8, !tbaa !46
  %inc511 = or i64 %ctr.5991, 1
  %data502.1 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc511, i32 5
  %131 = bitcast i8** %data502.1 to <2 x i8*>*
  %132 = load <2 x i8*>, <2 x i8*>* %131, align 8, !tbaa !41
  %133 = getelementptr i8, <2 x i8*> %132, <2 x i64> <i64 8, i64 8>
  %134 = bitcast i8** %data502.1 to <2 x i8*>*
  store <2 x i8*> %133, <2 x i8*>* %134, align 8, !tbaa !41
  %length508.1 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc511, i32 2
  %135 = load i64, i64* %length508.1, align 8, !tbaa !46
  %sub509.1 = add i64 %135, -8
  store i64 %sub509.1, i64* %length508.1, align 8, !tbaa !46
  %inc511.1 = add nuw i64 %ctr.5991, 2
  %niter1071.next.1 = add i64 %niter1071, 2
  %niter1071.ncmp.1 = icmp eq i64 %niter1071.next.1, %unroll_iter1070
  br i1 %niter1071.ncmp.1, label %if.end535.loopexit.unr-lcssa, label %for.body500, !llvm.loop !117

if.else513:                                       ; preds = %if.then492
  %call514 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %enc.0) #12
  %cmp515 = icmp eq i32 %call514, 7
  %cmp519988 = icmp ne i64 %n_recs, 0
  %or.cond1000 = and i1 %cmp515, %cmp519988
  br i1 %or.cond1000, label %for.body521.preheader, label %if.end535

for.body521.preheader:                            ; preds = %if.else513
  %xtraiter = and i64 %n_recs, 1
  %136 = icmp eq i64 %n_recs, 1
  br i1 %136, label %if.end535.loopexit1063.unr-lcssa, label %for.body521.preheader.new

for.body521.preheader.new:                        ; preds = %for.body521.preheader
  %unroll_iter = and i64 %n_recs, -2
  br label %for.body521

for.body521:                                      ; preds = %for.body521, %for.body521.preheader.new
  %ctr.6989 = phi i64 [ 0, %for.body521.preheader.new ], [ %inc532.1, %for.body521 ]
  %niter = phi i64 [ 0, %for.body521.preheader.new ], [ %niter.next.1, %for.body521 ]
  %data523 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.6989, i32 5
  %137 = bitcast i8** %data523 to <2 x i8*>*
  %138 = load <2 x i8*>, <2 x i8*>* %137, align 8, !tbaa !41
  %139 = getelementptr i8, <2 x i8*> %138, <2 x i64> <i64 8, i64 8>
  %140 = bitcast i8** %data523 to <2 x i8*>*
  store <2 x i8*> %139, <2 x i8*>* %140, align 8, !tbaa !41
  %length529 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.6989, i32 2
  %141 = load i64, i64* %length529, align 8, !tbaa !46
  %sub530 = add i64 %141, -8
  store i64 %sub530, i64* %length529, align 8, !tbaa !46
  %inc532 = or i64 %ctr.6989, 1
  %data523.1 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc532, i32 5
  %142 = bitcast i8** %data523.1 to <2 x i8*>*
  %143 = load <2 x i8*>, <2 x i8*>* %142, align 8, !tbaa !41
  %144 = getelementptr i8, <2 x i8*> %143, <2 x i64> <i64 8, i64 8>
  %145 = bitcast i8** %data523.1 to <2 x i8*>*
  store <2 x i8*> %144, <2 x i8*>* %145, align 8, !tbaa !41
  %length529.1 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc532, i32 2
  %146 = load i64, i64* %length529.1, align 8, !tbaa !46
  %sub530.1 = add i64 %146, -8
  store i64 %sub530.1, i64* %length529.1, align 8, !tbaa !46
  %inc532.1 = add nuw i64 %ctr.6989, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end535.loopexit1063.unr-lcssa, label %for.body521, !llvm.loop !118

if.end535.loopexit.unr-lcssa:                     ; preds = %for.body500, %for.body500.preheader
  %ctr.5991.unr = phi i64 [ 0, %for.body500.preheader ], [ %inc511.1, %for.body500 ]
  %lcmp.mod1069.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1069.not, label %if.end535, label %for.body500.epil

for.body500.epil:                                 ; preds = %if.end535.loopexit.unr-lcssa
  %data502.epil = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.5991.unr, i32 5
  %147 = bitcast i8** %data502.epil to <2 x i8*>*
  %148 = load <2 x i8*>, <2 x i8*>* %147, align 8, !tbaa !41
  %149 = getelementptr i8, <2 x i8*> %148, <2 x i64> <i64 8, i64 8>
  %150 = bitcast i8** %data502.epil to <2 x i8*>*
  store <2 x i8*> %149, <2 x i8*>* %150, align 8, !tbaa !41
  %length508.epil = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.5991.unr, i32 2
  %151 = load i64, i64* %length508.epil, align 8, !tbaa !46
  %sub509.epil = add i64 %151, -8
  store i64 %sub509.epil, i64* %length508.epil, align 8, !tbaa !46
  br label %if.end535

if.end535.loopexit1063.unr-lcssa:                 ; preds = %for.body521, %for.body521.preheader
  %ctr.6989.unr = phi i64 [ 0, %for.body521.preheader ], [ %inc532.1, %for.body521 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end535, label %for.body521.epil

for.body521.epil:                                 ; preds = %if.end535.loopexit1063.unr-lcssa
  %data523.epil = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.6989.unr, i32 5
  %152 = bitcast i8** %data523.epil to <2 x i8*>*
  %153 = load <2 x i8*>, <2 x i8*>* %152, align 8, !tbaa !41
  %154 = getelementptr i8, <2 x i8*> %153, <2 x i64> <i64 8, i64 8>
  %155 = bitcast i8** %data523.epil to <2 x i8*>*
  store <2 x i8*> %154, <2 x i8*>* %155, align 8, !tbaa !41
  %length529.epil = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.6989.unr, i32 2
  %156 = load i64, i64* %length529.epil, align 8, !tbaa !46
  %sub530.epil = add i64 %156, -8
  store i64 %sub530.epil, i64* %length529.epil, align 8, !tbaa !46
  br label %if.end535

if.end535:                                        ; preds = %for.body521.epil, %if.end535.loopexit1063.unr-lcssa, %for.body500.epil, %if.end535.loopexit.unr-lcssa, %if.else513
  br i1 %cmp126975.not10301034, label %for.end602, label %for.body539.lr.ph

for.body539.lr.ph:                                ; preds = %if.end535
  %cmp540.not = icmp eq i32 %call112, 1
  %cmp574.not = icmp eq %struct.ssl_mac_buf_st* %macs, null
  %ctx594 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  br label %for.body539

for.cond536:                                      ; preds = %if.end567
  %exitcond1013.not = icmp eq i64 %inc601, %n_recs
  br i1 %exitcond1013.not, label %for.end602, label %for.body539, !llvm.loop !119

for.body539:                                      ; preds = %for.body539.lr.ph, %for.cond536
  %ctr.7993 = phi i64 [ 0, %for.body539.lr.ph ], [ %inc601, %for.cond536 ]
  br i1 %cmp540.not, label %if.end567, label %land.lhs.true542

land.lhs.true542:                                 ; preds = %for.body539
  %157 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method349, align 8, !tbaa !51
  %ssl3_enc544 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %157, i64 0, i32 25
  %158 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc544, align 8, !tbaa !52
  %enc_flags545 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %158, i64 0, i32 12
  %159 = load i32, i32* %enc_flags545, align 8, !tbaa !54
  %and546 = and i32 %159, 1
  %tobool547.not = icmp eq i32 %and546, 0
  br i1 %tobool547.not, label %if.end567, label %if.then548

if.then548:                                       ; preds = %land.lhs.true542
  %length550 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 2
  %160 = load i64, i64* %length550, align 8, !tbaa !46
  %cmp551 = icmp ult i64 %160, %conv113
  br i1 %cmp551, label %cleanup623, label %if.end554

if.end554:                                        ; preds = %if.then548
  %data556 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 5
  %161 = load i8*, i8** %data556, align 8, !tbaa !66
  %add.ptr557 = getelementptr inbounds i8, i8* %161, i64 %conv113
  store i8* %add.ptr557, i8** %data556, align 8, !tbaa !66
  %input559 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 6
  %162 = load i8*, i8** %input559, align 8, !tbaa !95
  %add.ptr560 = getelementptr inbounds i8, i8* %162, i64 %conv113
  store i8* %add.ptr560, i8** %input559, align 8, !tbaa !95
  %sub563 = sub i64 %160, %conv113
  store i64 %sub563, i64* %length550, align 8, !tbaa !46
  %orig_len565 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 3
  %163 = load i64, i64* %orig_len565, align 8, !tbaa !67
  %sub566 = sub i64 %163, %conv113
  store i64 %sub566, i64* %orig_len565, align 8, !tbaa !67
  br label %if.end567

if.end567:                                        ; preds = %if.end554, %land.lhs.true542, %for.body539
  %length569 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 2
  %orig_len571 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 3
  %164 = load i64, i64* %orig_len571, align 8, !tbaa !67
  %data573 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.7993, i32 5
  %165 = load i8*, i8** %data573, align 8, !tbaa !66
  %mac578 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macs, i64 %ctr.7993, i32 0
  %cond581 = select i1 %cmp574.not, i8** null, i8** %mac578
  %alloced586 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macs, i64 %ctr.7993, i32 1
  %cond589 = select i1 %cmp574.not, i32* null, i32* %alloced586
  %call590 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %enc.0) #12
  %166 = trunc i64 %call590 to i32
  %167 = lshr i32 %166, 21
  %168 = and i32 %167, 1
  %169 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx594, align 8, !tbaa !97
  %libctx595 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %169, i64 0, i32 0
  %170 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx595, align 8, !tbaa !98
  %call596 = call i32 @tls1_cbc_remove_padding_and_mac(i64* noundef nonnull %length569, i64 noundef %164, i8* noundef %165, i8** noundef %cond581, i32* noundef %cond589, i64 noundef %conv113, i64 noundef %macsize, i32 noundef %168, %struct.ossl_lib_ctx_st* noundef %170) #12
  %tobool597.not = icmp eq i32 %call596, 0
  %inc601 = add nuw i64 %ctr.7993, 1
  br i1 %tobool597.not, label %cleanup623, label %for.cond536

for.end602:                                       ; preds = %for.cond536, %for.cond497.preheader, %if.end535
  %tobool603.not = icmp ne i32 %pad.0.lcssa1035, 0
  %cmp606994 = icmp ne i64 %n_recs, 0
  %or.cond1001 = and i1 %tobool603.not, %cmp606994
  br i1 %or.cond1001, label %for.body608.lr.ph, label %cleanup623

for.body608.lr.ph:                                ; preds = %for.end602
  %conv609 = sext i32 %pad.0.lcssa1035 to i64
  %171 = add i64 %n_recs, -1
  %xtraiter1072 = and i64 %n_recs, 3
  %172 = icmp ult i64 %171, 3
  br i1 %172, label %cleanup623.loopexit1061.unr-lcssa, label %for.body608.lr.ph.new

for.body608.lr.ph.new:                            ; preds = %for.body608.lr.ph
  %unroll_iter1074 = and i64 %n_recs, -4
  br label %for.body608

for.body608:                                      ; preds = %for.body608, %for.body608.lr.ph.new
  %ctr.8995 = phi i64 [ 0, %for.body608.lr.ph.new ], [ %inc614.3, %for.body608 ]
  %niter1075 = phi i64 [ 0, %for.body608.lr.ph.new ], [ %niter1075.next.3, %for.body608 ]
  %length611 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.8995, i32 2
  %173 = load i64, i64* %length611, align 8, !tbaa !46
  %sub612 = sub i64 %173, %conv609
  store i64 %sub612, i64* %length611, align 8, !tbaa !46
  %inc614 = or i64 %ctr.8995, 1
  %length611.1 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc614, i32 2
  %174 = load i64, i64* %length611.1, align 8, !tbaa !46
  %sub612.1 = sub i64 %174, %conv609
  store i64 %sub612.1, i64* %length611.1, align 8, !tbaa !46
  %inc614.1 = or i64 %ctr.8995, 2
  %length611.2 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc614.1, i32 2
  %175 = load i64, i64* %length611.2, align 8, !tbaa !46
  %sub612.2 = sub i64 %175, %conv609
  store i64 %sub612.2, i64* %length611.2, align 8, !tbaa !46
  %inc614.2 = or i64 %ctr.8995, 3
  %length611.3 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %inc614.2, i32 2
  %176 = load i64, i64* %length611.3, align 8, !tbaa !46
  %sub612.3 = sub i64 %176, %conv609
  store i64 %sub612.3, i64* %length611.3, align 8, !tbaa !46
  %inc614.3 = add nuw i64 %ctr.8995, 4
  %niter1075.next.3 = add i64 %niter1075, 4
  %niter1075.ncmp.3 = icmp eq i64 %niter1075.next.3, %unroll_iter1074
  br i1 %niter1075.ncmp.3, label %cleanup623.loopexit1061.unr-lcssa, label %for.body608, !llvm.loop !120

cleanup623.loopexit1061.unr-lcssa:                ; preds = %for.body608, %for.body608.lr.ph
  %ctr.8995.unr = phi i64 [ 0, %for.body608.lr.ph ], [ %inc614.3, %for.body608 ]
  %lcmp.mod1073.not = icmp eq i64 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %cleanup623, label %for.body608.epil

for.body608.epil:                                 ; preds = %cleanup623.loopexit1061.unr-lcssa, %for.body608.epil
  %ctr.8995.epil = phi i64 [ %inc614.epil, %for.body608.epil ], [ %ctr.8995.unr, %cleanup623.loopexit1061.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body608.epil ], [ 0, %cleanup623.loopexit1061.unr-lcssa ]
  %length611.epil = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 %ctr.8995.epil, i32 2
  %177 = load i64, i64* %length611.epil, align 8, !tbaa !46
  %sub612.epil = sub i64 %177, %conv609
  store i64 %sub612.epil, i64* %length611.epil, align 8, !tbaa !46
  %inc614.epil = add nuw i64 %ctr.8995.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1072
  br i1 %epil.iter.cmp.not, label %cleanup623, label %for.body608.epil, !llvm.loop !121

cleanup623:                                       ; preds = %if.then286, %lor.lhs.false290, %if.end567, %if.then548, %cleanup623.loopexit1061.unr-lcssa, %for.body608.epil, %for.body93, %for.cond90.preheader, %cleanup247, %cond.true483, %cond.false486, %if.then378, %if.then67, %if.then13, %for.end602, %if.end466, %if.then459, %if.then320, %if.then343, %if.then122, %if.then261, %cleanup467, %if.then39, %if.then47, %if.then
  %retval.18.shrunk = phi i1 [ false, %if.then ], [ false, %if.then13 ], [ false, %if.then67 ], [ false, %if.then47 ], [ false, %if.then39 ], [ false, %cleanup467 ], [ false, %if.then261 ], [ false, %if.then122 ], [ false, %if.then343 ], [ false, %if.then320 ], [ false, %if.then459 ], [ true, %if.end466 ], [ true, %for.end602 ], [ false, %cleanup247 ], [ false, %if.then378 ], [ %not.cmp487, %cond.false486 ], [ %not.cmp484, %cond.true483 ], [ true, %for.cond90.preheader ], [ true, %for.body93 ], [ true, %for.body608.epil ], [ true, %cleanup623.loopexit1061.unr-lcssa ], [ false, %if.then548 ], [ false, %if.end567 ], [ false, %lor.lhs.false290 ], [ false, %if.then286 ]
  %retval.18 = zext i1 %retval.18.shrunk to i32
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #13
  ret i32 %retval.18
}

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @RAND_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @tls1_cbc_remove_padding_and_mac(i64* noundef, i64 noundef, i8* noundef, i8** noundef, i32* noundef, i64 noundef, i64 noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define signext i8 @ssl3_cbc_record_digest_supported(%struct.evp_md_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %ctx) #12
  %call1 = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %call) #12
  switch i32 %call1, label %sw.default [
    i32 4, label %return
    i32 64, label %return
    i32 675, label %return
    i32 672, label %return
    i32 673, label %return
    i32 674, label %return
  ]

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i8 %retval.0
}

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @n_ssl3_mac(%struct.ssl_st* noundef %ssl, %struct.ssl3_record_st* nocapture noundef readonly %rec, i8* noundef %md, i32 noundef %sending) local_unnamed_addr #0 {
entry:
  %rec_char = alloca i8, align 1
  %md_size = alloca i64, align 8
  %header = alloca [75 x i8], align 16
  %md_size_u = alloca i32, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %rec_char) #13
  %0 = bitcast i64* %md_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %tobool.not = icmp eq i32 %sending, 0
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 4, i64 0
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 108, i32 19, i64 0
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 48
  %arrayidx2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 2, i64 0
  %arraydecay4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 108, i32 18, i64 0
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 43
  %hash.0.in = select i1 %tobool.not, %struct.evp_md_ctx_st** %read_hash, %struct.evp_md_ctx_st** %write_hash
  %seq.0 = select i1 %tobool.not, i8* %arraydecay4, i8* %arraydecay
  %mac_sec.0 = select i1 %tobool.not, i8* %arrayidx2, i8* %arrayidx
  %hash.0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %hash.0.in, align 8, !tbaa !41
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %hash.0) #12
  %call5 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call) #12
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %cleanup123, label %if.end7

if.end7:                                          ; preds = %entry
  %conv201 = zext i32 %call5 to i64
  store i64 %conv201, i64* %md_size, align 8, !tbaa !42
  %1 = urem i32 48, %call5
  %.zext = zext i32 %1 to i64
  %mul = sub nuw nsw i64 48, %.zext
  br i1 %tobool.not, label %land.lhs.true, label %if.else46

land.lhs.true:                                    ; preds = %if.end7
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 41
  %2 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %call9 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %2) #12
  %call10 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call9) #12
  %cmp11 = icmp eq i32 %call10, 2
  br i1 %cmp11, label %land.lhs.true13, label %if.else46

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call14 = tail call signext i8 @ssl3_cbc_record_digest_supported(%struct.evp_md_ctx_st* noundef %hash.0) #14
  %tobool16.not = icmp eq i8 %call14, 0
  br i1 %tobool16.not, label %if.else46, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %3 = getelementptr inbounds [75 x i8], [75 x i8]* %header, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 75, i8* nonnull %3) #13
  %call19 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef nonnull %mac_sec.0, i64 noundef %conv201) #12
  %add.ptr21 = getelementptr inbounds [75 x i8], [75 x i8]* %header, i64 0, i64 %conv201
  %call22 = call i8* @memcpy(i8* noundef nonnull %add.ptr21, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @ssl3_pad_1, i64 0, i64 0), i64 noundef %mul) #12
  %add23 = add nuw nsw i64 %mul, %conv201
  %add.ptr25 = getelementptr inbounds [75 x i8], [75 x i8]* %header, i64 0, i64 %add23
  %call26 = call i8* @memcpy(i8* noundef nonnull %add.ptr25, i8* noundef nonnull %seq.0, i64 noundef 8) #12
  %add27 = add nuw nsw i64 %add23, 8
  %type = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !44
  %conv28 = trunc i32 %4 to i8
  %inc = add nuw nsw i64 %add23, 9
  %arrayidx29 = getelementptr inbounds [75 x i8], [75 x i8]* %header, i64 0, i64 %add27
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !70
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 2
  %5 = load i64, i64* %length, align 8, !tbaa !46
  %shr = lshr i64 %5, 8
  %conv30 = trunc i64 %shr to i8
  %inc31 = add nuw nsw i64 %add23, 10
  %arrayidx32 = getelementptr inbounds [75 x i8], [75 x i8]* %header, i64 0, i64 %inc
  store i8 %conv30, i8* %arrayidx32, align 1, !tbaa !70
  %conv34 = trunc i64 %5 to i8
  %arrayidx36 = getelementptr inbounds [75 x i8], [75 x i8]* %header, i64 0, i64 %inc31
  store i8 %conv34, i8* %arrayidx36, align 1, !tbaa !70
  %call37 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %hash.0) #12
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 6
  %6 = load i8*, i8** %input, align 8, !tbaa !95
  %7 = load i64, i64* %length, align 8, !tbaa !46
  %orig_len = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 3
  %8 = load i64, i64* %orig_len, align 8, !tbaa !67
  %call40 = call i32 @ssl3_cbc_digest_record(%struct.evp_md_st* noundef %call37, i8* noundef %md, i64* noundef nonnull %md_size, i8* noundef nonnull %3, i8* noundef %6, i64 noundef %7, i64 noundef %8, i8* noundef nonnull %mac_sec.0, i64 noundef %conv201, i8 noundef signext 1) #12
  %cmp41 = icmp slt i32 %call40, 1
  call void @llvm.lifetime.end.p0i8(i64 75, i8* nonnull %3) #13
  br i1 %cmp41, label %cleanup123, label %if.end122

if.else46:                                        ; preds = %land.lhs.true13, %land.lhs.true, %if.end7
  %9 = bitcast i32* %md_size_u to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #13
  %call47 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #12
  %cmp48 = icmp eq %struct.evp_md_ctx_st* %call47, null
  br i1 %cmp48, label %cleanup118, label %if.end51

if.end51:                                         ; preds = %if.else46
  %type52 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 1
  %10 = load i32, i32* %type52, align 4, !tbaa !44
  %conv53 = trunc i32 %10 to i8
  store i8 %conv53, i8* %rec_char, align 1, !tbaa !70
  %length54 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 2
  %11 = load i64, i64* %length54, align 8, !tbaa !46
  %shr55 = lshr i64 %11, 8
  %conv57 = trunc i64 %shr55 to i8
  store i8 %conv57, i8* %md, align 1, !tbaa !70
  %12 = load i64, i64* %length54, align 8, !tbaa !46
  %conv61 = trunc i64 %12 to i8
  %arrayidx62 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv61, i8* %arrayidx62, align 1, !tbaa !70
  %call64 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call47, %struct.evp_md_ctx_st* noundef %hash.0) #12
  %cmp65 = icmp slt i32 %call64, 1
  br i1 %cmp65, label %if.then116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end51
  %call67 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %mac_sec.0, i64 noundef %conv201) #12
  %cmp68 = icmp slt i32 %call67, 1
  br i1 %cmp68, label %if.then116, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false
  %call71 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @ssl3_pad_1, i64 0, i64 0), i64 noundef %mul) #12
  %cmp72 = icmp slt i32 %call71, 1
  br i1 %cmp72, label %if.then116, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false70
  %call75 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %seq.0, i64 noundef 8) #12
  %cmp76 = icmp slt i32 %call75, 1
  br i1 %cmp76, label %if.then116, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %call79 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %rec_char, i64 noundef 1) #12
  %cmp80 = icmp slt i32 %call79, 1
  br i1 %cmp80, label %if.then116, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false78
  %call83 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %md, i64 noundef 2) #12
  %cmp84 = icmp slt i32 %call83, 1
  br i1 %cmp84, label %if.then116, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %input87 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 6
  %13 = load i8*, i8** %input87, align 8, !tbaa !95
  %14 = load i64, i64* %length54, align 8, !tbaa !46
  %call89 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef %13, i64 noundef %14) #12
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %if.then116, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %call93 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %md, i32* noundef null) #12
  %cmp94 = icmp slt i32 %call93, 1
  br i1 %cmp94, label %if.then116, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false92
  %call97 = call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call47, %struct.evp_md_ctx_st* noundef %hash.0) #12
  %cmp98 = icmp slt i32 %call97, 1
  br i1 %cmp98, label %if.then116, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false96
  %call101 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %mac_sec.0, i64 noundef %conv201) #12
  %cmp102 = icmp slt i32 %call101, 1
  br i1 %cmp102, label %if.then116, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %call105 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @ssl3_pad_2, i64 0, i64 0), i64 noundef %mul) #12
  %cmp106 = icmp slt i32 %call105, 1
  br i1 %cmp106, label %if.then116, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %call109 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %md, i64 noundef %conv201) #12
  %cmp110 = icmp slt i32 %call109, 1
  br i1 %cmp110, label %if.then116, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %call113 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call47, i8* noundef nonnull %md, i32* noundef nonnull %md_size_u) #12
  %cmp114 = icmp slt i32 %call113, 1
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %lor.lhs.false112, %lor.lhs.false108, %lor.lhs.false104, %lor.lhs.false100, %lor.lhs.false96, %lor.lhs.false92, %lor.lhs.false86, %lor.lhs.false82, %lor.lhs.false78, %lor.lhs.false74, %lor.lhs.false70, %lor.lhs.false, %if.end51
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call47) #12
  br label %cleanup118

if.end117:                                        ; preds = %lor.lhs.false112
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call47) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13
  br label %if.end122

cleanup118:                                       ; preds = %if.else46, %if.then116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #13
  br label %cleanup123

if.end122:                                        ; preds = %if.end117, %if.then17
  call void @ssl3_record_sequence_update(i8* noundef nonnull %seq.0) #12
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup118, %entry, %if.then17, %if.end122
  %retval.2 = phi i32 [ 1, %if.end122 ], [ 0, %cleanup118 ], [ 0, %if.then17 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %rec_char) #13
  ret i32 %retval.2
}

declare i32 @ssl3_cbc_digest_record(%struct.evp_md_st* noundef, i8* noundef, i64* noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef, i8* noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare void @ssl3_record_sequence_update(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_mac(%struct.ssl_st* noundef %ssl, %struct.ssl3_record_st* noundef %rec, i8* noundef %md, i32 noundef %sending) local_unnamed_addr #0 {
entry:
  %md_size = alloca i64, align 8
  %header = alloca [13 x i8], align 1
  %dtlsseq = alloca [8 x i8], align 1
  %tls_hmac_params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp117 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast i64* %md_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = getelementptr inbounds [13 x i8], [13 x i8]* %header, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %1) #13
  %tobool.not = icmp eq i32 %sending, 0
  %mac_flags1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 28
  %2 = load i32, i32* %mac_flags1, align 8, !tbaa !103
  %.252 = select i1 %tobool.not, i32 4, i32 8
  %and9 = and i32 %2, %.252
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 108, i32 19, i64 0
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 48
  %arraydecay14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 108, i32 18, i64 0
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 43
  %hash.0.in = select i1 %tobool.not, %struct.evp_md_ctx_st** %read_hash, %struct.evp_md_ctx_st** %write_hash
  %seq.0 = select i1 %tobool.not, i8* %arraydecay14, i8* %arraydecay
  %hash.0 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %hash.0.in, align 8, !tbaa !41
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %hash.0) #12
  %call15 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call) #12
  %cmp = icmp sgt i32 %call15, -1
  br i1 %cmp, label %if.end19, label %cleanup162

if.end19:                                         ; preds = %entry
  %. = select i1 %tobool.not, i32 1, i32 2
  %and2 = and i32 %2, %.
  %conv20244 = zext i32 %call15 to i64
  store i64 %conv20244, i64* %md_size, align 8, !tbaa !42
  %tobool21.not = icmp eq i32 %and2, 0
  br i1 %tobool21.not, label %if.else23, label %if.end31

if.else23:                                        ; preds = %if.end19
  %call24 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #12
  %cmp25 = icmp eq %struct.evp_md_ctx_st* %call24, null
  br i1 %cmp25, label %if.then29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else23
  %call27 = tail call i32 @EVP_MD_CTX_copy(%struct.evp_md_ctx_st* noundef nonnull %call24, %struct.evp_md_ctx_st* noundef %hash.0) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %lor.lhs.false, %if.else23
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call24) #12
  br label %cleanup162

if.end31:                                         ; preds = %lor.lhs.false, %if.end19
  %mac_ctx.0 = phi %struct.evp_md_ctx_st* [ %hash.0, %if.end19 ], [ %call24, %lor.lhs.false ]
  %hmac.0 = phi %struct.evp_md_ctx_st* [ null, %if.end19 ], [ %call24, %lor.lhs.false ]
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %3 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 25
  %4 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !52
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %4, i64 0, i32 12
  %5 = load i32, i32* %enc_flags, align 8, !tbaa !54
  %and32 = and i32 %5, 8
  %tobool33 = icmp eq i32 %and32, 0
  %tobool34 = icmp ne i32 %and9, 0
  %or.cond = select i1 %tobool33, i1 %tobool34, i1 false
  br i1 %or.cond, label %land.lhs.true35, label %if.end40

land.lhs.true35:                                  ; preds = %if.end31
  %call36 = tail call i32 @EVP_MD_CTX_ctrl(%struct.evp_md_ctx_st* noundef %mac_ctx.0, i32 noundef 4, i32 noundef 0, i8* noundef nonnull %seq.0) #12
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %if.then39, label %land.lhs.true35.if.end40_crit_edge

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  %.pre = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc42.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre, i64 0, i32 25
  %.pre247 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc42.phi.trans.insert, align 8, !tbaa !52
  %enc_flags43.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre247, i64 0, i32 12
  %.pre248 = load i32, i32* %enc_flags43.phi.trans.insert, align 8, !tbaa !54
  br label %if.end40

if.then39:                                        ; preds = %land.lhs.true35
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %hmac.0) #12
  br label %cleanup162

if.end40:                                         ; preds = %land.lhs.true35.if.end40_crit_edge, %if.end31
  %6 = phi i32 [ %.pre248, %land.lhs.true35.if.end40_crit_edge ], [ %5, %if.end31 ]
  %and44 = and i32 %6, 8
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else81, label %if.then46

if.then46:                                        ; preds = %if.end40
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %dtlsseq, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #13
  %d54 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 108, i32 22
  %8 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d54, align 8, !tbaa !106
  br i1 %tobool.not, label %cond.false66, label %cond.true61

cond.true61:                                      ; preds = %if.then46
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %8, i64 0, i32 1
  %cond57.in = load i16, i16* %w_epoch, align 2, !tbaa !107
  %9 = lshr i16 %cond57.in, 8
  %conv59 = trunc i16 %9 to i8
  store i8 %conv59, i8* %7, align 1, !tbaa !70
  br label %cond.end71

cond.false66:                                     ; preds = %if.then46
  %r_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %8, i64 0, i32 0
  %cond57.in242 = load i16, i16* %r_epoch, align 2, !tbaa !107
  %10 = lshr i16 %cond57.in242, 8
  %conv59243 = trunc i16 %10 to i8
  store i8 %conv59243, i8* %7, align 1, !tbaa !70
  %cond72.in.pre = load i16, i16* %r_epoch, align 2, !tbaa !107
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false66, %cond.true61
  %cond72.in = phi i16 [ %cond57.in, %cond.true61 ], [ %cond72.in.pre, %cond.false66 ]
  %conv74 = trunc i16 %cond72.in to i8
  %arrayidx75 = getelementptr inbounds [8 x i8], [8 x i8]* %dtlsseq, i64 0, i64 1
  store i8 %conv74, i8* %arrayidx75, align 1, !tbaa !70
  %add.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %dtlsseq, i64 0, i64 2
  %arrayidx76 = getelementptr inbounds i8, i8* %seq.0, i64 2
  %call77 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %arrayidx76, i64 noundef 6) #12
  %call80 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %7, i64 noundef 8) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #13
  br label %if.end84

if.else81:                                        ; preds = %if.end40
  %call83 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef nonnull %seq.0, i64 noundef 8) #12
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %cond.end71
  %type = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 1
  %11 = load i32, i32* %type, align 4, !tbaa !44
  %conv85 = trunc i32 %11 to i8
  %arrayidx86 = getelementptr inbounds [13 x i8], [13 x i8]* %header, i64 0, i64 8
  store i8 %conv85, i8* %arrayidx86, align 1, !tbaa !70
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 0
  %12 = load i32, i32* %version, align 8, !tbaa !58
  %13 = lshr i32 %12, 8
  %conv88 = trunc i32 %13 to i8
  %arrayidx89 = getelementptr inbounds [13 x i8], [13 x i8]* %header, i64 0, i64 9
  store i8 %conv88, i8* %arrayidx89, align 1, !tbaa !70
  %conv91 = trunc i32 %12 to i8
  %arrayidx92 = getelementptr inbounds [13 x i8], [13 x i8]* %header, i64 0, i64 10
  store i8 %conv91, i8* %arrayidx92, align 1, !tbaa !70
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 2
  %14 = load i64, i64* %length, align 8, !tbaa !46
  %shr93 = lshr i64 %14, 8
  %conv94 = trunc i64 %shr93 to i8
  %arrayidx95 = getelementptr inbounds [13 x i8], [13 x i8]* %header, i64 0, i64 11
  store i8 %conv94, i8* %arrayidx95, align 1, !tbaa !70
  %conv98 = trunc i64 %14 to i8
  %arrayidx99 = getelementptr inbounds [13 x i8], [13 x i8]* %header, i64 0, i64 12
  store i8 %conv98, i8* %arrayidx99, align 1, !tbaa !70
  br i1 %tobool.not, label %land.lhs.true101, label %if.end125

land.lhs.true101:                                 ; preds = %if.end84
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 17, i32 0
  %15 = load i64, i64* %flags, align 8, !tbaa !74
  %and102 = and i64 %15, 256
  %tobool103.not = icmp eq i64 %and102, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %if.end125

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 41
  %16 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %call105 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %16) #12
  %call106 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call105) #12
  %cmp107 = icmp eq i32 %call106, 2
  br i1 %cmp107, label %land.lhs.true109, label %if.end125

land.lhs.true109:                                 ; preds = %land.lhs.true104
  %call110 = call signext i8 @ssl3_cbc_record_digest_supported(%struct.evp_md_ctx_st* noundef %mac_ctx.0) #14
  %tobool112.not = icmp eq i8 %call110, 0
  br i1 %tobool112.not, label %if.end125, label %if.then113

if.then113:                                       ; preds = %land.lhs.true109
  %17 = bitcast [2 x %struct.ossl_param_st]* %tls_hmac_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %17) #13
  %arraydecay115 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %tls_hmac_params, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %tls_hmac_params, i64 0, i64 1
  %orig_len = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 3
  %tls_hmac_params250 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %tls_hmac_params, i64 0, i64 0
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tls_hmac_params250, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* noundef nonnull %orig_len) #12
  %18 = bitcast %struct.ossl_param_st* %tmp117 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #13
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp117) #12
  %19 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #13
  %call118 = call %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef %mac_ctx.0) #12
  %call120 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %call118, %struct.ossl_param_st* noundef nonnull %arraydecay115) #12
  %tobool121.not = icmp eq i32 %call120, 0
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %17) #13
  br i1 %tobool121.not, label %cleanup162, label %if.end125

if.end125:                                        ; preds = %if.then113, %land.lhs.true109, %land.lhs.true104, %land.lhs.true101, %if.end84
  %call127 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %mac_ctx.0, i8* noundef nonnull %1, i64 noundef 13) #12
  %cmp128 = icmp slt i32 %call127, 1
  br i1 %cmp128, label %if.then139, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %if.end125
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rec, i64 0, i32 6
  %20 = load i8*, i8** %input, align 8, !tbaa !95
  %21 = load i64, i64* %length, align 8, !tbaa !46
  %call132 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %mac_ctx.0, i8* noundef %20, i64 noundef %21) #12
  %cmp133 = icmp slt i32 %call132, 1
  br i1 %cmp133, label %if.then139, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false130
  %call136 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %mac_ctx.0, i8* noundef %md, i64* noundef nonnull %md_size) #12
  %cmp137 = icmp slt i32 %call136, 1
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %lor.lhs.false135, %lor.lhs.false130, %if.end125
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %hmac.0) #12
  br label %cleanup162

if.end140:                                        ; preds = %lor.lhs.false135
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %hmac.0) #12
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc142 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 25
  %23 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc142, align 8, !tbaa !52
  %enc_flags143 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %23, i64 0, i32 12
  %24 = load i32, i32* %enc_flags143, align 8, !tbaa !54
  %and144 = and i32 %24, 8
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %for.body.preheader, label %cleanup162

for.body.preheader:                               ; preds = %if.end140
  %arrayidx149 = getelementptr inbounds i8, i8* %seq.0, i64 7
  %25 = load i8, i8* %arrayidx149, align 1, !tbaa !70
  %inc = add i8 %25, 1
  store i8 %inc, i8* %arrayidx149, align 1, !tbaa !70
  %cmp153.not = icmp eq i8 %inc, 0
  br i1 %cmp153.not, label %for.cond, label %cleanup162

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx149.1 = getelementptr inbounds i8, i8* %seq.0, i64 6
  %26 = load i8, i8* %arrayidx149.1, align 1, !tbaa !70
  %inc.1 = add i8 %26, 1
  store i8 %inc.1, i8* %arrayidx149.1, align 1, !tbaa !70
  %cmp153.not.1 = icmp eq i8 %inc.1, 0
  br i1 %cmp153.not.1, label %for.cond.1, label %cleanup162

for.cond.1:                                       ; preds = %for.cond
  %arrayidx149.2 = getelementptr inbounds i8, i8* %seq.0, i64 5
  %27 = load i8, i8* %arrayidx149.2, align 1, !tbaa !70
  %inc.2 = add i8 %27, 1
  store i8 %inc.2, i8* %arrayidx149.2, align 1, !tbaa !70
  %cmp153.not.2 = icmp eq i8 %inc.2, 0
  br i1 %cmp153.not.2, label %for.cond.2, label %cleanup162

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx149.3 = getelementptr inbounds i8, i8* %seq.0, i64 4
  %28 = load i8, i8* %arrayidx149.3, align 1, !tbaa !70
  %inc.3 = add i8 %28, 1
  store i8 %inc.3, i8* %arrayidx149.3, align 1, !tbaa !70
  %cmp153.not.3 = icmp eq i8 %inc.3, 0
  br i1 %cmp153.not.3, label %for.cond.3, label %cleanup162

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx149.4 = getelementptr inbounds i8, i8* %seq.0, i64 3
  %29 = load i8, i8* %arrayidx149.4, align 1, !tbaa !70
  %inc.4 = add i8 %29, 1
  store i8 %inc.4, i8* %arrayidx149.4, align 1, !tbaa !70
  %cmp153.not.4 = icmp eq i8 %inc.4, 0
  br i1 %cmp153.not.4, label %for.cond.4, label %cleanup162

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx149.5 = getelementptr inbounds i8, i8* %seq.0, i64 2
  %30 = load i8, i8* %arrayidx149.5, align 1, !tbaa !70
  %inc.5 = add i8 %30, 1
  store i8 %inc.5, i8* %arrayidx149.5, align 1, !tbaa !70
  %cmp153.not.5 = icmp eq i8 %inc.5, 0
  br i1 %cmp153.not.5, label %for.cond.5, label %cleanup162

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx149.6 = getelementptr inbounds i8, i8* %seq.0, i64 1
  %31 = load i8, i8* %arrayidx149.6, align 1, !tbaa !70
  %inc.6 = add i8 %31, 1
  store i8 %inc.6, i8* %arrayidx149.6, align 1, !tbaa !70
  %cmp153.not.6 = icmp eq i8 %inc.6, 0
  br i1 %cmp153.not.6, label %for.cond.6, label %cleanup162

for.cond.6:                                       ; preds = %for.cond.5
  %32 = load i8, i8* %seq.0, align 1, !tbaa !70
  %inc.7 = add i8 %32, 1
  store i8 %inc.7, i8* %seq.0, align 1, !tbaa !70
  br label %cleanup162

cleanup162:                                       ; preds = %for.cond.6, %for.body.preheader, %for.cond, %for.cond.1, %for.cond.2, %for.cond.3, %for.cond.4, %for.cond.5, %if.end140, %entry, %if.then113, %if.then139, %if.then39, %if.then29
  %retval.1 = phi i32 [ 0, %if.then39 ], [ 0, %if.then139 ], [ 0, %if.then113 ], [ 0, %if.then29 ], [ 0, %entry ], [ 1, %if.end140 ], [ 1, %for.cond.6 ], [ 1, %for.cond.5 ], [ 1, %for.cond.4 ], [ 1, %for.cond.3 ], [ 1, %for.cond.2 ], [ 1, %for.cond.1 ], [ 1, %for.cond ], [ 1, %for.body.preheader ]
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.1
}

declare i32 @EVP_MD_CTX_copy(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_MD_CTX_ctrl(%struct.evp_md_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #3

declare i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_ctx_st* @EVP_MD_CTX_get_pkey_ctx(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_process_record(%struct.ssl_st* noundef %s, %struct.dtls1_bitmap_st* noundef %bitmap) local_unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %macbuf = alloca %struct.ssl_mac_buf_st, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #13
  %1 = bitcast %struct.ssl_mac_buf_st* %macbuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %2 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  %3 = load i8*, i8** %packet, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 13
  %input = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 6
  store i8* %arrayidx, i8** %input, align 8, !tbaa !95
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  %4 = load i64, i64* %length, align 8, !tbaa !46
  %cmp = icmp ugt i64 %4, 17728
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1534, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 150, i8* noundef null) #12
  br label %cleanup154

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 5
  store i8* %arrayidx, i8** %data, align 8, !tbaa !66
  %orig_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 3
  store i64 %4, i64* %orig_len, align 8, !tbaa !67
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 43
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %cmp4.not = icmp eq %struct.evp_md_ctx_st* %5, null
  br i1 %cmp4.not, label %if.end16, label %if.then5

if.then5:                                         ; preds = %if.end
  %call = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef nonnull %5) #12
  %cmp7.not = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call9 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call) #12
  %6 = icmp ult i32 %call9, 65
  br i1 %6, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.then8
  %conv252 = zext i32 %call9 to i64
  br label %if.end16

cleanup:                                          ; preds = %if.then8
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1548, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524294, i8* noundef null) #12
  br label %cleanup154

if.end16:                                         ; preds = %if.then5, %if.end14, %if.end
  %mac_size.2 = phi i64 [ 0, %if.end ], [ 0, %if.then5 ], [ %conv252, %if.end14 ]
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %7 = load i64, i64* %flags, align 8, !tbaa !74
  %and = and i64 %7, 256
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end16
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %tobool18.not = icmp eq %struct.evp_md_ctx_st* %8, null
  br i1 %tobool18.not, label %if.end42, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %9 = load i64, i64* %orig_len, align 8, !tbaa !67
  %cmp21 = icmp ult i64 %9, %mac_size.2
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then19
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1559, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 160, i8* noundef null) #12
  br label %cleanup154

if.end24:                                         ; preds = %if.then19
  %10 = load i64, i64* %length, align 8, !tbaa !46
  %sub = sub i64 %10, %mac_size.2
  store i64 %sub, i64* %length, align 8, !tbaa !46
  %11 = load i8*, i8** %data, align 8, !tbaa !66
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %12 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !51
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %12, i64 0, i32 25
  %13 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !52
  %mac28 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %13, i64 0, i32 1
  %14 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac28, align 8, !tbaa !76
  %call30 = call i32 %14(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i8* noundef nonnull %0, i32 noundef 0) #12
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end24
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %sub
  %call34 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef %add.ptr, i64 noundef %mac_size.2) #12
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end42, label %if.then37

if.then37:                                        ; preds = %lor.lhs.false, %if.end24
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1567, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 20, i32 noundef 281, i8* noundef null) #12
  br label %cleanup154

if.end42:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.end16
  %mac_size.4 = phi i64 [ %mac_size.2, %land.lhs.true ], [ %mac_size.2, %if.end16 ], [ 0, %lor.lhs.false ]
  %call43 = call i32 @ERR_set_mark() #12
  %method44 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %15 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method44, align 8, !tbaa !51
  %ssl3_enc45 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 25
  %16 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc45, align 8, !tbaa !52
  %enc = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %16, i64 0, i32 0
  %17 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)** %enc, align 8, !tbaa !77
  %call46 = call i32 %17(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i64 noundef 1, i32 noundef 0, %struct.ssl_mac_buf_st* noundef nonnull %macbuf, i64 noundef %mac_size.4) #12
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end57

if.then49:                                        ; preds = %if.end42
  %call50 = call i32 @ERR_pop_to_mark() #12
  %call51 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #12
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %end

if.end54:                                         ; preds = %if.then49
  store i64 0, i64* %length, align 8, !tbaa !46
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %end

if.end57:                                         ; preds = %if.end42
  %call58 = call i32 @ERR_clear_last_mark() #12
  %cmp59.not = icmp eq %struct.ssl_session_st* %2, null
  br i1 %cmp59.not, label %if.end106, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.end57
  %18 = load i64, i64* %flags, align 8, !tbaa !74
  %and64 = and i64 %18, 256
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.end106

land.lhs.true66:                                  ; preds = %land.lhs.true61
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %19 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !61
  %cmp67.not = icmp eq %struct.evp_cipher_ctx_st* %19, null
  br i1 %cmp67.not, label %if.end106, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %20 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %read_hash, align 8, !tbaa !73
  %call71 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %20) #12
  %cmp72.not = icmp eq %struct.evp_md_st* %call71, null
  br i1 %cmp72.not, label %if.end106, label %if.then74

if.then74:                                        ; preds = %land.lhs.true69
  %21 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method44, align 8, !tbaa !51
  %ssl3_enc76 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %21, i64 0, i32 25
  %22 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc76, align 8, !tbaa !52
  %mac77 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %22, i64 0, i32 1
  %23 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac77, align 8, !tbaa !76
  %call79 = call i32 %23(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i8* noundef nonnull %0, i32 noundef 0) #12
  %cmp80 = icmp eq i32 %call79, 0
  %mac83 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macbuf, i64 0, i32 0
  %24 = load i8*, i8** %mac83, align 8
  %cmp84 = icmp eq i8* %24, null
  %or.cond = select i1 %cmp80, i1 true, i1 %cmp84
  br i1 %or.cond, label %if.then102, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.then74
  %call89 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %0, i8* noundef nonnull %24, i64 noundef %mac_size.4) #12
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end93, label %if.then102

if.end93:                                         ; preds = %lor.lhs.false86
  %25 = load i64, i64* %length, align 8, !tbaa !46
  %add = add nuw nsw i64 %mac_size.4, 17408
  %cmp95 = icmp ugt i64 %25, %add
  br i1 %cmp95, label %if.then102, label %if.end106

if.then102:                                       ; preds = %lor.lhs.false86, %if.then74, %if.end93
  store i64 0, i64* %length, align 8, !tbaa !46
  %packet_length105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  store i64 0, i64* %packet_length105, align 8, !tbaa !37
  br label %end

if.end106:                                        ; preds = %if.end93, %if.end57, %land.lhs.true66, %land.lhs.true69, %land.lhs.true61
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 45
  %26 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !65
  %cmp107.not = icmp eq %struct.comp_ctx_st* %26, null
  br i1 %cmp107.not, label %if.end119, label %if.then109

if.then109:                                       ; preds = %if.end106
  %27 = load i64, i64* %length, align 8, !tbaa !46
  %cmp111 = icmp ugt i64 %27, 17408
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then109
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1634, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 140, i8* noundef null) #12
  br label %end

if.end114:                                        ; preds = %if.then109
  %call115 = call i32 @ssl3_do_uncompress(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay) #14
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end114
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1638, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 30, i32 noundef 107, i8* noundef null) #12
  br label %end

if.end119:                                        ; preds = %if.end114, %if.end106
  %28 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %cmp121.not = icmp eq %struct.ssl_session_st* %28, null
  br i1 %cmp121.not, label %if.end142, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.end119
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %28, i64 0, i32 26, i32 8
  %29 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !82
  %30 = add i8 %29, -1
  %31 = icmp ult i8 %30, 4
  br i1 %31, label %if.then135, label %if.end142

if.then135:                                       ; preds = %land.lhs.true123
  %conv125 = zext i8 %29 to i32
  %sub140 = add nsw i32 %conv125, -1
  %shl = shl nuw nsw i32 512, %sub140
  %conv141 = zext i32 %shl to i64
  br label %if.end142

if.end142:                                        ; preds = %if.then135, %land.lhs.true123, %if.end119
  %max_plain_length.0 = phi i64 [ %conv141, %if.then135 ], [ 16384, %land.lhs.true123 ], [ 16384, %if.end119 ]
  %32 = load i64, i64* %length, align 8, !tbaa !46
  %cmp144 = icmp ugt i64 %32, %max_plain_length.0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end142
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1649, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dtls1_process_record, i64 0, i64 0)) #12
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32 noundef 146, i8* noundef null) #12
  br label %end

if.end147:                                        ; preds = %if.end142
  %off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 4
  store i64 0, i64* %off, align 8, !tbaa !83
  %packet_length149 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  store i64 0, i64* %packet_length149, align 8, !tbaa !37
  call void @dtls1_record_bitmap_update(%struct.ssl_st* noundef nonnull %s, %struct.dtls1_bitmap_st* noundef %bitmap) #12
  br label %end

end:                                              ; preds = %if.then49, %if.end147, %if.then146, %if.then117, %if.then113, %if.then102, %if.end54
  %ret.0 = phi i32 [ 0, %if.then49 ], [ 0, %if.end54 ], [ 0, %if.then102 ], [ 0, %if.then113 ], [ 0, %if.then146 ], [ 1, %if.end147 ], [ 0, %if.then117 ]
  %alloced = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macbuf, i64 0, i32 1
  %33 = load i32, i32* %alloced, align 8, !tbaa !86
  %tobool150.not = icmp eq i32 %33, 0
  br i1 %tobool150.not, label %cleanup154, label %if.then151

if.then151:                                       ; preds = %end
  %mac152 = getelementptr inbounds %struct.ssl_mac_buf_st, %struct.ssl_mac_buf_st* %macbuf, i64 0, i32 0
  %34 = load i8*, i8** %mac152, align 8, !tbaa !78
  call void @CRYPTO_free(i8* noundef %34, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1672) #12
  br label %cleanup154

cleanup154:                                       ; preds = %if.then37, %if.then23, %cleanup, %end, %if.then151, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ -1, %cleanup ], [ %ret.0, %if.then151 ], [ %ret.0, %end ], [ 0, %if.then23 ], [ 0, %if.then37 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #13
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare void @dtls1_record_bitmap_update(%struct.ssl_st* noundef, %struct.dtls1_bitmap_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_get_record(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %n = alloca i64, align 8
  %is_next_epoch = alloca i32, align 4
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast i32* %is_next_epoch to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %call314 = call i32 @dtls1_process_buffered_records(%struct.ssl_st* noundef %s) #12
  %tobool.not315 = icmp eq i32 %call314, 0
  br i1 %tobool.not315, label %cleanup, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  %len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 2
  %packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 1
  %epoch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 9
  %arrayidx41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 2
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  %read = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 8
  %first_packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 83
  %version58 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %arraydecay178 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 10, i64 0
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %again.backedge
  %2 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !106
  %processed_rcds = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %2, i64 0, i32 5
  %call2 = call i32 @dtls1_retrieve_buffered_record(%struct.ssl_st* noundef %s, %struct.record_pqueue_st* noundef nonnull %processed_rcds) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load i32, i32* %rstate, align 4, !tbaa !36
  %cmp.not = icmp eq i32 %3, 241
  br i1 %cmp.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load i64, i64* %packet_length, align 8, !tbaa !37
  %cmp8 = icmp ult i64 %4, 13
  br i1 %cmp8, label %if.then9, label %lor.lhs.false.if.end118_crit_edge

lor.lhs.false.if.end118_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load i64, i64* %length, align 8, !tbaa !46
  br label %if.end118

if.then9:                                         ; preds = %lor.lhs.false, %if.end5
  %5 = load i64, i64* %len, align 8, !tbaa !123
  %call11 = call i32 @ssl3_read_n(%struct.ssl_st* noundef nonnull %s, i64 noundef 13, i64 noundef %5, i32 noundef 0, i32 noundef 1, i64* noundef nonnull %n) #12
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then9
  %6 = load i64, i64* %packet_length, align 8, !tbaa !37
  %cmp17.not = icmp eq i64 %6, 13
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end14
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

again.backedge:                                   ; preds = %if.then18, %if.then61, %if.then73, %if.then82, %if.then112, %if.end137, %if.then149, %if.then156, %if.then165, %if.end184, %if.end196
  %call = call i32 @dtls1_process_buffered_records(%struct.ssl_st* noundef nonnull %s) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end21:                                         ; preds = %if.end14
  store i32 241, i32* %rstate, align 4, !tbaa !36
  %7 = load i8*, i8** %packet, align 8, !tbaa !39
  %8 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !47
  %tobool25.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %8, null
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end21
  %9 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !48
  call void %8(i32 noundef 0, i32 noundef 0, i32 noundef 256, i8* noundef %7, i64 noundef 13, %struct.ssl_st* noundef nonnull %s, i8* noundef %9) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 1
  %10 = load i8, i8* %7, align 1, !tbaa !70
  %conv = zext i8 %10 to i32
  store i32 %conv, i32* %type, align 4, !tbaa !44
  %incdec.ptr29 = getelementptr inbounds i8, i8* %7, i64 2
  %11 = load i8, i8* %incdec.ptr, align 1, !tbaa !70
  %conv30 = zext i8 %11 to i16
  %incdec.ptr31 = getelementptr inbounds i8, i8* %7, i64 3
  %12 = load i8, i8* %incdec.ptr29, align 1, !tbaa !70
  %conv32 = zext i8 %12 to i16
  %shl = shl nuw i16 %conv30, 8
  %or = or i16 %shl, %conv32
  %13 = load i8, i8* %incdec.ptr31, align 1, !tbaa !70
  %conv34 = zext i8 %13 to i64
  %shl35 = shl nuw nsw i64 %conv34, 8
  %arrayidx36 = getelementptr inbounds i8, i8* %7, i64 4
  %14 = load i8, i8* %arrayidx36, align 1, !tbaa !70
  %conv37 = zext i8 %14 to i64
  %or38 = or i64 %shl35, %conv37
  store i64 %or38, i64* %epoch, align 8, !tbaa !124
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 5
  %call42 = call i8* @memcpy(i8* noundef nonnull %arrayidx41, i8* noundef nonnull %add.ptr, i64 noundef 6) #12
  %add.ptr43 = getelementptr inbounds i8, i8* %7, i64 11
  %15 = load i8, i8* %add.ptr43, align 1, !tbaa !70
  %conv45 = zext i8 %15 to i64
  %shl46 = shl nuw nsw i64 %conv45, 8
  %arrayidx47 = getelementptr inbounds i8, i8* %7, i64 12
  %16 = load i8, i8* %arrayidx47, align 1, !tbaa !70
  %conv48 = zext i8 %16 to i64
  %or49 = or i64 %shl46, %conv48
  store i64 %or49, i64* %length, align 8, !tbaa !46
  store i32 0, i32* %read, align 8, !tbaa !68
  %17 = load i32, i32* %first_packet, align 8, !tbaa !50
  %tobool52.not = icmp eq i32 %17, 0
  br i1 %tobool52.not, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end28
  %18 = load i32, i32* %type, align 4, !tbaa !44
  %cmp54.not = icmp eq i32 %18, 21
  br i1 %cmp54.not, label %if.end67, label %if.then56

if.then56:                                        ; preds = %land.lhs.true
  %conv57 = zext i16 %or to i32
  %19 = load i32, i32* %version58, align 8, !tbaa !58
  %cmp59.not = icmp eq i32 %19, %conv57
  br i1 %cmp59.not, label %if.end67, label %if.then61

if.then61:                                        ; preds = %if.then56
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end67:                                         ; preds = %if.then56, %land.lhs.true, %if.end28
  %conv68 = zext i16 %shl to i32
  %20 = load i32, i32* %version58, align 8, !tbaa !58
  %and70 = and i32 %20, 65280
  %cmp71.not = icmp eq i32 %and70, %conv68
  br i1 %cmp71.not, label %if.end78, label %if.then73

if.then73:                                        ; preds = %if.end67
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end78:                                         ; preds = %if.end67
  %cmp80 = icmp ugt i64 %or49, 17728
  br i1 %cmp80, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end78
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end87:                                         ; preds = %if.end78
  %21 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !14
  %cmp88.not = icmp eq %struct.ssl_session_st* %21, null
  br i1 %cmp88.not, label %if.end118, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end87
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %21, i64 0, i32 26, i32 8
  %22 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !82
  %23 = add i8 %22, -1
  %24 = icmp ult i8 %23, 4
  br i1 %24, label %land.lhs.true102, label %if.end118

land.lhs.true102:                                 ; preds = %land.lhs.true90
  %conv92 = zext i8 %22 to i32
  %sub = add nsw i32 %conv92, -1
  %shl108 = shl nuw nsw i32 512, %sub
  %add = or i32 %shl108, 320
  %conv109 = zext i32 %add to i64
  %cmp110 = icmp ugt i64 %or49, %conv109
  br i1 %cmp110, label %if.then112, label %if.end118

if.then112:                                       ; preds = %land.lhs.true102
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end118:                                        ; preds = %lor.lhs.false.if.end118_crit_edge, %if.end87, %land.lhs.true90, %land.lhs.true102
  %25 = phi i64 [ %.pre, %lor.lhs.false.if.end118_crit_edge ], [ %or49, %if.end87 ], [ %or49, %land.lhs.true90 ], [ %or49, %land.lhs.true102 ]
  %26 = load i64, i64* %packet_length, align 8, !tbaa !37
  %sub122 = add i64 %26, -13
  %cmp123 = icmp ugt i64 %25, %sub122
  br i1 %cmp123, label %if.then125, label %if.end143

if.then125:                                       ; preds = %if.end118
  %call127 = call i32 @ssl3_read_n(%struct.ssl_st* noundef nonnull %s, i64 noundef %25, i64 noundef %25, i32 noundef 1, i32 noundef 1, i64* noundef nonnull %n) #12
  %cmp128 = icmp sgt i32 %call127, 0
  %27 = load i64, i64* %n, align 8
  %cmp131.not = icmp eq i64 %27, %25
  %or.cond313 = select i1 %cmp128, i1 %cmp131.not, i1 false
  br i1 %or.cond313, label %if.end143, label %if.then133

if.then133:                                       ; preds = %if.then125
  %call134 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #12
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %cleanup

if.end137:                                        ; preds = %if.then133
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end143:                                        ; preds = %if.then125, %if.end118
  store i32 240, i32* %rstate, align 4, !tbaa !36
  %call146 = call %struct.dtls1_bitmap_st* @dtls1_get_bitmap(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i32* noundef nonnull %is_next_epoch) #12
  %cmp147 = icmp eq %struct.dtls1_bitmap_st* %call146, null
  br i1 %cmp147, label %if.then149, label %if.end153

if.then149:                                       ; preds = %if.end143
  store i64 0, i64* %length, align 8, !tbaa !46
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end153:                                        ; preds = %if.end143
  %call154 = call i32 @dtls1_record_replay_check(%struct.ssl_st* noundef nonnull %s, %struct.dtls1_bitmap_st* noundef nonnull %call146) #12
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.then156, label %if.end161

if.then156:                                       ; preds = %if.end153
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end161:                                        ; preds = %if.end153
  %28 = load i64, i64* %length, align 8, !tbaa !46
  %cmp163 = icmp eq i64 %28, 0
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end161
  store i32 1, i32* %read, align 8, !tbaa !68
  br label %again.backedge

if.end167:                                        ; preds = %if.end161
  %29 = load i32, i32* %is_next_epoch, align 4, !tbaa !49
  %tobool168.not = icmp eq i32 %29, 0
  br i1 %tobool168.not, label %if.end189, label %if.then169

if.then169:                                       ; preds = %if.end167
  %call170 = call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #12
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %lor.lhs.false172, label %if.then175

lor.lhs.false172:                                 ; preds = %if.then169
  %call173 = call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #12
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end184, label %if.then175

if.then175:                                       ; preds = %lor.lhs.false172, %if.then169
  %30 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !106
  %unprocessed_rcds = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %30, i64 0, i32 4
  %call179 = call i32 @dtls1_buffer_record(%struct.ssl_st* noundef nonnull %s, %struct.record_pqueue_st* noundef nonnull %unprocessed_rcds, i8* noundef nonnull %arraydecay178) #12
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %cleanup, label %if.end184

if.end184:                                        ; preds = %if.then175, %lor.lhs.false172
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

if.end189:                                        ; preds = %if.end167
  %call190 = call i32 @dtls1_process_record(%struct.ssl_st* noundef nonnull %s, %struct.dtls1_bitmap_st* noundef nonnull %call146) #14
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then192, label %cleanup

if.then192:                                       ; preds = %if.end189
  %call193 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #12
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.end196, label %cleanup

if.end196:                                        ; preds = %if.then192
  store i64 0, i64* %length, align 8, !tbaa !46
  store i32 1, i32* %read, align 8, !tbaa !68
  store i64 0, i64* %packet_length, align 8, !tbaa !37
  br label %again.backedge

cleanup:                                          ; preds = %again.backedge, %if.end, %if.then9, %if.then133, %if.then175, %if.then192, %if.end189, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 1, %if.end189 ], [ -1, %if.then192 ], [ -1, %if.then175 ], [ -1, %if.then133 ], [ %call11, %if.then9 ], [ 1, %if.end ], [ -1, %again.backedge ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

declare i32 @dtls1_process_buffered_records(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @dtls1_retrieve_buffered_record(%struct.ssl_st* noundef, %struct.record_pqueue_st* noundef) local_unnamed_addr #3

declare %struct.dtls1_bitmap_st* @dtls1_get_bitmap(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i32* noundef) local_unnamed_addr #3

declare i32 @dtls1_record_replay_check(%struct.ssl_st* noundef, %struct.dtls1_bitmap_st* noundef) local_unnamed_addr #3

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef) local_unnamed_addr #3

declare i32 @dtls1_buffer_record(%struct.ssl_st* noundef, %struct.record_pqueue_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_buffer_listen_record(%struct.ssl_st* noundef %s, i64 noundef %len, i8* noundef %seq, i64 noundef %off) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0
  %0 = bitcast %struct.ssl3_record_st* %arraydecay to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 80) #12
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  store i64 %len, i64* %length, align 8, !tbaa !46
  %type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 1
  store i32 22, i32* %type, align 4, !tbaa !44
  %arraydecay1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 10, i64 0
  %call2 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay1, i8* noundef %seq, i64 noundef 8) #12
  %off3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 4
  store i64 %off, i64* %off3, align 8, !tbaa !83
  %buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %1 = load i8*, i8** %buf, align 8, !tbaa !125
  %packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  store i8* %1, i8** %packet, align 8, !tbaa !39
  %add = add i64 %len, 13
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  store i64 %add, i64* %packet_length, align 8, !tbaa !37
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 13
  %data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 5
  store i8* %add.ptr, i8** %data, align 8, !tbaa !66
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %2 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !106
  %processed_rcds = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %2, i64 0, i32 5
  %call15 = tail call i32 @dtls1_buffer_record(%struct.ssl_st* noundef %s, %struct.record_pqueue_st* noundef nonnull %processed_rcds, i8* noundef nonnull %arraydecay1) #12
  %cmp = icmp sgt i32 %call15, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !88
  %1 = load i8, i8* %0, align 1, !tbaa !70
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !49
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !88
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !88
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !90
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #9 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !90
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #7 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !88
  %1 = load i8, i8* %0, align 1, !tbaa !70
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !49
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !70
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !49
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 48}
!5 = !{!"ssl3_record_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !9, i64 64, !7, i64 72}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !10, i64 2328}
!15 = !{!"ssl_st", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !10, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !16, i64 72, !7, i64 132, !10, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !17, i64 168, !10, i64 1208, !10, i64 1216, !10, i64 1224, !6, i64 1232, !10, i64 1240, !20, i64 1248, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !6, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !10, i64 2120, !7, i64 2128, !10, i64 2144, !10, i64 2152, !10, i64 2160, !10, i64 2168, !7, i64 2176, !10, i64 2192, !10, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !10, i64 2328, !10, i64 2336, !10, i64 2344, !9, i64 2352, !10, i64 2360, !7, i64 2368, !9, i64 2400, !6, i64 2408, !10, i64 2416, !10, i64 2424, !6, i64 2432, !6, i64 2436, !10, i64 2440, !10, i64 2448, !10, i64 2456, !10, i64 2464, !10, i64 2472, !10, i64 2480, !9, i64 2488, !21, i64 2496, !10, i64 2512, !10, i64 2520, !7, i64 2528, !9, i64 2536, !6, i64 2544, !6, i64 2548, !6, i64 2552, !9, i64 2560, !6, i64 2568, !6, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !22, i64 2600, !10, i64 2904, !6, i64 2912, !10, i64 2920, !10, i64 2928, !10, i64 2936, !6, i64 2944, !10, i64 2952, !10, i64 2960, !10, i64 2968, !6, i64 2976, !6, i64 2980, !7, i64 2984, !6, i64 2988, !10, i64 2992, !9, i64 3000, !6, i64 3008, !10, i64 3016, !24, i64 3024, !10, i64 3152, !25, i64 3160, !10, i64 7448, !10, i64 7456, !10, i64 7464, !10, i64 7472, !9, i64 7480, !6, i64 7488, !6, i64 7492, !6, i64 7496, !10, i64 7504, !10, i64 7512, !9, i64 7520, !10, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !10, i64 7560, !10, i64 7568, !10, i64 7576, !10, i64 7584, !10, i64 7592, !9, i64 7600}
!16 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 52, !7, i64 56}
!17 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !6, i64 216, !6, i64 220, !10, i64 224, !10, i64 232, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !7, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !18, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !6, i64 984, !6, i64 988, !10, i64 992, !9, i64 1000, !10, i64 1008, !9, i64 1016, !6, i64 1024, !7, i64 1028, !7, i64 1029, !19, i64 1030, !10, i64 1032}
!18 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !6, i64 280, !10, i64 288, !10, i64 296, !6, i64 304, !10, i64 312, !9, i64 320, !10, i64 328, !9, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !6, i64 368, !9, i64 376, !10, i64 384, !6, i64 392, !10, i64 400, !9, i64 408, !10, i64 416, !9, i64 424, !10, i64 432, !9, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !9, i64 480, !9, i64 488, !10, i64 496, !7, i64 504, !6, i64 540, !6, i64 544, !6, i64 548, !6, i64 552}
!19 = !{!"short", !7, i64 0}
!20 = !{!"ssl_dane_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !9, i64 56}
!21 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!22 = !{!"", !7, i64 0, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !19, i64 72, !6, i64 76, !23, i64 80, !6, i64 112, !6, i64 116, !9, i64 120, !10, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !10, i64 160, !9, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !9, i64 232, !10, i64 240, !9, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !10, i64 272, !9, i64 280, !6, i64 288, !7, i64 292, !6, i64 296}
!23 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !9, i64 24}
!24 = !{!"srp_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !6, i64 112, !9, i64 120}
!25 = !{!"record_layer_st", !10, i64 0, !6, i64 8, !6, i64 12, !9, i64 16, !9, i64 24, !26, i64 32, !7, i64 80, !7, i64 1616, !10, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !6, i64 4232, !9, i64 4240, !10, i64 4248, !7, i64 4256, !7, i64 4264, !6, i64 4272, !6, i64 4276, !10, i64 4280}
!26 = !{!"ssl3_buffer_st", !10, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40}
!27 = !{!15, !6, i64 56}
!28 = !{!29, !6, i64 852}
!29 = !{!"ssl_session_st", !6, i64 0, !9, i64 8, !7, i64 16, !7, i64 80, !9, i64 592, !7, i64 600, !9, i64 632, !7, i64 640, !10, i64 672, !10, i64 680, !6, i64 688, !10, i64 696, !10, i64 704, !9, i64 712, !7, i64 720, !9, i64 728, !9, i64 736, !9, i64 744, !6, i64 752, !6, i64 756, !10, i64 760, !9, i64 768, !6, i64 776, !21, i64 784, !10, i64 800, !10, i64 808, !30, i64 816, !10, i64 880, !10, i64 888, !9, i64 896, !6, i64 904, !10, i64 912, !10, i64 920}
!30 = !{!"", !10, i64 0, !10, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !9, i64 48, !7, i64 56}
!31 = !{!15, !10, i64 2336}
!32 = !{!15, !6, i64 2864}
!33 = !{!15, !6, i64 7492}
!34 = !{!15, !6, i64 7496}
!35 = !{!15, !9, i64 2592}
!36 = !{!15, !6, i64 3172}
!37 = !{!15, !9, i64 7344}
!38 = !{!26, !9, i64 16}
!39 = !{!15, !10, i64 7336}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !42}
!41 = !{!10, !10, i64 0}
!42 = !{!9, !9, i64 0}
!43 = !{!15, !6, i64 7432}
!44 = !{!5, !6, i64 4}
!45 = !{!5, !6, i64 0}
!46 = !{!5, !9, i64 8}
!47 = !{!15, !10, i64 1216}
!48 = !{!15, !10, i64 1224}
!49 = !{!6, !6, i64 0}
!50 = !{!15, !6, i64 2568}
!51 = !{!15, !10, i64 8}
!52 = !{!53, !10, i64 192}
!53 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216}
!54 = !{!55, !6, i64 96}
!55 = !{!"ssl3_enc_method", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !9, i64 56, !10, i64 64, !9, i64 72, !10, i64 80, !10, i64 88, !6, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!56 = !{!53, !6, i64 0}
!57 = !{!15, !7, i64 2280}
!58 = !{!15, !6, i64 0}
!59 = !{!15, !10, i64 2168}
!60 = !{!15, !10, i64 2192}
!61 = !{!15, !10, i64 2120}
!62 = !{!15, !9, i64 576}
!63 = !{!15, !9, i64 712}
!64 = !{!15, !7, i64 128}
!65 = !{!15, !10, i64 2160}
!66 = !{!5, !10, i64 32}
!67 = !{!5, !9, i64 16}
!68 = !{!5, !6, i64 56}
!69 = distinct !{!69, !12}
!70 = !{!7, !7, i64 0}
!71 = !{!15, !9, i64 7376}
!72 = !{!15, !9, i64 3176}
!73 = !{!15, !10, i64 2144}
!74 = !{!15, !9, i64 168}
!75 = distinct !{!75, !12}
!76 = !{!55, !10, i64 8}
!77 = !{!55, !10, i64 0}
!78 = !{!79, !10, i64 0}
!79 = !{!"ssl_mac_buf_st", !10, i64 0, !6, i64 8}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = !{!29, !7, i64 872}
!83 = !{!5, !9, i64 24}
!84 = distinct !{!84, !12}
!85 = !{!15, !7, i64 132}
!86 = !{!79, !6, i64 8}
!87 = distinct !{!87, !12}
!88 = !{!89, !10, i64 0}
!89 = !{!"", !10, i64 0, !9, i64 8}
!90 = !{!89, !9, i64 8}
!91 = !{!26, !10, i64 0}
!92 = !{!26, !9, i64 32}
!93 = !{!26, !9, i64 24}
!94 = !{!15, !10, i64 2152}
!95 = !{!5, !10, i64 40}
!96 = !{i64 0, i64 8, !41, i64 8, i64 4, !49, i64 16, i64 8, !41, i64 24, i64 8, !42, i64 32, i64 8, !42}
!97 = !{!15, !10, i64 2472}
!98 = !{!99, !10, i64 0}
!99 = !{!"ssl_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !9, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !9, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !100, i64 120, !7, i64 164, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !21, i64 240, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !9, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !9, i64 336, !10, i64 344, !6, i64 352, !10, i64 360, !10, i64 368, !6, i64 376, !9, i64 384, !7, i64 392, !10, i64 424, !10, i64 432, !10, i64 440, !6, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !101, i64 536, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !24, i64 792, !102, i64 920, !10, i64 952, !10, i64 960, !10, i64 968, !10, i64 976, !6, i64 984, !6, i64 988, !10, i64 992, !10, i64 1000, !9, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !9, i64 1040, !10, i64 1048, !10, i64 1056, !6, i64 1064, !10, i64 1072, !10, i64 1080, !10, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !10, i64 1568, !10, i64 1576, !9, i64 1584, !9, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!100 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!101 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !6, i64 72, !7, i64 76, !9, i64 80, !10, i64 88, !9, i64 96, !10, i64 104, !10, i64 112, !9, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !9, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !7, i64 192}
!102 = !{!"dane_ctx_st", !10, i64 0, !10, i64 8, !7, i64 16, !9, i64 24}
!103 = !{!15, !6, i64 1344}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = !{!15, !10, i64 7440}
!107 = !{!19, !19, i64 0}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12, !112}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = distinct !{!113, !12, !114, !112}
!114 = !{!"llvm.loop.unroll.runtime.disable"}
!115 = distinct !{!115, !12, !112}
!116 = distinct !{!116, !12, !114, !112}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !{!15, !9, i64 3208}
!124 = !{!5, !9, i64 64}
!125 = !{!15, !10, i64 3192}
