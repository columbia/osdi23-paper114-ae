; ModuleID = 'ssl/statem/statem_dtls.c'
source_filename = "ssl/statem/statem_dtls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hm_fragment_st = type { %struct.hm_header_st, i8*, i8* }
%struct.hm_header_st = type { i8, i64, i16, i64, i64, i32, %struct.dtls1_retransmit_state }
%struct.dtls1_retransmit_state = type { %struct.evp_cipher_ctx_st*, %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.ssl_session_st*, i16 }
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.comp_ctx_st = type opaque
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
%struct.timeval = type { i64, i64 }
%struct.ssl_dane_st = type { %struct.dane_ctx_st*, %struct.stack_st_danetls_record*, %struct.stack_st_X509*, %struct.danetls_record_st*, %struct.x509_st*, i32, i32, i32, i64 }
%struct.stack_st_danetls_record = type opaque
%struct.danetls_record_st = type { i8, i8, i8, i8*, i64, %struct.evp_pkey_st* }
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
%struct.pitem_st = type { [8 x i8], i8*, %struct.pitem_st* }

@.str = private unnamed_addr constant [25 x i8] c"ssl/statem/statem_dtls.c\00", align 1
@__func__.dtls_construct_change_cipher_spec = private unnamed_addr constant [34 x i8] c"dtls_construct_change_cipher_spec\00", align 1
@__func__.dtls1_read_failed = private unnamed_addr constant [18 x i8] c"dtls1_read_failed\00", align 1
@__func__.dtls1_retransmit_message = private unnamed_addr constant [25 x i8] c"dtls1_retransmit_message\00", align 1
@__func__.dtls_get_reassembled_message = private unnamed_addr constant [29 x i8] c"dtls_get_reassembled_message\00", align 1
@bitmask_start_values = internal unnamed_addr constant [8 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80", align 1
@bitmask_end_values = internal unnamed_addr constant [8 x i8] c"\FF\01\03\07\0F\1F?\7F", align 1
@__func__.dtls1_preprocess_fragment = private unnamed_addr constant [26 x i8] c"dtls1_preprocess_fragment\00", align 1
@__func__.dtls1_hm_fragment_new = private unnamed_addr constant [22 x i8] c"dtls1_hm_fragment_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef %frag) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.hm_fragment_st* %frag, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %is_ccs = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag, i64 0, i32 0, i32 5
  %0 = load i32, i32* %is_ccs, align 8, !tbaa !4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %enc_write_ctx = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag, i64 0, i32 0, i32 6, i32 0
  %1 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !14
  tail call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %1) #8
  %write_hash = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag, i64 0, i32 0, i32 6, i32 1
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !15
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %2) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %fragment = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag, i64 0, i32 1
  %3 = load i8*, i8** %fragment, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #8
  %reassembly = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag, i64 0, i32 2
  %4 = load i8*, i8** %reassembly, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #8
  %5 = getelementptr %struct.hm_fragment_st, %struct.hm_fragment_st* %frag, i64 0, i32 0, i32 0
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 105) #8
  br label %return

return:                                           ; preds = %entry, %if.end6
  ret void
}

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_do_write(%struct.ssl_st* noundef %s, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = tail call i32 @dtls1_query_mtu(%struct.ssl_st* noundef %s) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup270, label %if.end

if.end:                                           ; preds = %entry
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %1 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %mtu = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 9
  %2 = load i64, i64* %mtu, align 8, !tbaa !30
  %call1 = tail call i64 @dtls1_min_mtu(%struct.ssl_st* noundef %s) #8
  %cmp = icmp ult i64 %2, %call1
  br i1 %cmp, label %cleanup270, label %if.end3

if.end3:                                          ; preds = %if.end
  %init_off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 16
  %3 = load i64, i64* %init_off, align 8, !tbaa !33
  %cmp4 = icmp eq i64 %3, 0
  %cmp5 = icmp eq i32 %type, 22
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end3
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %4 = load i64, i64* %init_num, align 8, !tbaa !34
  %5 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %msg_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 10, i32 1
  %6 = load i64, i64* %msg_len, align 8, !tbaa !35
  %add = add i64 %6, 12
  %cmp8 = icmp eq i64 %4, %add
  br i1 %cmp8, label %if.end13, label %cleanup270

if.end13:                                         ; preds = %if.then6, %if.end3
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !36
  %tobool14.not = icmp eq %struct.evp_md_ctx_st* %7, null
  br i1 %tobool14.not, label %if.end30, label %if.then15

if.then15:                                        ; preds = %if.end13
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %8 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !37
  %tobool16.not = icmp eq %struct.evp_cipher_ctx_st* %8, null
  br i1 %tobool16.not, label %if.else, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then15
  %call19 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %8) #8
  %call20 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call19) #8
  %and = and i64 %call20, 2097152
  %cmp21.not = icmp eq i64 %and, 0
  br i1 %cmp21.not, label %land.lhs.true17.if.else_crit_edge, label %if.end30

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  %.pre = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !36
  br label %if.else

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.then15
  %9 = phi %struct.evp_md_ctx_st* [ %.pre, %land.lhs.true17.if.else_crit_edge ], [ %7, %if.then15 ]
  %call25 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %9) #8
  %call26 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call25) #8
  %conv27 = sext i32 %call26 to i64
  br label %if.end30

if.end30:                                         ; preds = %if.end13, %land.lhs.true17, %if.else
  %mac_size.0 = phi i64 [ %conv27, %if.else ], [ 0, %land.lhs.true17 ], [ 0, %if.end13 ]
  %enc_write_ctx31 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %10 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx31, align 8, !tbaa !37
  %tobool32.not = icmp eq %struct.evp_cipher_ctx_st* %10, null
  br i1 %tobool32.not, label %if.end44, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end30
  %call35 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %10) #8
  %call36 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call35) #8
  %cmp37 = icmp eq i32 %call36, 2
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %land.lhs.true33
  %11 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx31, align 8, !tbaa !37
  %call41 = tail call i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef %11) #8
  %mul = shl nsw i32 %call41, 1
  %conv42 = sext i32 %mul to i64
  br label %if.end44

if.end44:                                         ; preds = %if.end30, %land.lhs.true33, %if.then39
  %blocksize.0 = phi i64 [ %conv42, %if.then39 ], [ 0, %land.lhs.true33 ], [ 0, %if.end30 ]
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !38
  %init_num45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %12 = load i64, i64* %init_num45, align 8, !tbaa !34
  %cmp46.not408 = icmp eq i64 %12, 0
  br i1 %cmp46.not408, label %cleanup270, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end44
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %add76 = add nsw i64 %blocksize.0, %mac_size.0
  %add100 = add nsw i64 %add76, 13
  %add103 = add nsw i64 %add76, 25
  %max_send_fragment = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 86
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end269
  %13 = phi i64 [ %12, %while.body.lr.ph ], [ %60, %if.end269 ]
  %frag_off.0410 = phi i64 [ 0, %while.body.lr.ph ], [ %frag_off.2, %if.end269 ]
  %retry.0409 = phi i32 [ 1, %while.body.lr.ph ], [ %retry.1, %if.end269 ]
  br i1 %cmp5, label %land.lhs.true50, label %if.end71

land.lhs.true50:                                  ; preds = %while.body
  %14 = load i64, i64* %init_off, align 8, !tbaa !33
  %cmp52.not = icmp eq i64 %14, 0
  br i1 %cmp52.not, label %if.end71, label %if.then54

if.then54:                                        ; preds = %land.lhs.true50
  %cmp55.not = icmp eq i64 %frag_off.0410, 0
  br i1 %cmp55.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %if.then54
  %cmp59 = icmp ult i64 %14, 13
  br i1 %cmp59, label %cleanup270, label %if.end62

if.end62:                                         ; preds = %if.then57
  %sub = add i64 %14, -12
  store i64 %sub, i64* %init_off, align 8, !tbaa !33
  %add65 = add i64 %13, 12
  store i64 %add65, i64* %init_num45, align 8, !tbaa !34
  br label %if.end71

if.else66:                                        ; preds = %if.then54
  %15 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %frag_off69 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %15, i64 0, i32 10, i32 3
  %16 = load i64, i64* %frag_off69, align 8, !tbaa !39
  br label %if.end71

if.end71:                                         ; preds = %if.end62, %if.else66, %land.lhs.true50, %while.body
  %frag_off.1 = phi i64 [ %frag_off.0410, %if.end62 ], [ %16, %if.else66 ], [ %frag_off.0410, %land.lhs.true50 ], [ %frag_off.0410, %while.body ]
  %17 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !40
  %call72 = call i64 @BIO_ctrl(%struct.bio_st* noundef %17, i32 noundef 13, i64 noundef 0, i8* noundef null) #8
  %add74 = shl i64 %call72, 32
  %sext = add i64 %add74, 55834574848
  %conv75 = ashr exact i64 %sext, 32
  %add77 = add nsw i64 %add76, %conv75
  %18 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %mtu79 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %18, i64 0, i32 9
  %19 = load i64, i64* %mtu79, align 8, !tbaa !30
  %sub85 = sub i64 %19, %add77
  %20 = call i64 @llvm.usub.sat.i64(i64 %19, i64 %add77)
  %cmp88 = icmp ult i64 %20, 13
  br i1 %cmp88, label %if.then90, label %if.end112

if.then90:                                        ; preds = %if.end71
  %21 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !40
  %call92 = call i64 @BIO_ctrl(%struct.bio_st* noundef %21, i32 noundef 11, i64 noundef 0, i8* noundef null) #8
  %conv93 = trunc i64 %call92 to i32
  %cmp94 = icmp slt i32 %conv93, 1
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.then90
  %conv93.le = trunc i64 %call92 to i32
  store i32 2, i32* %rwstate, align 8, !tbaa !38
  br label %cleanup270

if.end98:                                         ; preds = %if.then90
  %22 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %mtu102 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %22, i64 0, i32 9
  %23 = load i64, i64* %mtu102, align 8, !tbaa !30
  %cmp104 = icmp ugt i64 %23, %add103
  br i1 %cmp104, label %if.then106, label %cleanup270

if.then106:                                       ; preds = %if.end98
  %sub109 = sub i64 %23, %add100
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %if.end71
  %curr_mtu.1 = phi i64 [ %sub109, %if.then106 ], [ %sub85, %if.end71 ]
  %24 = load i64, i64* %init_num45, align 8, !tbaa !34
  %conv115 = and i64 %24, 4294967295
  %cmp116 = icmp ugt i64 %conv115, %curr_mtu.1
  %curr_mtu.1. = select i1 %cmp116, i64 %curr_mtu.1, i64 %24
  %25 = load i64, i64* %max_send_fragment, align 8, !tbaa !41
  %cmp122 = icmp ugt i64 %curr_mtu.1., %25
  %len.1 = select i1 %cmp122, i64 %25, i64 %curr_mtu.1.
  br i1 %cmp5, label %if.then129, label %if.end137

if.then129:                                       ; preds = %if.end112
  %cmp130 = icmp ult i64 %len.1, 12
  br i1 %cmp130, label %cleanup270, label %if.end133

if.end133:                                        ; preds = %if.then129
  %sub134 = add i64 %len.1, -12
  call fastcc void @dtls1_fix_message_header(%struct.ssl_st* noundef nonnull %s, i64 noundef %frag_off.1, i64 noundef %sub134) #10
  %26 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %26, i64 0, i32 1
  %27 = load i8*, i8** %data, align 8, !tbaa !43
  %28 = load i64, i64* %init_off, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %28
  call fastcc void @dtls1_write_message_header(%struct.ssl_st* noundef nonnull %s, i8* noundef %arrayidx) #10
  br label %if.end137

if.end137:                                        ; preds = %if.end133, %if.end112
  %29 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data139 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %29, i64 0, i32 1
  %30 = load i8*, i8** %data139, align 8, !tbaa !43
  %31 = load i64, i64* %init_off, align 8, !tbaa !33
  %arrayidx141 = getelementptr inbounds i8, i8* %30, i64 %31
  %call142 = call i32 @dtls1_write_bytes(%struct.ssl_st* noundef nonnull %s, i32 noundef %type, i8* noundef %arrayidx141, i64 noundef %len.1, i64* noundef nonnull %written) #8
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.else165

if.then145:                                       ; preds = %if.end137
  %tobool146.not = icmp eq i32 %retry.0409, 0
  br i1 %tobool146.not, label %cleanup270, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %if.then145
  %call148 = call %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef nonnull %s) #8
  %call149 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call148, i32 noundef 43, i64 noundef 0, i8* noundef null) #8
  %cmp150 = icmp sgt i64 %call149, 0
  br i1 %cmp150, label %if.then152, label %cleanup270

if.then152:                                       ; preds = %land.lhs.true147
  %call153 = call i64 @SSL_get_options(%struct.ssl_st* noundef nonnull %s) #8
  %and154 = and i64 %call153, 4096
  %tobool155.not = icmp eq i64 %and154, 0
  br i1 %tobool155.not, label %if.then156, label %cleanup270

if.then156:                                       ; preds = %if.then152
  %call157 = call i32 @dtls1_query_mtu(%struct.ssl_st* noundef nonnull %s) #8
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %cleanup270, label %if.end269

if.else165:                                       ; preds = %if.end137
  %32 = load i64, i64* %written, align 8, !tbaa !45
  %cmp166 = icmp eq i64 %len.1, %32
  br i1 %cmp166, label %if.end171, label %cleanup270

if.end171:                                        ; preds = %if.else165
  br i1 %cmp5, label %land.lhs.true174, label %if.end245

land.lhs.true174:                                 ; preds = %if.end171
  %33 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %retransmitting = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %33, i64 0, i32 15
  %34 = load i32, i32* %retransmitting, align 4, !tbaa !46
  %tobool176.not = icmp eq i32 %34, 0
  br i1 %tobool176.not, label %if.then177, label %if.end245

if.then177:                                       ; preds = %land.lhs.true174
  %35 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data179 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %35, i64 0, i32 1
  %36 = load i8*, i8** %data179, align 8, !tbaa !43
  %37 = load i64, i64* %init_off, align 8, !tbaa !33
  %arrayidx181 = getelementptr inbounds i8, i8* %36, i64 %37
  %cmp184 = icmp eq i64 %frag_off.1, 0
  br i1 %cmp184, label %land.lhs.true186, label %if.else235

land.lhs.true186:                                 ; preds = %if.then177
  %38 = load i32, i32* %version, align 8, !tbaa !47
  %cmp187.not = icmp eq i32 %38, 256
  br i1 %cmp187.not, label %if.else235, label %if.then189

if.then189:                                       ; preds = %land.lhs.true186
  %type190 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %33, i64 0, i32 10, i32 0
  %39 = load i8, i8* %type190, align 8, !tbaa !48
  %incdec.ptr = getelementptr inbounds i8, i8* %arrayidx181, i64 1
  store i8 %39, i8* %arrayidx181, align 1, !tbaa !49
  %msg_len191 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %33, i64 0, i32 10, i32 1
  %40 = load i64, i64* %msg_len191, align 8, !tbaa !50
  %shr = lshr i64 %40, 16
  %conv193 = trunc i64 %shr to i8
  store i8 %conv193, i8* %incdec.ptr, align 1, !tbaa !49
  %41 = load i64, i64* %msg_len191, align 8, !tbaa !50
  %shr196 = lshr i64 %41, 8
  %conv198 = trunc i64 %shr196 to i8
  %arrayidx199 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 %conv198, i8* %arrayidx199, align 1, !tbaa !49
  %42 = load i64, i64* %msg_len191, align 8, !tbaa !50
  %conv202 = trunc i64 %42 to i8
  %arrayidx203 = getelementptr inbounds i8, i8* %incdec.ptr, i64 2
  store i8 %conv202, i8* %arrayidx203, align 1, !tbaa !49
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr, i64 3
  %seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %33, i64 0, i32 10, i32 2
  %43 = load i16, i16* %seq, align 8, !tbaa !51
  %44 = lshr i16 %43, 8
  %conv207 = trunc i16 %44 to i8
  store i8 %conv207, i8* %add.ptr, align 1, !tbaa !49
  %45 = load i16, i16* %seq, align 8, !tbaa !51
  %conv212 = trunc i16 %45 to i8
  %arrayidx213 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 %conv212, i8* %arrayidx213, align 1, !tbaa !49
  %add.ptr214 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  store i8 0, i8* %add.ptr214, align 1, !tbaa !49
  %arrayidx216 = getelementptr inbounds i8, i8* %add.ptr214, i64 1
  store i8 0, i8* %arrayidx216, align 1, !tbaa !49
  %arrayidx217 = getelementptr inbounds i8, i8* %add.ptr214, i64 2
  store i8 0, i8* %arrayidx217, align 1, !tbaa !49
  %add.ptr218 = getelementptr inbounds i8, i8* %add.ptr214, i64 3
  %46 = load i64, i64* %msg_len191, align 8, !tbaa !50
  %shr220 = lshr i64 %46, 16
  %conv222 = trunc i64 %shr220 to i8
  store i8 %conv222, i8* %add.ptr218, align 1, !tbaa !49
  %47 = load i64, i64* %msg_len191, align 8, !tbaa !50
  %shr225 = lshr i64 %47, 8
  %conv227 = trunc i64 %shr225 to i8
  %arrayidx228 = getelementptr inbounds i8, i8* %add.ptr218, i64 1
  store i8 %conv227, i8* %arrayidx228, align 1, !tbaa !49
  %48 = load i64, i64* %msg_len191, align 8, !tbaa !50
  %conv231 = trunc i64 %48 to i8
  %arrayidx232 = getelementptr inbounds i8, i8* %add.ptr218, i64 2
  store i8 %conv231, i8* %arrayidx232, align 1, !tbaa !49
  %add.ptr233 = getelementptr inbounds i8, i8* %add.ptr218, i64 3
  %add.ptr234 = getelementptr inbounds i8, i8* %add.ptr233, i64 -12
  %49 = load i64, i64* %written, align 8, !tbaa !45
  br label %if.end238

if.else235:                                       ; preds = %land.lhs.true186, %if.then177
  %add.ptr236 = getelementptr inbounds i8, i8* %arrayidx181, i64 12
  %sub237 = add i64 %len.1, -12
  br label %if.end238

if.end238:                                        ; preds = %if.else235, %if.then189
  %p.0 = phi i8* [ %add.ptr234, %if.then189 ], [ %add.ptr236, %if.else235 ]
  %xlen.0 = phi i64 [ %49, %if.then189 ], [ %sub237, %if.else235 ]
  %call239 = call i32 @ssl3_finish_mac(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %p.0, i64 noundef %xlen.0) #8
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %cleanup270, label %if.end238.if.end245_crit_edge

if.end238.if.end245_crit_edge:                    ; preds = %if.end238
  %.pre420 = load i64, i64* %written, align 8, !tbaa !45
  br label %if.end245

if.end245:                                        ; preds = %if.end238.if.end245_crit_edge, %land.lhs.true174, %if.end171
  %50 = phi i64 [ %.pre420, %if.end238.if.end245_crit_edge ], [ %len.1, %land.lhs.true174 ], [ %len.1, %if.end171 ]
  %51 = load i64, i64* %init_num45, align 8, !tbaa !34
  %cmp247 = icmp eq i64 %51, %50
  br i1 %cmp247, label %if.then249, label %if.end262

if.then249:                                       ; preds = %if.end245
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %52 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !52
  %tobool250.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %52, null
  br i1 %tobool250.not, label %if.end259, label %if.then251

if.then251:                                       ; preds = %if.then249
  %53 = load i32, i32* %version, align 8, !tbaa !47
  %54 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data255 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %54, i64 0, i32 1
  %55 = load i8*, i8** %data255, align 8, !tbaa !43
  %56 = load i64, i64* %init_off, align 8, !tbaa !33
  %add258 = add i64 %56, %50
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %57 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !53
  call void %52(i32 noundef 1, i32 noundef %53, i32 noundef %type, i8* noundef %55, i64 noundef %add258, %struct.ssl_st* noundef nonnull %s, i8* noundef %57) #8
  br label %if.end259

if.end259:                                        ; preds = %if.then251, %if.then249
  %58 = bitcast i64* %init_num45 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %58, align 8, !tbaa !45
  br label %cleanup270

if.end262:                                        ; preds = %if.end245
  %59 = load i64, i64* %init_off, align 8, !tbaa !33
  %add264 = add i64 %59, %50
  store i64 %add264, i64* %init_off, align 8, !tbaa !33
  %sub266 = sub i64 %51, %50
  store i64 %sub266, i64* %init_num45, align 8, !tbaa !34
  %sub267 = add i64 %50, -12
  store i64 %sub267, i64* %written, align 8, !tbaa !45
  %add268 = add i64 %sub267, %frag_off.1
  call fastcc void @dtls1_fix_message_header(%struct.ssl_st* noundef nonnull %s, i64 noundef %add268, i64 noundef 0) #10
  br label %if.end269

if.end269:                                        ; preds = %if.then156, %if.end262
  %retry.1 = phi i32 [ %retry.0409, %if.end262 ], [ 0, %if.then156 ]
  %frag_off.2 = phi i64 [ %add268, %if.end262 ], [ %frag_off.1, %if.then156 ]
  %60 = load i64, i64* %init_num45, align 8, !tbaa !34
  %cmp46.not = icmp eq i64 %60, 0
  br i1 %cmp46.not, label %cleanup270, label %while.body, !llvm.loop !54

cleanup270:                                       ; preds = %if.end238, %if.then57, %if.end98, %if.then129, %if.then156, %if.then152, %land.lhs.true147, %if.then145, %if.else165, %if.end269, %if.end44, %if.then6, %if.end, %entry, %if.end259, %if.then96
  %retval.4 = phi i32 [ %conv93.le, %if.then96 ], [ 1, %if.end259 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.then6 ], [ 0, %if.end44 ], [ -1, %if.end238 ], [ -1, %if.then57 ], [ -1, %if.end98 ], [ -1, %if.then129 ], [ -1, %if.then156 ], [ -1, %if.then152 ], [ -1, %land.lhs.true147 ], [ -1, %if.then145 ], [ -1, %if.else165 ], [ 0, %if.end269 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @dtls1_query_mtu(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i64 @dtls1_min_mtu(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_block_size(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @dtls1_fix_message_header(%struct.ssl_st* nocapture noundef readonly %s, i64 noundef %frag_off, i64 noundef %frag_len) unnamed_addr #3 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %frag_off1 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 3
  store i64 %frag_off, i64* %frag_off1, align 8, !tbaa !56
  %frag_len2 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 4
  store i64 %frag_len, i64* %frag_len2, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @dtls1_write_message_header(%struct.ssl_st* nocapture noundef readonly %s, i8* nocapture noundef writeonly %p) unnamed_addr #3 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 0
  %1 = load i8, i8* %type, align 8, !tbaa !48
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i64 1
  store i8 %1, i8* %p, align 1, !tbaa !49
  %msg_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 1
  %2 = load i64, i64* %msg_len, align 8, !tbaa !50
  %shr = lshr i64 %2, 16
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %incdec.ptr, align 1, !tbaa !49
  %3 = load i64, i64* %msg_len, align 8, !tbaa !50
  %shr2 = lshr i64 %3, 8
  %conv4 = trunc i64 %shr2 to i8
  %arrayidx5 = getelementptr inbounds i8, i8* %p, i64 2
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !49
  %4 = load i64, i64* %msg_len, align 8, !tbaa !50
  %conv8 = trunc i64 %4 to i8
  %arrayidx9 = getelementptr inbounds i8, i8* %p, i64 3
  store i8 %conv8, i8* %arrayidx9, align 1, !tbaa !49
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 4
  %seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 2
  %5 = load i16, i16* %seq, align 8, !tbaa !51
  %6 = lshr i16 %5, 8
  %conv13 = trunc i16 %6 to i8
  store i8 %conv13, i8* %add.ptr, align 1, !tbaa !49
  %7 = load i16, i16* %seq, align 8, !tbaa !51
  %conv18 = trunc i16 %7 to i8
  %arrayidx19 = getelementptr inbounds i8, i8* %p, i64 5
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !49
  %add.ptr20 = getelementptr inbounds i8, i8* %p, i64 6
  %frag_off = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 3
  %8 = load i64, i64* %frag_off, align 8, !tbaa !56
  %shr21 = lshr i64 %8, 16
  %conv23 = trunc i64 %shr21 to i8
  store i8 %conv23, i8* %add.ptr20, align 1, !tbaa !49
  %9 = load i64, i64* %frag_off, align 8, !tbaa !56
  %shr26 = lshr i64 %9, 8
  %conv28 = trunc i64 %shr26 to i8
  %arrayidx29 = getelementptr inbounds i8, i8* %p, i64 7
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !49
  %10 = load i64, i64* %frag_off, align 8, !tbaa !56
  %conv32 = trunc i64 %10 to i8
  %arrayidx33 = getelementptr inbounds i8, i8* %p, i64 8
  store i8 %conv32, i8* %arrayidx33, align 1, !tbaa !49
  %add.ptr34 = getelementptr inbounds i8, i8* %p, i64 9
  %frag_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 4
  %11 = load i64, i64* %frag_len, align 8, !tbaa !57
  %shr35 = lshr i64 %11, 16
  %conv37 = trunc i64 %shr35 to i8
  store i8 %conv37, i8* %add.ptr34, align 1, !tbaa !49
  %12 = load i64, i64* %frag_len, align 8, !tbaa !57
  %shr40 = lshr i64 %12, 8
  %conv42 = trunc i64 %shr40 to i8
  %arrayidx43 = getelementptr inbounds i8, i8* %p, i64 10
  store i8 %conv42, i8* %arrayidx43, align 1, !tbaa !49
  %13 = load i64, i64* %frag_len, align 8, !tbaa !57
  %conv46 = trunc i64 %13 to i8
  %arrayidx47 = getelementptr inbounds i8, i8* %p, i64 11
  store i8 %conv46, i8* %arrayidx47, align 1, !tbaa !49
  ret void
}

declare i32 @dtls1_write_bytes(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare %struct.bio_st* @SSL_get_wbio(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i64 @SSL_get_options(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @ssl3_finish_mac(%struct.ssl_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_get_message(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %mt) local_unnamed_addr #0 {
entry:
  %tmplen = alloca i64, align 8
  %errtype = alloca i32, align 4
  %0 = bitcast i64* %tmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i32* %errtype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 11, i32 0
  %call = tail call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 88) #8
  br label %again

again:                                            ; preds = %if.then, %entry
  %call1 = call fastcc i32 @dtls_get_reassembled_message(%struct.ssl_st* noundef %s, i32* noundef nonnull %errtype, i64* noundef nonnull %tmplen) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %again
  %4 = load i32, i32* %errtype, align 4, !tbaa !58
  %5 = add i32 %4, 3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %again, label %cleanup

if.end4:                                          ; preds = %again
  %message_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  %7 = load i32, i32* %message_type, align 8, !tbaa !59
  store i32 %7, i32* %mt, align 4, !tbaa !58
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  %9 = load i8*, i8** %data, align 8, !tbaa !43
  %cmp5 = icmp eq i32 %7, 257
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %10 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !52
  %tobool7.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %10, null
  br i1 %tobool7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then6
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !47
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %12 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !53
  tail call void %10(i32 noundef 0, i32 noundef %11, i32 noundef 20, i8* noundef %9, i64 noundef 1, %struct.ssl_st* noundef nonnull %s, i8* noundef %12) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %msg_len12 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 11, i32 1
  %13 = load i64, i64* %msg_len12, align 8, !tbaa !50
  %14 = load i8, i8* %3, align 8, !tbaa !48
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %14, i8* %9, align 1, !tbaa !49
  %shr = lshr i64 %13, 16
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %incdec.ptr, align 1, !tbaa !49
  %shr13 = lshr i64 %13, 8
  %conv15 = trunc i64 %shr13 to i8
  %arrayidx16 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %conv15, i8* %arrayidx16, align 1, !tbaa !49
  %conv18 = trunc i64 %13 to i8
  %arrayidx19 = getelementptr inbounds i8, i8* %9, i64 3
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !49
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 4
  %seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 11, i32 2
  %15 = load i16, i16* %seq, align 8, !tbaa !51
  %16 = lshr i16 %15, 8
  %conv23 = trunc i16 %16 to i8
  store i8 %conv23, i8* %add.ptr, align 1, !tbaa !49
  %17 = load i16, i16* %seq, align 8, !tbaa !51
  %conv28 = trunc i16 %17 to i8
  %arrayidx29 = getelementptr inbounds i8, i8* %9, i64 5
  store i8 %conv28, i8* %arrayidx29, align 1, !tbaa !49
  %add.ptr30 = getelementptr inbounds i8, i8* %9, i64 6
  store i8 0, i8* %add.ptr30, align 1, !tbaa !49
  %arrayidx32 = getelementptr inbounds i8, i8* %9, i64 7
  store i8 0, i8* %arrayidx32, align 1, !tbaa !49
  %arrayidx33 = getelementptr inbounds i8, i8* %9, i64 8
  store i8 0, i8* %arrayidx33, align 1, !tbaa !49
  %add.ptr34 = getelementptr inbounds i8, i8* %9, i64 9
  store i8 %conv, i8* %add.ptr34, align 1, !tbaa !49
  %arrayidx42 = getelementptr inbounds i8, i8* %9, i64 10
  store i8 %conv15, i8* %arrayidx42, align 1, !tbaa !49
  %arrayidx45 = getelementptr inbounds i8, i8* %9, i64 11
  store i8 %conv18, i8* %arrayidx45, align 1, !tbaa !49
  %call47 = tail call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 88) #8
  %18 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %18, i64 0, i32 5
  %19 = load i16, i16* %handshake_read_seq, align 8, !tbaa !60
  %inc = add i16 %19, 1
  store i16 %inc, i16* %handshake_read_seq, align 8, !tbaa !60
  %20 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data50 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %20, i64 0, i32 1
  %21 = load i8*, i8** %data50, align 8, !tbaa !43
  %add.ptr51 = getelementptr inbounds i8, i8* %21, i64 12
  %init_msg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  store i8* %add.ptr51, i8** %init_msg, align 8, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then6, %if.then8, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 1, %if.then8 ], [ 1, %if.then6 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dtls_get_reassembled_message(%struct.ssl_st* noundef %s, i32* nocapture noundef writeonly %errtype, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %wire = alloca [12 x i8], align 1
  %frag_len = alloca i64, align 8
  %recvd_type = alloca i32, align 4
  %msg_hdr = alloca %struct.hm_header_st, align 8
  %readbytes = alloca i64, align 8
  %0 = getelementptr inbounds [12 x i8], [12 x i8]* %wire, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #9
  %1 = bitcast i64* %frag_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast i32* %recvd_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %3 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %3) #9
  %4 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store i32 0, i32* %errtype, align 4, !tbaa !58
  %call192 = call fastcc i32 @dtls1_retrieve_buffered_fragment(%struct.ssl_st* noundef %s, i64* noundef nonnull %frag_len) #10
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %cleanup112, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %msg_len = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 1
  %frag_off29 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 3
  %frag_len30 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 4
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %seq = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 2
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %hand_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 5
  %arrayidx63 = getelementptr inbounds [12 x i8], [12 x i8]* %wire, i64 0, i64 1
  %arrayidx68 = getelementptr inbounds [12 x i8], [12 x i8]* %wire, i64 0, i64 2
  %arrayidx73 = getelementptr inbounds [12 x i8], [12 x i8]* %wire, i64 0, i64 3
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %init_num83 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %if.end82
  %call194 = phi i32 [ %call192, %if.end.lr.ph ], [ %call, %if.end82 ]
  %cmp1.not = icmp eq i32 %call194, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load i64, i64* %frag_len, align 8, !tbaa !45
  store i64 %5, i64* %init_num83, align 8, !tbaa !34
  store i64 %5, i64* %len, align 8, !tbaa !45
  br label %cleanup112

if.end3:                                          ; preds = %if.end
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !62
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %6, i64 0, i32 14
  %7 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !63
  %call4 = call i32 %7(%struct.ssl_st* noundef %s, i32 noundef 22, i32* noundef nonnull %recvd_type, i8* noundef nonnull %0, i64 noundef 12, i32 noundef 0, i64* noundef nonnull %readbytes) #8
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 3, i32* %rwstate, align 8, !tbaa !38
  store i64 0, i64* %len, align 8, !tbaa !45
  br label %cleanup112

if.end7:                                          ; preds = %if.end3
  %8 = load i32, i32* %recvd_type, align 4, !tbaa !58
  %cmp8 = icmp eq i32 %8, 20
  br i1 %cmp8, label %if.then9, label %if.end23

if.then9:                                         ; preds = %if.end7
  %9 = load i8, i8* %0, align 1, !tbaa !49
  %cmp10.not = icmp eq i8 %9, 1
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 789, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dtls_get_reassembled_message, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 103, i8* noundef null) #8
  br label %f_err

if.end13:                                         ; preds = %if.then9
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %10 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %10, i64 0, i32 1
  %11 = load i8*, i8** %data, align 8, !tbaa !43
  %12 = load i64, i64* %readbytes, align 8, !tbaa !45
  %call15 = call i8* @memcpy(i8* noundef %11, i8* noundef nonnull %0, i64 noundef %12) #8
  %13 = load i64, i64* %readbytes, align 8, !tbaa !45
  %sub = add i64 %13, -1
  store i64 %sub, i64* %init_num83, align 8, !tbaa !34
  %14 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data18 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %14, i64 0, i32 1
  %15 = load i8*, i8** %data18, align 8, !tbaa !43
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %init_msg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 14
  store i8* %add.ptr, i8** %init_msg, align 8, !tbaa !61
  %message_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  store i32 257, i32* %message_type, align 8, !tbaa !59
  %message_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  store i64 %sub, i64* %message_size, align 8, !tbaa !65
  store i64 %sub, i64* %len, align 8, !tbaa !45
  br label %cleanup112

if.end23:                                         ; preds = %if.end7
  %16 = load i64, i64* %readbytes, align 8, !tbaa !45
  %cmp24.not = icmp eq i64 %16, 12
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 804, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dtls_get_reassembled_message, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #8
  br label %f_err

if.end27:                                         ; preds = %if.end23
  call void @dtls1_get_message_header(i8* noundef nonnull %0, %struct.hm_header_st* noundef nonnull %msg_hdr) #10
  %17 = load i64, i64* %msg_len, align 8, !tbaa !50
  %18 = load i64, i64* %frag_off29, align 8, !tbaa !56
  %19 = load i64, i64* %frag_len30, align 8, !tbaa !57
  store i64 %19, i64* %frag_len, align 8, !tbaa !45
  %call31 = call i64 @RECORD_LAYER_get_rrec_length(%struct.record_layer_st* noundef nonnull %rlayer) #8
  %cmp32 = icmp ugt i64 %19, %call31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end27
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 820, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dtls_get_reassembled_message, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 271, i8* noundef null) #8
  br label %f_err

if.end35:                                         ; preds = %if.end27
  %20 = load i16, i16* %seq, align 8, !tbaa !51
  %21 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %21, i64 0, i32 5
  %22 = load i16, i16* %handshake_read_seq, align 8, !tbaa !60
  %cmp38.not = icmp eq i16 %20, %22
  br i1 %cmp38.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end35
  %call41 = call fastcc i32 @dtls1_process_out_of_seq_message(%struct.ssl_st* noundef nonnull %s, %struct.hm_header_st* noundef nonnull %msg_hdr) #10
  store i32 %call41, i32* %errtype, align 4, !tbaa !58
  br label %cleanup112

if.end42:                                         ; preds = %if.end35
  %tobool.not = icmp ne i64 %19, 0
  %cmp43 = icmp ult i64 %19, %17
  %or.cond175 = select i1 %tobool.not, i1 %cmp43, i1 false
  br i1 %or.cond175, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end42
  %call46 = call fastcc i32 @dtls1_reassemble_fragment(%struct.ssl_st* noundef nonnull %s, %struct.hm_header_st* noundef nonnull %msg_hdr) #10
  store i32 %call46, i32* %errtype, align 4, !tbaa !58
  br label %cleanup112

if.end47:                                         ; preds = %if.end42
  %23 = load i32, i32* %server, align 8, !tbaa !66
  %tobool48.not = icmp eq i32 %23, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %if.end84

land.lhs.true49:                                  ; preds = %if.end47
  %frag_off51 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %21, i64 0, i32 11, i32 3
  %24 = load i64, i64* %frag_off51, align 8, !tbaa !67
  %cmp52 = icmp eq i64 %24, 0
  br i1 %cmp52, label %land.lhs.true54, label %if.end84

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %25 = load i32, i32* %hand_state, align 4, !tbaa !68
  %cmp55 = icmp ne i32 %25, 1
  %26 = load i8, i8* %0, align 1
  %cmp60 = icmp eq i8 %26, 0
  %or.cond = select i1 %cmp55, i1 %cmp60, i1 false
  br i1 %or.cond, label %if.then62, label %if.end84

if.then62:                                        ; preds = %land.lhs.true54
  %27 = load i8, i8* %arrayidx63, align 1, !tbaa !49
  %cmp65 = icmp eq i8 %27, 0
  %28 = load i8, i8* %arrayidx68, align 1
  %cmp70 = icmp eq i8 %28, 0
  %or.cond121 = select i1 %cmp65, i1 %cmp70, i1 false
  %29 = load i8, i8* %arrayidx73, align 1
  %cmp75 = icmp eq i8 %29, 0
  %or.cond122 = select i1 %or.cond121, i1 %cmp75, i1 false
  br i1 %or.cond122, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.then62
  %30 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !52
  %tobool78.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %30, null
  br i1 %tobool78.not, label %if.end82, label %if.then79

if.then79:                                        ; preds = %if.then77
  %31 = load i32, i32* %version, align 8, !tbaa !47
  %32 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !53
  call void %30(i32 noundef 0, i32 noundef %31, i32 noundef 22, i8* noundef nonnull %0, i64 noundef 12, %struct.ssl_st* noundef nonnull %s, i8* noundef %32) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then77
  store i64 0, i64* %init_num83, align 8, !tbaa !34
  %call = call fastcc i32 @dtls1_retrieve_buffered_fragment(%struct.ssl_st* noundef nonnull %s, i64* noundef nonnull %frag_len) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup112, label %if.end

if.else:                                          ; preds = %if.then62
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 859, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dtls_get_reassembled_message, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #8
  br label %f_err

if.end84:                                         ; preds = %land.lhs.true54, %land.lhs.true49, %if.end47
  %call85 = call fastcc i32 @dtls1_preprocess_fragment(%struct.ssl_st* noundef nonnull %s, %struct.hm_header_st* noundef nonnull %msg_hdr) #10
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %f_err, label %if.end88

if.end88:                                         ; preds = %if.end84
  %cmp89.not = icmp eq i64 %19, 0
  br i1 %cmp89.not, label %if.else104, label %if.then91

if.then91:                                        ; preds = %if.end88
  %init_buf92 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %33 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf92, align 8, !tbaa !42
  %data93 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %33, i64 0, i32 1
  %34 = load i8*, i8** %data93, align 8, !tbaa !43
  %add.ptr94 = getelementptr inbounds i8, i8* %34, i64 12
  %35 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !62
  %ssl_read_bytes96 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %35, i64 0, i32 14
  %36 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes96, align 8, !tbaa !63
  %arrayidx97 = getelementptr inbounds i8, i8* %add.ptr94, i64 %18
  %call98 = call i32 %36(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef null, i8* noundef nonnull %arrayidx97, i64 noundef %19, i32 noundef 0, i64* noundef nonnull %readbytes) #8
  %cmp99 = icmp slt i32 %call98, 1
  br i1 %cmp99, label %if.then101, label %if.then91.if.end105_crit_edge

if.then91.if.end105_crit_edge:                    ; preds = %if.then91
  %.pre = load i64, i64* %readbytes, align 8, !tbaa !45
  br label %if.end105

if.then101:                                       ; preds = %if.then91
  %rwstate102 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 3, i32* %rwstate102, align 8, !tbaa !38
  store i64 0, i64* %len, align 8, !tbaa !45
  br label %cleanup112

if.else104:                                       ; preds = %if.end88
  store i64 0, i64* %readbytes, align 8, !tbaa !45
  br label %if.end105

if.end105:                                        ; preds = %if.then91.if.end105_crit_edge, %if.else104
  %37 = phi i64 [ %.pre, %if.then91.if.end105_crit_edge ], [ 0, %if.else104 ]
  %cmp106.not = icmp eq i64 %37, %19
  br i1 %cmp106.not, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end105
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 894, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dtls_get_reassembled_message, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 271, i8* noundef null) #8
  br label %f_err

if.end109:                                        ; preds = %if.end105
  store i64 %19, i64* %init_num83, align 8, !tbaa !34
  store i64 %19, i64* %len, align 8, !tbaa !45
  br label %cleanup112

f_err:                                            ; preds = %if.end84, %if.then108, %if.else, %if.then34, %if.then26, %if.then12
  store i64 0, i64* %init_num83, align 8, !tbaa !34
  store i64 0, i64* %len, align 8, !tbaa !45
  br label %cleanup112

cleanup112:                                       ; preds = %if.end82, %entry, %if.then101, %f_err, %if.end109, %if.then45, %if.then40, %if.end13, %if.then6, %if.then2
  %retval.1 = phi i32 [ 1, %if.then2 ], [ 0, %if.then6 ], [ 0, %f_err ], [ 1, %if.end13 ], [ 0, %if.then40 ], [ 0, %if.then45 ], [ 1, %if.end109 ], [ 0, %if.then101 ], [ 0, %entry ], [ 0, %if.end82 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #9
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_get_message_body(%struct.ssl_st* noundef %s, i64* nocapture noundef writeonly %len) local_unnamed_addr #0 {
entry:
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %0, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8, !tbaa !43
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %2 = load i64, i64* %init_num, align 8, !tbaa !34
  %add = add i64 %2, 12
  %message_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  %3 = load i32, i32* %message_type, align 8, !tbaa !59
  %cmp = icmp eq i32 %3, 257
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %1, align 1, !tbaa !49
  %cmp3 = icmp eq i8 %4, 20
  br i1 %cmp3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @ssl3_take_mac(%struct.ssl_st* noundef nonnull %s) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %5 = load i32, i32* %version, align 8, !tbaa !47
  %cmp7 = icmp eq i32 %5, 256
  %spec.select.idx = select i1 %cmp7, i64 12, i64 0
  %spec.select = getelementptr i8, i8* %1, i64 %spec.select.idx
  %spec.select44 = select i1 %cmp7, i64 %2, i64 %add
  %call11 = tail call i32 @ssl3_finish_mac(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %spec.select, i64 noundef %spec.select44) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end6
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %6 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !52
  %tobool15.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %6, null
  br i1 %tobool15.not, label %end, label %if.then16

if.then16:                                        ; preds = %if.end14
  %7 = load i32, i32* %version, align 8, !tbaa !47
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data20 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  %9 = load i8*, i8** %data20, align 8, !tbaa !43
  %10 = load i64, i64* %init_num, align 8, !tbaa !34
  %add22 = add i64 %10, 12
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %11 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !53
  tail call void %6(i32 noundef 0, i32 noundef %7, i32 noundef 22, i8* noundef %9, i64 noundef %add22, %struct.ssl_st* noundef nonnull %s, i8* noundef %11) #8
  br label %end

end:                                              ; preds = %if.end14, %if.then16, %entry
  %12 = load i64, i64* %init_num, align 8, !tbaa !34
  store i64 %12, i64* %len, align 8, !tbaa !45
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true, %end
  %retval.0 = phi i32 [ 1, %end ], [ 0, %land.lhs.true ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

declare i32 @ssl3_take_mac(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @dtls_construct_change_cipher_spec(%struct.ssl_st* noundef %s, %struct.wpacket_st* noundef %pkt) local_unnamed_addr #0 {
entry:
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %0 = load i32, i32* %version, align 8, !tbaa !47
  %cmp = icmp eq i32 %0, 256
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %1 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %next_handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 4
  %2 = load i16, i16* %next_handshake_write_seq, align 2, !tbaa !69
  %inc = add i16 %2, 1
  store i16 %inc, i16* %next_handshake_write_seq, align 2, !tbaa !69
  %handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 3
  %3 = load i16, i16* %handshake_write_seq, align 4, !tbaa !70
  %conv = zext i16 %3 to i32
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv, i64 noundef 2) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 928, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.dtls_construct_change_cipher_spec, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %return

return:                                           ; preds = %entry, %if.then, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_read_failed(%struct.ssl_st* noundef %s, i32 noundef %code) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %code, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 979, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dtls1_read_failed, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @dtls1_is_timer_expired(%struct.ssl_st* noundef %s) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call i32 @ossl_statem_in_error(%struct.ssl_st* noundef %s) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef %s) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %call8 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %s) #8
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call8, i32 noundef 1) #8
  br label %return

if.end9:                                          ; preds = %if.end4
  %call10 = tail call i32 @dtls1_handle_timeout(%struct.ssl_st* noundef %s) #8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end9, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call10, %if.end9 ], [ %code, %if.then7 ], [ %code, %lor.lhs.false ], [ %code, %if.end ]
  ret i32 %retval.0
}

declare i32 @dtls1_is_timer_expired(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @ossl_statem_in_error(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @dtls1_handle_timeout(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @dtls1_get_queue_priority(i16 noundef zeroext %seq, i32 noundef %is_ccs) local_unnamed_addr #5 {
entry:
  %conv = zext i16 %seq to i32
  %mul = shl nuw nsw i32 %conv, 1
  %sub = sub nsw i32 %mul, %is_ccs
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_retransmit_buffered_messages(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %iter = alloca %struct.pitem_st*, align 8
  %found = alloca i32, align 4
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %sent_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 7
  %1 = load %struct.pqueue_st*, %struct.pqueue_st** %sent_messages, align 8, !tbaa !71
  %2 = bitcast %struct.pitem_st** %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %call = tail call %struct.pitem_st* @pqueue_iterator(%struct.pqueue_st* noundef %1) #8
  store %struct.pitem_st* %call, %struct.pitem_st** %iter, align 8, !tbaa !72
  %call1 = call %struct.pitem_st* @pqueue_next(%struct.pitem_st** noundef nonnull %iter) #8
  %cmp.not18 = icmp eq %struct.pitem_st* %call1, null
  br i1 %cmp.not18, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %item.019 = phi %struct.pitem_st* [ %call7, %for.inc ], [ %call1, %entry ]
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %item.019, i64 0, i32 1
  %4 = bitcast i8** %data to %struct.hm_fragment_st**
  %5 = load %struct.hm_fragment_st*, %struct.hm_fragment_st** %4, align 8, !tbaa !73
  %seq = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 2
  %6 = load i16, i16* %seq, align 8, !tbaa !75
  %is_ccs = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 5
  %7 = load i32, i32* %is_ccs, align 8, !tbaa !4
  %call3 = call i32 @dtls1_get_queue_priority(i16 noundef zeroext %6, i32 noundef %7) #10
  %conv = trunc i32 %call3 to i16
  %call4 = call i32 @dtls1_retransmit_message(%struct.ssl_st* noundef %s, i16 noundef zeroext %conv, i32* noundef nonnull %found) #10
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body
  %call7 = call %struct.pitem_st* @pqueue_next(%struct.pitem_st** noundef nonnull %iter) #8
  %cmp.not = icmp eq %struct.pitem_st* %call7, null
  br i1 %cmp.not, label %cleanup, label %for.body, !llvm.loop !76

cleanup:                                          ; preds = %for.body, %for.inc, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.inc ], [ -1, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  ret i32 %retval.0
}

declare %struct.pitem_st* @pqueue_iterator(%struct.pqueue_st* noundef) local_unnamed_addr #1

declare %struct.pitem_st* @pqueue_next(%struct.pitem_st** noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_retransmit_message(%struct.ssl_st* noundef %s, i16 noundef zeroext %seq, i32* nocapture noundef writeonly %found) local_unnamed_addr #0 {
entry:
  %seq64be = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #8
  %1 = lshr i16 %seq, 8
  %conv1 = trunc i16 %1 to i8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 6
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !49
  %conv2 = trunc i16 %seq to i8
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 7
  store i8 %conv2, i8* %arrayidx3, align 1, !tbaa !49
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %sent_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 7
  %3 = load %struct.pqueue_st*, %struct.pqueue_st** %sent_messages, align 8, !tbaa !71
  %call5 = call %struct.pitem_st* @pqueue_find(%struct.pqueue_st* noundef %3, i8* noundef nonnull %0) #8
  %cmp = icmp eq %struct.pitem_st* %call5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1125, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.dtls1_retransmit_message, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  store i32 0, i32* %found, align 4, !tbaa !58
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %found, align 4, !tbaa !58
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call5, i64 0, i32 1
  %4 = bitcast i8** %data to %struct.hm_fragment_st**
  %5 = load %struct.hm_fragment_st*, %struct.hm_fragment_st** %4, align 8, !tbaa !73
  %is_ccs = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 5
  %6 = load i32, i32* %is_ccs, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.not, i64 12, i64 1
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data9 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 1
  %8 = load i8*, i8** %data9, align 8, !tbaa !43
  %fragment = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 1
  %9 = load i8*, i8** %fragment, align 8, !tbaa !16
  %msg_len = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 1
  %10 = load i64, i64* %msg_len, align 8, !tbaa !77
  %add = add i64 %10, %.
  %call11 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %add) #8
  %11 = load i64, i64* %msg_len, align 8, !tbaa !77
  %add14 = add i64 %11, %.
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 %add14, i64* %init_num, align 8, !tbaa !34
  %type = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 0
  %12 = load i8, i8* %type, align 8, !tbaa !78
  %seq19 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 2
  %13 = load i16, i16* %seq19, align 8, !tbaa !75
  %frag_len = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 4
  %14 = load i64, i64* %frag_len, align 8, !tbaa !79
  call fastcc void @dtls1_set_message_header_int(%struct.ssl_st* noundef nonnull %s, i8 noundef zeroext %12, i64 noundef %11, i16 noundef zeroext %13, i64 noundef 0, i64 noundef %14) #10
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %15 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !37
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %16 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !36
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %17 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !80
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %18 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !81
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %19 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !82
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %19, i64 0, i32 1
  %20 = load i16, i16* %w_epoch, align 2, !tbaa !83
  %21 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %retransmitting = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %21, i64 0, i32 15
  store i32 1, i32* %retransmitting, align 4, !tbaa !46
  %enc_write_ctx27 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 6, i32 0
  %22 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx27, align 8, !tbaa !14
  store %struct.evp_cipher_ctx_st* %22, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !37
  %write_hash31 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 6, i32 1
  %23 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash31, align 8, !tbaa !15
  store %struct.evp_md_ctx_st* %23, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !36
  %compress35 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 6, i32 2
  %24 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress35, align 8, !tbaa !87
  store %struct.comp_ctx_st* %24, %struct.comp_ctx_st** %compress, align 8, !tbaa !80
  %session39 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 6, i32 3
  %25 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session39, align 8, !tbaa !88
  store %struct.ssl_session_st* %25, %struct.ssl_session_st** %session, align 8, !tbaa !81
  %epoch44 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %5, i64 0, i32 0, i32 6, i32 4
  %26 = load i16, i16* %epoch44, align 8, !tbaa !89
  call void @DTLS_RECORD_LAYER_set_saved_w_epoch(%struct.record_layer_st* noundef nonnull %rlayer, i16 noundef zeroext %26) #8
  %27 = load i32, i32* %is_ccs, align 8, !tbaa !4
  %tobool47.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool47.not, i32 22, i32 20
  %call48 = call i32 @dtls1_do_write(%struct.ssl_st* noundef nonnull %s, i32 noundef %cond) #10
  store %struct.evp_cipher_ctx_st* %15, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !37
  store %struct.evp_md_ctx_st* %16, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !36
  store %struct.comp_ctx_st* %17, %struct.comp_ctx_st** %compress, align 8, !tbaa !80
  store %struct.ssl_session_st* %18, %struct.ssl_session_st** %session, align 8, !tbaa !81
  call void @DTLS_RECORD_LAYER_set_saved_w_epoch(%struct.record_layer_st* noundef nonnull %rlayer, i16 noundef zeroext %20) #8
  %28 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %retransmitting60 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %28, i64 0, i32 15
  store i32 0, i32* %retransmitting60, align 4, !tbaa !46
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %29 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !40
  %call61 = call i64 @BIO_ctrl(%struct.bio_st* noundef %29, i32 noundef 11, i64 noundef 0, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call48, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_buffer_message(%struct.ssl_st* nocapture noundef readonly %s, i32 noundef %is_ccs) local_unnamed_addr #0 {
entry:
  %seq64be = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %init_off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 16
  %1 = load i64, i64* %init_off, align 8, !tbaa !33
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  %2 = load i64, i64* %init_num, align 8, !tbaa !34
  %call = tail call fastcc %struct.hm_fragment_st* @dtls1_hm_fragment_new(i64 noundef %2, i32 noundef 0) #10
  %cmp3 = icmp eq %struct.hm_fragment_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %fragment = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 1
  %3 = load i8*, i8** %fragment, align 8, !tbaa !16
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !43
  %6 = load i64, i64* %init_num, align 8, !tbaa !34
  %call8 = tail call i8* @memcpy(i8* noundef %3, i8* noundef %5, i64 noundef %6) #8
  %tobool.not = icmp eq i32 %is_ccs, 0
  %d122 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %7 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d122, align 8, !tbaa !18
  %msg_len24 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %7, i64 0, i32 10, i32 1
  %8 = load i64, i64* %msg_len24, align 8, !tbaa !35
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %9 = load i32, i32* %version, align 8, !tbaa !47
  %cmp10 = icmp eq i32 %9, 256
  %cond = select i1 %cmp10, i64 3, i64 1
  %add = add i64 %cond, %8
  %10 = load i64, i64* %init_num, align 8, !tbaa !34
  %conv15 = and i64 %10, 4294967295
  %cmp16 = icmp eq i64 %add, %conv15
  br i1 %cmp16, label %if.end35, label %if.then20

if.then20:                                        ; preds = %if.then9
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef nonnull %call) #10
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %add25 = add i64 %8, 12
  %11 = load i64, i64* %init_num, align 8, !tbaa !34
  %conv28 = and i64 %11, 4294967295
  %cmp29 = icmp eq i64 %add25, %conv28
  br i1 %cmp29, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.else
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef nonnull %call) #10
  br label %cleanup

if.end35:                                         ; preds = %if.else, %if.then9
  %msg_len39 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 1
  store i64 %8, i64* %msg_len39, align 8, !tbaa !77
  %seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %7, i64 0, i32 10, i32 2
  %12 = load i16, i16* %seq, align 8, !tbaa !90
  %seq43 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 2
  store i16 %12, i16* %seq43, align 8, !tbaa !75
  %type = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %7, i64 0, i32 10, i32 0
  %13 = load i8, i8* %type, align 8, !tbaa !91
  %type47 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 0
  store i8 %13, i8* %type47, align 8, !tbaa !78
  %frag_off = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 3
  store i64 0, i64* %frag_off, align 8, !tbaa !92
  %frag_len = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 4
  store i64 %8, i64* %frag_len, align 8, !tbaa !79
  %is_ccs54 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 5
  store i32 %is_ccs, i32* %is_ccs54, align 8, !tbaa !4
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %14 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !37
  %enc_write_ctx56 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 6, i32 0
  store %struct.evp_cipher_ctx_st* %14, %struct.evp_cipher_ctx_st** %enc_write_ctx56, align 8, !tbaa !14
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %15 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !36
  %write_hash59 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 6, i32 1
  store %struct.evp_md_ctx_st* %15, %struct.evp_md_ctx_st** %write_hash59, align 8, !tbaa !15
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %16 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !80
  %compress62 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 6, i32 2
  store %struct.comp_ctx_st* %16, %struct.comp_ctx_st** %compress62, align 8, !tbaa !87
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %17 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !81
  %session65 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 6, i32 3
  store %struct.ssl_session_st* %17, %struct.ssl_session_st** %session65, align 8, !tbaa !88
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %18 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !82
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %18, i64 0, i32 1
  %19 = load i16, i16* %w_epoch, align 2, !tbaa !83
  %epoch = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call, i64 0, i32 0, i32 6, i32 4
  store i16 %19, i16* %epoch, align 8, !tbaa !89
  %call68 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #8
  %20 = load i16, i16* %seq43, align 8, !tbaa !75
  %21 = load i32, i32* %is_ccs54, align 8, !tbaa !4
  %call73 = call i32 @dtls1_get_queue_priority(i16 noundef zeroext %20, i32 noundef %21) #10
  %22 = lshr i32 %call73, 8
  %conv74 = trunc i32 %22 to i8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 6
  store i8 %conv74, i8* %arrayidx, align 1, !tbaa !49
  %conv80 = trunc i32 %call73 to i8
  %arrayidx81 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 7
  store i8 %conv80, i8* %arrayidx81, align 1, !tbaa !49
  %call83 = call %struct.pitem_st* @pitem_new(i8* noundef nonnull %0, i8* noundef nonnull %type47) #8
  %cmp84 = icmp eq %struct.pitem_st* %call83, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end35
  call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef nonnull %call) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end35
  %d136 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %23 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d136, align 8, !tbaa !18
  %sent_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %23, i64 0, i32 7
  %24 = load %struct.pqueue_st*, %struct.pqueue_st** %sent_messages, align 8, !tbaa !71
  %call89 = call %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* noundef %24, %struct.pitem_st* noundef nonnull %call83) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end87, %if.then86, %if.then33, %if.then20
  %retval.0 = phi i32 [ 0, %if.then86 ], [ 1, %if.end87 ], [ 0, %if.then20 ], [ 0, %if.then33 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.hm_fragment_st* @dtls1_hm_fragment_new(i64 noundef %frag_len, i32 noundef %reassembly) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 104, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #8
  %0 = bitcast i8* %call to %struct.hm_fragment_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.dtls1_hm_fragment_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %frag_len, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %frag_len, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 68) #8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then1
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.dtls1_hm_fragment_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 70) #8
  br label %cleanup

if.end6:                                          ; preds = %if.then1, %if.end
  %buf.0 = phi i8* [ %call2, %if.then1 ], [ null, %if.end ]
  %fragment = getelementptr inbounds i8, i8* %call, i64 88
  %1 = bitcast i8* %fragment to i8**
  store i8* %buf.0, i8** %1, align 8, !tbaa !16
  %tobool7.not = icmp eq i32 %reassembly, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end6
  %add = add i64 %frag_len, 7
  %div = lshr i64 %add, 3
  %call9 = tail call i8* @CRYPTO_zalloc(i64 noundef %div, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 80) #8
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.dtls1_hm_fragment_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #8
  br label %cleanup

if.end13:                                         ; preds = %if.then8, %if.end6
  %bitmask.0 = phi i8* [ %call9, %if.then8 ], [ null, %if.end6 ]
  %reassembly14 = getelementptr inbounds i8, i8* %call, i64 96
  %2 = bitcast i8* %reassembly14 to i8**
  store i8* %bitmask.0, i8** %2, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then4, %if.then
  %retval.0 = phi %struct.hm_fragment_st* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then11 ], [ %0, %if.end13 ]
  ret %struct.hm_fragment_st* %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.pitem_st* @pitem_new(i8* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* noundef, %struct.pitem_st* noundef) local_unnamed_addr #1

declare %struct.pitem_st* @pqueue_find(%struct.pqueue_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @dtls1_set_message_header_int(%struct.ssl_st* nocapture noundef readonly %s, i8 noundef zeroext %mt, i64 noundef %len, i16 noundef zeroext %seq_num, i64 noundef %frag_off, i64 noundef %frag_len) unnamed_addr #3 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 0
  store i8 %mt, i8* %type, align 8, !tbaa !48
  %msg_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 1
  store i64 %len, i64* %msg_len, align 8, !tbaa !50
  %seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 2
  store i16 %seq_num, i16* %seq, align 8, !tbaa !51
  %frag_off1 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 3
  store i64 %frag_off, i64* %frag_off1, align 8, !tbaa !56
  %frag_len2 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 10, i32 4
  store i64 %frag_len, i64* %frag_len2, align 8, !tbaa !57
  ret void
}

declare void @DTLS_RECORD_LAYER_set_saved_w_epoch(%struct.record_layer_st* noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @dtls1_set_message_header(%struct.ssl_st* nocapture noundef readonly %s, i8 noundef zeroext %mt, i64 noundef %len, i64 noundef %frag_off, i64 noundef %frag_len) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq i64 %frag_off, 0
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %handshake_write_seq5.phi.trans.insert = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 3
  %.pre11 = load i16, i16* %handshake_write_seq5.phi.trans.insert, align 4, !tbaa !70
  br label %if.end

if.then:                                          ; preds = %entry
  %next_handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 4
  %1 = load i16, i16* %next_handshake_write_seq, align 2, !tbaa !69
  %handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 3
  store i16 %1, i16* %handshake_write_seq, align 4, !tbaa !70
  %inc = add i16 %1, 1
  store i16 %inc, i16* %next_handshake_write_seq, align 2, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i16 [ %.pre11, %entry.if.end_crit_edge ], [ %1, %if.then ]
  tail call fastcc void @dtls1_set_message_header_int(%struct.ssl_st* noundef nonnull %s, i8 noundef zeroext %mt, i64 noundef %len, i16 noundef zeroext %2, i64 noundef %frag_off, i64 noundef %frag_len) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @dtls1_get_message_header(i8* nocapture noundef readonly %data, %struct.hm_header_st* noundef %msg_hdr) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 88) #8
  %incdec.ptr = getelementptr inbounds i8, i8* %data, i64 1
  %1 = load i8, i8* %data, align 1, !tbaa !49
  store i8 %1, i8* %0, align 8, !tbaa !48
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !49
  %conv = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv, 16
  %arrayidx1 = getelementptr inbounds i8, i8* %data, i64 2
  %3 = load i8, i8* %arrayidx1, align 1, !tbaa !49
  %conv2 = zext i8 %3 to i64
  %shl3 = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl3, %shl
  %arrayidx4 = getelementptr inbounds i8, i8* %data, i64 3
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !49
  %conv5 = zext i8 %4 to i64
  %or6 = or i64 %or, %conv5
  %msg_len = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 1
  store i64 %or6, i64* %msg_len, align 8, !tbaa !50
  %add.ptr = getelementptr inbounds i8, i8* %data, i64 4
  %5 = load i8, i8* %add.ptr, align 1, !tbaa !49
  %conv8 = zext i8 %5 to i16
  %shl9 = shl nuw i16 %conv8, 8
  %arrayidx10 = getelementptr inbounds i8, i8* %data, i64 5
  %6 = load i8, i8* %arrayidx10, align 1, !tbaa !49
  %conv11 = zext i8 %6 to i16
  %or12 = or i16 %shl9, %conv11
  %seq = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 2
  store i16 %or12, i16* %seq, align 8, !tbaa !51
  %add.ptr14 = getelementptr inbounds i8, i8* %data, i64 6
  %7 = load i8, i8* %add.ptr14, align 1, !tbaa !49
  %conv16 = zext i8 %7 to i64
  %shl17 = shl nuw nsw i64 %conv16, 16
  %arrayidx18 = getelementptr inbounds i8, i8* %data, i64 7
  %8 = load i8, i8* %arrayidx18, align 1, !tbaa !49
  %conv19 = zext i8 %8 to i64
  %shl20 = shl nuw nsw i64 %conv19, 8
  %or21 = or i64 %shl20, %shl17
  %arrayidx22 = getelementptr inbounds i8, i8* %data, i64 8
  %9 = load i8, i8* %arrayidx22, align 1, !tbaa !49
  %conv23 = zext i8 %9 to i64
  %or24 = or i64 %or21, %conv23
  %frag_off = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 3
  store i64 %or24, i64* %frag_off, align 8, !tbaa !56
  %add.ptr25 = getelementptr inbounds i8, i8* %data, i64 9
  %10 = load i8, i8* %add.ptr25, align 1, !tbaa !49
  %conv27 = zext i8 %10 to i64
  %shl28 = shl nuw nsw i64 %conv27, 16
  %arrayidx29 = getelementptr inbounds i8, i8* %data, i64 10
  %11 = load i8, i8* %arrayidx29, align 1, !tbaa !49
  %conv30 = zext i8 %11 to i64
  %shl31 = shl nuw nsw i64 %conv30, 8
  %or32 = or i64 %shl31, %shl28
  %arrayidx33 = getelementptr inbounds i8, i8* %data, i64 11
  %12 = load i8, i8* %arrayidx33, align 1, !tbaa !49
  %conv34 = zext i8 %12 to i64
  %or35 = or i64 %or32, %conv34
  %frag_len = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 4
  store i64 %or35, i64* %frag_len, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_set_handshake_header(%struct.ssl_st* nocapture noundef readonly %s, %struct.wpacket_st* noundef %pkt, i32 noundef %htype) local_unnamed_addr #0 {
entry:
  %header = alloca i8*, align 8
  %0 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %cmp = icmp eq i32 %htype, 257
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %1 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %next_handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 4
  %2 = load i16, i16* %next_handshake_write_seq, align 2, !tbaa !69
  %handshake_write_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %1, i64 0, i32 3
  store i16 %2, i16* %handshake_write_seq, align 4, !tbaa !70
  tail call fastcc void @dtls1_set_message_header_int(%struct.ssl_st* noundef %s, i8 noundef zeroext 1, i64 noundef 0, i16 noundef zeroext %2, i64 noundef 0, i64 noundef 0) #10
  %call = tail call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef 1, i64 noundef 1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end11

if.else:                                          ; preds = %entry
  %conv = trunc i32 %htype to i8
  tail call void @dtls1_set_message_header(%struct.ssl_st* noundef %s, i8 noundef zeroext %conv, i64 noundef 0, i64 noundef 0, i64 noundef 0) #10
  %call5 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef %pkt, i64 noundef 12, i8** noundef nonnull %header) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call7 = call i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef %pkt) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false, %if.then
  br label %cleanup

cleanup:                                          ; preds = %if.else, %lor.lhs.false, %if.then, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare i32 @WPACKET_start_sub_packet(%struct.wpacket_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_close_construct_packet(%struct.ssl_st* nocapture noundef %s, %struct.wpacket_st* noundef %pkt, i32 noundef %htype) local_unnamed_addr #0 {
entry:
  %msglen = alloca i64, align 8
  %0 = bitcast i64* %msglen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %cmp.not = icmp eq i32 %htype, 257
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %call1 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef %pkt, i64* noundef nonnull %msglen) #8
  %tobool2 = icmp eq i32 %call1, 0
  %1 = load i64, i64* %msglen, align 8
  %cmp4 = icmp ugt i64 %1, 2147483647
  %or.cond = select i1 %tobool2, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  br i1 %cmp.not, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %if.end
  %init_num32 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 %1, i64* %init_num32, align 8, !tbaa !34
  %init_off33 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 16
  store i64 0, i64* %init_off33, align 8, !tbaa !33
  br label %if.then14

if.end10:                                         ; preds = %if.end
  %sub = add nsw i64 %1, -12
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %2 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %msg_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 10, i32 1
  store i64 %sub, i64* %msg_len, align 8, !tbaa !35
  %frag_len = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %2, i64 0, i32 10, i32 4
  store i64 %sub, i64* %frag_len, align 8, !tbaa !93
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 %1, i64* %init_num, align 8, !tbaa !34
  %init_off = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 16
  store i64 0, i64* %init_off, align 8, !tbaa !33
  %cmp12.not = icmp eq i32 %htype, 3
  br i1 %cmp12.not, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end10.thread, %if.end10
  %cond = zext i1 %cmp.not to i32
  %call17 = call i32 @dtls1_buffer_message(%struct.ssl_st* noundef nonnull %s, i32 noundef %cond) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %land.lhs.true, %lor.lhs.false, %if.end21
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %if.then14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_get_length(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dtls1_retrieve_buffered_fragment(%struct.ssl_st* noundef %s, i64* nocapture noundef writeonly %len) unnamed_addr #0 {
entry:
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %0 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %buffered_messages84 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %0, i64 0, i32 6
  %1 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages84, align 8, !tbaa !94
  %call85 = tail call %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef %1) #8
  %cmp86 = icmp eq %struct.pitem_st* %call85, null
  br i1 %cmp86, label %cleanup46, label %if.end

if.end:                                           ; preds = %entry, %do.cond
  %call87 = phi %struct.pitem_st* [ %call, %do.cond ], [ %call85, %entry ]
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call87, i64 0, i32 1
  %2 = bitcast i8** %data to %struct.hm_fragment_st**
  %3 = load %struct.hm_fragment_st*, %struct.hm_fragment_st** %2, align 8, !tbaa !73
  %seq = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %3, i64 0, i32 0, i32 2
  %4 = load i16, i16* %seq, align 8, !tbaa !75
  %5 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 5
  %6 = load i16, i16* %handshake_read_seq, align 8, !tbaa !60
  %cmp3 = icmp ult i16 %4, %6
  br i1 %cmp3, label %do.cond, label %do.end

do.cond:                                          ; preds = %if.end
  %buffered_messages7 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 6
  %7 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages7, align 8, !tbaa !94
  %call8 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %7) #8
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef nonnull %3) #10
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call87) #8
  %8 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %buffered_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %8, i64 0, i32 6
  %9 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages, align 8, !tbaa !94
  %call = tail call %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef %9) #8
  %cmp = icmp eq %struct.pitem_st* %call, null
  br i1 %cmp, label %cleanup46, label %if.end, !llvm.loop !95

do.end:                                           ; preds = %if.end
  %reassembly = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %3, i64 0, i32 2
  %10 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %cmp12.not = icmp eq i8* %10, null
  %cmp22 = icmp eq i16 %6, %4
  %or.cond = select i1 %cmp12.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %cleanup46

if.then24:                                        ; preds = %do.end
  %msg_header19 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %3, i64 0, i32 0
  %frag_len26 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %3, i64 0, i32 0, i32 4
  %11 = load i64, i64* %frag_len26, align 8, !tbaa !79
  %buffered_messages28 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %5, i64 0, i32 6
  %12 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages28, align 8, !tbaa !94
  %call29 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %12) #8
  %call31 = tail call fastcc i32 @dtls1_preprocess_fragment(%struct.ssl_st* noundef nonnull %s, %struct.hm_header_st* noundef %msg_header19) #10
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24
  %13 = load i64, i64* %frag_len26, align 8, !tbaa !79
  %cmp34.not = icmp eq i64 %13, 0
  br i1 %cmp34.not, label %if.then44, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %14 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %data37 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %14, i64 0, i32 1
  %15 = load i8*, i8** %data37, align 8, !tbaa !43
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 12
  %frag_off = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %3, i64 0, i32 0, i32 3
  %16 = load i64, i64* %frag_off, align 8, !tbaa !92
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 %16
  %fragment = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %3, i64 0, i32 1
  %17 = load i8*, i8** %fragment, align 8, !tbaa !16
  %call41 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %17, i64 noundef %13) #8
  br label %if.then44

if.then44:                                        ; preds = %land.lhs.true, %if.then36
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef nonnull %3) #10
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call87) #8
  store i64 %11, i64* %len, align 8, !tbaa !45
  br label %cleanup46

if.end45:                                         ; preds = %if.then24
  tail call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef nonnull %3) #10
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call87) #8
  %init_num = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 15
  store i64 0, i64* %init_num, align 8, !tbaa !34
  br label %cleanup46

cleanup46:                                        ; preds = %do.cond, %entry, %if.then44, %if.end45, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ 1, %if.then44 ], [ -1, %if.end45 ], [ 0, %entry ], [ 0, %do.cond ]
  ret i32 %retval.1
}

declare i64 @RECORD_LAYER_get_rrec_length(%struct.record_layer_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dtls1_process_out_of_seq_message(%struct.ssl_st* noundef %s, %struct.hm_header_st* noundef %msg_hdr) unnamed_addr #0 {
entry:
  %seq64be = alloca [8 x i8], align 1
  %readbytes = alloca i64, align 8
  %devnull = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %frag_len1 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 4
  %1 = load i64, i64* %frag_len1, align 8, !tbaa !57
  %2 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %frag_off = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 3
  %3 = load i64, i64* %frag_off, align 8, !tbaa !56
  %add = add i64 %3, %1
  %msg_len = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 1
  %4 = load i64, i64* %msg_len, align 8, !tbaa !50
  %cmp = icmp ugt i64 %add, %4
  br i1 %cmp, label %if.then103, label %if.end

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #8
  %seq = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 2
  %5 = load i16, i16* %seq, align 8, !tbaa !51
  %6 = lshr i16 %5, 8
  %conv2 = trunc i16 %6 to i8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 6
  store i8 %conv2, i8* %arrayidx, align 1, !tbaa !49
  %conv4 = trunc i16 %5 to i8
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 7
  store i8 %conv4, i8* %arrayidx5, align 1, !tbaa !49
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %7 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %buffered_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %7, i64 0, i32 6
  %8 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages, align 8, !tbaa !94
  %call7 = call %struct.pitem_st* @pqueue_find(%struct.pqueue_st* noundef %8, i8* noundef nonnull %0) #8
  %cmp8.not = icmp eq %struct.pitem_st* %call7, null
  br i1 %cmp8.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, i64* %msg_len, align 8, !tbaa !50
  %cmp11.not = icmp eq i64 %1, %9
  %spec.select = select i1 %cmp11.not, %struct.pitem_st* %call7, %struct.pitem_st* null
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %item.0 = phi %struct.pitem_st* [ null, %if.end ], [ %spec.select, %land.lhs.true ]
  %10 = load i16, i16* %seq, align 8, !tbaa !51
  %11 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %handshake_read_seq = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %11, i64 0, i32 5
  %12 = load i16, i16* %handshake_read_seq, align 8, !tbaa !60
  %cmp19.not = icmp ugt i16 %10, %12
  br i1 %cmp19.not, label %lor.lhs.false, label %if.then42

lor.lhs.false:                                    ; preds = %if.end14
  %conv18 = zext i16 %12 to i32
  %conv16 = zext i16 %10 to i32
  %add26 = add nuw nsw i32 %conv18, 10
  %cmp27 = icmp ult i32 %add26, %conv16
  %cmp30 = icmp ne %struct.pitem_st* %item.0, null
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.then42, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %cmp36 = icmp eq i16 %12, 0
  br i1 %cmp36, label %land.lhs.true38, label %if.else

land.lhs.true38:                                  ; preds = %lor.lhs.false32
  %type = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  %13 = load i8, i8* %type, align 8, !tbaa !48
  %cmp40 = icmp eq i8 %13, 20
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %land.lhs.true38, %lor.lhs.false, %if.end14
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %devnull, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %14) #9
  %tobool.not167 = icmp eq i64 %1, 0
  br i1 %tobool.not167, label %cleanup.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then42
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  br label %while.body

cleanup.thread:                                   ; preds = %if.end50, %if.then42
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %14) #9
  br label %cleanup105

while.body:                                       ; preds = %while.body.lr.ph, %if.end50
  %frag_len.0168 = phi i64 [ %1, %while.body.lr.ph ], [ %sub, %if.end50 ]
  %15 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !62
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 14
  %16 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !63
  %17 = icmp ult i64 %frag_len.0168, 256
  %cond = select i1 %17, i64 %frag_len.0168, i64 256
  %call46 = call i32 %16(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef null, i8* noundef nonnull %14, i64 noundef %cond, i32 noundef 0, i64* noundef nonnull %readbytes) #8
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %err, label %if.end50

if.end50:                                         ; preds = %while.body
  %18 = load i64, i64* %readbytes, align 8, !tbaa !45
  %sub = sub i64 %frag_len.0168, %18
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %cleanup.thread, label %while.body, !llvm.loop !96

if.else:                                          ; preds = %land.lhs.true38, %lor.lhs.false32
  %19 = load i64, i64* %msg_len, align 8, !tbaa !50
  %cmp52.not = icmp eq i64 %1, %19
  br i1 %cmp52.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.else
  %call55 = call fastcc i32 @dtls1_reassemble_fragment(%struct.ssl_st* noundef nonnull %s, %struct.hm_header_st* noundef nonnull %msg_hdr) #10
  br label %cleanup105

if.end56:                                         ; preds = %if.else
  %call57 = call fastcc i64 @dtls1_max_handshake_message_len(%struct.ssl_st* noundef nonnull %s) #10
  %cmp58 = icmp ugt i64 %1, %call57
  br i1 %cmp58, label %if.then103, label %if.end61

if.end61:                                         ; preds = %if.end56
  %call62 = call fastcc %struct.hm_fragment_st* @dtls1_hm_fragment_new(i64 noundef %1, i32 noundef 0) #10
  %cmp63 = icmp eq %struct.hm_fragment_st* %call62, null
  br i1 %cmp63, label %if.then103, label %if.end66

if.end66:                                         ; preds = %if.end61
  %20 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call62, i64 0, i32 0, i32 0
  %21 = getelementptr %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  %call67 = call i8* @memcpy(i8* noundef nonnull %20, i8* noundef %21, i64 noundef 88) #8
  %tobool68.not = icmp eq i64 %1, 0
  br i1 %tobool68.not, label %if.end84, label %if.then69

if.then69:                                        ; preds = %if.end66
  %method70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %22 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method70, align 8, !tbaa !62
  %ssl_read_bytes71 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %22, i64 0, i32 14
  %23 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes71, align 8, !tbaa !63
  %fragment = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call62, i64 0, i32 1
  %24 = load i8*, i8** %fragment, align 8, !tbaa !16
  %call72 = call i32 %23(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef null, i8* noundef %24, i64 noundef %1, i32 noundef 0, i64* noundef nonnull %readbytes) #8
  %25 = load i64, i64* %readbytes, align 8
  %cmp76.not = icmp ne i64 %25, %1
  %cmp80166 = icmp slt i32 %call72, 1
  %cmp80 = select i1 %cmp80166, i1 true, i1 %cmp76.not
  br i1 %cmp80, label %if.then103, label %if.end84

if.end84:                                         ; preds = %if.then69, %if.end66
  %call86 = call %struct.pitem_st* @pitem_new(i8* noundef nonnull %0, i8* noundef nonnull %20) #8
  %cmp87 = icmp eq %struct.pitem_st* %call86, null
  br i1 %cmp87, label %if.then103, label %if.end90

if.end90:                                         ; preds = %if.end84
  %26 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %buffered_messages92 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %26, i64 0, i32 6
  %27 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages92, align 8, !tbaa !94
  %call93 = call %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* noundef %27, %struct.pitem_st* noundef nonnull %call86) #8
  %cmp94.not = icmp eq %struct.pitem_st* %call93, null
  br i1 %cmp94.not, label %if.then103, label %cleanup105

err:                                              ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %14) #9
  %cmp101 = icmp eq %struct.pitem_st* %item.0, null
  br i1 %cmp101, label %if.then103, label %cleanup105

if.then103:                                       ; preds = %if.end90, %if.end84, %if.then69, %if.end61, %if.end56, %entry, %err
  %frag.0165 = phi %struct.hm_fragment_st* [ null, %err ], [ %call62, %if.end90 ], [ %call62, %if.end84 ], [ %call62, %if.then69 ], [ null, %if.end61 ], [ null, %if.end56 ], [ null, %entry ]
  call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef %frag.0165) #10
  br label %cleanup105

cleanup105:                                       ; preds = %cleanup.thread, %err, %if.then103, %if.end90, %if.then54
  %retval.0 = phi i32 [ %call55, %if.then54 ], [ -3, %if.end90 ], [ 0, %if.then103 ], [ 0, %err ], [ -3, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dtls1_reassemble_fragment(%struct.ssl_st* noundef %s, %struct.hm_header_st* noundef %msg_hdr) unnamed_addr #0 {
entry:
  %seq64be = alloca [8 x i8], align 1
  %readbytes = alloca i64, align 8
  %devnull = alloca [256 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %frag_len1 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 4
  %1 = load i64, i64* %frag_len1, align 8, !tbaa !57
  %2 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %frag_off = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 3
  %3 = load i64, i64* %frag_off, align 8, !tbaa !56
  %add = add i64 %3, %1
  %msg_len = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 1
  %4 = load i64, i64* %msg_len, align 8, !tbaa !50
  %cmp = icmp ugt i64 %add, %4
  br i1 %cmp, label %if.then194, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc i64 @dtls1_max_handshake_message_len(%struct.ssl_st* noundef %s) #10
  %cmp3 = icmp ugt i64 %4, %call
  br i1 %cmp3, label %if.then194, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp4 = icmp eq i64 %1, 0
  br i1 %cmp4, label %cleanup196, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #8
  %seq = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 2
  %5 = load i16, i16* %seq, align 8, !tbaa !51
  %6 = lshr i16 %5, 8
  %conv8 = trunc i16 %6 to i8
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 6
  store i8 %conv8, i8* %arrayidx, align 1, !tbaa !49
  %conv10 = trunc i16 %5 to i8
  %arrayidx11 = getelementptr inbounds [8 x i8], [8 x i8]* %seq64be, i64 0, i64 7
  store i8 %conv10, i8* %arrayidx11, align 1, !tbaa !49
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %7 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %buffered_messages = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %7, i64 0, i32 6
  %8 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages, align 8, !tbaa !94
  %call13 = call %struct.pitem_st* @pqueue_find(%struct.pqueue_st* noundef %8, i8* noundef nonnull %0) #8
  %cmp14 = icmp eq %struct.pitem_st* %call13, null
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end6
  %9 = load i64, i64* %msg_len, align 8, !tbaa !50
  %call18 = call fastcc %struct.hm_fragment_st* @dtls1_hm_fragment_new(i64 noundef %9, i32 noundef 1) #10
  %cmp19 = icmp eq %struct.hm_fragment_st* %call18, null
  br i1 %cmp19, label %if.then194, label %if.end22

if.end22:                                         ; preds = %if.then16
  %10 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call18, i64 0, i32 0, i32 0
  %11 = getelementptr %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  %call23 = call i8* @memcpy(i8* noundef nonnull %10, i8* noundef %11, i64 noundef 88) #8
  %msg_len25 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call18, i64 0, i32 0, i32 1
  %12 = load i64, i64* %msg_len25, align 8, !tbaa !77
  %frag_len27 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call18, i64 0, i32 0, i32 4
  store i64 %12, i64* %frag_len27, align 8, !tbaa !79
  %frag_off29 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %call18, i64 0, i32 0, i32 3
  store i64 0, i64* %frag_off29, align 8, !tbaa !92
  br label %if.end37

if.else:                                          ; preds = %if.end6
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call13, i64 0, i32 1
  %13 = bitcast i8** %data to %struct.hm_fragment_st**
  %14 = load %struct.hm_fragment_st*, %struct.hm_fragment_st** %13, align 8, !tbaa !73
  %msg_len31 = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %14, i64 0, i32 0, i32 1
  %15 = load i64, i64* %msg_len31, align 8, !tbaa !77
  %16 = load i64, i64* %msg_len, align 8, !tbaa !50
  %cmp33.not = icmp eq i64 %15, %16
  br i1 %cmp33.not, label %if.end37, label %if.then194

if.end37:                                         ; preds = %if.else, %if.end22
  %frag.0 = phi %struct.hm_fragment_st* [ %call18, %if.end22 ], [ %14, %if.else ]
  %reassembly = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag.0, i64 0, i32 2
  %17 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %cmp38 = icmp eq i8* %17, null
  br i1 %cmp38, label %while.body.preheader, label %if.end49

while.body.preheader:                             ; preds = %if.end37
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %devnull, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %18) #9
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end48
  %frag_len.0306 = phi i64 [ %sub, %if.end48 ], [ %1, %while.body.preheader ]
  %19 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !62
  %ssl_read_bytes = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %19, i64 0, i32 14
  %20 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes, align 8, !tbaa !63
  %21 = icmp ult i64 %frag_len.0306, 256
  %cond = select i1 %21, i64 %frag_len.0306, i64 256
  %call44 = call i32 %20(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef null, i8* noundef nonnull %18, i64 noundef %cond, i32 noundef 0, i64* noundef nonnull %readbytes) #8
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %cleanup, label %if.end48

if.end48:                                         ; preds = %while.body
  %22 = load i64, i64* %readbytes, align 8, !tbaa !45
  %sub = sub i64 %frag_len.0306, %22
  %tobool.not = icmp eq i64 %sub, 0
  br i1 %tobool.not, label %cleanup196.critedge, label %while.body, !llvm.loop !97

cleanup:                                          ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #9
  br label %err

if.end49:                                         ; preds = %if.end37
  %method50 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %23 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method50, align 8, !tbaa !62
  %ssl_read_bytes51 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %23, i64 0, i32 14
  %24 = load i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)** %ssl_read_bytes51, align 8, !tbaa !63
  %fragment = getelementptr inbounds %struct.hm_fragment_st, %struct.hm_fragment_st* %frag.0, i64 0, i32 1
  %25 = load i8*, i8** %fragment, align 8, !tbaa !16
  %26 = load i64, i64* %frag_off, align 8, !tbaa !56
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %26
  %call53 = call i32 %24(%struct.ssl_st* noundef nonnull %s, i32 noundef 22, i32* noundef null, i8* noundef %add.ptr, i64 noundef %1, i32 noundef 0, i64* noundef nonnull %readbytes) #8
  %27 = load i64, i64* %readbytes, align 8
  %cmp57.not = icmp ne i64 %27, %1
  %cmp61294 = icmp slt i32 %call53, 1
  %cmp61 = select i1 %cmp61294, i1 true, i1 %cmp57.not
  br i1 %cmp61, label %err, label %if.end64

if.end64:                                         ; preds = %if.end49
  %28 = load i64, i64* %frag_off, align 8, !tbaa !56
  %cmp69 = icmp slt i64 %1, 9
  br i1 %cmp69, label %for.cond.preheader, label %if.else82

for.cond.preheader:                               ; preds = %if.end64
  %add74302 = add i64 %28, %1
  %cmp75303 = icmp slt i64 %28, %add74302
  br i1 %cmp75303, label %for.body, label %if.end125

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %ii.0304 = phi i64 [ %inc, %for.body ], [ %28, %for.cond.preheader ]
  %29 = trunc i64 %ii.0304 to i8
  %sh_prom = and i8 %29, 7
  %shl = shl nuw i8 1, %sh_prom
  %30 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %shr78 = ashr i64 %ii.0304, 3
  %arrayidx79 = getelementptr inbounds i8, i8* %30, i64 %shr78
  %31 = load i8, i8* %arrayidx79, align 1, !tbaa !49
  %or = or i8 %31, %shl
  store i8 %or, i8* %arrayidx79, align 1, !tbaa !49
  %inc = add nsw i64 %ii.0304, 1
  %32 = load i64, i64* %frag_off, align 8, !tbaa !56
  %add74 = add i64 %32, %1
  %cmp75 = icmp slt i64 %inc, %add74
  br i1 %cmp75, label %for.body, label %if.end125, !llvm.loop !98

if.else82:                                        ; preds = %if.end64
  %and85 = and i64 %28, 7
  %arrayidx86 = getelementptr inbounds [8 x i8], [8 x i8]* @bitmask_start_values, i64 0, i64 %and85
  %33 = load i8, i8* %arrayidx86, align 1, !tbaa !49
  %34 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %shr90 = ashr i64 %28, 3
  %arrayidx91 = getelementptr inbounds i8, i8* %34, i64 %shr90
  %35 = load i8, i8* %arrayidx91, align 1, !tbaa !49
  %or93288 = or i8 %35, %33
  store i8 %or93288, i8* %arrayidx91, align 1, !tbaa !49
  %36 = load i64, i64* %frag_off, align 8, !tbaa !56
  %shr96 = ashr i64 %36, 3
  %ii83.0295 = add nsw i64 %shr96, 1
  %add100296 = add i64 %36, %1
  %sub101297 = add nsw i64 %add100296, -1
  %shr102298 = ashr i64 %sub101297, 3
  %cmp103299 = icmp slt i64 %ii83.0295, %shr102298
  br i1 %cmp103299, label %for.body105, label %for.end110

for.body105:                                      ; preds = %if.else82, %for.body105
  %ii83.0300 = phi i64 [ %ii83.0, %for.body105 ], [ %ii83.0295, %if.else82 ]
  %37 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %arrayidx107 = getelementptr inbounds i8, i8* %37, i64 %ii83.0300
  store i8 -1, i8* %arrayidx107, align 1, !tbaa !49
  %ii83.0 = add nsw i64 %ii83.0300, 1
  %38 = load i64, i64* %frag_off, align 8, !tbaa !56
  %add100 = add i64 %38, %1
  %sub101 = add nsw i64 %add100, -1
  %shr102 = ashr i64 %sub101, 3
  %cmp103 = icmp slt i64 %ii83.0, %shr102
  br i1 %cmp103, label %for.body105, label %for.end110, !llvm.loop !99

for.end110:                                       ; preds = %for.body105, %if.else82
  %add100.lcssa = phi i64 [ %add100296, %if.else82 ], [ %add100, %for.body105 ]
  %shr102.lcssa = phi i64 [ %shr102298, %if.else82 ], [ %shr102, %for.body105 ]
  %and113 = and i64 %add100.lcssa, 7
  %arrayidx114 = getelementptr inbounds [8 x i8], [8 x i8]* @bitmask_end_values, i64 0, i64 %and113
  %39 = load i8, i8* %arrayidx114, align 1, !tbaa !49
  %40 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %arrayidx121 = getelementptr inbounds i8, i8* %40, i64 %shr102.lcssa
  %41 = load i8, i8* %arrayidx121, align 1, !tbaa !49
  %or123289 = or i8 %41, %39
  store i8 %or123289, i8* %arrayidx121, align 1, !tbaa !49
  br label %if.end125

if.end125:                                        ; preds = %for.body, %for.cond.preheader, %for.end110
  %42 = load i64, i64* %msg_len, align 8, !tbaa !50
  %cmp127.not = icmp eq i64 %42, 0
  br i1 %cmp127.not, label %err, label %if.end132

if.end132:                                        ; preds = %if.end125
  %43 = load i8*, i8** %reassembly, align 8, !tbaa !17
  %sub136 = add nsw i64 %42, -1
  %shr137 = ashr i64 %sub136, 3
  %arrayidx138 = getelementptr inbounds i8, i8* %43, i64 %shr137
  %44 = load i8, i8* %arrayidx138, align 1, !tbaa !49
  %and141 = and i64 %42, 7
  %arrayidx142 = getelementptr inbounds [8 x i8], [8 x i8]* @bitmask_end_values, i64 0, i64 %and141
  %45 = load i8, i8* %arrayidx142, align 1, !tbaa !49
  %cmp144.not = icmp eq i8 %44, %45
  br i1 %cmp144.not, label %for.cond154, label %if.end172

for.cond154:                                      ; preds = %if.end132, %for.body157
  %ii133.0.in = phi i64 [ %ii133.0, %for.body157 ], [ %shr137, %if.end132 ]
  %ii133.0 = add nsw i64 %ii133.0.in, -1
  %cmp155 = icmp sgt i64 %ii133.0.in, 0
  br i1 %cmp155, label %for.body157, label %if.then169.critedge

for.body157:                                      ; preds = %for.cond154
  %arrayidx159 = getelementptr inbounds i8, i8* %43, i64 %ii133.0
  %46 = load i8, i8* %arrayidx159, align 1, !tbaa !49
  %cmp161.not = icmp eq i8 %46, -1
  br i1 %cmp161.not, label %for.cond154, label %if.end172, !llvm.loop !100

if.then169.critedge:                              ; preds = %for.cond154
  call void @CRYPTO_free(i8* noundef nonnull %43, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 627) #8
  store i8* null, i8** %reassembly, align 8, !tbaa !17
  br label %if.end172

if.end172:                                        ; preds = %for.body157, %if.end132, %if.then169.critedge
  br i1 %cmp14, label %if.then175, label %cleanup196

if.then175:                                       ; preds = %if.end172
  %47 = getelementptr %struct.hm_fragment_st, %struct.hm_fragment_st* %frag.0, i64 0, i32 0, i32 0
  %call177 = call %struct.pitem_st* @pitem_new(i8* noundef nonnull %0, i8* noundef %47) #8
  %cmp178 = icmp eq %struct.pitem_st* %call177, null
  br i1 %cmp178, label %if.then194, label %if.end181

if.end181:                                        ; preds = %if.then175
  %48 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %buffered_messages183 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %48, i64 0, i32 6
  %49 = load %struct.pqueue_st*, %struct.pqueue_st** %buffered_messages183, align 8, !tbaa !94
  %call184 = call %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* noundef %49, %struct.pitem_st* noundef nonnull %call177) #8
  %cmp185.not = icmp eq %struct.pitem_st* %call184, null
  br i1 %cmp185.not, label %if.then194, label %cleanup196

err:                                              ; preds = %cleanup, %if.end125, %if.end49
  br i1 %cmp14, label %if.then194, label %cleanup196

if.then194:                                       ; preds = %if.then175, %if.else, %if.end181, %if.then16, %lor.lhs.false, %entry, %err
  %frag.1293 = phi %struct.hm_fragment_st* [ %frag.0, %err ], [ %frag.0, %if.then175 ], [ null, %if.else ], [ %frag.0, %if.end181 ], [ null, %if.then16 ], [ null, %lor.lhs.false ], [ null, %entry ]
  call void @dtls1_hm_fragment_free(%struct.hm_fragment_st* noundef %frag.1293) #10
  br label %cleanup196

cleanup196.critedge:                              ; preds = %if.end48
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %18) #9
  br label %cleanup196

cleanup196:                                       ; preds = %err, %if.then194, %if.end172, %if.end181, %cleanup196.critedge, %if.end
  %retval.1 = phi i32 [ -3, %if.end ], [ -3, %cleanup196.critedge ], [ -3, %if.end181 ], [ -3, %if.end172 ], [ -1, %if.then194 ], [ -1, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dtls1_preprocess_fragment(%struct.ssl_st* noundef %s, %struct.hm_header_st* nocapture noundef readonly %msg_hdr) unnamed_addr #0 {
entry:
  %msg_len1 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 1
  %0 = load i64, i64* %msg_len1, align 8, !tbaa !50
  %frag_off2 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 3
  %1 = load i64, i64* %frag_off2, align 8, !tbaa !56
  %frag_len3 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 4
  %2 = load i64, i64* %frag_len3, align 8, !tbaa !57
  %add = add i64 %2, %1
  %cmp = icmp ugt i64 %add, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc i64 @dtls1_max_handshake_message_len(%struct.ssl_st* noundef %s) #10
  %cmp4 = icmp ugt i64 %0, %call
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 450, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dtls1_preprocess_fragment, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 47, i32 noundef 152, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %d1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 18
  %3 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %frag_off5 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %3, i64 0, i32 11, i32 3
  %4 = load i64, i64* %frag_off5, align 8, !tbaa !67
  %cmp6 = icmp eq i64 %4, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %init_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 13
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %init_buf, align 8, !tbaa !42
  %add8 = add i64 %0, 12
  %call9 = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef %5, i64 noundef %add8) #8
  %tobool.not = icmp eq i64 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dtls1_preprocess_fragment, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 524295, i8* noundef null) #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %message_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 4
  store i64 %0, i64* %message_size, align 8, !tbaa !65
  %6 = load %struct.dtls1_state_st*, %struct.dtls1_state_st** %d1, align 8, !tbaa !18
  %msg_len14 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 11, i32 1
  store i64 %0, i64* %msg_len14, align 8, !tbaa !101
  %type = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  %7 = load i8, i8* %type, align 8, !tbaa !48
  %conv = zext i8 %7 to i32
  %message_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 5
  store i32 %conv, i32* %message_type, align 8, !tbaa !59
  %type20 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 11, i32 0
  store i8 %7, i8* %type20, align 8, !tbaa !102
  %seq = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 2
  %8 = load i16, i16* %seq, align 8, !tbaa !51
  %seq23 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %6, i64 0, i32 11, i32 2
  store i16 %8, i16* %seq23, align 8, !tbaa !103
  br label %cleanup

if.else:                                          ; preds = %if.end
  %msg_len26 = getelementptr inbounds %struct.dtls1_state_st, %struct.dtls1_state_st* %3, i64 0, i32 11, i32 1
  %9 = load i64, i64* %msg_len26, align 8, !tbaa !101
  %cmp27.not = icmp eq i64 %0, %9
  br i1 %cmp27.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dtls1_preprocess_fragment, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 152, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else, %if.then29, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then29 ], [ 1, %if.else ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

declare %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef) local_unnamed_addr #1

declare %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef) local_unnamed_addr #1

declare void @pitem_free(%struct.pitem_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @dtls1_max_handshake_message_len(%struct.ssl_st* nocapture noundef readonly %s) unnamed_addr #6 {
entry:
  %max_cert_list = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 82
  %0 = load i64, i64* %max_cert_list, align 8, !tbaa !104
  %cmp = icmp ugt i64 %0, 17740
  %. = select i1 %cmp, i64 %0, i64 17740
  ret i64 %.
}

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !11, i64 40}
!5 = !{!"hm_fragment_st", !6, i64 0, !13, i64 88, !13, i64 96}
!6 = !{!"hm_header_st", !7, i64 0, !9, i64 8, !10, i64 16, !9, i64 24, !9, i64 32, !11, i64 40, !12, i64 48}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!"dtls1_retransmit_state", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !10, i64 32}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!5, !13, i64 48}
!15 = !{!5, !13, i64 56}
!16 = !{!5, !13, i64 88}
!17 = !{!5, !13, i64 96}
!18 = !{!19, !13, i64 1208}
!19 = !{!"ssl_st", !11, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !11, i64 40, !13, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !20, i64 72, !7, i64 132, !13, i64 136, !13, i64 144, !9, i64 152, !9, i64 160, !21, i64 168, !13, i64 1208, !13, i64 1216, !13, i64 1224, !11, i64 1232, !13, i64 1240, !23, i64 1248, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !11, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !13, i64 2120, !7, i64 2128, !13, i64 2144, !13, i64 2152, !13, i64 2160, !13, i64 2168, !7, i64 2176, !13, i64 2192, !13, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !13, i64 2328, !13, i64 2336, !13, i64 2344, !9, i64 2352, !13, i64 2360, !7, i64 2368, !9, i64 2400, !11, i64 2408, !13, i64 2416, !13, i64 2424, !11, i64 2432, !11, i64 2436, !13, i64 2440, !13, i64 2448, !13, i64 2456, !13, i64 2464, !13, i64 2472, !13, i64 2480, !9, i64 2488, !24, i64 2496, !13, i64 2512, !13, i64 2520, !7, i64 2528, !9, i64 2536, !11, i64 2544, !11, i64 2548, !11, i64 2552, !9, i64 2560, !11, i64 2568, !11, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !25, i64 2600, !13, i64 2904, !11, i64 2912, !13, i64 2920, !13, i64 2928, !13, i64 2936, !11, i64 2944, !13, i64 2952, !13, i64 2960, !13, i64 2968, !11, i64 2976, !11, i64 2980, !7, i64 2984, !11, i64 2988, !13, i64 2992, !9, i64 3000, !11, i64 3008, !13, i64 3016, !27, i64 3024, !13, i64 3152, !28, i64 3160, !13, i64 7448, !13, i64 7456, !13, i64 7464, !13, i64 7472, !9, i64 7480, !11, i64 7488, !11, i64 7492, !11, i64 7496, !13, i64 7504, !13, i64 7512, !9, i64 7520, !13, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !13, i64 7560, !13, i64 7568, !13, i64 7576, !13, i64 7584, !13, i64 7592, !9, i64 7600}
!20 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !7, i64 52, !7, i64 56}
!21 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !11, i64 216, !11, i64 220, !13, i64 224, !13, i64 232, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !7, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !22, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !11, i64 984, !11, i64 988, !13, i64 992, !9, i64 1000, !13, i64 1008, !9, i64 1016, !11, i64 1024, !7, i64 1028, !7, i64 1029, !10, i64 1030, !13, i64 1032}
!22 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !11, i64 280, !13, i64 288, !13, i64 296, !11, i64 304, !13, i64 312, !9, i64 320, !13, i64 328, !9, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !11, i64 368, !9, i64 376, !13, i64 384, !11, i64 392, !13, i64 400, !9, i64 408, !13, i64 416, !9, i64 424, !13, i64 432, !9, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !9, i64 480, !9, i64 488, !13, i64 496, !7, i64 504, !11, i64 540, !11, i64 544, !11, i64 548, !11, i64 552}
!23 = !{!"ssl_dane_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !9, i64 56}
!24 = !{!"crypto_ex_data_st", !13, i64 0, !13, i64 8}
!25 = !{!"", !7, i64 0, !13, i64 32, !13, i64 40, !13, i64 48, !11, i64 56, !13, i64 64, !10, i64 72, !11, i64 76, !26, i64 80, !11, i64 112, !11, i64 116, !9, i64 120, !13, i64 128, !9, i64 136, !13, i64 144, !9, i64 152, !13, i64 160, !9, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !9, i64 232, !13, i64 240, !9, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !13, i64 272, !9, i64 280, !11, i64 288, !7, i64 292, !11, i64 296}
!26 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !9, i64 24}
!27 = !{!"srp_ctx_st", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !11, i64 112, !9, i64 120}
!28 = !{!"record_layer_st", !13, i64 0, !11, i64 8, !11, i64 12, !9, i64 16, !9, i64 24, !29, i64 32, !7, i64 80, !7, i64 1616, !13, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !11, i64 4232, !9, i64 4240, !13, i64 4248, !7, i64 4256, !7, i64 4264, !11, i64 4272, !11, i64 4276, !13, i64 4280}
!29 = !{!"ssl3_buffer_st", !13, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !11, i64 40}
!30 = !{!31, !9, i64 304}
!31 = !{!"dtls1_state_st", !7, i64 0, !9, i64 256, !11, i64 264, !10, i64 268, !10, i64 270, !10, i64 272, !13, i64 280, !13, i64 288, !9, i64 296, !9, i64 304, !6, i64 312, !6, i64 400, !11, i64 488, !32, i64 496, !11, i64 512, !11, i64 516, !13, i64 520}
!32 = !{!"timeval", !9, i64 0, !9, i64 8}
!33 = !{!19, !9, i64 160}
!34 = !{!19, !9, i64 152}
!35 = !{!31, !9, i64 320}
!36 = !{!19, !13, i64 2192}
!37 = !{!19, !13, i64 2168}
!38 = !{!19, !11, i64 40}
!39 = !{!31, !9, i64 336}
!40 = !{!19, !13, i64 24}
!41 = !{!19, !9, i64 2584}
!42 = !{!19, !13, i64 136}
!43 = !{!44, !13, i64 8}
!44 = !{!"buf_mem_st", !9, i64 0, !13, i64 8, !9, i64 16, !9, i64 24}
!45 = !{!9, !9, i64 0}
!46 = !{!31, !11, i64 516}
!47 = !{!19, !11, i64 0}
!48 = !{!6, !7, i64 0}
!49 = !{!7, !7, i64 0}
!50 = !{!6, !9, i64 8}
!51 = !{!6, !10, i64 16}
!52 = !{!19, !13, i64 1216}
!53 = !{!19, !13, i64 1224}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!6, !9, i64 24}
!57 = !{!6, !9, i64 32}
!58 = !{!11, !11, i64 0}
!59 = !{!19, !11, i64 728}
!60 = !{!31, !10, i64 272}
!61 = !{!19, !13, i64 144}
!62 = !{!19, !13, i64 8}
!63 = !{!64, !13, i64 104}
!64 = !{!"ssl_method_st", !11, i64 0, !11, i64 4, !9, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216}
!65 = !{!19, !9, i64 720}
!66 = !{!19, !11, i64 56}
!67 = !{!31, !9, i64 424}
!68 = !{!19, !7, i64 92}
!69 = !{!31, !10, i64 270}
!70 = !{!31, !10, i64 268}
!71 = !{!31, !13, i64 288}
!72 = !{!13, !13, i64 0}
!73 = !{!74, !13, i64 8}
!74 = !{!"pitem_st", !7, i64 0, !13, i64 8, !13, i64 16}
!75 = !{!5, !10, i64 16}
!76 = distinct !{!76, !55}
!77 = !{!5, !9, i64 8}
!78 = !{!5, !7, i64 0}
!79 = !{!5, !9, i64 32}
!80 = !{!19, !13, i64 2152}
!81 = !{!19, !13, i64 2328}
!82 = !{!19, !13, i64 7440}
!83 = !{!84, !10, i64 2}
!84 = !{!"dtls_record_layer_st", !10, i64 0, !10, i64 2, !85, i64 8, !85, i64 24, !86, i64 40, !86, i64 56, !86, i64 72, !7, i64 88, !7, i64 96}
!85 = !{!"dtls1_bitmap_st", !9, i64 0, !7, i64 8}
!86 = !{!"record_pqueue_st", !10, i64 0, !13, i64 8}
!87 = !{!5, !13, i64 64}
!88 = !{!5, !13, i64 72}
!89 = !{!5, !10, i64 80}
!90 = !{!31, !10, i64 328}
!91 = !{!31, !7, i64 312}
!92 = !{!5, !9, i64 24}
!93 = !{!31, !9, i64 344}
!94 = !{!31, !13, i64 280}
!95 = distinct !{!95, !55}
!96 = distinct !{!96, !55}
!97 = distinct !{!97, !55}
!98 = distinct !{!98, !55}
!99 = distinct !{!99, !55}
!100 = distinct !{!100, !55}
!101 = !{!31, !9, i64 408}
!102 = !{!31, !7, i64 400}
!103 = !{!31, !10, i64 416}
!104 = !{!19, !9, i64 2560}
