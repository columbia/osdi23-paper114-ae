; ModuleID = 'ssl/tls_depr.c'
source_filename = "ssl/tls_depr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
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
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.0, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, {}*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.1, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type opaque
%struct.ctlog_store_st = type opaque
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
%struct.ui_method_st = type opaque
%struct.ssl_hmac_st = type { %struct.evp_mac_ctx_st*, %struct.hmac_ctx_st* }
%struct.ec_key_st = type opaque
%struct.ec_group_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"ssl/tls_depr.c\00", align 1
@__func__.SSL_CTX_set_client_cert_engine = private unnamed_addr constant [31 x i8] c"SSL_CTX_set_client_cert_engine\00", align 1
@__func__.ssl_set_tmp_ecdh_groups = private unnamed_addr constant [24 x i8] c"ssl_set_tmp_ecdh_groups\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @tls_engine_finish(%struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %e) #4
  ret void
}

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_cipher_st* @tls_get_cipher_from_engine(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_cipher_engine(i32 noundef %nid) #4
  %cmp.not = icmp eq %struct.engine_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %call) #4
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #4
  %call3 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_cipher_st* [ %call3, %if.then ], [ null, %entry ]
  ret %struct.evp_cipher_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.engine_st* @ENGINE_get_cipher_engine(i32 noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #1

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @tls_get_digest_from_engine(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.engine_st* @ENGINE_get_digest_engine(i32 noundef %nid) #4
  %cmp.not = icmp eq %struct.engine_st* %call, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %call) #4
  %call2 = tail call i8* @OBJ_nid2sn(i32 noundef %nid) #4
  %call3 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_md_st* [ %call3, %if.then ], [ null, %entry ]
  ret %struct.evp_md_st* %retval.0
}

declare %struct.engine_st* @ENGINE_get_digest_engine(i32 noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_engine_load_ssl_client_cert(%struct.ssl_st* noundef %s, %struct.x509_st** noundef %px509, %struct.evp_pkey_st** noundef %ppkey) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !4
  %client_cert_engine = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 57
  %1 = load %struct.engine_st*, %struct.engine_st** %client_cert_engine, align 8, !tbaa !22
  %call = tail call %struct.stack_st_X509_NAME* @SSL_get_client_CA_list(%struct.ssl_st* noundef %s) #4
  %call1 = tail call i32 @ENGINE_load_ssl_client_cert(%struct.engine_st* noundef %1, %struct.ssl_st* noundef %s, %struct.stack_st_X509_NAME* noundef %call, %struct.x509_st** noundef %px509, %struct.evp_pkey_st** noundef %ppkey, %struct.stack_st_X509** noundef null, %struct.ui_method_st* noundef null, i8* noundef null) #4
  ret i32 %call1
}

declare i32 @ENGINE_load_ssl_client_cert(%struct.engine_st* noundef, %struct.ssl_st* noundef, %struct.stack_st_X509_NAME* noundef, %struct.x509_st** noundef, %struct.evp_pkey_st** noundef, %struct.stack_st_X509** noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.stack_st_X509_NAME* @SSL_get_client_CA_list(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_client_cert_engine(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, %struct.engine_st* noundef %e) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_init(%struct.engine_st* noundef %e) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_set_client_cert_engine, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524326, i8* noundef null) #4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* @ENGINE_get_ssl_client_cert_function(%struct.engine_st* noundef %e) #4
  %tobool2.not = icmp eq i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.SSL_CTX_set_client_cert_engine, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 331, i8* noundef null) #4
  %call4 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %e) #4
  br label %return

if.end5:                                          ; preds = %if.end
  %client_cert_engine = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 57
  store %struct.engine_st* %e, %struct.engine_st** %client_cert_engine, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then3 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 (%struct.engine_st*, %struct.ssl_st*, %struct.stack_st_X509_NAME*, %struct.x509_st**, %struct.evp_pkey_st**, %struct.stack_st_X509**, %struct.ui_method_st*, i8*)* @ENGINE_get_ssl_client_cert_function(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_old_new(%struct.ssl_hmac_st* nocapture noundef writeonly %ret) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.hmac_ctx_st* @HMAC_CTX_new() #4
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ret, i64 0, i32 1
  store %struct.hmac_ctx_st* %call, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  %cmp = icmp ne %struct.hmac_ctx_st* %call, null
  %. = zext i1 %cmp to i32
  ret i32 %.
}

declare %struct.hmac_ctx_st* @HMAC_CTX_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ssl_hmac_old_free(%struct.ssl_hmac_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %0 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  tail call void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef %0) #4
  ret void
}

declare void @HMAC_CTX_free(%struct.hmac_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_old_init(%struct.ssl_hmac_st* nocapture noundef readonly %ctx, i8* noundef %key, i64 noundef %len, i8* noundef %md) local_unnamed_addr #0 {
entry:
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %0 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  %conv = trunc i64 %len to i32
  %call = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %md) #4
  %call1 = tail call i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef %0, i8* noundef %key, i32 noundef %conv, %struct.evp_md_st* noundef %call, %struct.engine_st* noundef null) #4
  ret i32 %call1
}

declare i32 @HMAC_Init_ex(%struct.hmac_ctx_st* noundef, i8* noundef, i32 noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_old_update(%struct.ssl_hmac_st* nocapture noundef readonly %ctx, i8* noundef %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %0 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  %call = tail call i32 @HMAC_Update(%struct.hmac_ctx_st* noundef %0, i8* noundef %data, i64 noundef %len) #4
  ret i32 %call
}

declare i32 @HMAC_Update(%struct.hmac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_hmac_old_final(%struct.ssl_hmac_st* nocapture noundef readonly %ctx, i8* noundef %md, i64* noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %l = alloca i32, align 4
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %1 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  %call = call i32 @HMAC_Final(%struct.hmac_ctx_st* noundef %1, i8* noundef %md, i32* noundef nonnull %l) #4
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i64* %len, null
  br i1 %cmp1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load i32, i32* %l, align 4, !tbaa !29
  %conv = zext i32 %2 to i64
  store i64 %conv, i64* %len, align 8, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare i32 @HMAC_Final(%struct.hmac_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @ssl_hmac_old_size(%struct.ssl_hmac_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %0 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  %call = tail call i64 @HMAC_size(%struct.hmac_ctx_st* noundef %0) #4
  ret i64 %call
}

declare i64 @HMAC_size(%struct.hmac_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.hmac_ctx_st* @ssl_hmac_get0_HMAC_CTX(%struct.ssl_hmac_st* nocapture noundef readonly %ctx) local_unnamed_addr #3 {
entry:
  %old_ctx = getelementptr inbounds %struct.ssl_hmac_st, %struct.ssl_hmac_st* %ctx, i64 0, i32 1
  %0 = load %struct.hmac_ctx_st*, %struct.hmac_ctx_st** %old_ctx, align 8, !tbaa !27
  ret %struct.hmac_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @ssl_dh_to_pkey(%struct.dh_st* noundef %dh) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dh_st* %dh, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #4
  %call1 = tail call i32 @EVP_PKEY_set1_DH(%struct.evp_pkey_st* noundef %call, %struct.dh_st* noundef nonnull %dh) #4
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then3 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare i32 @EVP_PKEY_set1_DH(%struct.evp_pkey_st* noundef, %struct.dh_st* noundef) local_unnamed_addr #1

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_set_tmp_ecdh_groups(i16** noundef %pext, i64* noundef %pextlen, i8* noundef %key) local_unnamed_addr #0 {
entry:
  %nid = alloca i32, align 4
  %0 = bitcast i8* %key to %struct.ec_key_st*
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %0) #4
  %1 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %cmp = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_set_tmp_ecdh_groups, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 290, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %call) #4
  store i32 %call1, i32* %nid, align 4, !tbaa !29
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @tls1_set_groups(i16** noundef %pext, i64* noundef %pextlen, i32* noundef nonnull %nid, i64 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end4 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  ret i32 %retval.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @tls1_set_groups(i16** noundef, i64* noundef, i32* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_CTX_set_tmp_dh_callback(%struct.ssl_ctx_st* noundef %ctx, %struct.dh_st* (%struct.ssl_st*, i32, i32)* noundef %dh) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dh_st* (%struct.ssl_st*, i32, i32)* %dh to void ()*
  %call = tail call i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 6, void ()* noundef %0) #4
  ret void
}

declare i64 @SSL_CTX_callback_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @SSL_set_tmp_dh_callback(%struct.ssl_st* noundef %ssl, %struct.dh_st* (%struct.ssl_st*, i32, i32)* noundef %dh) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.dh_st* (%struct.ssl_st*, i32, i32)* %dh to void ()*
  %call = tail call i64 @SSL_callback_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 6, void ()* noundef %0) #4
  ret void
}

declare i64 @SSL_callback_ctrl(%struct.ssl_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 2472}
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
!22 = !{!23, !9, i64 512}
!23 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !24, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !25, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !26, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!25 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!26 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!27 = !{!28, !9, i64 8}
!28 = !{!"ssl_hmac_st", !9, i64 0, !9, i64 8}
!29 = !{!6, !6, i64 0}
!30 = !{!11, !11, i64 0}
