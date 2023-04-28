; ModuleID = 'ssl/ssl_asn1.c'
source_filename = "ssl/ssl_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
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
%struct.SSL_SESSION_ASN1 = type { i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, i64, %struct.x509_st*, %struct.asn1_string_st*, i32, %struct.asn1_string_st*, i64, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, i32, %struct.asn1_string_st*, i32, %struct.asn1_string_st*, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"ssl/ssl_asn1.c\00", align 1
@__func__.d2i_SSL_SESSION = private unnamed_addr constant [16 x i8] c"d2i_SSL_SESSION\00", align 1
@SSL_SESSION_ASN1_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([25 x %struct.ASN1_TEMPLATE_st], [25 x %struct.ASN1_TEMPLATE_st]* @SSL_SESSION_ASN1_seq_tt, i32 0, i32 0), i64 25, i8* null, i64 192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, align 8
@SSL_SESSION_ASN1_seq_tt = internal constant [25 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @UINT32_it }, %struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 137, i64 0, i64 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 1, i64 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZINT64_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 2, i64 56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZINT64_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 3, i64 64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X509_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 4, i64 72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 5, i64 80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZINT32_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 6, i64 88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 7, i64 120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 8, i64 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 9, i64 96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT64_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 10, i64 112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 11, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 12, i64 136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 13, i64 144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT64_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 14, i64 104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT32_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 15, i64 152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT32_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 16, i64 160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 17, i64 168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT32_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 18, i64 176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 4241, i64 19, i64 184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @UINT32_it }], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"SSL_SESSION_ASN1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ssl_version\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"session_id\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"master_key\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"key_arg\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"session_id_context\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"verify_result\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"tlsext_hostname\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"psk_identity_hint\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"psk_identity\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"tlsext_tick_lifetime_hint\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"tlsext_tick\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"comp_id\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"srp_username\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"tlsext_tick_age_add\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"max_early_data\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"alpn_selected\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"tlsext_max_fragment_len_mode\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ticket_appdata\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"kex_group\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_SSL_SESSION(%struct.ssl_session_st* noundef %in, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %as = alloca %struct.SSL_SESSION_ASN1, align 8
  %cipher = alloca %struct.asn1_string_st, align 8
  %cipher_data = alloca [2 x i8], align 1
  %master_key = alloca %struct.asn1_string_st, align 8
  %session_id = alloca %struct.asn1_string_st, align 8
  %sid_ctx = alloca %struct.asn1_string_st, align 8
  %comp_id = alloca %struct.asn1_string_st, align 8
  %comp_id_data = alloca i8, align 1
  %tlsext_hostname = alloca %struct.asn1_string_st, align 8
  %tlsext_tick = alloca %struct.asn1_string_st, align 8
  %srp_username = alloca %struct.asn1_string_st, align 8
  %psk_identity = alloca %struct.asn1_string_st, align 8
  %psk_identity_hint = alloca %struct.asn1_string_st, align 8
  %alpn_selected = alloca %struct.asn1_string_st, align 8
  %ticket_appdata = alloca %struct.asn1_string_st, align 8
  %0 = bitcast %struct.SSL_SESSION_ASN1* %as to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #7
  %1 = bitcast %struct.asn1_string_st* %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7
  %2 = getelementptr inbounds [2 x i8], [2 x i8]* %cipher_data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #7
  %3 = bitcast %struct.asn1_string_st* %master_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7
  %4 = bitcast %struct.asn1_string_st* %session_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7
  %5 = bitcast %struct.asn1_string_st* %sid_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7
  %6 = bitcast %struct.asn1_string_st* %comp_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #7
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %comp_id_data) #7
  %7 = bitcast %struct.asn1_string_st* %tlsext_hostname to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #7
  %8 = bitcast %struct.asn1_string_st* %tlsext_tick to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7
  %9 = bitcast %struct.asn1_string_st* %srp_username to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7
  %10 = bitcast %struct.asn1_string_st* %psk_identity to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #7
  %11 = bitcast %struct.asn1_string_st* %psk_identity_hint to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #7
  %12 = bitcast %struct.asn1_string_st* %alpn_selected to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #7
  %13 = bitcast %struct.asn1_string_st* %ticket_appdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #7
  %cmp = icmp eq %struct.ssl_session_st* %in, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cipher1 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 20
  %14 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher1, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.ssl_cipher_st* %14, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %cipher_id = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 21
  %15 = load i64, i64* %cipher_id, align 8, !tbaa !13
  %cmp3 = icmp eq i64 %15, 0
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 192) #8
  %version = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 0
  store i32 1, i32* %version, align 8, !tbaa !14
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 0
  %16 = load i32, i32* %ssl_version, align 8, !tbaa !16
  %ssl_version4 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 1
  store i32 %16, i32* %ssl_version4, align 4, !tbaa !17
  %kex_group = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 22
  %17 = load i32, i32* %kex_group, align 8, !tbaa !18
  %kex_group5 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 24
  store i32 %17, i32* %kex_group5, align 8, !tbaa !19
  %18 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher1, align 8, !tbaa !4
  %cmp7 = icmp eq %struct.ssl_cipher_st* %18, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %cipher_id9 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 21
  %19 = load i64, i64* %cipher_id9, align 8, !tbaa !13
  br label %if.end11

if.else:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %18, i64 0, i32 3
  %20 = load i32, i32* %id, align 8, !tbaa !20
  %conv = zext i32 %20 to i64
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %l.0 = phi i64 [ %19, %if.then8 ], [ %conv, %if.else ]
  %21 = lshr i64 %l.0, 8
  %conv14 = trunc i64 %21 to i8
  store i8 %conv14, i8* %2, align 1, !tbaa !22
  %conv15 = trunc i64 %l.0 to i8
  %arrayidx19 = getelementptr inbounds [2 x i8], [2 x i8]* %cipher_data, i64 0, i64 1
  store i8 %conv15, i8* %arrayidx19, align 1, !tbaa !22
  %cipher20 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 2
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %cipher20, %struct.asn1_string_st* noundef nonnull %cipher, i8* noundef nonnull %2, i64 noundef 2) #9
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 19
  %22 = load i32, i32* %compress_meth, align 4, !tbaa !23
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end11
  %conv23 = trunc i32 %22 to i8
  store i8 %conv23, i8* %comp_id_data, align 1, !tbaa !22
  %comp_id24 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 3
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %comp_id24, %struct.asn1_string_st* noundef nonnull %comp_id, i8* noundef nonnull %comp_id_data, i64 noundef 1) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end11
  %master_key26 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 4
  %arraydecay28 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 3, i64 0
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 1
  %23 = load i64, i64* %master_key_length, align 8, !tbaa !24
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %master_key26, %struct.asn1_string_st* noundef nonnull %master_key, i8* noundef nonnull %arraydecay28, i64 noundef %23) #9
  %session_id29 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 5
  %arraydecay31 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 5, i64 0
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 4
  %24 = load i64, i64* %session_id_length, align 8, !tbaa !25
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %session_id29, %struct.asn1_string_st* noundef nonnull %session_id, i8* noundef nonnull %arraydecay31, i64 noundef %24) #9
  %session_id_context = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 10
  %arraydecay33 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 7, i64 0
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 6
  %25 = load i64, i64* %sid_ctx_length, align 8, !tbaa !26
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %session_id_context, %struct.asn1_string_st* noundef nonnull %sid_ctx, i8* noundef nonnull %arraydecay33, i64 noundef %25) #9
  %time34 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 7
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 15
  %26 = bitcast i64* %timeout to <2 x i64>*
  %27 = load <2 x i64>, <2 x i64>* %26, align 8, !tbaa !27
  %shuffle = shufflevector <2 x i64> %27, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %28 = bitcast i64* %time34 to <2 x i64>*
  store <2 x i64> %shuffle, <2 x i64>* %28, align 8, !tbaa !27
  %verify_result = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 13
  %29 = load i64, i64* %verify_result, align 8, !tbaa !28
  %conv36 = trunc i64 %29 to i32
  %verify_result37 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 11
  store i32 %conv36, i32* %verify_result37, align 8, !tbaa !29
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 11
  %30 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !30
  %peer38 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 9
  store %struct.x509_st* %30, %struct.x509_st** %peer38, align 8, !tbaa !31
  %tlsext_hostname39 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 12
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 0
  %31 = load i8*, i8** %hostname, align 8, !tbaa !32
  call fastcc void @ssl_session_sinit(%struct.asn1_string_st** noundef nonnull %tlsext_hostname39, %struct.asn1_string_st* noundef nonnull %tlsext_hostname, i8* noundef %31) #9
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 1
  %32 = load i8*, i8** %tick, align 8, !tbaa !33
  %tobool41.not = icmp eq i8* %32, null
  br i1 %tobool41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end25
  %tlsext_tick43 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 15
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 2
  %33 = load i64, i64* %ticklen, align 8, !tbaa !34
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %tlsext_tick43, %struct.asn1_string_st* noundef nonnull %tlsext_tick, i8* noundef nonnull %32, i64 noundef %33) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end25
  %tick_lifetime_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 3
  %34 = load i64, i64* %tick_lifetime_hint, align 8, !tbaa !35
  %cmp49.not = icmp eq i64 %34, 0
  br i1 %cmp49.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.end47
  %tlsext_tick_lifetime_hint = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 13
  store i64 %34, i64* %tlsext_tick_lifetime_hint, align 8, !tbaa !36
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end47
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 4
  %35 = load i32, i32* %tick_age_add, align 8, !tbaa !37
  %tlsext_tick_age_add = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 14
  store i32 %35, i32* %tlsext_tick_age_add, align 8, !tbaa !38
  %psk_identity_hint56 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 16
  %psk_identity_hint57 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 8
  %36 = load i8*, i8** %psk_identity_hint57, align 8, !tbaa !39
  call fastcc void @ssl_session_sinit(%struct.asn1_string_st** noundef nonnull %psk_identity_hint56, %struct.asn1_string_st* noundef nonnull %psk_identity_hint, i8* noundef %36) #9
  %psk_identity58 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 17
  %psk_identity59 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 9
  %37 = load i8*, i8** %psk_identity59, align 8, !tbaa !40
  call fastcc void @ssl_session_sinit(%struct.asn1_string_st** noundef nonnull %psk_identity58, %struct.asn1_string_st* noundef nonnull %psk_identity, i8* noundef %37) #9
  %srp_username60 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 18
  %srp_username61 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 27
  %38 = load i8*, i8** %srp_username61, align 8, !tbaa !41
  call fastcc void @ssl_session_sinit(%struct.asn1_string_st** noundef nonnull %srp_username60, %struct.asn1_string_st* noundef nonnull %srp_username, i8* noundef %38) #9
  %flags = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 30
  %39 = load i32, i32* %flags, align 8, !tbaa !42
  %conv62 = zext i32 %39 to i64
  %flags63 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 19
  store i64 %conv62, i64* %flags63, align 8, !tbaa !43
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 5
  %40 = load i32, i32* %max_early_data, align 4, !tbaa !44
  %max_early_data65 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 20
  store i32 %40, i32* %max_early_data65, align 8, !tbaa !45
  %alpn_selected67 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 6
  %41 = load i8*, i8** %alpn_selected67, align 8, !tbaa !46
  %cmp68 = icmp eq i8* %41, null
  %alpn_selected71 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 21
  br i1 %cmp68, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.end54
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %alpn_selected71, align 8, !tbaa !47
  br label %if.end77

if.else72:                                        ; preds = %if.end54
  %alpn_selected_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 7
  %42 = load i64, i64* %alpn_selected_len, align 8, !tbaa !48
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %alpn_selected71, %struct.asn1_string_st* noundef nonnull %alpn_selected, i8* noundef nonnull %41, i64 noundef %42) #9
  br label %if.end77

if.end77:                                         ; preds = %if.else72, %if.then70
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 26, i32 8
  %43 = load i8, i8* %max_fragment_len_mode, align 8, !tbaa !49
  %conv79 = zext i8 %43 to i32
  %tlsext_max_fragment_len_mode = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 22
  store i32 %conv79, i32* %tlsext_max_fragment_len_mode, align 8, !tbaa !50
  %ticket_appdata80 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 28
  %44 = load i8*, i8** %ticket_appdata80, align 8, !tbaa !51
  %cmp81 = icmp eq i8* %44, null
  %ticket_appdata84 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %as, i64 0, i32 23
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.end77
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %ticket_appdata84, align 8, !tbaa !52
  br label %if.end88

if.else85:                                        ; preds = %if.end77
  %ticket_appdata_len = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %in, i64 0, i32 29
  %45 = load i64, i64* %ticket_appdata_len, align 8, !tbaa !53
  call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef nonnull %ticket_appdata84, %struct.asn1_string_st* noundef nonnull %ticket_appdata, i8* noundef nonnull %44, i64 noundef %45) #9
  br label %if.end88

if.end88:                                         ; preds = %if.else85, %if.then83
  %call89 = call fastcc i32 @i2d_SSL_SESSION_ASN1(%struct.SSL_SESSION_ASN1* noundef nonnull %as, i8** noundef %pp) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end88
  %retval.0 = phi i32 [ %call89, %if.end88 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %comp_id_data) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @ssl_session_oinit(%struct.asn1_string_st** nocapture noundef writeonly %dest, %struct.asn1_string_st* noundef %os, i8* noundef %data, i64 noundef %len) unnamed_addr #3 {
entry:
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os, i64 0, i32 2
  store i8* %data, i8** %data1, align 8, !tbaa !54
  %conv = trunc i64 %len to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !56
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %os, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !57
  store %struct.asn1_string_st* %os, %struct.asn1_string_st** %dest, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal fastcc void @ssl_session_sinit(%struct.asn1_string_st** nocapture noundef writeonly %dest, %struct.asn1_string_st* noundef %os, i8* noundef %data) unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i8* %data, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %data) #10
  tail call fastcc void @ssl_session_oinit(%struct.asn1_string_st** noundef %dest, %struct.asn1_string_st* noundef %os, i8* noundef nonnull %data, i64 noundef %call) #9
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %dest, align 8, !tbaa !58
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2d_SSL_SESSION_ASN1(%struct.SSL_SESSION_ASN1* noundef %a, i8** noundef %out) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SSL_SESSION_ASN1* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @SSL_SESSION_ASN1_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_session_st* @d2i_SSL_SESSION(%struct.ssl_session_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %tmpl = alloca i64, align 8
  %p = alloca i8*, align 8
  %0 = bitcast i64* %tmpl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  %2 = load i8*, i8** %pp, align 8, !tbaa !58
  store i8* %2, i8** %p, align 8, !tbaa !58
  %call = call fastcc %struct.SSL_SESSION_ASN1* @d2i_SSL_SESSION_ASN1(i8** noundef nonnull %p, i64 noundef %length) #9
  %cmp = icmp eq %struct.SSL_SESSION_ASN1* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.ssl_session_st** %a, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.ssl_session_st*, %struct.ssl_session_st** %a, align 8, !tbaa !58
  %cmp2 = icmp eq %struct.ssl_session_st* %3, null
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct.ssl_session_st* @SSL_SESSION_new() #8
  %cmp5 = icmp eq %struct.ssl_session_st* %call4, null
  br i1 %cmp5, label %err, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.then3
  %ret.0 = phi %struct.ssl_session_st* [ %call4, %if.then3 ], [ %3, %lor.lhs.false ]
  %version = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 0
  %4 = load i32, i32* %version, align 8, !tbaa !14
  %cmp9.not = icmp eq i32 %4, 1
  br i1 %cmp9.not, label %if.end11, label %err.sink.split

if.end11:                                         ; preds = %if.end8
  %ssl_version = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 1
  %5 = load i32, i32* %ssl_version, align 4, !tbaa !17
  %shr = ashr i32 %5, 8
  switch i32 %shr, label %land.lhs.true16 [
    i32 3, label %if.end20
    i32 254, label %if.end20
  ]

land.lhs.true16:                                  ; preds = %if.end11
  %cmp18.not = icmp eq i32 %5, 256
  br i1 %cmp18.not, label %if.end20, label %err.sink.split

if.end20:                                         ; preds = %if.end11, %if.end11, %land.lhs.true16
  %ssl_version22 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 0
  store i32 %5, i32* %ssl_version22, align 8, !tbaa !16
  %kex_group = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 24
  %6 = load i32, i32* %kex_group, align 8, !tbaa !19
  %kex_group23 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 22
  store i32 %6, i32* %kex_group23, align 8, !tbaa !18
  %cipher = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 2
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cipher, align 8, !tbaa !59
  %length24 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 0
  %8 = load i32, i32* %length24, align 8, !tbaa !56
  %cmp25.not = icmp eq i32 %8, 2
  br i1 %cmp25.not, label %if.end27, label %err.sink.split

if.end27:                                         ; preds = %if.end20
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 2
  %9 = load i8*, i8** %data, align 8, !tbaa !54
  %10 = load i8, i8* %9, align 1, !tbaa !22
  %conv = zext i8 %10 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx31 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %arrayidx31, align 1, !tbaa !22
  %conv32 = zext i8 %11 to i64
  %or = or i64 %shl, %conv32
  %or33 = or i64 %or, 50331648
  %cipher_id = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 21
  store i64 %or33, i64* %cipher_id, align 8, !tbaa !13
  %conv34 = trunc i64 %or33 to i32
  %call35 = call %struct.ssl_cipher_st* @ssl3_get_cipher_by_id(i32 noundef %conv34) #8
  %cipher36 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 20
  store %struct.ssl_cipher_st* %call35, %struct.ssl_cipher_st** %cipher36, align 8, !tbaa !4
  %cmp38 = icmp eq %struct.ssl_cipher_st* %call35, null
  br i1 %cmp38, label %err, label %if.end41

if.end41:                                         ; preds = %if.end27
  %arraydecay = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 5, i64 0
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 4
  %session_id42 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 5
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %session_id42, align 8, !tbaa !60
  %call43 = call fastcc i32 @ssl_session_memcpy(i8* noundef nonnull %arraydecay, i64* noundef nonnull %session_id_length, %struct.asn1_string_st* noundef %12, i64 noundef 32) #9
  %tobool.not = icmp eq i32 %call43, 0
  br i1 %tobool.not, label %err, label %if.end45

if.end45:                                         ; preds = %if.end41
  %arraydecay46 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 3, i64 0
  %master_key47 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 4
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %master_key47, align 8, !tbaa !61
  %call48 = call fastcc i32 @ssl_session_memcpy(i8* noundef nonnull %arraydecay46, i64* noundef nonnull %tmpl, %struct.asn1_string_st* noundef %13, i64 noundef 512) #9
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end45
  %14 = load i64, i64* %tmpl, align 8, !tbaa !27
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 1
  store i64 %14, i64* %master_key_length, align 8, !tbaa !24
  %time = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 7
  %15 = load i64, i64* %time, align 8, !tbaa !62
  %cmp52.not = icmp eq i64 %15, 0
  br i1 %cmp52.not, label %if.else57, label %if.end60

if.else57:                                        ; preds = %if.end51
  %call58 = call i64 @time(i64* noundef null) #8
  br label %if.end60

if.end60:                                         ; preds = %if.end51, %if.else57
  %.sink = phi i64 [ %call58, %if.else57 ], [ %15, %if.end51 ]
  %16 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 16
  store i64 %.sink, i64* %16, align 8
  %timeout = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 8
  %17 = load i64, i64* %timeout, align 8, !tbaa !63
  %cmp61.not = icmp eq i64 %17, 0
  %spec.select = select i1 %cmp61.not, i64 3, i64 %17
  %18 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 15
  store i64 %spec.select, i64* %18, align 8
  call void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef nonnull %ret.0) #8
  %peer = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 11
  %19 = load %struct.x509_st*, %struct.x509_st** %peer, align 8, !tbaa !30
  call void @X509_free(%struct.x509_st* noundef %19) #8
  %peer69 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 9
  %20 = load %struct.x509_st*, %struct.x509_st** %peer69, align 8, !tbaa !31
  store %struct.x509_st* %20, %struct.x509_st** %peer, align 8, !tbaa !30
  store %struct.x509_st* null, %struct.x509_st** %peer69, align 8, !tbaa !31
  %arraydecay72 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 7, i64 0
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 6
  %session_id_context = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 10
  %21 = load %struct.asn1_string_st*, %struct.asn1_string_st** %session_id_context, align 8, !tbaa !64
  %call73 = call fastcc i32 @ssl_session_memcpy(i8* noundef nonnull %arraydecay72, i64* noundef nonnull %sid_ctx_length, %struct.asn1_string_st* noundef %21, i64 noundef 32) #9
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %if.end60
  %verify_result = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 11
  %22 = load i32, i32* %verify_result, align 8, !tbaa !29
  %conv77 = sext i32 %22 to i64
  %verify_result78 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 13
  store i64 %conv77, i64* %verify_result78, align 8, !tbaa !28
  %hostname = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 0
  %tlsext_hostname = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 12
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tlsext_hostname, align 8, !tbaa !65
  %call79 = call fastcc i32 @ssl_session_strndup(i8** noundef nonnull %hostname, %struct.asn1_string_st* noundef %23) #9
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %if.end82

if.end82:                                         ; preds = %if.end76
  %psk_identity_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 8
  %psk_identity_hint83 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 16
  %24 = load %struct.asn1_string_st*, %struct.asn1_string_st** %psk_identity_hint83, align 8, !tbaa !66
  %call84 = call fastcc i32 @ssl_session_strndup(i8** noundef nonnull %psk_identity_hint, %struct.asn1_string_st* noundef %24) #9
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end87

if.end87:                                         ; preds = %if.end82
  %psk_identity = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 9
  %psk_identity88 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 17
  %25 = load %struct.asn1_string_st*, %struct.asn1_string_st** %psk_identity88, align 8, !tbaa !67
  %call89 = call fastcc i32 @ssl_session_strndup(i8** noundef nonnull %psk_identity, %struct.asn1_string_st* noundef %25) #9
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %if.end92

if.end92:                                         ; preds = %if.end87
  %tlsext_tick_lifetime_hint = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 13
  %26 = load i64, i64* %tlsext_tick_lifetime_hint, align 8, !tbaa !36
  %tick_lifetime_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 3
  store i64 %26, i64* %tick_lifetime_hint, align 8, !tbaa !35
  %tlsext_tick_age_add = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 14
  %27 = load i32, i32* %tlsext_tick_age_add, align 8, !tbaa !38
  %tick_age_add = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 4
  store i32 %27, i32* %tick_age_add, align 8, !tbaa !37
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 1
  %28 = load i8*, i8** %tick, align 8, !tbaa !33
  call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 338) #8
  %tlsext_tick = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 15
  %29 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tlsext_tick, align 8, !tbaa !68
  %cmp96.not = icmp eq %struct.asn1_string_st* %29, null
  br i1 %cmp96.not, label %if.end112, label %if.then98

if.then98:                                        ; preds = %if.end92
  %data100 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %29, i64 0, i32 2
  %30 = load i8*, i8** %data100, align 8, !tbaa !54
  store i8* %30, i8** %tick, align 8, !tbaa !33
  %length104 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %29, i64 0, i32 0
  %31 = load i32, i32* %length104, align 8, !tbaa !56
  %conv105 = sext i32 %31 to i64
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 2
  store i64 %conv105, i64* %ticklen, align 8, !tbaa !34
  br label %if.end112

if.end112:                                        ; preds = %if.end92, %if.then98
  %tick.sink = phi i8** [ %data100, %if.then98 ], [ %tick, %if.end92 ]
  store i8* null, i8** %tick.sink, align 8, !tbaa !58
  %comp_id = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 3
  %32 = load %struct.asn1_string_st*, %struct.asn1_string_st** %comp_id, align 8, !tbaa !69
  %tobool113.not = icmp eq %struct.asn1_string_st* %32, null
  br i1 %tobool113.not, label %if.end127, label %if.then114

if.then114:                                       ; preds = %if.end112
  %length116 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %32, i64 0, i32 0
  %33 = load i32, i32* %length116, align 8, !tbaa !56
  %cmp117.not = icmp eq i32 %33, 1
  br i1 %cmp117.not, label %if.end120, label %err.sink.split

if.end120:                                        ; preds = %if.then114
  %data122 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %32, i64 0, i32 2
  %34 = load i8*, i8** %data122, align 8, !tbaa !54
  %35 = load i8, i8* %34, align 1, !tbaa !22
  %conv124 = zext i8 %35 to i32
  br label %if.end127

if.end127:                                        ; preds = %if.end112, %if.end120
  %.sink308 = phi i32 [ %conv124, %if.end120 ], [ 0, %if.end112 ]
  %compress_meth126 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 19
  store i32 %.sink308, i32* %compress_meth126, align 4, !tbaa !23
  %srp_username = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 27
  %srp_username128 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 18
  %36 = load %struct.asn1_string_st*, %struct.asn1_string_st** %srp_username128, align 8, !tbaa !70
  %call129 = call fastcc i32 @ssl_session_strndup(i8** noundef nonnull %srp_username, %struct.asn1_string_st* noundef %36) #9
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %if.end132

if.end132:                                        ; preds = %if.end127
  %flags = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 19
  %37 = load i64, i64* %flags, align 8, !tbaa !43
  %conv133 = trunc i64 %37 to i32
  %flags134 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 30
  store i32 %conv133, i32* %flags134, align 8, !tbaa !42
  %max_early_data = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 20
  %38 = load i32, i32* %max_early_data, align 8, !tbaa !45
  %max_early_data136 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 5
  store i32 %38, i32* %max_early_data136, align 4, !tbaa !44
  %alpn_selected = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 6
  %39 = load i8*, i8** %alpn_selected, align 8, !tbaa !46
  call void @CRYPTO_free(i8* noundef %39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 366) #8
  %alpn_selected138 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 21
  %40 = load %struct.asn1_string_st*, %struct.asn1_string_st** %alpn_selected138, align 8, !tbaa !47
  %cmp139.not = icmp eq %struct.asn1_string_st* %40, null
  br i1 %cmp139.not, label %if.end157, label %if.then141

if.then141:                                       ; preds = %if.end132
  %data143 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %40, i64 0, i32 2
  %41 = load i8*, i8** %data143, align 8, !tbaa !54
  store i8* %41, i8** %alpn_selected, align 8, !tbaa !46
  %length147 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %40, i64 0, i32 0
  %42 = load i32, i32* %length147, align 8, !tbaa !56
  %conv148 = sext i32 %42 to i64
  br label %if.end157

if.end157:                                        ; preds = %if.end132, %if.then141
  %alpn_selected.sink = phi i8** [ %data143, %if.then141 ], [ %alpn_selected, %if.end132 ]
  %conv148.sink = phi i64 [ %conv148, %if.then141 ], [ 0, %if.end132 ]
  store i8* null, i8** %alpn_selected.sink, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 7
  store i64 %conv148.sink, i64* %43, align 8
  %tlsext_max_fragment_len_mode = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 22
  %44 = load i32, i32* %tlsext_max_fragment_len_mode, align 8, !tbaa !50
  %conv158 = trunc i32 %44 to i8
  %max_fragment_len_mode = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 26, i32 8
  store i8 %conv158, i8* %max_fragment_len_mode, align 8, !tbaa !49
  %ticket_appdata = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 28
  %45 = load i8*, i8** %ticket_appdata, align 8, !tbaa !51
  call void @CRYPTO_free(i8* noundef %45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 378) #8
  %ticket_appdata160 = getelementptr inbounds %struct.SSL_SESSION_ASN1, %struct.SSL_SESSION_ASN1* %call, i64 0, i32 23
  %46 = load %struct.asn1_string_st*, %struct.asn1_string_st** %ticket_appdata160, align 8, !tbaa !52
  %cmp161.not = icmp eq %struct.asn1_string_st* %46, null
  br i1 %cmp161.not, label %if.end175, label %if.then163

if.then163:                                       ; preds = %if.end157
  %data165 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %46, i64 0, i32 2
  %47 = load i8*, i8** %data165, align 8, !tbaa !54
  store i8* %47, i8** %ticket_appdata, align 8, !tbaa !51
  %length168 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %46, i64 0, i32 0
  %48 = load i32, i32* %length168, align 8, !tbaa !56
  %conv169 = sext i32 %48 to i64
  br label %if.end175

if.end175:                                        ; preds = %if.end157, %if.then163
  %ticket_appdata.sink = phi i8** [ %data165, %if.then163 ], [ %ticket_appdata, %if.end157 ]
  %conv169.sink = phi i64 [ %conv169, %if.then163 ], [ 0, %if.end157 ]
  store i8* null, i8** %ticket_appdata.sink, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %ret.0, i64 0, i32 29
  store i64 %conv169.sink, i64* %49, align 8
  %50 = bitcast %struct.SSL_SESSION_ASN1* %call to %struct.ASN1_VALUE_st*
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef nonnull %50, %struct.ASN1_ITEM_st* noundef nonnull @SSL_SESSION_ASN1_it.local_it) #8
  br i1 %cmp1, label %if.end183, label %land.lhs.true179

land.lhs.true179:                                 ; preds = %if.end175
  %51 = load %struct.ssl_session_st*, %struct.ssl_session_st** %a, align 8, !tbaa !58
  %cmp180 = icmp eq %struct.ssl_session_st* %51, null
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %land.lhs.true179
  store %struct.ssl_session_st* %ret.0, %struct.ssl_session_st** %a, align 8, !tbaa !58
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %land.lhs.true179, %if.end175
  %52 = load i8*, i8** %p, align 8, !tbaa !58
  store i8* %52, i8** %pp, align 8, !tbaa !58
  br label %cleanup

err.sink.split:                                   ; preds = %if.then114, %if.end20, %land.lhs.true16, %if.end8
  %.sink310 = phi i32 [ 266, %if.end8 ], [ 273, %land.lhs.true16 ], [ 282, %if.end20 ], [ 349, %if.then114 ]
  %.sink309 = phi i32 [ 254, %if.end8 ], [ 259, %land.lhs.true16 ], [ 137, %if.end20 ], [ 271, %if.then114 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink310, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.d2i_SSL_SESSION, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink309, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end127, %if.end87, %if.end82, %if.end76, %if.end60, %if.end45, %if.end41, %if.end27, %if.then3, %entry
  %ret.1 = phi %struct.ssl_session_st* [ null, %entry ], [ null, %if.then3 ], [ %ret.0, %if.end27 ], [ %ret.0, %if.end127 ], [ %ret.0, %if.end87 ], [ %ret.0, %if.end82 ], [ %ret.0, %if.end76 ], [ %ret.0, %if.end60 ], [ %ret.0, %if.end45 ], [ %ret.0, %if.end41 ], [ %ret.0, %err.sink.split ]
  %53 = bitcast %struct.SSL_SESSION_ASN1* %call to %struct.ASN1_VALUE_st*
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %53, %struct.ASN1_ITEM_st* noundef nonnull @SSL_SESSION_ASN1_it.local_it) #8
  %cmp185 = icmp eq %struct.ssl_session_st** %a, null
  br i1 %cmp185, label %if.then190, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %err
  %54 = load %struct.ssl_session_st*, %struct.ssl_session_st** %a, align 8, !tbaa !58
  %cmp188.not = icmp eq %struct.ssl_session_st* %54, %ret.1
  br i1 %cmp188.not, label %cleanup, label %if.then190

if.then190:                                       ; preds = %lor.lhs.false187, %err
  call void @SSL_SESSION_free(%struct.ssl_session_st* noundef %ret.1) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false187, %if.then190, %if.end183
  %retval.0 = phi %struct.ssl_session_st* [ %ret.0, %if.end183 ], [ null, %if.then190 ], [ null, %lor.lhs.false187 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.ssl_session_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.SSL_SESSION_ASN1* @d2i_SSL_SESSION_ASN1(i8** noundef %in, i64 noundef %len) unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @SSL_SESSION_ASN1_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.SSL_SESSION_ASN1*
  ret %struct.SSL_SESSION_ASN1* %0
}

declare %struct.ssl_session_st* @SSL_SESSION_new() local_unnamed_addr #5

declare void @ERR_new() local_unnamed_addr #5

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

declare %struct.ssl_cipher_st* @ssl3_get_cipher_by_id(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_session_memcpy(i8* noundef %dst, i64* nocapture noundef writeonly %pdstlen, %struct.asn1_string_st* noundef readonly %src, i64 noundef %maxlen) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %src, null
  br i1 %cmp, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %src, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !56
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %return.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp3 = icmp slt i32 %0, 0
  %conv = trunc i64 %maxlen to i32
  %cmp6 = icmp sgt i32 %0, %conv
  %or.cond = or i1 %cmp3, %cmp6
  br i1 %or.cond, label %return, label %if.end9

if.end9:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %src, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !54
  %conv1121 = zext i32 %0 to i64
  %call = tail call i8* @memcpy(i8* noundef %dst, i8* noundef %1, i64 noundef %conv1121) #8
  %2 = load i32, i32* %length, align 8, !tbaa !56
  %conv13 = sext i32 %2 to i64
  br label %return.sink.split

return.sink.split:                                ; preds = %entry, %lor.lhs.false, %if.end9
  %conv13.sink = phi i64 [ %conv13, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  store i64 %conv13.sink, i64* %pdstlen, align 8, !tbaa !27
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #2

declare void @ssl_session_calculate_timeout(%struct.ssl_session_st* noundef) local_unnamed_addr #5

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_session_strndup(i8** nocapture noundef %pdst, %struct.asn1_string_st* noundef readonly %src) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %pdst, align 8, !tbaa !58
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 217) #8
  store i8* null, i8** %pdst, align 8, !tbaa !58
  %cmp = icmp eq %struct.asn1_string_st* %src, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %src, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !54
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %src, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !56
  %conv = sext i32 %2 to i64
  %call = tail call i8* @CRYPTO_strndup(i8* noundef %1, i64 noundef %conv, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 221) #8
  store i8* %call, i8** %pdst, align 8, !tbaa !58
  %cmp1 = icmp ne i8* %call, null
  %. = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #5

declare void @SSL_SESSION_free(%struct.ssl_session_st* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #5

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare %struct.ASN1_ITEM_st* @UINT32_it() #5

declare %struct.ASN1_ITEM_st* @INT32_it() #5

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #5

declare %struct.ASN1_ITEM_st* @ZINT64_it() #5

declare %struct.ASN1_ITEM_st* @X509_it() #5

declare %struct.ASN1_ITEM_st* @ZINT32_it() #5

declare %struct.ASN1_ITEM_st* @ZUINT64_it() #5

declare %struct.ASN1_ITEM_st* @ZUINT32_it() #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !10, i64 760}
!5 = !{!"ssl_session_st", !6, i64 0, !9, i64 8, !7, i64 16, !7, i64 80, !9, i64 592, !7, i64 600, !9, i64 632, !7, i64 640, !10, i64 672, !10, i64 680, !6, i64 688, !10, i64 696, !10, i64 704, !9, i64 712, !7, i64 720, !9, i64 728, !9, i64 736, !9, i64 744, !6, i64 752, !6, i64 756, !10, i64 760, !9, i64 768, !6, i64 776, !11, i64 784, !10, i64 800, !10, i64 808, !12, i64 816, !10, i64 880, !10, i64 888, !9, i64 896, !6, i64 904, !10, i64 912, !10, i64 920}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!12 = !{!"", !10, i64 0, !10, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !9, i64 48, !7, i64 56}
!13 = !{!5, !9, i64 768}
!14 = !{!15, !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !9, i64 48, !9, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !10, i64 88, !9, i64 96, !6, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !9, i64 144, !6, i64 152, !10, i64 160, !6, i64 168, !10, i64 176, !6, i64 184}
!16 = !{!5, !6, i64 0}
!17 = !{!15, !6, i64 4}
!18 = !{!5, !6, i64 776}
!19 = !{!15, !6, i64 184}
!20 = !{!21, !6, i64 24}
!21 = !{!"ssl_cipher_st", !6, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!22 = !{!7, !7, i64 0}
!23 = !{!5, !6, i64 756}
!24 = !{!5, !9, i64 8}
!25 = !{!5, !9, i64 592}
!26 = !{!5, !9, i64 632}
!27 = !{!9, !9, i64 0}
!28 = !{!5, !9, i64 712}
!29 = !{!15, !6, i64 80}
!30 = !{!5, !10, i64 696}
!31 = !{!15, !10, i64 64}
!32 = !{!5, !10, i64 816}
!33 = !{!5, !10, i64 824}
!34 = !{!5, !9, i64 832}
!35 = !{!5, !9, i64 840}
!36 = !{!15, !9, i64 96}
!37 = !{!5, !6, i64 848}
!38 = !{!15, !6, i64 104}
!39 = !{!5, !10, i64 672}
!40 = !{!5, !10, i64 680}
!41 = !{!5, !10, i64 880}
!42 = !{!5, !6, i64 904}
!43 = !{!15, !9, i64 144}
!44 = !{!5, !6, i64 852}
!45 = !{!15, !6, i64 152}
!46 = !{!5, !10, i64 856}
!47 = !{!15, !10, i64 160}
!48 = !{!5, !9, i64 864}
!49 = !{!5, !7, i64 872}
!50 = !{!15, !6, i64 168}
!51 = !{!5, !10, i64 888}
!52 = !{!15, !10, i64 176}
!53 = !{!5, !9, i64 896}
!54 = !{!55, !10, i64 8}
!55 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !10, i64 8, !9, i64 16}
!56 = !{!55, !6, i64 0}
!57 = !{!55, !9, i64 16}
!58 = !{!10, !10, i64 0}
!59 = !{!15, !10, i64 8}
!60 = !{!15, !10, i64 32}
!61 = !{!15, !10, i64 24}
!62 = !{!15, !9, i64 48}
!63 = !{!15, !9, i64 56}
!64 = !{!15, !10, i64 72}
!65 = !{!15, !10, i64 88}
!66 = !{!15, !10, i64 120}
!67 = !{!15, !10, i64 128}
!68 = !{!15, !10, i64 112}
!69 = !{!15, !10, i64 16}
!70 = !{!15, !10, i64 136}
