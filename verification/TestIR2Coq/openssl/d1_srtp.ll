; ModuleID = 'ssl/d1_srtp.c'
source_filename = "ssl/d1_srtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srtp_protection_profile_st = type { i8*, i64 }
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
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [14 x i8] c"ssl/d1_srtp.c\00", align 1
@__func__.ssl_ctx_make_profiles = private unnamed_addr constant [22 x i8] c"ssl_ctx_make_profiles\00", align 1
@srtp_known_profiles = internal global [5 x %struct.srtp_protection_profile_st] [%struct.srtp_protection_profile_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i64 1 }, %struct.srtp_protection_profile_st { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i64 2 }, %struct.srtp_protection_profile_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i64 7 }, %struct.srtp_protection_profile_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64 8 }, %struct.srtp_protection_profile_st zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"SRTP_AES128_CM_SHA1_80\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SRTP_AES128_CM_SHA1_32\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SRTP_AEAD_AES_128_GCM\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SRTP_AEAD_AES_256_GCM\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_tlsext_use_srtp(%struct.ssl_ctx_st* nocapture noundef %ctx, i8* noundef %profiles) local_unnamed_addr #0 {
entry:
  %srtp_profiles = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 67
  %call = tail call fastcc i32 @ssl_ctx_make_profiles(i8* noundef %profiles, %struct.stack_st_SRTP_PROTECTION_PROFILE** noundef nonnull %srtp_profiles) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_ctx_make_profiles(i8* noundef %profiles_string, %struct.stack_st_SRTP_PROTECTION_PROFILE** nocapture noundef %out) unnamed_addr #0 {
entry:
  %p = alloca %struct.srtp_protection_profile_st*, align 8
  %0 = bitcast %struct.srtp_protection_profile_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_SRTP_PROTECTION_PROFILE*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %2 = bitcast %struct.srtp_protection_profile_st** %p to i8**
  br label %do.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_ctx_make_profiles, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 362, i8* noundef null) #9
  br label %cleanup

do.body:                                          ; preds = %do.body.preheader, %if.end18
  %ptr.0 = phi i8* [ %add.ptr, %if.end18 ], [ %profiles_string, %do.body.preheader ]
  %call1 = tail call i8* @strchr(i8* noundef %ptr.0, i32 noundef 58) #10
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %do.body
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %ptr.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call2 = tail call i64 @strlen(i8* noundef %ptr.0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %call2, %cond.false ]
  %call3 = call fastcc i32 @find_profile_by_name(i8* noundef %ptr.0, %struct.srtp_protection_profile_st** noundef nonnull %p, i64 noundef %cond) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %cond.end
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef nonnull %1) #7
  %3 = load i8*, i8** %2, align 8, !tbaa !4
  %call8 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call6, i8* noundef %3) #9
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then5
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_ctx_make_profiles, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 353, i8* noundef null) #9
  br label %err

if.end11:                                         ; preds = %if.then5
  %call14 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call6, i8* noundef %3) #9
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end11
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_ctx_make_profiles, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 362, i8* noundef null) #9
  br label %err

if.else:                                          ; preds = %cond.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ssl_ctx_make_profiles, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 364, i8* noundef null) #9
  %.pre = tail call fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef nonnull %1) #7
  br label %err

if.end18:                                         ; preds = %if.end11
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 1
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %if.end18
  %4 = load %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.stack_st_SRTP_PROTECTION_PROFILE** %out, align 8, !tbaa !4
  %call23 = tail call fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef %4) #7
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call23) #9
  %5 = bitcast %struct.stack_st_SRTP_PROTECTION_PROFILE** %out to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %5, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.else, %if.then16, %if.then10
  %call24.pre-phi = phi %struct.stack_st* [ %.pre, %if.else ], [ %call6, %if.then16 ], [ %call6, %if.then10 ]
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call24.pre-phi) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %err ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_tlsext_use_srtp(%struct.ssl_st* nocapture noundef %s, i8* noundef %profiles) local_unnamed_addr #0 {
entry:
  %srtp_profiles = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 96
  %call = tail call fastcc i32 @ssl_ctx_make_profiles(i8* noundef %profiles, %struct.stack_st_SRTP_PROTECTION_PROFILE** noundef nonnull %srtp_profiles) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_SRTP_PROTECTION_PROFILE* @SSL_get_srtp_profiles(%struct.ssl_st* noundef readonly %s) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.ssl_st* %s, null
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %srtp_profiles = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 96
  %0 = load %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.stack_st_SRTP_PROTECTION_PROFILE** %srtp_profiles, align 8, !tbaa !10
  %cmp1.not = icmp eq %struct.stack_st_SRTP_PROTECTION_PROFILE* %0, null
  br i1 %cmp1.not, label %if.else, label %return

if.else:                                          ; preds = %if.then
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !25
  %cmp4.not = icmp eq %struct.ssl_ctx_st* %1, null
  br i1 %cmp4.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %srtp_profiles6 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 67
  %2 = load %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.stack_st_SRTP_PROTECTION_PROFILE** %srtp_profiles6, align 8, !tbaa !26
  %cmp7.not = icmp eq %struct.stack_st_SRTP_PROTECTION_PROFILE* %2, null
  br i1 %cmp7.not, label %if.end12, label %return

if.end12:                                         ; preds = %land.lhs.true, %if.else, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.then, %if.end12
  %retval.0 = phi %struct.stack_st_SRTP_PROTECTION_PROFILE* [ null, %if.end12 ], [ %0, %if.then ], [ %2, %land.lhs.true ]
  ret %struct.stack_st_SRTP_PROTECTION_PROFILE* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.srtp_protection_profile_st* @SSL_get_selected_srtp_profile(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %srtp_profile = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 97
  %0 = load %struct.srtp_protection_profile_st*, %struct.srtp_protection_profile_st** %srtp_profile, align 8, !tbaa !31
  ret %struct.srtp_protection_profile_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @find_profile_by_name(i8* noundef readonly %profile_name, %struct.srtp_protection_profile_st** nocapture noundef writeonly %pptr, i64 noundef %len) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** getelementptr inbounds ([5 x %struct.srtp_protection_profile_st], [5 x %struct.srtp_protection_profile_st]* @srtp_known_profiles, i64 0, i64 0, i32 0), align 16, !tbaa !32
  %tobool.not12 = icmp eq i8* %0, null
  br i1 %tobool.not12, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %1 = phi i8* [ %2, %if.end ], [ %0, %entry ]
  %p.013 = phi %struct.srtp_protection_profile_st* [ %incdec.ptr, %if.end ], [ getelementptr inbounds ([5 x %struct.srtp_protection_profile_st], [5 x %struct.srtp_protection_profile_st]* @srtp_known_profiles, i64 0, i64 0), %entry ]
  %call = tail call i64 @strlen(i8* noundef nonnull %1) #10
  %cmp = icmp eq i64 %call, %len
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %call3 = tail call i32 @strncmp(i8* noundef nonnull %1, i8* noundef %profile_name, i64 noundef %len) #10
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.srtp_protection_profile_st* %p.013, %struct.srtp_protection_profile_st** %pptr, align 8, !tbaa !4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %while.body
  %incdec.ptr = getelementptr inbounds %struct.srtp_protection_profile_st, %struct.srtp_protection_profile_st* %p.013, i64 1
  %name = getelementptr inbounds %struct.srtp_protection_profile_st, %struct.srtp_protection_profile_st* %incdec.ptr, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !32
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %cleanup, label %while.body, !llvm.loop !34

cleanup:                                          ; preds = %if.end, %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SRTP_PROTECTION_PROFILE_sk_type(%struct.stack_st_SRTP_PROTECTION_PROFILE* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_SRTP_PROTECTION_PROFILE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !5, i64 2960}
!11 = !{!"ssl_st", !12, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !5, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !13, i64 72, !6, i64 132, !5, i64 136, !5, i64 144, !14, i64 152, !14, i64 160, !15, i64 168, !5, i64 1208, !5, i64 1216, !5, i64 1224, !12, i64 1232, !5, i64 1240, !18, i64 1248, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !12, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !5, i64 2120, !6, i64 2128, !5, i64 2144, !5, i64 2152, !5, i64 2160, !5, i64 2168, !6, i64 2176, !5, i64 2192, !5, i64 2200, !6, i64 2208, !14, i64 2272, !6, i64 2280, !14, i64 2288, !6, i64 2296, !5, i64 2328, !5, i64 2336, !5, i64 2344, !14, i64 2352, !5, i64 2360, !6, i64 2368, !14, i64 2400, !12, i64 2408, !5, i64 2416, !5, i64 2424, !12, i64 2432, !12, i64 2436, !5, i64 2440, !5, i64 2448, !5, i64 2456, !5, i64 2464, !5, i64 2472, !5, i64 2480, !14, i64 2488, !19, i64 2496, !5, i64 2512, !5, i64 2520, !6, i64 2528, !14, i64 2536, !12, i64 2544, !12, i64 2548, !12, i64 2552, !14, i64 2560, !12, i64 2568, !12, i64 2572, !14, i64 2576, !14, i64 2584, !14, i64 2592, !20, i64 2600, !5, i64 2904, !12, i64 2912, !5, i64 2920, !5, i64 2928, !5, i64 2936, !12, i64 2944, !5, i64 2952, !5, i64 2960, !5, i64 2968, !12, i64 2976, !12, i64 2980, !6, i64 2984, !12, i64 2988, !5, i64 2992, !14, i64 3000, !12, i64 3008, !5, i64 3016, !22, i64 3024, !5, i64 3152, !23, i64 3160, !5, i64 7448, !5, i64 7456, !5, i64 7464, !5, i64 7472, !14, i64 7480, !12, i64 7488, !12, i64 7492, !12, i64 7496, !5, i64 7504, !5, i64 7512, !14, i64 7520, !5, i64 7528, !14, i64 7536, !14, i64 7544, !14, i64 7552, !5, i64 7560, !5, i64 7568, !5, i64 7576, !5, i64 7584, !5, i64 7592, !14, i64 7600}
!12 = !{!"int", !6, i64 0}
!13 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !6, i64 52, !6, i64 56}
!14 = !{!"long", !6, i64 0}
!15 = !{!"", !14, i64 0, !14, i64 8, !6, i64 16, !14, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !12, i64 216, !12, i64 220, !5, i64 224, !5, i64 232, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !6, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !16, i64 280, !6, i64 840, !14, i64 904, !6, i64 912, !14, i64 976, !12, i64 984, !12, i64 988, !5, i64 992, !14, i64 1000, !5, i64 1008, !14, i64 1016, !12, i64 1024, !6, i64 1028, !6, i64 1029, !17, i64 1030, !5, i64 1032}
!16 = !{!"", !6, i64 0, !14, i64 128, !6, i64 136, !14, i64 264, !14, i64 272, !12, i64 280, !5, i64 288, !5, i64 296, !12, i64 304, !5, i64 312, !14, i64 320, !5, i64 328, !14, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !12, i64 368, !14, i64 376, !5, i64 384, !12, i64 392, !5, i64 400, !14, i64 408, !5, i64 416, !14, i64 424, !5, i64 432, !14, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !14, i64 480, !14, i64 488, !5, i64 496, !6, i64 504, !12, i64 540, !12, i64 544, !12, i64 548, !12, i64 552}
!17 = !{!"short", !6, i64 0}
!18 = !{!"ssl_dane_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !14, i64 56}
!19 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!20 = !{!"", !6, i64 0, !5, i64 32, !5, i64 40, !5, i64 48, !12, i64 56, !5, i64 64, !17, i64 72, !12, i64 76, !21, i64 80, !12, i64 112, !12, i64 116, !14, i64 120, !5, i64 128, !14, i64 136, !5, i64 144, !14, i64 152, !5, i64 160, !14, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !14, i64 232, !5, i64 240, !14, i64 248, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !5, i64 272, !14, i64 280, !12, i64 288, !6, i64 292, !12, i64 296}
!21 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !14, i64 24}
!22 = !{!"srp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !12, i64 112, !14, i64 120}
!23 = !{!"record_layer_st", !5, i64 0, !12, i64 8, !12, i64 12, !14, i64 16, !14, i64 24, !24, i64 32, !6, i64 80, !6, i64 1616, !5, i64 4176, !14, i64 4184, !14, i64 4192, !6, i64 4200, !14, i64 4208, !14, i64 4216, !14, i64 4224, !12, i64 4232, !14, i64 4240, !5, i64 4248, !6, i64 4256, !6, i64 4264, !12, i64 4272, !12, i64 4276, !5, i64 4280}
!24 = !{!"ssl3_buffer_st", !5, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !12, i64 40}
!25 = !{!11, !5, i64 2472}
!26 = !{!27, !5, i64 952}
!27 = !{!"ssl_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !14, i64 56, !5, i64 64, !5, i64 72, !12, i64 80, !14, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !28, i64 120, !6, i64 164, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !19, i64 240, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !14, i64 312, !12, i64 320, !12, i64 324, !12, i64 328, !14, i64 336, !5, i64 344, !12, i64 352, !5, i64 360, !5, i64 368, !12, i64 376, !14, i64 384, !6, i64 392, !5, i64 424, !5, i64 432, !5, i64 440, !12, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !29, i64 536, !5, i64 760, !5, i64 768, !5, i64 776, !5, i64 784, !22, i64 792, !30, i64 920, !5, i64 952, !5, i64 960, !5, i64 968, !5, i64 976, !12, i64 984, !12, i64 988, !5, i64 992, !5, i64 1000, !14, i64 1008, !5, i64 1016, !5, i64 1024, !5, i64 1032, !14, i64 1040, !5, i64 1048, !5, i64 1056, !12, i64 1064, !5, i64 1072, !5, i64 1080, !5, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !5, i64 1568, !5, i64 1576, !14, i64 1584, !14, i64 1592, !12, i64 1600, !12, i64 1604, !12, i64 1608, !12, i64 1612}
!28 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!29 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !12, i64 72, !6, i64 76, !14, i64 80, !5, i64 88, !14, i64 96, !5, i64 104, !5, i64 112, !14, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !14, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !6, i64 192}
!30 = !{!"dane_ctx_st", !5, i64 0, !5, i64 8, !6, i64 16, !14, i64 24}
!31 = !{!11, !5, i64 2968}
!32 = !{!33, !5, i64 0}
!33 = !{!"srtp_protection_profile_st", !5, i64 0, !14, i64 8}
!34 = distinct !{!34, !9}
