; ModuleID = 'ssl/ssl_rsa.c'
source_filename = "ssl/ssl_rsa.c"
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
%struct.x509_st = type opaque
%struct.SSL_CERT_LOOKUP = type { i32, i32 }
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [14 x i8] c"ssl/ssl_rsa.c\00", align 1
@__func__.SSL_use_certificate = private unnamed_addr constant [20 x i8] c"SSL_use_certificate\00", align 1
@__func__.SSL_use_certificate_file = private unnamed_addr constant [25 x i8] c"SSL_use_certificate_file\00", align 1
@__func__.SSL_use_certificate_ASN1 = private unnamed_addr constant [25 x i8] c"SSL_use_certificate_ASN1\00", align 1
@__func__.SSL_use_PrivateKey = private unnamed_addr constant [19 x i8] c"SSL_use_PrivateKey\00", align 1
@__func__.SSL_use_PrivateKey_file = private unnamed_addr constant [24 x i8] c"SSL_use_PrivateKey_file\00", align 1
@__func__.SSL_use_PrivateKey_ASN1 = private unnamed_addr constant [24 x i8] c"SSL_use_PrivateKey_ASN1\00", align 1
@__func__.SSL_CTX_use_certificate = private unnamed_addr constant [24 x i8] c"SSL_CTX_use_certificate\00", align 1
@__func__.SSL_CTX_use_certificate_file = private unnamed_addr constant [29 x i8] c"SSL_CTX_use_certificate_file\00", align 1
@__func__.SSL_CTX_use_certificate_ASN1 = private unnamed_addr constant [29 x i8] c"SSL_CTX_use_certificate_ASN1\00", align 1
@__func__.SSL_CTX_use_PrivateKey = private unnamed_addr constant [23 x i8] c"SSL_CTX_use_PrivateKey\00", align 1
@__func__.SSL_CTX_use_PrivateKey_file = private unnamed_addr constant [28 x i8] c"SSL_CTX_use_PrivateKey_file\00", align 1
@__func__.SSL_CTX_use_PrivateKey_ASN1 = private unnamed_addr constant [28 x i8] c"SSL_CTX_use_PrivateKey_ASN1\00", align 1
@__func__.SSL_CTX_use_serverinfo_ex = private unnamed_addr constant [26 x i8] c"SSL_CTX_use_serverinfo_ex\00", align 1
@SSL_CTX_use_serverinfo_file.namePrefix1 = internal constant [16 x i8] c"SERVERINFO FOR \00", align 16
@SSL_CTX_use_serverinfo_file.namePrefix2 = internal constant [18 x i8] c"SERVERINFOV2 FOR \00", align 16
@__func__.SSL_CTX_use_serverinfo_file = private unnamed_addr constant [28 x i8] c"SSL_CTX_use_serverinfo_file\00", align 1
@__func__.ssl_set_pkey = private unnamed_addr constant [13 x i8] c"ssl_set_pkey\00", align 1
@__func__.ssl_set_cert = private unnamed_addr constant [13 x i8] c"ssl_set_cert\00", align 1
@__func__.use_certificate_chain_file = private unnamed_addr constant [27 x i8] c"use_certificate_chain_file\00", align 1
@__func__.ssl_set_cert_and_key = private unnamed_addr constant [21 x i8] c"ssl_set_cert_and_key\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_certificate(%struct.ssl_st* noundef %ssl, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_use_certificate, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %ssl, %struct.ssl_ctx_st* noundef null, %struct.x509_st* noundef nonnull %x, i32 noundef 0, i32 noundef 1) #12
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SSL_use_certificate, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call, i8* noundef null) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %call4 = tail call fastcc i32 @ssl_set_cert(%struct.cert_st* noundef %0, %struct.x509_st* noundef nonnull %x) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ssl_security_cert(%struct.ssl_st* noundef, %struct.ssl_ctx_st* noundef, %struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_set_cert(%struct.cert_st* noundef %c, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %i = alloca i64, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %x) #12
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_set_cert, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 268, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef nonnull %call, i64* noundef nonnull %i) #12
  %cmp2 = icmp eq %struct.SSL_CERT_LOOKUP* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_set_cert, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 247, i8* noundef null) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load i64, i64* %i, align 8, !tbaa !22
  %cmp5 = icmp eq i64 %1, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %call6 = call i32 @EVP_PKEY_can_sign(%struct.evp_pkey_st* noundef nonnull %call) #12
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i64, i64* %i, align 8, !tbaa !22
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_set_cert, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 318, i8* noundef null) #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4
  %2 = phi i64 [ %.pre, %land.lhs.true.if.end8_crit_edge ], [ %1, %if.end4 ]
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %2, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !23
  %cmp9.not = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp9.not, label %if.end28, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call14 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %3) #12
  call void @ERR_clear_error() #12
  %4 = load i64, i64* %i, align 8, !tbaa !22
  %privatekey17 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %4, i32 1
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey17, align 8, !tbaa !23
  %call18 = call i32 @X509_check_private_key(%struct.x509_st* noundef %x, %struct.evp_pkey_st* noundef %5) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.then10
  %6 = load i64, i64* %i, align 8, !tbaa !22
  %privatekey23 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %6, i32 1
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey23, align 8, !tbaa !23
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #12
  %8 = load i64, i64* %i, align 8, !tbaa !22
  %privatekey26 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %8, i32 1
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %privatekey26, align 8, !tbaa !23
  call void @ERR_clear_error() #12
  br label %if.end28

if.end28:                                         ; preds = %if.then10, %if.then20, %if.end8
  %9 = load i64, i64* %i, align 8, !tbaa !22
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %9, i32 0
  %10 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !25
  call void @X509_free(%struct.x509_st* noundef %10) #12
  %call31 = call i32 @X509_up_ref(%struct.x509_st* noundef %x) #12
  %11 = load i64, i64* %i, align 8, !tbaa !22
  %x50934 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %11, i32 0
  store %struct.x509_st* %x, %struct.x509_st** %x50934, align 8, !tbaa !25
  %arrayidx36 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %11
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 0
  store %struct.cert_pkey_st* %arrayidx36, %struct.cert_pkey_st** %key, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.end28 ], [ 0, %if.then7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_certificate_file(%struct.ssl_st* noundef %ssl, i8* noundef %file, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !29
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #12
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %end

if.end6:                                          ; preds = %if.end
  %1 = add i32 %type, -3
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #12
  br label %end

if.end12:                                         ; preds = %if.end6
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %3 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !30
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %3, i64 0, i32 85
  %5 = load i8*, i8** %propq, align 8, !tbaa !36
  %call14 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #12
  store %struct.x509_st* %call14, %struct.x509_st** %x, align 8, !tbaa !29
  %cmp15 = icmp eq %struct.x509_st* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %end

if.end18:                                         ; preds = %if.end12
  switch i32 %type, label %if.else27 [
    i32 2, label %if.then21
    i32 1, label %if.then25
  ]

if.then21:                                        ; preds = %if.end18
  %call22 = call %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x) #12
  br label %if.end29

if.then25:                                        ; preds = %if.end18
  %default_passwd_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 109
  %6 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !37
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 110
  %7 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !38
  %call26 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef %6, i8* noundef %7) #12
  br label %if.end29

if.else27:                                        ; preds = %if.end18
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #12
  br label %end

if.end29:                                         ; preds = %if.then25, %if.then21
  %j.0 = phi i32 [ 524301, %if.then21 ], [ 524297, %if.then25 ]
  %cert.0 = phi %struct.x509_st* [ %call22, %if.then21 ], [ %call26, %if.then25 ]
  %cmp30 = icmp eq %struct.x509_st* %cert.0, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %j.0, i8* noundef null) #12
  br label %end

if.end33:                                         ; preds = %if.end29
  %8 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  %call34 = call i32 @SSL_use_certificate(%struct.ssl_st* noundef nonnull %ssl, %struct.x509_st* noundef %8) #13
  br label %end

end:                                              ; preds = %if.end33, %if.then32, %if.else27, %if.then17, %if.then11, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then11 ], [ 0, %if.then17 ], [ 0, %if.then32 ], [ %call34, %if.end33 ], [ 0, %if.else27 ]
  %9 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %9) #12
  %call35 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef, %struct.x509_st** noundef) local_unnamed_addr #2

declare %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_certificate_ASN1(%struct.ssl_st* noundef %ssl, i8* noundef %d, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %d.addr = alloca i8*, align 8
  %x = alloca %struct.x509_st*, align 8
  store i8* %d, i8** %d.addr, align 8, !tbaa !29
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !30
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !36
  %call = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #12
  store %struct.x509_st* %call, %struct.x509_st** %x, align 8, !tbaa !29
  %cmp = icmp eq %struct.x509_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_ASN1, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %len to i64
  %call2 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %x, i8** noundef nonnull %d.addr, i64 noundef %conv) #12
  %cmp3 = icmp eq %struct.x509_st* %call2, null
  %4 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @X509_free(%struct.x509_st* noundef %4) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.SSL_use_certificate_ASN1, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, i8* noundef null) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @SSL_use_certificate(%struct.ssl_st* noundef nonnull %ssl, %struct.x509_st* noundef %4) #13
  %5 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ %call7, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_PrivateKey(%struct.ssl_st* nocapture noundef readonly %ssl, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.SSL_use_PrivateKey, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !4
  %call = tail call fastcc i32 @ssl_set_pkey(%struct.cert_st* noundef %0, %struct.evp_pkey_st* noundef nonnull %pkey) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_set_pkey(%struct.cert_st* noundef %c, %struct.evp_pkey_st* noundef %pkey) unnamed_addr #0 {
entry:
  %i = alloca i64, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %call = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef %pkey, i64* noundef nonnull %i) #12
  %cmp = icmp eq %struct.SSL_CERT_LOOKUP* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ssl_set_pkey, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 247, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %i, align 8, !tbaa !22
  %x509 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %1, i32 0
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !25
  %cmp1.not = icmp eq %struct.x509_st* %2, null
  br i1 %cmp1.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %2, %struct.evp_pkey_st* noundef %pkey) #12
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i64, i64* %i, align 8, !tbaa !22
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end
  %3 = phi i64 [ %.pre, %land.lhs.true.if.end7_crit_edge ], [ %1, %if.end ]
  %privatekey = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %3, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey, align 8, !tbaa !23
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #12
  %call10 = call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %pkey) #12
  %5 = load i64, i64* %i, align 8, !tbaa !22
  %privatekey13 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %5, i32 1
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %privatekey13, align 8, !tbaa !23
  %arrayidx15 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 5, i64 %5
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 0
  store %struct.cert_pkey_st* %arrayidx15, %struct.cert_pkey_st** %key, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end7 ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_PrivateKey_file(%struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %file, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #12
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %end

if.end6:                                          ; preds = %if.end
  switch i32 %type, label %if.else20 [
    i32 1, label %if.then9
    i32 2, label %if.then14
  ]

if.then9:                                         ; preds = %if.end6
  %default_passwd_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 109
  %0 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !37
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 110
  %1 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !38
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %2 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !30
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %2, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !36
  %call11 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %0, i8* noundef %1, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #12
  br label %if.end22

if.then14:                                        ; preds = %if.end6
  %ctx15 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx15, align 8, !tbaa !30
  %libctx16 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 0
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx16, align 8, !tbaa !31
  %propq18 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %5, i64 0, i32 85
  %7 = load i8*, i8** %propq18, align 8, !tbaa !36
  %call19 = tail call %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef null, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #12
  br label %if.end22

if.else20:                                        ; preds = %if.end6
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #12
  br label %end

if.end22:                                         ; preds = %if.then14, %if.then9
  %j.0 = phi i32 [ 524297, %if.then9 ], [ 524301, %if.then14 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call11, %if.then9 ], [ %call19, %if.then14 ]
  %cmp23 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %j.0, i8* noundef null) #12
  br label %end

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef nonnull %ssl, %struct.evp_pkey_st* noundef nonnull %pkey.0) #13
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %pkey.0) #12
  br label %end

end:                                              ; preds = %if.end26, %if.then25, %if.else20, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then25 ], [ %call27, %if.end26 ], [ 0, %if.else20 ]
  %call28 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #12
  ret i32 %ret.0
}

declare %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_PrivateKey_ASN1(i32 noundef %type, %struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %d, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* %d, i8** %p, align 8, !tbaa !29
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !30
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %1, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !36
  %call = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %type, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef %len, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #12
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_use_PrivateKey_ASN1, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @SSL_use_PrivateKey(%struct.ssl_st* noundef nonnull %ssl, %struct.evp_pkey_st* noundef nonnull %call) #13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_st* %x, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_CTX_use_certificate, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef nonnull %x, i32 noundef 0, i32 noundef 1) #12
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SSL_CTX_use_certificate, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call, i8* noundef null) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !39
  %call4 = tail call fastcc i32 @ssl_set_cert(%struct.cert_st* noundef %0, %struct.x509_st* noundef nonnull %x) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_certificate_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %file, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !29
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #12
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %end

if.end6:                                          ; preds = %if.end
  %1 = add i32 %type, -3
  %2 = icmp ult i32 %1, -2
  br i1 %2, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #12
  br label %end

if.end12:                                         ; preds = %if.end6
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %4 = load i8*, i8** %propq, align 8, !tbaa !36
  %call13 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef %4) #12
  store %struct.x509_st* %call13, %struct.x509_st** %x, align 8, !tbaa !29
  %cmp14 = icmp eq %struct.x509_st* %call13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %end

if.end17:                                         ; preds = %if.end12
  switch i32 %type, label %if.then30 [
    i32 2, label %if.then20
    i32 1, label %if.then24
  ]

if.then20:                                        ; preds = %if.end17
  %call21 = call %struct.x509_st* @d2i_X509_bio(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x) #12
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  %default_passwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 19
  %5 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !40
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 20
  %6 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !41
  %call25 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef %5, i8* noundef %6) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then20
  %j.0 = phi i32 [ 524301, %if.then20 ], [ 524297, %if.then24 ]
  %cert.0 = phi %struct.x509_st* [ %call21, %if.then20 ], [ %call25, %if.then24 ]
  %cmp28 = icmp eq %struct.x509_st* %cert.0, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end17, %if.end27
  %j.052 = phi i32 [ %j.0, %if.end27 ], [ 384, %if.end17 ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %j.052, i8* noundef null) #12
  br label %end

if.end31:                                         ; preds = %if.end27
  %7 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  %call32 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %7) #13
  br label %end

end:                                              ; preds = %if.end31, %if.then30, %if.then16, %if.then11, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then30 ], [ %call32, %if.end31 ]
  %8 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %8) #12
  %call33 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_certificate_ASN1(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %len, i8* noundef %d) local_unnamed_addr #0 {
entry:
  %d.addr = alloca i8*, align 8
  %x = alloca %struct.x509_st*, align 8
  store i8* %d, i8** %d.addr, align 8, !tbaa !29
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !36
  %call = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #12
  store %struct.x509_st* %call, %struct.x509_st** %x, align 8, !tbaa !29
  %cmp = icmp eq %struct.x509_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_ASN1, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %len to i64
  %call1 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %x, i8** noundef nonnull %d.addr, i64 noundef %conv) #12
  %cmp2 = icmp eq %struct.x509_st* %call1, null
  %3 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @X509_free(%struct.x509_st* noundef %3) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.SSL_CTX_use_certificate_ASN1, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, i8* noundef null) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %3) #13
  %4 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %call6, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.SSL_CTX_use_PrivateKey, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !39
  %call = tail call fastcc i32 @ssl_set_pkey(%struct.cert_st* noundef %0, %struct.evp_pkey_st* noundef nonnull %pkey) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_PrivateKey_file(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %file, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #12
  br label %end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp slt i32 %conv, 1
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %end

if.end6:                                          ; preds = %if.end
  switch i32 %type, label %if.else17 [
    i32 1, label %if.then9
    i32 2, label %if.then13
  ]

if.then9:                                         ; preds = %if.end6
  %default_passwd_callback = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 19
  %0 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %default_passwd_callback, align 8, !tbaa !40
  %default_passwd_callback_userdata = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 20
  %1 = load i8*, i8** %default_passwd_callback_userdata, align 8, !tbaa !41
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %3 = load i8*, i8** %propq, align 8, !tbaa !36
  %call10 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef %0, i8* noundef %1, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef %3) #12
  br label %if.end19

if.then13:                                        ; preds = %if.end6
  %libctx14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx14, align 8, !tbaa !31
  %propq15 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %5 = load i8*, i8** %propq15, align 8, !tbaa !36
  %call16 = tail call %struct.evp_pkey_st* @d2i_PrivateKey_ex_bio(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef null, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5) #12
  br label %if.end19

if.else17:                                        ; preds = %if.end6
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 124, i8* noundef null) #12
  br label %end

if.end19:                                         ; preds = %if.then13, %if.then9
  %j.0 = phi i32 [ 524297, %if.then9 ], [ 524301, %if.then13 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call10, %if.then9 ], [ %call16, %if.then13 ]
  %cmp20 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_PrivateKey_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %j.0, i8* noundef null) #12
  br label %end

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st* noundef nonnull %pkey.0) #13
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %pkey.0) #12
  br label %end

end:                                              ; preds = %if.end23, %if.then22, %if.else17, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ %call24, %if.end23 ], [ 0, %if.else17 ]
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #12
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_PrivateKey_ASN1(i32 noundef %type, %struct.ssl_ctx_st* nocapture noundef readonly %ctx, i8* noundef %d, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* %d, i8** %p, align 8, !tbaa !29
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !36
  %call = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %type, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef %len, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef %2) #12
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_PrivateKey_ASN1, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524301, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @SSL_CTX_use_PrivateKey(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st* noundef nonnull %call) #13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_certificate_chain_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @use_certificate_chain_file(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_st* noundef null, i8* noundef %file) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @use_certificate_chain_file(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_st* noundef %ssl, i8* noundef %file) unnamed_addr #0 {
entry:
  %x = alloca %struct.x509_st*, align 8
  %ca = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.x509_st* null, %struct.x509_st** %x, align 8, !tbaa !29
  %cmp = icmp eq %struct.ssl_st* %ssl, null
  br i1 %cmp, label %cond.end, label %if.end

cond.end:                                         ; preds = %entry
  %cmp2 = icmp eq %struct.ssl_ctx_st* %ctx, null
  br i1 %cmp2, label %cleanup91, label %if.end.thread

if.end.thread:                                    ; preds = %cond.end
  tail call void @ERR_clear_error() #12
  br label %.thread

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 71
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx1, align 8, !tbaa !30
  %cmp2134 = icmp eq %struct.ssl_ctx_st* %ctx, null
  tail call void @ERR_clear_error() #12
  %default_passwd_callback6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 109
  %default_passwd_callback_userdata7 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 110
  br i1 %cmp2134, label %2, label %.thread

.thread:                                          ; preds = %if.end, %if.end.thread
  %cond136146.ph = phi %struct.ssl_ctx_st* [ %ctx, %if.end.thread ], [ %1, %if.end ]
  %.ph = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 19
  %default_passwd_callback_userdata147.ph = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 20
  br label %2

2:                                                ; preds = %if.end, %.thread
  %3 = phi i32 (i8*, i32, i32, i8*)** [ %.ph, %.thread ], [ %default_passwd_callback6, %if.end ]
  %cmp2137145154 = phi i1 [ false, %.thread ], [ true, %if.end ]
  %cond136146153 = phi %struct.ssl_ctx_st* [ %cond136146.ph, %.thread ], [ %1, %if.end ]
  %4 = phi i8** [ %default_passwd_callback_userdata147.ph, %.thread ], [ %default_passwd_callback_userdata7, %if.end ]
  %passwd_callback_userdata.0 = load i8*, i8** %4, align 8, !tbaa !29
  %passwd_callback.0 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %3, align 8, !tbaa !29
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call9 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp10 = icmp eq %struct.bio_st* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %2
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 443, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.use_certificate_chain_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #12
  br label %end

if.end12:                                         ; preds = %2
  %call13 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call9, i32 noundef 108, i64 noundef 3, i8* noundef %file) #12
  %conv = trunc i64 %call13 to i32
  %cmp14 = icmp slt i32 %conv, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 448, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.use_certificate_chain_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %end

if.end17:                                         ; preds = %if.end12
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %cond136146153, i64 0, i32 0
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %cond136146153, i64 0, i32 85
  %6 = load i8*, i8** %propq, align 8, !tbaa !36
  %call18 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %5, i8* noundef %6) #12
  store %struct.x509_st* %call18, %struct.x509_st** %x, align 8, !tbaa !29
  %cmp19 = icmp eq %struct.x509_st* %call18, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.use_certificate_chain_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %end

if.end22:                                         ; preds = %if.end17
  %call23 = call %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef nonnull %call9, %struct.x509_st** noundef nonnull %x, i32 (i8*, i32, i32, i8*)* noundef %passwd_callback.0, i8* noundef %passwd_callback_userdata.0) #12
  %cmp24 = icmp eq %struct.x509_st* %call23, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.use_certificate_chain_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524297, i8* noundef null) #12
  br label %end

if.end27:                                         ; preds = %if.end22
  %7 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  br i1 %cmp2137145154, label %if.else30, label %if.then28

if.then28:                                        ; preds = %if.end27
  %call29 = call i32 @SSL_CTX_use_certificate(%struct.ssl_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %7) #13
  br label %if.end32

if.else30:                                        ; preds = %if.end27
  %call31 = call i32 @SSL_use_certificate(%struct.ssl_st* noundef %ssl, %struct.x509_st* noundef %7) #13
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  %ret.0 = phi i32 [ %call29, %if.then28 ], [ %call31, %if.else30 ]
  %call33 = call i64 @ERR_peek_error() #12
  %cmp34.not = icmp ne i64 %call33, 0
  %tobool38.not138 = icmp eq i32 %ret.0, 0
  %tobool38.not = select i1 %cmp34.not, i1 true, i1 %tobool38.not138
  br i1 %tobool38.not, label %end, label %if.then39

if.then39:                                        ; preds = %if.end32
  %8 = bitcast %struct.x509_st** %ca to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14
  br i1 %cmp2137145154, label %if.else44, label %if.then41

if.then41:                                        ; preds = %if.then39
  %call42 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 88, i64 noundef 0, i8* noundef null) #12
  br label %if.end47

if.else44:                                        ; preds = %if.then39
  %call45 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 88, i64 noundef 0, i8* noundef null) #12
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then41
  %r.0.in = phi i64 [ %call42, %if.then41 ], [ %call45, %if.else44 ]
  %r.0 = trunc i64 %r.0.in to i32
  %cmp48 = icmp eq i32 %r.0, 0
  br i1 %cmp48, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end47
  %9 = bitcast %struct.x509_st** %ca to i8**
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end70
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !31
  %11 = load i8*, i8** %propq, align 8, !tbaa !36
  %call54 = call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %11) #12
  store %struct.x509_st* %call54, %struct.x509_st** %ca, align 8, !tbaa !29
  %cmp55 = icmp eq %struct.x509_st* %call54, null
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %while.cond
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.use_certificate_chain_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end58:                                         ; preds = %while.cond
  %call59 = call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call9, %struct.x509_st** noundef nonnull %ca, i32 (i8*, i32, i32, i8*)* noundef %passwd_callback.0, i8* noundef %passwd_callback_userdata.0) #12
  %cmp60.not = icmp eq %struct.x509_st* %call59, null
  br i1 %cmp60.not, label %if.else74, label %if.then62

if.then62:                                        ; preds = %if.end58
  %12 = load i8*, i8** %9, align 8, !tbaa !29
  br i1 %cmp2137145154, label %if.else67, label %if.then64

if.then64:                                        ; preds = %if.then62
  %call65 = call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef 89, i64 noundef 0, i8* noundef %12) #12
  br label %if.end70

if.else67:                                        ; preds = %if.then62
  %call68 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %ssl, i32 noundef 89, i64 noundef 0, i8* noundef %12) #12
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then64
  %r.1.in = phi i64 [ %call65, %if.then64 ], [ %call68, %if.else67 ]
  %r.1 = trunc i64 %r.1.in to i32
  %tobool71.not = icmp eq i32 %r.1, 0
  br i1 %tobool71.not, label %if.then72, label %while.cond

if.then72:                                        ; preds = %if.end70
  %13 = load %struct.x509_st*, %struct.x509_st** %ca, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %13) #12
  br label %cleanup

if.else74:                                        ; preds = %if.end58
  %14 = load %struct.x509_st*, %struct.x509_st** %ca, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %14) #12
  %call76 = call i64 @ERR_peek_last_error() #12
  %call77 = call fastcc i32 @ERR_GET_LIB(i64 noundef %call76) #13
  %cmp78 = icmp eq i32 %call77, 9
  br i1 %cmp78, label %land.lhs.true80, label %cleanup

land.lhs.true80:                                  ; preds = %if.else74
  %call81 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call76) #13
  %cmp82 = icmp eq i32 %call81, 108
  br i1 %cmp82, label %if.then84, label %cleanup

if.then84:                                        ; preds = %land.lhs.true80
  call void @ERR_clear_error() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %land.lhs.true80, %if.else74, %if.end47, %if.then72, %if.then57
  %ret.3 = phi i32 [ %ret.0, %if.then57 ], [ 0, %if.then72 ], [ 0, %if.end47 ], [ %ret.0, %if.then84 ], [ 0, %land.lhs.true80 ], [ 0, %if.else74 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #14
  br label %end

end:                                              ; preds = %cleanup, %if.end32, %if.then26, %if.then21, %if.then16, %if.then11
  %ret.4 = phi i32 [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then21 ], [ 0, %if.then26 ], [ %ret.3, %cleanup ], [ 0, %if.end32 ]
  %15 = load %struct.x509_st*, %struct.x509_st** %x, align 8, !tbaa !29
  call void @X509_free(%struct.x509_st* noundef %15) #12
  %call90 = call i32 @BIO_free(%struct.bio_st* noundef %call9) #12
  br label %cleanup91

cleanup91:                                        ; preds = %cond.end, %end
  %retval.0 = phi i32 [ %ret.4, %end ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_certificate_chain_file(%struct.ssl_st* noundef %ssl, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @use_certificate_chain_file(%struct.ssl_ctx_st* noundef null, %struct.ssl_st* noundef %ssl, i8* noundef %file) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_serverinfo_ex(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %version, i8* noundef %serverinfo, i64 noundef %serverinfo_length) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %serverinfo, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i64 %serverinfo_length, 0
  %or.cond30 = or i1 %or.cond, %cmp3
  br i1 %or.cond30, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @serverinfo_process_buffer(i32 noundef %version, i8* noundef nonnull %serverinfo, i64 noundef %serverinfo_length, %struct.ssl_ctx_st* noundef null) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !39
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 0
  %1 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key, align 8, !tbaa !26
  %cmp6 = icmp eq %struct.cert_pkey_st* %1, null
  br i1 %cmp6, label %cleanup.sink.split, label %if.end8

if.end8:                                          ; preds = %if.end5
  %serverinfo11 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %1, i64 0, i32 3
  %2 = load i8*, i8** %serverinfo11, align 8, !tbaa !42
  %call12 = tail call i8* @CRYPTO_realloc(i8* noundef %2, i64 noundef %serverinfo_length, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 726) #12
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %cleanup.sink.split, label %if.end15

if.end15:                                         ; preds = %if.end8
  %3 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !39
  %key17 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %3, i64 0, i32 0
  %4 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key17, align 8, !tbaa !26
  %serverinfo18 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %4, i64 0, i32 3
  store i8* %call12, i8** %serverinfo18, align 8, !tbaa !42
  %call22 = tail call i8* @memcpy(i8* noundef nonnull %call12, i8* noundef nonnull %serverinfo, i64 noundef %serverinfo_length) #12
  %5 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !39
  %key24 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %5, i64 0, i32 0
  %6 = load %struct.cert_pkey_st*, %struct.cert_pkey_st** %key24, align 8, !tbaa !26
  %serverinfo_length25 = getelementptr inbounds %struct.cert_pkey_st, %struct.cert_pkey_st* %6, i64 0, i32 4
  store i64 %serverinfo_length, i64* %serverinfo_length25, align 8, !tbaa !43
  %call26 = tail call fastcc i32 @serverinfo_process_buffer(i32 noundef %version, i8* noundef nonnull %serverinfo, i64 noundef %serverinfo_length, %struct.ssl_ctx_st* noundef nonnull %ctx) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end15, %if.end8, %if.end5, %if.end, %entry
  %.sink48 = phi i32 [ 713, %entry ], [ 718, %if.end ], [ 722, %if.end5 ], [ 728, %if.end8 ], [ 741, %if.end15 ]
  %.sink = phi i32 [ 786690, %entry ], [ 388, %if.end ], [ 786691, %if.end5 ], [ 786688, %if.end8 ], [ 388, %if.end15 ]
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.SSL_CTX_use_serverinfo_ex, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @serverinfo_process_buffer(i32 noundef %version, i8* noundef %serverinfo, i64 noundef %serverinfo_length, %struct.ssl_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %context = alloca i64, align 8
  %ext_type = alloca i32, align 4
  %data = alloca %struct.PACKET, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %cmp = icmp eq i8* %serverinfo, null
  %1 = add i32 %version, -3
  %2 = icmp ult i32 %1, -2
  %or.cond = or i1 %cmp, %2
  br i1 %or.cond, label %cleanup40, label %if.end5

if.end5:                                          ; preds = %entry
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %serverinfo, i64 noundef %serverinfo_length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup40, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end5
  %call854 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %tobool9.not55 = icmp eq i64 %call854, 0
  br i1 %tobool9.not55, label %cleanup40, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %3 = bitcast i64* %context to i8*
  %4 = bitcast i32* %ext_type to i8*
  %5 = bitcast %struct.PACKET* %data to i8*
  %cmp10 = icmp eq i32 %version, 2
  %cmp22 = icmp eq %struct.ssl_ctx_st* %ctx, null
  %cmp25 = icmp eq i32 %version, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store i64 0, i64* %context, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #14
  store i32 0, i32* %ext_type, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #14
  br i1 %cmp10, label %land.lhs.true11, label %lor.lhs.false14

land.lhs.true11:                                  ; preds = %while.body
  %call12 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %context) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup.thread, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true11, %while.body
  %call15 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %ext_type) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.thread, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %data) #13
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.thread, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false17
  br i1 %cmp22, label %cleanup, label %if.end24, !llvm.loop !45

if.end24:                                         ; preds = %if.end21
  %6 = load i64, i64* %context, align 8
  %cmp27 = icmp eq i64 %6, 464
  %or.cond42 = select i1 %cmp25, i1 true, i1 %cmp27
  %7 = load i32, i32* %ext_type, align 4, !tbaa !44
  br i1 %or.cond42, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef %7, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef nonnull @serverinfo_srv_add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef nonnull @serverinfo_srv_parse_cb, i8* noundef null) #12
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup.thread, label %cleanup

if.else:                                          ; preds = %if.end24
  %conv = trunc i64 %6 to i32
  %call33 = tail call i32 @SSL_CTX_add_custom_ext(%struct.ssl_ctx_st* noundef nonnull %ctx, i32 noundef %7, i32 noundef %conv, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* noundef nonnull @serverinfoex_srv_add_cb, void (%struct.ssl_st*, i32, i32, i8*, i8*)* noundef null, i8* noundef null, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* noundef nonnull @serverinfoex_srv_parse_cb, i8* noundef null) #12
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false17, %lor.lhs.false14, %land.lhs.true11, %if.then28, %if.else
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  br label %cleanup40

cleanup:                                          ; preds = %if.then28, %if.else, %if.end21
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  %call8 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %tobool9.not = icmp eq i64 %call8, 0
  br i1 %tobool9.not, label %cleanup40, label %while.body

cleanup40:                                        ; preds = %cleanup, %while.cond.preheader, %cleanup.thread, %if.end5, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.end5 ], [ 0, %cleanup.thread ], [ 1, %while.cond.preheader ], [ 1, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.2
}

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_serverinfo(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %serverinfo, i64 noundef %serverinfo_length) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SSL_CTX_use_serverinfo_ex(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 1, i8* noundef %serverinfo, i64 noundef %serverinfo_length) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_serverinfo_file(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %file) local_unnamed_addr #0 {
entry:
  %extension = alloca i8*, align 8
  %extension_length = alloca i64, align 8
  %name = alloca i8*, align 8
  %header = alloca i8*, align 8
  %0 = bitcast i8** %extension to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %extension, align 8, !tbaa !29
  %1 = bitcast i64* %extension_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %extension_length, align 8, !tbaa !22
  %2 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i8* null, i8** %name, align 8, !tbaa !29
  %3 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store i8* null, i8** %header, align 8, !tbaa !29
  %cmp = icmp eq %struct.ssl_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %file, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #12
  br label %cleanup95

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_file() #12
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #12
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #12
  br label %cleanup95

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call2, i32 noundef 108, i64 noundef 3, i8* noundef nonnull %file) #12
  %conv = trunc i64 %call6 to i32
  %cmp7 = icmp slt i32 %conv, 1
  br i1 %cmp7, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %call11170 = call i32 @PEM_read_bio(%struct.bio_st* noundef nonnull %call2, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %extension, i64* noundef nonnull %extension_length) #12
  %cmp12171 = icmp eq i32 %call11170, 0
  br i1 %cmp12171, label %if.then17, label %if.end18

if.then9:                                         ; preds = %if.end5
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 781, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524290, i8* noundef null) #12
  br label %cleanup95

if.then14:                                        ; preds = %for.inc
  %phi.cmp = icmp eq i64 %inc, 0
  br i1 %phi.cmp, label %if.then17, label %for.end

if.then17:                                        ; preds = %for.cond.preheader, %if.then14
  %serverinfo.0.lcssa188 = phi i8* [ %call75, %if.then14 ], [ null, %for.cond.preheader ]
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 794, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 389, i8* noundef null) #12
  br label %cleanup95

if.end18:                                         ; preds = %for.cond.preheader, %for.inc
  %contextoff.0175 = phi i64 [ %contextoff.1, %for.inc ], [ 0, %for.cond.preheader ]
  %num_extensions.0174 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %serverinfo.0173 = phi i8* [ %call75, %for.inc ], [ null, %for.cond.preheader ]
  %serverinfo_length.0172 = phi i64 [ %add92, %for.inc ], [ 0, %for.cond.preheader ]
  %4 = load i8*, i8** %name, align 8, !tbaa !29
  %call19 = call i64 @strlen(i8* noundef %4) #15
  %conv21 = and i64 %call19, 4294967295
  %cmp22 = icmp ult i64 %conv21, 15
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 392, i8* noundef null) #12
  br label %cleanup95

if.end25:                                         ; preds = %if.end18
  %call26 = call i32 @strncmp(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @SSL_CTX_use_serverinfo_file.namePrefix1, i64 0, i64 0), i64 noundef 15) #15
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then44, label %if.else30

if.else30:                                        ; preds = %if.end25
  %cmp32 = icmp ult i64 %conv21, 17
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else30
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 809, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 392, i8* noundef null) #12
  br label %cleanup95

if.end35:                                         ; preds = %if.else30
  %call36 = call i32 @strncmp(i8* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @SSL_CTX_use_serverinfo_file.namePrefix2, i64 0, i64 0), i64 noundef 17) #15
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.else56, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 813, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 391, i8* noundef null) #12
  br label %cleanup95

if.then44:                                        ; preds = %if.end25
  %5 = load i64, i64* %extension_length, align 8, !tbaa !22
  %cmp45 = icmp slt i64 %5, 4
  br i1 %cmp45, label %if.then54, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.then44
  %6 = load i8*, i8** %extension, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !47
  %conv48 = zext i8 %7 to i64
  %shl = shl nuw nsw i64 %conv48, 8
  %arrayidx49 = getelementptr inbounds i8, i8* %6, i64 3
  %8 = load i8, i8* %arrayidx49, align 1, !tbaa !47
  %conv50 = zext i8 %8 to i64
  %add = or i64 %shl, %conv50
  %sub = add nsw i64 %5, -4
  %cmp52.not = icmp eq i64 %add, %sub
  br i1 %cmp52.not, label %if.end72, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false47, %if.then44
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 826, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 390, i8* noundef null) #12
  br label %cleanup95

if.else56:                                        ; preds = %if.end35
  %9 = load i64, i64* %extension_length, align 8, !tbaa !22
  %cmp57 = icmp slt i64 %9, 8
  br i1 %cmp57, label %if.then70, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.else56
  %10 = load i8*, i8** %extension, align 8, !tbaa !29
  %arrayidx60 = getelementptr inbounds i8, i8* %10, i64 6
  %11 = load i8, i8* %arrayidx60, align 1, !tbaa !47
  %conv61 = zext i8 %11 to i64
  %shl62 = shl nuw nsw i64 %conv61, 8
  %arrayidx63 = getelementptr inbounds i8, i8* %10, i64 7
  %12 = load i8, i8* %arrayidx63, align 1, !tbaa !47
  %conv64 = zext i8 %12 to i64
  %add65 = or i64 %shl62, %conv64
  %sub67 = add nsw i64 %9, -8
  %cmp68.not = icmp eq i64 %add65, %sub67
  br i1 %cmp68.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false59, %if.else56
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 839, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 390, i8* noundef null) #12
  br label %cleanup95

if.end72:                                         ; preds = %lor.lhs.false47, %lor.lhs.false59
  %13 = phi i64 [ %9, %lor.lhs.false59 ], [ %5, %lor.lhs.false47 ]
  %contextoff.1 = phi i64 [ %contextoff.0175, %lor.lhs.false59 ], [ 4, %lor.lhs.false47 ]
  %add73 = add i64 %contextoff.1, %serverinfo_length.0172
  %add74 = add i64 %add73, %13
  %call75 = call i8* @CRYPTO_realloc(i8* noundef %serverinfo.0173, i64 noundef %add74, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 845) #12
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end72
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 847, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.SSL_CTX_use_serverinfo_file, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup95

if.end79:                                         ; preds = %if.end72
  %cmp80.not = icmp eq i64 %contextoff.1, 0
  br i1 %cmp80.not, label %for.inc, label %if.then82

if.then82:                                        ; preds = %if.end79
  %add.ptr = getelementptr inbounds i8, i8* %call75, i64 %serverinfo_length.0172
  store i8 0, i8* %add.ptr, align 1, !tbaa !47
  %arrayidx84 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 0, i8* %arrayidx84, align 1, !tbaa !47
  %arrayidx85 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  store i8 1, i8* %arrayidx85, align 1, !tbaa !47
  %arrayidx86 = getelementptr inbounds i8, i8* %add.ptr, i64 3
  store i8 -48, i8* %arrayidx86, align 1, !tbaa !47
  br label %for.inc

for.inc:                                          ; preds = %if.end79, %if.then82
  %add.ptr88 = getelementptr inbounds i8, i8* %call75, i64 %serverinfo_length.0172
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr88, i64 %contextoff.1
  %14 = load i8*, i8** %extension, align 8, !tbaa !29
  %15 = load i64, i64* %extension_length, align 8, !tbaa !22
  %call90 = call i8* @memcpy(i8* noundef nonnull %add.ptr89, i8* noundef %14, i64 noundef %15) #12
  %16 = load i64, i64* %extension_length, align 8, !tbaa !22
  %add92 = add i64 %add73, %16
  %17 = load i8*, i8** %name, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 864) #12
  store i8* null, i8** %name, align 8, !tbaa !29
  %18 = load i8*, i8** %header, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 866) #12
  store i8* null, i8** %header, align 8, !tbaa !29
  %19 = load i8*, i8** %extension, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 868) #12
  store i8* null, i8** %extension, align 8, !tbaa !29
  %inc = add i64 %num_extensions.0174, 1
  %call11 = call i32 @PEM_read_bio(%struct.bio_st* noundef nonnull %call2, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %extension, i64* noundef nonnull %extension_length) #12
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end18

for.end:                                          ; preds = %if.then14
  %call93 = call i32 @SSL_CTX_use_serverinfo_ex(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 2, i8* noundef nonnull %call75, i64 noundef %add92) #13
  br label %cleanup95

cleanup95:                                        ; preds = %if.then39, %if.then34, %if.then70, %if.then78, %if.then54, %if.then24, %if.then17, %if.then, %if.then4, %if.then9, %for.end
  %serverinfo.2 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then9 ], [ %call75, %for.end ], [ %serverinfo.0.lcssa188, %if.then17 ], [ %serverinfo.0173, %if.then24 ], [ %serverinfo.0173, %if.then54 ], [ %serverinfo.0173, %if.then78 ], [ %serverinfo.0173, %if.then70 ], [ %serverinfo.0173, %if.then34 ], [ %serverinfo.0173, %if.then39 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ %call93, %for.end ], [ 0, %if.then17 ], [ 0, %if.then24 ], [ 0, %if.then54 ], [ 0, %if.then78 ], [ 0, %if.then70 ], [ 0, %if.then34 ], [ 0, %if.then39 ]
  %bin.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.then4 ], [ %call2, %if.then9 ], [ %call2, %for.end ], [ %call2, %if.then17 ], [ %call2, %if.then24 ], [ %call2, %if.then54 ], [ %call2, %if.then78 ], [ %call2, %if.then70 ], [ %call2, %if.then34 ], [ %call2, %if.then39 ]
  %20 = load i8*, i8** %name, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 876) #12
  %21 = load i8*, i8** %header, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 877) #12
  %22 = load i8*, i8** %extension, align 8, !tbaa !29
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 878) #12
  call void @CRYPTO_free(i8* noundef %serverinfo.2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 879) #12
  %call94 = call i32 @BIO_free(%struct.bio_st* noundef %bin.0) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

declare i32 @PEM_read_bio(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_use_cert_and_key(%struct.ssl_st* noundef %ssl, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %privatekey, %struct.stack_st_X509* noundef %chain, i32 noundef %override) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ssl_set_cert_and_key(%struct.ssl_st* noundef %ssl, %struct.ssl_ctx_st* noundef null, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %privatekey, %struct.stack_st_X509* noundef %chain, i32 noundef %override) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_set_cert_and_key(%struct.ssl_st* noundef %ssl, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %privatekey, %struct.stack_st_X509* noundef %chain, i32 noundef %override) unnamed_addr #0 {
entry:
  %i = alloca i64, align 8
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %cmp.not = icmp eq %struct.ssl_st* %ssl, null
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 49
  %cert1 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %cond.in = select i1 %cmp.not, %struct.cert_st** %cert1, %struct.cert_st** %cert
  %cond = load %struct.cert_st*, %struct.cert_st** %cond.in, align 8, !tbaa !29
  %call = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %ssl, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x509, i32 noundef 0, i32 noundef 1) #12
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #13
  %call4134 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #12
  %cmp5135 = icmp sgt i32 %call4134, 0
  br i1 %cmp5135, label %for.body, label %for.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 898, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call, i8* noundef null) #12
  br label %out

for.cond:                                         ; preds = %for.body
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #12
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !48

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %j.0136 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %j.0136) #12
  %1 = bitcast i8* %call7 to %struct.x509_st*
  %call8 = tail call i32 @ssl_security_cert(%struct.ssl_st* noundef %ssl, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %1, i32 noundef 0, i32 noundef 0) #12
  %cmp9.not = icmp eq i32 %call8, 1
  %inc = add nuw nsw i32 %j.0136, 1
  br i1 %cmp9.not, label %for.cond, label %if.then10

if.then10:                                        ; preds = %for.body
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 904, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %call8, i8* noundef null) #12
  br label %out

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call12 = tail call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef %x509) #12
  %cmp13 = icmp eq %struct.evp_pkey_st* %call12, null
  br i1 %cmp13, label %out, label %if.end15

if.end15:                                         ; preds = %for.end
  %cmp16 = icmp eq %struct.evp_pkey_st* %privatekey, null
  br i1 %cmp16, label %if.end37, label %if.else

if.else:                                          ; preds = %if.end15
  %call18 = tail call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %privatekey) #12
  %tobool.not = icmp eq i32 %call18, 0
  %call27 = tail call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %call12) #12
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.else26, label %if.then19

if.then19:                                        ; preds = %if.else
  br i1 %tobool28.not, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.then19
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 919, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 290, i8* noundef null) #12
  br label %out

if.else23:                                        ; preds = %if.then19
  %call24 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %privatekey, %struct.evp_pkey_st* noundef nonnull %call12) #12
  br label %if.end32

if.else26:                                        ; preds = %if.else
  br i1 %tobool28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.else26
  %call30 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %call12, %struct.evp_pkey_st* noundef nonnull %privatekey) #12
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then29, %if.else23
  %call33 = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef nonnull %call12, %struct.evp_pkey_st* noundef nonnull %privatekey) #12
  %cmp34.not = icmp eq i32 %call33, 1
  br i1 %cmp34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end32
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 932, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 288, i8* noundef null) #12
  br label %out

if.end37:                                         ; preds = %if.end15, %if.end32
  %privatekey.addr.0 = phi %struct.evp_pkey_st* [ %privatekey, %if.end32 ], [ %call12, %if.end15 ]
  %call38 = call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef nonnull %call12, i64* noundef nonnull %i) #12
  %cmp39 = icmp eq %struct.SSL_CERT_LOOKUP* %call38, null
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 937, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 247, i8* noundef null) #12
  br label %out

if.end41:                                         ; preds = %if.end37
  %tobool42.not = icmp eq i32 %override, 0
  br i1 %tobool42.not, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end41
  %2 = load i64, i64* %i, align 8, !tbaa !22
  %x50943 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %2, i32 0
  %3 = load %struct.x509_st*, %struct.x509_st** %x50943, align 8, !tbaa !25
  %cmp44.not = icmp eq %struct.x509_st* %3, null
  br i1 %cmp44.not, label %lor.lhs.false, label %if.then54

lor.lhs.false:                                    ; preds = %land.lhs.true
  %privatekey47 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %2, i32 1
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey47, align 8, !tbaa !23
  %cmp48.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %cmp48.not, label %lor.lhs.false49, label %if.then54

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %chain52 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %2, i32 2
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain52, align 8, !tbaa !49
  %cmp53.not = icmp eq %struct.stack_st_X509* %5, null
  br i1 %cmp53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false49, %lor.lhs.false, %land.lhs.true
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 945, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 289, i8* noundef null) #12
  br label %out

if.end55:                                         ; preds = %lor.lhs.false49, %if.end41
  %cmp56.not = icmp eq %struct.stack_st_X509* %chain, null
  br i1 %cmp56.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %if.end55
  %call58 = call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %chain) #12
  %cmp59 = icmp eq %struct.stack_st_X509* %call58, null
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then57
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 952, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ssl_set_cert_and_key, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #12
  br label %out

if.end62:                                         ; preds = %if.then57, %if.end55
  %dup_chain.0 = phi %struct.stack_st_X509* [ %call58, %if.then57 ], [ null, %if.end55 ]
  %6 = load i64, i64* %i, align 8, !tbaa !22
  %chain65 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %6, i32 2
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain65, align 8, !tbaa !49
  %call66 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %7) #13
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call66, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #12
  %8 = load i64, i64* %i, align 8, !tbaa !22
  %chain70 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %8, i32 2
  store %struct.stack_st_X509* %dup_chain.0, %struct.stack_st_X509** %chain70, align 8, !tbaa !49
  %x50973 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %8, i32 0
  %9 = load %struct.x509_st*, %struct.x509_st** %x50973, align 8, !tbaa !25
  call void @X509_free(%struct.x509_st* noundef %9) #12
  %call74 = call i32 @X509_up_ref(%struct.x509_st* noundef %x509) #12
  %10 = load i64, i64* %i, align 8, !tbaa !22
  %x50977 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %10, i32 0
  store %struct.x509_st* %x509, %struct.x509_st** %x50977, align 8, !tbaa !25
  %privatekey80 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %10, i32 1
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privatekey80, align 8, !tbaa !23
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #12
  %call81 = call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef nonnull %privatekey.addr.0) #12
  %12 = load i64, i64* %i, align 8, !tbaa !22
  %privatekey84 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %12, i32 1
  store %struct.evp_pkey_st* %privatekey.addr.0, %struct.evp_pkey_st** %privatekey84, align 8, !tbaa !23
  %arrayidx86 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 5, i64 %12
  %key = getelementptr inbounds %struct.cert_st, %struct.cert_st* %cond, i64 0, i32 0
  store %struct.cert_pkey_st* %arrayidx86, %struct.cert_pkey_st** %key, align 8, !tbaa !26
  br label %out

out:                                              ; preds = %for.end, %if.end62, %if.then60, %if.then54, %if.then40, %if.then35, %if.then22, %if.then10, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %for.end ], [ 0, %if.then40 ], [ 0, %if.then60 ], [ 1, %if.end62 ], [ 0, %if.then54 ], [ 0, %if.then22 ], [ 0, %if.then35 ]
  %pubkey.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ null, %if.then10 ], [ null, %for.end ], [ %call12, %if.then40 ], [ %call12, %if.then60 ], [ %call12, %if.end62 ], [ %call12, %if.then54 ], [ %call12, %if.then22 ], [ %call12, %if.then35 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pubkey.0) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_use_cert_and_key(%struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %privatekey, %struct.stack_st_X509* noundef %chain, i32 noundef %override) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ssl_set_cert_and_key(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, %struct.x509_st* noundef %x509, %struct.evp_pkey_st* noundef %privatekey, %struct.stack_st_X509* noundef %chain, i32 noundef %override) #13
  ret i32 %call
}

declare %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_pkey(%struct.evp_pkey_st* noundef, i64* noundef) local_unnamed_addr #2

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_can_sign(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @PEM_read_bio_X509_AUX(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i64 @ERR_peek_error() local_unnamed_addr #2

declare i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #5 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #5 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #6 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !50
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !51
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !51
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_4(%struct.PACKET* nocapture noundef %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_4(%struct.PACKET* noundef %pkt, i64* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 4) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_net_2(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_net_2(%struct.PACKET* noundef %pkt, i32* noundef %data) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef 2) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* nocapture noundef %pkt, %struct.PACKET* nocapture noundef writeonly %subpkt) unnamed_addr #9 {
entry:
  %length = alloca i32, align 4
  %data = alloca i8*, align 8
  %tmp = alloca %struct.PACKET, align 8
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %1 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  %2 = bitcast %struct.PACKET* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #14
  %3 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !52
  %call = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %tmp, i32* noundef nonnull %length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %length, align 4, !tbaa !44
  %conv = zext i32 %4 to i64
  %call1 = call fastcc i32 @PACKET_get_bytes(%struct.PACKET* noundef nonnull %tmp, i8** noundef nonnull %data, i64 noundef %conv) #13
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !52
  %5 = load i8*, i8** %data, align 8, !tbaa !29
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 0
  store i8* %5, i8** %curr, align 8, !tbaa !50
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %subpkt, i64 0, i32 1
  store i64 %conv, i64* %remaining, align 8, !tbaa !51
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef, i32 noundef, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef, void (%struct.ssl_st*, i32, i8*, i8*)* noundef, i8* noundef, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @serverinfo_srv_add_cb(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, i32* nocapture noundef writeonly %al, i8* nocapture noundef readnone %arg) #0 {
entry:
  %call = tail call i32 @serverinfoex_srv_add_cb(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i32 noundef 0, i8** noundef %out, i64* noundef %outlen, %struct.x509_st* noundef null, i64 noundef 0, i32* noundef %al, i8* noundef %arg) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @serverinfo_srv_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i8* nocapture noundef readnone %in, i64 noundef %inlen, i32* nocapture noundef writeonly %al, i8* nocapture noundef readnone %arg) #6 {
entry:
  %call = tail call i32 @serverinfoex_srv_parse_cb(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i32 noundef 0, i8* noundef %in, i64 noundef %inlen, %struct.x509_st* noundef null, i64 noundef 0, i32* noundef %al, i8* noundef %arg) #13
  ret i32 %call
}

declare i32 @SSL_CTX_add_custom_ext(%struct.ssl_ctx_st* noundef, i32 noundef, i32 noundef, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* noundef, void (%struct.ssl_st*, i32, i32, i8*, i8*)* noundef, i8* noundef, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @serverinfoex_srv_add_cb(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i32 noundef %context, i8** nocapture noundef writeonly %out, i64* nocapture noundef writeonly %outlen, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx, i32* nocapture noundef writeonly %al, i8* nocapture noundef readnone %arg) #0 {
entry:
  %serverinfo = alloca i8*, align 8
  %serverinfo_length = alloca i64, align 8
  %0 = bitcast i8** %serverinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %serverinfo, align 8, !tbaa !29
  %1 = bitcast i64* %serverinfo_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i64 0, i64* %serverinfo_length, align 8, !tbaa !22
  %and = and i32 %context, 4096
  %cmp = icmp ne i32 %and, 0
  %cmp1 = icmp ne i64 %chainidx, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup13, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @ssl_get_server_cert_serverinfo(%struct.ssl_st* noundef %s, i8** noundef nonnull %serverinfo, i64* noundef nonnull %serverinfo_length) #12
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %cleanup13, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load i8*, i8** %serverinfo, align 8, !tbaa !29
  %3 = load i64, i64* %serverinfo_length, align 8, !tbaa !22
  %call5 = call fastcc i32 @serverinfo_find_extension(i8* noundef %2, i64 noundef %3, i32 noundef %ext_type, i8** noundef %out, i64* noundef %outlen) #13
  switch i32 %call5, label %if.end11 [
    i32 -1, label %if.then7
    i32 0, label %cleanup13
  ]

if.then7:                                         ; preds = %if.then3
  store i32 80, i32* %al, align 4, !tbaa !44
  br label %cleanup13

if.end11:                                         ; preds = %if.then3
  br label %cleanup13

cleanup13:                                        ; preds = %if.end, %if.then7, %if.end11, %if.then3, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ -1, %if.then7 ], [ 1, %if.end11 ], [ %call5, %if.then3 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @serverinfoex_srv_parse_cb(%struct.ssl_st* nocapture noundef readnone %s, i32 noundef %ext_type, i32 noundef %context, i8* nocapture noundef readnone %in, i64 noundef %inlen, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx, i32* nocapture noundef writeonly %al, i8* nocapture noundef readnone %arg) #6 {
entry:
  %cmp.not = icmp eq i64 %inlen, 0
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  store i32 50, i32* %al, align 4, !tbaa !44
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_4(%struct.PACKET* nocapture noundef readonly %pkt, i64* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !50
  %1 = load i8, i8* %0, align 1, !tbaa !47
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 24
  store i64 %shl, i64* %data, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !47
  %conv2 = zext i8 %2 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  store i64 %or, i64* %data, align 8, !tbaa !22
  %add.ptr5 = getelementptr inbounds i8, i8* %0, i64 2
  %3 = load i8, i8* %add.ptr5, align 1, !tbaa !47
  %conv6 = zext i8 %3 to i64
  %shl7 = shl nuw nsw i64 %conv6, 8
  %or8 = or i64 %shl7, %or
  store i64 %or8, i64* %data, align 8, !tbaa !22
  %add.ptr10 = getelementptr inbounds i8, i8* %0, i64 3
  %4 = load i8, i8* %add.ptr10, align 1, !tbaa !47
  %conv11 = zext i8 %4 to i64
  %or12 = or i64 %or8, %conv11
  store i64 %or12, i64* %data, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt, i64 noundef %len) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !50
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %len
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !50
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !51
  %sub = sub i64 %1, %len
  store i64 %sub, i64* %remaining, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_net_2(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !50
  %1 = load i8, i8* %0, align 1, !tbaa !47
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  store i32 %shl, i32* %data, align 4, !tbaa !44
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %add.ptr, align 1, !tbaa !47
  %conv2 = zext i8 %2 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, i32* %data, align 4, !tbaa !44
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_bytes(%struct.PACKET* nocapture noundef %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_bytes(%struct.PACKET* noundef %pkt, i8** noundef %data, i64 noundef %len) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt, i64 noundef %len) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_bytes(%struct.PACKET* nocapture noundef readonly %pkt, i8** nocapture noundef writeonly %data, i64 noundef %len) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #13
  %cmp = icmp ult i64 %call, %len
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !50
  store i8* %0, i8** %data, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ssl_get_server_cert_serverinfo(%struct.ssl_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc i32 @serverinfo_find_extension(i8* noundef %serverinfo, i64 noundef %serverinfo_length, i32 noundef %extension_type, i8** nocapture noundef writeonly %extension_data, i64* nocapture noundef writeonly %extension_length) unnamed_addr #11 {
entry:
  %pkt = alloca %struct.PACKET, align 8
  %data = alloca %struct.PACKET, align 8
  %type = alloca i32, align 4
  %context = alloca i64, align 8
  %0 = bitcast %struct.PACKET* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #14
  %1 = bitcast %struct.PACKET* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #14
  store i8* null, i8** %extension_data, align 8, !tbaa !29
  store i64 0, i64* %extension_length, align 8, !tbaa !22
  %cmp = icmp eq i8* %serverinfo, null
  %cmp1 = icmp eq i64 %serverinfo_length, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup24, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %pkt, i8* noundef nonnull %serverinfo, i64 noundef %serverinfo_length) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup24, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %2 = bitcast i32* %type to i8*
  %3 = bitcast i64* %context to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  store i32 0, i32* %type, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %call435 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %cmp536 = icmp eq i64 %call435, 0
  br i1 %cmp536, label %cleanup.thread, label %if.end7

if.end7:                                          ; preds = %for.cond.preheader, %cleanup
  %call8 = call fastcc i32 @PACKET_get_net_4(%struct.PACKET* noundef nonnull %pkt, i64* noundef nonnull %context) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup.thread, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end7
  %call11 = call fastcc i32 @PACKET_get_net_2(%struct.PACKET* noundef nonnull %pkt, i32* noundef nonnull %type) #13
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.thread, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = call fastcc i32 @PACKET_get_length_prefixed_2(%struct.PACKET* noundef nonnull %pkt, %struct.PACKET* noundef nonnull %data) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup.thread, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false13
  %4 = load i32, i32* %type, align 4, !tbaa !44
  %cmp18 = icmp eq i32 %4, %extension_type
  br i1 %cmp18, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end17
  %call20 = call fastcc i8* @PACKET_data(%struct.PACKET* noundef nonnull %data) #13
  store i8* %call20, i8** %extension_data, align 8, !tbaa !29
  %call21 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %data) #13
  store i64 %call21, i64* %extension_length, align 8, !tbaa !22
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end7, %lor.lhs.false10, %lor.lhs.false13, %cleanup, %for.cond.preheader, %if.then19
  %retval.1.ph = phi i32 [ 1, %if.then19 ], [ 0, %for.cond.preheader ], [ -1, %if.end7 ], [ -1, %lor.lhs.false10 ], [ -1, %lor.lhs.false13 ], [ 0, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  br label %cleanup24

cleanup:                                          ; preds = %if.end17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  store i32 0, i32* %type, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  %call4 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %pkt) #13
  %cmp5 = icmp eq i64 %call4, 0
  br i1 %cmp5, label %cleanup.thread, label %if.end7

cleanup24:                                        ; preds = %cleanup.thread, %if.end, %entry
  %retval.2 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ %retval.1.ph, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #14
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @PACKET_data(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #7 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !50
  ret i8* %0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 2200}
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
!22 = !{!11, !11, i64 0}
!23 = !{!24, !9, i64 8}
!24 = !{!"cert_pkey_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !11, i64 32}
!25 = !{!24, !9, i64 0}
!26 = !{!27, !9, i64 0}
!27 = !{!"cert_st", !9, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !6, i64 28, !7, i64 32, !9, i64 392, !11, i64 400, !9, i64 408, !11, i64 416, !9, i64 424, !11, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !9, i64 464, !28, i64 472, !9, i64 488, !6, i64 496, !9, i64 504, !9, i64 512, !7, i64 520, !9, i64 528}
!28 = !{!"", !9, i64 0, !11, i64 8}
!29 = !{!9, !9, i64 0}
!30 = !{!5, !9, i64 2472}
!31 = !{!32, !9, i64 0}
!32 = !{!"ssl_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !11, i64 56, !9, i64 64, !9, i64 72, !6, i64 80, !11, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !33, i64 120, !7, i64 164, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !16, i64 240, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !11, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !9, i64 344, !6, i64 352, !9, i64 360, !9, i64 368, !6, i64 376, !11, i64 384, !7, i64 392, !9, i64 424, !9, i64 432, !9, i64 440, !6, i64 448, !9, i64 456, !9, i64 464, !9, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !11, i64 504, !9, i64 512, !9, i64 520, !9, i64 528, !34, i64 536, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !19, i64 792, !35, i64 920, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !6, i64 984, !6, i64 988, !9, i64 992, !9, i64 1000, !11, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !11, i64 1040, !9, i64 1048, !9, i64 1056, !6, i64 1064, !9, i64 1072, !9, i64 1080, !9, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !9, i64 1568, !9, i64 1576, !11, i64 1584, !11, i64 1592, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612}
!33 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!34 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !7, i64 76, !11, i64 80, !9, i64 88, !11, i64 96, !9, i64 104, !9, i64 112, !11, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !11, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !7, i64 192}
!35 = !{!"dane_ctx_st", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 24}
!36 = !{!32, !9, i64 1088}
!37 = !{!5, !9, i64 7448}
!38 = !{!5, !9, i64 7456}
!39 = !{!32, !9, i64 344}
!40 = !{!32, !9, i64 184}
!41 = !{!32, !9, i64 192}
!42 = !{!24, !9, i64 24}
!43 = !{!24, !11, i64 32}
!44 = !{!6, !6, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!7, !7, i64 0}
!48 = distinct !{!48, !46}
!49 = !{!24, !9, i64 16}
!50 = !{!28, !9, i64 0}
!51 = !{!28, !11, i64 8}
!52 = !{i64 0, i64 8, !29, i64 8, i64 8, !22}
