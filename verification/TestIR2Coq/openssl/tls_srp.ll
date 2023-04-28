; ModuleID = 'ssl/tls_srp.c'
source_filename = "ssl/tls_srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
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
%struct.SRP_gN_st = type { i8*, %struct.bignum_st*, %struct.bignum_st* }

@.str = private unnamed_addr constant [14 x i8] c"ssl/tls_srp.c\00", align 1
@__func__.ssl_srp_ctx_init_intern = private unnamed_addr constant [24 x i8] c"ssl_srp_ctx_init_intern\00", align 1
@__func__.srp_generate_server_master_secret = private unnamed_addr constant [34 x i8] c"srp_generate_server_master_secret\00", align 1
@__func__.srp_generate_client_master_secret = private unnamed_addr constant [34 x i8] c"srp_generate_client_master_secret\00", align 1
@__func__.srp_verify_server_param = private unnamed_addr constant [24 x i8] c"srp_verify_server_param\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_ctx_srp_ctx_free_intern(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %srp_ctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65
  %login = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 4
  %0 = load i8*, i8** %login, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #6
  %info = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 13
  %1 = load i8*, i8** %info, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #6
  %N = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !17
  tail call void @BN_free(%struct.bignum_st* noundef %2) #6
  %g = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 6
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !18
  tail call void @BN_free(%struct.bignum_st* noundef %3) #6
  %s = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !19
  tail call void @BN_free(%struct.bignum_st* noundef %4) #6
  %B = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 8
  %5 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !20
  tail call void @BN_free(%struct.bignum_st* noundef %5) #6
  %A = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 9
  %6 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !21
  tail call void @BN_free(%struct.bignum_st* noundef %6) #6
  %a = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 10
  %7 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !22
  tail call void @BN_free(%struct.bignum_st* noundef %7) #6
  %b = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 11
  %8 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !23
  tail call void @BN_free(%struct.bignum_st* noundef %8) #6
  %v = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 12
  %9 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !24
  tail call void @BN_free(%struct.bignum_st* noundef %9) #6
  %10 = bitcast %struct.srp_ctx_st* %srp_ctx to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i64 noundef 128) #6
  %strength = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 14
  store i32 1024, i32* %strength, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_SRP_CTX_free(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_ctx_srp_ctx_free_intern(%struct.ssl_ctx_st* noundef %ctx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_srp_ctx_free_intern(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %srp_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %0 = load i8*, i8** %login, align 8, !tbaa !26
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 64) #6
  %info = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 13
  %1 = load i8*, i8** %info, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 65) #6
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  tail call void @BN_free(%struct.bignum_st* noundef %2) #6
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !39
  tail call void @BN_free(%struct.bignum_st* noundef %3) #6
  %s5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s5, align 8, !tbaa !40
  tail call void @BN_free(%struct.bignum_st* noundef %4) #6
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  %5 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !41
  tail call void @BN_free(%struct.bignum_st* noundef %5) #6
  %A = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  %6 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !42
  tail call void @BN_free(%struct.bignum_st* noundef %6) #6
  %a = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 10
  %7 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !43
  tail call void @BN_free(%struct.bignum_st* noundef %7) #6
  %b = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 11
  %8 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !44
  tail call void @BN_free(%struct.bignum_st* noundef %8) #6
  %v = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %9 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !45
  tail call void @BN_free(%struct.bignum_st* noundef %9) #6
  %10 = bitcast %struct.srp_ctx_st* %srp_ctx to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i64 noundef 128) #6
  %strength = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 14
  store i32 1024, i32* %strength, align 8, !tbaa !46
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SRP_CTX_free(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_srp_ctx_free_intern(%struct.ssl_st* noundef %s) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_srp_ctx_init_intern(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !47
  %cmp2 = icmp eq %struct.ssl_ctx_st* %0, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %srp_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106
  %1 = bitcast %struct.srp_ctx_st* %srp_ctx to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 128) #6
  %SRP_cb_arg = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 0
  %2 = load i8*, i8** %SRP_cb_arg, align 8, !tbaa !48
  %SRP_cb_arg5 = getelementptr inbounds %struct.srp_ctx_st, %struct.srp_ctx_st* %srp_ctx, i64 0, i32 0
  store i8* %2, i8** %SRP_cb_arg5, align 8, !tbaa !49
  %TLS_ext_srp_username_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 1
  %3 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %TLS_ext_srp_username_callback, align 8, !tbaa !50
  %TLS_ext_srp_username_callback8 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 1
  store i32 (%struct.ssl_st*, i32*, i8*)* %3, i32 (%struct.ssl_st*, i32*, i8*)** %TLS_ext_srp_username_callback8, align 8, !tbaa !51
  %SRP_verify_param_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 2
  %4 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %SRP_verify_param_callback, align 8, !tbaa !52
  %SRP_verify_param_callback11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 2
  store i32 (%struct.ssl_st*, i8*)* %4, i32 (%struct.ssl_st*, i8*)** %SRP_verify_param_callback11, align 8, !tbaa !53
  %SRP_give_srp_client_pwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 3
  %5 = load i8* (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)** %SRP_give_srp_client_pwd_callback, align 8, !tbaa !54
  %SRP_give_srp_client_pwd_callback14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 3
  store i8* (%struct.ssl_st*, i8*)* %5, i8* (%struct.ssl_st*, i8*)** %SRP_give_srp_client_pwd_callback14, align 8, !tbaa !55
  %strength = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 14
  %6 = load i32, i32* %strength, align 8, !tbaa !25
  %strength17 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 14
  store i32 %6, i32* %strength17, align 8, !tbaa !46
  %N = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 5
  %7 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !17
  %cmp19.not = icmp eq %struct.bignum_st* %7, null
  br i1 %cmp19.not, label %lor.lhs.false26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call22 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %7) #6
  %N24 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  store %struct.bignum_st* %call22, %struct.bignum_st** %N24, align 8, !tbaa !38
  %cmp25 = icmp eq %struct.bignum_st* %call22, null
  br i1 %cmp25, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true, %if.end
  %g = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 6
  %8 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !18
  %cmp28.not = icmp eq %struct.bignum_st* %8, null
  br i1 %cmp28.not, label %lor.lhs.false36, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %lor.lhs.false26
  %call32 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %8) #6
  %g34 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  store %struct.bignum_st* %call32, %struct.bignum_st** %g34, align 8, !tbaa !39
  %cmp35 = icmp eq %struct.bignum_st* %call32, null
  br i1 %cmp35, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %land.lhs.true29, %lor.lhs.false26
  %s38 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 7
  %9 = load %struct.bignum_st*, %struct.bignum_st** %s38, align 8, !tbaa !19
  %cmp39.not = icmp eq %struct.bignum_st* %9, null
  br i1 %cmp39.not, label %lor.lhs.false47, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %lor.lhs.false36
  %call43 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %9) #6
  %s45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  store %struct.bignum_st* %call43, %struct.bignum_st** %s45, align 8, !tbaa !40
  %cmp46 = icmp eq %struct.bignum_st* %call43, null
  br i1 %cmp46, label %err, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %land.lhs.true40, %lor.lhs.false36
  %B = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 8
  %10 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !20
  %cmp49.not = icmp eq %struct.bignum_st* %10, null
  br i1 %cmp49.not, label %lor.lhs.false57, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %lor.lhs.false47
  %call53 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %10) #6
  %B55 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  store %struct.bignum_st* %call53, %struct.bignum_st** %B55, align 8, !tbaa !41
  %cmp56 = icmp eq %struct.bignum_st* %call53, null
  br i1 %cmp56, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %land.lhs.true50, %lor.lhs.false47
  %A = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 9
  %11 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !21
  %cmp59.not = icmp eq %struct.bignum_st* %11, null
  br i1 %cmp59.not, label %lor.lhs.false67, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %lor.lhs.false57
  %call63 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %11) #6
  %A65 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  store %struct.bignum_st* %call63, %struct.bignum_st** %A65, align 8, !tbaa !42
  %cmp66 = icmp eq %struct.bignum_st* %call63, null
  br i1 %cmp66, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true60, %lor.lhs.false57
  %a = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 10
  %12 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !22
  %cmp69.not = icmp eq %struct.bignum_st* %12, null
  br i1 %cmp69.not, label %lor.lhs.false77, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %lor.lhs.false67
  %call73 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %12) #6
  %a75 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 10
  store %struct.bignum_st* %call73, %struct.bignum_st** %a75, align 8, !tbaa !43
  %cmp76 = icmp eq %struct.bignum_st* %call73, null
  br i1 %cmp76, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %land.lhs.true70, %lor.lhs.false67
  %v = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 12
  %13 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !24
  %cmp79.not = icmp eq %struct.bignum_st* %13, null
  br i1 %cmp79.not, label %lor.lhs.false87, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %call83 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %13) #6
  %v85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  store %struct.bignum_st* %call83, %struct.bignum_st** %v85, align 8, !tbaa !45
  %cmp86 = icmp eq %struct.bignum_st* %call83, null
  br i1 %cmp86, label %err, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %land.lhs.true80, %lor.lhs.false77
  %b = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 11
  %14 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !23
  %cmp89.not = icmp eq %struct.bignum_st* %14, null
  br i1 %cmp89.not, label %if.end98, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %lor.lhs.false87
  %call93 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %14) #6
  %b95 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 11
  store %struct.bignum_st* %call93, %struct.bignum_st** %b95, align 8, !tbaa !44
  %cmp96 = icmp eq %struct.bignum_st* %call93, null
  br i1 %cmp96, label %err, label %if.end98

if.end98:                                         ; preds = %land.lhs.true90, %lor.lhs.false87
  %login = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 4
  %15 = load i8*, i8** %login, align 8, !tbaa !4
  %cmp100.not = icmp eq i8* %15, null
  br i1 %cmp100.not, label %if.end109, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.end98
  %call104 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %15, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 130) #6
  %login106 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  store i8* %call104, i8** %login106, align 8, !tbaa !26
  %cmp107 = icmp eq i8* %call104, null
  br i1 %cmp107, label %err, label %if.end109

if.end109:                                        ; preds = %land.lhs.true101, %if.end98
  %info = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 13
  %16 = load i8*, i8** %info, align 8, !tbaa !16
  %cmp111.not = icmp eq i8* %16, null
  br i1 %cmp111.not, label %if.end120, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %if.end109
  %call115 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #6
  %info117 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 13
  store i8* %call115, i8** %info117, align 8, !tbaa !37
  %cmp118 = icmp eq i8* %call115, null
  br i1 %cmp118, label %err, label %if.end120

if.end120:                                        ; preds = %land.lhs.true112, %if.end109
  %srp_Mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %0, i64 0, i32 65, i32 15
  %17 = load i64, i64* %srp_Mask, align 8, !tbaa !56
  %srp_Mask123 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 15
  store i64 %17, i64* %srp_Mask123, align 8, !tbaa !57
  br label %cleanup

err:                                              ; preds = %land.lhs.true112, %land.lhs.true101, %land.lhs.true, %land.lhs.true29, %land.lhs.true40, %land.lhs.true50, %land.lhs.true60, %land.lhs.true70, %land.lhs.true80, %land.lhs.true90
  %.sink211 = phi i32 [ 126, %land.lhs.true90 ], [ 126, %land.lhs.true80 ], [ 126, %land.lhs.true70 ], [ 126, %land.lhs.true60 ], [ 126, %land.lhs.true50 ], [ 126, %land.lhs.true40 ], [ 126, %land.lhs.true29 ], [ 126, %land.lhs.true ], [ 131, %land.lhs.true101 ], [ 136, %land.lhs.true112 ]
  %.sink = phi i32 [ 524291, %land.lhs.true90 ], [ 524291, %land.lhs.true80 ], [ 524291, %land.lhs.true70 ], [ 524291, %land.lhs.true60 ], [ 524291, %land.lhs.true50 ], [ 524291, %land.lhs.true40 ], [ 524291, %land.lhs.true29 ], [ 524291, %land.lhs.true ], [ 786691, %land.lhs.true101 ], [ 786691, %land.lhs.true112 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink211, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ssl_srp_ctx_init_intern, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #6
  %login125 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %18 = load i8*, i8** %login125, align 8, !tbaa !26
  tail call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 143) #6
  %info127 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 13
  %19 = load i8*, i8** %info127, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 144) #6
  %N129 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %20 = load %struct.bignum_st*, %struct.bignum_st** %N129, align 8, !tbaa !38
  tail call void @BN_free(%struct.bignum_st* noundef %20) #6
  %g131 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %21 = load %struct.bignum_st*, %struct.bignum_st** %g131, align 8, !tbaa !39
  tail call void @BN_free(%struct.bignum_st* noundef %21) #6
  %s133 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %22 = load %struct.bignum_st*, %struct.bignum_st** %s133, align 8, !tbaa !40
  tail call void @BN_free(%struct.bignum_st* noundef %22) #6
  %B135 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  %23 = load %struct.bignum_st*, %struct.bignum_st** %B135, align 8, !tbaa !41
  tail call void @BN_free(%struct.bignum_st* noundef %23) #6
  %A137 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  %24 = load %struct.bignum_st*, %struct.bignum_st** %A137, align 8, !tbaa !42
  tail call void @BN_free(%struct.bignum_st* noundef %24) #6
  %a139 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 10
  %25 = load %struct.bignum_st*, %struct.bignum_st** %a139, align 8, !tbaa !43
  tail call void @BN_free(%struct.bignum_st* noundef %25) #6
  %b141 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 11
  %26 = load %struct.bignum_st*, %struct.bignum_st** %b141, align 8, !tbaa !44
  tail call void @BN_free(%struct.bignum_st* noundef %26) #6
  %v143 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %27 = load %struct.bignum_st*, %struct.bignum_st** %v143, align 8, !tbaa !45
  tail call void @BN_free(%struct.bignum_st* noundef %27) #6
  %call145 = tail call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 128) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %err, %if.end120
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end120 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SRP_CTX_init(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_srp_ctx_init_intern(%struct.ssl_st* noundef %s) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_ctx_srp_ctx_init_intern(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %srp_ctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65
  %0 = bitcast %struct.srp_ctx_st* %srp_ctx to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 128) #6
  %strength = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 65, i32 14
  store i32 1024, i32* %strength, align 8, !tbaa !25
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_SRP_CTX_init(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_ctx_srp_ctx_init_intern(%struct.ssl_ctx_st* noundef %ctx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_srp_server_param_with_username_intern(%struct.ssl_st* noundef %s, i32* noundef %ad) local_unnamed_addr #0 {
entry:
  %b = alloca [48 x i8], align 16
  %0 = getelementptr inbounds [48 x i8], [48 x i8]* %b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  store i32 115, i32* %ad, align 4, !tbaa !58
  %TLS_ext_srp_username_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 1
  %1 = load i32 (%struct.ssl_st*, i32*, i8*)*, i32 (%struct.ssl_st*, i32*, i8*)** %TLS_ext_srp_username_callback, align 8, !tbaa !51
  %cmp.not = icmp eq i32 (%struct.ssl_st*, i32*, i8*)* %1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %SRP_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 0
  %2 = load i8*, i8** %SRP_cb_arg, align 8, !tbaa !49
  %call = tail call i32 %1(%struct.ssl_st* noundef nonnull %s, i32* noundef nonnull %ad, i8* noundef %2) #6
  %cmp4.not = icmp eq i32 %call, 0
  br i1 %cmp4.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 80, i32* %ad, align 4, !tbaa !58
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %cmp6 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp6, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %4 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !39
  %cmp8 = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp8, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %s11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %5 = load %struct.bignum_st*, %struct.bignum_st** %s11, align 8, !tbaa !40
  %cmp12 = icmp eq %struct.bignum_st* %5, null
  br i1 %cmp12, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %v = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %6 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !45
  %cmp15 = icmp eq %struct.bignum_st* %6, null
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %7 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %7, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !59
  %call18 = call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef nonnull %0, i64 noundef 48, i32 noundef 0) #6
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call23 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef 48, %struct.bignum_st* noundef null) #6
  %b25 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 11
  store %struct.bignum_st* %call23, %struct.bignum_st** %b25, align 8, !tbaa !44
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 48) #6
  %9 = load %struct.bignum_st*, %struct.bignum_st** %b25, align 8, !tbaa !44
  %10 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %11 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !39
  %12 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !45
  %13 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx36 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %13, i64 0, i32 0
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx36, align 8, !tbaa !59
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %13, i64 0, i32 85
  %15 = load i8*, i8** %propq, align 8, !tbaa !60
  %call38 = call %struct.bignum_st* @SRP_Calc_B_ex(%struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.ossl_lib_ctx_st* noundef %14, i8* noundef %15) #6
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  store %struct.bignum_st* %call38, %struct.bignum_st** %B, align 8, !tbaa !41
  %cmp40.not = icmp eq %struct.bignum_st* %call38, null
  %cond = select i1 %cmp40.not, i32 2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end, %lor.lhs.false, %lor.lhs.false9, %lor.lhs.false13, %land.lhs.true, %if.end21
  %retval.0 = phi i32 [ %cond, %if.end21 ], [ %call, %land.lhs.true ], [ 2, %lor.lhs.false13 ], [ 2, %lor.lhs.false9 ], [ 2, %lor.lhs.false ], [ 2, %if.end ], [ 2, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SRP_Calc_B_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_srp_server_param_with_username(%struct.ssl_st* noundef %s, i32* noundef %ad) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_srp_server_param_with_username_intern(%struct.ssl_st* noundef %s, i32* noundef %ad) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_srp_server_param_pw(%struct.ssl_st* noundef %s, i8* noundef %user, i8* noundef %pass, i8* noundef %grp) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef %grp) #6
  %cmp = icmp eq %struct.SRP_gN_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %N = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !61
  %call1 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %0) #6
  %N2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  store %struct.bignum_st* %call1, %struct.bignum_st** %N2, align 8, !tbaa !38
  %g = getelementptr inbounds %struct.SRP_gN_st, %struct.SRP_gN_st* %call, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !63
  %call3 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %1) #6
  %g5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  store %struct.bignum_st* %call3, %struct.bignum_st** %g5, align 8, !tbaa !39
  %v = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !45
  tail call void @BN_clear_free(%struct.bignum_st* noundef %2) #6
  store %struct.bignum_st* null, %struct.bignum_st** %v, align 8, !tbaa !45
  %s10 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %3 = load %struct.bignum_st*, %struct.bignum_st** %s10, align 8, !tbaa !40
  tail call void @BN_clear_free(%struct.bignum_st* noundef %3) #6
  store %struct.bignum_st* null, %struct.bignum_st** %s10, align 8, !tbaa !40
  %4 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !61
  %5 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !63
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 0
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !59
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %6, i64 0, i32 85
  %8 = load i8*, i8** %propq, align 8, !tbaa !60
  %call20 = tail call i32 @SRP_create_verifier_BN_ex(i8* noundef %user, i8* noundef %pass, %struct.bignum_st** noundef nonnull %s10, %struct.bignum_st** noundef nonnull %v, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #6
  %tobool.not = icmp eq i32 %call20, 0
  %. = select i1 %tobool.not, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @SRP_create_verifier_BN_ex(i8* noundef, i8* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_srp_server_param(%struct.ssl_st* nocapture noundef %s, %struct.bignum_st* noundef %N, %struct.bignum_st* noundef %g, %struct.bignum_st* noundef %sa, %struct.bignum_st* noundef %v, i8* noundef %info) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %N, null
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %N1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %N1, align 8, !tbaa !38
  %cmp2.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %0, %struct.bignum_st* noundef nonnull %N) #6
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.then3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %N1, align 8, !tbaa !38
  tail call void @BN_free(%struct.bignum_st* noundef %1) #6
  br label %if.end15.sink.split

if.else:                                          ; preds = %if.then
  %call11 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %N) #6
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then6, %if.else
  %call11.sink = phi %struct.bignum_st* [ %call11, %if.else ], [ null, %if.then6 ]
  store %struct.bignum_st* %call11.sink, %struct.bignum_st** %N1, align 8, !tbaa !38
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then3, %entry
  %cmp16.not = icmp eq %struct.bignum_st* %g, null
  br i1 %cmp16.not, label %if.end37, label %if.then17

if.then17:                                        ; preds = %if.end15
  %g19 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g19, align 8, !tbaa !39
  %cmp20.not = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp20.not, label %if.else32, label %if.then21

if.then21:                                        ; preds = %if.then17
  %call24 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %2, %struct.bignum_st* noundef nonnull %g) #6
  %tobool25.not = icmp eq %struct.bignum_st* %call24, null
  br i1 %tobool25.not, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.then21
  %3 = load %struct.bignum_st*, %struct.bignum_st** %g19, align 8, !tbaa !39
  tail call void @BN_free(%struct.bignum_st* noundef %3) #6
  br label %if.end37.sink.split

if.else32:                                        ; preds = %if.then17
  %call33 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %g) #6
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.then26, %if.else32
  %call33.sink = phi %struct.bignum_st* [ %call33, %if.else32 ], [ null, %if.then26 ]
  store %struct.bignum_st* %call33.sink, %struct.bignum_st** %g19, align 8, !tbaa !39
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.then21, %if.end15
  %cmp38.not = icmp eq %struct.bignum_st* %sa, null
  br i1 %cmp38.not, label %if.end59, label %if.then39

if.then39:                                        ; preds = %if.end37
  %s41 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s41, align 8, !tbaa !40
  %cmp42.not = icmp eq %struct.bignum_st* %4, null
  br i1 %cmp42.not, label %if.else54, label %if.then43

if.then43:                                        ; preds = %if.then39
  %call46 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %4, %struct.bignum_st* noundef nonnull %sa) #6
  %tobool47.not = icmp eq %struct.bignum_st* %call46, null
  br i1 %tobool47.not, label %if.then48, label %if.end59

if.then48:                                        ; preds = %if.then43
  %5 = load %struct.bignum_st*, %struct.bignum_st** %s41, align 8, !tbaa !40
  tail call void @BN_free(%struct.bignum_st* noundef %5) #6
  br label %if.end59.sink.split

if.else54:                                        ; preds = %if.then39
  %call55 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %sa) #6
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then48, %if.else54
  %call55.sink = phi %struct.bignum_st* [ %call55, %if.else54 ], [ null, %if.then48 ]
  store %struct.bignum_st* %call55.sink, %struct.bignum_st** %s41, align 8, !tbaa !40
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.then43, %if.end37
  %cmp60.not = icmp eq %struct.bignum_st* %v, null
  br i1 %cmp60.not, label %if.end81, label %if.then61

if.then61:                                        ; preds = %if.end59
  %v63 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %6 = load %struct.bignum_st*, %struct.bignum_st** %v63, align 8, !tbaa !45
  %cmp64.not = icmp eq %struct.bignum_st* %6, null
  br i1 %cmp64.not, label %if.else76, label %if.then65

if.then65:                                        ; preds = %if.then61
  %call68 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %6, %struct.bignum_st* noundef nonnull %v) #6
  %tobool69.not = icmp eq %struct.bignum_st* %call68, null
  br i1 %tobool69.not, label %if.then70, label %if.end81

if.then70:                                        ; preds = %if.then65
  %7 = load %struct.bignum_st*, %struct.bignum_st** %v63, align 8, !tbaa !45
  tail call void @BN_free(%struct.bignum_st* noundef %7) #6
  br label %if.end81.sink.split

if.else76:                                        ; preds = %if.then61
  %call77 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %v) #6
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %if.then70, %if.else76
  %call77.sink = phi %struct.bignum_st* [ %call77, %if.else76 ], [ null, %if.then70 ]
  store %struct.bignum_st* %call77.sink, %struct.bignum_st** %v63, align 8, !tbaa !45
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %if.then65, %if.end59
  %cmp82.not = icmp eq i8* %info, null
  br i1 %cmp82.not, label %if.end97, label %if.then83

if.then83:                                        ; preds = %if.end81
  %info85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 13
  %8 = load i8*, i8** %info85, align 8, !tbaa !37
  %tobool86.not = icmp eq i8* %8, null
  br i1 %tobool86.not, label %if.end90, label %if.then87

if.then87:                                        ; preds = %if.then83
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 289) #6
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then83
  %call91 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %info, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 290) #6
  store i8* %call91, i8** %info85, align 8, !tbaa !37
  %cmp94 = icmp eq i8* %call91, null
  br i1 %cmp94, label %return, label %if.end97

if.end97:                                         ; preds = %if.end90, %if.end81
  %N99 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %9 = load %struct.bignum_st*, %struct.bignum_st** %N99, align 8, !tbaa !38
  %tobool100.not = icmp eq %struct.bignum_st* %9, null
  br i1 %tobool100.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end97
  %g102 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %10 = load %struct.bignum_st*, %struct.bignum_st** %g102, align 8, !tbaa !39
  %tobool103.not = icmp eq %struct.bignum_st* %10, null
  br i1 %tobool103.not, label %return, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false
  %s106 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %11 = load %struct.bignum_st*, %struct.bignum_st** %s106, align 8, !tbaa !40
  %tobool107.not = icmp eq %struct.bignum_st* %11, null
  br i1 %tobool107.not, label %return, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %v110 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %12 = load %struct.bignum_st*, %struct.bignum_st** %v110, align 8, !tbaa !45
  %tobool111.not = icmp eq %struct.bignum_st* %12, null
  %spec.select = select i1 %tobool111.not, i32 -1, i32 1
  br label %return

return:                                           ; preds = %lor.lhs.false108, %if.end97, %lor.lhs.false, %lor.lhs.false104, %if.end90
  %retval.0 = phi i32 [ -1, %if.end90 ], [ -1, %lor.lhs.false104 ], [ -1, %lor.lhs.false ], [ -1, %if.end97 ], [ %spec.select, %lor.lhs.false108 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @srp_generate_server_master_secret(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %A = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  %0 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !42
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %call = tail call i32 @SRP_Verify_A_mod_N(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !42
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  %3 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !41
  %4 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !59
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 85
  %7 = load i8*, i8** %propq, align 8, !tbaa !60
  %call8 = tail call %struct.bignum_st* @SRP_Calc_u_ex(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #6
  %cmp = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp, label %err, label %if.end10

if.end10:                                         ; preds = %if.end
  %8 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !42
  %v = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 12
  %9 = load %struct.bignum_st*, %struct.bignum_st** %v, align 8, !tbaa !45
  %b = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 11
  %10 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !44
  %11 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %call17 = tail call %struct.bignum_st* @SRP_Calc_server_key(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef nonnull %call8, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11) #6
  %cmp18 = icmp eq %struct.bignum_st* %call17, null
  br i1 %cmp18, label %err, label %if.end20

if.end20:                                         ; preds = %if.end10
  %call21 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call17) #6
  %add = add nsw i32 %call21, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call22 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 317) #6
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.srp_generate_server_master_secret, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end26:                                         ; preds = %if.end20
  %call27 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %call17, i8* noundef nonnull %call22) #6
  %call29 = tail call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call22, i64 noundef %conv, i32 noundef 1) #6
  br label %err

err:                                              ; preds = %if.end10, %if.end, %entry, %if.end26, %if.then25
  %K.0 = phi %struct.bignum_st* [ null, %if.end ], [ null, %if.end10 ], [ %call17, %if.then25 ], [ %call17, %if.end26 ], [ null, %entry ]
  %u.0 = phi %struct.bignum_st* [ null, %if.end ], [ %call8, %if.end10 ], [ %call8, %if.then25 ], [ %call8, %if.end26 ], [ null, %entry ]
  %ret.0 = phi i32 [ -1, %if.end ], [ -1, %if.end10 ], [ -1, %if.then25 ], [ %call29, %if.end26 ], [ -1, %entry ]
  tail call void @BN_clear_free(%struct.bignum_st* noundef %K.0) #6
  tail call void @BN_clear_free(%struct.bignum_st* noundef %u.0) #6
  ret i32 %ret.0
}

declare i32 @SRP_Verify_A_mod_N(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SRP_Calc_u_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SRP_Calc_server_key(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ssl_generate_master_secret(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @srp_generate_client_master_secret(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  %0 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !41
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %call = tail call i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %A = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  %2 = load %struct.bignum_st*, %struct.bignum_st** %A, align 8, !tbaa !42
  %3 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !41
  %4 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !59
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 85
  %7 = load i8*, i8** %propq, align 8, !tbaa !60
  %call8 = tail call %struct.bignum_st* @SRP_Calc_u_ex(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #6
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %SRP_give_srp_client_pwd_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 3
  %8 = load i8* (%struct.ssl_st*, i8*)*, i8* (%struct.ssl_st*, i8*)** %SRP_give_srp_client_pwd_callback, align 8, !tbaa !55
  %cmp12 = icmp eq i8* (%struct.ssl_st*, i8*)* %8, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false, %entry
  %u.0 = phi %struct.bignum_st* [ null, %entry ], [ null, %lor.lhs.false ], [ %call8, %lor.lhs.false10 ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.srp_generate_client_master_secret, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #6
  br label %err

if.end:                                           ; preds = %lor.lhs.false10
  %SRP_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 0
  %9 = load i8*, i8** %SRP_cb_arg, align 8, !tbaa !49
  %call16 = tail call i8* %8(%struct.ssl_st* noundef nonnull %s, i8* noundef %9) #6
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.srp_generate_client_master_secret, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 234, i8* noundef null) #6
  br label %err

if.end19:                                         ; preds = %if.end
  %s21 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 7
  %10 = load %struct.bignum_st*, %struct.bignum_st** %s21, align 8, !tbaa !40
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %11 = load i8*, i8** %login, align 8, !tbaa !26
  %12 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx24 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 0
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx24, align 8, !tbaa !59
  %propq26 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %12, i64 0, i32 85
  %14 = load i8*, i8** %propq26, align 8, !tbaa !60
  %call27 = tail call %struct.bignum_st* @SRP_Calc_x_ex(%struct.bignum_st* noundef %10, i8* noundef %11, i8* noundef nonnull %call16, %struct.ossl_lib_ctx_st* noundef %13, i8* noundef %14) #6
  %cmp28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %cmp28, label %if.then42, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end19
  %15 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %16 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !41
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %17 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !39
  %a = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 10
  %18 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !43
  %19 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx37 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 0
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx37, align 8, !tbaa !59
  %propq39 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %19, i64 0, i32 85
  %21 = load i8*, i8** %propq39, align 8, !tbaa !60
  %call40 = tail call %struct.bignum_st* @SRP_Calc_client_key_ex(%struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef nonnull %call27, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef nonnull %call8, %struct.ossl_lib_ctx_st* noundef %20, i8* noundef %21) #6
  %cmp41 = icmp eq %struct.bignum_st* %call40, null
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false29, %if.end19
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.srp_generate_client_master_secret, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #6
  br label %err

if.end43:                                         ; preds = %lor.lhs.false29
  %call44 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call40) #6
  %add = add nsw i32 %call44, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %call45 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 367) #6
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.srp_generate_client_master_secret, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #6
  br label %err

if.end49:                                         ; preds = %if.end43
  %call50 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef nonnull %call40, i8* noundef nonnull %call45) #6
  %call52 = tail call i32 @ssl_generate_master_secret(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call45, i64 noundef %conv, i32 noundef 1) #6
  br label %err

err:                                              ; preds = %if.end49, %if.then48, %if.then42, %if.then18, %if.then
  %x.0 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.then18 ], [ %call27, %if.then42 ], [ %call27, %if.then48 ], [ %call27, %if.end49 ]
  %u.1 = phi %struct.bignum_st* [ %u.0, %if.then ], [ %call8, %if.then18 ], [ %call8, %if.then42 ], [ %call8, %if.then48 ], [ %call8, %if.end49 ]
  %K.1 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.then18 ], [ null, %if.then42 ], [ %call40, %if.then48 ], [ %call40, %if.end49 ]
  %ret.0 = phi i32 [ -1, %if.then ], [ -1, %if.then18 ], [ -1, %if.then42 ], [ -1, %if.then48 ], [ %call52, %if.end49 ]
  %passwd.0 = phi i8* [ null, %if.then ], [ null, %if.then18 ], [ %call16, %if.then42 ], [ %call16, %if.then48 ], [ %call16, %if.end49 ]
  tail call void @BN_clear_free(%struct.bignum_st* noundef %K.1) #6
  tail call void @BN_clear_free(%struct.bignum_st* noundef %x.0) #6
  %cmp53.not = icmp eq i8* %passwd.0, null
  br i1 %cmp53.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %err
  %call56 = tail call i64 @strlen(i8* noundef nonnull %passwd.0) #9
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %passwd.0, i64 noundef %call56, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 378) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %err
  tail call void @BN_clear_free(%struct.bignum_st* noundef %u.1) #6
  ret i32 %ret.0
}

declare i32 @SRP_Verify_B_mod_N(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SRP_Calc_x_ex(%struct.bignum_st* noundef, i8* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @SRP_Calc_client_key_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @srp_verify_server_param(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %0 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !64
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !65
  %call = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #6
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %B = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 8
  %2 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !66
  %3 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !65
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #6
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load %struct.bignum_st*, %struct.bignum_st** %B, align 8, !tbaa !66
  %call6 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %4) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.srp_verify_server_param, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 390, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !65
  %call8 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #6
  %strength = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 14
  %6 = load i32, i32* %strength, align 8, !tbaa !67
  %cmp9 = icmp slt i32 %call8, %6
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 397, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.srp_verify_server_param, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 71, i32 noundef 241, i8* noundef null) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %SRP_verify_param_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 2
  %7 = load i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, i8*)** %SRP_verify_param_callback, align 8, !tbaa !68
  %tobool12.not = icmp eq i32 (%struct.ssl_st*, i8*)* %7, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %SRP_cb_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 0
  %8 = load i8*, i8** %SRP_cb_arg, align 8, !tbaa !69
  %call15 = tail call i32 %7(%struct.ssl_st* noundef nonnull %s, i8* noundef %8) #6
  %cmp16 = icmp slt i32 %call15, 1
  br i1 %cmp16, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.then13
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.srp_verify_server_param, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 71, i32 noundef 234, i8* noundef null) #6
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %9 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !64
  %10 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !65
  %call21 = tail call i8* @SRP_check_known_gN_param(%struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10) #6
  %tobool22.not = icmp eq i8* %call21, null
  br i1 %tobool22.not, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.else
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.srp_verify_server_param, i64 0, i64 0)) #6
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 71, i32 noundef 241, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else, %if.then23, %if.then17, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then17 ], [ 0, %if.then23 ], [ 1, %if.else ], [ 1, %if.then13 ]
  ret i32 %retval.0
}

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i8* @SRP_check_known_gN_param(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_srp_calc_a_param_intern(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %rnd = alloca [48 x i8], align 16
  %0 = getelementptr inbounds [48 x i8], [48 x i8]* %rnd, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !59
  %call = call i32 @RAND_priv_bytes_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef nonnull %0, i64 noundef 48, i32 noundef 0) #6
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 10
  %3 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !43
  %call2 = call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %0, i32 noundef 48, %struct.bignum_st* noundef %3) #6
  store %struct.bignum_st* %call2, %struct.bignum_st** %a, align 8, !tbaa !43
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 48) #6
  %4 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !43
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %5 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %6 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !39
  %call10 = call %struct.bignum_st* @SRP_Calc_A(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.bignum_st* noundef %6) #6
  %A = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 9
  store %struct.bignum_st* %call10, %struct.bignum_st** %A, align 8, !tbaa !42
  %tobool.not = icmp ne %struct.bignum_st* %call10, null
  %. = zext i1 %tobool.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.bignum_st* @SRP_Calc_A(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SRP_Calc_A_param(%struct.ssl_st* nocapture noundef %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ssl_srp_calc_a_param_intern(%struct.ssl_st* noundef %s) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @SSL_get_srp_g(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #5 {
entry:
  %g = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 6
  %0 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !39
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %g4 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 65, i32 6
  %2 = load %struct.bignum_st*, %struct.bignum_st** %g4, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.bignum_st* [ %2, %if.end ], [ %0, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @SSL_get_srp_N(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #5 {
entry:
  %N = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %N, align 8, !tbaa !38
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %N4 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 65, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %N4, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.bignum_st* [ %2, %if.end ], [ %0, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_srp_username(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #5 {
entry:
  %login = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 4
  %0 = load i8*, i8** %login, align 8, !tbaa !26
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %login4 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 65, i32 4
  %2 = load i8*, i8** %login4, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_get_srp_userinfo(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #5 {
entry:
  %info = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 106, i32 13
  %0 = load i8*, i8** %info, align 8, !tbaa !37
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !47
  %info4 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 65, i32 13
  %2 = load i8*, i8** %info4, align 8, !tbaa !16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_username(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 79, i64 noundef 0, i8* noundef %name) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_password(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %password) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 81, i64 noundef 0, i8* noundef %password) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_strength(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %strength) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %strength to i64
  %call = tail call i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 80, i64 noundef %conv, i8* noundef null) #6
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_verify_param_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 (%struct.ssl_st*, i8*)* %cb to void ()*
  %call = tail call i64 @ssl3_ctx_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 76, void ()* noundef %0) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @ssl3_ctx_callback_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, void ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_cb_arg(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @ssl3_ctx_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 78, i64 noundef 0, i8* noundef %arg) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_username_callback(%struct.ssl_ctx_st* noundef %ctx, i32 (%struct.ssl_st*, i32*, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32 (%struct.ssl_st*, i32*, i8*)* %cb to void ()*
  %call = tail call i64 @ssl3_ctx_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 75, void ()* noundef %0) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_srp_client_pwd_callback(%struct.ssl_ctx_st* noundef %ctx, i8* (%struct.ssl_st*, i8*)* noundef %cb) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* (%struct.ssl_st*, i8*)* %cb to void ()*
  %call = tail call i64 @ssl3_ctx_callback_ctrl(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 77, void ()* noundef %0) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 824}
!5 = !{!"ssl_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !6, i64 72, !10, i64 80, !9, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !11, i64 120, !7, i64 164, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !12, i64 240, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !9, i64 312, !10, i64 320, !10, i64 324, !10, i64 328, !9, i64 336, !6, i64 344, !10, i64 352, !6, i64 360, !6, i64 368, !10, i64 376, !9, i64 384, !7, i64 392, !6, i64 424, !6, i64 432, !6, i64 440, !10, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !13, i64 536, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !14, i64 792, !15, i64 920, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !10, i64 984, !10, i64 988, !6, i64 992, !6, i64 1000, !9, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !9, i64 1040, !6, i64 1048, !6, i64 1056, !10, i64 1064, !6, i64 1072, !6, i64 1080, !6, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !6, i64 1568, !6, i64 1576, !9, i64 1584, !9, i64 1592, !10, i64 1600, !10, i64 1604, !10, i64 1608, !10, i64 1612}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!12 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!13 = !{!"", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !10, i64 72, !7, i64 76, !9, i64 80, !6, i64 88, !9, i64 96, !6, i64 104, !6, i64 112, !9, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !7, i64 192}
!14 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !10, i64 112, !9, i64 120}
!15 = !{!"dane_ctx_st", !6, i64 0, !6, i64 8, !7, i64 16, !9, i64 24}
!16 = !{!5, !6, i64 896}
!17 = !{!5, !6, i64 832}
!18 = !{!5, !6, i64 840}
!19 = !{!5, !6, i64 848}
!20 = !{!5, !6, i64 856}
!21 = !{!5, !6, i64 864}
!22 = !{!5, !6, i64 872}
!23 = !{!5, !6, i64 880}
!24 = !{!5, !6, i64 888}
!25 = !{!5, !10, i64 904}
!26 = !{!27, !6, i64 3056}
!27 = !{!"ssl_st", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !28, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !9, i64 152, !9, i64 160, !29, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !10, i64 1232, !6, i64 1240, !32, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !10, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !9, i64 2352, !6, i64 2360, !7, i64 2368, !9, i64 2400, !10, i64 2408, !6, i64 2416, !6, i64 2424, !10, i64 2432, !10, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !9, i64 2488, !12, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !9, i64 2536, !10, i64 2544, !10, i64 2548, !10, i64 2552, !9, i64 2560, !10, i64 2568, !10, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !33, i64 2600, !6, i64 2904, !10, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !10, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !10, i64 2976, !10, i64 2980, !7, i64 2984, !10, i64 2988, !6, i64 2992, !9, i64 3000, !10, i64 3008, !6, i64 3016, !14, i64 3024, !6, i64 3152, !35, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !9, i64 7480, !10, i64 7488, !10, i64 7492, !10, i64 7496, !6, i64 7504, !6, i64 7512, !9, i64 7520, !6, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !9, i64 7600}
!28 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !7, i64 52, !7, i64 56}
!29 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !10, i64 216, !10, i64 220, !6, i64 224, !6, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !7, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !30, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !10, i64 984, !10, i64 988, !6, i64 992, !9, i64 1000, !6, i64 1008, !9, i64 1016, !10, i64 1024, !7, i64 1028, !7, i64 1029, !31, i64 1030, !6, i64 1032}
!30 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !10, i64 280, !6, i64 288, !6, i64 296, !10, i64 304, !6, i64 312, !9, i64 320, !6, i64 328, !9, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !10, i64 368, !9, i64 376, !6, i64 384, !10, i64 392, !6, i64 400, !9, i64 408, !6, i64 416, !9, i64 424, !6, i64 432, !9, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !9, i64 480, !9, i64 488, !6, i64 496, !7, i64 504, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552}
!31 = !{!"short", !7, i64 0}
!32 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !9, i64 56}
!33 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !31, i64 72, !10, i64 76, !34, i64 80, !10, i64 112, !10, i64 116, !9, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !9, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !9, i64 232, !6, i64 240, !9, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !6, i64 272, !9, i64 280, !10, i64 288, !7, i64 292, !10, i64 296}
!34 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!35 = !{!"record_layer_st", !6, i64 0, !10, i64 8, !10, i64 12, !9, i64 16, !9, i64 24, !36, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !10, i64 4232, !9, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !10, i64 4272, !10, i64 4276, !6, i64 4280}
!36 = !{!"ssl3_buffer_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40}
!37 = !{!27, !6, i64 3128}
!38 = !{!27, !6, i64 3064}
!39 = !{!27, !6, i64 3072}
!40 = !{!27, !6, i64 3080}
!41 = !{!27, !6, i64 3088}
!42 = !{!27, !6, i64 3096}
!43 = !{!27, !6, i64 3104}
!44 = !{!27, !6, i64 3112}
!45 = !{!27, !6, i64 3120}
!46 = !{!27, !10, i64 3136}
!47 = !{!27, !6, i64 2472}
!48 = !{!5, !6, i64 792}
!49 = !{!27, !6, i64 3024}
!50 = !{!5, !6, i64 800}
!51 = !{!27, !6, i64 3032}
!52 = !{!5, !6, i64 808}
!53 = !{!27, !6, i64 3040}
!54 = !{!5, !6, i64 816}
!55 = !{!27, !6, i64 3048}
!56 = !{!5, !9, i64 912}
!57 = !{!27, !9, i64 3144}
!58 = !{!10, !10, i64 0}
!59 = !{!5, !6, i64 0}
!60 = !{!5, !6, i64 1088}
!61 = !{!62, !6, i64 16}
!62 = !{!"SRP_gN_st", !6, i64 0, !6, i64 8, !6, i64 16}
!63 = !{!62, !6, i64 8}
!64 = !{!14, !6, i64 48}
!65 = !{!14, !6, i64 40}
!66 = !{!14, !6, i64 64}
!67 = !{!14, !10, i64 112}
!68 = !{!14, !6, i64 16}
!69 = !{!14, !6, i64 0}
