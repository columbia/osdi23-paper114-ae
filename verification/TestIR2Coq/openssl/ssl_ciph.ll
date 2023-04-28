; ModuleID = 'ssl/ssl_ciph.c'
source_filename = "ssl/ssl_ciph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_cipher_table = type { i32, i32 }
%struct.stack_st_SSL_COMP = type opaque
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.0, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.0 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
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
%struct.evp_signature_st = type opaque
%struct.evp_keyexch_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.stack_st = type opaque
%struct.cipher_order_st = type { %struct.ssl_cipher_st*, i32, i32, %struct.cipher_order_st*, %struct.cipher_order_st* }
%struct.SSL_CERT_LOOKUP = type { i32, i32 }

@ssl_cipher_table_cipher = internal constant [24 x %struct.ssl_cipher_table] [%struct.ssl_cipher_table { i32 1, i32 31 }, %struct.ssl_cipher_table { i32 2, i32 44 }, %struct.ssl_cipher_table { i32 4, i32 5 }, %struct.ssl_cipher_table { i32 8, i32 37 }, %struct.ssl_cipher_table { i32 16, i32 34 }, %struct.ssl_cipher_table { i32 32, i32 0 }, %struct.ssl_cipher_table { i32 64, i32 419 }, %struct.ssl_cipher_table { i32 128, i32 427 }, %struct.ssl_cipher_table { i32 256, i32 751 }, %struct.ssl_cipher_table { i32 512, i32 753 }, %struct.ssl_cipher_table { i32 1024, i32 814 }, %struct.ssl_cipher_table { i32 2048, i32 777 }, %struct.ssl_cipher_table { i32 4096, i32 895 }, %struct.ssl_cipher_table { i32 8192, i32 901 }, %struct.ssl_cipher_table { i32 16384, i32 896 }, %struct.ssl_cipher_table { i32 32768, i32 902 }, %struct.ssl_cipher_table { i32 65536, i32 896 }, %struct.ssl_cipher_table { i32 131072, i32 902 }, %struct.ssl_cipher_table { i32 262144, i32 975 }, %struct.ssl_cipher_table { i32 524288, i32 1018 }, %struct.ssl_cipher_table { i32 1048576, i32 1123 }, %struct.ssl_cipher_table { i32 2097152, i32 1125 }, %struct.ssl_cipher_table { i32 4194304, i32 1174 }, %struct.ssl_cipher_table { i32 8388608, i32 1177 }], align 16
@ssl_cipher_table_mac = internal constant [14 x %struct.ssl_cipher_table] [%struct.ssl_cipher_table { i32 1, i32 4 }, %struct.ssl_cipher_table { i32 2, i32 64 }, %struct.ssl_cipher_table { i32 4, i32 809 }, %struct.ssl_cipher_table { i32 8, i32 815 }, %struct.ssl_cipher_table { i32 16, i32 672 }, %struct.ssl_cipher_table { i32 32, i32 673 }, %struct.ssl_cipher_table { i32 128, i32 982 }, %struct.ssl_cipher_table { i32 256, i32 976 }, %struct.ssl_cipher_table { i32 512, i32 983 }, %struct.ssl_cipher_table { i32 0, i32 114 }, %struct.ssl_cipher_table { i32 0, i32 675 }, %struct.ssl_cipher_table { i32 0, i32 674 }, %struct.ssl_cipher_table { i32 1024, i32 1192 }, %struct.ssl_cipher_table { i32 2048, i32 1017 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ECDH\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ECDSA\00", align 1
@default_mac_pkey_id = internal constant [14 x i32] [i32 855, i32 855, i32 855, i32 0, i32 855, i32 855, i32 855, i32 0, i32 855, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"gost-mac\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"gost-mac-12\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"magma-mac\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"kuznyechik-mac\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gost2001\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"gost2012_256\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"gost2012_512\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ssl_comp_methods = internal unnamed_addr global %struct.stack_st_SSL_COMP* null, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"ssl/ssl_ciph.c\00", align 1
@__func__.ssl_create_cipher_list = private unnamed_addr constant [23 x i8] c"ssl_create_cipher_list\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%-30s %-7s Kx=%-8s Au=%-5s Enc=%-22s Mac=%-4s\0A\00", align 1
@__func__.SSL_CIPHER_description = private unnamed_addr constant [23 x i8] c"SSL_CIPHER_description\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"PSK\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"RSAPSK\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ECDHEPSK\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"DHEPSK\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"SRP\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"GOST\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"GOST18\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"DSS\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"GOST01\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"GOST12\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"DES(56)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"3DES(168)\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"RC4(128)\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"RC2(128)\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"IDEA(128)\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"AES(128)\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"AES(256)\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"AESGCM(128)\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"AESGCM(256)\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"AESCCM(128)\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"AESCCM(256)\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"AESCCM8(128)\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"AESCCM8(256)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Camellia(128)\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"Camellia(256)\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"ARIAGCM(128)\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ARIAGCM(256)\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"SEED(128)\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"GOST89(256)\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"MAGMA\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"KUZNYECHIK\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"CHACHA20/POLY1305(256)\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"AEAD\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"GOST89\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"GOST94\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"GOST2012\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"(NONE)\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"TLSv1.0\00", align 1
@__func__.SSL_COMP_add_compression_method = private unnamed_addr constant [32 x i8] c"SSL_COMP_add_compression_method\00", align 1
@ssl_cipher_table_kx = internal constant [11 x %struct.ssl_cipher_table] [%struct.ssl_cipher_table { i32 1, i32 1037 }, %struct.ssl_cipher_table { i32 4, i32 1038 }, %struct.ssl_cipher_table { i32 2, i32 1039 }, %struct.ssl_cipher_table { i32 128, i32 1040 }, %struct.ssl_cipher_table { i32 256, i32 1041 }, %struct.ssl_cipher_table { i32 64, i32 1042 }, %struct.ssl_cipher_table { i32 8, i32 1043 }, %struct.ssl_cipher_table { i32 32, i32 1044 }, %struct.ssl_cipher_table { i32 16, i32 1045 }, %struct.ssl_cipher_table { i32 512, i32 1218 }, %struct.ssl_cipher_table { i32 0, i32 1063 }], align 16
@ssl_cipher_table_auth = internal constant [9 x %struct.ssl_cipher_table] [%struct.ssl_cipher_table { i32 1, i32 1046 }, %struct.ssl_cipher_table { i32 8, i32 1047 }, %struct.ssl_cipher_table { i32 16, i32 1048 }, %struct.ssl_cipher_table { i32 2, i32 1049 }, %struct.ssl_cipher_table { i32 32, i32 1050 }, %struct.ssl_cipher_table { i32 128, i32 1051 }, %struct.ssl_cipher_table { i32 64, i32 1052 }, %struct.ssl_cipher_table { i32 4, i32 1053 }, %struct.ssl_cipher_table { i32 0, i32 1064 }], align 16
@.str.62 = private unnamed_addr constant [32 x i8] c"ALL:!COMPLEMENTOFDEFAULT:!eNULL\00", align 1
@.str.63 = private unnamed_addr constant [75 x i8] c"TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256\00", align 1
@ssl_load_builtin_comp_once = internal global i32 0, align 4
@__func__.set_ciphersuites = private unnamed_addr constant [17 x i8] c"set_ciphersuites\00", align 1
@__func__.ciphersuite_cb = private unnamed_addr constant [15 x i8] c"ciphersuite_cb\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"SUITEB128ONLY\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"SUITEB128C2\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"SUITEB128\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"SUITEB192\00", align 1
@__func__.check_suiteb_cipher_list = private unnamed_addr constant [25 x i8] c"check_suiteb_cipher_list\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@.str.69 = private unnamed_addr constant [60 x i8] c"ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"ECDHE-ECDSA-AES128-GCM-SHA256\00", align 1
@__func__.ssl_cipher_strength_sort = private unnamed_addr constant [25 x i8] c"ssl_cipher_strength_sort\00", align 1
@cipher_aliases = internal constant [79 x %struct.ssl_cipher_st] [%struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 -33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* null, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* null, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i8* null, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* null, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* null, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* null, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* null, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* null, i32 0, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i8* null, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* null, i32 0, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* null, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* null, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* null, i32 0, i32 512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i32 0, i32 0), i8* null, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* null, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8* null, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* null, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* null, i32 0, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8* null, i32 0, i32 0, i32 160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i8* null, i32 0, i32 0, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* null, i32 0, i32 2, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i8* null, i32 0, i32 2, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i8* null, i32 0, i32 4, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0), i8* null, i32 0, i32 4, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* null, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* null, i32 0, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i8* null, i32 0, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* null, i32 0, i32 456, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* null, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 2048, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 12846080, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 86080, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 172160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 258240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 12288, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 245760, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 196608, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 512, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.117, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 524288, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.119, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 3145728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 3145728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 1048576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 2097152, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 3035, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 264, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 769, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 769, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.129, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 771, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8* null, i32 0, i32 0, i32 0, i32 -33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.134, i32 0, i32 0), i8* null, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 24, i32 0, i32 0, i32 0 }, %struct.ssl_cipher_st { i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i32 0, i32 0), i8* null, i32 0, i32 2, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 24, i32 0, i32 0, i32 0 }], align 16
@.str.73 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"COMPLEMENTOFALL\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"COMPLEMENTOFDEFAULT\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"kRSA\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"kEDH\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"kDHE\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"kEECDH\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"kECDHE\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"kPSK\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"kRSAPSK\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"kECDHEPSK\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"kDHEPSK\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"kSRP\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"kGOST\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"kGOST18\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"aRSA\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"aDSS\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"aNULL\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"aECDSA\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"aPSK\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"aGOST01\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"aGOST12\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"aGOST\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"aSRP\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"EDH\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"DHE\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"EECDH\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"ECDHE\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"ADH\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"AECDH\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"3DES\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"RC4\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"RC2\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"IDEA\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"SEED\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"eNULL\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"AES128\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"AES256\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"AES\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"AESGCM\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"AESCCM\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"AESCCM8\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"CAMELLIA128\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"CAMELLIA256\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"CAMELLIA\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"CHACHA20\00", align 1
@.str.119 = private unnamed_addr constant [27 x i8] c"GOST2012-GOST8912-GOST8912\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"ARIA\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"ARIAGCM\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"ARIA128\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"ARIA256\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"CBC\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"SHA\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"GOST89MAC\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"SSLv3\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"TLSv1\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"MEDIUM\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"FIPS\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"EDH-DSS-DES-CBC3-SHA\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"EDH-RSA-DES-CBC3-SHA\00", align 1
@__func__.ssl_cipher_process_rulestr = private unnamed_addr constant [27 x i8] c"ssl_cipher_process_rulestr\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"STRENGTH\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"SECLEVEL=\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_load_ciphers(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %disabled_enc_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 94
  store i32 0, i32* %disabled_enc_mask, align 8, !tbaa !4
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.0248 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %t.0247 = phi %struct.ssl_cipher_table* [ getelementptr inbounds ([24 x %struct.ssl_cipher_table], [24 x %struct.ssl_cipher_table]* @ssl_cipher_table_cipher, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ]
  %nid = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %t.0247, i64 0, i32 1
  %0 = load i32, i32* %nid, align 4, !tbaa !16
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %2 = load i8*, i8** %propq, align 8, !tbaa !19
  %call = tail call %struct.evp_cipher_st* @ssl_evp_cipher_fetch(%struct.ossl_lib_ctx_st* noundef %1, i32 noundef %0, i8* noundef %2) #11
  %arrayidx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 87, i64 %i.0248
  store %struct.evp_cipher_st* %call, %struct.evp_cipher_st** %arrayidx, align 8, !tbaa !20
  %cmp3 = icmp eq %struct.evp_cipher_st* %call, null
  br i1 %cmp3, label %if.then4, label %for.inc

if.then4:                                         ; preds = %if.then
  %mask = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %t.0247, i64 0, i32 0
  %3 = load i32, i32* %mask, align 4, !tbaa !21
  %4 = load i32, i32* %disabled_enc_mask, align 8, !tbaa !4
  %or = or i32 %4, %3
  store i32 %or, i32* %disabled_enc_mask, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then4, %for.body
  %inc = add nuw nsw i64 %i.0248, 1
  %incdec.ptr = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %t.0247, i64 1
  %exitcond.not = icmp eq i64 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !22

for.end:                                          ; preds = %for.inc
  %disabled_mac_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 95
  store i32 0, i32* %disabled_mac_mask, align 4, !tbaa !24
  br label %for.body9

for.body9:                                        ; preds = %for.end, %for.inc32.critedge
  %i.1251 = phi i64 [ 0, %for.end ], [ %inc33, %for.inc32.critedge ]
  %t.1250 = phi %struct.ssl_cipher_table* [ getelementptr inbounds ([14 x %struct.ssl_cipher_table], [14 x %struct.ssl_cipher_table]* @ssl_cipher_table_mac, i64 0, i64 0), %for.end ], [ %incdec.ptr34, %for.inc32.critedge ]
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %nid11 = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %t.1250, i64 0, i32 1
  %6 = load i32, i32* %nid11, align 4, !tbaa !16
  %7 = load i8*, i8** %propq, align 8, !tbaa !19
  %call13 = tail call %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef %5, i32 noundef %6, i8* noundef %7) #11
  %arrayidx14 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 88, i64 %i.1251
  store %struct.evp_md_st* %call13, %struct.evp_md_st** %arrayidx14, align 8, !tbaa !20
  %cmp15 = icmp eq %struct.evp_md_st* %call13, null
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body9
  %mask17 = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %t.1250, i64 0, i32 0
  %8 = load i32, i32* %mask17, align 4, !tbaa !21
  %9 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %or19 = or i32 %9, %8
  store i32 %or19, i32* %disabled_mac_mask, align 4, !tbaa !24
  br label %for.inc32.critedge

if.else:                                          ; preds = %for.body9
  %call20 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call13) #11
  %cmp21 = icmp sgt i32 %call20, -1
  br i1 %cmp21, label %if.end25, label %cleanup163

if.end25:                                         ; preds = %if.else
  %conv26246 = zext i32 %call20 to i64
  %arrayidx27 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 89, i64 %i.1251
  store i64 %conv26246, i64* %arrayidx27, align 8, !tbaa !25
  br label %for.inc32.critedge

for.inc32.critedge:                               ; preds = %if.then16, %if.end25
  %inc33 = add nuw nsw i64 %i.1251, 1
  %incdec.ptr34 = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %t.1250, i64 1
  %exitcond253.not = icmp eq i64 %inc33, 14
  br i1 %exitcond253.not, label %for.end35, label %for.body9, !llvm.loop !26

for.end35:                                        ; preds = %for.inc32.critedge
  %disabled_mkey_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 96
  store i32 0, i32* %disabled_mkey_mask, align 8, !tbaa !27
  %disabled_auth_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 97
  store i32 0, i32* %disabled_auth_mask, align 4, !tbaa !28
  %call36 = tail call i32 @ERR_set_mark() #11
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %11 = load i8*, i8** %propq, align 8, !tbaa !19
  %call39 = tail call %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %11) #11
  %cmp40 = icmp eq %struct.evp_signature_st* %call39, null
  br i1 %cmp40, label %if.then42, label %if.else45

if.then42:                                        ; preds = %for.end35
  %12 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  %or44 = or i32 %12, 2
  store i32 %or44, i32* %disabled_auth_mask, align 4, !tbaa !28
  br label %if.end46

if.else45:                                        ; preds = %for.end35
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef nonnull %call39) #11
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then42
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %14 = load i8*, i8** %propq, align 8, !tbaa !19
  %call49 = tail call %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef %14) #11
  %cmp50 = icmp eq %struct.evp_keyexch_st* %call49, null
  br i1 %cmp50, label %if.then52, label %if.else55

if.then52:                                        ; preds = %if.end46
  %15 = load i32, i32* %disabled_mkey_mask, align 8, !tbaa !27
  %or54 = or i32 %15, 258
  store i32 %or54, i32* %disabled_mkey_mask, align 8, !tbaa !27
  br label %if.end56

if.else55:                                        ; preds = %if.end46
  tail call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef nonnull %call49) #11
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then52
  %16 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %17 = load i8*, i8** %propq, align 8, !tbaa !19
  %call59 = tail call %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef %16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17) #11
  %cmp60 = icmp eq %struct.evp_keyexch_st* %call59, null
  br i1 %cmp60, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.end56
  %18 = load i32, i32* %disabled_mkey_mask, align 8, !tbaa !27
  %or64 = or i32 %18, 132
  store i32 %or64, i32* %disabled_mkey_mask, align 8, !tbaa !27
  br label %if.end66

if.else65:                                        ; preds = %if.end56
  tail call void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef nonnull %call59) #11
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then62
  %19 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %20 = load i8*, i8** %propq, align 8, !tbaa !19
  %call69 = tail call %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20) #11
  %cmp70 = icmp eq %struct.evp_signature_st* %call69, null
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.end66
  %21 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  %or74 = or i32 %21, 8
  store i32 %or74, i32* %disabled_auth_mask, align 4, !tbaa !28
  br label %if.end76

if.else75:                                        ; preds = %if.end66
  tail call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef nonnull %call69) #11
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then72
  %call77 = tail call i32 @ERR_pop_to_mark() #11
  %ssl_mac_pkey_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 86
  %22 = bitcast [14 x i32]* %ssl_mac_pkey_id to i8*
  %call78 = tail call i8* @memcpy(i8* noundef nonnull %22, i8* noundef bitcast ([14 x i32]* @default_mac_pkey_id to i8*), i64 noundef 56) #11
  %call79 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #12
  %arrayidx81 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 86, i64 3
  store i32 %call79, i32* %arrayidx81, align 4, !tbaa !29
  %tobool.not = icmp eq i32 %call79, 0
  br i1 %tobool.not, label %if.else87, label %if.then84

if.then84:                                        ; preds = %if.end76
  %arrayidx86 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 89, i64 3
  store i64 32, i64* %arrayidx86, align 8, !tbaa !25
  br label %if.end90

if.else87:                                        ; preds = %if.end76
  %23 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %or89 = or i32 %23, 8
  store i32 %or89, i32* %disabled_mac_mask, align 4, !tbaa !24
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.then84
  %call91 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)) #12
  %arrayidx93 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 86, i64 7
  store i32 %call91, i32* %arrayidx93, align 4, !tbaa !29
  %tobool96.not = icmp eq i32 %call91, 0
  br i1 %tobool96.not, label %if.else100, label %if.then97

if.then97:                                        ; preds = %if.end90
  %arrayidx99 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 89, i64 7
  store i64 32, i64* %arrayidx99, align 8, !tbaa !25
  br label %if.end103

if.else100:                                       ; preds = %if.end90
  %24 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %or102 = or i32 %24, 256
  store i32 %or102, i32* %disabled_mac_mask, align 4, !tbaa !24
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then97
  %call104 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12
  %arrayidx106 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 86, i64 12
  store i32 %call104, i32* %arrayidx106, align 8, !tbaa !29
  %tobool109.not = icmp eq i32 %call104, 0
  br i1 %tobool109.not, label %if.else113, label %if.then110

if.then110:                                       ; preds = %if.end103
  %arrayidx112 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 89, i64 12
  store i64 32, i64* %arrayidx112, align 8, !tbaa !25
  br label %if.end116

if.else113:                                       ; preds = %if.end103
  %25 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %or115 = or i32 %25, 1024
  store i32 %or115, i32* %disabled_mac_mask, align 4, !tbaa !24
  br label %if.end116

if.end116:                                        ; preds = %if.else113, %if.then110
  %call117 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #12
  %arrayidx119 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 86, i64 13
  store i32 %call117, i32* %arrayidx119, align 4, !tbaa !29
  %tobool122.not = icmp eq i32 %call117, 0
  br i1 %tobool122.not, label %if.else126, label %if.then123

if.then123:                                       ; preds = %if.end116
  %arrayidx125 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 89, i64 13
  store i64 32, i64* %arrayidx125, align 8, !tbaa !25
  br label %if.end129

if.else126:                                       ; preds = %if.end116
  %26 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %or128 = or i32 %26, 2048
  store i32 %or128, i32* %disabled_mac_mask, align 4, !tbaa !24
  br label %if.end129

if.end129:                                        ; preds = %if.else126, %if.then123
  %call130 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #12
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.end129
  %27 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  %or134 = or i32 %27, 160
  store i32 %or134, i32* %disabled_auth_mask, align 4, !tbaa !28
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129
  %call136 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #12
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end135
  %28 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  %or140 = or i32 %28, 128
  store i32 %or140, i32* %disabled_auth_mask, align 4, !tbaa !28
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end135
  %call142 = tail call fastcc i32 @get_optional_pkey_id(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)) #12
  %tobool143.not = icmp eq i32 %call142, 0
  %29 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  br i1 %tobool143.not, label %if.then144, label %if.end147

if.then144:                                       ; preds = %if.end141
  %or146 = or i32 %29, 128
  store i32 %or146, i32* %disabled_auth_mask, align 4, !tbaa !28
  br label %if.end147

if.end147:                                        ; preds = %if.end141, %if.then144
  %30 = phi i32 [ %or146, %if.then144 ], [ %29, %if.end141 ]
  %and = and i32 %30, 160
  %cmp149 = icmp eq i32 %and, 160
  br i1 %cmp149, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.end147
  %31 = load i32, i32* %disabled_mkey_mask, align 8, !tbaa !27
  %or153 = or i32 %31, 16
  store i32 %or153, i32* %disabled_mkey_mask, align 8, !tbaa !27
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end147
  %and156 = and i32 %30, 128
  %cmp157.not = icmp eq i32 %and156, 0
  br i1 %cmp157.not, label %cleanup163, label %if.then159

if.then159:                                       ; preds = %if.end154
  %32 = load i32, i32* %disabled_mkey_mask, align 8, !tbaa !27
  %or161 = or i32 %32, 512
  store i32 %or161, i32* %disabled_mkey_mask, align 8, !tbaa !27
  br label %cleanup163

cleanup163:                                       ; preds = %if.else, %if.end154, %if.then159
  %retval.4 = phi i32 [ 1, %if.then159 ], [ 1, %if.end154 ], [ 0, %if.else ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_cipher_st* @ssl_evp_cipher_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_md_st* @ssl_evp_md_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef) local_unnamed_addr #2

declare %struct.evp_keyexch_st* @EVP_KEYEXCH_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_KEYEXCH_free(%struct.evp_keyexch_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_optional_pkey_id(i8* noundef %pkey_name) unnamed_addr #0 {
entry:
  %tmpeng = alloca %struct.engine_st*, align 8
  %pkey_id = alloca i32, align 4
  %0 = bitcast %struct.engine_st** %tmpeng to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.engine_st* null, %struct.engine_st** %tmpeng, align 8, !tbaa !20
  %1 = bitcast i32* %pkey_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #13
  store i32 0, i32* %pkey_id, align 4, !tbaa !29
  %call = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef nonnull %tmpeng, i8* noundef %pkey_name, i32 noundef -1) #11
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %call, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef nonnull %call) #11
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %pkey_id, align 4, !tbaa !29
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %entry
  %2 = load %struct.engine_st*, %struct.engine_st** %tmpeng, align 8, !tbaa !20
  call void @tls_engine_finish(%struct.engine_st* noundef %2) #11
  %3 = load i32, i32* %pkey_id, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cipher_get_evp_cipher(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, %struct.ssl_cipher_st* nocapture noundef readonly %sslc, %struct.evp_cipher_st** nocapture noundef writeonly %enc) local_unnamed_addr #0 {
entry:
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %sslc, i64 0, i32 6
  %0 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %call = tail call fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* noundef getelementptr inbounds ([24 x %struct.ssl_cipher_table], [24 x %struct.ssl_cipher_table]* @ssl_cipher_table_cipher, i64 0, i64 0), i64 noundef 24, i32 noundef %0) #12
  switch i32 %call, label %if.else6 [
    i32 -1, label %if.end15.sink.split
    i32 5, label %if.then2
  ]

if.then2:                                         ; preds = %entry
  %libctx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !18
  %propq = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %2 = load i8*, i8** %propq, align 8, !tbaa !19
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* noundef %2) #11
  store %struct.evp_cipher_st* %call3, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  %cmp4 = icmp eq %struct.evp_cipher_st* %call3, null
  br i1 %cmp4, label %cleanup16, label %if.end15

if.else6:                                         ; preds = %entry
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 87, i64 %idxprom
  %3 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx, align 8, !tbaa !20
  %cmp7 = icmp eq %struct.evp_cipher_st* %3, null
  br i1 %cmp7, label %cleanup16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else6
  %call8 = tail call i32 @ssl_evp_cipher_up_ref(%struct.evp_cipher_st* noundef nonnull %3) #11
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup16, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %arrayidx, align 8, !tbaa !20
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %entry, %if.end10
  %.sink = phi %struct.evp_cipher_st* [ %4, %if.end10 ], [ null, %entry ]
  store %struct.evp_cipher_st* %.sink, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then2
  br label %cleanup16

cleanup16:                                        ; preds = %lor.lhs.false, %if.else6, %if.then2, %if.end15
  %retval.1 = phi i32 [ 1, %if.end15 ], [ 0, %if.then2 ], [ 0, %if.else6 ], [ 0, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* nocapture noundef readonly %table, i64 noundef %table_cnt, i32 noundef %mask) unnamed_addr #4 {
entry:
  %cmp8.not = icmp eq i64 %table_cnt, 0
  br i1 %cmp8.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.010 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %table.addr.09 = phi %struct.ssl_cipher_table* [ %incdec.ptr, %for.inc ], [ %table, %entry ]
  %mask1 = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %table.addr.09, i64 0, i32 0
  %0 = load i32, i32* %mask1, align 4, !tbaa !21
  %cmp2 = icmp eq i32 %0, %mask
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv = trunc i64 %i.010 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.010, 1
  %incdec.ptr = getelementptr inbounds %struct.ssl_cipher_table, %struct.ssl_cipher_table* %table.addr.09, i64 1
  %exitcond.not = icmp eq i64 %inc, %table_cnt
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !32

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ -1, %entry ], [ -1, %for.inc ]
  ret i32 %retval.0
}

declare %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ssl_evp_cipher_up_ref(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, %struct.ssl_session_st* nocapture noundef readonly %s, %struct.evp_cipher_st** noundef %enc, %struct.evp_md_st** noundef %md, i32* noundef %mac_pkey_type, i64* noundef writeonly %mac_secret_size, %struct.ssl_comp_st** noundef writeonly %comp, i32 noundef %use_etm) local_unnamed_addr #0 {
entry:
  %ctmp = alloca %struct.ssl_comp_st, align 8
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 20
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !33
  %cmp = icmp eq %struct.ssl_cipher_st* %0, null
  br i1 %cmp, label %cleanup132, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.ssl_comp_st** %comp, null
  br i1 %cmp1.not, label %if.end17, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.ssl_comp_st* %ctmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #13
  tail call fastcc void @load_builtin_compressions() #12
  store %struct.ssl_comp_st* null, %struct.ssl_comp_st** %comp, align 8, !tbaa !20
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 19
  %2 = load i32, i32* %compress_meth, align 4, !tbaa !36
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %ctmp, i64 0, i32 0
  store i32 %2, i32* %id, align 8, !tbaa !37
  %3 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %cmp5.not = icmp eq %struct.stack_st_SSL_COMP* %3, null
  br i1 %cmp5.not, label %if.end12, label %if.then6

if.then6:                                         ; preds = %if.then2
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %3) #12
  %call9 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call7, i8* noundef nonnull %1) #11
  %4 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %call10 = call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %4) #12
  %call11 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %call9) #11
  %5 = bitcast %struct.ssl_comp_st** %comp to i8**
  store i8* %call11, i8** %5, align 8, !tbaa !20
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.then2
  %cmp13 = icmp eq %struct.evp_cipher_st** %enc, null
  %cmp14 = icmp eq %struct.evp_md_st** %md, null
  %.demorgan = and i1 %cmp13, %cmp14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #13
  br i1 %.demorgan, label %cleanup132, label %if.end17

if.end17:                                         ; preds = %if.end12, %if.end
  %cmp18 = icmp eq %struct.evp_cipher_st** %enc, null
  %cmp19 = icmp eq %struct.evp_md_st** %md, null
  %or.cond134 = or i1 %cmp18, %cmp19
  br i1 %or.cond134, label %cleanup132, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @ssl_cipher_get_evp_cipher(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_cipher_st* noundef nonnull %0, %struct.evp_cipher_st** noundef nonnull %enc) #12
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup132, label %if.end25

if.end25:                                         ; preds = %if.end21
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 7
  %6 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %call26 = call fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* noundef getelementptr inbounds ([14 x %struct.ssl_cipher_table], [14 x %struct.ssl_cipher_table]* @ssl_cipher_table_mac, i64 0, i64 0), i64 noundef 14, i32 noundef %6) #12
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !20
  %cmp29.not = icmp eq i32* %mac_pkey_type, null
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.then28
  store i32 0, i32* %mac_pkey_type, align 4, !tbaa !29
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then28
  %cmp32.not = icmp eq i64* %mac_secret_size, null
  br i1 %cmp32.not, label %if.end56.thread, label %if.then33

if.then33:                                        ; preds = %if.end31
  store i64 0, i64* %mac_secret_size, align 8, !tbaa !25
  br label %if.end56.thread

if.else:                                          ; preds = %if.end25
  %idxprom = sext i32 %call26 to i64
  %arrayidx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 88, i64 %idxprom
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx, align 8, !tbaa !20
  %call39 = call i32 @ssl_evp_md_up_ref(%struct.evp_md_st* noundef %7) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.else
  %8 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %8) #11
  br label %cleanup132

if.end42:                                         ; preds = %if.else
  %9 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx, align 8, !tbaa !20
  store %struct.evp_md_st* %9, %struct.evp_md_st** %md, align 8, !tbaa !20
  %cmp46.not = icmp eq i32* %mac_pkey_type, null
  br i1 %cmp46.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end42
  %arrayidx49 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 86, i64 %idxprom
  %10 = load i32, i32* %arrayidx49, align 4, !tbaa !29
  store i32 %10, i32* %mac_pkey_type, align 4, !tbaa !29
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end42
  %cmp51.not = icmp eq i64* %mac_secret_size, null
  br i1 %cmp51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %if.end50
  %arrayidx54 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 89, i64 %idxprom
  %11 = load i64, i64* %arrayidx54, align 8, !tbaa !25
  store i64 %11, i64* %mac_secret_size, align 8, !tbaa !25
  br label %if.end56

if.end56:                                         ; preds = %if.end50, %if.then52
  %12 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  %cmp57.not = icmp eq %struct.evp_cipher_st* %12, null
  br i1 %cmp57.not, label %cleanup132, label %land.lhs.true58

if.end56.thread:                                  ; preds = %if.end31, %if.then33
  %13 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %cmp36 = icmp eq i32 %13, 64
  %spec.select = select i1 %cmp36, i32* null, i32* %mac_pkey_type
  %14 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  %cmp57.not216 = icmp eq %struct.evp_cipher_st* %14, null
  br i1 %cmp57.not216, label %cleanup132, label %lor.lhs.false60

land.lhs.true58:                                  ; preds = %if.end56
  %cmp59.not = icmp eq %struct.evp_md_st* %9, null
  br i1 %cmp59.not, label %lor.lhs.false60, label %land.lhs.true63

lor.lhs.false60:                                  ; preds = %if.end56.thread, %land.lhs.true58
  %mac_pkey_type.addr.0217221 = phi i32* [ %mac_pkey_type, %land.lhs.true58 ], [ %spec.select, %if.end56.thread ]
  %15 = phi %struct.evp_cipher_st* [ %12, %land.lhs.true58 ], [ %14, %if.end56.thread ]
  %call61 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %15) #11
  %and = and i64 %call61, 2097152
  %tobool62.not = icmp eq i64 %and, 0
  br i1 %tobool62.not, label %cleanup132, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %lor.lhs.false60, %land.lhs.true58
  %mac_pkey_type.addr.0217220 = phi i32* [ %mac_pkey_type.addr.0217221, %lor.lhs.false60 ], [ %mac_pkey_type, %land.lhs.true58 ]
  %tobool64.not = icmp eq i32* %mac_pkey_type.addr.0217220, null
  br i1 %tobool64.not, label %if.then67, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %land.lhs.true63
  %16 = load i32, i32* %mac_pkey_type.addr.0217220, align 4, !tbaa !29
  %cmp66.not = icmp eq i32 %16, 0
  br i1 %cmp66.not, label %cleanup132, label %if.then67

if.then67:                                        ; preds = %lor.lhs.false65, %land.lhs.true63
  %tobool68.not = icmp eq i32 %use_etm, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %cleanup132

lor.lhs.false69:                                  ; preds = %if.then67
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %s, i64 0, i32 0
  %17 = load i32, i32* %ssl_version, align 8, !tbaa !40
  %shr.mask = and i32 %17, -256
  %cmp70.not = icmp ne i32 %shr.mask, 768
  %cmp73 = icmp slt i32 %17, 769
  %or.cond = or i1 %cmp73, %cmp70.not
  br i1 %or.cond, label %cleanup132, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false69
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %0, i64 0, i32 6
  %18 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  switch i32 %18, label %cleanup132 [
    i32 4, label %land.lhs.true77
    i32 64, label %land.lhs.true85
    i32 128, label %land.lhs.true95
  ]

land.lhs.true77:                                  ; preds = %if.end75
  %19 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %cmp79 = icmp eq i32 %19, 1
  br i1 %cmp79, label %if.end126, label %cleanup132

land.lhs.true85:                                  ; preds = %if.end75
  %20 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  switch i32 %20, label %cleanup132 [
    i32 2, label %if.end126
    i32 16, label %if.then108
  ]

land.lhs.true95:                                  ; preds = %if.end75
  %21 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  switch i32 %21, label %cleanup132 [
    i32 2, label %if.end126
    i32 16, label %if.then118
  ]

if.then108:                                       ; preds = %land.lhs.true85
  br label %if.end126

if.then118:                                       ; preds = %land.lhs.true95
  br label %if.end126

if.end126:                                        ; preds = %land.lhs.true95, %land.lhs.true85, %land.lhs.true77, %if.then108, %if.then118
  %.sink222 = phi i32 [ 948, %if.then108 ], [ 950, %if.then118 ], [ 915, %land.lhs.true77 ], [ 916, %land.lhs.true85 ], [ 918, %land.lhs.true95 ]
  %libctx89 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 0
  %22 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx89, align 8, !tbaa !18
  %propq90 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 85
  %23 = load i8*, i8** %propq90, align 8, !tbaa !19
  %call91 = call %struct.evp_cipher_st* @ssl_evp_cipher_fetch(%struct.ossl_lib_ctx_st* noundef %22, i32 noundef %.sink222, i8* noundef %23) #11
  %cmp127.not = icmp eq %struct.evp_cipher_st* %call91, null
  br i1 %cmp127.not, label %cleanup132, label %if.then128

if.then128:                                       ; preds = %if.end126
  %24 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  call void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef %24) #11
  %25 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !20
  call void @ssl_evp_md_free(%struct.evp_md_st* noundef %25) #11
  store %struct.evp_cipher_st* %call91, %struct.evp_cipher_st** %enc, align 8, !tbaa !20
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !20
  br label %cleanup132

cleanup132:                                       ; preds = %land.lhs.true95, %land.lhs.true85, %if.end56.thread, %if.end75, %land.lhs.true77, %if.end56, %lor.lhs.false60, %lor.lhs.false65, %lor.lhs.false69, %if.then67, %if.then128, %if.end126, %if.end21, %if.end17, %entry, %if.end12, %if.then41
  %retval.2 = phi i32 [ 0, %if.then41 ], [ 1, %if.end12 ], [ 0, %entry ], [ 0, %if.end17 ], [ 0, %if.end21 ], [ 1, %if.end126 ], [ 1, %if.then128 ], [ 1, %if.then67 ], [ 1, %lor.lhs.false69 ], [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false60 ], [ 0, %if.end56 ], [ 1, %land.lhs.true77 ], [ 1, %if.end75 ], [ 0, %if.end56.thread ], [ 1, %land.lhs.true85 ], [ 1, %land.lhs.true95 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @load_builtin_compressions() unnamed_addr #0 {
entry:
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @ssl_load_builtin_comp_once, void ()* noundef nonnull @do_load_builtin_compressions_ossl_) #11
  ret void
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_COMP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @ssl_evp_md_up_ref(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @ssl_evp_cipher_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare void @ssl_evp_md_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i32 noundef %idx) local_unnamed_addr #6 {
entry:
  %and = and i32 %idx, 255
  %cmp1 = icmp ugt i32 %and, 13
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 88, i64 %idxprom
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_md_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.evp_md_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @ssl_handshake_md(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !41
  %call = tail call i64 @ssl_get_algorithm2(%struct.ssl_st* noundef %s) #11
  %conv = trunc i64 %call to i32
  %call1 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %0, i32 noundef %conv) #12
  ret %struct.evp_md_st* %call1
}

declare i64 @ssl_get_algorithm2(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @ssl_prf_md(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !41
  %call = tail call i64 @ssl_get_algorithm2(%struct.ssl_st* noundef %s) #11
  %1 = lshr i64 %call, 8
  %conv = trunc i64 %1 to i32
  %call1 = tail call %struct.evp_md_st* @ssl_md(%struct.ssl_ctx_st* noundef %0, i32 noundef %conv) #12
  ret %struct.evp_md_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_set_ciphersuites(%struct.ssl_ctx_st* nocapture noundef %ctx, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 4
  %call = tail call fastcc i32 @set_ciphersuites(%struct.stack_st_SSL_CIPHER** noundef nonnull %tls13_ciphersuites, i8* noundef %str) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cipher_list = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !52
  %cmp.not = icmp eq %struct.stack_st_SSL_CIPHER* %0, null
  br i1 %cmp.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 3
  %1 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !53
  %call3 = tail call fastcc i32 @update_cipher_list(%struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list_by_id, %struct.stack_st_SSL_CIPHER* noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_ciphersuites(%struct.stack_st_SSL_CIPHER** nocapture noundef %currciphers, i8* noundef %str) unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_SSL_CIPHER*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %str, align 1, !tbaa !54
  %cmp1.not = icmp eq i8 %1, 0
  br i1 %cmp1.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = bitcast %struct.stack_st* %call to i8*
  %call3 = tail call i32 @CONF_parse_list(i8* noundef nonnull %str, i32 noundef 58, i32 noundef 1, i32 (i8*, i32, i8*)* noundef nonnull @ciphersuite_cb, i8* noundef nonnull %2) #11
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %0) #12
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #11
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1340, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.set_ciphersuites, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 185, i8* noundef null) #11
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %0) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call11) #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %currciphers, align 8, !tbaa !20
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %3) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call13) #11
  %4 = bitcast %struct.stack_st_SSL_CIPHER** %currciphers to %struct.stack_st**
  store %struct.stack_st* %call, %struct.stack_st** %4, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @update_cipher_list(%struct.stack_st_SSL_CIPHER** nocapture noundef %cipher_list, %struct.stack_st_SSL_CIPHER** nocapture noundef %cipher_list_by_id, %struct.stack_st_SSL_CIPHER* noundef %tls13_ciphersuites) unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !20
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %0) #12
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call) #11
  %1 = bitcast %struct.stack_st* %call1 to %struct.stack_st_SSL_CIPHER*
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %1) #12
  %call339 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #11
  %cmp440 = icmp sgt i32 %call339, 0
  br i1 %cmp440, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call2, i32 noundef 0) #11
  %min_tls = getelementptr inbounds i8, i8* %call6, i64 44
  %2 = bitcast i8* %min_tls to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !55
  %cmp7 = icmp eq i32 %3, 772
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %1) #12
  %call9 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call8, i32 noundef 0) #11
  %call3 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2) #11
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %land.rhs, label %while.end, !llvm.loop !56

while.end:                                        ; preds = %land.rhs, %while.body, %while.cond.preheader
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %tls13_ciphersuites) #12
  %call1141 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #11
  %cmp1242 = icmp sgt i32 %call1141, 0
  br i1 %cmp1242, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %1) #12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %call15 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %i.043) #11
  %call17 = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %call13, i8* noundef %call15, i32 noundef %i.043) #11
  %inc = add nuw nsw i32 %i.043, 1
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #11
  %cmp12 = icmp slt i32 %inc, %call11
  br i1 %cmp12, label %for.body, label %for.end, !llvm.loop !57

for.end:                                          ; preds = %for.body, %while.end
  %call18 = tail call fastcc i32 @update_cipher_list_by_id(%struct.stack_st_SSL_CIPHER** noundef %cipher_list_by_id, %struct.stack_st_SSL_CIPHER* noundef nonnull %1) #12
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.end
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %1) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call20) #11
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %4 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !20
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %4) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call22) #11
  %5 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %5, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end21, %if.then19
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %if.then19 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_set_ciphersuites(%struct.ssl_st* noundef %s, i8* noundef %str) local_unnamed_addr #0 {
entry:
  %tls13_ciphersuites = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 27
  %call = tail call fastcc i32 @set_ciphersuites(%struct.stack_st_SSL_CIPHER** noundef nonnull %tls13_ciphersuites, i8* noundef %str) #12
  %cipher_list1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 25
  %0 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list1, align 8, !tbaa !58
  %cmp = icmp eq %struct.stack_st_SSL_CIPHER* %0, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call2 = tail call %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef nonnull %s) #11
  %cmp3.not = icmp eq %struct.stack_st_SSL_CIPHER* %call2, null
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %call2) #12
  %call6 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call5) #11
  %1 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list1 to %struct.stack_st**
  store %struct.stack_st* %call6, %struct.stack_st** %1, align 8, !tbaa !58
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then4, %entry
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %2 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list1, align 8, !tbaa !58
  %cmp10.not = icmp eq %struct.stack_st_SSL_CIPHER* %2, null
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %cipher_list_by_id = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 26
  %3 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %tls13_ciphersuites, align 8, !tbaa !59
  %call14 = tail call fastcc i32 @update_cipher_list(%struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list1, %struct.stack_st_SSL_CIPHER** noundef nonnull %cipher_list_by_id, %struct.stack_st_SSL_CIPHER* noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true, %if.then11
  %retval.0 = phi i32 [ %call14, %if.then11 ], [ %call, %land.lhs.true ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

declare %struct.stack_st_SSL_CIPHER* @SSL_get_ciphers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_SSL_CIPHER* @ssl_create_cipher_list(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, %struct.stack_st_SSL_CIPHER* noundef %tls13_ciphersuites, %struct.stack_st_SSL_CIPHER** noundef %cipher_list, %struct.stack_st_SSL_CIPHER** noundef %cipher_list_by_id, i8* noundef %rule_str, %struct.cert_st* nocapture noundef %c) local_unnamed_addr #0 {
entry:
  %rule_str.addr = alloca i8*, align 8
  %head = alloca %struct.cipher_order_st*, align 8
  %tail = alloca %struct.cipher_order_st*, align 8
  store i8* %rule_str, i8** %rule_str.addr, align 8, !tbaa !20
  %0 = bitcast %struct.cipher_order_st** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store %struct.cipher_order_st* null, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %1 = bitcast %struct.cipher_order_st** %tail to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store %struct.cipher_order_st* null, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  %method = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %2 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !60
  %cmp = icmp eq i8* %rule_str, null
  %cmp1 = icmp eq %struct.stack_st_SSL_CIPHER** %cipher_list, null
  %or.cond = or i1 %cmp1, %cmp
  %cmp3 = icmp eq %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, null
  %or.cond125 = or i1 %cmp3, %or.cond
  br i1 %or.cond125, label %cleanup108, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @check_suiteb_cipher_list(%struct.ssl_method_st* noundef %2, %struct.cert_st* noundef %c, i8** noundef nonnull %rule_str.addr) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup108, label %if.end5

if.end5:                                          ; preds = %if.end
  %disabled_mkey_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 96
  %3 = load i32, i32* %disabled_mkey_mask, align 8, !tbaa !27
  %disabled_auth_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 97
  %4 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  %disabled_enc_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 94
  %5 = load i32, i32* %disabled_enc_mask, align 8, !tbaa !4
  %disabled_mac_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 95
  %6 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %num_ciphers = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %2, i64 0, i32 22
  %7 = load i32 ()*, i32 ()** %num_ciphers, align 8, !tbaa !61
  %call6 = tail call i32 %7() #11
  %conv = sext i32 %call6 to i64
  %mul = shl nsw i64 %conv, 5
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1471) #11
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1473, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ssl_create_cipher_list, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup108

if.end11:                                         ; preds = %if.end5
  %8 = bitcast i8* %call7 to %struct.cipher_order_st*
  call fastcc void @ssl_cipher_collect_ciphers(%struct.ssl_method_st* noundef nonnull %2, i32 noundef %call6, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, %struct.cipher_order_st* noundef nonnull %8, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 12288, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 524288, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 245952, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  %call12 = call fastcc i32 @ssl_cipher_strength_sort(%struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1540) #11
  br label %cleanup108

if.end15:                                         ; preds = %if.end11
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 771, i32 noundef 0, i32 noundef 6, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef 6, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 6, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef 6, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef -1, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail) #12
  %add16 = add nsw i32 %call6, 80
  %conv17 = sext i32 %add16 to i64
  %mul18 = shl nsw i64 %conv17, 3
  %call19 = tail call i8* @CRYPTO_malloc(i64 noundef %mul18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1583) #11
  %9 = bitcast i8* %call19 to %struct.ssl_cipher_st**
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1585) #11
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1586, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ssl_create_cipher_list, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup108

if.end23:                                         ; preds = %if.end15
  %10 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  tail call fastcc void @ssl_cipher_collect_aliases(%struct.ssl_cipher_st** noundef nonnull %9, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, %struct.cipher_order_st* noundef %10) #12
  %11 = load i8*, i8** %rule_str.addr, align 8, !tbaa !20
  %call24 = tail call i32 @strncmp(i8* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 noundef 7) #14
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.end35, label %land.lhs.true

if.end35:                                         ; preds = %if.end23
  %call29 = call fastcc i32 @ssl_cipher_process_rulestr(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i64 0, i64 0), %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail, %struct.ssl_cipher_st** noundef nonnull %9, %struct.cert_st* noundef %c) #12
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 7
  %12 = load i8, i8* %add.ptr, align 1, !tbaa !54
  %cmp31 = icmp eq i8 %12, 58
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i64 8
  %spec.select = select i1 %cmp31, i8* %incdec.ptr, i8* %add.ptr
  %tobool36.not = icmp eq i32 %call29, 0
  br i1 %tobool36.not, label %if.then44.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end23, %if.end35
  %rule_p.0205 = phi i8* [ %spec.select, %if.end35 ], [ %11, %if.end23 ]
  %13 = load i8, i8* %rule_p.0205, align 1, !tbaa !54
  %cmp38.not = icmp eq i8 %13, 0
  br i1 %cmp38.not, label %if.end45.critedge, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  %call41 = call fastcc i32 @ssl_cipher_process_rulestr(i8* noundef nonnull %rule_p.0205, %struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st** noundef nonnull %tail, %struct.ssl_cipher_st** noundef nonnull %9, %struct.cert_st* noundef %c) #12
  %phi.cmp = icmp eq i32 %call41, 0
  tail call void @CRYPTO_free(i8* noundef nonnull %call19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1610) #11
  br i1 %phi.cmp, label %if.then44, label %if.end45

if.then44.critedge:                               ; preds = %if.end35
  tail call void @CRYPTO_free(i8* noundef nonnull %call19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1610) #11
  br label %if.then44

if.then44:                                        ; preds = %if.then44.critedge, %if.then40
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1613) #11
  br label %cleanup108

if.end45.critedge:                                ; preds = %land.lhs.true
  tail call void @CRYPTO_free(i8* noundef nonnull %call19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1610) #11
  br label %if.end45

if.end45:                                         ; preds = %if.end45.critedge, %if.then40
  %call46 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %14 = bitcast %struct.stack_st* %call46 to %struct.stack_st_SSL_CIPHER*
  %cmp47 = icmp eq %struct.stack_st* %call46, null
  br i1 %cmp47, label %if.then49, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end45
  %call51 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %tls13_ciphersuites) #12
  %call52209 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call51) #11
  %cmp53210 = icmp sgt i32 %call52209, 0
  br i1 %cmp53210, label %for.body, label %for.cond77.preheader

if.then49:                                        ; preds = %if.end45
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1622) #11
  br label %cleanup108

for.cond77.preheader:                             ; preds = %for.inc, %for.cond.preheader
  %curr.0213 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %cmp78.not214 = icmp eq %struct.cipher_order_st* %curr.0213, null
  br i1 %cmp78.not214, label %do.end, label %for.body80

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0211 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call56 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call51, i32 noundef %i.0211) #11
  %algorithm_enc = getelementptr inbounds i8, i8* %call56, i64 36
  %15 = bitcast i8* %algorithm_enc to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !30
  %and = and i32 %16, %5
  %cmp57.not = icmp eq i32 %and, 0
  br i1 %cmp57.not, label %lor.lhs.false59, label %if.then66

lor.lhs.false59:                                  ; preds = %for.body
  %algorithm2 = getelementptr inbounds i8, i8* %call56, i64 64
  %17 = bitcast i8* %algorithm2 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !63
  %and60 = and i32 %18, 255
  %idxprom = zext i32 %and60 to i64
  %mask = getelementptr inbounds [14 x %struct.ssl_cipher_table], [14 x %struct.ssl_cipher_table]* @ssl_cipher_table_mac, i64 0, i64 %idxprom, i32 0
  %19 = load i32, i32* %mask, align 8, !tbaa !21
  %20 = load i32, i32* %disabled_mac_mask, align 4, !tbaa !24
  %and63 = and i32 %20, %19
  %cmp64.not = icmp eq i32 %and63, 0
  br i1 %cmp64.not, label %if.end69, label %if.then66

if.then66:                                        ; preds = %lor.lhs.false59, %for.body
  %call67 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %tls13_ciphersuites) #12
  %call68 = tail call i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %call67, i32 noundef %i.0211) #11
  %dec = add nsw i32 %i.0211, -1
  br label %for.inc

if.end69:                                         ; preds = %lor.lhs.false59
  %call70 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %14) #12
  %call72 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call70, i8* noundef nonnull %call56) #11
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %if.end69
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call70) #11
  br label %cleanup108

for.inc:                                          ; preds = %if.then66, %if.end69
  %i.1.ph = phi i32 [ %i.0211, %if.end69 ], [ %dec, %if.then66 ]
  %inc = add nsw i32 %i.1.ph, 1
  %call52 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call51) #11
  %cmp53 = icmp slt i32 %inc, %call52
  br i1 %cmp53, label %for.body, label %for.cond77.preheader, !llvm.loop !64

for.body80:                                       ; preds = %for.cond77.preheader, %for.inc97
  %curr.0215 = phi %struct.cipher_order_st* [ %curr.0, %for.inc97 ], [ %curr.0213, %for.cond77.preheader ]
  %active = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.0215, i64 0, i32 1
  %21 = load i32, i32* %active, align 8, !tbaa !65
  %tobool81.not = icmp eq i32 %21, 0
  br i1 %tobool81.not, label %for.inc97, label %if.then82

if.then82:                                        ; preds = %for.body80
  %call83 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %14) #12
  %22 = bitcast %struct.cipher_order_st* %curr.0215 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !67
  %call85 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call83, i8* noundef %23) #11
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %cleanup99, label %for.inc97

for.inc97:                                        ; preds = %if.then82, %for.body80
  %next = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.0215, i64 0, i32 3
  %curr.0 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next, align 8, !tbaa !20
  %cmp78.not = icmp eq %struct.cipher_order_st* %curr.0, null
  br i1 %cmp78.not, label %do.end, label %for.body80, !llvm.loop !68

cleanup99:                                        ; preds = %if.then82
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1656) #11
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call83) #11
  br label %cleanup108

do.end:                                           ; preds = %for.inc97, %for.cond77.preheader
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1665) #11
  %call102 = tail call fastcc i32 @update_cipher_list_by_id(%struct.stack_st_SSL_CIPHER** noundef %cipher_list_by_id, %struct.stack_st_SSL_CIPHER* noundef nonnull %14) #12
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then104, label %if.end106

if.then104:                                       ; preds = %do.end
  %call105 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %14) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call105) #11
  br label %cleanup108

if.end106:                                        ; preds = %do.end
  %24 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list, align 8, !tbaa !20
  %call107 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %24) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call107) #11
  %25 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list to %struct.stack_st**
  store %struct.stack_st* %call46, %struct.stack_st** %25, align 8, !tbaa !20
  br label %cleanup108

cleanup108:                                       ; preds = %cleanup99, %cleanup, %if.end, %entry, %if.end106, %if.then104, %if.then49, %if.then44, %if.then22, %if.then14, %if.then10
  %retval.3 = phi %struct.stack_st_SSL_CIPHER* [ null, %if.then10 ], [ null, %if.then22 ], [ null, %if.then49 ], [ null, %cleanup ], [ %14, %if.end106 ], [ null, %if.then104 ], [ null, %cleanup99 ], [ null, %if.then44 ], [ null, %if.then14 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret %struct.stack_st_SSL_CIPHER* %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_suiteb_cipher_list(%struct.ssl_method_st* nocapture noundef readonly %meth, %struct.cert_st* nocapture noundef %c, i8** nocapture noundef %prule_str) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %prule_str, align 8, !tbaa !20
  %call = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), i64 noundef 13) #14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then15, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i64 noundef 11) #14
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then15, label %if.else4

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i64 noundef 9) #14
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then15, label %if.end14

if.end14:                                         ; preds = %if.else4
  %call9 = tail call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i64 noundef 9) #14
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else4, %if.else, %entry, %if.end14
  %tobool28.not55 = phi i1 [ true, %if.end14 ], [ true, %if.else4 ], [ false, %if.else ], [ true, %entry ]
  %suiteb_flags.053 = phi i32 [ 131072, %if.end14 ], [ 196608, %if.else4 ], [ 196608, %if.else ], [ 65536, %entry ]
  %cert_flags = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 4
  %1 = load i32, i32* %cert_flags, align 4, !tbaa !69
  %and = and i32 %1, -196609
  %or = or i32 %and, %suiteb_flags.053
  store i32 %or, i32* %cert_flags, align 4, !tbaa !69
  br label %if.end20

if.else17:                                        ; preds = %if.end14
  %cert_flags18 = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 4
  %2 = load i32, i32* %cert_flags18, align 4, !tbaa !69
  %and19 = and i32 %2, 196608
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15
  %tobool28.not54 = phi i1 [ %tobool28.not55, %if.then15 ], [ true, %if.else17 ]
  %suiteb_flags.1 = phi i32 [ %suiteb_flags.053, %if.then15 ], [ %and19, %if.else17 ]
  %tobool21.not = icmp eq i32 %suiteb_flags.1, 0
  br i1 %tobool21.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end20
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth, i64 0, i32 25
  %3 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !72
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %3, i64 0, i32 12
  %4 = load i32, i32* %enc_flags, align 8, !tbaa !73
  %and24 = and i32 %4, 16
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1280, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.check_suiteb_cipher_list, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 158, i8* noundef null) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  switch i32 %suiteb_flags.1, label %cleanup [
    i32 196608, label %sw.bb
    i32 65536, label %sw.bb32
    i32 131072, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end27
  br i1 %tobool28.not54, label %if.else30, label %if.then29

if.then29:                                        ; preds = %sw.bb
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.68, i64 0, i64 0), i8** %prule_str, align 8, !tbaa !20
  br label %cleanup

if.else30:                                        ; preds = %sw.bb
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.69, i64 0, i64 0), i8** %prule_str, align 8, !tbaa !20
  br label %cleanup

sw.bb32:                                          ; preds = %if.end27
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i64 0, i64 0), i8** %prule_str, align 8, !tbaa !20
  br label %cleanup

sw.bb33:                                          ; preds = %if.end27
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.68, i64 0, i64 0), i8** %prule_str, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb33, %if.end27, %if.else30, %if.then29, %if.end20, %if.then26
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 1, %if.end20 ], [ 1, %if.then29 ], [ 1, %if.else30 ], [ 1, %if.end27 ], [ 1, %sw.bb33 ], [ 1, %sw.bb32 ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ssl_cipher_collect_ciphers(%struct.ssl_method_st* nocapture noundef readonly %ssl_method, i32 noundef %num_of_ciphers, i32 noundef %disabled_mkey, i32 noundef %disabled_auth, i32 noundef %disabled_enc, i32 noundef %disabled_mac, %struct.cipher_order_st* noundef %co_list, %struct.cipher_order_st** nocapture noundef writeonly %head_p, %struct.cipher_order_st** nocapture noundef writeonly %tail_p) unnamed_addr #0 {
entry:
  %cmp124 = icmp sgt i32 %num_of_ciphers, 0
  br i1 %cmp124, label %for.body.lr.ph, label %if.end76

for.body.lr.ph:                                   ; preds = %entry
  %get_cipher = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %ssl_method, i64 0, i32 23
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %ssl_method, i64 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc ]
  %co_list_num.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %co_list_num.1, %for.inc ]
  %0 = load %struct.ssl_cipher_st* (i32)*, %struct.ssl_cipher_st* (i32)** %get_cipher, align 8, !tbaa !75
  %call = tail call %struct.ssl_cipher_st* %0(i32 noundef %i.0126) #11
  %cmp1 = icmp eq %struct.ssl_cipher_st* %call, null
  br i1 %cmp1, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %valid = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 0
  %1 = load i32, i32* %valid, align 8, !tbaa !76
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 4
  %2 = load i32, i32* %algorithm_mkey, align 4, !tbaa !77
  %and = and i32 %2, %disabled_mkey
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %for.inc

lor.lhs.false3:                                   ; preds = %if.end
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 5
  %3 = load i32, i32* %algorithm_auth, align 8, !tbaa !78
  %and4 = and i32 %3, %disabled_auth
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %for.inc

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 6
  %4 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %and7 = and i32 %4, %disabled_enc
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %for.inc

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 7
  %5 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %and10 = and i32 %5, %disabled_mac
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %for.inc

if.end13:                                         ; preds = %lor.lhs.false9
  %6 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !72
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %6, i64 0, i32 12
  %7 = load i32, i32* %enc_flags, align 8, !tbaa !73
  %and14 = and i32 %7, 8
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %land.lhs.true, label %land.lhs.true23

land.lhs.true:                                    ; preds = %if.end13
  %min_tls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 8
  %8 = load i32, i32* %min_tls, align 4, !tbaa !55
  %cmp16 = icmp eq i32 %8, 0
  br i1 %cmp16, label %for.inc, label %if.end26

land.lhs.true23:                                  ; preds = %if.end13
  %min_dtls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 10
  %9 = load i32, i32* %min_dtls, align 4, !tbaa !79
  %cmp24 = icmp eq i32 %9, 0
  br i1 %cmp24, label %for.inc, label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %land.lhs.true23
  %idxprom = sext i32 %co_list_num.0125 to i64
  %cipher = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %idxprom, i32 0
  store %struct.ssl_cipher_st* %call, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !67
  %next = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %idxprom, i32 3
  %10 = bitcast %struct.cipher_order_st** %next to <2 x %struct.cipher_order_st*>*
  store <2 x %struct.cipher_order_st*> zeroinitializer, <2 x %struct.cipher_order_st*>* %10, align 8, !tbaa !20
  %active = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %idxprom, i32 1
  store i32 0, i32* %active, align 8, !tbaa !65
  %inc = add nsw i32 %co_list_num.0125, 1
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true23, %land.lhs.true, %if.end, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %for.body, %lor.lhs.false, %if.end26
  %co_list_num.1 = phi i32 [ %co_list_num.0125, %for.body ], [ %co_list_num.0125, %if.end ], [ %co_list_num.0125, %lor.lhs.false3 ], [ %co_list_num.0125, %lor.lhs.false6 ], [ %co_list_num.0125, %lor.lhs.false9 ], [ %co_list_num.0125, %land.lhs.true ], [ %co_list_num.0125, %land.lhs.true23 ], [ %inc, %if.end26 ], [ %co_list_num.0125, %lor.lhs.false ]
  %inc33 = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc33, %num_of_ciphers
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !80

for.end:                                          ; preds = %for.inc
  %cmp34 = icmp sgt i32 %co_list_num.1, 0
  br i1 %cmp34, label %if.then35, label %if.end76

if.then35:                                        ; preds = %for.end
  %prev37 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 0, i32 4
  store %struct.cipher_order_st* null, %struct.cipher_order_st** %prev37, align 8, !tbaa !81
  %cmp38.not = icmp eq i32 %co_list_num.1, 1
  br i1 %cmp38.not, label %if.end67, label %if.then39

if.then39:                                        ; preds = %if.then35
  %arrayidx40 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 1
  %next42 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 0, i32 3
  store %struct.cipher_order_st* %arrayidx40, %struct.cipher_order_st** %next42, align 8, !tbaa !82
  %sub = add nsw i32 %co_list_num.1, -1
  %cmp44127 = icmp ugt i32 %co_list_num.1, 2
  br i1 %cmp44127, label %for.body45.preheader, label %for.end59

for.body45.preheader:                             ; preds = %if.then39
  %wide.trip.count = zext i32 %sub to i64
  %11 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %11, 1
  %12 = icmp eq i32 %sub, 2
  br i1 %12, label %for.end59.loopexit.unr-lcssa, label %for.body45.preheader.new

for.body45.preheader.new:                         ; preds = %for.body45.preheader
  %unroll_iter = and i64 %11, -2
  br label %for.body45

for.body45:                                       ; preds = %for.body45, %for.body45.preheader.new
  %indvars.iv = phi i64 [ 1, %for.body45.preheader.new ], [ %indvars.iv.next.1, %for.body45 ]
  %niter = phi i64 [ 0, %for.body45.preheader.new ], [ %niter.next.1, %for.body45 ]
  %13 = add nsw i64 %indvars.iv, -1
  %arrayidx48 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %13
  %prev51 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv, i32 4
  store %struct.cipher_order_st* %arrayidx48, %struct.cipher_order_st** %prev51, align 8, !tbaa !81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx53 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.next
  %next56 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv, i32 3
  store %struct.cipher_order_st* %arrayidx53, %struct.cipher_order_st** %next56, align 8, !tbaa !82
  %arrayidx48.1 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv
  %prev51.1 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.next, i32 4
  store %struct.cipher_order_st* %arrayidx48.1, %struct.cipher_order_st** %prev51.1, align 8, !tbaa !81
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx53.1 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.next.1
  %next56.1 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.next, i32 3
  store %struct.cipher_order_st* %arrayidx53.1, %struct.cipher_order_st** %next56.1, align 8, !tbaa !82
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end59.loopexit.unr-lcssa, label %for.body45, !llvm.loop !83

for.end59.loopexit.unr-lcssa:                     ; preds = %for.body45, %for.body45.preheader
  %indvars.iv.unr = phi i64 [ 1, %for.body45.preheader ], [ %indvars.iv.next.1, %for.body45 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end59, label %for.body45.epil

for.body45.epil:                                  ; preds = %for.end59.loopexit.unr-lcssa
  %14 = add nsw i64 %indvars.iv.unr, -1
  %arrayidx48.epil = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %14
  %prev51.epil = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.unr, i32 4
  store %struct.cipher_order_st* %arrayidx48.epil, %struct.cipher_order_st** %prev51.epil, align 8, !tbaa !81
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.unr, 1
  %arrayidx53.epil = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.next.epil
  %next56.epil = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %indvars.iv.unr, i32 3
  store %struct.cipher_order_st* %arrayidx53.epil, %struct.cipher_order_st** %next56.epil, align 8, !tbaa !82
  br label %for.end59

for.end59:                                        ; preds = %for.body45.epil, %for.end59.loopexit.unr-lcssa, %if.then39
  %sub60 = add nsw i32 %co_list_num.1, -2
  %15 = zext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %15
  %idxprom64 = sext i32 %sub to i64
  %prev66 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %idxprom64, i32 4
  store %struct.cipher_order_st* %arrayidx62, %struct.cipher_order_st** %prev66, align 8, !tbaa !81
  %phi.cast = zext i32 %sub to i64
  br label %if.end67

if.end67:                                         ; preds = %if.then35, %for.end59
  %sub68.pre-phi = phi i64 [ %phi.cast, %for.end59 ], [ 0, %if.then35 ]
  %arrayidx70 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %sub68.pre-phi
  %next71 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %co_list, i64 %sub68.pre-phi, i32 3
  store %struct.cipher_order_st* null, %struct.cipher_order_st** %next71, align 8, !tbaa !82
  store %struct.cipher_order_st* %co_list, %struct.cipher_order_st** %head_p, align 8, !tbaa !20
  store %struct.cipher_order_st* %arrayidx70, %struct.cipher_order_st** %tail_p, align 8, !tbaa !20
  br label %if.end76

if.end76:                                         ; preds = %entry, %if.end67, %for.end
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @ssl_cipher_apply_rule(i32 noundef %cipher_id, i32 noundef %alg_mkey, i32 noundef %alg_auth, i32 noundef %alg_enc, i32 noundef %alg_mac, i32 noundef %min_tls, i32 noundef %algo_strength, i32 noundef %rule, i32 noundef %strength_bits, %struct.cipher_order_st** nocapture noundef %head_p, %struct.cipher_order_st** nocapture noundef %tail_p) unnamed_addr #7 {
entry:
  %head = alloca %struct.cipher_order_st*, align 8
  %tail = alloca %struct.cipher_order_st*, align 8
  %0 = bitcast %struct.cipher_order_st** %head to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %1 = bitcast %struct.cipher_order_st** %tail to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  %cmp = icmp eq i32 %rule, 3
  %cmp1 = icmp eq i32 %rule, 6
  %or.cond = or i1 %cmp, %cmp1
  %2 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head_p, align 8, !tbaa !20
  store %struct.cipher_order_st* %2, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %3 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail_p, align 8, !tbaa !20
  store %struct.cipher_order_st* %3, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  %last.0 = select i1 %or.cond, %struct.cipher_order_st* %2, %struct.cipher_order_st* %3
  %next.0 = select i1 %or.cond, %struct.cipher_order_st* %3, %struct.cipher_order_st* %2
  %cmp4224 = icmp eq %struct.cipher_order_st* %last.0, null
  %cmp7225 = icmp eq %struct.cipher_order_st* %next.0, null
  %or.cond223226 = select i1 %cmp4224, i1 true, i1 %cmp7225
  br i1 %or.cond223226, label %for.end, label %if.end9.lr.ph

if.end9.lr.ph:                                    ; preds = %entry
  %cmp12 = icmp sgt i32 %strength_bits, -1
  %cmp24.not = icmp eq i32 %cipher_id, 0
  %tobool28.not = icmp eq i32 %alg_mkey, 0
  %tobool34.not = icmp eq i32 %alg_auth, 0
  %tobool41.not = icmp eq i32 %alg_enc, 0
  %tobool48.not = icmp eq i32 %alg_mac, 0
  %tobool55.not = icmp eq i32 %min_tls, 0
  %and61 = and i32 %algo_strength, 31
  %tobool62.not = icmp eq i32 %and61, 0
  %and70 = and i32 %algo_strength, 32
  %tobool71.not = icmp eq i32 %and70, 0
  %cmp113 = icmp eq i32 %rule, 2
  br label %if.end9

if.end9:                                          ; preds = %if.end9.lr.ph, %for.cond.backedge
  %next.1227 = phi %struct.cipher_order_st* [ %next.0, %if.end9.lr.ph ], [ %cond, %for.cond.backedge ]
  switch i32 %rule, label %cond.false [
    i32 6, label %cond.true
    i32 3, label %cond.true
  ]

cond.true:                                        ; preds = %if.end9, %if.end9
  %prev = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 4
  br label %cond.end

cond.false:                                       ; preds = %if.end9
  %next11 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.cipher_order_st** [ %prev, %cond.true ], [ %next11, %cond.false ]
  %cond = load %struct.cipher_order_st*, %struct.cipher_order_st** %cond.in, align 8, !tbaa !20
  %cipher = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 0
  %4 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !67
  br i1 %cmp12, label %if.then13, label %if.end23

if.then13:                                        ; preds = %cond.end
  %strength_bits14 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 14
  %5 = load i32, i32* %strength_bits14, align 4, !tbaa !84
  %cmp15.not = icmp eq i32 %5, %strength_bits
  br i1 %cmp15.not, label %if.end83, label %for.cond.backedge

if.end23:                                         ; preds = %cond.end
  br i1 %cmp24.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end23
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 3
  %6 = load i32, i32* %id, align 8, !tbaa !85
  %cmp25.not = icmp eq i32 %6, %cipher_id
  br i1 %cmp25.not, label %if.end27, label %for.cond.backedge

if.end27:                                         ; preds = %land.lhs.true, %if.end23
  br i1 %tobool28.not, label %if.end33, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end27
  %algorithm_mkey30 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 4
  %7 = load i32, i32* %algorithm_mkey30, align 4, !tbaa !77
  %and = and i32 %7, %alg_mkey
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.cond.backedge, label %if.end33

if.end33:                                         ; preds = %land.lhs.true29, %if.end27
  br i1 %tobool34.not, label %if.end40, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end33
  %algorithm_auth36 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 5
  %8 = load i32, i32* %algorithm_auth36, align 8, !tbaa !78
  %and37 = and i32 %8, %alg_auth
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.cond.backedge, label %if.end40

if.end40:                                         ; preds = %land.lhs.true35, %if.end33
  br i1 %tobool41.not, label %if.end47, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.end40
  %algorithm_enc43 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 6
  %9 = load i32, i32* %algorithm_enc43, align 4, !tbaa !30
  %and44 = and i32 %9, %alg_enc
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %for.cond.backedge, label %if.end47

if.end47:                                         ; preds = %land.lhs.true42, %if.end40
  br i1 %tobool48.not, label %if.end54, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.end47
  %algorithm_mac50 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 7
  %10 = load i32, i32* %algorithm_mac50, align 8, !tbaa !39
  %and51 = and i32 %10, %alg_mac
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.cond.backedge, label %if.end54

if.end54:                                         ; preds = %land.lhs.true49, %if.end47
  br i1 %tobool55.not, label %if.end60, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %min_tls57 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 8
  %11 = load i32, i32* %min_tls57, align 4, !tbaa !55
  %cmp58.not = icmp eq i32 %11, %min_tls
  br i1 %cmp58.not, label %if.end60, label %for.cond.backedge

if.end60:                                         ; preds = %land.lhs.true56, %if.end54
  br i1 %tobool62.not, label %if.end69, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end60
  %algo_strength65 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 12
  %12 = load i32, i32* %algo_strength65, align 4, !tbaa !86
  %and66 = and i32 %12, %and61
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %for.cond.backedge, label %if.end69

if.end69:                                         ; preds = %land.lhs.true63, %if.end60
  br i1 %tobool71.not, label %if.end83, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %if.end69
  %algo_strength74 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %4, i64 0, i32 12
  %13 = load i32, i32* %algo_strength74, align 4, !tbaa !86
  %and75 = and i32 %13, %and70
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %for.cond.backedge, label %if.end83

if.end83:                                         ; preds = %if.then13, %land.lhs.true72, %if.end69
  switch i32 %rule, label %if.else97 [
    i32 1, label %if.then85
    i32 4, label %if.then92
  ]

if.then85:                                        ; preds = %if.end83
  %active = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 1
  %14 = load i32, i32* %active, align 8, !tbaa !65
  %tobool86.not = icmp eq i32 %14, 0
  br i1 %tobool86.not, label %if.then87, label %for.cond.backedge

if.then87:                                        ; preds = %if.then85
  call fastcc void @ll_append_tail(%struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st* noundef nonnull %next.1227, %struct.cipher_order_st** noundef nonnull %tail) #12
  store i32 1, i32* %active, align 8, !tbaa !65
  br label %for.cond.backedge

if.then92:                                        ; preds = %if.end83
  %active93 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 1
  %15 = load i32, i32* %active93, align 8, !tbaa !65
  %tobool94.not = icmp eq i32 %15, 0
  br i1 %tobool94.not, label %for.cond.backedge, label %if.then95

if.then95:                                        ; preds = %if.then92
  call fastcc void @ll_append_tail(%struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st* noundef nonnull %next.1227, %struct.cipher_order_st** noundef nonnull %tail) #12
  br label %for.cond.backedge

if.else97:                                        ; preds = %if.end83
  br i1 %cmp, label %if.then99, label %if.else105

if.then99:                                        ; preds = %if.else97
  %active100 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 1
  %16 = load i32, i32* %active100, align 8, !tbaa !65
  %tobool101.not = icmp eq i32 %16, 0
  br i1 %tobool101.not, label %for.cond.backedge, label %if.then102

if.then102:                                       ; preds = %if.then99
  call fastcc void @ll_append_head(%struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st* noundef nonnull %next.1227, %struct.cipher_order_st** noundef nonnull %tail) #12
  store i32 0, i32* %active100, align 8, !tbaa !65
  br label %for.cond.backedge

if.else105:                                       ; preds = %if.else97
  br i1 %cmp1, label %if.then107, label %if.else112

if.then107:                                       ; preds = %if.else105
  %active108 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 1
  %17 = load i32, i32* %active108, align 8, !tbaa !65
  %tobool109.not = icmp eq i32 %17, 0
  br i1 %tobool109.not, label %for.cond.backedge, label %if.then110

if.then110:                                       ; preds = %if.then107
  call fastcc void @ll_append_head(%struct.cipher_order_st** noundef nonnull %head, %struct.cipher_order_st* noundef nonnull %next.1227, %struct.cipher_order_st** noundef nonnull %tail) #12
  br label %for.cond.backedge

if.else112:                                       ; preds = %if.else105
  br i1 %cmp113, label %if.then114, label %for.cond.backedge

if.then114:                                       ; preds = %if.else112
  %18 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %cmp115 = icmp eq %struct.cipher_order_st* %18, %next.1227
  %next117 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 3
  %19 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next117, align 8, !tbaa !82
  br i1 %cmp115, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.then114
  store %struct.cipher_order_st* %19, %struct.cipher_order_st** %head, align 8, !tbaa !20
  br label %if.end122

if.else118:                                       ; preds = %if.then114
  %prev120 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 4
  %20 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev120, align 8, !tbaa !81
  %next121 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %20, i64 0, i32 3
  store %struct.cipher_order_st* %19, %struct.cipher_order_st** %next121, align 8, !tbaa !82
  br label %if.end122

if.end122:                                        ; preds = %if.else118, %if.then116
  %21 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  %cmp123 = icmp eq %struct.cipher_order_st* %21, %next.1227
  br i1 %cmp123, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end122
  %prev125 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 4
  %22 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev125, align 8, !tbaa !81
  store %struct.cipher_order_st* %22, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end122
  %active127 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 1
  store i32 0, i32* %active127, align 8, !tbaa !65
  %next128 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 3
  %23 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next128, align 8, !tbaa !82
  %cmp129.not = icmp eq %struct.cipher_order_st* %23, null
  br i1 %cmp129.not, label %if.end134, label %if.then130

if.then130:                                       ; preds = %if.end126
  %prev131 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 4
  %24 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev131, align 8, !tbaa !81
  %prev133 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %23, i64 0, i32 4
  store %struct.cipher_order_st* %24, %struct.cipher_order_st** %prev133, align 8, !tbaa !81
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %if.end126
  %prev135 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %next.1227, i64 0, i32 4
  %25 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev135, align 8, !tbaa !81
  %cmp136.not = icmp eq %struct.cipher_order_st* %25, null
  br i1 %cmp136.not, label %if.end141, label %if.then137

if.then137:                                       ; preds = %if.end134
  %next140 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %25, i64 0, i32 3
  store %struct.cipher_order_st* %23, %struct.cipher_order_st** %next140, align 8, !tbaa !82
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end134
  %26 = bitcast %struct.cipher_order_st** %next128 to <2 x %struct.cipher_order_st*>*
  store <2 x %struct.cipher_order_st*> zeroinitializer, <2 x %struct.cipher_order_st*>* %26, align 8, !tbaa !20
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then87, %if.then85, %if.then102, %if.then99, %if.else112, %if.end141, %if.then107, %if.then110, %if.then92, %if.then95, %if.then13, %land.lhs.true, %land.lhs.true29, %land.lhs.true35, %land.lhs.true42, %land.lhs.true49, %land.lhs.true56, %land.lhs.true63, %land.lhs.true72
  %cmp4 = icmp eq %struct.cipher_order_st* %next.1227, %last.0
  %cmp7 = icmp eq %struct.cipher_order_st* %cond, null
  %or.cond223 = select i1 %cmp4, i1 true, i1 %cmp7
  br i1 %or.cond223, label %for.end.loopexit, label %if.end9

for.end.loopexit:                                 ; preds = %for.cond.backedge
  %.pre = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %.pre228 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %27 = phi %struct.cipher_order_st* [ %.pre228, %for.end.loopexit ], [ %3, %entry ]
  %28 = phi %struct.cipher_order_st* [ %.pre, %for.end.loopexit ], [ %2, %entry ]
  store %struct.cipher_order_st* %28, %struct.cipher_order_st** %head_p, align 8, !tbaa !20
  store %struct.cipher_order_st* %27, %struct.cipher_order_st** %tail_p, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_cipher_strength_sort(%struct.cipher_order_st** nocapture noundef %head_p, %struct.cipher_order_st** nocapture noundef %tail_p) unnamed_addr #0 {
entry:
  %curr.055 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head_p, align 8, !tbaa !20
  %cmp.not56 = icmp eq %struct.cipher_order_st* %curr.055, null
  br i1 %cmp.not56, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %curr.058 = phi %struct.cipher_order_st* [ %curr.0, %if.end ], [ %curr.055, %entry ]
  %max_strength_bits.057 = phi i32 [ %max_strength_bits.1, %if.end ], [ 0, %entry ]
  %active = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.058, i64 0, i32 1
  %0 = load i32, i32* %active, align 8, !tbaa !65
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %cipher = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.058, i64 0, i32 0
  %1 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !67
  %strength_bits = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %1, i64 0, i32 14
  %2 = load i32, i32* %strength_bits, align 4, !tbaa !84
  %cmp1 = icmp sgt i32 %2, %max_strength_bits.057
  %spec.select = select i1 %cmp1, i32 %2, i32 %max_strength_bits.057
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  %max_strength_bits.1 = phi i32 [ %max_strength_bits.057, %while.body ], [ %spec.select, %land.lhs.true ]
  %next = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.058, i64 0, i32 3
  %curr.0 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next, align 8, !tbaa !20
  %cmp.not = icmp eq %struct.cipher_order_st* %curr.0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !87

while.end:                                        ; preds = %if.end, %entry
  %max_strength_bits.0.lcssa = phi i32 [ 0, %entry ], [ %max_strength_bits.1, %if.end ]
  %add = add nsw i32 %max_strength_bits.0.lcssa, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 962) #11
  %3 = bitcast i8* %call to i32*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then6, label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %while.end
  %curr.159 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head_p, align 8, !tbaa !20
  %cmp9.not60 = icmp eq %struct.cipher_order_st* %curr.159, null
  br i1 %cmp9.not60, label %for.cond.preheader, label %while.body11

if.then6:                                         ; preds = %while.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 964, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ssl_cipher_strength_sort, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end17, %while.cond8.preheader
  %cmp2062 = icmp sgt i32 %max_strength_bits.0.lcssa, -1
  br i1 %cmp2062, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %4 = zext i32 %max_strength_bits.0.lcssa to i64
  br label %for.body

while.body11:                                     ; preds = %while.cond8.preheader, %if.end17
  %curr.161 = phi %struct.cipher_order_st* [ %curr.1, %if.end17 ], [ %curr.159, %while.cond8.preheader ]
  %active12 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.161, i64 0, i32 1
  %5 = load i32, i32* %active12, align 8, !tbaa !65
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %while.body11
  %cipher15 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.161, i64 0, i32 0
  %6 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher15, align 8, !tbaa !67
  %strength_bits16 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %6, i64 0, i32 14
  %7 = load i32, i32* %strength_bits16, align 4, !tbaa !84
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !29
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !29
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %while.body11
  %next18 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr.161, i64 0, i32 3
  %curr.1 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next18, align 8, !tbaa !20
  %cmp9.not = icmp eq %struct.cipher_order_st* %curr.1, null
  br i1 %cmp9.not, label %for.cond.preheader, label %while.body11, !llvm.loop !88

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %4, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx23 = getelementptr inbounds i32, i32* %3, i64 %indvars.iv
  %9 = load i32, i32* %arrayidx23, align 4, !tbaa !29
  %cmp24 = icmp sgt i32 %9, 0
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body
  %10 = trunc i64 %indvars.iv to i32
  tail call fastcc void @ssl_cipher_apply_rule(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef %10, %struct.cipher_order_st** noundef nonnull %head_p, %struct.cipher_order_st** noundef %tail_p) #12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then26
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp20 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp20, label %for.body, label %for.end, !llvm.loop !89

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 986) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %for.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @ssl_cipher_collect_aliases(%struct.ssl_cipher_st** nocapture noundef writeonly %ca_list, i32 noundef %disabled_mkey, i32 noundef %disabled_auth, i32 noundef %disabled_enc, i32 noundef %disabled_mac, %struct.cipher_order_st* noundef readonly %head) unnamed_addr #8 {
entry:
  %neg = xor i32 %disabled_mkey, -1
  %neg1 = xor i32 %disabled_auth, -1
  %neg2 = xor i32 %disabled_enc, -1
  %neg3 = xor i32 %disabled_mac, -1
  %cmp.not4 = icmp eq %struct.cipher_order_st* %head, null
  br i1 %cmp.not4, label %for.body.preheader, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %ciph_curr.06 = phi %struct.cipher_order_st* [ %1, %while.body ], [ %head, %entry ]
  %ca_curr.05 = phi %struct.ssl_cipher_st** [ %incdec.ptr, %while.body ], [ %ca_list, %entry ]
  %cipher = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %ciph_curr.06, i64 0, i32 0
  %0 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !67
  store %struct.ssl_cipher_st* %0, %struct.ssl_cipher_st** %ca_curr.05, align 8, !tbaa !20
  %incdec.ptr = getelementptr inbounds %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %ca_curr.05, i64 1
  %next = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %ciph_curr.06, i64 0, i32 3
  %1 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next, align 8, !tbaa !82
  %cmp.not = icmp eq %struct.cipher_order_st* %1, null
  br i1 %cmp.not, label %for.body.preheader, label %while.body, !llvm.loop !90

for.body.preheader:                               ; preds = %while.body, %entry
  %ca_curr.18.ph = phi %struct.ssl_cipher_st** [ %ca_list, %entry ], [ %incdec.ptr, %while.body ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %for.body.preheader ]
  %ca_curr.18 = phi %struct.ssl_cipher_st** [ %ca_curr.2, %cleanup ], [ %ca_curr.18.ph, %for.body.preheader ]
  %algorithm_mkey5 = getelementptr inbounds [79 x %struct.ssl_cipher_st], [79 x %struct.ssl_cipher_st]* @cipher_aliases, i64 0, i64 %indvars.iv, i32 4
  %2 = load i32, i32* %algorithm_mkey5, align 4, !tbaa !77
  %algorithm_auth8 = getelementptr inbounds [79 x %struct.ssl_cipher_st], [79 x %struct.ssl_cipher_st]* @cipher_aliases, i64 0, i64 %indvars.iv, i32 5
  %3 = load i32, i32* %algorithm_auth8, align 16, !tbaa !78
  %algorithm_enc11 = getelementptr inbounds [79 x %struct.ssl_cipher_st], [79 x %struct.ssl_cipher_st]* @cipher_aliases, i64 0, i64 %indvars.iv, i32 6
  %4 = load i32, i32* %algorithm_enc11, align 4, !tbaa !30
  %algorithm_mac14 = getelementptr inbounds [79 x %struct.ssl_cipher_st], [79 x %struct.ssl_cipher_st]* @cipher_aliases, i64 0, i64 %indvars.iv, i32 7
  %5 = load i32, i32* %algorithm_mac14, align 8, !tbaa !39
  %tobool.not = icmp ne i32 %2, 0
  %and = and i32 %2, %neg
  %cmp15 = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %cmp15
  br i1 %or.cond, label %cleanup, label %if.end17

if.end17:                                         ; preds = %for.body
  %tobool18.not = icmp ne i32 %3, 0
  %and20 = and i32 %3, %neg1
  %cmp21 = icmp eq i32 %and20, 0
  %or.cond1 = and i1 %tobool18.not, %cmp21
  br i1 %or.cond1, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end17
  %tobool25.not = icmp ne i32 %4, 0
  %and27 = and i32 %4, %neg2
  %cmp28 = icmp eq i32 %and27, 0
  %or.cond2 = and i1 %tobool25.not, %cmp28
  br i1 %or.cond2, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end24
  %tobool32.not = icmp ne i32 %5, 0
  %and34 = and i32 %5, %neg3
  %cmp35 = icmp eq i32 %and34, 0
  %or.cond3 = and i1 %tobool32.not, %cmp35
  br i1 %or.cond3, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.end31
  %add.ptr = getelementptr inbounds [79 x %struct.ssl_cipher_st], [79 x %struct.ssl_cipher_st]* @cipher_aliases, i64 0, i64 %indvars.iv
  store %struct.ssl_cipher_st* %add.ptr, %struct.ssl_cipher_st** %ca_curr.18, align 8, !tbaa !20
  %incdec.ptr39 = getelementptr inbounds %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %ca_curr.18, i64 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end24, %if.end17, %for.body, %if.end38
  %ca_curr.2 = phi %struct.ssl_cipher_st** [ %incdec.ptr39, %if.end38 ], [ %ca_curr.18, %for.body ], [ %ca_curr.18, %if.end17 ], [ %ca_curr.18, %if.end24 ], [ %ca_curr.18, %if.end31 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 79
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !91

for.end:                                          ; preds = %cleanup
  store %struct.ssl_cipher_st* null, %struct.ssl_cipher_st** %ca_curr.2, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_cipher_process_rulestr(i8* noundef readonly %rule_str, %struct.cipher_order_st** nocapture noundef %head_p, %struct.cipher_order_st** nocapture noundef %tail_p, %struct.ssl_cipher_st** nocapture noundef readonly %ca_list, %struct.cert_st* nocapture noundef writeonly %c) unnamed_addr #0 {
entry:
  %sec_level = getelementptr inbounds %struct.cert_st, %struct.cert_st* %c, i64 0, i32 18
  br label %for.condthread-pre-split

for.condthread-pre-split:                         ; preds = %entry, %if.then43
  %l.0.ph = phi i8* [ %incdec.ptr44, %if.then43 ], [ %rule_str, %entry ]
  %retval1.0.ph = phi i32 [ %retval1.0, %if.then43 ], [ 1, %entry ]
  %.pr = load i8, i8* %l.0.ph, align 1, !tbaa !54
  br label %for.cond

for.cond:                                         ; preds = %for.condthread-pre-split, %if.end369
  %0 = phi i8 [ %.pr, %for.condthread-pre-split ], [ %27, %if.end369 ]
  %l.0 = phi i8* [ %l.0.ph, %for.condthread-pre-split ], [ %l.8, %if.end369 ]
  %retval1.0 = phi i32 [ %retval1.0.ph, %for.condthread-pre-split ], [ %retval1.3, %if.end369 ]
  switch i8 %0, label %for.cond46.preheader [
    i8 0, label %for.end375
    i8 45, label %if.then6
    i8 43, label %if.then10
    i8 33, label %if.then16
    i8 64, label %if.then22
    i8 59, label %if.then43
    i8 58, label %if.then43
    i8 44, label %if.then43
    i8 32, label %if.then43
  ]

if.then6:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %l.0, i64 1
  br label %for.cond46.preheader

if.then10:                                        ; preds = %for.cond
  %incdec.ptr11 = getelementptr inbounds i8, i8* %l.0, i64 1
  br label %for.cond46.preheader

if.then16:                                        ; preds = %for.cond
  %incdec.ptr17 = getelementptr inbounds i8, i8* %l.0, i64 1
  br label %for.cond46.preheader

if.then22:                                        ; preds = %for.cond
  %incdec.ptr23 = getelementptr inbounds i8, i8* %l.0, i64 1
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.cond, %if.then6, %if.then16, %if.then22, %if.then10
  %rule.0693 = phi i32 [ 5, %if.then22 ], [ 2, %if.then16 ], [ 4, %if.then10 ], [ 3, %if.then6 ], [ 1, %for.cond ]
  %cmp86690 = phi i1 [ true, %if.then22 ], [ false, %if.then16 ], [ false, %if.then10 ], [ false, %if.then6 ], [ false, %for.cond ]
  %l.1689 = phi i8* [ %incdec.ptr23, %if.then22 ], [ %incdec.ptr17, %if.then16 ], [ %incdec.ptr11, %if.then10 ], [ %incdec.ptr, %if.then6 ], [ %l.0, %for.cond ]
  br label %for.cond46

if.then43:                                        ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  %incdec.ptr44 = getelementptr inbounds i8, i8* %l.0, i64 1
  br label %for.condthread-pre-split

for.cond46:                                       ; preds = %for.cond46.preheader, %if.end275
  %alg_enc.0 = phi i32 [ %alg_enc.1, %if.end275 ], [ 0, %for.cond46.preheader ]
  %alg_mac.0 = phi i32 [ %alg_mac.1, %if.end275 ], [ 0, %for.cond46.preheader ]
  %algo_strength.0 = phi i32 [ %algo_strength.2, %if.end275 ], [ 0, %for.cond46.preheader ]
  %min_tls.0 = phi i32 [ %min_tls.1, %if.end275 ], [ 0, %for.cond46.preheader ]
  %l.2 = phi i8* [ %incdec.ptr94, %if.end275 ], [ %l.1689, %for.cond46.preheader ]
  %alg_auth.0 = phi i32 [ %alg_auth.1, %if.end275 ], [ 0, %for.cond46.preheader ]
  %alg_mkey.0 = phi i32 [ %alg_mkey.1, %if.end275 ], [ 0, %for.cond46.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond46
  %l.3 = phi i8* [ %l.2, %for.cond46 ], [ %incdec.ptr80, %while.body ]
  %buflen.0 = phi i32 [ 0, %for.cond46 ], [ %inc, %while.body ]
  %ch.0 = load i8, i8* %l.3, align 1, !tbaa !54
  %1 = add i8 %ch.0, -65
  %2 = icmp ult i8 %1, 26
  %3 = add i8 %ch.0, -48
  %4 = icmp ult i8 %3, 10
  %or.cond = or i1 %2, %4
  br i1 %or.cond, label %while.body, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %while.cond
  %ch.0.fr = freeze i8 %ch.0
  %5 = add i8 %ch.0.fr, -97
  %6 = icmp ult i8 %5, 26
  br i1 %6, label %while.body, label %switch.early.test

switch.early.test:                                ; preds = %lor.lhs.false61
  switch i8 %ch.0.fr, label %while.end [
    i8 61, label %while.body
    i8 46, label %while.body
    i8 45, label %while.body
  ]

while.body:                                       ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %lor.lhs.false61, %while.cond
  %incdec.ptr80 = getelementptr inbounds i8, i8* %l.3, i64 1
  %inc = add nuw nsw i32 %buflen.0, 1
  br label %while.cond, !llvm.loop !92

while.end:                                        ; preds = %switch.early.test
  %ch.0.fr.le = freeze i8 %ch.0
  %cmp81 = icmp eq i32 %buflen.0, 0
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %while.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1061, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl_cipher_process_rulestr, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 280, i8* noundef null) #11
  %incdec.ptr84 = getelementptr inbounds i8, i8* %l.3, i64 1
  br i1 %cmp86690, label %if.end310.thread.sink.split, label %while.cond342.preheader

if.end85:                                         ; preds = %while.end
  br i1 %cmp86690, label %if.then281, label %if.end89

if.end89:                                         ; preds = %if.end85
  %cmp91 = icmp eq i8 %ch.0.fr.le, 43
  %incdec.ptr94 = getelementptr inbounds i8, i8* %l.3, i64 1
  %7 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %ca_list, align 8, !tbaa !20
  %tobool.not629 = icmp eq %struct.ssl_cipher_st* %7, null
  br i1 %tobool.not629, label %for.end.thread, label %while.body98.lr.ph

while.body98.lr.ph:                               ; preds = %if.end89
  %conv101 = zext i32 %buflen.0 to i64
  br label %while.body98

while.body98:                                     ; preds = %while.body98.lr.ph, %if.else114
  %indvars.iv = phi i64 [ 0, %while.body98.lr.ph ], [ %indvars.iv.next, %if.else114 ]
  %8 = phi %struct.ssl_cipher_st* [ %7, %while.body98.lr.ph ], [ %11, %if.else114 ]
  %name = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 1
  %9 = load i8*, i8** %name, align 8, !tbaa !93
  %call = tail call i32 @strncmp(i8* noundef %l.2, i8* noundef %9, i64 noundef %conv101) #14
  %cmp102 = icmp eq i32 %call, 0
  br i1 %cmp102, label %land.lhs.true104, label %if.else114

land.lhs.true104:                                 ; preds = %while.body98
  %arrayidx109 = getelementptr inbounds i8, i8* %9, i64 %conv101
  %10 = load i8, i8* %arrayidx109, align 1, !tbaa !54
  %cmp111 = icmp eq i8 %10, 0
  br i1 %cmp111, label %if.end120, label %if.else114

if.else114:                                       ; preds = %land.lhs.true104, %while.body98
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %ca_list, i64 %indvars.iv.next
  %11 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %arrayidx, align 8, !tbaa !20
  %tobool.not = icmp eq %struct.ssl_cipher_st* %11, null
  br i1 %tobool.not, label %for.end, label %while.body98, !llvm.loop !94

if.end120:                                        ; preds = %land.lhs.true104
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 4
  %12 = load i32, i32* %algorithm_mkey, align 4, !tbaa !77
  %tobool123.not = icmp eq i32 %12, 0
  br i1 %tobool123.not, label %if.end138, label %if.then124

if.then124:                                       ; preds = %if.end120
  %tobool125.not = icmp eq i32 %alg_mkey.0, 0
  br i1 %tobool125.not, label %if.end138, label %if.then126

if.then126:                                       ; preds = %if.then124
  %and = and i32 %12, %alg_mkey.0
  %tobool130.not = icmp eq i32 %and, 0
  br i1 %tobool130.not, label %for.end.loopexit602, label %if.end138

if.end138:                                        ; preds = %if.then124, %if.then126, %if.end120
  %alg_mkey.1 = phi i32 [ %and, %if.then126 ], [ %alg_mkey.0, %if.end120 ], [ %12, %if.then124 ]
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 5
  %13 = load i32, i32* %algorithm_auth, align 8, !tbaa !78
  %tobool141.not = icmp eq i32 %13, 0
  br i1 %tobool141.not, label %if.end157, label %if.then142

if.then142:                                       ; preds = %if.end138
  %tobool143.not = icmp eq i32 %alg_auth.0, 0
  br i1 %tobool143.not, label %if.end157, label %if.then144

if.then144:                                       ; preds = %if.then142
  %and148 = and i32 %13, %alg_auth.0
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %for.end.loopexit602, label %if.end157

if.end157:                                        ; preds = %if.then142, %if.then144, %if.end138
  %alg_auth.1 = phi i32 [ %and148, %if.then144 ], [ %alg_auth.0, %if.end138 ], [ %13, %if.then142 ]
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 6
  %14 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %tobool160.not = icmp eq i32 %14, 0
  br i1 %tobool160.not, label %if.end176, label %if.then161

if.then161:                                       ; preds = %if.end157
  %tobool162.not = icmp eq i32 %alg_enc.0, 0
  br i1 %tobool162.not, label %if.end176, label %if.then163

if.then163:                                       ; preds = %if.then161
  %and167 = and i32 %14, %alg_enc.0
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %for.end.loopexit602, label %if.end176

if.end176:                                        ; preds = %if.then161, %if.then163, %if.end157
  %alg_enc.1 = phi i32 [ %and167, %if.then163 ], [ %alg_enc.0, %if.end157 ], [ %14, %if.then161 ]
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 7
  %15 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %tobool179.not = icmp eq i32 %15, 0
  br i1 %tobool179.not, label %if.end195, label %if.then180

if.then180:                                       ; preds = %if.end176
  %tobool181.not = icmp eq i32 %alg_mac.0, 0
  br i1 %tobool181.not, label %if.end195, label %if.then182

if.then182:                                       ; preds = %if.then180
  %and186 = and i32 %15, %alg_mac.0
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %for.end.loopexit602, label %if.end195

if.end195:                                        ; preds = %if.then180, %if.then182, %if.end176
  %alg_mac.1 = phi i32 [ %and186, %if.then182 ], [ %alg_mac.0, %if.end176 ], [ %15, %if.then180 ]
  %algo_strength198 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 12
  %16 = load i32, i32* %algo_strength198, align 4, !tbaa !86
  %and199 = and i32 %16, 31
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.end220, label %if.then201

if.then201:                                       ; preds = %if.end195
  %and202 = and i32 %algo_strength.0, 31
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end220, label %if.then204

if.then204:                                       ; preds = %if.then201
  %or = or i32 %16, -32
  %and209 = and i32 %or, %algo_strength.0
  %and210 = and i32 %and209, 31
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %for.end.loopexit602, label %if.end220

if.end220:                                        ; preds = %if.then201, %if.then204, %if.end195
  %algo_strength.1 = phi i32 [ %and209, %if.then204 ], [ %algo_strength.0, %if.end195 ], [ %and199, %if.then201 ]
  %and224 = and i32 %16, 32
  %tobool225.not = icmp eq i32 %and224, 0
  br i1 %tobool225.not, label %if.end247, label %if.then226

if.then226:                                       ; preds = %if.end220
  %and227 = and i32 %algo_strength.1, 32
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %if.else240, label %if.then229

if.then229:                                       ; preds = %if.then226
  %or234 = or i32 %16, -33
  %and235 = and i32 %algo_strength.1, %or234
  %and236 = and i32 %and235, 32
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %for.end.loopexit602, label %if.end247

if.else240:                                       ; preds = %if.then226
  %or245 = or i32 %algo_strength.1, %and224
  br label %if.end247

if.end247:                                        ; preds = %if.else240, %if.then229, %if.end220
  %algo_strength.2 = phi i32 [ %and235, %if.then229 ], [ %or245, %if.else240 ], [ %algo_strength.1, %if.end220 ]
  %valid = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 0
  %17 = load i32, i32* %valid, align 8, !tbaa !76
  %tobool250.not = icmp eq i32 %17, 0
  br i1 %tobool250.not, label %if.else254, label %if.then251

if.then251:                                       ; preds = %if.end247
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 3
  %18 = load i32, i32* %id, align 8, !tbaa !85
  br label %if.end275

if.else254:                                       ; preds = %if.end247
  %min_tls257 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %8, i64 0, i32 8
  %19 = load i32, i32* %min_tls257, align 4, !tbaa !55
  %tobool258.not = icmp eq i32 %19, 0
  br i1 %tobool258.not, label %if.end275, label %if.then259

if.then259:                                       ; preds = %if.else254
  %cmp260.not = icmp eq i32 %min_tls.0, 0
  %cmp266.not = icmp eq i32 %min_tls.0, %19
  %or.cond538 = select i1 %cmp260.not, i1 true, i1 %cmp266.not
  br i1 %or.cond538, label %if.end275, label %for.end.loopexit602

if.end275:                                        ; preds = %if.then259, %if.else254, %if.then251
  %min_tls.1 = phi i32 [ %min_tls.0, %if.then251 ], [ %min_tls.0, %if.else254 ], [ %19, %if.then259 ]
  %cipher_id.2 = phi i32 [ %18, %if.then251 ], [ 0, %if.else254 ], [ 0, %if.then259 ]
  br i1 %cmp91, label %for.cond46, label %if.then340

for.end.thread:                                   ; preds = %if.end89
  %l.4.le637 = select i1 %cmp91, i8* %incdec.ptr94, i8* %l.3
  br label %while.cond342.preheader

for.end.loopexit602:                              ; preds = %if.then126, %if.then144, %if.then163, %if.then182, %if.then204, %if.then229, %if.then259
  %l.4.le645 = select i1 %cmp91, i8* %incdec.ptr94, i8* %l.3
  br i1 %cmp86690, label %if.then281, label %while.cond342.preheader

for.end:                                          ; preds = %if.else114
  %l.4.le = select i1 %cmp91, i8* %incdec.ptr94, i8* %l.3
  br i1 %cmp86690, label %if.then281, label %while.cond342.preheader

while.cond342.preheader:                          ; preds = %for.end.loopexit602, %if.then83, %for.end.thread, %for.end
  %retval1.1699 = phi i32 [ %retval1.0, %for.end.thread ], [ %retval1.0, %for.end ], [ 0, %if.then83 ], [ %retval1.0, %for.end.loopexit602 ]
  %l.5698 = phi i8* [ %l.4.le637, %for.end.thread ], [ %l.4.le, %for.end ], [ %incdec.ptr84, %if.then83 ], [ %l.4.le645, %for.end.loopexit602 ]
  br label %while.cond342

if.then281:                                       ; preds = %if.end85, %for.end.loopexit602, %for.end
  %l.2673 = phi i8* [ %l.2, %for.end ], [ %l.2, %for.end.loopexit602 ], [ %l.1689, %if.end85 ]
  %l.5550 = phi i8* [ %l.4.le, %for.end ], [ %l.4.le645, %for.end.loopexit602 ], [ %l.3, %if.end85 ]
  switch i32 %buflen.0, label %if.end310.thread.sink.split [
    i32 8, label %land.lhs.true284
    i32 10, label %land.lhs.true293
  ]

land.lhs.true284:                                 ; preds = %if.then281
  %call285 = tail call i32 @strncmp(i8* noundef %l.2673, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i64 0, i64 0), i64 noundef 8) #14
  %cmp286 = icmp eq i32 %call285, 0
  br i1 %cmp286, label %if.end310, label %if.end310.thread.sink.split

land.lhs.true293:                                 ; preds = %if.then281
  %call294 = tail call i32 @strncmp(i8* noundef %l.2673, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i64 0, i64 0), i64 noundef 9) #14
  %cmp295 = icmp eq i32 %call294, 0
  br i1 %cmp295, label %if.then297, label %if.end310.thread.sink.split

if.then297:                                       ; preds = %land.lhs.true293
  %arrayidx298 = getelementptr inbounds i8, i8* %l.2673, i64 9
  %20 = load i8, i8* %arrayidx298, align 1, !tbaa !54
  %21 = add i8 %20, -54
  %22 = icmp ult i8 %21, -6
  br i1 %22, label %if.end310.thread.sink.split, label %if.end310.thread556

if.end310.thread556:                              ; preds = %if.then297
  %conv299600 = zext i8 %20 to i32
  %sub = add nsw i32 %conv299600, -48
  store i32 %sub, i32* %sec_level, align 8, !tbaa !95
  br label %23

if.end310:                                        ; preds = %land.lhs.true284
  %call289 = tail call fastcc i32 @ssl_cipher_strength_sort(%struct.cipher_order_st** noundef %head_p, %struct.cipher_order_st** noundef %tail_p) #12
  %cmp311 = icmp eq i32 %call289, 0
  br i1 %cmp311, label %if.end310.thread, label %23

if.end310.thread.sink.split:                      ; preds = %land.lhs.true293, %if.then281, %land.lhs.true284, %if.then83, %if.then297
  %.sink = phi i32 [ 1219, %if.then297 ], [ 1225, %if.then83 ], [ 1225, %land.lhs.true284 ], [ 1225, %if.then281 ], [ 1225, %land.lhs.true293 ]
  %l.5550705.ph = phi i8* [ %l.5550, %if.then297 ], [ %incdec.ptr84, %if.then83 ], [ %l.5550, %land.lhs.true284 ], [ %l.5550, %if.then281 ], [ %l.5550, %land.lhs.true293 ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ssl_cipher_process_rulestr, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 280, i8* noundef null) #11
  br label %if.end310.thread

if.end310.thread:                                 ; preds = %if.end310.thread.sink.split, %if.end310
  %l.5550705 = phi i8* [ %l.5550, %if.end310 ], [ %l.5550705.ph, %if.end310.thread.sink.split ]
  br label %23

23:                                               ; preds = %if.end310.thread556, %if.end310, %if.end310.thread
  %l.5550704 = phi i8* [ %l.5550705, %if.end310.thread ], [ %l.5550, %if.end310 ], [ %l.5550, %if.end310.thread556 ]
  %24 = phi i32 [ 0, %if.end310.thread ], [ %retval1.0, %if.end310 ], [ %retval1.0, %if.end310.thread556 ]
  br label %while.cond315

while.cond315:                                    ; preds = %while.body335.critedge, %23
  %l.6 = phi i8* [ %l.5550704, %23 ], [ %incdec.ptr336, %while.body335.critedge ]
  %25 = load i8, i8* %l.6, align 1, !tbaa !54
  switch i8 %25, label %while.body335.critedge [
    i8 0, label %if.end369
    i8 58, label %if.end369
    i8 32, label %if.end369
    i8 59, label %if.end369
    i8 44, label %if.end369
  ]

while.body335.critedge:                           ; preds = %while.cond315
  %incdec.ptr336 = getelementptr inbounds i8, i8* %l.6, i64 1
  br label %while.cond315, !llvm.loop !96

if.then340:                                       ; preds = %if.end275
  tail call fastcc void @ssl_cipher_apply_rule(i32 noundef %cipher_id.2, i32 noundef %alg_mkey.1, i32 noundef %alg_auth.1, i32 noundef %alg_enc.1, i32 noundef %alg_mac.1, i32 noundef %min_tls.1, i32 noundef %algo_strength.2, i32 noundef %rule.0693, i32 noundef -1, %struct.cipher_order_st** noundef %head_p, %struct.cipher_order_st** noundef %tail_p) #12
  %.pr599 = load i8, i8* %l.3, align 1, !tbaa !54
  br label %if.end369

while.cond342:                                    ; preds = %while.cond342.preheader, %while.body365.critedge
  %l.7 = phi i8* [ %incdec.ptr366, %while.body365.critedge ], [ %l.5698, %while.cond342.preheader ]
  %26 = load i8, i8* %l.7, align 1, !tbaa !54
  switch i8 %26, label %while.body365.critedge [
    i8 0, label %if.end369
    i8 58, label %if.end369
    i8 32, label %if.end369
    i8 59, label %if.end369
    i8 44, label %if.end369
  ]

while.body365.critedge:                           ; preds = %while.cond342
  %incdec.ptr366 = getelementptr inbounds i8, i8* %l.7, i64 1
  br label %while.cond342, !llvm.loop !97

if.end369:                                        ; preds = %while.cond342, %while.cond342, %while.cond342, %while.cond342, %while.cond342, %while.cond315, %while.cond315, %while.cond315, %while.cond315, %while.cond315, %if.then340
  %27 = phi i8 [ %.pr599, %if.then340 ], [ %25, %while.cond315 ], [ %25, %while.cond315 ], [ %25, %while.cond315 ], [ %25, %while.cond315 ], [ %25, %while.cond315 ], [ %26, %while.cond342 ], [ %26, %while.cond342 ], [ %26, %while.cond342 ], [ %26, %while.cond342 ], [ %26, %while.cond342 ]
  %l.8 = phi i8* [ %l.3, %if.then340 ], [ %l.6, %while.cond315 ], [ %l.6, %while.cond315 ], [ %l.6, %while.cond315 ], [ %l.6, %while.cond315 ], [ %l.6, %while.cond315 ], [ %l.7, %while.cond342 ], [ %l.7, %while.cond342 ], [ %l.7, %while.cond342 ], [ %l.7, %while.cond342 ], [ %l.7, %while.cond342 ]
  %retval1.3 = phi i32 [ %retval1.0, %if.then340 ], [ %24, %while.cond315 ], [ %24, %while.cond315 ], [ %24, %while.cond315 ], [ %24, %while.cond315 ], [ %24, %while.cond315 ], [ %retval1.1699, %while.cond342 ], [ %retval1.1699, %while.cond342 ], [ %retval1.1699, %while.cond342 ], [ %retval1.1699, %while.cond342 ], [ %retval1.1699, %while.cond342 ]
  %cmp371 = icmp eq i8 %27, 0
  br i1 %cmp371, label %for.end375, label %for.cond

for.end375:                                       ; preds = %for.cond, %if.end369
  %retval1.4 = phi i32 [ %retval1.0, %for.cond ], [ %retval1.3, %if.end369 ]
  ret i32 %retval1.4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @OSSL_default_cipher_list() local_unnamed_addr #5 {
entry:
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.62, i64 0, i64 0)
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_delete(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @update_cipher_list_by_id(%struct.stack_st_SSL_CIPHER** nocapture noundef %cipher_list_by_id, %struct.stack_st_SSL_CIPHER* noundef %cipherstack) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %cipherstack) #12
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call) #11
  %cmp = icmp eq %struct.stack_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_SSL_CIPHER*
  %1 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !20
  %call2 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %1) #12
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call2) #11
  %2 = bitcast %struct.stack_st_SSL_CIPHER** %cipher_list_by_id to %struct.stack_st**
  store %struct.stack_st* %call1, %struct.stack_st** %2, align 8, !tbaa !20
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef nonnull %0) #12
  %call5 = tail call i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef %call3, i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ssl_cipher_st**, %struct.ssl_cipher_st**)* @ssl_cipher_ptr_id_cmp to i32 (i8*, i8*)*)) #11
  %3 = load %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER** %cipher_list_by_id, align 8, !tbaa !20
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %3) #12
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_CIPHER_description(%struct.ssl_cipher_st* nocapture noundef readonly %cipher, i8* noundef %buf, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 128, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1687) #11
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.then
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1688, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.SSL_CIPHER_description, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp4 = icmp slt i32 %len, 128
  br i1 %cmp4, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.else, %if.then
  %len.addr.0 = phi i32 [ 128, %if.then ], [ %len, %if.else ]
  %buf.addr.0 = phi i8* [ %call, %if.then ], [ %buf, %if.else ]
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %cipher, i64 0, i32 4
  %0 = load i32, i32* %algorithm_mkey, align 4, !tbaa !77
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %cipher, i64 0, i32 5
  %1 = load i32, i32* %algorithm_auth, align 8, !tbaa !78
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %cipher, i64 0, i32 6
  %2 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %cipher, i64 0, i32 7
  %3 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %min_tls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %cipher, i64 0, i32 8
  %4 = load i32, i32* %min_tls, align 4, !tbaa !55
  %call9 = tail call i8* @ssl_protocol_to_string(i32 noundef %4) #11
  switch i32 %0, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb10
    i32 4, label %sw.bb11
    i32 8, label %sw.bb12
    i32 64, label %sw.bb13
    i32 128, label %sw.bb14
    i32 256, label %sw.bb15
    i32 32, label %sw.bb16
    i32 16, label %sw.bb17
    i32 512, label %sw.bb18
    i32 0, label %sw.bb19
  ]

sw.bb10:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10
  %kx.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), %sw.default ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), %sw.bb19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), %sw.bb18 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), %sw.bb16 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %if.end8 ]
  switch i32 %1, label %sw.default29 [
    i32 1, label %sw.epilog30
    i32 2, label %sw.bb21
    i32 4, label %sw.bb22
    i32 8, label %sw.bb23
    i32 16, label %sw.bb24
    i32 64, label %sw.bb25
    i32 32, label %sw.bb26
    i32 160, label %sw.bb27
    i32 0, label %sw.bb28
  ]

sw.bb21:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb22:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb23:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb24:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb25:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb26:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb27:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.bb28:                                          ; preds = %sw.epilog
  br label %sw.epilog30

sw.default29:                                     ; preds = %sw.epilog
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.epilog, %sw.default29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21
  %au.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), %sw.default29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), %sw.bb28 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), %sw.bb27 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), %sw.bb26 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), %sw.bb25 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), %sw.bb24 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %sw.bb23 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %sw.bb22 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), %sw.bb21 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %sw.epilog ]
  switch i32 %2, label %sw.default54 [
    i32 1, label %sw.epilog55
    i32 2, label %sw.bb32
    i32 4, label %sw.bb33
    i32 8, label %sw.bb34
    i32 16, label %sw.bb35
    i32 32, label %sw.bb36
    i32 64, label %sw.bb37
    i32 128, label %sw.bb38
    i32 4096, label %sw.bb39
    i32 8192, label %sw.bb40
    i32 16384, label %sw.bb41
    i32 32768, label %sw.bb42
    i32 65536, label %sw.bb43
    i32 131072, label %sw.bb44
    i32 256, label %sw.bb45
    i32 512, label %sw.bb46
    i32 1048576, label %sw.bb47
    i32 2097152, label %sw.bb48
    i32 2048, label %sw.bb49
    i32 1024, label %sw.bb50
    i32 262144, label %sw.bb50
    i32 4194304, label %sw.bb51
    i32 8388608, label %sw.bb52
    i32 524288, label %sw.bb53
  ]

sw.bb32:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb33:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb34:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb35:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb36:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb37:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb38:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb39:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb40:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb41:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb42:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb43:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb44:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb45:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb46:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb47:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb48:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb49:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb50:                                          ; preds = %sw.epilog30, %sw.epilog30
  br label %sw.epilog55

sw.bb51:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb52:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.bb53:                                          ; preds = %sw.epilog30
  br label %sw.epilog55

sw.default54:                                     ; preds = %sw.epilog30
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %sw.epilog30, %sw.default54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32
  %enc.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), %sw.default54 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), %sw.bb53 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), %sw.bb52 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), %sw.bb51 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), %sw.bb50 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), %sw.bb49 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), %sw.bb48 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), %sw.bb47 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), %sw.bb46 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), %sw.bb45 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), %sw.bb44 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), %sw.bb43 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), %sw.bb42 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), %sw.bb41 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), %sw.bb40 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), %sw.bb39 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), %sw.bb38 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), %sw.bb37 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %sw.bb36 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), %sw.bb35 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), %sw.bb34 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), %sw.bb33 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), %sw.bb32 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), %sw.epilog30 ]
  switch i32 %3, label %sw.default64 [
    i32 1, label %sw.epilog65
    i32 2, label %sw.bb57
    i32 16, label %sw.bb58
    i32 32, label %sw.bb59
    i32 64, label %sw.bb60
    i32 8, label %sw.bb61
    i32 256, label %sw.bb61
    i32 4, label %sw.bb62
    i32 128, label %sw.bb63
    i32 512, label %sw.bb63
  ]

sw.bb57:                                          ; preds = %sw.epilog55
  br label %sw.epilog65

sw.bb58:                                          ; preds = %sw.epilog55
  br label %sw.epilog65

sw.bb59:                                          ; preds = %sw.epilog55
  br label %sw.epilog65

sw.bb60:                                          ; preds = %sw.epilog55
  br label %sw.epilog65

sw.bb61:                                          ; preds = %sw.epilog55, %sw.epilog55
  br label %sw.epilog65

sw.bb62:                                          ; preds = %sw.epilog55
  br label %sw.epilog65

sw.bb63:                                          ; preds = %sw.epilog55, %sw.epilog55
  br label %sw.epilog65

sw.default64:                                     ; preds = %sw.epilog55
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.epilog55, %sw.default64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57
  %mac.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), %sw.default64 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), %sw.bb63 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), %sw.bb62 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), %sw.bb61 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), %sw.bb60 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), %sw.bb59 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), %sw.bb58 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), %sw.bb57 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), %sw.epilog55 ]
  %conv6694 = zext i32 %len.addr.0 to i64
  %name = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %cipher, i64 0, i32 1
  %5 = load i8*, i8** %name, align 8, !tbaa !93
  %call67 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %buf.addr.0, i64 noundef %conv6694, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* noundef %5, i8* noundef %call9, i8* noundef %kx.0, i8* noundef %au.0, i8* noundef %enc.0, i8* noundef nonnull %mac.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog65, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ %buf.addr.0, %sw.epilog65 ], [ null, %if.else ]
  ret i8* %retval.0
}

declare i8* @ssl_protocol_to_string(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_CIPHER_get_version(%struct.ssl_cipher_st* noundef readonly %c) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_cipher_st* %c, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %min_tls = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 8
  %0 = load i32, i32* %min_tls, align 4, !tbaa !55
  %cmp1 = icmp eq i32 %0, 769
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call i8* @ssl_protocol_to_string(i32 noundef %0) #11
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i8* [ %call, %if.end3 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), %entry ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), %if.end ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef readonly %c) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ssl_cipher_st* %c, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !93
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_CIPHER_standard_name(%struct.ssl_cipher_st* noundef readonly %c) local_unnamed_addr #6 {
entry:
  %cmp.not = icmp eq %struct.ssl_cipher_st* %c, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %stdname = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 2
  %0 = load i8*, i8** %stdname, align 8, !tbaa !98
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_cipher_name(i8* noundef %stdname) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %stdname, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ssl_cipher_st* @ssl3_get_cipher_by_std_name(i8* noundef nonnull %stdname) #11
  %call1 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call1, %if.end ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

declare %struct.ssl_cipher_st* @ssl3_get_cipher_by_std_name(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SSL_CIPHER_get_bits(%struct.ssl_cipher_st* noundef readonly %c, i32* noundef writeonly %alg_bits) local_unnamed_addr #10 {
entry:
  %cmp.not = icmp eq %struct.ssl_cipher_st* %c, null
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i32* %alg_bits, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %alg_bits3 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 15
  %0 = load i32, i32* %alg_bits3, align 8, !tbaa !99
  store i32 %0, i32* %alg_bits, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %strength_bits = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 14
  %1 = load i32, i32* %strength_bits, align 4, !tbaa !84
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %ret.0 = phi i32 [ %1, %if.end ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CIPHER_get_id(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #6 {
entry:
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 3
  %0 = load i32, i32* %id, align 8, !tbaa !85
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define zeroext i16 @SSL_CIPHER_get_protocol_id(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #6 {
entry:
  %id = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 3
  %0 = load i32, i32* %id, align 8, !tbaa !85
  %conv = trunc i32 %0 to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_comp_st* @ssl3_comp_find(%struct.stack_st_SSL_COMP* noundef %sk, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 0
  %cmp1 = icmp eq %struct.stack_st_SSL_COMP* %sk, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %sk) #12
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #11
  %cmp320 = icmp sgt i32 %call2, 0
  br i1 %cmp320, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !100

for.body:                                         ; preds = %if.end, %for.cond
  %i.021 = phi i32 [ %inc, %for.cond ], [ 0, %if.end ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.021) #11
  %id = bitcast i8* %call5 to i32*
  %0 = load i32, i32* %id, align 8, !tbaa !37
  %cmp6 = icmp eq i32 %0, %n
  %inc = add nuw nsw i32 %i.021, 1
  br i1 %cmp6, label %if.then7, label %for.cond

if.then7:                                         ; preds = %for.body
  %1 = bitcast i8* %call5 to %struct.ssl_comp_st*
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %if.then7
  %retval.0 = phi %struct.ssl_comp_st* [ %1, %if.then7 ], [ null, %entry ], [ null, %if.end ], [ null, %for.cond ]
  ret %struct.ssl_comp_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_SSL_COMP* @SSL_COMP_get_compression_methods() local_unnamed_addr #0 {
entry:
  tail call fastcc void @load_builtin_compressions() #12
  %0 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  ret %struct.stack_st_SSL_COMP* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define %struct.stack_st_SSL_COMP* @SSL_COMP_set0_compression_methods(%struct.stack_st_SSL_COMP* noundef %meths) local_unnamed_addr #10 {
entry:
  %0 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  store %struct.stack_st_SSL_COMP* %meths, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  ret %struct.stack_st_SSL_COMP* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_comp_free_compression_methods_int() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  store %struct.stack_st_SSL_COMP* null, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %call = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %0) #12
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.ssl_comp_st*)* @cmeth_free to void (i8*)*)) #11
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @cmeth_free(%struct.ssl_comp_st* noundef %cm) #0 {
entry:
  %0 = bitcast %struct.ssl_comp_st* %cm to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 2001) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_COMP_add_compression_method(i32 noundef %id, %struct.comp_method_st* noundef %cm) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.comp_method_st* %cm, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @COMP_get_type(%struct.comp_method_st* noundef nonnull %cm) #11
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %0 = add i32 %id, -256
  %1 = icmp ult i32 %0, -63
  br i1 %1, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 2031) #11
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.end6
  %id11 = bitcast i8* %call7 to i32*
  store i32 %id, i32* %id11, align 8, !tbaa !37
  %method = getelementptr inbounds i8, i8* %call7, i64 16
  %2 = bitcast i8* %method to %struct.comp_method_st**
  store %struct.comp_method_st* %cm, %struct.comp_method_st** %2, align 8, !tbaa !101
  tail call fastcc void @load_builtin_compressions() #12
  %3 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %tobool.not = icmp eq %struct.stack_st_SSL_COMP* %3, null
  br i1 %tobool.not, label %cleanup.sink.split.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %3) #12
  %call15 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call13, i8* noundef nonnull %call7) #11
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %cleanup.sink.split.sink.split, label %if.end18

if.end18:                                         ; preds = %land.lhs.true
  %.pr = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %cmp19 = icmp eq %struct.stack_st_SSL_COMP* %.pr, null
  br i1 %cmp19, label %cleanup.sink.split.sink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end18
  %call21 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef nonnull %.pr) #12
  %call23 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call21, i8* noundef nonnull %call7) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.sink.split.sink.split, label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %if.end18, %lor.lhs.false20, %if.end10, %land.lhs.true
  %.sink42 = phi i32 [ 2041, %land.lhs.true ], [ 2046, %if.end10 ], [ 2046, %lor.lhs.false20 ], [ 2046, %if.end18 ]
  %.sink41.ph = phi i32 [ 2042, %land.lhs.true ], [ 2047, %if.end10 ], [ 2047, %lor.lhs.false20 ], [ 2047, %if.end18 ]
  %.sink.ph = phi i32 [ 309, %land.lhs.true ], [ 786688, %if.end10 ], [ 786688, %lor.lhs.false20 ], [ 786688, %if.end18 ]
  tail call void @CRYPTO_free(i8* noundef nonnull %call7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef %.sink42) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end6, %if.end
  %.sink41 = phi i32 [ 2027, %if.end ], [ 2033, %if.end6 ], [ %.sink41.ph, %cleanup.sink.split.sink.split ]
  %.sink = phi i32 [ 307, %if.end ], [ 786688, %if.end6 ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef %.sink41, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.SSL_COMP_add_compression_method, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %.sink, i8* noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false20, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %lor.lhs.false20 ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare i32 @COMP_get_type(%struct.comp_method_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @SSL_COMP_get_name(%struct.comp_method_st* noundef %comp) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.comp_method_st* %comp, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @COMP_get_name(%struct.comp_method_st* noundef nonnull %comp) #11
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %entry ]
  ret i8* %cond
}

declare i8* @COMP_get_name(%struct.comp_method_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_COMP_get0_name(%struct.ssl_comp_st* nocapture noundef readonly %comp) local_unnamed_addr #6 {
entry:
  %name = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %comp, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !102
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_COMP_get_id(%struct.ssl_comp_st* nocapture noundef readonly %comp) local_unnamed_addr #6 {
entry:
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %comp, i64 0, i32 0
  %0 = load i32, i32* %id, align 8, !tbaa !37
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_cipher_st* @ssl_get_cipher_by_char(%struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %ptr, i32 noundef %all) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !103
  %get_cipher_by_char = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 19
  %1 = load %struct.ssl_cipher_st* (i8*)*, %struct.ssl_cipher_st* (i8*)** %get_cipher_by_char, align 8, !tbaa !104
  %call = tail call %struct.ssl_cipher_st* %1(i8* noundef %ptr) #11
  %cmp = icmp eq %struct.ssl_cipher_st* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp eq i32 %all, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %valid = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %call, i64 0, i32 0
  %2 = load i32, i32* %valid, align 8, !tbaa !76
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.end
  %retval.0 = phi %struct.ssl_cipher_st* [ %call, %if.end ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.ssl_cipher_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ssl_cipher_st* @SSL_CIPHER_find(%struct.ssl_st* nocapture noundef readonly %ssl, i8* noundef %ptr) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %ssl, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !103
  %get_cipher_by_char = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 19
  %1 = load %struct.ssl_cipher_st* (i8*)*, %struct.ssl_cipher_st* (i8*)** %get_cipher_by_char, align 8, !tbaa !104
  %call = tail call %struct.ssl_cipher_st* %1(i8* noundef %ptr) #11
  ret %struct.ssl_cipher_st* %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @SSL_CIPHER_get_cipher_nid(%struct.ssl_cipher_st* noundef readonly %c) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.ssl_cipher_st* %c, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 6
  %0 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %call = tail call fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* noundef getelementptr inbounds ([24 x %struct.ssl_cipher_table], [24 x %struct.ssl_cipher_table]* @ssl_cipher_table_cipher, i64 0, i64 0), i64 noundef 24, i32 noundef %0) #12
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %idxprom = sext i32 %call to i64
  %nid = getelementptr inbounds [24 x %struct.ssl_cipher_table], [24 x %struct.ssl_cipher_table]* @ssl_cipher_table_cipher, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %nid, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @SSL_CIPHER_get_digest_nid(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #4 {
entry:
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 7
  %0 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %call = tail call fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* noundef getelementptr inbounds ([14 x %struct.ssl_cipher_table], [14 x %struct.ssl_cipher_table]* @ssl_cipher_table_mac, i64 0, i64 0), i64 noundef 14, i32 noundef %0) #12
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %call to i64
  %nid = getelementptr inbounds [14 x %struct.ssl_cipher_table], [14 x %struct.ssl_cipher_table]* @ssl_cipher_table_mac, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %nid, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @SSL_CIPHER_get_kx_nid(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #4 {
entry:
  %algorithm_mkey = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 4
  %0 = load i32, i32* %algorithm_mkey, align 4, !tbaa !77
  %call = tail call fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* noundef getelementptr inbounds ([11 x %struct.ssl_cipher_table], [11 x %struct.ssl_cipher_table]* @ssl_cipher_table_kx, i64 0, i64 0), i64 noundef 11, i32 noundef %0) #12
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %call to i64
  %nid = getelementptr inbounds [11 x %struct.ssl_cipher_table], [11 x %struct.ssl_cipher_table]* @ssl_cipher_table_kx, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %nid, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @SSL_CIPHER_get_auth_nid(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #4 {
entry:
  %algorithm_auth = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 5
  %0 = load i32, i32* %algorithm_auth, align 8, !tbaa !78
  %call = tail call fastcc i32 @ssl_cipher_info_find(%struct.ssl_cipher_table* noundef getelementptr inbounds ([9 x %struct.ssl_cipher_table], [9 x %struct.ssl_cipher_table]* @ssl_cipher_table_auth, i64 0, i64 0), i64 noundef 9, i32 noundef %0) #12
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %call to i64
  %nid = getelementptr inbounds [9 x %struct.ssl_cipher_table], [9 x %struct.ssl_cipher_table]* @ssl_cipher_table_auth, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %nid, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_md_st* @SSL_CIPHER_get_handshake_digest(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #0 {
entry:
  %algorithm2 = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 13
  %0 = load i32, i32* %algorithm2, align 8, !tbaa !63
  %and = and i32 %0, 255
  %cmp1 = icmp ugt i32 %and, 13
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %and to i64
  %nid = getelementptr inbounds [14 x %struct.ssl_cipher_table], [14 x %struct.ssl_cipher_table]* @ssl_cipher_table_mac, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %nid, align 4, !tbaa !16
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #11
  %call2 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.evp_md_st* [ %call2, %if.end ], [ null, %entry ]
  ret %struct.evp_md_st* %retval.0
}

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @SSL_CIPHER_is_aead(%struct.ssl_cipher_st* nocapture noundef readonly %c) local_unnamed_addr #6 {
entry:
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 7
  %0 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %and = lshr i32 %0, 6
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cipher_get_overhead(%struct.ssl_cipher_st* noundef %c, i64* nocapture noundef writeonly %mac_overhead, i64* nocapture noundef writeonly %int_overhead, i64* nocapture noundef writeonly %blocksize, i64* nocapture noundef writeonly %ext_overhead) local_unnamed_addr #0 {
entry:
  %algorithm_enc = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 6
  %0 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %1 = and i32 %0, 3207168
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.else5, label %if.end52

if.else5:                                         ; preds = %entry
  %3 = and i32 %0, 720896
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.else15, label %if.end52

if.else15:                                        ; preds = %if.else5
  %algorithm_mac = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %c, i64 0, i32 7
  %5 = load i32, i32* %algorithm_mac, align 8, !tbaa !39
  %and16 = and i32 %5, 64
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else19, label %cleanup53

if.else19:                                        ; preds = %if.else15
  %call = tail call i32 @SSL_CIPHER_get_digest_nid(%struct.ssl_cipher_st* noundef nonnull %c) #12
  %call20 = tail call i8* @OBJ_nid2sn(i32 noundef %call) #11
  %call21 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call20) #11
  %cmp = icmp eq %struct.evp_md_st* %call21, null
  br i1 %cmp, label %cleanup53, label %if.end

if.end:                                           ; preds = %if.else19
  %call23 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %call21) #11
  %conv = sext i32 %call23 to i64
  %6 = load i32, i32* %algorithm_enc, align 4, !tbaa !30
  %cmp25.not = icmp eq i32 %6, 32
  br i1 %cmp25.not, label %if.end52, label %if.then27

if.then27:                                        ; preds = %if.end
  %call28 = tail call i32 @SSL_CIPHER_get_cipher_nid(%struct.ssl_cipher_st* noundef nonnull %c) #12
  %call29 = tail call i8* @OBJ_nid2sn(i32 noundef %call28) #11
  %call30 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %call29) #11
  %cmp31 = icmp eq %struct.evp_cipher_st* %call30, null
  br i1 %cmp31, label %cleanup53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then27
  %call33 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %call30) #11
  %cmp34.not = icmp eq i32 %call33, 2
  br i1 %cmp34.not, label %cleanup, label %cleanup53

cleanup:                                          ; preds = %lor.lhs.false
  %call38 = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef nonnull %call30) #11
  %conv39 = sext i32 %call38 to i64
  %call40 = tail call i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef nonnull %call30) #11
  %conv41 = sext i32 %call40 to i64
  br label %if.end52

if.end52:                                         ; preds = %if.end, %cleanup, %if.else5, %entry
  %out.3 = phi i64 [ 24, %entry ], [ 16, %if.else5 ], [ 0, %if.end ], [ %conv39, %cleanup ]
  %blk.3 = phi i64 [ 0, %entry ], [ 0, %if.else5 ], [ 0, %if.end ], [ %conv41, %cleanup ]
  %in.3 = phi i64 [ 0, %entry ], [ 0, %if.else5 ], [ 0, %if.end ], [ 1, %cleanup ]
  %mac.1 = phi i64 [ 0, %entry ], [ 0, %if.else5 ], [ %conv, %if.end ], [ %conv, %cleanup ]
  store i64 %mac.1, i64* %mac_overhead, align 8, !tbaa !25
  store i64 %in.3, i64* %int_overhead, align 8, !tbaa !25
  store i64 %blk.3, i64* %blocksize, align 8, !tbaa !25
  store i64 %out.3, i64* %ext_overhead, align 8, !tbaa !25
  br label %cleanup53

cleanup53:                                        ; preds = %if.then27, %lor.lhs.false, %if.else19, %if.else15, %if.end52
  %retval.3 = phi i32 [ 1, %if.end52 ], [ 0, %if.else15 ], [ 0, %if.else19 ], [ 0, %lor.lhs.false ], [ 0, %if.then27 ]
  ret i32 %retval.3
}

declare %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_block_size(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ssl_cert_is_disabled(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i64 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef %idx) #11
  %cmp = icmp eq %struct.SSL_CERT_LOOKUP* %call, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %amask = getelementptr inbounds %struct.SSL_CERT_LOOKUP, %struct.SSL_CERT_LOOKUP* %call, i64 0, i32 1
  %0 = load i32, i32* %amask, align 4, !tbaa !16
  %disabled_auth_mask = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 97
  %1 = load i32, i32* %disabled_auth_mask, align 4, !tbaa !28
  %and = and i32 %1, %0
  %cmp1.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %cmp1.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.SSL_CERT_LOOKUP* @ssl_cert_lookup_by_idx(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i8* @OSSL_default_ciphersuites() local_unnamed_addr #5 {
entry:
  ret i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.63, i64 0, i64 0)
}

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #2

declare void @tls_engine_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @do_load_builtin_compressions_ossl_() #0 {
entry:
  tail call fastcc void @do_load_builtin_compressions() #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @do_load_builtin_compressions() unnamed_addr #0 {
entry:
  %call = tail call %struct.comp_method_st* @COMP_zlib() #11
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.ssl_comp_st**, %struct.ssl_comp_st**)* @sk_comp_cmp to i32 (i8*, i8*)*)) #11
  store %struct.stack_st* %call2, %struct.stack_st** bitcast (%struct.stack_st_SSL_COMP** @ssl_comp_methods to %struct.stack_st**), align 8, !tbaa !20
  %call3 = tail call i32 @COMP_get_type(%struct.comp_method_st* noundef %call) #11
  %cmp = icmp ne i32 %call3, 0
  %0 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8
  %cmp4 = icmp ne %struct.stack_st_SSL_COMP* %0, null
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %call5 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 463) #11
  %cmp6.not = icmp eq i8* %call5, null
  br i1 %cmp6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.then
  %method8 = getelementptr inbounds i8, i8* %call5, i64 16
  %1 = bitcast i8* %method8 to %struct.comp_method_st**
  store %struct.comp_method_st* %call, %struct.comp_method_st** %1, align 8, !tbaa !101
  %id = bitcast i8* %call5 to i32*
  store i32 1, i32* %id, align 8, !tbaa !37
  %call9 = tail call i8* @COMP_get_name(%struct.comp_method_st* noundef %call) #11
  %name = getelementptr inbounds i8, i8* %call5, i64 8
  %2 = bitcast i8* %name to i8**
  store i8* %call9, i8** %2, align 8, !tbaa !102
  %3 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %3) #12
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef nonnull %call5) #11
  %4 = load %struct.stack_st_SSL_COMP*, %struct.stack_st_SSL_COMP** @ssl_comp_methods, align 8, !tbaa !20
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_SSL_COMP_sk_type(%struct.stack_st_SSL_COMP* noundef %4) #12
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %call13) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then, %if.then7, %entry
  ret void
}

declare %struct.comp_method_st* @COMP_zlib() local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @sk_comp_cmp(%struct.ssl_comp_st** nocapture noundef readonly %a, %struct.ssl_comp_st** nocapture noundef readonly %b) #6 {
entry:
  %0 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %a, align 8, !tbaa !20
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %0, i64 0, i32 0
  %1 = load i32, i32* %id, align 8, !tbaa !37
  %2 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %b, align 8, !tbaa !20
  %id1 = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %2, i64 0, i32 0
  %3 = load i32, i32* %id1, align 8, !tbaa !37
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @CONF_parse_list(i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ciphersuite_cb(i8* noundef %elem, i32 noundef %len, i8* noundef %arg) #0 {
entry:
  %name = alloca [80 x i8], align 16
  %0 = bitcast i8* %arg to %struct.stack_st_SSL_CIPHER*
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #13
  %cmp = icmp sgt i32 %len, 79
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %len to i64
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %elem, i64 noundef %conv) #11
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %name, i64 0, i64 %conv
  store i8 0, i8* %arrayidx, align 1, !tbaa !54
  %call2 = call %struct.ssl_cipher_st* @ssl3_get_cipher_by_std_name(i8* noundef nonnull %1) #11
  %cmp3 = icmp eq %struct.ssl_cipher_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc %struct.stack_st* @ossl_check_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %0) #12
  %2 = bitcast %struct.ssl_cipher_st* %call2 to i8*
  %call9 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef nonnull %2) #11
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1322, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ciphersuite_cb, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #13
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_insert(%struct.stack_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @ll_append_tail(%struct.cipher_order_st** nocapture noundef %head, %struct.cipher_order_st* noundef %curr, %struct.cipher_order_st** nocapture noundef %tail) unnamed_addr #10 {
entry:
  %0 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  %cmp = icmp eq %struct.cipher_order_st* %0, %curr
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %cmp1 = icmp eq %struct.cipher_order_st* %1, %curr
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 3
  %2 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next, align 8, !tbaa !82
  store %struct.cipher_order_st* %2, %struct.cipher_order_st** %head, align 8, !tbaa !20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %prev = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 4
  %3 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev, align 8, !tbaa !81
  %cmp4.not = icmp eq %struct.cipher_order_st* %3, null
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end3
  %next6 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 3
  %4 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next6, align 8, !tbaa !82
  %next8 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %3, i64 0, i32 3
  store %struct.cipher_order_st* %4, %struct.cipher_order_st** %next8, align 8, !tbaa !82
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3
  %next10 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 3
  %5 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next10, align 8, !tbaa !82
  %cmp11.not = icmp eq %struct.cipher_order_st* %5, null
  br i1 %cmp11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end9
  %prev15 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %5, i64 0, i32 4
  store %struct.cipher_order_st* %3, %struct.cipher_order_st** %prev15, align 8, !tbaa !81
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %6 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  %next17 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %6, i64 0, i32 3
  store %struct.cipher_order_st* %curr, %struct.cipher_order_st** %next17, align 8, !tbaa !82
  %7 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  store %struct.cipher_order_st* %7, %struct.cipher_order_st** %prev, align 8, !tbaa !81
  store %struct.cipher_order_st* null, %struct.cipher_order_st** %next10, align 8, !tbaa !82
  store %struct.cipher_order_st* %curr, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.end16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @ll_append_head(%struct.cipher_order_st** nocapture noundef %head, %struct.cipher_order_st* noundef %curr, %struct.cipher_order_st** nocapture noundef %tail) unnamed_addr #10 {
entry:
  %0 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %cmp = icmp eq %struct.cipher_order_st* %0, %curr
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.cipher_order_st*, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  %cmp1 = icmp eq %struct.cipher_order_st* %1, %curr
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %prev = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 4
  %2 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev, align 8, !tbaa !81
  store %struct.cipher_order_st* %2, %struct.cipher_order_st** %tail, align 8, !tbaa !20
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %next = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 3
  %3 = load %struct.cipher_order_st*, %struct.cipher_order_st** %next, align 8, !tbaa !82
  %cmp4.not = icmp eq %struct.cipher_order_st* %3, null
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end3
  %prev6 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 4
  %4 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev6, align 8, !tbaa !81
  %prev8 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %3, i64 0, i32 4
  store %struct.cipher_order_st* %4, %struct.cipher_order_st** %prev8, align 8, !tbaa !81
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3
  %prev10 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %curr, i64 0, i32 4
  %5 = load %struct.cipher_order_st*, %struct.cipher_order_st** %prev10, align 8, !tbaa !81
  %cmp11.not = icmp eq %struct.cipher_order_st* %5, null
  br i1 %cmp11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end9
  %next15 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %5, i64 0, i32 3
  store %struct.cipher_order_st* %3, %struct.cipher_order_st** %next15, align 8, !tbaa !82
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %6 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  %prev17 = getelementptr inbounds %struct.cipher_order_st, %struct.cipher_order_st* %6, i64 0, i32 4
  store %struct.cipher_order_st* %curr, %struct.cipher_order_st** %prev17, align 8, !tbaa !81
  %7 = load %struct.cipher_order_st*, %struct.cipher_order_st** %head, align 8, !tbaa !20
  store %struct.cipher_order_st* %7, %struct.cipher_order_st** %next, align 8, !tbaa !82
  store %struct.cipher_order_st* null, %struct.cipher_order_st** %prev10, align 8, !tbaa !81
  store %struct.cipher_order_st* %curr, %struct.cipher_order_st** %head, align 8, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.end16
  ret void
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i32 @ssl_cipher_ptr_id_cmp(%struct.ssl_cipher_st** noundef, %struct.ssl_cipher_st** noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !10, i64 1600}
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
!16 = !{!17, !10, i64 4}
!17 = !{!"", !10, i64 0, !10, i64 4}
!18 = !{!5, !6, i64 0}
!19 = !{!5, !6, i64 1088}
!20 = !{!6, !6, i64 0}
!21 = !{!17, !10, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!5, !10, i64 1604}
!25 = !{!9, !9, i64 0}
!26 = distinct !{!26, !23}
!27 = !{!5, !10, i64 1608}
!28 = !{!5, !10, i64 1612}
!29 = !{!10, !10, i64 0}
!30 = !{!31, !10, i64 36}
!31 = !{!"ssl_cipher_st", !10, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72}
!32 = distinct !{!32, !23}
!33 = !{!34, !6, i64 760}
!34 = !{!"ssl_session_st", !10, i64 0, !9, i64 8, !7, i64 16, !7, i64 80, !9, i64 592, !7, i64 600, !9, i64 632, !7, i64 640, !6, i64 672, !6, i64 680, !10, i64 688, !6, i64 696, !6, i64 704, !9, i64 712, !7, i64 720, !9, i64 728, !9, i64 736, !9, i64 744, !10, i64 752, !10, i64 756, !6, i64 760, !9, i64 768, !10, i64 776, !12, i64 784, !6, i64 800, !6, i64 808, !35, i64 816, !6, i64 880, !6, i64 888, !9, i64 896, !10, i64 904, !6, i64 912, !6, i64 920}
!35 = !{!"", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !10, i64 36, !6, i64 40, !9, i64 48, !7, i64 56}
!36 = !{!34, !10, i64 756}
!37 = !{!38, !10, i64 0}
!38 = !{!"ssl_comp_st", !10, i64 0, !6, i64 8, !6, i64 16}
!39 = !{!31, !10, i64 40}
!40 = !{!34, !10, i64 0}
!41 = !{!42, !6, i64 2472}
!42 = !{!"ssl_st", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !6, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !43, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !9, i64 152, !9, i64 160, !44, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !10, i64 1232, !6, i64 1240, !47, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !10, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !9, i64 2352, !6, i64 2360, !7, i64 2368, !9, i64 2400, !10, i64 2408, !6, i64 2416, !6, i64 2424, !10, i64 2432, !10, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !9, i64 2488, !12, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !9, i64 2536, !10, i64 2544, !10, i64 2548, !10, i64 2552, !9, i64 2560, !10, i64 2568, !10, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !48, i64 2600, !6, i64 2904, !10, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !10, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !10, i64 2976, !10, i64 2980, !7, i64 2984, !10, i64 2988, !6, i64 2992, !9, i64 3000, !10, i64 3008, !6, i64 3016, !14, i64 3024, !6, i64 3152, !50, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !9, i64 7480, !10, i64 7488, !10, i64 7492, !10, i64 7496, !6, i64 7504, !6, i64 7512, !9, i64 7520, !6, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !9, i64 7600}
!43 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !7, i64 52, !7, i64 56}
!44 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !10, i64 216, !10, i64 220, !6, i64 224, !6, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !7, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !45, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !10, i64 984, !10, i64 988, !6, i64 992, !9, i64 1000, !6, i64 1008, !9, i64 1016, !10, i64 1024, !7, i64 1028, !7, i64 1029, !46, i64 1030, !6, i64 1032}
!45 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !10, i64 280, !6, i64 288, !6, i64 296, !10, i64 304, !6, i64 312, !9, i64 320, !6, i64 328, !9, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !10, i64 368, !9, i64 376, !6, i64 384, !10, i64 392, !6, i64 400, !9, i64 408, !6, i64 416, !9, i64 424, !6, i64 432, !9, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !9, i64 480, !9, i64 488, !6, i64 496, !7, i64 504, !10, i64 540, !10, i64 544, !10, i64 548, !10, i64 552}
!46 = !{!"short", !7, i64 0}
!47 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !9, i64 56}
!48 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !46, i64 72, !10, i64 76, !49, i64 80, !10, i64 112, !10, i64 116, !9, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !9, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !9, i64 232, !6, i64 240, !9, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !6, i64 272, !9, i64 280, !10, i64 288, !7, i64 292, !10, i64 296}
!49 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!50 = !{!"record_layer_st", !6, i64 0, !10, i64 8, !10, i64 12, !9, i64 16, !9, i64 24, !51, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !10, i64 4232, !9, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !10, i64 4272, !10, i64 4276, !6, i64 4280}
!51 = !{!"ssl3_buffer_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40}
!52 = !{!5, !6, i64 16}
!53 = !{!5, !6, i64 32}
!54 = !{!7, !7, i64 0}
!55 = !{!31, !10, i64 44}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = !{!42, !6, i64 1320}
!59 = !{!42, !6, i64 1336}
!60 = !{!5, !6, i64 8}
!61 = !{!62, !6, i64 168}
!62 = !{!"ssl_method_st", !10, i64 0, !10, i64 4, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!63 = !{!31, !10, i64 64}
!64 = distinct !{!64, !23}
!65 = !{!66, !10, i64 8}
!66 = !{!"cipher_order_st", !6, i64 0, !10, i64 8, !10, i64 12, !6, i64 16, !6, i64 24}
!67 = !{!66, !6, i64 0}
!68 = distinct !{!68, !23}
!69 = !{!70, !10, i64 28}
!70 = !{!"cert_st", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !6, i64 392, !9, i64 400, !6, i64 408, !9, i64 416, !6, i64 424, !9, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !71, i64 472, !6, i64 488, !10, i64 496, !6, i64 504, !6, i64 512, !7, i64 520, !6, i64 528}
!71 = !{!"", !6, i64 0, !9, i64 8}
!72 = !{!62, !6, i64 192}
!73 = !{!74, !10, i64 96}
!74 = !{!"ssl3_enc_method", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !9, i64 72, !6, i64 80, !6, i64 88, !10, i64 96, !6, i64 104, !6, i64 112, !6, i64 120}
!75 = !{!62, !6, i64 176}
!76 = !{!31, !10, i64 0}
!77 = !{!31, !10, i64 28}
!78 = !{!31, !10, i64 32}
!79 = !{!31, !10, i64 52}
!80 = distinct !{!80, !23}
!81 = !{!66, !6, i64 24}
!82 = !{!66, !6, i64 16}
!83 = distinct !{!83, !23}
!84 = !{!31, !10, i64 68}
!85 = !{!31, !10, i64 24}
!86 = !{!31, !10, i64 60}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, !23}
!93 = !{!31, !6, i64 8}
!94 = distinct !{!94, !23}
!95 = !{!70, !10, i64 496}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = !{!31, !6, i64 16}
!99 = !{!31, !10, i64 72}
!100 = distinct !{!100, !23}
!101 = !{!38, !6, i64 16}
!102 = !{!38, !6, i64 8}
!103 = !{!42, !6, i64 8}
!104 = !{!62, !6, i64 144}
