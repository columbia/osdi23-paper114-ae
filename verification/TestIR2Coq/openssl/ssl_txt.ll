; ModuleID = 'ssl/ssl_txt.c'
source_filename = "ssl/ssl_txt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }

@.str = private unnamed_addr constant [14 x i8] c"ssl/ssl_txt.c\00", align 1
@__func__.SSL_SESSION_print_fp = private unnamed_addr constant [21 x i8] c"SSL_SESSION_print_fp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SSL-Session:\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"    Protocol  : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"    Cipher    : %06lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"    Cipher    : %04lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"    Cipher    : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"    Session-ID: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\0A    Session-ID-ctx: \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\0A    Resumption PSK: \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A    Master-Key: \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\0A    PSK identity: \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\0A    PSK identity hint: \00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\0A    SRP username: \00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"\0A    TLS session ticket lifetime hint: %ld (seconds)\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"\0A    TLS session ticket:\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"\0A    Compression: %d\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"\0A    Compression: %d (%s)\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"\0A    Start Time: %ld\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"\0A    Timeout   : %ld (sec)\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"    Verify return code: \00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%ld (%s)\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"    Extended master secret: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"    Max Early Data: %u\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"RSA \00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Session-ID:\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c" Master-Key:\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_print_fp(%struct._IO_FILE* noundef %fp, %struct.ssl_session_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #3
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.SSL_SESSION_print_fp, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524295, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #3
  %call3 = tail call i32 @SSL_SESSION_print(%struct.bio_st* noundef nonnull %call1, %struct.ssl_session_st* noundef %x) #4
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_print(%struct.bio_st* noundef %bp, %struct.ssl_session_st* noundef %x) local_unnamed_addr #0 {
entry:
  %comp = alloca %struct.ssl_comp_st*, align 8
  %cmp = icmp eq %struct.ssl_session_st* %x, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %ssl_version = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 0
  %0 = load i32, i32* %ssl_version, align 8, !tbaa !4
  %cmp1 = icmp eq i32 %0, 772
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #3
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load i32, i32* %ssl_version, align 8, !tbaa !4
  %call7 = tail call i8* @ssl_protocol_to_string(i32 noundef %1) #3
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call7) #3
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %if.end12

if.end12:                                         ; preds = %if.end5
  %cipher = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 20
  %2 = load %struct.ssl_cipher_st*, %struct.ssl_cipher_st** %cipher, align 8, !tbaa !13
  %cmp13 = icmp eq %struct.ssl_cipher_st* %2, null
  br i1 %cmp13, label %if.then15, label %if.else34

if.then15:                                        ; preds = %if.end12
  %cipher_id = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 21
  %3 = load i64, i64* %cipher_id, align 8, !tbaa !14
  %and = and i64 %3, 4278190080
  %cmp16 = icmp eq i64 %and, 33554432
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  %and20 = and i64 %3, 16777215
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 noundef %and20) #3
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %err, label %if.end45

if.else:                                          ; preds = %if.then15
  %and27 = and i64 %3, 65535
  %call28 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 noundef %and27) #3
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %err, label %if.end45

if.else34:                                        ; preds = %if.end12
  %name = getelementptr inbounds %struct.ssl_cipher_st, %struct.ssl_cipher_st* %2, i64 0, i32 1
  %4 = load i8*, i8** %name, align 8, !tbaa !15
  %cmp36 = icmp eq i8* %4, null
  %spec.select = select i1 %cmp36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %4
  %call40 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* noundef %spec.select) #3
  %cmp41 = icmp slt i32 %call40, 1
  br i1 %cmp41, label %err, label %if.end45

if.end45:                                         ; preds = %if.else34, %if.then18, %if.else
  %call46 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #3
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end45
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 4
  %5 = load i64, i64* %session_id_length, align 8, !tbaa !17
  %cmp51356.not = icmp eq i64 %5, 0
  br i1 %cmp51356.not, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %6 = load i64, i64* %session_id_length, align 8, !tbaa !17
  %cmp51 = icmp ult i64 %inc, %6
  br i1 %cmp51, label %for.body, label %for.end, !llvm.loop !18

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0357 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 5, i64 %i.0357
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv53 = zext i8 %7 to i32
  %call54 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv53) #3
  %cmp55 = icmp slt i32 %call54, 1
  %inc = add nuw i64 %i.0357, 1
  br i1 %cmp55, label %err, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call59 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)) #3
  %cmp60 = icmp slt i32 %call59, 1
  br i1 %cmp60, label %err, label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.end
  %sid_ctx_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 6
  %8 = load i64, i64* %sid_ctx_length, align 8, !tbaa !21
  %cmp65358.not = icmp eq i64 %8, 0
  br i1 %cmp65358.not, label %for.end77, label %for.body67

for.cond64:                                       ; preds = %for.body67
  %9 = load i64, i64* %sid_ctx_length, align 8, !tbaa !21
  %cmp65 = icmp ult i64 %inc76, %9
  br i1 %cmp65, label %for.body67, label %for.end77, !llvm.loop !22

for.body67:                                       ; preds = %for.cond64.preheader, %for.cond64
  %i.1359 = phi i64 [ %inc76, %for.cond64 ], [ 0, %for.cond64.preheader ]
  %arrayidx68 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 7, i64 %i.1359
  %10 = load i8, i8* %arrayidx68, align 1, !tbaa !20
  %conv69 = zext i8 %10 to i32
  %call70 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv69) #3
  %cmp71 = icmp slt i32 %call70, 1
  %inc76 = add nuw i64 %i.1359, 1
  br i1 %cmp71, label %err, label %for.cond64

for.end77:                                        ; preds = %for.cond64, %for.cond64.preheader
  br i1 %cmp1, label %if.then78, label %if.else84

if.then78:                                        ; preds = %for.end77
  %call79 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #3
  %cmp80 = icmp slt i32 %call79, 1
  br i1 %cmp80, label %err, label %if.end90

if.else84:                                        ; preds = %for.end77
  %call85 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0)) #3
  %cmp86 = icmp slt i32 %call85, 1
  br i1 %cmp86, label %err, label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then78
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 1
  %11 = load i64, i64* %master_key_length, align 8, !tbaa !23
  %cmp92360.not = icmp eq i64 %11, 0
  br i1 %cmp92360.not, label %for.end104, label %for.body94

for.cond91:                                       ; preds = %for.body94
  %12 = load i64, i64* %master_key_length, align 8, !tbaa !23
  %cmp92 = icmp ult i64 %inc103, %12
  br i1 %cmp92, label %for.body94, label %for.end104, !llvm.loop !24

for.body94:                                       ; preds = %if.end90, %for.cond91
  %i.2361 = phi i64 [ %inc103, %for.cond91 ], [ 0, %if.end90 ]
  %arrayidx95 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 3, i64 %i.2361
  %13 = load i8, i8* %arrayidx95, align 1, !tbaa !20
  %conv96 = zext i8 %13 to i32
  %call97 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv96) #3
  %cmp98 = icmp slt i32 %call97, 1
  %inc103 = add nuw i64 %i.2361, 1
  br i1 %cmp98, label %err, label %for.cond91

for.end104:                                       ; preds = %for.cond91, %if.end90
  %call105 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #3
  %cmp106 = icmp slt i32 %call105, 1
  br i1 %cmp106, label %err, label %if.end109

if.end109:                                        ; preds = %for.end104
  %psk_identity = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 9
  %14 = load i8*, i8** %psk_identity, align 8, !tbaa !25
  %tobool110.not = icmp eq i8* %14, null
  %spec.select348 = select i1 %tobool110.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %14
  %call116 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %spec.select348) #3
  %cmp117 = icmp slt i32 %call116, 1
  br i1 %cmp117, label %err, label %if.end120

if.end120:                                        ; preds = %if.end109
  %call121 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)) #3
  %cmp122 = icmp slt i32 %call121, 1
  br i1 %cmp122, label %err, label %if.end125

if.end125:                                        ; preds = %if.end120
  %psk_identity_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 8
  %15 = load i8*, i8** %psk_identity_hint, align 8, !tbaa !26
  %tobool126.not = icmp eq i8* %15, null
  %spec.select349 = select i1 %tobool126.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %15
  %call132 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %spec.select349) #3
  %cmp133 = icmp slt i32 %call132, 1
  br i1 %cmp133, label %err, label %if.end136

if.end136:                                        ; preds = %if.end125
  %call137 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #3
  %cmp138 = icmp slt i32 %call137, 1
  br i1 %cmp138, label %err, label %if.end141

if.end141:                                        ; preds = %if.end136
  %srp_username = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 27
  %16 = load i8*, i8** %srp_username, align 8, !tbaa !27
  %tobool142.not = icmp eq i8* %16, null
  %spec.select350 = select i1 %tobool142.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %16
  %call148 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* noundef %spec.select350) #3
  %cmp149 = icmp slt i32 %call148, 1
  br i1 %cmp149, label %err, label %if.end152

if.end152:                                        ; preds = %if.end141
  %tick_lifetime_hint = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 26, i32 3
  %17 = load i64, i64* %tick_lifetime_hint, align 8, !tbaa !28
  %tobool153.not = icmp eq i64 %17, 0
  br i1 %tobool153.not, label %if.end162, label %if.then154

if.then154:                                       ; preds = %if.end152
  %call157 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i64 noundef %17) #3
  %cmp158 = icmp slt i32 %call157, 1
  br i1 %cmp158, label %err, label %if.end162

if.end162:                                        ; preds = %if.then154, %if.end152
  %tick = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 26, i32 1
  %18 = load i8*, i8** %tick, align 8, !tbaa !29
  %tobool164.not = icmp eq i8* %18, null
  br i1 %tobool164.not, label %if.end180, label %if.then165

if.then165:                                       ; preds = %if.end162
  %call166 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0)) #3
  %cmp167 = icmp slt i32 %call166, 1
  br i1 %cmp167, label %err, label %if.end170

if.end170:                                        ; preds = %if.then165
  %19 = load i8*, i8** %tick, align 8, !tbaa !29
  %ticklen = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 26, i32 2
  %20 = load i64, i64* %ticklen, align 8, !tbaa !30
  %conv174 = trunc i64 %20 to i32
  %call175 = tail call i32 @BIO_dump_indent(%struct.bio_st* noundef %bp, i8* noundef %19, i32 noundef %conv174, i32 noundef 4) #3
  %cmp176 = icmp slt i32 %call175, 1
  br i1 %cmp176, label %err, label %if.end180

if.end180:                                        ; preds = %if.end170, %if.end162
  %compress_meth = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 19
  %21 = load i32, i32* %compress_meth, align 4, !tbaa !31
  %cmp181.not = icmp eq i32 %21, 0
  br i1 %cmp181.not, label %if.end205, label %if.then183

if.then183:                                       ; preds = %if.end180
  %22 = bitcast %struct.ssl_comp_st** %comp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #5
  store %struct.ssl_comp_st* null, %struct.ssl_comp_st** %comp, align 8, !tbaa !32
  %call184 = call i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef null, %struct.ssl_session_st* noundef nonnull %x, %struct.evp_cipher_st** noundef null, %struct.evp_md_st** noundef null, i32* noundef null, i64* noundef null, %struct.ssl_comp_st** noundef nonnull %comp, i32 noundef 0) #3
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %cleanup.thread, label %if.end187

if.end187:                                        ; preds = %if.then183
  %23 = load %struct.ssl_comp_st*, %struct.ssl_comp_st** %comp, align 8, !tbaa !32
  %cmp188 = icmp eq %struct.ssl_comp_st* %23, null
  br i1 %cmp188, label %if.then190, label %if.else197

if.then190:                                       ; preds = %if.end187
  %24 = load i32, i32* %compress_meth, align 4, !tbaa !31
  %call192 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 noundef %24) #3
  %cmp193 = icmp slt i32 %call192, 1
  br i1 %cmp193, label %cleanup.thread, label %cleanup

if.else197:                                       ; preds = %if.end187
  %id = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %23, i64 0, i32 0
  %25 = load i32, i32* %id, align 8, !tbaa !33
  %name198 = getelementptr inbounds %struct.ssl_comp_st, %struct.ssl_comp_st* %23, i64 0, i32 1
  %26 = load i8*, i8** %name198, align 8, !tbaa !35
  %call199 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 noundef %25, i8* noundef %26) #3
  %cmp200 = icmp slt i32 %call199, 1
  br i1 %cmp200, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then183, %if.then190, %if.else197
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5
  br label %err

cleanup:                                          ; preds = %if.then190, %if.else197
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #5
  br label %if.end205

if.end205:                                        ; preds = %cleanup, %if.end180
  %time = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 16
  %27 = load i64, i64* %time, align 8, !tbaa !36
  %cmp206.not = icmp eq i64 %27, 0
  br i1 %cmp206.not, label %if.end215, label %if.then208

if.then208:                                       ; preds = %if.end205
  %call210 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i64 noundef %27) #3
  %cmp211 = icmp slt i32 %call210, 1
  br i1 %cmp211, label %err, label %if.end215

if.end215:                                        ; preds = %if.then208, %if.end205
  %timeout = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 15
  %28 = load i64, i64* %timeout, align 8, !tbaa !37
  %cmp216.not = icmp eq i64 %28, 0
  br i1 %cmp216.not, label %if.end225, label %if.then218

if.then218:                                       ; preds = %if.end215
  %call220 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i64 noundef %28) #3
  %cmp221 = icmp slt i32 %call220, 1
  br i1 %cmp221, label %err, label %if.end225

if.end225:                                        ; preds = %if.then218, %if.end215
  %call226 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #3
  %cmp227 = icmp slt i32 %call226, 1
  br i1 %cmp227, label %err, label %if.end230

if.end230:                                        ; preds = %if.end225
  %call231 = call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #3
  %cmp232 = icmp slt i32 %call231, 1
  br i1 %cmp232, label %err, label %if.end235

if.end235:                                        ; preds = %if.end230
  %verify_result = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 13
  %29 = load i64, i64* %verify_result, align 8, !tbaa !38
  %call237 = call i8* @X509_verify_cert_error_string(i64 noundef %29) #3
  %call238 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i64 noundef %29, i8* noundef %call237) #3
  %cmp239 = icmp slt i32 %call238, 1
  br i1 %cmp239, label %err, label %if.end242

if.end242:                                        ; preds = %if.end235
  %flags = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 30
  %30 = load i32, i32* %flags, align 8, !tbaa !39
  %and243 = and i32 %30, 1
  %tobool244.not = icmp eq i32 %and243, 0
  %cond245 = select i1 %tobool244.not, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)
  %call246 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), i8* noundef %cond245) #3
  %cmp247 = icmp slt i32 %call246, 1
  br i1 %cmp247, label %err, label %if.end250

if.end250:                                        ; preds = %if.end242
  br i1 %cmp1, label %if.then252, label %cleanup260

if.then252:                                       ; preds = %if.end250
  %max_early_data = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 26, i32 5
  %31 = load i32, i32* %max_early_data, align 4, !tbaa !40
  %call254 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i32 noundef %31) #3
  %cmp255 = icmp slt i32 %call254, 1
  br i1 %cmp255, label %err, label %cleanup260

err:                                              ; preds = %for.body, %for.body67, %for.body94, %cleanup.thread, %if.then252, %if.end242, %if.end235, %if.end230, %if.end225, %if.then218, %if.then208, %if.end170, %if.then165, %if.then154, %if.end141, %if.end136, %if.end125, %if.end120, %if.end109, %for.end104, %if.else84, %if.then78, %for.end, %if.end45, %if.else34, %if.else, %if.then18, %if.end5, %if.end, %entry
  br label %cleanup260

cleanup260:                                       ; preds = %if.end250, %if.then252, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.then252 ], [ 1, %if.end250 ]
  ret i32 %retval.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @ssl_protocol_to_string(i32 noundef) local_unnamed_addr #2

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @BIO_dump_indent(%struct.bio_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ssl_cipher_get_evp(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef, %struct.evp_cipher_st** noundef, %struct.evp_md_st** noundef, i32* noundef, i64* noundef, %struct.ssl_comp_st** noundef, i32 noundef) local_unnamed_addr #2

declare i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_SESSION_print_keylog(%struct.bio_st* noundef %bp, %struct.ssl_session_st* noundef readonly %x) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ssl_session_st* %x, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %session_id_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 4
  %0 = load i64, i64* %session_id_length, align 8, !tbaa !17
  %cmp1 = icmp eq i64 %0, 0
  br i1 %cmp1, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %master_key_length = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 1
  %1 = load i64, i64* %master_key_length, align 8, !tbaa !23
  %cmp2 = icmp eq i64 %1, 0
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #3
  %cmp5 = icmp slt i32 %call, 1
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end4
  %call8 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0)) #3
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7
  %2 = load i64, i64* %session_id_length, align 8, !tbaa !17
  %cmp1362.not = icmp eq i64 %2, 0
  br i1 %cmp1362.not, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %3 = load i64, i64* %session_id_length, align 8, !tbaa !17
  %cmp13 = icmp ult i64 %inc, %3
  br i1 %cmp13, label %for.body, label %for.end, !llvm.loop !41

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.063 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 5, i64 %i.063
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %4 to i32
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #3
  %cmp15 = icmp slt i32 %call14, 1
  %inc = add nuw i64 %i.063, 1
  br i1 %cmp15, label %err, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call19 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0)) #3
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.end
  %5 = load i64, i64* %master_key_length, align 8, !tbaa !23
  %cmp2664.not = icmp eq i64 %5, 0
  br i1 %cmp2664.not, label %for.end38, label %for.body28

for.cond24:                                       ; preds = %for.body28
  %6 = load i64, i64* %master_key_length, align 8, !tbaa !23
  %cmp26 = icmp ult i64 %inc37, %6
  br i1 %cmp26, label %for.body28, label %for.end38, !llvm.loop !42

for.body28:                                       ; preds = %for.cond24.preheader, %for.cond24
  %i.165 = phi i64 [ %inc37, %for.cond24 ], [ 0, %for.cond24.preheader ]
  %arrayidx29 = getelementptr inbounds %struct.ssl_session_st, %struct.ssl_session_st* %x, i64 0, i32 3, i64 %i.165
  %7 = load i8, i8* %arrayidx29, align 1, !tbaa !20
  %conv30 = zext i8 %7 to i32
  %call31 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv30) #3
  %cmp32 = icmp slt i32 %call31, 1
  %inc37 = add nuw i64 %i.165, 1
  br i1 %cmp32, label %err, label %for.cond24

for.end38:                                        ; preds = %for.cond24, %for.cond24.preheader
  %call39 = tail call i32 @BIO_puts(%struct.bio_st* noundef %bp, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #3
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %err, label %cleanup

err:                                              ; preds = %for.body, %for.body28, %for.end38, %for.end, %if.end7, %if.end4, %if.end, %lor.lhs.false, %entry
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %for.end38 ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ssl_session_st", !6, i64 0, !9, i64 8, !7, i64 16, !7, i64 80, !9, i64 592, !7, i64 600, !9, i64 632, !7, i64 640, !10, i64 672, !10, i64 680, !6, i64 688, !10, i64 696, !10, i64 704, !9, i64 712, !7, i64 720, !9, i64 728, !9, i64 736, !9, i64 744, !6, i64 752, !6, i64 756, !10, i64 760, !9, i64 768, !6, i64 776, !11, i64 784, !10, i64 800, !10, i64 808, !12, i64 816, !10, i64 880, !10, i64 888, !9, i64 896, !6, i64 904, !10, i64 912, !10, i64 920}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!12 = !{!"", !10, i64 0, !10, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !9, i64 48, !7, i64 56}
!13 = !{!5, !10, i64 760}
!14 = !{!5, !9, i64 768}
!15 = !{!16, !10, i64 8}
!16 = !{!"ssl_cipher_st", !6, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72}
!17 = !{!5, !9, i64 592}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!7, !7, i64 0}
!21 = !{!5, !9, i64 632}
!22 = distinct !{!22, !19}
!23 = !{!5, !9, i64 8}
!24 = distinct !{!24, !19}
!25 = !{!5, !10, i64 680}
!26 = !{!5, !10, i64 672}
!27 = !{!5, !10, i64 880}
!28 = !{!5, !9, i64 840}
!29 = !{!5, !10, i64 824}
!30 = !{!5, !9, i64 832}
!31 = !{!5, !6, i64 756}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !6, i64 0}
!34 = !{!"ssl_comp_st", !6, i64 0, !10, i64 8, !10, i64 16}
!35 = !{!34, !10, i64 8}
!36 = !{!5, !9, i64 736}
!37 = !{!5, !9, i64 728}
!38 = !{!5, !9, i64 712}
!39 = !{!5, !6, i64 904}
!40 = !{!5, !6, i64 852}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
