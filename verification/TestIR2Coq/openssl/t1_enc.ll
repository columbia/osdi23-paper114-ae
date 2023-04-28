; ModuleID = 'ssl/t1_enc.c'
source_filename = "ssl/t1_enc.c"
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
%struct.evp_cipher_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque

@.str = private unnamed_addr constant [12 x i8] c"tls-version\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tls-mac-size\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ssl/t1_enc.c\00", align 1
@__func__.tls_provider_set_tls_params = private unnamed_addr constant [28 x i8] c"tls_provider_set_tls_params\00", align 1
@__func__.tls1_change_cipher_state = private unnamed_addr constant [25 x i8] c"tls1_change_cipher_state\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@__func__.tls1_setup_key_block = private unnamed_addr constant [21 x i8] c"tls1_setup_key_block\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"extended master secret\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"master secret\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"key expansion\00", align 1
@__func__.tls1_export_keying_material = private unnamed_addr constant [28 x i8] c"tls1_export_keying_material\00", align 1
@__func__.tls1_PRF = private unnamed_addr constant [9 x i8] c"tls1_PRF\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"TLS1-PRF\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @tls_provider_set_tls_params(%struct.ssl_st* noundef %s, %struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef %ciph, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %macsize = alloca i64, align 8
  %tmp6 = alloca %struct.ossl_param_st, align 8
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #7
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = bitcast i64* %macsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i64 0, i64* %macsize, align 8, !tbaa !4
  %call = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %ciph) #8
  %and = and i64 %call, 2097152
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  %2 = load i32, i32* %use_etm, align 4, !tbaa !8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.end4

if.end:                                           ; preds = %land.lhs.true
  %call1 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #8
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %conv25 = zext i32 %call1 to i64
  store i64 %conv25, i64* %macsize, align 8, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %entry, %land.lhs.true, %if.then3, %if.end
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %params26 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* noundef %version) #8
  %incdec.ptr5 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %3 = bitcast %struct.ossl_param_st* %tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #7
  call void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* noundef nonnull %macsize) #8
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #7
  %5 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7) #8
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  %call9 = call i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end4
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls_provider_set_tls_params, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then11
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OSSL_PARAM_construct_size_t(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_change_cipher_state(%struct.ssl_st* noundef %s, i32 noundef %which) local_unnamed_addr #0 {
entry:
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %0 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !26
  %new_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 15
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %new_hash, align 8, !tbaa !27
  %new_mac_pkey_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 16
  %2 = load i32, i32* %new_mac_pkey_type, align 8, !tbaa !28
  %new_compression = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 18
  %3 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %new_compression, align 8, !tbaa !29
  %and = and i32 %which, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else68, label %if.then

if.then:                                          ; preds = %entry
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  %4 = load i32, i32* %use_etm, align 4, !tbaa !8
  %tobool7.not = icmp eq i32 %4, 0
  %flags11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s3, i64 0, i32 0
  %5 = load i64, i64* %flags11, align 8, !tbaa !30
  %and12 = and i64 %5, -257
  %masksel = select i1 %tobool7.not, i64 0, i64 256
  %and12.sink = or i64 %and12, %masksel
  store i64 %and12.sink, i64* %flags11, align 8, !tbaa !30
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %6 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !31
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %6, i64 0, i32 13
  %7 = load i32, i32* %algorithm2, align 8, !tbaa !32
  %mac_flags20 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 28
  %8 = load i32, i32* %mac_flags20, align 8, !tbaa !34
  %and21 = and i32 %8, -6
  %and15 = lshr i32 %7, 16
  %and15.lobit = and i32 %and15, 1
  %9 = or i32 %and21, %and15.lobit
  %mac_flags33 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 28
  %and27 = lshr i32 %7, 15
  %10 = and i32 %and27, 4
  %and34.sink = or i32 %9, %10
  store i32 %and34.sink, i32* %mac_flags33, align 8, !tbaa !34
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %11 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !35
  %cmp.not = icmp eq %struct.evp_cipher_ctx_st* %11, null
  br i1 %cmp.not, label %if.else37, label %if.end45

if.else37:                                        ; preds = %if.then
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  store %struct.evp_cipher_ctx_st* %call, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !35
  %cmp39 = icmp eq %struct.evp_cipher_ctx_st* %call, null
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else37
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup306

if.else41:                                        ; preds = %if.else37
  %call43 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef nonnull %call) #8
  %.pre = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !35
  br label %if.end45

if.end45:                                         ; preds = %if.then, %if.else41
  %12 = phi %struct.evp_cipher_ctx_st* [ %.pre, %if.else41 ], [ %11, %if.then ]
  %reuse_dd.0 = phi i32 [ 0, %if.else41 ], [ 1, %if.then ]
  %read_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 43
  %call47 = tail call %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** noundef nonnull %read_hash, %struct.evp_md_st* noundef null) #8
  %cmp48 = icmp eq %struct.evp_md_ctx_st* %call47, null
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.end50:                                         ; preds = %if.end45
  %expand = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 45
  %13 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %expand, align 8, !tbaa !36
  tail call void @COMP_CTX_free(%struct.comp_ctx_st* noundef %13) #8
  store %struct.comp_ctx_st* null, %struct.comp_ctx_st** %expand, align 8, !tbaa !36
  %cmp52.not = icmp eq %struct.ssl_comp_st* %3, null
  br i1 %cmp52.not, label %if.end60, label %if.then53

if.then53:                                        ; preds = %if.end50
  %method = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %3, i64 0, i32 2
  %14 = load %struct.comp_method_st*, %struct.comp_method_st** %method, align 8, !tbaa !37
  %call54 = tail call %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef %14) #8
  store %struct.comp_ctx_st* %call54, %struct.comp_ctx_st** %expand, align 8, !tbaa !36
  %cmp57 = icmp eq %struct.comp_ctx_st* %call54, null
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.then53
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 142, i8* noundef null) #8
  br label %cleanup306

if.end60:                                         ; preds = %if.then53, %if.end50
  %method61 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %15 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method61, align 8, !tbaa !39
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %15, i64 0, i32 25
  %16 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !40
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %16, i64 0, i32 12
  %17 = load i32, i32* %enc_flags, align 8, !tbaa !42
  %and62 = and i32 %17, 8
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end60
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef nonnull %rlayer) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end60
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 2, i64 0
  %read_mac_secret_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 1
  br label %if.end161

if.else68:                                        ; preds = %entry
  %enc_write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 1, i32* %enc_write_state, align 4, !tbaa !44
  %use_etm70 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  %18 = load i32, i32* %use_etm70, align 4, !tbaa !8
  %tobool71.not = icmp eq i32 %18, 0
  %flags78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s3, i64 0, i32 0
  %19 = load i64, i64* %flags78, align 8, !tbaa !30
  %and79 = and i64 %19, -1025
  %masksel505 = select i1 %tobool71.not, i64 0, i64 1024
  %and79.sink = or i64 %and79, %masksel505
  store i64 %and79.sink, i64* %flags78, align 8, !tbaa !30
  %new_cipher83 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %20 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher83, align 8, !tbaa !31
  %algorithm284 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %20, i64 0, i32 13
  %21 = load i32, i32* %algorithm284, align 8, !tbaa !32
  %mac_flags91 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 28
  %22 = load i32, i32* %mac_flags91, align 8, !tbaa !34
  %and92 = and i32 %22, -11
  %and85 = lshr i32 %21, 15
  %23 = and i32 %and85, 2
  %24 = or i32 %and92, %23
  %mac_flags104 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 28
  %and98 = lshr i32 %21, 14
  %25 = and i32 %and98, 8
  %and105.sink = or i32 %24, %25
  store i32 %and105.sink, i32* %mac_flags104, align 8, !tbaa !34
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %26 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !45
  %cmp107.not = icmp eq %struct.evp_cipher_ctx_st* %26, null
  br i1 %cmp107.not, label %if.else114, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else68
  %method108 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %27 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method108, align 8, !tbaa !39
  %ssl3_enc109 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %27, i64 0, i32 25
  %28 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc109, align 8, !tbaa !40
  %enc_flags110 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %28, i64 0, i32 12
  %29 = load i32, i32* %enc_flags110, align 8, !tbaa !42
  %and111 = and i32 %29, 8
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end120, label %if.else114

if.else114:                                       ; preds = %land.lhs.true, %if.else68
  %call115 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  store %struct.evp_cipher_ctx_st* %call115, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !45
  %cmp117 = icmp eq %struct.evp_cipher_ctx_st* %call115, null
  br i1 %cmp117, label %if.then118, label %if.else114.if.end120_crit_edge

if.else114.if.end120_crit_edge:                   ; preds = %if.else114
  %method122.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %.pre500 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method122.phi.trans.insert, align 8, !tbaa !39
  %ssl3_enc123.phi.trans.insert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %.pre500, i64 0, i32 25
  %.pre501 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc123.phi.trans.insert, align 8, !tbaa !40
  %enc_flags124.phi.trans.insert = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %.pre501, i64 0, i32 12
  %.pre502 = load i32, i32* %enc_flags124.phi.trans.insert, align 8, !tbaa !42
  br label %if.end120

if.then118:                                       ; preds = %if.else114
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup306

if.end120:                                        ; preds = %if.else114.if.end120_crit_edge, %land.lhs.true
  %30 = phi i32 [ %.pre502, %if.else114.if.end120_crit_edge ], [ %29, %land.lhs.true ]
  %31 = phi %struct.evp_cipher_ctx_st* [ %call115, %if.else114.if.end120_crit_edge ], [ %26, %land.lhs.true ]
  %reuse_dd.1 = phi i32 [ 0, %if.else114.if.end120_crit_edge ], [ 1, %land.lhs.true ]
  %method122 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %and125 = and i32 %30, 8
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else132, label %if.then127

if.then127:                                       ; preds = %if.end120
  %call128 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %cmp129 = icmp eq %struct.evp_md_ctx_st* %call128, null
  br i1 %cmp129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.then127
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup306

if.end131:                                        ; preds = %if.then127
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  store %struct.evp_md_ctx_st* %call128, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !46
  br label %if.end138

if.else132:                                       ; preds = %if.end120
  %write_hash133 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %call134 = tail call %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** noundef nonnull %write_hash133, %struct.evp_md_st* noundef null) #8
  %cmp135 = icmp eq %struct.evp_md_ctx_st* %call134, null
  br i1 %cmp135, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.else132
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup306

if.end138:                                        ; preds = %if.else132, %if.end131
  %mac_ctx.0 = phi %struct.evp_md_ctx_st* [ %call128, %if.end131 ], [ %call134, %if.else132 ]
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %32 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !47
  tail call void @COMP_CTX_free(%struct.comp_ctx_st* noundef %32) #8
  store %struct.comp_ctx_st* null, %struct.comp_ctx_st** %compress, align 8, !tbaa !47
  %cmp140.not = icmp eq %struct.ssl_comp_st* %3, null
  br i1 %cmp140.not, label %if.end149, label %if.then141

if.then141:                                       ; preds = %if.end138
  %method142 = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %3, i64 0, i32 2
  %33 = load %struct.comp_method_st*, %struct.comp_method_st** %method142, align 8, !tbaa !37
  %call143 = tail call %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef %33) #8
  store %struct.comp_ctx_st* %call143, %struct.comp_ctx_st** %compress, align 8, !tbaa !47
  %cmp146 = icmp eq %struct.comp_ctx_st* %call143, null
  br i1 %cmp146, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.then141
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 142, i8* noundef null) #8
  br label %cleanup306

if.end149:                                        ; preds = %if.then141, %if.end138
  %34 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method122, align 8, !tbaa !39
  %ssl3_enc151 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %34, i64 0, i32 25
  %35 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc151, align 8, !tbaa !40
  %enc_flags152 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %35, i64 0, i32 12
  %36 = load i32, i32* %enc_flags152, align 8, !tbaa !42
  %and153 = and i32 %36, 8
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.end149
  %rlayer156 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  tail call void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef nonnull %rlayer156) #8
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end149
  %arrayidx159 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 4, i64 0
  %write_mac_secret_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 3
  br label %if.end161

if.end161:                                        ; preds = %if.end157, %if.end65
  %mac_secret_size.0 = phi i64* [ %read_mac_secret_size, %if.end65 ], [ %write_mac_secret_size, %if.end157 ]
  %mac_ctx.1 = phi %struct.evp_md_ctx_st* [ %call47, %if.end65 ], [ %mac_ctx.0, %if.end157 ]
  %dd.0 = phi %struct.evp_cipher_ctx_st* [ %12, %if.end65 ], [ %31, %if.end157 ]
  %reuse_dd.2 = phi i32 [ %reuse_dd.0, %if.end65 ], [ %reuse_dd.1, %if.end157 ]
  %mac_secret.0 = phi i8* [ %arrayidx, %if.end65 ], [ %arrayidx159, %if.end157 ]
  %tobool162.not = icmp eq i32 %reuse_dd.2, 0
  br i1 %tobool162.not, label %if.end165, label %if.then163

if.then163:                                       ; preds = %if.end161
  %call164 = tail call i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef %dd.0) #8
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end161
  %key_block = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 13
  %37 = load i8*, i8** %key_block, align 8, !tbaa !48
  %new_mac_secret_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 17
  %38 = load i64, i64* %new_mac_secret_size, align 8, !tbaa !49
  store i64 %38, i64* %mac_secret_size.0, align 8, !tbaa !4
  %call170 = tail call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %0) #8
  %conv = sext i32 %call170 to i64
  %call171 = tail call fastcc i32 @tls_iv_length_within_key_block(%struct.evp_cipher_st* noundef %0) #9
  %conv172 = sext i32 %call171 to i64
  switch i32 %which, label %if.else185 [
    i32 33, label %if.then177
    i32 18, label %if.then177
  ]

if.then177:                                       ; preds = %if.end165, %if.end165
  %add = shl i64 %38, 1
  %39 = add i64 %38, %conv
  %add181 = shl i64 %39, 1
  %40 = add i64 %39, %conv172
  %add184 = shl i64 %40, 1
  br label %if.end194

if.else185:                                       ; preds = %if.end165
  %arrayidx186 = getelementptr inbounds i8, i8* %37, i64 %38
  %reass.add = shl i64 %38, 1
  %add188 = add i64 %reass.add, %conv
  %add190 = add nsw i64 %conv172, %conv
  %add191 = add i64 %add190, %add188
  %add193 = add i64 %add191, %conv172
  br label %if.end194

if.end194:                                        ; preds = %if.else185, %if.then177
  %n.0 = phi i64 [ %add184, %if.then177 ], [ %add193, %if.else185 ]
  %add181.pn = phi i64 [ %add181, %if.then177 ], [ %add191, %if.else185 ]
  %add.pn = phi i64 [ %add, %if.then177 ], [ %add188, %if.else185 ]
  %ms.0 = phi i8* [ %37, %if.then177 ], [ %arrayidx186, %if.else185 ]
  %key.0 = getelementptr inbounds i8, i8* %37, i64 %add.pn
  %iv.0 = getelementptr inbounds i8, i8* %37, i64 %add181.pn
  %key_block_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 12
  %41 = load i64, i64* %key_block_length, align 8, !tbaa !50
  %cmp197 = icmp ugt i64 %n.0, %41
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end194
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.end200:                                        ; preds = %if.end194
  %call201 = tail call i8* @memcpy(i8* noundef nonnull %mac_secret.0, i8* noundef %ms.0, i64 noundef %38) #8
  %call202 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %0) #8
  %and203 = and i64 %call202, 2097152
  %tobool204.not = icmp eq i64 %and203, 0
  br i1 %tobool204.not, label %if.then205, label %do.body

if.then205:                                       ; preds = %if.end200
  %cmp206 = icmp eq i32 %2, 855
  br i1 %cmp206, label %if.then208, label %if.else211

if.then208:                                       ; preds = %if.then205
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %42 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !51
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %42, i64 0, i32 0
  %43 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !52
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %42, i64 0, i32 85
  %44 = load i8*, i8** %propq, align 8, !tbaa !57
  %45 = load i64, i64* %mac_secret_size.0, align 8, !tbaa !4
  %call210 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %43, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %44, i8* noundef nonnull %mac_secret.0, i64 noundef %45) #8
  br label %if.end214

if.else211:                                       ; preds = %if.then205
  %46 = load i64, i64* %mac_secret_size.0, align 8, !tbaa !4
  %conv212 = trunc i64 %46 to i32
  %call213 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_mac_key(i32 noundef %2, %struct.engine_st* noundef null, i8* noundef nonnull %mac_secret.0, i32 noundef %conv212) #8
  br label %if.end214

if.end214:                                        ; preds = %if.else211, %if.then208
  %mac_key.0 = phi %struct.evp_pkey_st* [ %call210, %if.then208 ], [ %call213, %if.else211 ]
  %cmp215 = icmp eq %struct.evp_pkey_st* %mac_key.0, null
  br i1 %cmp215, label %if.then226, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %if.end214
  %call218 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %1) #8
  %ctx219 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %47 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx219, align 8, !tbaa !51
  %libctx220 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %47, i64 0, i32 0
  %48 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx220, align 8, !tbaa !52
  %propq222 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %47, i64 0, i32 85
  %49 = load i8*, i8** %propq222, align 8, !tbaa !57
  %call223 = tail call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef nonnull %mac_ctx.1, %struct.evp_pkey_ctx_st** noundef null, i8* noundef %call218, %struct.ossl_lib_ctx_st* noundef %48, i8* noundef %49, %struct.evp_pkey_st* noundef nonnull %mac_key.0, %struct.ossl_param_st* noundef null) #8
  %cmp224 = icmp slt i32 %call223, 1
  br i1 %cmp224, label %if.then226, label %if.end227

if.then226:                                       ; preds = %lor.lhs.false217, %if.end214
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %mac_key.0) #8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.end227:                                        ; preds = %lor.lhs.false217
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %mac_key.0) #8
  br label %do.body

do.body:                                          ; preds = %if.end200, %if.end227
  %call229 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %0) #8
  %cmp230 = icmp eq i32 %call229, 6
  br i1 %cmp230, label %if.then232, label %if.else242

if.then232:                                       ; preds = %do.body
  %and233 = and i32 %which, 2
  %call234 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef %0, %struct.engine_st* noundef null, i8* noundef %key.0, i8* noundef null, i32 noundef %and233) #8
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.then240, label %lor.lhs.false236

lor.lhs.false236:                                 ; preds = %if.then232
  %call238 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %dd.0, i32 noundef 18, i32 noundef %call171, i8* noundef %iv.0) #8
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then240, label %if.end280

if.then240:                                       ; preds = %lor.lhs.false236, %if.then232
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.else242:                                       ; preds = %do.body
  %call243 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %0) #8
  %cmp244 = icmp eq i32 %call243, 7
  br i1 %cmp244, label %if.then246, label %if.else273

if.then246:                                       ; preds = %if.else242
  %new_cipher249 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %50 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher249, align 8, !tbaa !31
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %50, i64 0, i32 6
  %51 = load i32, i32* %algorithm_enc, align 4, !tbaa !58
  %and250 = and i32 %51, 196608
  %tobool251.not = icmp eq i32 %and250, 0
  %. = select i1 %tobool251.not, i32 16, i32 8
  %and255 = and i32 %which, 2
  %call256 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef %0, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %and255) #8
  %tobool257.not = icmp eq i32 %call256, 0
  br i1 %tobool257.not, label %cleanup, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %if.then246
  %call259 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %dd.0, i32 noundef 9, i32 noundef 12, i8* noundef null) #8
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %cleanup, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %lor.lhs.false258
  %call262 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %dd.0, i32 noundef 17, i32 noundef %., i8* noundef null) #8
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %cleanup, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %lor.lhs.false261
  %call266 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %dd.0, i32 noundef 18, i32 noundef %call171, i8* noundef %iv.0) #8
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %cleanup, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %lor.lhs.false264
  %call269 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %key.0, i8* noundef null, i32 noundef -1) #8
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %cleanup, label %if.end280

cleanup:                                          ; preds = %if.then246, %lor.lhs.false258, %lor.lhs.false261, %lor.lhs.false264, %lor.lhs.false268
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.else273:                                       ; preds = %if.else242
  %and274 = and i32 %which, 2
  %call275 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef %0, %struct.engine_st* noundef null, i8* noundef %key.0, i8* noundef %iv.0, i32 noundef %and274) #8
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.then277, label %if.end280

if.then277:                                       ; preds = %if.else273
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.end280:                                        ; preds = %lor.lhs.false268, %if.else273, %lor.lhs.false236
  %call281 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %0) #8
  %and282 = and i64 %call281, 2097152
  %tobool283.not = icmp eq i64 %and282, 0
  br i1 %tobool283.not, label %if.end291, label %land.lhs.true284

land.lhs.true284:                                 ; preds = %if.end280
  %52 = load i64, i64* %mac_secret_size.0, align 8, !tbaa !4
  %tobool285.not = icmp eq i64 %52, 0
  br i1 %tobool285.not, label %if.end291, label %land.lhs.true286

land.lhs.true286:                                 ; preds = %land.lhs.true284
  %conv287 = trunc i64 %52 to i32
  %call288 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %dd.0, i32 noundef 23, i32 noundef %conv287, i8* noundef nonnull %mac_secret.0) #8
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.then290, label %if.end291

if.then290:                                       ; preds = %land.lhs.true286
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.tls1_change_cipher_state, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup306

if.end291:                                        ; preds = %land.lhs.true286, %land.lhs.true284, %if.end280
  %call292 = tail call %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef %0) #8
  %cmp293.not = icmp eq %struct.ossl_provider_st* %call292, null
  br i1 %cmp293.not, label %if.end299, label %land.lhs.true295

land.lhs.true295:                                 ; preds = %if.end291
  %call296 = tail call i32 @tls_provider_set_tls_params(%struct.ssl_st* noundef nonnull %s, %struct.evp_cipher_ctx_st* noundef %dd.0, %struct.evp_cipher_st* noundef %0, %struct.evp_md_st* noundef %1) #9
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %cleanup306, label %if.end299

if.end299:                                        ; preds = %land.lhs.true295, %if.end291
  %enc_write_state301 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  store i32 0, i32* %enc_write_state301, align 4, !tbaa !44
  br label %cleanup306

cleanup306:                                       ; preds = %cleanup, %if.then40, %if.then49, %if.then58, %if.then118, %if.then130, %if.then136, %if.then147, %if.then199, %if.then226, %if.then240, %if.then277, %if.then290, %land.lhs.true295, %if.end299
  %retval.0 = phi i32 [ 1, %if.end299 ], [ 0, %cleanup ], [ 0, %land.lhs.true295 ], [ 0, %if.then290 ], [ 0, %if.then277 ], [ 0, %if.then240 ], [ 0, %if.then226 ], [ 0, %if.then199 ], [ 0, %if.then147 ], [ 0, %if.then136 ], [ 0, %if.then130 ], [ 0, %if.then118 ], [ 0, %if.then58 ], [ 0, %if.then49 ], [ 0, %if.then40 ]
  ret i32 %retval.0
}

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_reset(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @ssl_replace_hash(%struct.evp_md_ctx_st** noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @COMP_CTX_free(%struct.comp_ctx_st* noundef) local_unnamed_addr #2

declare %struct.comp_ctx_st* @COMP_CTX_new(%struct.comp_method_st* noundef) local_unnamed_addr #2

declare void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls_iv_length_within_key_block(%struct.evp_cipher_st* noundef %c) unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %c) #8
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %c) #8
  %cmp2 = icmp eq i32 %call1, 7
  br i1 %cmp2, label %return, label %if.else4

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %c) #8
  br label %return

return:                                           ; preds = %if.else, %entry, %if.else4
  %retval.0 = phi i32 [ %call5, %if.else4 ], [ 4, %entry ], [ 4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKEY_new_mac_key(i32 noundef, %struct.engine_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_CIPHER_get0_provider(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_setup_key_block(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %c = alloca %struct.evp_cipher_st*, align 8
  %hash = alloca %struct.evp_md_st*, align 8
  %comp = alloca %struct.ssl_comp_st*, align 8
  %mac_type = alloca i32, align 4
  %mac_secret_size = alloca i64, align 8
  %0 = bitcast %struct.evp_cipher_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.evp_md_st** %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = bitcast %struct.ssl_comp_st** %comp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %3 = bitcast i32* %mac_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  store i32 0, i32* %mac_type, align 4, !tbaa !25
  %4 = bitcast i64* %mac_secret_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  store i64 0, i64* %mac_secret_size, align 8, !tbaa !4
  %key_block_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 12
  %5 = load i64, i64* %key_block_length, align 8, !tbaa !50
  %cmp.not = icmp eq i64 %5, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %6 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !51
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %7 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !59
  %use_etm = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 29
  %8 = load i32, i32* %use_etm, align 4, !tbaa !8
  %call = call i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef %6, %struct.ssl_session_st* noundef %7, %struct.evp_cipher_st** noundef nonnull %c, %struct.evp_md_st** noundef nonnull %hash, i32* noundef nonnull %mac_type, i64* noundef nonnull %mac_secret_size, %struct.ssl_comp_st** noundef nonnull %comp, i32 noundef %8) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @ossl_statem_send_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %new_sym_enc = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 14
  %9 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !26
  call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %9) #8
  %10 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !24
  store %struct.evp_cipher_st* %10, %struct.evp_cipher_st** %new_sym_enc, align 8, !tbaa !26
  %new_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 15
  %11 = load %struct.evp_md_st*, %struct.evp_md_st** %new_hash, align 8, !tbaa !27
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef %11) #8
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %hash, align 8, !tbaa !24
  store %struct.evp_md_st* %12, %struct.evp_md_st** %new_hash, align 8, !tbaa !27
  %13 = load i32, i32* %mac_type, align 4, !tbaa !25
  %new_mac_pkey_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 16
  store i32 %13, i32* %new_mac_pkey_type, align 8, !tbaa !28
  %14 = load i64, i64* %mac_secret_size, align 8, !tbaa !4
  %new_mac_secret_size = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 17
  store i64 %14, i64* %new_mac_secret_size, align 8, !tbaa !49
  %15 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !24
  %call17 = call i32 @EVP_CIPHER_get_key_length(%struct.evp_cipher_st* noundef %15) #8
  %conv = sext i32 %call17 to i64
  %add = add i64 %14, %conv
  %16 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %c, align 8, !tbaa !24
  %call18 = call fastcc i32 @tls_iv_length_within_key_block(%struct.evp_cipher_st* noundef %16) #9
  %conv19 = sext i32 %call18 to i64
  %add20 = add i64 %add, %conv19
  %mul = shl i64 %add20, 1
  call void @ssl3_cleanup_key_block(%struct.ssl_st* noundef nonnull %s) #8
  %call21 = call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 555) #8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end2
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.tls1_setup_key_block, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end2
  store i64 %mul, i64* %key_block_length, align 8, !tbaa !50
  %key_block = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 13
  store i8* %call21, i8** %key_block, align 8, !tbaa !48
  %call31 = call fastcc i32 @tls1_generate_key_block(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %call21, i64 noundef %mul) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %do.body35

do.body35:                                        ; preds = %if.end25
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %17 = load i64, i64* %options, align 8, !tbaa !60
  %and = and i64 %17, 2048
  %tobool39.not = icmp eq i64 %and, 0
  br i1 %tobool39.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %do.body35
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %18 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !39
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %18, i64 0, i32 0
  %19 = load i32, i32* %version, align 8, !tbaa !61
  %cmp40 = icmp slt i32 %19, 770
  br i1 %cmp40, label %if.then42, label %cleanup

if.then42:                                        ; preds = %land.lhs.true
  %need_empty_fragments = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 7
  store i32 1, i32* %need_empty_fragments, align 8, !tbaa !62
  %20 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !59
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %20, i64 0, i32 20
  %21 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !63
  %cmp45.not = icmp eq %struct.ssl_cipher_st* %21, null
  br i1 %cmp45.not, label %cleanup, label %if.then47

if.then47:                                        ; preds = %if.then42
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %21, i64 0, i32 6
  %22 = load i32, i32* %algorithm_enc, align 4, !tbaa !58
  switch i32 %22, label %cleanup [
    i32 32, label %if.end55.thread
    i32 4, label %if.then61
  ]

if.end55.thread:                                  ; preds = %if.then47
  store i32 0, i32* %need_empty_fragments, align 8, !tbaa !62
  br label %cleanup

if.then61:                                        ; preds = %if.then47
  store i32 0, i32* %need_empty_fragments, align 8, !tbaa !62
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end55.thread, %if.then24, %if.end25, %if.then42, %if.then61, %land.lhs.true, %do.body35, %entry, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 1, %entry ], [ 0, %if.then24 ], [ 0, %if.end25 ], [ 1, %if.then42 ], [ 1, %if.then61 ], [ 1, %land.lhs.true ], [ 1, %do.body35 ], [ 1, %if.end55.thread ], [ 1, %if.then47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef, %struct.evp_cipher_st** noundef, %struct.evp_md_st** noundef, i32* noundef, i64* noundef, %struct.ssl_comp_st** noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_statem_send_fatal(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @ssl_evp_md_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @ssl3_cleanup_key_block(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls1_generate_key_block(%struct.ssl_st* noundef %s, i8* noundef %km, i64 noundef %num) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %arraydecay2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !59
  %arraydecay3 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 1
  %1 = load i64, i64* %master_key_length, align 8, !tbaa !66
  %call = tail call fastcc i32 @tls1_PRF(%struct.ssl_st* noundef %s, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 noundef 13, i8* noundef nonnull %arraydecay, i64 noundef 32, i8* noundef nonnull %arraydecay2, i64 noundef 32, i8* noundef null, i64 noundef 0, i8* noundef nonnull %arraydecay3, i64 noundef %1, i8* noundef %km, i64 noundef %num, i32 noundef 1) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @tls1_final_finish_mac(%struct.ssl_st* noundef %s, i8* noundef %str, i64 noundef %slen, i8* noundef %out) local_unnamed_addr #0 {
entry:
  %hashlen = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  %0 = bitcast i64* %hashlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #7
  %new_cipher = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 20, i32 6
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %new_cipher, align 8, !tbaa !31
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 4
  %3 = load i32, i32* %algorithm_mkey, align 4, !tbaa !67
  %and = and i32 %3, 512
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i64 12, i64 32
  %call = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef %s, i32 noundef 0) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %call4 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %1, i64 noundef 64, i64* noundef nonnull %hashlen) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %4 = load i64, i64* %hashlen, align 8, !tbaa !4
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !59
  %arraydecay9 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %5, i64 0, i32 1
  %6 = load i64, i64* %master_key_length, align 8, !tbaa !66
  %call11 = call fastcc i32 @tls1_PRF(%struct.ssl_st* noundef nonnull %s, i8* noundef %str, i64 noundef %slen, i8* noundef nonnull %1, i64 noundef %4, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef nonnull %arraydecay9, i64 noundef %6, i8* noundef %out, i64 noundef %spec.select, i32 noundef 1) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end7
  %7 = load i64, i64* %hashlen, align 8, !tbaa !4
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3, %entry, %if.end14
  %retval.0 = phi i64 [ %spec.select, %if.end14 ], [ 0, %entry ], [ 0, %if.end3 ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i64 %retval.0
}

declare i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_handshake_hash(%struct.ssl_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tls1_PRF(%struct.ssl_st* noundef %s, i8* noundef %seed1, i64 noundef %seed1_len, i8* noundef %seed2, i64 noundef %seed2_len, i8* noundef %seed3, i64 noundef %seed3_len, i8* noundef %seed4, i64 noundef %seed4_len, i8* noundef %sec, i64 noundef %slen, i8* noundef %out, i64 noundef %olen, i32 noundef %fatal) unnamed_addr #0 {
entry:
  %params = alloca [8 x %struct.ossl_param_st], align 16
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp18 = alloca %struct.ossl_param_st, align 8
  %tmp20 = alloca %struct.ossl_param_st, align 8
  %tmp22 = alloca %struct.ossl_param_st, align 8
  %tmp24 = alloca %struct.ossl_param_st, align 8
  %tmp25 = alloca %struct.ossl_param_st, align 8
  %call = tail call %struct.evp_md_st* @ssl_prf_md(%struct.ssl_st* noundef %s) #8
  %0 = bitcast [8 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %0) #7
  %arraydecay = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %cmp = icmp eq %struct.evp_md_st* %call, null
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %fatal, 0
  tail call void @ERR_new() #8
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_PRF, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_PRF, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !51
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !52
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !57
  %call4 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef %3) #8
  %cmp5 = icmp eq %struct.evp_kdf_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end2
  %call8 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef nonnull %call4) #8
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef nonnull %call4) #8
  %cmp9 = icmp eq %struct.evp_kdf_ctx_st* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %call) #8
  %incdec.ptr = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params1 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call12, i64 noundef 0) #8
  %incdec.ptr13 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %4 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* noundef %sec, i64 noundef %slen) #8
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #7
  %incdec.ptr15 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %6 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef %seed1, i64 noundef %seed1_len) #8
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #7
  %incdec.ptr17 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 4
  %8 = bitcast %struct.ossl_param_st* %tmp18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef %seed2, i64 noundef %seed2_len) #8
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #7
  %incdec.ptr19 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 5
  %10 = bitcast %struct.ossl_param_st* %tmp20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef %seed3, i64 noundef %seed3_len) #8
  %11 = bitcast %struct.ossl_param_st* %incdec.ptr17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #7
  %incdec.ptr21 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 6
  %12 = bitcast %struct.ossl_param_st* %tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp22, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef %seed4, i64 noundef %seed4_len) #8
  %13 = bitcast %struct.ossl_param_st* %incdec.ptr19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #7
  %incdec.ptr23 = getelementptr inbounds [8 x %struct.ossl_param_st], [8 x %struct.ossl_param_st]* %params, i64 0, i64 7
  %14 = bitcast %struct.ossl_param_st* %tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #7
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef null, i64 noundef 0) #8
  %15 = bitcast %struct.ossl_param_st* %incdec.ptr21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %15, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #7
  %16 = bitcast %struct.ossl_param_st* %tmp25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #7
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp25) #8
  %17 = bitcast %struct.ossl_param_st* %incdec.ptr23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %16, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #7
  %call27 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call8, i8* noundef %out, i64 noundef %olen, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.then29

if.then29:                                        ; preds = %if.end11
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef nonnull %call8) #8
  br label %cleanup

err:                                              ; preds = %if.end11, %if.end7, %if.end2
  %kctx.0 = phi %struct.evp_kdf_ctx_st* [ null, %if.end2 ], [ null, %if.end7 ], [ %call8, %if.end11 ]
  %tobool31.not = icmp eq i32 %fatal, 0
  call void @ERR_new() #8
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %err
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_PRF, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %if.end34

if.else33:                                        ; preds = %err
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tls1_PRF, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #8
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %kctx.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.else, %if.end34, %if.then29
  %retval.0 = phi i32 [ 0, %if.end34 ], [ 1, %if.then29 ], [ 0, %if.else ], [ 0, %if.then1 ]
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_generate_master_secret(%struct.ssl_st* noundef %s, i8* noundef %out, i8* noundef %p, i64 noundef %len, i64* nocapture noundef writeonly %secret_size) local_unnamed_addr #0 {
entry:
  %hash = alloca [128 x i8], align 16
  %hashlen = alloca i64, align 8
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !59
  %flags = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 30
  %1 = load i32, i32* %flags, align 8, !tbaa !68
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds [128 x i8], [128 x i8]* %hash, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #7
  %3 = bitcast i64* %hashlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %call = tail call i32 @ssl3_digest_cached_records(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #8
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call i32 @ssl_handshake_hash(%struct.ssl_st* noundef nonnull %s, i8* noundef nonnull %2, i64 noundef 128, i64* noundef nonnull %hashlen) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup.thread, label %do.body

do.body:                                          ; preds = %lor.lhs.false
  %4 = load i64, i64* %hashlen, align 8, !tbaa !4
  %call6 = call fastcc i32 @tls1_PRF(%struct.ssl_st* noundef nonnull %s, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 noundef 22, i8* noundef nonnull %2, i64 noundef %4, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef %p, i64 noundef %len, i8* noundef %out, i64 noundef 48, i32 noundef 1) #9
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false, %if.then, %do.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #7
  br label %return

cleanup:                                          ; preds = %do.body
  %5 = load i64, i64* %hashlen, align 8, !tbaa !4
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #7
  br label %do.body20

if.else:                                          ; preds = %entry
  %arraydecay12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %arraydecay14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %call15 = tail call fastcc i32 @tls1_PRF(%struct.ssl_st* noundef nonnull %s, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 noundef 13, i8* noundef nonnull %arraydecay12, i64 noundef 32, i8* noundef null, i64 noundef 0, i8* noundef nonnull %arraydecay14, i64 noundef 32, i8* noundef %p, i64 noundef %len, i8* noundef %out, i64 noundef 48, i32 noundef 1) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %return, label %do.body20

do.body20:                                        ; preds = %cleanup, %if.else
  store i64 48, i64* %secret_size, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %cleanup.thread, %if.else, %do.body20
  %retval.1 = phi i32 [ 1, %do.body20 ], [ 0, %if.else ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @tls1_export_keying_material(%struct.ssl_st* noundef %s, i8* noundef %out, i64 noundef %olen, i8* noundef %label, i64 noundef %llen, i8* noundef %context, i64 noundef %contextlen, i32 noundef %use_context) local_unnamed_addr #0 {
entry:
  %add = add i64 %llen, 64
  %tobool.not = icmp eq i32 %use_context, 0
  %add1 = add i64 %contextlen, 2
  %add2 = select i1 %tobool.not, i64 0, i64 %add1
  %vallen.0 = add i64 %add2, %add
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %vallen.0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 719) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err2, label %if.end4

if.end4:                                          ; preds = %entry
  %call5 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %label, i64 noundef %llen) #8
  %add.ptr7 = getelementptr inbounds i8, i8* %call, i64 %llen
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 6, i64 0
  %call8 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr7, i8* noundef nonnull %arraydecay, i64 noundef 32) #8
  %add9 = add i64 %llen, 32
  %add.ptr10 = getelementptr inbounds i8, i8* %call, i64 %add9
  %arraydecay12 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 5, i64 0
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr10, i8* noundef nonnull %arraydecay12, i64 noundef 32) #8
  br i1 %tobool.not, label %if.end29, label %if.then16

if.then16:                                        ; preds = %if.end4
  %shr = lshr i64 %contextlen, 8
  %conv = trunc i64 %shr to i8
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %add
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !69
  %inc = add i64 %llen, 65
  %conv18 = trunc i64 %contextlen to i8
  %arrayidx19 = getelementptr inbounds i8, i8* %call, i64 %inc
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !69
  %cmp21 = icmp ne i64 %contextlen, 0
  %cmp23 = icmp ne i8* %context, null
  %or.cond = or i1 %cmp23, %cmp21
  br i1 %or.cond, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.then16
  %inc20 = add i64 %llen, 66
  %add.ptr26 = getelementptr inbounds i8, i8* %call, i64 %inc20
  %call27 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr26, i8* noundef %context, i64 noundef %contextlen) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then16, %if.end4
  %call30 = tail call i32 @memcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 noundef 15) #10
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %err1, label %if.end34

if.end34:                                         ; preds = %if.end29
  %call35 = tail call i32 @memcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 noundef 15) #10
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %err1, label %if.end39

if.end39:                                         ; preds = %if.end34
  %call40 = tail call i32 @memcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 noundef 13) #10
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %err1, label %if.end44

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @memcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 noundef 22) #10
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %err1, label %if.end49

if.end49:                                         ; preds = %if.end44
  %call50 = tail call i32 @memcmp(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 noundef 13) #10
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %err1, label %if.end54

if.end54:                                         ; preds = %if.end49
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %0 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !59
  %arraydecay55 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %0, i64 0, i32 1
  %1 = load i64, i64* %master_key_length, align 8, !tbaa !66
  %call57 = tail call fastcc i32 @tls1_PRF(%struct.ssl_st* noundef %s, i8* noundef nonnull %call, i64 noundef %vallen.0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0, i8* noundef nonnull %arraydecay55, i64 noundef %1, i8* noundef %out, i64 noundef %olen, i32 noundef 0) #9
  br label %ret

err1:                                             ; preds = %if.end49, %if.end44, %if.end39, %if.end34, %if.end29
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 772, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls1_export_keying_material, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 367, i8* noundef null) #8
  br label %ret

err2:                                             ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.tls1_export_keying_material, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #8
  br label %ret

ret:                                              ; preds = %err2, %err1, %if.end54
  %rv.0 = phi i32 [ 0, %err2 ], [ 0, %err1 ], [ %call57, %if.end54 ]
  tail call void @CRYPTO_clear_free(i8* noundef %call, i64 noundef %vallen.0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 779) #8
  ret i32 %rv.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @tls1_alert_code(i32 noundef %code) local_unnamed_addr #6 {
entry:
  switch i32 %code, label %sw.default [
    i32 0, label %return
    i32 10, label %return
    i32 20, label %return
    i32 21, label %return
    i32 22, label %return
    i32 30, label %return
    i32 40, label %return
    i32 41, label %sw.bb7
    i32 42, label %return
    i32 43, label %return
    i32 44, label %return
    i32 45, label %return
    i32 46, label %return
    i32 47, label %return
    i32 48, label %return
    i32 49, label %return
    i32 50, label %return
    i32 51, label %return
    i32 60, label %return
    i32 70, label %return
    i32 71, label %return
    i32 80, label %return
    i32 90, label %return
    i32 100, label %return
    i32 110, label %return
    i32 111, label %return
    i32 112, label %return
    i32 113, label %return
    i32 114, label %return
    i32 115, label %return
    i32 86, label %return
    i32 120, label %return
    i32 116, label %sw.bb32
    i32 109, label %sw.bb33
  ]

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb32:                                          ; preds = %entry
  br label %return

sw.bb33:                                          ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default, %sw.bb33, %sw.bb32, %sw.bb7
  %retval.0 = phi i32 [ -1, %sw.default ], [ 40, %sw.bb33 ], [ 40, %sw.bb32 ], [ -1, %sw.bb7 ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ], [ %code, %entry ]
  ret i32 %retval.0
}

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @ssl_prf_md(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 2860}
!9 = !{!"ssl_st", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !11, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !12, i64 72, !6, i64 132, !11, i64 136, !11, i64 144, !5, i64 152, !5, i64 160, !13, i64 168, !11, i64 1208, !11, i64 1216, !11, i64 1224, !10, i64 1232, !11, i64 1240, !16, i64 1248, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !10, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !11, i64 2120, !6, i64 2128, !11, i64 2144, !11, i64 2152, !11, i64 2160, !11, i64 2168, !6, i64 2176, !11, i64 2192, !11, i64 2200, !6, i64 2208, !5, i64 2272, !6, i64 2280, !5, i64 2288, !6, i64 2296, !11, i64 2328, !11, i64 2336, !11, i64 2344, !5, i64 2352, !11, i64 2360, !6, i64 2368, !5, i64 2400, !10, i64 2408, !11, i64 2416, !11, i64 2424, !10, i64 2432, !10, i64 2436, !11, i64 2440, !11, i64 2448, !11, i64 2456, !11, i64 2464, !11, i64 2472, !11, i64 2480, !5, i64 2488, !17, i64 2496, !11, i64 2512, !11, i64 2520, !6, i64 2528, !5, i64 2536, !10, i64 2544, !10, i64 2548, !10, i64 2552, !5, i64 2560, !10, i64 2568, !10, i64 2572, !5, i64 2576, !5, i64 2584, !5, i64 2592, !18, i64 2600, !11, i64 2904, !10, i64 2912, !11, i64 2920, !11, i64 2928, !11, i64 2936, !10, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !10, i64 2976, !10, i64 2980, !6, i64 2984, !10, i64 2988, !11, i64 2992, !5, i64 3000, !10, i64 3008, !11, i64 3016, !20, i64 3024, !11, i64 3152, !21, i64 3160, !11, i64 7448, !11, i64 7456, !11, i64 7464, !11, i64 7472, !5, i64 7480, !10, i64 7488, !10, i64 7492, !10, i64 7496, !11, i64 7504, !11, i64 7512, !5, i64 7520, !11, i64 7528, !5, i64 7536, !5, i64 7544, !5, i64 7552, !11, i64 7560, !11, i64 7568, !11, i64 7576, !11, i64 7584, !11, i64 7592, !5, i64 7600}
!10 = !{!"int", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !6, i64 52, !6, i64 56}
!13 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !5, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !10, i64 216, !10, i64 220, !11, i64 224, !11, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !6, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !14, i64 280, !6, i64 840, !5, i64 904, !6, i64 912, !5, i64 976, !10, i64 984, !10, i64 988, !11, i64 992, !5, i64 1000, !11, i64 1008, !5, i64 1016, !10, i64 1024, !6, i64 1028, !6, i64 1029, !15, i64 1030, !11, i64 1032}
!14 = !{!"", !6, i64 0, !5, i64 128, !6, i64 136, !5, i64 264, !5, i64 272, !10, i64 280, !11, i64 288, !11, i64 296, !10, i64 304, !11, i64 312, !5, i64 320, !11, i64 328, !5, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !10, i64 368, !5, i64 376, !11, i64 384, !10, i64 392, !11, i64 400, !5, i64 408, !11, i64 416, !5, i64 424, !11, i64 432, !5, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !5, i64 480, !5, i64 488, !11, i64 496, !6, i64 504, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552}
!15 = !{!"short", !6, i64 0}
!16 = !{!"ssl_dane_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !5, i64 56}
!17 = !{!"crypto_ex_data_st", !11, i64 0, !11, i64 8}
!18 = !{!"", !6, i64 0, !11, i64 32, !11, i64 40, !11, i64 48, !10, i64 56, !11, i64 64, !15, i64 72, !10, i64 76, !19, i64 80, !10, i64 112, !10, i64 116, !5, i64 120, !11, i64 128, !5, i64 136, !11, i64 144, !5, i64 152, !11, i64 160, !5, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !5, i64 232, !11, i64 240, !5, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !11, i64 272, !5, i64 280, !10, i64 288, !6, i64 292, !10, i64 296}
!19 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !5, i64 24}
!20 = !{!"srp_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !10, i64 112, !5, i64 120}
!21 = !{!"record_layer_st", !11, i64 0, !10, i64 8, !10, i64 12, !5, i64 16, !5, i64 24, !22, i64 32, !6, i64 80, !6, i64 1616, !11, i64 4176, !5, i64 4184, !5, i64 4192, !6, i64 4200, !5, i64 4208, !5, i64 4216, !5, i64 4224, !10, i64 4232, !5, i64 4240, !11, i64 4248, !6, i64 4256, !6, i64 4264, !10, i64 4272, !10, i64 4276, !11, i64 4280}
!22 = !{!"ssl3_buffer_st", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40}
!23 = !{i64 0, i64 8, !24, i64 8, i64 4, !25, i64 16, i64 8, !24, i64 24, i64 8, !4, i64 32, i64 8, !4}
!24 = !{!11, !11, i64 0}
!25 = !{!10, !10, i64 0}
!26 = !{!9, !11, i64 800}
!27 = !{!9, !11, i64 808}
!28 = !{!9, !10, i64 816}
!29 = !{!9, !11, i64 832}
!30 = !{!9, !5, i64 168}
!31 = !{!9, !11, i64 736}
!32 = !{!33, !10, i64 64}
!33 = !{!"ssl_cipher_st", !10, i64 0, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72}
!34 = !{!9, !10, i64 1344}
!35 = !{!9, !11, i64 2120}
!36 = !{!9, !11, i64 2160}
!37 = !{!38, !11, i64 16}
!38 = !{!"ssl_comp_st", !10, i64 0, !11, i64 8, !11, i64 16}
!39 = !{!9, !11, i64 8}
!40 = !{!41, !11, i64 192}
!41 = !{!"ssl_method_st", !10, i64 0, !10, i64 4, !5, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216}
!42 = !{!43, !10, i64 96}
!43 = !{!"ssl3_enc_method", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !11, i64 64, !5, i64 72, !11, i64 80, !11, i64 88, !10, i64 96, !11, i64 104, !11, i64 112, !11, i64 120}
!44 = !{!9, !6, i64 124}
!45 = !{!9, !11, i64 2168}
!46 = !{!9, !11, i64 2192}
!47 = !{!9, !11, i64 2152}
!48 = !{!9, !11, i64 792}
!49 = !{!9, !5, i64 824}
!50 = !{!9, !5, i64 784}
!51 = !{!9, !11, i64 2472}
!52 = !{!53, !11, i64 0}
!53 = !{!"ssl_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !11, i64 64, !11, i64 72, !10, i64 80, !5, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !54, i64 120, !6, i64 164, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !17, i64 240, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !5, i64 312, !10, i64 320, !10, i64 324, !10, i64 328, !5, i64 336, !11, i64 344, !10, i64 352, !11, i64 360, !11, i64 368, !10, i64 376, !5, i64 384, !6, i64 392, !11, i64 424, !11, i64 432, !11, i64 440, !10, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !11, i64 512, !11, i64 520, !11, i64 528, !55, i64 536, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !20, i64 792, !56, i64 920, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !10, i64 984, !10, i64 988, !11, i64 992, !11, i64 1000, !5, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !5, i64 1040, !11, i64 1048, !11, i64 1056, !10, i64 1064, !11, i64 1072, !11, i64 1080, !11, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !11, i64 1568, !11, i64 1576, !5, i64 1584, !5, i64 1592, !10, i64 1600, !10, i64 1604, !10, i64 1608, !10, i64 1612}
!54 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!55 = !{!"", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !10, i64 72, !6, i64 76, !5, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !5, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !5, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !6, i64 192}
!56 = !{!"dane_ctx_st", !11, i64 0, !11, i64 8, !6, i64 16, !5, i64 24}
!57 = !{!53, !11, i64 1088}
!58 = !{!33, !10, i64 36}
!59 = !{!9, !11, i64 2328}
!60 = !{!9, !5, i64 2536}
!61 = !{!41, !10, i64 0}
!62 = !{!9, !10, i64 384}
!63 = !{!64, !11, i64 760}
!64 = !{!"ssl_session_st", !10, i64 0, !5, i64 8, !6, i64 16, !6, i64 80, !5, i64 592, !6, i64 600, !5, i64 632, !6, i64 640, !11, i64 672, !11, i64 680, !10, i64 688, !11, i64 696, !11, i64 704, !5, i64 712, !6, i64 720, !5, i64 728, !5, i64 736, !5, i64 744, !10, i64 752, !10, i64 756, !11, i64 760, !5, i64 768, !10, i64 776, !17, i64 784, !11, i64 800, !11, i64 808, !65, i64 816, !11, i64 880, !11, i64 888, !5, i64 896, !10, i64 904, !11, i64 912, !11, i64 920}
!65 = !{!"", !11, i64 0, !11, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !11, i64 40, !5, i64 48, !6, i64 56}
!66 = !{!64, !5, i64 8}
!67 = !{!33, !10, i64 28}
!68 = !{!64, !10, i64 904}
!69 = !{!6, !6, i64 0}
