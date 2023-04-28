; ModuleID = 'ssl/record/ssl3_record_tls13.c'
source_filename = "ssl/record/ssl3_record_tls13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { {}*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
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
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.ssl_mac_buf_st = type { i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ssl/record/ssl3_record_tls13.c\00", align 1
@__func__.tls13_enc = private unnamed_addr constant [10 x i8] c"tls13_enc\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @tls13_enc(%struct.ssl_st* noundef %s, %struct.ssl3_record_st* nocapture noundef %recs, i64 noundef %n_recs, i32 noundef %sending, %struct.ssl_mac_buf_st* nocapture noundef readnone %mac, i64 noundef %macsize) local_unnamed_addr #0 {
entry:
  %iv = alloca [16 x i8], align 16
  %recheader = alloca [5 x i8], align 1
  %hdrlen = alloca i64, align 8
  %lenu = alloca i32, align 4
  %lenf = alloca i32, align 4
  %wpkt = alloca %struct.wpacket_st, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %1 = getelementptr inbounds [5 x i8], [5 x i8]* %recheader, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %1) #4
  %2 = bitcast i64* %hdrlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %3 = bitcast i32* %lenu to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = bitcast i32* %lenf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = bitcast %struct.wpacket_st* %wpkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #4
  %cmp.not = icmp eq i64 %n_recs, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %sending, 0
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 47, i64 0
  %arraydecay2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %arraydecay3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 42, i64 0
  %arraydecay5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 0
  %ctx.0.in = select i1 %tobool.not, %struct.evp_cipher_ctx_st** %enc_read_ctx, %struct.evp_cipher_ctx_st** %enc_write_ctx
  %staticiv.0 = select i1 %tobool.not, i8* %arraydecay3, i8* %arraydecay
  %seq.0 = select i1 %tobool.not, i8* %arraydecay5, i8* %arraydecay2
  %ctx.0 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx.0.in, align 8, !tbaa !4
  %cmp7 = icmp eq %struct.evp_cipher_ctx_st* %ctx.0, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 1
  %6 = load i32, i32* %type, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %6, 21
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 5
  %7 = load i8*, i8** %data, align 8, !tbaa !12
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 6
  %8 = load i8*, i8** %input, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 2
  %9 = load i64, i64* %length, align 8, !tbaa !14
  %call = tail call i8* @memmove(i8* noundef %7, i8* noundef %8, i64 noundef %9) #5
  %10 = load i8*, i8** %data, align 8, !tbaa !12
  store i8* %10, i8** %input, align 8, !tbaa !13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0) #5
  %conv = sext i32 %call13 to i64
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %11 = load i32, i32* %early_data_state, align 4, !tbaa !15
  %.off = add i32 %11, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then20, label %if.else44

if.then20:                                        ; preds = %if.end12
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %12 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !28
  %cmp21.not = icmp eq %struct.ssl_session_st* %12, null
  br i1 %cmp21.not, label %if.else28, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %12, i64 0, i32 26, i32 5
  %13 = load i32, i32* %max_early_data, align 4, !tbaa !29
  %cmp24.not = icmp eq i32 %13, 0
  br i1 %cmp24.not, label %if.else28, label %if.end55.sink.split

if.else28:                                        ; preds = %land.lhs.true, %if.then20
  %psksession = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 56
  %14 = load %struct.ssl_session_st*, %struct.ssl_session_st** %psksession, align 8, !tbaa !32
  %cmp29.not = icmp eq %struct.ssl_session_st* %14, null
  br i1 %cmp29.not, label %if.then38, label %land.rhs

land.rhs:                                         ; preds = %if.else28
  %max_early_data33 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %14, i64 0, i32 26, i32 5
  %15 = load i32, i32* %max_early_data33, align 4, !tbaa !29
  %cmp34.not = icmp eq i32 %15, 0
  br i1 %cmp34.not, label %if.then38, label %if.end55.sink.split

if.then38:                                        ; preds = %if.else28, %land.rhs
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.else44:                                        ; preds = %if.end12
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %16 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !33
  %cmp45.not = icmp eq %struct.ssl_cipher_st* %16, null
  br i1 %cmp45.not, label %if.then49, label %if.end55

if.then49:                                        ; preds = %if.else44
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end55.sink.split:                              ; preds = %land.rhs, %land.lhs.true
  %.sink341 = phi %struct.ssl_session_st* [ %12, %land.lhs.true ], [ %14, %land.rhs ]
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %.sink341, i64 0, i32 20
  %17 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !34
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else44
  %.sink = phi %struct.ssl_cipher_st* [ %16, %if.else44 ], [ %17, %if.end55.sink.split ]
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %.sink, i64 0, i32 6
  %alg_enc.0 = load i32, i32* %algorithm_enc, align 4, !tbaa !35
  %and = and i32 %alg_enc.0, 245760
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.else71, label %if.then57

if.then57:                                        ; preds = %if.end55
  %and58 = and i32 %alg_enc.0, 196608
  %tobool59.not = icmp eq i32 %and58, 0
  %. = select i1 %tobool59.not, i64 16, i64 8
  br i1 %tobool.not, label %if.then84, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.then57
  %conv65 = trunc i64 %. to i32
  %call66 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i32 noundef 17, i32 noundef %conv65, i8* noundef null) #5
  %cmp67 = icmp slt i32 %call66, 1
  br i1 %cmp67, label %if.then69, label %if.end91

if.then69:                                        ; preds = %land.lhs.true64
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.else71:                                        ; preds = %if.end55
  %18 = and i32 %alg_enc.0, 536576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %if.else79, label %if.end82

if.else79:                                        ; preds = %if.else71
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end82:                                         ; preds = %if.else71
  br i1 %tobool.not, label %if.then84, label %if.end91

if.then84:                                        ; preds = %if.then57, %if.end82
  %taglen.1337 = phi i64 [ 16, %if.end82 ], [ %., %if.then57 ]
  %length85 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 2
  %20 = load i64, i64* %length85, align 8, !tbaa !14
  %add = or i64 %taglen.1337, 1
  %cmp86 = icmp ult i64 %20, %add
  br i1 %cmp86, label %cleanup, label %if.end89

if.end89:                                         ; preds = %if.then84
  %sub = sub i64 %20, %taglen.1337
  store i64 %sub, i64* %length85, align 8, !tbaa !14
  br label %if.end91

if.end91:                                         ; preds = %land.lhs.true64, %if.end89, %if.end82
  %taglen.1336 = phi i64 [ %taglen.1337, %if.end89 ], [ 16, %if.end82 ], [ %., %land.lhs.true64 ]
  %cmp92 = icmp ult i32 %call13, 8
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end91
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end95:                                         ; preds = %if.end91
  %sub96 = add nsw i64 %conv, -8
  %call98 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %staticiv.0, i64 noundef %sub96) #5
  %arrayidx102 = getelementptr inbounds i8, i8* %staticiv.0, i64 %sub96
  %21 = load i8, i8* %arrayidx102, align 1, !tbaa !37
  %22 = load i8, i8* %seq.0, align 1, !tbaa !37
  %xor333 = xor i8 %22, %21
  %arrayidx108 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %sub96
  store i8 %xor333, i8* %arrayidx108, align 1, !tbaa !37
  %add101.1 = add nsw i64 %conv, -7
  %arrayidx102.1 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.1
  %23 = load i8, i8* %arrayidx102.1, align 1, !tbaa !37
  %arrayidx104.1 = getelementptr inbounds i8, i8* %seq.0, i64 1
  %24 = load i8, i8* %arrayidx104.1, align 1, !tbaa !37
  %xor333.1 = xor i8 %24, %23
  %arrayidx108.1 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.1
  store i8 %xor333.1, i8* %arrayidx108.1, align 1, !tbaa !37
  %add101.2 = add nsw i64 %conv, -6
  %arrayidx102.2 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.2
  %25 = load i8, i8* %arrayidx102.2, align 1, !tbaa !37
  %arrayidx104.2 = getelementptr inbounds i8, i8* %seq.0, i64 2
  %26 = load i8, i8* %arrayidx104.2, align 1, !tbaa !37
  %xor333.2 = xor i8 %26, %25
  %arrayidx108.2 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.2
  store i8 %xor333.2, i8* %arrayidx108.2, align 1, !tbaa !37
  %add101.3 = add nsw i64 %conv, -5
  %arrayidx102.3 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.3
  %27 = load i8, i8* %arrayidx102.3, align 1, !tbaa !37
  %arrayidx104.3 = getelementptr inbounds i8, i8* %seq.0, i64 3
  %28 = load i8, i8* %arrayidx104.3, align 1, !tbaa !37
  %xor333.3 = xor i8 %28, %27
  %arrayidx108.3 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.3
  store i8 %xor333.3, i8* %arrayidx108.3, align 1, !tbaa !37
  %add101.4 = add nsw i64 %conv, -4
  %arrayidx102.4 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.4
  %29 = load i8, i8* %arrayidx102.4, align 1, !tbaa !37
  %arrayidx104.4 = getelementptr inbounds i8, i8* %seq.0, i64 4
  %30 = load i8, i8* %arrayidx104.4, align 1, !tbaa !37
  %xor333.4 = xor i8 %30, %29
  %arrayidx108.4 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.4
  store i8 %xor333.4, i8* %arrayidx108.4, align 1, !tbaa !37
  %add101.5 = add nsw i64 %conv, -3
  %arrayidx102.5 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.5
  %31 = load i8, i8* %arrayidx102.5, align 1, !tbaa !37
  %arrayidx104.5 = getelementptr inbounds i8, i8* %seq.0, i64 5
  %32 = load i8, i8* %arrayidx104.5, align 1, !tbaa !37
  %xor333.5 = xor i8 %32, %31
  %arrayidx108.5 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.5
  store i8 %xor333.5, i8* %arrayidx108.5, align 1, !tbaa !37
  %add101.6 = add nsw i64 %conv, -2
  %arrayidx102.6 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.6
  %33 = load i8, i8* %arrayidx102.6, align 1, !tbaa !37
  %arrayidx104.6 = getelementptr inbounds i8, i8* %seq.0, i64 6
  %34 = load i8, i8* %arrayidx104.6, align 1, !tbaa !37
  %xor333.6 = xor i8 %34, %33
  %arrayidx108.6 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.6
  store i8 %xor333.6, i8* %arrayidx108.6, align 1, !tbaa !37
  %add101.7 = add nsw i64 %conv, -1
  %arrayidx102.7 = getelementptr inbounds i8, i8* %staticiv.0, i64 %add101.7
  %35 = load i8, i8* %arrayidx102.7, align 1, !tbaa !37
  %arrayidx104.7 = getelementptr inbounds i8, i8* %seq.0, i64 7
  %36 = load i8, i8* %arrayidx104.7, align 1, !tbaa !37
  %xor333.7 = xor i8 %36, %35
  %arrayidx108.7 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 %add101.7
  store i8 %xor333.7, i8* %arrayidx108.7, align 1, !tbaa !37
  %inc115 = add i8 %36, 1
  store i8 %inc115, i8* %arrayidx104.7, align 1, !tbaa !37
  %cmp119.not = icmp eq i8 %inc115, 0
  br i1 %cmp119.not, label %for.cond109.1, label %if.end128, !llvm.loop !38

for.cond109.1:                                    ; preds = %if.end95
  %inc115.1 = add i8 %34, 1
  store i8 %inc115.1, i8* %arrayidx104.6, align 1, !tbaa !37
  %cmp119.not.1 = icmp eq i8 %inc115.1, 0
  br i1 %cmp119.not.1, label %for.cond109.2, label %if.end128, !llvm.loop !38

for.cond109.2:                                    ; preds = %for.cond109.1
  %inc115.2 = add i8 %32, 1
  store i8 %inc115.2, i8* %arrayidx104.5, align 1, !tbaa !37
  %cmp119.not.2 = icmp eq i8 %inc115.2, 0
  br i1 %cmp119.not.2, label %for.cond109.3, label %if.end128, !llvm.loop !38

for.cond109.3:                                    ; preds = %for.cond109.2
  %inc115.3 = add i8 %30, 1
  store i8 %inc115.3, i8* %arrayidx104.4, align 1, !tbaa !37
  %cmp119.not.3 = icmp eq i8 %inc115.3, 0
  br i1 %cmp119.not.3, label %for.cond109.4, label %if.end128, !llvm.loop !38

for.cond109.4:                                    ; preds = %for.cond109.3
  %inc115.4 = add i8 %28, 1
  store i8 %inc115.4, i8* %arrayidx104.3, align 1, !tbaa !37
  %cmp119.not.4 = icmp eq i8 %inc115.4, 0
  br i1 %cmp119.not.4, label %for.cond109.5, label %if.end128, !llvm.loop !38

for.cond109.5:                                    ; preds = %for.cond109.4
  %inc115.5 = add i8 %26, 1
  store i8 %inc115.5, i8* %arrayidx104.2, align 1, !tbaa !37
  %cmp119.not.5 = icmp eq i8 %inc115.5, 0
  br i1 %cmp119.not.5, label %for.cond109.6, label %if.end128, !llvm.loop !38

for.cond109.6:                                    ; preds = %for.cond109.5
  %inc115.6 = add i8 %24, 1
  store i8 %inc115.6, i8* %arrayidx104.1, align 1, !tbaa !37
  %cmp119.not.6 = icmp eq i8 %inc115.6, 0
  br i1 %cmp119.not.6, label %for.cond109.7, label %if.end128, !llvm.loop !38

for.cond109.7:                                    ; preds = %for.cond109.6
  %inc115.7 = add i8 %22, 1
  store i8 %inc115.7, i8* %seq.0, align 1, !tbaa !37
  %cmp119.not.7 = icmp eq i8 %inc115.7, 0
  br i1 %cmp119.not.7, label %cleanup, label %if.end128, !llvm.loop !38

if.end128:                                        ; preds = %for.cond109.7, %for.cond109.6, %for.cond109.5, %for.cond109.4, %for.cond109.3, %for.cond109.2, %for.cond109.1, %if.end95
  %call130 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef nonnull %0, i32 noundef %sending) #5
  %cmp131 = icmp slt i32 %call130, 1
  br i1 %cmp131, label %if.then142, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.end128
  br i1 %tobool.not, label %land.lhs.true135, label %if.end143

land.lhs.true135:                                 ; preds = %lor.lhs.false133
  %conv136 = trunc i64 %taglen.1336 to i32
  %data137 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 5
  %37 = load i8*, i8** %data137, align 8, !tbaa !12
  %length138 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 2
  %38 = load i64, i64* %length138, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %38
  %call139 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i32 noundef 17, i32 noundef %conv136, i8* noundef %add.ptr) #5
  %cmp140 = icmp slt i32 %call139, 1
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %land.lhs.true135, %if.end128
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end143:                                        ; preds = %land.lhs.true135, %lor.lhs.false133
  %call145 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %wpkt, i8* noundef nonnull %1, i64 noundef 5, i64 noundef 0) #5
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then169, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end143
  %39 = load i32, i32* %type, align 4, !tbaa !8
  %call149 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef %39, i64 noundef 1) #5
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then169, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false147
  %rec_version = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 0
  %40 = load i32, i32* %rec_version, align 8, !tbaa !40
  %call152 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef %40, i64 noundef 2) #5
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then169, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %length155 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 2
  %41 = load i64, i64* %length155, align 8, !tbaa !14
  %add156 = add i64 %41, %taglen.1336
  %conv157 = trunc i64 %add156 to i32
  %call158 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %wpkt, i32 noundef %conv157, i64 noundef 2) #5
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then169, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false154
  %call161 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %wpkt, i64* noundef nonnull %hdrlen) #5
  %tobool162 = icmp eq i32 %call161, 0
  %42 = load i64, i64* %hdrlen, align 8
  %cmp164 = icmp ne i64 %42, 5
  %or.cond = select i1 %tobool162, i1 true, i1 %cmp164
  br i1 %or.cond, label %if.then169, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false160
  %call167 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %wpkt) #5
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.then169, label %if.end170

if.then169:                                       ; preds = %lor.lhs.false166, %lor.lhs.false160, %lor.lhs.false154, %lor.lhs.false151, %lor.lhs.false147, %if.end143
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %wpkt) #5
  br label %cleanup

if.end170:                                        ; preds = %lor.lhs.false166
  br i1 %tobool56.not, label %lor.lhs.false180, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %if.end170
  %43 = load i64, i64* %length155, align 8, !tbaa !14
  %conv176 = trunc i64 %43 to i32
  %call177 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i8* noundef null, i32* noundef nonnull %lenu, i8* noundef null, i32 noundef %conv176) #5
  %cmp178 = icmp slt i32 %call177, 1
  br i1 %cmp178, label %cleanup, label %lor.lhs.false180

lor.lhs.false180:                                 ; preds = %land.lhs.true174, %if.end170
  %call182 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i8* noundef null, i32* noundef nonnull %lenu, i8* noundef nonnull %1, i32 noundef 5) #5
  %cmp183 = icmp slt i32 %call182, 1
  br i1 %cmp183, label %cleanup, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false180
  %data186 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 5
  %44 = load i8*, i8** %data186, align 8, !tbaa !12
  %input187 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %recs, i64 0, i32 6
  %45 = load i8*, i8** %input187, align 8, !tbaa !13
  %46 = load i64, i64* %length155, align 8, !tbaa !14
  %conv189 = trunc i64 %46 to i32
  %call190 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i8* noundef %44, i32* noundef nonnull %lenu, i8* noundef %45, i32 noundef %conv189) #5
  %cmp191 = icmp slt i32 %call190, 1
  br i1 %cmp191, label %cleanup, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false185
  %47 = load i8*, i8** %data186, align 8, !tbaa !12
  %48 = load i32, i32* %lenu, align 4, !tbaa !41
  %idx.ext = sext i32 %48 to i64
  %add.ptr195 = getelementptr inbounds i8, i8* %47, i64 %idx.ext
  %call196 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i8* noundef %add.ptr195, i32* noundef nonnull %lenf) #5
  %cmp197 = icmp slt i32 %call196, 1
  br i1 %cmp197, label %cleanup, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %lor.lhs.false193
  %49 = load i32, i32* %lenu, align 4, !tbaa !41
  %50 = load i32, i32* %lenf, align 4, !tbaa !41
  %add200 = add nsw i32 %50, %49
  %conv201 = sext i32 %add200 to i64
  %51 = load i64, i64* %length155, align 8, !tbaa !14
  %cmp203.not = icmp ne i64 %51, %conv201
  %brmerge = or i1 %tobool.not, %cmp203.not
  %not.cmp203.not = xor i1 %cmp203.not, true
  %.mux = zext i1 %not.cmp203.not to i32
  br i1 %brmerge, label %cleanup, label %if.then208

if.then208:                                       ; preds = %lor.lhs.false199
  %conv209 = trunc i64 %taglen.1336 to i32
  %52 = load i8*, i8** %data186, align 8, !tbaa !12
  %add.ptr212 = getelementptr inbounds i8, i8* %52, i64 %conv201
  %call213 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %ctx.0, i32 noundef 16, i32 noundef %conv209, i8* noundef %add.ptr212) #5
  %cmp214 = icmp slt i32 %call213, 1
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.then208
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.tls13_enc, i64 0, i64 0)) #5
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #5
  br label %cleanup

if.end217:                                        ; preds = %if.then208
  %53 = load i64, i64* %length155, align 8, !tbaa !14
  %add219 = add i64 %53, %taglen.1336
  store i64 %add219, i64* %length155, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %for.cond109.7, %lor.lhs.false199, %if.end217, %land.lhs.true174, %lor.lhs.false180, %lor.lhs.false185, %lor.lhs.false193, %if.then84, %if.then216, %if.then169, %if.then142, %if.then94, %if.else79, %if.then69, %if.then49, %if.then38, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then9 ], [ 0, %if.then69 ], [ 0, %if.then94 ], [ 0, %if.then142 ], [ 0, %if.then169 ], [ 0, %if.then216 ], [ 0, %if.else79 ], [ 0, %if.then38 ], [ 0, %if.then49 ], [ 0, %if.then84 ], [ %.mux, %lor.lhs.false199 ], [ 0, %lor.lhs.false193 ], [ 0, %lor.lhs.false185 ], [ 0, %lor.lhs.false180 ], [ 0, %land.lhs.true174 ], [ 1, %if.end217 ], [ 0, %for.cond109.7 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #2

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 4}
!9 = !{!"ssl3_record_st", !10, i64 0, !10, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !11, i64 64, !6, i64 72}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !5, i64 32}
!13 = !{!9, !5, i64 40}
!14 = !{!9, !11, i64 8}
!15 = !{!16, !6, i64 132}
!16 = !{!"ssl_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !5, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !17, i64 72, !6, i64 132, !5, i64 136, !5, i64 144, !11, i64 152, !11, i64 160, !18, i64 168, !5, i64 1208, !5, i64 1216, !5, i64 1224, !10, i64 1232, !5, i64 1240, !21, i64 1248, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !10, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !5, i64 2120, !6, i64 2128, !5, i64 2144, !5, i64 2152, !5, i64 2160, !5, i64 2168, !6, i64 2176, !5, i64 2192, !5, i64 2200, !6, i64 2208, !11, i64 2272, !6, i64 2280, !11, i64 2288, !6, i64 2296, !5, i64 2328, !5, i64 2336, !5, i64 2344, !11, i64 2352, !5, i64 2360, !6, i64 2368, !11, i64 2400, !10, i64 2408, !5, i64 2416, !5, i64 2424, !10, i64 2432, !10, i64 2436, !5, i64 2440, !5, i64 2448, !5, i64 2456, !5, i64 2464, !5, i64 2472, !5, i64 2480, !11, i64 2488, !22, i64 2496, !5, i64 2512, !5, i64 2520, !6, i64 2528, !11, i64 2536, !10, i64 2544, !10, i64 2548, !10, i64 2552, !11, i64 2560, !10, i64 2568, !10, i64 2572, !11, i64 2576, !11, i64 2584, !11, i64 2592, !23, i64 2600, !5, i64 2904, !10, i64 2912, !5, i64 2920, !5, i64 2928, !5, i64 2936, !10, i64 2944, !5, i64 2952, !5, i64 2960, !5, i64 2968, !10, i64 2976, !10, i64 2980, !6, i64 2984, !10, i64 2988, !5, i64 2992, !11, i64 3000, !10, i64 3008, !5, i64 3016, !25, i64 3024, !5, i64 3152, !26, i64 3160, !5, i64 7448, !5, i64 7456, !5, i64 7464, !5, i64 7472, !11, i64 7480, !10, i64 7488, !10, i64 7492, !10, i64 7496, !5, i64 7504, !5, i64 7512, !11, i64 7520, !5, i64 7528, !11, i64 7536, !11, i64 7544, !11, i64 7552, !5, i64 7560, !5, i64 7568, !5, i64 7576, !5, i64 7584, !5, i64 7592, !11, i64 7600}
!17 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !6, i64 52, !6, i64 56}
!18 = !{!"", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !10, i64 216, !10, i64 220, !5, i64 224, !5, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !6, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !19, i64 280, !6, i64 840, !11, i64 904, !6, i64 912, !11, i64 976, !10, i64 984, !10, i64 988, !5, i64 992, !11, i64 1000, !5, i64 1008, !11, i64 1016, !10, i64 1024, !6, i64 1028, !6, i64 1029, !20, i64 1030, !5, i64 1032}
!19 = !{!"", !6, i64 0, !11, i64 128, !6, i64 136, !11, i64 264, !11, i64 272, !10, i64 280, !5, i64 288, !5, i64 296, !10, i64 304, !5, i64 312, !11, i64 320, !5, i64 328, !11, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !10, i64 368, !11, i64 376, !5, i64 384, !10, i64 392, !5, i64 400, !11, i64 408, !5, i64 416, !11, i64 424, !5, i64 432, !11, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !11, i64 480, !11, i64 488, !5, i64 496, !6, i64 504, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552}
!20 = !{!"short", !6, i64 0}
!21 = !{!"ssl_dane_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !11, i64 56}
!22 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!23 = !{!"", !6, i64 0, !5, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !20, i64 72, !10, i64 76, !24, i64 80, !10, i64 112, !10, i64 116, !11, i64 120, !5, i64 128, !11, i64 136, !5, i64 144, !11, i64 152, !5, i64 160, !11, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !11, i64 232, !5, i64 240, !11, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !5, i64 272, !11, i64 280, !10, i64 288, !6, i64 292, !10, i64 296}
!24 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !11, i64 24}
!25 = !{!"srp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !11, i64 120}
!26 = !{!"record_layer_st", !5, i64 0, !10, i64 8, !10, i64 12, !11, i64 16, !11, i64 24, !27, i64 32, !6, i64 80, !6, i64 1616, !5, i64 4176, !11, i64 4184, !11, i64 4192, !6, i64 4200, !11, i64 4208, !11, i64 4216, !11, i64 4224, !10, i64 4232, !11, i64 4240, !5, i64 4248, !6, i64 4256, !6, i64 4264, !10, i64 4272, !10, i64 4276, !5, i64 4280}
!27 = !{!"ssl3_buffer_st", !5, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40}
!28 = !{!16, !5, i64 2328}
!29 = !{!30, !10, i64 852}
!30 = !{!"ssl_session_st", !10, i64 0, !11, i64 8, !6, i64 16, !6, i64 80, !11, i64 592, !6, i64 600, !11, i64 632, !6, i64 640, !5, i64 672, !5, i64 680, !10, i64 688, !5, i64 696, !5, i64 704, !11, i64 712, !6, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !10, i64 752, !10, i64 756, !5, i64 760, !11, i64 768, !10, i64 776, !22, i64 784, !5, i64 800, !5, i64 808, !31, i64 816, !5, i64 880, !5, i64 888, !11, i64 896, !10, i64 904, !5, i64 912, !5, i64 920}
!31 = !{!"", !5, i64 0, !5, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !10, i64 36, !5, i64 40, !11, i64 48, !6, i64 56}
!32 = !{!16, !5, i64 2336}
!33 = !{!16, !5, i64 736}
!34 = !{!30, !5, i64 760}
!35 = !{!36, !10, i64 36}
!36 = !{!"ssl_cipher_st", !10, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!9, !10, i64 0}
!41 = !{!10, !10, i64 0}
