; ModuleID = 'ssl/record/rec_layer_s3.c'
source_filename = "ssl/record/rec_layer_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_layer_st = type { %struct.ssl_st*, i32, i32, i64, i64, %struct.ssl3_buffer_st, [32 x %struct.ssl3_buffer_st], [32 x %struct.ssl3_record_st], i8*, i64, i64, [4 x i8], i64, i64, i64, i32, i64, i8*, [8 x i8], [8 x i8], i32, i32, %struct.dtls_record_layer_st* }
%struct.ssl3_buffer_st = type { i8*, i64, i64, i64, i64, i32 }
%struct.ssl3_record_st = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i32, i64, [8 x i8] }
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.pqueue_st = type opaque
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, i32 (%struct.ssl_st*)*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon.2, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.4, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }
%struct.ssl3_enc_method = type { i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i32)*, i64 (%struct.ssl_st*, i8*, i64, i8*)*, i8*, i64, i8*, i64, i32 (i32)*, i32 (%struct.ssl_st*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*, %struct.wpacket_st*, i32)*, i32 (%struct.ssl_st*)* }
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
%struct.x509_st = type opaque
%struct.sigalg_lookup_st = type { i8*, i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.evp_pkey_st = type opaque
%struct.dtls1_state_st = type { [255 x i8], i64, i32, i16, i16, i16, %struct.pqueue_st*, %struct.pqueue_st*, i64, i64, %struct.hm_header_st, %struct.hm_header_st, i32, %struct.timeval, i32, i32, i32 (%struct.ssl_st*, i32)* }
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
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM = type { i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"read header\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read body\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"read done\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"RH\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"RB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ssl/record/rec_layer_s3.c\00", align 1
@__func__.ssl3_read_n = private unnamed_addr constant [12 x i8] c"ssl3_read_n\00", align 1
@__func__.ssl3_write_bytes = private unnamed_addr constant [17 x i8] c"ssl3_write_bytes\00", align 1
@__func__.do_ssl3_write = private unnamed_addr constant [14 x i8] c"do_ssl3_write\00", align 1
@__func__.ssl3_write_pending = private unnamed_addr constant [19 x i8] c"ssl3_write_pending\00", align 1
@__func__.ssl3_read_bytes = private unnamed_addr constant [16 x i8] c"ssl3_read_bytes\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SSL alert number %d\00", align 1
@reltable.SSL_rstate_string_long = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([12 x i8]* @.str to i64), i64 ptrtoint ([3 x i32]* @reltable.SSL_rstate_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.1 to i64), i64 ptrtoint ([3 x i32]* @reltable.SSL_rstate_string_long to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([10 x i8]* @.str.2 to i64), i64 ptrtoint ([3 x i32]* @reltable.SSL_rstate_string_long to i64)) to i32)], align 4
@reltable.SSL_rstate_string = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.4 to i64), i64 ptrtoint ([3 x i32]* @reltable.SSL_rstate_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.5 to i64), i64 ptrtoint ([3 x i32]* @reltable.SSL_rstate_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint ([3 x i8]* @.str.6 to i64), i64 ptrtoint ([3 x i32]* @reltable.SSL_rstate_string to i64)) to i32)], align 4

; Function Attrs: noinline nounwind uwtable
define void @RECORD_LAYER_init(%struct.record_layer_st* noundef %rl, %struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %s1 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 0
  store %struct.ssl_st* %s, %struct.ssl_st** %s1, align 8, !tbaa !4
  %is_first_record = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 20
  store i32 1, i32* %is_first_record, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 0
  tail call void @SSL3_RECORD_clear(%struct.ssl3_record_st* noundef nonnull %arraydecay, i64 noundef 32) #13
  ret void
}

declare void @SSL3_RECORD_clear(%struct.ssl3_record_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @RECORD_LAYER_clear(%struct.record_layer_st* noundef %rl) local_unnamed_addr #0 {
entry:
  %rstate = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 2
  store i32 240, i32* %rstate, align 4, !tbaa !23
  %packet = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 8
  store i8* null, i8** %packet, align 8, !tbaa !24
  %packet_length = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 9
  %0 = bitcast i64* %packet_length to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !tbaa !25
  %arraydecay = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 11, i64 0
  %call = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef 4) #13
  %handshake_fragment_len = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 12
  store i64 0, i64* %handshake_fragment_len, align 8, !tbaa !26
  %wpend_tot = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 14
  store i64 0, i64* %wpend_tot, align 8, !tbaa !27
  %wpend_type = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 15
  store i32 0, i32* %wpend_type, align 8, !tbaa !28
  %wpend_ret = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 16
  store i64 0, i64* %wpend_ret, align 8, !tbaa !29
  %wpend_buf = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 17
  store i8* null, i8** %wpend_buf, align 8, !tbaa !30
  %rbuf = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 5
  tail call void @SSL3_BUFFER_clear(%struct.ssl3_buffer_st* noundef nonnull %rbuf) #13
  %s = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 0
  %1 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8, !tbaa !4
  %call1 = tail call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef %1) #13
  %numrpipes = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 3
  store i64 0, i64* %numrpipes, align 8, !tbaa !31
  %arraydecay2 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 0
  tail call void @SSL3_RECORD_clear(%struct.ssl3_record_st* noundef nonnull %arraydecay2, i64 noundef 32) #13
  tail call void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef %rl) #14
  tail call void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef %rl) #14
  %d = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 22
  %2 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !32
  %tobool.not = icmp eq %struct.dtls_record_layer_st* %2, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @DTLS_RECORD_LAYER_clear(%struct.record_layer_st* noundef nonnull %rl) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @SSL3_BUFFER_clear(%struct.ssl3_buffer_st* noundef) local_unnamed_addr #1

declare i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @RECORD_LAYER_reset_read_sequence(%struct.record_layer_st* noundef %rl) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 18, i64 0
  %call = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef 8) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @RECORD_LAYER_reset_write_sequence(%struct.record_layer_st* noundef %rl) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 19, i64 0
  %call = tail call i8* @memset(i8* noundef nonnull %arraydecay, i32 noundef 0, i64 noundef 8) #13
  ret void
}

declare void @DTLS_RECORD_LAYER_clear(%struct.record_layer_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @RECORD_LAYER_release(%struct.record_layer_st* noundef %rl) local_unnamed_addr #0 {
entry:
  %buf = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 5, i32 0
  %0 = load i8*, i8** %buf, align 8, !tbaa !33
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %s = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 0
  %1 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8, !tbaa !4
  %call = tail call i32 @ssl3_release_read_buffer(%struct.ssl_st* noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %numwpipes = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 4
  %2 = load i64, i64* %numwpipes, align 8, !tbaa !34
  %cmp1.not = icmp eq i64 %2, 0
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %s3 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 0
  %3 = load %struct.ssl_st*, %struct.ssl_st** %s3, align 8, !tbaa !4
  %call4 = tail call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef %3) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %arraydecay = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 0
  tail call void @SSL3_RECORD_release(%struct.ssl3_record_st* noundef nonnull %arraydecay, i64 noundef 32) #13
  ret void
}

declare i32 @ssl3_release_read_buffer(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @SSL3_RECORD_release(%struct.ssl3_record_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @RECORD_LAYER_read_pending(%struct.record_layer_st* nocapture noundef readonly %rl) local_unnamed_addr #3 {
entry:
  %left = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 5, i32 4
  %0 = load i64, i64* %left, align 8, !tbaa !35
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @RECORD_LAYER_processed_read_pending(%struct.record_layer_st* nocapture noundef readonly %rl) local_unnamed_addr #4 {
entry:
  %numrpipes = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 3
  %0 = load i64, i64* %numrpipes, align 8, !tbaa !31
  %cmp10.not = icmp eq i64 %0, 0
  br i1 %cmp10.not, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %read14 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 0, i32 8
  %1 = load i32, i32* %read14, align 8, !tbaa !36
  %tobool.not15 = icmp eq i32 %1, 0
  br i1 %tobool.not15, label %while.end, label %while.cond

while.cond:                                       ; preds = %land.rhs.preheader, %land.rhs
  %inc16 = phi i64 [ %inc, %land.rhs ], [ 1, %land.rhs.preheader ]
  %exitcond.not = icmp eq i64 %inc16, %0
  br i1 %exitcond.not, label %while.end.loopexit, label %land.rhs, !llvm.loop !38

land.rhs:                                         ; preds = %while.cond
  %read = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 %inc16, i32 8
  %2 = load i32, i32* %read, align 8, !tbaa !36
  %tobool.not = icmp eq i32 %2, 0
  %inc = add nuw i64 %inc16, 1
  br i1 %tobool.not, label %while.end.loopexit, label %while.cond, !llvm.loop !38

while.end.loopexit:                               ; preds = %land.rhs, %while.cond
  %cmp.le = icmp ult i64 %inc16, %0
  %phi.cast = zext i1 %cmp.le to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.rhs.preheader, %entry
  %cmp.lcssa = phi i32 [ 0, %entry ], [ 1, %land.rhs.preheader ], [ %phi.cast, %while.end.loopexit ]
  ret i32 %cmp.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* nocapture noundef readonly %rl) local_unnamed_addr #3 {
entry:
  %numwpipes = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 4
  %0 = load i64, i64* %numwpipes, align 8, !tbaa !34
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %sub = add i64 %0, -1
  %left = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 6, i64 %sub, i32 4
  %1 = load i64, i64* %left, align 8, !tbaa !40
  %cmp2 = icmp ne i64 %1, 0
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i64 @ssl3_pending(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #4 {
entry:
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %0 = load i32, i32* %rstate, align 4, !tbaa !41
  %cmp = icmp eq i32 %0, 241
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %numrpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 3
  %1 = load i64, i64* %numrpipes, align 8, !tbaa !42
  %cmp220.not = icmp eq i64 %1, 0
  br i1 %cmp220.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %if.end6
  %num.022 = phi i64 [ %add, %if.end6 ], [ 0, %for.cond.preheader ]
  %i.021 = phi i64 [ %inc, %if.end6 ], [ 0, %for.cond.preheader ]
  %type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %i.021, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !43
  %cmp4.not = icmp eq i32 %2, 23
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %for.body
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %i.021, i32 2
  %3 = load i64, i64* %length, align 8, !tbaa !44
  %add = add i64 %3, %num.022
  %inc = add nuw i64 %i.021, 1
  %exitcond.not = icmp eq i64 %inc, %1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !45

cleanup:                                          ; preds = %for.body, %if.end6, %for.cond.preheader, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.body ], [ %add, %if.end6 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_CTX_set_default_read_buffer_len(%struct.ssl_ctx_st* nocapture noundef writeonly %ctx, i64 noundef %len) local_unnamed_addr #6 {
entry:
  %default_read_buf_len = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 56
  store i64 %len, i64* %default_read_buf_len, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @SSL_set_default_read_buffer_len(%struct.ssl_st* nocapture noundef writeonly %s, i64 noundef %len) local_unnamed_addr #6 {
entry:
  %default_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 1
  store i64 %len, i64* %default_len, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_rstate_string_long(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #3 {
entry:
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %0 = load i32, i32* %rstate, align 4, !tbaa !41
  %switch.tableidx = add i32 %0, -240
  %1 = icmp ult i32 %switch.tableidx, 3
  br i1 %1, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %2 = sext i32 %switch.tableidx to i64
  %reltable.shift = shl i64 %2, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([3 x i32]* @reltable.SSL_rstate_string_long to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %reltable.intrinsic, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @SSL_rstate_string(%struct.ssl_st* nocapture noundef readonly %s) local_unnamed_addr #3 {
entry:
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %0 = load i32, i32* %rstate, align 4, !tbaa !41
  %switch.tableidx = add i32 %0, -240
  %1 = icmp ult i32 %switch.tableidx, 3
  br i1 %1, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %2 = sext i32 %switch.tableidx to i64
  %reltable.shift = shl i64 %2, 2
  %reltable.intrinsic = call i8* @llvm.load.relative.i64(i8* bitcast ([3 x i32]* @reltable.SSL_rstate_string to i8*), i64 %reltable.shift)
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i8* [ %reltable.intrinsic, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_read_n(%struct.ssl_st* noundef %s, i64 noundef %n, i64 noundef %max, i32 noundef %extend, i32 noundef %clearold, i64* nocapture noundef writeonly %readbytes) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %n, 0
  br i1 %cmp, label %cleanup200, label %if.end

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %0 = load i8*, i8** %buf, align 8, !tbaa !52
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @ssl3_setup_read_buffer(%struct.ssl_st* noundef nonnull %s) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup200, label %if.then2.if.end5_crit_edge

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  %.pre = load i8*, i8** %buf, align 8, !tbaa !52
  br label %if.end5

if.end5:                                          ; preds = %if.then2.if.end5_crit_edge, %if.end
  %1 = phi i8* [ %.pre, %if.then2.if.end5_crit_edge ], [ %0, %if.end ]
  %left6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 4
  %2 = load i64, i64* %left6, align 8, !tbaa !40
  %3 = ptrtoint i8* %1 to i64
  %sub = add i64 %3, 4
  %rem = and i64 %sub, 7
  %sub8 = xor i64 %rem, 7
  %tobool9 = icmp ne i32 %extend, 0
  br i1 %tobool9, label %if.end5.if.end40_crit_edge, label %if.then10

if.end5.if.end40_crit_edge:                       ; preds = %if.end5
  %packet_length42.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  %.pre351 = load i64, i64* %packet_length42.phi.trans.insert, align 8, !tbaa !53
  %packet46.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  %.pre352 = load i8*, i8** %packet46.phi.trans.insert, align 8, !tbaa !54
  br label %if.end40

if.then10:                                        ; preds = %if.end5
  %cmp11 = icmp eq i64 %2, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %offset = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 3
  store i64 %sub8, i64* %offset, align 8, !tbaa !55
  br label %if.end34

if.else:                                          ; preds = %if.then10
  %cmp13 = icmp ne i64 %sub8, 0
  %cmp14 = icmp ugt i64 %2, 4
  %or.cond = select i1 %cmp13, i1 %cmp14, i1 false
  %offset17 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 3
  %4 = load i64, i64* %offset17, align 8, !tbaa !55
  br i1 %or.cond, label %if.then15, label %if.end34

if.then15:                                        ; preds = %if.else
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %4
  %5 = load i8, i8* %add.ptr, align 1, !tbaa !56
  %cmp18 = icmp eq i8 %5, 23
  br i1 %cmp18, label %land.lhs.true20, label %if.end34

land.lhs.true20:                                  ; preds = %if.then15
  %arrayidx21 = getelementptr inbounds i8, i8* %add.ptr, i64 3
  %6 = load i8, i8* %arrayidx21, align 1, !tbaa !56
  %conv22 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv22, 8
  %arrayidx23 = getelementptr inbounds i8, i8* %add.ptr, i64 4
  %7 = load i8, i8* %arrayidx23, align 1, !tbaa !56
  %conv24 = zext i8 %7 to i32
  %or = or i32 %shl, %conv24
  %cmp25 = icmp ugt i32 %or, 127
  br i1 %cmp25, label %if.then27, label %if.end34

if.then27:                                        ; preds = %land.lhs.true20
  %add.ptr29 = getelementptr inbounds i8, i8* %1, i64 %sub8
  %call30 = tail call i8* @memmove(i8* noundef nonnull %add.ptr29, i8* noundef nonnull %add.ptr, i64 noundef %2) #13
  store i64 %sub8, i64* %offset17, align 8, !tbaa !55
  %.pre349 = load i8*, i8** %buf, align 8, !tbaa !52
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27, %land.lhs.true20, %if.then15, %if.then12
  %8 = phi i64 [ %sub8, %if.then27 ], [ %4, %land.lhs.true20 ], [ %4, %if.then15 ], [ %sub8, %if.then12 ], [ %4, %if.else ]
  %9 = phi i8* [ %.pre349, %if.then27 ], [ %1, %land.lhs.true20 ], [ %1, %if.then15 ], [ %1, %if.then12 ], [ %1, %if.else ]
  %add.ptr37 = getelementptr inbounds i8, i8* %9, i64 %8
  %packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  store i8* %add.ptr37, i8** %packet, align 8, !tbaa !54
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  store i64 0, i64* %packet_length, align 8, !tbaa !53
  br label %if.end40

if.end40:                                         ; preds = %if.end5.if.end40_crit_edge, %if.end34
  %10 = phi i8* [ %.pre352, %if.end5.if.end40_crit_edge ], [ %add.ptr37, %if.end34 ]
  %11 = phi i8* [ %1, %if.end5.if.end40_crit_edge ], [ %9, %if.end34 ]
  %12 = phi i64 [ %.pre351, %if.end5.if.end40_crit_edge ], [ 0, %if.end34 ]
  %packet_length42 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  %add.ptr44 = getelementptr inbounds i8, i8* %11, i64 %sub8
  %cmp47 = icmp ne i8* %10, %add.ptr44
  %cmp50 = icmp eq i32 %clearold, 1
  %or.cond205 = and i1 %cmp50, %cmp47
  br i1 %or.cond205, label %if.then52, label %if.end61

if.then52:                                        ; preds = %if.end40
  %packet46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  %add55 = add i64 %12, %2
  %call56 = tail call i8* @memmove(i8* noundef %add.ptr44, i8* noundef %10, i64 noundef %add55) #13
  store i8* %add.ptr44, i8** %packet46, align 8, !tbaa !54
  %add59 = add i64 %12, %sub8
  %offset60 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 3
  store i64 %add59, i64* %offset60, align 8, !tbaa !55
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %if.end40
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %13 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %13, i64 0, i32 25
  %14 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !58
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %14, i64 0, i32 12
  %15 = load i32, i32* %enc_flags, align 8, !tbaa !60
  %and = and i32 %15, 8
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.end77, label %if.then63

if.then63:                                        ; preds = %if.end61
  %cmp64 = icmp eq i64 %2, 0
  %or.cond206 = and i1 %tobool9, %cmp64
  br i1 %or.cond206, label %cleanup200, label %if.end69

if.end69:                                         ; preds = %if.then63
  %cmp70.not = icmp ne i64 %2, 0
  %cmp73 = icmp ult i64 %2, %n
  %or.cond323 = and i1 %cmp70.not, %cmp73
  %spec.select327 = select i1 %or.cond323, i64 %2, i64 %n
  br label %if.end77

if.end77:                                         ; preds = %if.end69, %if.end61
  %n.addr.0 = phi i64 [ %n, %if.end61 ], [ %spec.select327, %if.end69 ]
  %cmp78.not = icmp ult i64 %2, %n.addr.0
  br i1 %cmp78.not, label %if.end88, label %if.then80

if.then80:                                        ; preds = %if.end77
  %16 = load i64, i64* %packet_length42, align 8, !tbaa !53
  %add83 = add i64 %16, %n.addr.0
  store i64 %add83, i64* %packet_length42, align 8, !tbaa !53
  %sub84 = sub i64 %2, %n.addr.0
  store i64 %sub84, i64* %left6, align 8, !tbaa !40
  %offset86 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 3
  %17 = load i64, i64* %offset86, align 8, !tbaa !55
  %add87 = add i64 %17, %n.addr.0
  store i64 %add87, i64* %offset86, align 8, !tbaa !55
  store i64 %n.addr.0, i64* %readbytes, align 8, !tbaa !25
  br label %cleanup200

if.end88:                                         ; preds = %if.end77
  %len89 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 2
  %18 = load i64, i64* %len89, align 8, !tbaa !62
  %offset90 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 3
  %19 = load i64, i64* %offset90, align 8, !tbaa !55
  %sub91 = sub i64 %18, %19
  %cmp92 = icmp ugt i64 %n.addr.0, %sub91
  br i1 %cmp92, label %if.then94, label %while.body.lr.ph

if.then94:                                        ; preds = %if.end88
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ssl3_read_n, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup200

while.body.lr.ph:                                 ; preds = %if.end88
  %read_ahead = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 1
  %20 = load i32, i32* %read_ahead, align 8, !tbaa !63
  %tobool97.not = icmp ne i32 %20, 0
  %tobool62.not.not = xor i1 %tobool62.not, true
  %brmerge = select i1 %tobool97.not, i1 true, i1 %tobool62.not.not
  %cmp106 = icmp ugt i64 %n.addr.0, %max
  %spec.select = select i1 %cmp106, i64 %n.addr.0, i64 %max
  %cmp113 = icmp ugt i64 %spec.select, %sub91
  %spec.select328 = select i1 %cmp113, i64 %sub91, i64 %spec.select
  %max.addr.1 = select i1 %brmerge, i64 %spec.select328, i64 %n.addr.0
  %call123 = tail call i32* @__errno_location() #15
  %rbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 2
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  %add.ptr128 = getelementptr inbounds i8, i8* %add.ptr44, i64 %12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end178
  %left.0343 = phi i64 [ %2, %while.body.lr.ph ], [ %add179, %if.end178 ]
  %n.addr.1342 = phi i64 [ %n.addr.0, %while.body.lr.ph ], [ %n.addr.2, %if.end178 ]
  store i32 0, i32* %call123, align 4, !tbaa !64
  %21 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !65
  %cmp124.not = icmp eq %struct.bio_st* %21, null
  br i1 %cmp124.not, label %if.else156, label %if.then126

if.then126:                                       ; preds = %while.body
  store i32 3, i32* %rwstate, align 8, !tbaa !66
  %add.ptr129 = getelementptr inbounds i8, i8* %add.ptr128, i64 %left.0343
  %sub130 = sub i64 %max.addr.1, %left.0343
  %conv131 = trunc i64 %sub130 to i32
  %call132 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %21, i8* noundef %add.ptr129, i32 noundef %conv131) #13
  %cmp138 = icmp slt i32 %call132, 1
  br i1 %cmp138, label %land.lhs.true140, label %if.end178

land.lhs.true140:                                 ; preds = %if.then126
  %22 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !65
  %call142 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %22, i32 noundef 8) #13
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %land.lhs.true144, label %if.then160

land.lhs.true144:                                 ; preds = %land.lhs.true140
  %23 = load %struct.bio_st*, %struct.bio_st** %rbio, align 8, !tbaa !65
  %call146 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %23, i32 noundef 2, i64 noundef 0, i8* noundef null) #13
  %conv147 = trunc i64 %call146 to i32
  %tobool148.not = icmp eq i32 %conv147, 0
  br i1 %tobool148.not, label %if.then160, label %if.then149

if.then149:                                       ; preds = %land.lhs.true144
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %24 = load i64, i64* %options, align 8, !tbaa !67
  %and150 = and i64 %24, 128
  %tobool151.not = icmp eq i64 %and150, 0
  br i1 %tobool151.not, label %if.else153, label %if.then152

if.then152:                                       ; preds = %if.then149
  tail call void @SSL_set_shutdown(%struct.ssl_st* noundef nonnull %s, i32 noundef 2) #13
  %warn_alert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 12
  store i32 0, i32* %warn_alert, align 4, !tbaa !68
  br label %if.then160

if.else153:                                       ; preds = %if.then149
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ssl3_read_n, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 50, i32 noundef 294, i8* noundef null) #13
  br label %if.then160

if.else156:                                       ; preds = %while.body
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ssl3_read_n, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 211, i8* noundef null) #13
  br label %if.then160

if.then160:                                       ; preds = %land.lhs.true140, %if.then152, %if.else153, %land.lhs.true144, %if.else156
  %ret.0.ph = phi i32 [ -1, %if.else156 ], [ %call132, %land.lhs.true144 ], [ %call132, %if.else153 ], [ %call132, %if.then152 ], [ %call132, %land.lhs.true140 ]
  store i64 %left.0343, i64* %left6, align 8, !tbaa !40
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %25 = load i32, i32* %mode, align 8, !tbaa !69
  %and162 = and i32 %25, 16
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %cleanup200, label %land.lhs.true164, !llvm.loop !70

land.lhs.true164:                                 ; preds = %if.then160
  %26 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc166 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %26, i64 0, i32 25
  %27 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc166, align 8, !tbaa !58
  %enc_flags167 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %27, i64 0, i32 12
  %28 = load i32, i32* %enc_flags167, align 8, !tbaa !60
  %and168 = and i32 %28, 8
  %tobool169.not = icmp eq i32 %and168, 0
  %add171 = sub i64 0, %left.0343
  %cmp172 = icmp eq i64 %12, %add171
  %or.cond325 = select i1 %tobool169.not, i1 %cmp172, i1 false
  br i1 %or.cond325, label %if.then174, label %cleanup200, !llvm.loop !70

if.then174:                                       ; preds = %land.lhs.true164
  %call175 = tail call i32 @ssl3_release_read_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %cleanup200

if.end178:                                        ; preds = %if.then126
  %conv136354 = zext i32 %call132 to i64
  %add179 = add i64 %left.0343, %conv136354
  %29 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc181 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %29, i64 0, i32 25
  %30 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc181, align 8, !tbaa !58
  %enc_flags182 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %30, i64 0, i32 12
  %31 = load i32, i32* %enc_flags182, align 8, !tbaa !60
  %and183 = and i32 %31, 8
  %tobool184.not = icmp ne i32 %and183, 0
  %cmp186 = icmp ugt i64 %n.addr.1342, %add179
  %or.cond326 = select i1 %tobool184.not, i1 %cmp186, i1 false
  %n.addr.2 = select i1 %or.cond326, i64 %add179, i64 %n.addr.1342
  %cmp121 = icmp ult i64 %add179, %n.addr.2
  br i1 %cmp121, label %while.body, label %while.end, !llvm.loop !70

while.end:                                        ; preds = %if.end178
  %.pre353 = load i64, i64* %offset90, align 8, !tbaa !55
  %add193 = add i64 %.pre353, %n.addr.2
  store i64 %add193, i64* %offset90, align 8, !tbaa !55
  %sub194 = sub i64 %add179, %n.addr.2
  store i64 %sub194, i64* %left6, align 8, !tbaa !40
  %32 = load i64, i64* %packet_length42, align 8, !tbaa !53
  %add198 = add i64 %32, %n.addr.2
  store i64 %add198, i64* %packet_length42, align 8, !tbaa !53
  %rwstate199 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate199, align 8, !tbaa !66
  store i64 %n.addr.2, i64* %readbytes, align 8, !tbaa !25
  br label %cleanup200

cleanup200:                                       ; preds = %land.lhs.true164, %if.then160, %if.then174, %if.then63, %if.then2, %entry, %while.end, %if.then94, %if.then80
  %retval.2 = phi i32 [ 1, %if.then80 ], [ -1, %if.then94 ], [ 1, %while.end ], [ 0, %entry ], [ -1, %if.then2 ], [ 0, %if.then63 ], [ %ret.0.ph, %if.then174 ], [ %ret.0.ph, %if.then160 ], [ %ret.0.ph, %land.lhs.true164 ]
  ret i32 %retval.2
}

declare i32 @ssl3_setup_read_buffer(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #7

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_test_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare void @SSL_set_shutdown(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_write_bytes(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %buf_, i64 noundef %len, i64* nocapture noundef writeonly %written) local_unnamed_addr #0 {
entry:
  %tmpwrit = alloca i64, align 8
  %aad = alloca [13 x i8], align 1
  %mb_param = alloca %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, align 8
  %pipelens = alloca [32 x i64], align 16
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0
  %0 = bitcast i64* %tmpwrit to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !66
  %wnum = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 10
  %1 = load i64, i64* %wnum, align 8, !tbaa !71
  %cmp = icmp ugt i64 %1, %len
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %left = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 4
  %2 = load i64, i64* %left, align 8, !tbaa !40
  %cmp4.not = icmp eq i64 %2, 0
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %wpend_tot = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 14
  %3 = load i64, i64* %wpend_tot, align 8, !tbaa !72
  %add = add i64 %3, %1
  %cmp8 = icmp ugt i64 %add, %len
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ssl3_write_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 271, i8* noundef null) #13
  br label %cleanup382

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %4 = load i32, i32* %early_data_state, align 4, !tbaa !73
  %cmp9 = icmp eq i32 %4, 4
  br i1 %cmp9, label %land.lhs.true10, label %if.end12

land.lhs.true10:                                  ; preds = %if.end
  %call = tail call i32 @early_data_count_ok(%struct.ssl_st* noundef nonnull %s, i64 noundef %len, i64 noundef 0, i32 noundef 1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup382, label %land.lhs.true10.if.end12_crit_edge

land.lhs.true10.if.end12_crit_edge:               ; preds = %land.lhs.true10
  %.pre = load i64, i64* %left, align 8, !tbaa !40
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true10.if.end12_crit_edge, %if.end
  %5 = phi i64 [ %.pre, %land.lhs.true10.if.end12_crit_edge ], [ %2, %if.end ]
  store i64 0, i64* %wnum, align 8, !tbaa !71
  %cmp16 = icmp eq i64 %5, 0
  br i1 %cmp16, label %land.lhs.true17, label %if.end22

land.lhs.true17:                                  ; preds = %if.end12
  %key_update = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 99
  %6 = load i32, i32* %key_update, align 4, !tbaa !74
  %cmp18.not = icmp eq i32 %6, -1
  br i1 %cmp18.not, label %lor.lhs.false19, label %if.then21

lor.lhs.false19:                                  ; preds = %land.lhs.true17
  %extra_tickets_expected = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 88, i32 10
  %7 = load i32, i32* %extra_tickets_expected, align 4, !tbaa !75
  %cmp20 = icmp sgt i32 %7, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false19, %land.lhs.true17
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false19, %if.end12
  %call23 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end39, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.end22
  %call26 = tail call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end39

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %8 = load i32, i32* %early_data_state, align 4, !tbaa !73
  %cmp30.not = icmp eq i32 %8, 6
  br i1 %cmp30.not, label %if.end39, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %9 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !76
  %call32 = tail call i32 %9(%struct.ssl_st* noundef nonnull %s) #13
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %cleanup382, label %if.end35

if.end35:                                         ; preds = %if.then31
  %cmp36 = icmp eq i32 %call32, 0
  br i1 %cmp36, label %cleanup382, label %if.end39

if.end39:                                         ; preds = %if.end35, %land.lhs.true28, %land.lhs.true25, %if.end22
  %10 = load i64, i64* %left, align 8, !tbaa !40
  %cmp41.not = icmp eq i64 %10, 0
  br i1 %cmp41.not, label %if.end53, label %if.then42

if.then42:                                        ; preds = %if.end39
  %arrayidx43 = getelementptr inbounds i8, i8* %buf_, i64 %1
  %wpend_tot45 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 14
  %11 = load i64, i64* %wpend_tot45, align 8, !tbaa !72
  %call46 = call i32 @ssl3_write_pending(%struct.ssl_st* noundef nonnull %s, i32 noundef %type, i8* noundef %arrayidx43, i64 noundef %11, i64* noundef nonnull %tmpwrit) #14
  %cmp47 = icmp slt i32 %call46, 1
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.then42
  store i64 %1, i64* %wnum, align 8, !tbaa !71
  br label %cleanup382

if.end51:                                         ; preds = %if.then42
  %12 = load i64, i64* %tmpwrit, align 8, !tbaa !25
  %add52 = add i64 %12, %1
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end39
  %tot.0 = phi i64 [ %add52, %if.end51 ], [ %1, %if.end39 ]
  %cmp54 = icmp eq i32 %type, 23
  br i1 %cmp54, label %land.lhs.true55, label %if.else238

land.lhs.true55:                                  ; preds = %if.end53
  %call56 = tail call i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef nonnull %s) #13
  %conv = zext i32 %call56 to i64
  %mul = shl nuw nsw i64 %conv, 2
  %cmp57.not = icmp ugt i64 %mul, %len
  br i1 %cmp57.not, label %if.else238, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %13 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !77
  %cmp60 = icmp eq %struct.comp_ctx_st* %13, null
  br i1 %cmp60, label %land.lhs.true62, label %if.else238

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %14 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !78
  %cmp63 = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %14, null
  br i1 %cmp63, label %land.lhs.true65, label %if.else238

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %15 = load i64, i64* %flags, align 8, !tbaa !79
  %and = and i64 %15, 1024
  %tobool66.not = icmp eq i64 %and, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %if.else238

land.lhs.true67:                                  ; preds = %land.lhs.true65
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %16 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %16, i64 0, i32 25
  %17 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !58
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %17, i64 0, i32 12
  %18 = load i32, i32* %enc_flags, align 8, !tbaa !60
  %and68 = and i32 %18, 1
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else238, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %19 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !80
  %call71 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %19) #13
  %call72 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call71) #13
  %and73 = and i64 %call72, 4194304
  %cmp74.not = icmp eq i64 %and73, 0
  br i1 %cmp74.not, label %if.else238, label %if.then76

if.then76:                                        ; preds = %land.lhs.true70
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %20) #16
  %21 = bitcast %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #16
  %and77 = and i64 %conv, 4095
  %cmp78 = icmp eq i64 %and77, 0
  %sub = add nsw i64 %conv, -512
  %spec.select = select i1 %cmp78, i64 %sub, i64 %conv
  %cmp82 = icmp eq i64 %tot.0, 0
  br i1 %cmp82, label %if.then88, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.then76
  %buf85 = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %arrayidx, i64 0, i32 0
  %22 = load i8*, i8** %buf85, align 8, !tbaa !52
  %cmp86 = icmp eq i8* %22, null
  br i1 %cmp86, label %if.then88, label %if.else105

if.then88:                                        ; preds = %lor.lhs.false84, %if.then76
  %call89 = tail call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  %23 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !80
  %conv91 = trunc i64 %spec.select to i32
  %call92 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %23, i32 noundef 28, i32 noundef %conv91, i8* noundef null) #13
  %conv93 = sext i32 %call92 to i64
  %mul94 = shl nsw i64 %spec.select, 3
  %cmp95.not = icmp ugt i64 %mul94, %len
  %packlen.0.v = select i1 %cmp95.not, i64 2, i64 3
  %packlen.0 = shl nsw i64 %conv93, %packlen.0.v
  %call101 = tail call i32 @ssl3_setup_write_buffer(%struct.ssl_st* noundef nonnull %s, i64 noundef 1, i64 noundef %packlen.0) #13
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %cleanup.thread, label %if.end111

if.else105:                                       ; preds = %lor.lhs.false84
  %cmp106 = icmp eq i64 %tot.0, %len
  br i1 %cmp106, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.else105
  %call109 = tail call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  store i64 %len, i64* %written, align 8, !tbaa !25
  br label %cleanup.thread

if.end111:                                        ; preds = %if.else105, %if.then88
  %sub112 = sub i64 %len, %tot.0
  %mul113 = shl nsw i64 %spec.select, 2
  %cmp114627 = icmp ult i64 %sub112, %mul113
  br i1 %cmp114627, label %cleanup, label %if.end118.lr.ph

if.end118.lr.ph:                                  ; preds = %if.end111
  %alert_dispatch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  %mul131 = shl nsw i64 %spec.select, 3
  %interleave = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 3
  %arraydecay141 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  %arrayidx144 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 8
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %arrayidx146 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 9
  %arrayidx149 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 10
  %arrayidx150 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 11
  %arrayidx151 = getelementptr inbounds [13 x i8], [13 x i8]* %aad, i64 0, i64 12
  %out = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 0
  %inp = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 1
  %len153 = getelementptr inbounds %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM* %mb_param, i64 0, i32 2
  %len160 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 2
  %buf166 = getelementptr inbounds %struct.ssl3_buffer_st, %struct.ssl3_buffer_st* %arrayidx, i64 0, i32 0
  %arrayidx180 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 7
  %offset = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 3
  %wpend_tot203 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 14
  %wpend_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 17
  %wpend_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 15
  %wpend_ret = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 16
  %arrayidx196 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 6
  %arrayidx196.1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 5
  %arrayidx196.2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 4
  %arrayidx196.3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 3
  %arrayidx196.4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 2
  %arrayidx196.5 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 1
  %arrayidx196.6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  br label %if.end118

if.end118:                                        ; preds = %if.end118.lr.ph, %if.end232
  %tot.1629 = phi i64 [ %tot.0, %if.end118.lr.ph ], [ %add234, %if.end232 ]
  %n.0628 = phi i64 [ %sub112, %if.end118.lr.ph ], [ %sub233, %if.end232 ]
  %24 = load i32, i32* %alert_dispatch, align 4, !tbaa !81
  %tobool120.not = icmp eq i32 %24, 0
  br i1 %tobool120.not, label %if.end130, label %if.then121

if.then121:                                       ; preds = %if.end118
  %25 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl_dispatch_alert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %25, i64 0, i32 16
  %26 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_dispatch_alert, align 8, !tbaa !82
  %call123 = call i32 %26(%struct.ssl_st* noundef nonnull %s) #13
  %cmp124 = icmp slt i32 %call123, 1
  br i1 %cmp124, label %if.then126, label %if.end130

if.then126:                                       ; preds = %if.then121
  store i64 %tot.1629, i64* %wnum, align 8, !tbaa !71
  br label %cleanup.thread

if.end130:                                        ; preds = %if.then121, %if.end118
  %cmp132.not = icmp ult i64 %n.0628, %mul131
  %spec.select671 = select i1 %cmp132.not, i32 4, i32 8
  %spec.select672 = select i1 %cmp132.not, i64 %mul113, i64 %mul131
  store i32 %spec.select671, i32* %interleave, align 8, !tbaa !83
  %call142 = call i8* @memcpy(i8* noundef nonnull %20, i8* noundef nonnull %arraydecay141, i64 noundef 8) #13
  store i8 23, i8* %arrayidx144, align 1, !tbaa !56
  %27 = load i32, i32* %version, align 8, !tbaa !85
  %28 = lshr i32 %27, 8
  %conv145 = trunc i32 %28 to i8
  store i8 %conv145, i8* %arrayidx146, align 1, !tbaa !56
  %conv148 = trunc i32 %27 to i8
  store i8 %conv148, i8* %arrayidx149, align 1, !tbaa !56
  store i8 0, i8* %arrayidx150, align 1, !tbaa !56
  store i8 0, i8* %arrayidx151, align 1, !tbaa !56
  store i8* null, i8** %out, align 8, !tbaa !86
  store i8* %20, i8** %inp, align 8, !tbaa !87
  store i64 %spec.select672, i64* %len153, align 8, !tbaa !88
  %29 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !80
  %call155 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %29, i32 noundef 25, i32 noundef 32, i8* noundef nonnull %21) #13
  %conv156 = sext i32 %call155 to i64
  %cmp157 = icmp slt i32 %call155, 1
  br i1 %cmp157, label %cleanup, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %if.end130
  %30 = load i64, i64* %len160, align 8, !tbaa !62
  %cmp161 = icmp ult i64 %30, %conv156
  br i1 %cmp161, label %cleanup, label %if.end165

if.end165:                                        ; preds = %lor.lhs.false159
  %31 = load i8*, i8** %buf166, align 8, !tbaa !52
  store i8* %31, i8** %out, align 8, !tbaa !86
  %arrayidx168 = getelementptr inbounds i8, i8* %buf_, i64 %tot.1629
  store i8* %arrayidx168, i8** %inp, align 8, !tbaa !87
  store i64 %spec.select672, i64* %len153, align 8, !tbaa !88
  %32 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !80
  %call172 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %32, i32 noundef 26, i32 noundef 32, i8* noundef nonnull %21) #13
  %cmp173 = icmp slt i32 %call172, 1
  br i1 %cmp173, label %cleanup.thread, label %if.end176

if.end176:                                        ; preds = %if.end165
  %33 = load i32, i32* %interleave, align 8, !tbaa !83
  %34 = load i8, i8* %arrayidx180, align 1, !tbaa !56
  %35 = trunc i32 %33 to i8
  %conv183 = add i8 %34, %35
  store i8 %conv183, i8* %arrayidx180, align 1, !tbaa !56
  %conv187 = zext i8 %conv183 to i32
  %cmp189 = icmp ugt i32 %33, %conv187
  br i1 %cmp189, label %land.rhs, label %if.end200

land.rhs:                                         ; preds = %if.end176
  %36 = load i8, i8* %arrayidx196, align 1, !tbaa !56
  %inc = add i8 %36, 1
  store i8 %inc, i8* %arrayidx196, align 1, !tbaa !56
  %cmp198 = icmp eq i8 %inc, 0
  br i1 %cmp198, label %land.rhs.1, label %if.end200, !llvm.loop !89

land.rhs.1:                                       ; preds = %land.rhs
  %37 = load i8, i8* %arrayidx196.1, align 1, !tbaa !56
  %inc.1 = add i8 %37, 1
  store i8 %inc.1, i8* %arrayidx196.1, align 1, !tbaa !56
  %cmp198.1 = icmp eq i8 %inc.1, 0
  br i1 %cmp198.1, label %land.rhs.2, label %if.end200, !llvm.loop !89

land.rhs.2:                                       ; preds = %land.rhs.1
  %38 = load i8, i8* %arrayidx196.2, align 1, !tbaa !56
  %inc.2 = add i8 %38, 1
  store i8 %inc.2, i8* %arrayidx196.2, align 1, !tbaa !56
  %cmp198.2 = icmp eq i8 %inc.2, 0
  br i1 %cmp198.2, label %land.rhs.3, label %if.end200, !llvm.loop !89

land.rhs.3:                                       ; preds = %land.rhs.2
  %39 = load i8, i8* %arrayidx196.3, align 1, !tbaa !56
  %inc.3 = add i8 %39, 1
  store i8 %inc.3, i8* %arrayidx196.3, align 1, !tbaa !56
  %cmp198.3 = icmp eq i8 %inc.3, 0
  br i1 %cmp198.3, label %land.rhs.4, label %if.end200, !llvm.loop !89

land.rhs.4:                                       ; preds = %land.rhs.3
  %40 = load i8, i8* %arrayidx196.4, align 1, !tbaa !56
  %inc.4 = add i8 %40, 1
  store i8 %inc.4, i8* %arrayidx196.4, align 1, !tbaa !56
  %cmp198.4 = icmp eq i8 %inc.4, 0
  br i1 %cmp198.4, label %land.rhs.5, label %if.end200, !llvm.loop !89

land.rhs.5:                                       ; preds = %land.rhs.4
  %41 = load i8, i8* %arrayidx196.5, align 1, !tbaa !56
  %inc.5 = add i8 %41, 1
  store i8 %inc.5, i8* %arrayidx196.5, align 1, !tbaa !56
  %cmp198.5 = icmp eq i8 %inc.5, 0
  br i1 %cmp198.5, label %land.rhs.6, label %if.end200, !llvm.loop !89

land.rhs.6:                                       ; preds = %land.rhs.5
  %42 = load i8, i8* %arrayidx196.6, align 1, !tbaa !56
  %inc.6 = add i8 %42, 1
  store i8 %inc.6, i8* %arrayidx196.6, align 1, !tbaa !56
  br label %if.end200

if.end200:                                        ; preds = %land.rhs, %land.rhs.1, %land.rhs.2, %land.rhs.3, %land.rhs.4, %land.rhs.5, %land.rhs.6, %if.end176
  store i64 0, i64* %offset, align 8, !tbaa !55
  store i64 %conv156, i64* %left, align 8, !tbaa !40
  store i64 %spec.select672, i64* %wpend_tot203, align 8, !tbaa !72
  store i8* %arrayidx168, i8** %wpend_buf, align 8, !tbaa !90
  store i32 23, i32* %wpend_type, align 8, !tbaa !91
  store i64 %spec.select672, i64* %wpend_ret, align 8, !tbaa !92
  %call209 = call i32 @ssl3_write_pending(%struct.ssl_st* noundef nonnull %s, i32 noundef 23, i8* noundef %arrayidx168, i64 noundef %spec.select672, i64* noundef nonnull %tmpwrit) #14
  %cmp210 = icmp slt i32 %call209, 1
  br i1 %cmp210, label %if.then212, label %if.end226

if.then212:                                       ; preds = %if.end200
  %cmp213 = icmp slt i32 %call209, 0
  br i1 %cmp213, label %land.lhs.true215, label %if.end223

land.lhs.true215:                                 ; preds = %if.then212
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %43 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !93
  %tobool216.not = icmp eq %struct.bio_st* %43, null
  br i1 %tobool216.not, label %if.then221, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %land.lhs.true215
  %call219 = call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %43, i32 noundef 8) #13
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.then221, label %if.end223

if.then221:                                       ; preds = %lor.lhs.false217, %land.lhs.true215
  %call222 = call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %lor.lhs.false217, %if.then212
  store i64 %tot.1629, i64* %wnum, align 8, !tbaa !71
  br label %cleanup.thread

if.end226:                                        ; preds = %if.end200
  %44 = load i64, i64* %tmpwrit, align 8, !tbaa !25
  %cmp227 = icmp eq i64 %n.0628, %44
  br i1 %cmp227, label %if.then229, label %if.end232

if.then229:                                       ; preds = %if.end226
  %call230 = call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  %add231 = add i64 %n.0628, %tot.1629
  store i64 %add231, i64* %written, align 8, !tbaa !25
  br label %cleanup.thread

if.end232:                                        ; preds = %if.end226
  %sub233 = sub i64 %n.0628, %44
  %add234 = add i64 %44, %tot.1629
  %cmp114 = icmp ult i64 %sub233, %mul113
  br i1 %cmp114, label %cleanup, label %if.end118

cleanup.thread:                                   ; preds = %if.end165, %if.then229, %if.end223, %if.then126, %if.then108, %if.then88
  %retval.0.ph = phi i32 [ -1, %if.then88 ], [ 1, %if.then108 ], [ %call123, %if.then126 ], [ %call209, %if.end223 ], [ 1, %if.then229 ], [ -1, %if.end165 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #16
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %20) #16
  br label %cleanup382

cleanup:                                          ; preds = %if.end130, %lor.lhs.false159, %if.end232, %if.end111
  %tot.1624 = phi i64 [ %tot.0, %if.end111 ], [ %add234, %if.end232 ], [ %tot.1629, %lor.lhs.false159 ], [ %tot.1629, %if.end130 ]
  %call117 = call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #16
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %20) #16
  br label %if.end254

if.else238:                                       ; preds = %land.lhs.true70, %land.lhs.true67, %land.lhs.true65, %land.lhs.true62, %land.lhs.true59, %land.lhs.true55, %if.end53
  %cmp239 = icmp eq i64 %tot.0, %len
  br i1 %cmp239, label %if.then241, label %if.end254

if.then241:                                       ; preds = %if.else238
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %45 = load i32, i32* %mode, align 8, !tbaa !69
  %and242 = and i32 %45, 16
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %if.end252, label %land.lhs.true244

land.lhs.true244:                                 ; preds = %if.then241
  %method245 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %46 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method245, align 8, !tbaa !57
  %ssl3_enc246 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %46, i64 0, i32 25
  %47 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc246, align 8, !tbaa !58
  %enc_flags247 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %47, i64 0, i32 12
  %48 = load i32, i32* %enc_flags247, align 8, !tbaa !60
  %and248 = and i32 %48, 8
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.then250, label %if.end252

if.then250:                                       ; preds = %land.lhs.true244
  %call251 = tail call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %land.lhs.true244, %if.then241
  store i64 %len, i64* %written, align 8, !tbaa !25
  br label %cleanup382

if.end254:                                        ; preds = %cleanup, %if.else238
  %tot.3 = phi i64 [ %tot.0, %if.else238 ], [ %tot.1624, %cleanup ]
  %sub255 = sub i64 %len, %tot.3
  %call256 = call i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef nonnull %s) #13
  %conv257 = zext i32 %call256 to i64
  %call258 = call i32 @ssl_get_split_send_fragment(%struct.ssl_st* noundef nonnull %s) #13
  %conv259 = zext i32 %call258 to i64
  %max_pipelines = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 87
  %49 = load i64, i64* %max_pipelines, align 8, !tbaa !94
  %cmp260 = icmp ugt i64 %49, 32
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %if.end254
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ssl3_write_bytes, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup382

if.end263:                                        ; preds = %if.end254
  %cmp264 = icmp eq i64 %49, 0
  br i1 %cmp264, label %if.then283, label %lor.lhs.false266

lor.lhs.false266:                                 ; preds = %if.end263
  %enc_write_ctx267 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %50 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx267, align 8, !tbaa !80
  %cmp268 = icmp eq %struct.evp_cipher_ctx_st* %50, null
  br i1 %cmp268, label %if.then283, label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %lor.lhs.false266
  %call272 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %50) #13
  %call273 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %call272) #13
  %and274 = and i64 %call273, 8388608
  %cmp275 = icmp eq i64 %and274, 0
  br i1 %cmp275, label %if.then283, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %lor.lhs.false270
  %method278 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %51 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method278, align 8, !tbaa !57
  %ssl3_enc279 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %51, i64 0, i32 25
  %52 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc279, align 8, !tbaa !58
  %enc_flags280 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %52, i64 0, i32 12
  %53 = load i32, i32* %enc_flags280, align 8, !tbaa !60
  %and281 = and i32 %53, 1
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %if.then283, label %if.end284

if.then283:                                       ; preds = %lor.lhs.false277, %lor.lhs.false270, %lor.lhs.false266, %if.end263
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %lor.lhs.false277
  %maxpipes.0 = phi i64 [ 1, %if.then283 ], [ %49, %lor.lhs.false277 ]
  %cmp285 = icmp eq i32 %call256, 0
  %cmp288 = icmp eq i32 %call258, 0
  %or.cond = select i1 %cmp285, i1 true, i1 %cmp288
  %cmp291 = icmp ugt i32 %call258, %call256
  %or.cond597 = select i1 %or.cond, i1 true, i1 %cmp291
  br i1 %or.cond597, label %if.then293, label %for.cond295.preheader

for.cond295.preheader:                            ; preds = %if.end284
  %54 = bitcast [32 x i64]* %pipelens to i8*
  %arraydecay336 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 0
  %mode350 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %conv257, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert691 = insertelement <2 x i64> poison, i64 %conv257, i64 0
  %broadcast.splat692 = shufflevector <2 x i64> %broadcast.splatinsert691, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %for.cond295

if.then293:                                       ; preds = %if.end284
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 601, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ssl3_write_bytes, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup382

for.cond295:                                      ; preds = %for.cond295.preheader, %cleanup375
  %n.1 = phi i64 [ %sub373, %cleanup375 ], [ %sub255, %for.cond295.preheader ]
  %tot.4 = phi i64 [ %add374, %cleanup375 ], [ %tot.3, %for.cond295.preheader ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %54) #16
  %cmp297 = icmp eq i64 %n.1, 0
  br i1 %cmp297, label %if.end303, label %if.else300

if.else300:                                       ; preds = %for.cond295
  %sub301 = add i64 %n.1, -1
  %div = udiv i64 %sub301, %conv259
  %add302 = add nuw i64 %div, 1
  br label %if.end303

if.end303:                                        ; preds = %for.cond295, %if.else300
  %numpipes.0 = phi i64 [ %add302, %if.else300 ], [ 1, %for.cond295 ]
  %cmp304 = icmp ugt i64 %numpipes.0, %maxpipes.0
  %spec.select598 = select i1 %cmp304, i64 %maxpipes.0, i64 %numpipes.0
  %div308 = udiv i64 %n.1, %spec.select598
  %rem = urem i64 %n.1, %spec.select598
  %cmp309.not = icmp ult i64 %div308, %conv257
  br i1 %cmp309.not, label %if.else318, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end303
  %umax = call i64 @llvm.umax.i64(i64 %spec.select598, i64 1)
  %min.iters.check = icmp ult i64 %umax, 4
  br i1 %min.iters.check, label %for.body.preheader693, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %umax, -4
  %55 = add i64 %n.vec, -4
  %56 = lshr exact i64 %55, 2
  %57 = add nuw nsw i64 %56, 1
  %xtraiter = and i64 %57, 7
  %58 = icmp ult i64 %55, 28
  br i1 %58, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %57, 9223372036854775800
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.7, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.7, %vector.body ]
  %59 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index
  %60 = bitcast i64* %59 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %60, align 16, !tbaa !25
  %61 = getelementptr inbounds i64, i64* %59, i64 2
  %62 = bitcast i64* %61 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %62, align 16, !tbaa !25
  %index.next = or i64 %index, 4
  %63 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next
  %64 = bitcast i64* %63 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %64, align 16, !tbaa !25
  %65 = getelementptr inbounds i64, i64* %63, i64 2
  %66 = bitcast i64* %65 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %66, align 16, !tbaa !25
  %index.next.1 = or i64 %index, 8
  %67 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next.1
  %68 = bitcast i64* %67 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %68, align 16, !tbaa !25
  %69 = getelementptr inbounds i64, i64* %67, i64 2
  %70 = bitcast i64* %69 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %70, align 16, !tbaa !25
  %index.next.2 = or i64 %index, 12
  %71 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next.2
  %72 = bitcast i64* %71 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %72, align 16, !tbaa !25
  %73 = getelementptr inbounds i64, i64* %71, i64 2
  %74 = bitcast i64* %73 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %74, align 16, !tbaa !25
  %index.next.3 = or i64 %index, 16
  %75 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next.3
  %76 = bitcast i64* %75 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %76, align 16, !tbaa !25
  %77 = getelementptr inbounds i64, i64* %75, i64 2
  %78 = bitcast i64* %77 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %78, align 16, !tbaa !25
  %index.next.4 = or i64 %index, 20
  %79 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next.4
  %80 = bitcast i64* %79 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %80, align 16, !tbaa !25
  %81 = getelementptr inbounds i64, i64* %79, i64 2
  %82 = bitcast i64* %81 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %82, align 16, !tbaa !25
  %index.next.5 = or i64 %index, 24
  %83 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next.5
  %84 = bitcast i64* %83 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %84, align 16, !tbaa !25
  %85 = getelementptr inbounds i64, i64* %83, i64 2
  %86 = bitcast i64* %85 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %86, align 16, !tbaa !25
  %index.next.6 = or i64 %index, 28
  %87 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.next.6
  %88 = bitcast i64* %87 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %88, align 16, !tbaa !25
  %89 = getelementptr inbounds i64, i64* %87, i64 2
  %90 = bitcast i64* %89 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %90, align 16, !tbaa !25
  %index.next.7 = add nuw i64 %index, 32
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !95

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %91 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %index.epil
  %92 = bitcast i64* %91 to <2 x i64>*
  store <2 x i64> %broadcast.splat, <2 x i64>* %92, align 16, !tbaa !25
  %93 = getelementptr inbounds i64, i64* %91, i64 2
  %94 = bitcast i64* %93 to <2 x i64>*
  store <2 x i64> %broadcast.splat692, <2 x i64>* %94, align 16, !tbaa !25
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !97

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %if.end334, label %for.body.preheader693

for.body.preheader693:                            ; preds = %for.body.preheader, %middle.block
  %j296.0630.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader693, %for.body
  %j296.0630 = phi i64 [ %inc316, %for.body ], [ %j296.0630.ph, %for.body.preheader693 ]
  %arrayidx315 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %j296.0630
  store i64 %conv257, i64* %arrayidx315, align 8, !tbaa !25
  %inc316 = add nuw i64 %j296.0630, 1
  %exitcond.not = icmp eq i64 %inc316, %umax
  br i1 %exitcond.not, label %if.end334, label %for.body, !llvm.loop !99

if.else318:                                       ; preds = %if.end303
  %umax648 = call i64 @llvm.umax.i64(i64 %spec.select598, i64 1)
  %95 = add i64 %umax648, -1
  %xtraiter712 = and i64 %umax648, 3
  %96 = icmp ult i64 %95, 3
  br i1 %96, label %if.end334.loopexit.unr-lcssa, label %if.else318.new

if.else318.new:                                   ; preds = %if.else318
  %unroll_iter715 = and i64 %umax648, -4
  br label %for.body323

for.body323:                                      ; preds = %for.body323, %if.else318.new
  %j296.1631 = phi i64 [ 0, %if.else318.new ], [ %inc332.3, %for.body323 ]
  %niter716 = phi i64 [ 0, %if.else318.new ], [ %niter716.next.3, %for.body323 ]
  %arrayidx324 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %j296.1631
  %cmp325 = icmp ult i64 %j296.1631, %rem
  %inc329 = zext i1 %cmp325 to i64
  %spec.select599 = add i64 %div308, %inc329
  store i64 %spec.select599, i64* %arrayidx324, align 16, !tbaa !25
  %inc332 = or i64 %j296.1631, 1
  %arrayidx324.1 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %inc332
  %cmp325.1 = icmp ult i64 %inc332, %rem
  %inc329.1 = zext i1 %cmp325.1 to i64
  %spec.select599.1 = add i64 %div308, %inc329.1
  store i64 %spec.select599.1, i64* %arrayidx324.1, align 8, !tbaa !25
  %inc332.1 = or i64 %j296.1631, 2
  %arrayidx324.2 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %inc332.1
  %cmp325.2 = icmp ult i64 %inc332.1, %rem
  %inc329.2 = zext i1 %cmp325.2 to i64
  %spec.select599.2 = add i64 %div308, %inc329.2
  store i64 %spec.select599.2, i64* %arrayidx324.2, align 16, !tbaa !25
  %inc332.2 = or i64 %j296.1631, 3
  %arrayidx324.3 = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %inc332.2
  %cmp325.3 = icmp ult i64 %inc332.2, %rem
  %inc329.3 = zext i1 %cmp325.3 to i64
  %spec.select599.3 = add i64 %div308, %inc329.3
  store i64 %spec.select599.3, i64* %arrayidx324.3, align 8, !tbaa !25
  %inc332.3 = add nuw i64 %j296.1631, 4
  %niter716.next.3 = add i64 %niter716, 4
  %niter716.ncmp.3 = icmp eq i64 %niter716.next.3, %unroll_iter715
  br i1 %niter716.ncmp.3, label %if.end334.loopexit.unr-lcssa, label %for.body323, !llvm.loop !101

if.end334.loopexit.unr-lcssa:                     ; preds = %for.body323, %if.else318
  %j296.1631.unr = phi i64 [ 0, %if.else318 ], [ %inc332.3, %for.body323 ]
  %lcmp.mod714.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod714.not, label %if.end334, label %for.body323.epil

for.body323.epil:                                 ; preds = %if.end334.loopexit.unr-lcssa, %for.body323.epil
  %j296.1631.epil = phi i64 [ %inc332.epil, %for.body323.epil ], [ %j296.1631.unr, %if.end334.loopexit.unr-lcssa ]
  %epil.iter713 = phi i64 [ %epil.iter713.next, %for.body323.epil ], [ 0, %if.end334.loopexit.unr-lcssa ]
  %arrayidx324.epil = getelementptr inbounds [32 x i64], [32 x i64]* %pipelens, i64 0, i64 %j296.1631.epil
  %cmp325.epil = icmp ult i64 %j296.1631.epil, %rem
  %inc329.epil = zext i1 %cmp325.epil to i64
  %spec.select599.epil = add i64 %div308, %inc329.epil
  store i64 %spec.select599.epil, i64* %arrayidx324.epil, align 8, !tbaa !25
  %inc332.epil = add nuw i64 %j296.1631.epil, 1
  %epil.iter713.next = add i64 %epil.iter713, 1
  %epil.iter713.cmp.not = icmp eq i64 %epil.iter713.next, %xtraiter712
  br i1 %epil.iter713.cmp.not, label %if.end334, label %for.body323.epil, !llvm.loop !102

if.end334:                                        ; preds = %for.body, %if.end334.loopexit.unr-lcssa, %for.body323.epil, %middle.block
  %arrayidx335 = getelementptr inbounds i8, i8* %buf_, i64 %tot.4
  %call337 = call i32 @do_ssl3_write(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %arrayidx335, i64* noundef nonnull %arraydecay336, i64 noundef %spec.select598, i32 noundef 0, i64* noundef nonnull %tmpwrit) #14
  %cmp338 = icmp slt i32 %call337, 1
  br i1 %cmp338, label %if.then340, label %if.end343

if.then340:                                       ; preds = %if.end334
  store i64 %tot.4, i64* %wnum, align 8, !tbaa !71
  br label %cleanup375.thread

if.end343:                                        ; preds = %if.end334
  %97 = load i64, i64* %tmpwrit, align 8, !tbaa !25
  %cmp344 = icmp eq i64 %n.1, %97
  br i1 %cmp344, label %land.lhs.true357, label %lor.lhs.false346

lor.lhs.false346:                                 ; preds = %if.end343
  br i1 %cmp54, label %land.lhs.true349, label %cleanup375

land.lhs.true349:                                 ; preds = %lor.lhs.false346
  %98 = load i32, i32* %mode350, align 8, !tbaa !69
  %and351 = and i32 %98, 1
  %tobool352.not = icmp eq i32 %and351, 0
  br i1 %tobool352.not, label %cleanup375, label %if.then353

if.then353:                                       ; preds = %land.lhs.true349
  %empty_fragment_done = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 8
  store i32 0, i32* %empty_fragment_done, align 4, !tbaa !103
  br label %if.end370

land.lhs.true357:                                 ; preds = %if.end343
  %empty_fragment_done603 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 8
  store i32 0, i32* %empty_fragment_done603, align 4, !tbaa !103
  %99 = load i32, i32* %mode350, align 8, !tbaa !69
  %and359 = and i32 %99, 16
  %cmp360.not = icmp eq i32 %and359, 0
  br i1 %cmp360.not, label %if.end370, label %land.lhs.true362

land.lhs.true362:                                 ; preds = %land.lhs.true357
  %method363 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %100 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method363, align 8, !tbaa !57
  %ssl3_enc364 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %100, i64 0, i32 25
  %101 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc364, align 8, !tbaa !58
  %enc_flags365 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %101, i64 0, i32 12
  %102 = load i32, i32* %enc_flags365, align 8, !tbaa !60
  %and366 = and i32 %102, 8
  %tobool367.not = icmp eq i32 %and366, 0
  br i1 %tobool367.not, label %if.then368, label %if.end370

if.then368:                                       ; preds = %land.lhs.true362
  %call369 = call i32 @ssl3_release_write_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end370

if.end370:                                        ; preds = %if.then353, %if.then368, %land.lhs.true362, %land.lhs.true357
  %103 = phi i64 [ %97, %if.then353 ], [ %n.1, %if.then368 ], [ %n.1, %land.lhs.true362 ], [ %n.1, %land.lhs.true357 ]
  %add371 = add i64 %103, %tot.4
  store i64 %add371, i64* %written, align 8, !tbaa !25
  br label %cleanup375.thread

cleanup375.thread:                                ; preds = %if.end370, %if.then340
  %retval.3.ph = phi i32 [ %call337, %if.then340 ], [ 1, %if.end370 ]
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %54) #16
  br label %cleanup382

cleanup375:                                       ; preds = %lor.lhs.false346, %land.lhs.true349
  %sub373 = sub i64 %n.1, %97
  %add374 = add i64 %97, %tot.4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %54) #16
  br label %for.cond295

cleanup382:                                       ; preds = %cleanup375.thread, %cleanup.thread, %if.end35, %if.then31, %land.lhs.true10, %if.then293, %if.then262, %if.end252, %if.then48, %if.then
  %retval.4 = phi i32 [ -1, %if.then ], [ %call46, %if.then48 ], [ 1, %if.end252 ], [ -1, %if.then262 ], [ -1, %if.then293 ], [ -1, %land.lhs.true10 ], [ %call32, %if.then31 ], [ -1, %if.end35 ], [ %retval.0.ph, %cleanup.thread ], [ %retval.3.ph, %cleanup375.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.4
}

declare i32 @early_data_count_ok(%struct.ssl_st* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_statem_set_in_init(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_write_pending(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef readnone %buf, i64 noundef %len, i64* nocapture noundef writeonly %written) local_unnamed_addr #0 {
entry:
  %wpend_tot = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 14
  %0 = load i64, i64* %wpend_tot, align 8, !tbaa !72
  %cmp = icmp ugt i64 %0, %len
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %1 = load i32, i32* %mode, align 8, !tbaa !69
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false4

land.lhs.true:                                    ; preds = %lor.lhs.false
  %wpend_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 17
  %2 = load i8*, i8** %wpend_buf, align 8, !tbaa !90
  %cmp3.not = icmp eq i8* %2, %buf
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %wpend_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 15
  %3 = load i32, i32* %wpend_type, align 8, !tbaa !91
  %cmp6.not = icmp eq i32 %3, %type
  br i1 %cmp6.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %lor.lhs.false4
  %numwpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 4
  %wbio = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 3
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  br label %for.cond.outer

if.then:                                          ; preds = %lor.lhs.false4, %land.lhs.true, %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1170, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl3_write_pending, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 127, i8* noundef null) #13
  br label %cleanup

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %4 = phi i64 [ %.pre, %for.cond.outer ], [ %.be, %for.cond.backedge ]
  %tmpwrit.0 = phi i64 [ %tmpwrit.0.ph, %for.cond.outer ], [ %conv26, %for.cond.backedge ]
  %cmp7 = icmp eq i64 %4, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %for.cond
  %5 = load i64, i64* %numwpipes, align 8, !tbaa !104
  %sub = add i64 %5, -1
  %cmp10 = icmp ult i64 %currbuf.0.ph, %sub
  br i1 %cmp10, label %for.cond.outer, label %if.end12

for.cond.outer:                                   ; preds = %land.lhs.true8, %for.cond.preheader
  %currbuf.0.ph = phi i64 [ 0, %for.cond.preheader ], [ %add41, %land.lhs.true8 ]
  %tmpwrit.0.ph = phi i64 [ 0, %for.cond.preheader ], [ %tmpwrit.0, %land.lhs.true8 ]
  %left = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %currbuf.0.ph, i32 4
  %buf17 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %currbuf.0.ph, i32 0
  %offset = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %currbuf.0.ph, i32 3
  %add41 = add i64 %currbuf.0.ph, 1
  %.pre = load i64, i64* %left, align 8, !tbaa !40
  br label %for.cond

if.end12:                                         ; preds = %land.lhs.true8, %for.cond
  %call = tail call i32* @__errno_location() #15
  store i32 0, i32* %call, align 4, !tbaa !64
  %6 = load %struct.bio_st*, %struct.bio_st** %wbio, align 8, !tbaa !93
  %cmp13.not = icmp eq %struct.bio_st* %6, null
  br i1 %cmp13.not, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %if.end12
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1202, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ssl3_write_pending, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 128, i8* noundef null) #13
  br label %if.then53

if.end28:                                         ; preds = %if.end12
  store i32 2, i32* %rwstate, align 8, !tbaa !66
  %7 = load i8*, i8** %buf17, align 8, !tbaa !52
  %8 = load i64, i64* %offset, align 8, !tbaa !55
  %arrayidx19 = getelementptr inbounds i8, i8* %7, i64 %8
  %conv = trunc i64 %4 to i32
  %call22 = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %6, i8* noundef %arrayidx19, i32 noundef %conv) #13
  %cmp23 = icmp sgt i32 %call22, -1
  %conv26 = sext i32 %call22 to i64
  %spec.select = select i1 %cmp23, i64 %conv26, i64 %tmpwrit.0
  br i1 %cmp23, label %land.lhs.true31, label %if.then53

land.lhs.true31:                                  ; preds = %if.end28
  %9 = load i64, i64* %left, align 8, !tbaa !40
  %cmp34 = icmp eq i64 %9, %spec.select
  br i1 %cmp34, label %if.then36, label %if.else50

if.then36:                                        ; preds = %land.lhs.true31
  store i64 0, i64* %left, align 8, !tbaa !40
  %10 = load i64, i64* %offset, align 8, !tbaa !55
  %add = add i64 %10, %spec.select
  store i64 %add, i64* %offset, align 8, !tbaa !55
  %11 = load i64, i64* %numwpipes, align 8, !tbaa !104
  %cmp44 = icmp ult i64 %add41, %11
  br i1 %cmp44, label %for.cond.backedge, label %if.end47

if.end47:                                         ; preds = %if.then36
  store i32 1, i32* %rwstate, align 8, !tbaa !66
  %wpend_ret = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 16
  %12 = load i64, i64* %wpend_ret, align 8, !tbaa !92
  store i64 %12, i64* %written, align 8, !tbaa !25
  br label %cleanup

if.else50:                                        ; preds = %land.lhs.true31
  %cmp51 = icmp eq i32 %call22, 0
  br i1 %cmp51, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.end28, %if.else50, %if.end28.thread
  %i.0120125 = phi i32 [ -1, %if.end28.thread ], [ %call22, %if.end28 ], [ 0, %if.else50 ]
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %13 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %13, i64 0, i32 25
  %14 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !58
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %14, i64 0, i32 12
  %15 = load i32, i32* %enc_flags, align 8, !tbaa !60
  %and54 = and i32 %15, 8
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %cleanup, label %if.then56

if.then56:                                        ; preds = %if.then53
  store i64 0, i64* %left, align 8, !tbaa !40
  br label %cleanup

if.end61:                                         ; preds = %if.else50
  %16 = load i64, i64* %offset, align 8, !tbaa !55
  %add64 = add i64 %16, %spec.select
  store i64 %add64, i64* %offset, align 8, !tbaa !55
  %sub67 = sub i64 %9, %spec.select
  store i64 %sub67, i64* %left, align 8, !tbaa !40
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end61, %if.then36
  %.be = phi i64 [ %sub67, %if.end61 ], [ 0, %if.then36 ]
  br label %for.cond

cleanup:                                          ; preds = %if.then53, %if.then56, %if.end47, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.end47 ], [ %i.0120125, %if.then56 ], [ %i.0120125, %if.then53 ]
  ret i32 %retval.0
}

declare i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ssl3_setup_write_buffer(%struct.ssl_st* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ssl_get_split_send_fragment(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @do_ssl3_write(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %buf, i64* nocapture noundef readonly %pipelens, i64 noundef %numpipes, i32 noundef %create_empty_fragment, i64* nocapture noundef writeonly %written) local_unnamed_addr #0 {
entry:
  %pkt = alloca [32 x %struct.wpacket_st], align 16
  %wr = alloca [32 x %struct.ssl3_record_st], align 16
  %prefix_len = alloca i64, align 8
  %len = alloca i64, align 8
  %tmppipelen = alloca i64, align 8
  %compressdata = alloca i8*, align 8
  %mac = alloca i8*, align 8
  %origlen = alloca i64, align 8
  %mac520 = alloca i8*, align 8
  %ctype = alloca i8, align 1
  %0 = bitcast [32 x %struct.wpacket_st]* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 1792, i8* nonnull %0) #16
  %1 = bitcast [32 x %struct.ssl3_record_st]* %wr to i8*
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* nonnull %1) #16
  %2 = bitcast i64* %prefix_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store i64 0, i64* %prefix_len, align 8, !tbaa !25
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  %cmp1044.not = icmp eq i64 %numpipes, 0
  br i1 %cmp1044.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %min.iters.check = icmp ult i64 %numpipes, 4
  br i1 %min.iters.check, label %for.body.preheader1104, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %numpipes, -4
  %4 = add i64 %n.vec, -4
  %5 = lshr exact i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %xtraiter = and i64 %6, 3
  %7 = icmp ult i64 %4, 12
  br i1 %7, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %6, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %30, %vector.body ]
  %vec.phi1094 = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %31, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %8 = getelementptr inbounds i64, i64* %pipelens, i64 %index
  %9 = bitcast i64* %8 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %9, align 8, !tbaa !25
  %10 = getelementptr inbounds i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  %wide.load1095 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !25
  %12 = add <2 x i64> %wide.load, %vec.phi
  %13 = add <2 x i64> %wide.load1095, %vec.phi1094
  %index.next = or i64 %index, 4
  %14 = getelementptr inbounds i64, i64* %pipelens, i64 %index.next
  %15 = bitcast i64* %14 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %15, align 8, !tbaa !25
  %16 = getelementptr inbounds i64, i64* %14, i64 2
  %17 = bitcast i64* %16 to <2 x i64>*
  %wide.load1095.1 = load <2 x i64>, <2 x i64>* %17, align 8, !tbaa !25
  %18 = add <2 x i64> %wide.load.1, %12
  %19 = add <2 x i64> %wide.load1095.1, %13
  %index.next.1 = or i64 %index, 8
  %20 = getelementptr inbounds i64, i64* %pipelens, i64 %index.next.1
  %21 = bitcast i64* %20 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %21, align 8, !tbaa !25
  %22 = getelementptr inbounds i64, i64* %20, i64 2
  %23 = bitcast i64* %22 to <2 x i64>*
  %wide.load1095.2 = load <2 x i64>, <2 x i64>* %23, align 8, !tbaa !25
  %24 = add <2 x i64> %wide.load.2, %18
  %25 = add <2 x i64> %wide.load1095.2, %19
  %index.next.2 = or i64 %index, 12
  %26 = getelementptr inbounds i64, i64* %pipelens, i64 %index.next.2
  %27 = bitcast i64* %26 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !25
  %28 = getelementptr inbounds i64, i64* %26, i64 2
  %29 = bitcast i64* %28 to <2 x i64>*
  %wide.load1095.3 = load <2 x i64>, <2 x i64>* %29, align 8, !tbaa !25
  %30 = add <2 x i64> %wide.load.3, %24
  %31 = add <2 x i64> %wide.load1095.3, %25
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !105

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa1105.ph = phi <2 x i64> [ undef, %vector.ph ], [ %30, %vector.body ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph ], [ %31, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %30, %vector.body ]
  %vec.phi1094.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %31, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.phi.epil = phi <2 x i64> [ %36, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi1094.epil = phi <2 x i64> [ %37, %vector.body.epil ], [ %vec.phi1094.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %32 = getelementptr inbounds i64, i64* %pipelens, i64 %index.epil
  %33 = bitcast i64* %32 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %33, align 8, !tbaa !25
  %34 = getelementptr inbounds i64, i64* %32, i64 2
  %35 = bitcast i64* %34 to <2 x i64>*
  %wide.load1095.epil = load <2 x i64>, <2 x i64>* %35, align 8, !tbaa !25
  %36 = add <2 x i64> %wide.load.epil, %vec.phi.epil
  %37 = add <2 x i64> %wide.load1095.epil, %vec.phi1094.epil
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !106

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa1105 = phi <2 x i64> [ %.lcssa1105.ph, %middle.block.unr-lcssa ], [ %36, %vector.body.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %37, %vector.body.epil ]
  %bin.rdx = add <2 x i64> %.lcssa, %.lcssa1105
  %38 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %numpipes
  br i1 %cmp.n, label %for.end, label %for.body.preheader1104

for.body.preheader1104:                           ; preds = %for.body.preheader, %middle.block
  %j.01046.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %totlen.01045.ph = phi i64 [ 0, %for.body.preheader ], [ %38, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader1104, %for.body
  %j.01046 = phi i64 [ %inc, %for.body ], [ %j.01046.ph, %for.body.preheader1104 ]
  %totlen.01045 = phi i64 [ %add, %for.body ], [ %totlen.01045.ph, %for.body.preheader1104 ]
  %arrayidx = getelementptr inbounds i64, i64* %pipelens, i64 %j.01046
  %39 = load i64, i64* %arrayidx, align 8, !tbaa !25
  %add = add i64 %39, %totlen.01045
  %inc = add nuw i64 %j.01046, 1
  %exitcond.not = icmp eq i64 %inc, %numpipes
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !107

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %totlen.0.lcssa = phi i64 [ 0, %entry ], [ %38, %middle.block ], [ %add, %for.body ]
  %rlayer = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108
  %call = tail call i32 @RECORD_LAYER_write_pending(%struct.record_layer_st* noundef nonnull %rlayer) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %call1 = tail call i32 @ssl3_write_pending(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %buf, i64 noundef %totlen.0.lcssa, i64* noundef %written) #14
  br label %cleanup640

if.end:                                           ; preds = %for.end
  %s3 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17
  %alert_dispatch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  %40 = load i32, i32* %alert_dispatch, align 4, !tbaa !81
  %tobool2.not = icmp eq i32 %40, 0
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %41 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl_dispatch_alert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %41, i64 0, i32 16
  %42 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_dispatch_alert, align 8, !tbaa !82
  %call4 = tail call i32 %42(%struct.ssl_st* noundef nonnull %s) #13
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %cleanup640, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %numwpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 4
  %43 = load i64, i64* %numwpipes, align 8, !tbaa !104
  %cmp10 = icmp ult i64 %43, %numpipes
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32 @ssl3_setup_write_buffer(%struct.ssl_st* noundef nonnull %s, i64 noundef %numpipes, i64 noundef 0) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup640, label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8
  %cmp17 = icmp ne i64 %totlen.0.lcssa, 0
  %tobool18 = icmp ne i32 %create_empty_fragment, 0
  %or.cond = or i1 %tobool18, %cmp17
  br i1 %or.cond, label %if.end20, label %cleanup640

if.end20:                                         ; preds = %if.end16
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %44 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !108
  %cmp21 = icmp eq %struct.ssl_session_st* %44, null
  br i1 %cmp21, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %45 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !80
  %cmp22 = icmp eq %struct.evp_cipher_ctx_st* %45, null
  br i1 %cmp22, label %if.then26, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %46 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !109
  %call24 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %46) #13
  %cmp25 = icmp eq %struct.evp_md_st* %call24, null
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false23, %lor.lhs.false, %if.end20
  %enc_write_ctx27 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %47 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx27, align 8, !tbaa !80
  %tobool28.not = icmp eq %struct.evp_cipher_ctx_st* %47, null
  %cond = zext i1 %tobool28.not to i32
  br label %if.end35

if.else:                                          ; preds = %lor.lhs.false23
  %48 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !109
  %call30 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %48) #13
  %call31 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call30) #13
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.else
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 726, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup640

if.end35:                                         ; preds = %if.else, %if.then26
  %clear.0 = phi i32 [ %cond, %if.then26 ], [ 0, %if.else ]
  %mac_size.0 = phi i32 [ 0, %if.then26 ], [ %call31, %if.else ]
  %49 = or i32 %clear.0, %create_empty_fragment
  %.not = icmp eq i32 %49, 0
  br i1 %.not, label %land.lhs.true39, label %if.end59

land.lhs.true39:                                  ; preds = %if.end35
  %empty_fragment_done = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 8
  %50 = load i32, i32* %empty_fragment_done, align 4, !tbaa !103
  %tobool41.not = icmp eq i32 %50, 0
  br i1 %tobool41.not, label %if.then42, label %if.end59

if.then42:                                        ; preds = %land.lhs.true39
  %need_empty_fragments = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 7
  %51 = load i32, i32* %need_empty_fragments, align 8, !tbaa !110
  %tobool44 = icmp ne i32 %51, 0
  %cmp46 = icmp eq i32 %type, 23
  %or.cond662 = and i1 %cmp46, %tobool44
  br i1 %or.cond662, label %if.then47, label %if.end56

if.then47:                                        ; preds = %if.then42
  %52 = bitcast i64* %tmppipelen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #16
  store i64 0, i64* %tmppipelen, align 8, !tbaa !25
  %call48 = call i32 @do_ssl3_write(%struct.ssl_st* noundef nonnull %s, i32 noundef 23, i8* noundef %buf, i64* noundef nonnull %tmppipelen, i64 noundef 1, i32 noundef 1, i64* noundef nonnull %prefix_len) #14
  %cmp49 = icmp slt i32 %call48, 1
  br i1 %cmp49, label %cleanup.thread, label %if.end51

if.end51:                                         ; preds = %if.then47
  %53 = load i64, i64* %prefix_len, align 8, !tbaa !25
  %cmp52 = icmp ugt i64 %53, 85
  br i1 %cmp52, label %if.then53, label %cleanup

if.then53:                                        ; preds = %if.end51
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then53, %if.then47
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #16
  br label %cleanup640

cleanup:                                          ; preds = %if.end51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #16
  br label %if.end56

if.end56:                                         ; preds = %cleanup, %if.then42
  %54 = phi i64 [ %53, %cleanup ], [ 0, %if.then42 ]
  store i32 1, i32* %empty_fragment_done, align 4, !tbaa !103
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %land.lhs.true39, %if.end35
  %55 = phi i64 [ %54, %if.end56 ], [ 0, %land.lhs.true39 ], [ 0, %if.end35 ]
  br i1 %tobool18, label %if.then61, label %if.else78

if.then61:                                        ; preds = %if.end59
  %buf64 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 0
  %56 = load i8*, i8** %buf64, align 8, !tbaa !52
  %57 = ptrtoint i8* %56 to i64
  %sub = add i64 %57, 1
  %rem = and i64 %sub, 7
  %sub66 = xor i64 %rem, 7
  %offset = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 3
  store i64 %sub66, i64* %offset, align 8, !tbaa !55
  %arrayidx67 = getelementptr inbounds [32 x %struct.wpacket_st], [32 x %struct.wpacket_st]* %pkt, i64 0, i64 0
  %len69 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 2
  %58 = load i64, i64* %len69, align 8, !tbaa !62
  %call70 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %arrayidx67, i8* noundef %56, i64 noundef %58, i64 noundef 0) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then61
  %call74 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx67, i64 noundef %sub66, i8** noundef null) #13
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end125

if.then76:                                        ; preds = %lor.lhs.false72, %if.then61
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 795, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup640

if.else78:                                        ; preds = %if.end59
  %tobool79.not = icmp eq i64 %55, 0
  br i1 %tobool79.not, label %for.cond98.preheader, label %if.then80

for.cond98.preheader:                             ; preds = %if.else78
  br i1 %cmp1044.not, label %if.end125, label %for.body100

if.then80:                                        ; preds = %if.else78
  %arrayidx84 = getelementptr inbounds [32 x %struct.wpacket_st], [32 x %struct.wpacket_st]* %pkt, i64 0, i64 0
  %buf85 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 0
  %59 = load i8*, i8** %buf85, align 8, !tbaa !52
  %len86 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 2
  %60 = load i64, i64* %len86, align 8, !tbaa !62
  %call87 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %arrayidx84, i8* noundef %59, i64 noundef %60, i64 noundef 0) #13
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then95, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.then80
  %offset91 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 3
  %61 = load i64, i64* %offset91, align 8, !tbaa !55
  %add92 = add i64 %61, %55
  %call93 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx84, i64 noundef %add92, i8** noundef null) #13
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end125

if.then95:                                        ; preds = %lor.lhs.false89, %if.then80
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 806, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup640

for.body100:                                      ; preds = %for.cond98.preheader, %if.end119
  %j.11049 = phi i64 [ %inc122, %if.end119 ], [ 0, %for.cond98.preheader ]
  %arrayidx101 = getelementptr inbounds [32 x %struct.wpacket_st], [32 x %struct.wpacket_st]* %pkt, i64 0, i64 %j.11049
  %buf105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %j.11049, i32 0
  %62 = load i8*, i8** %buf105, align 8, !tbaa !52
  %63 = ptrtoint i8* %62 to i64
  %sub107 = add i64 %63, 4
  %rem108 = and i64 %sub107, 7
  %sub109 = xor i64 %rem108, 7
  %offset110 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %j.11049, i32 3
  store i64 %sub109, i64* %offset110, align 8, !tbaa !55
  %len112 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %j.11049, i32 2
  %64 = load i64, i64* %len112, align 8, !tbaa !62
  %call113 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %arrayidx101, i8* noundef %62, i64 noundef %64, i64 noundef 0) #13
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then118, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %for.body100
  %call116 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx101, i64 noundef %sub109, i8** noundef null) #13
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %if.end119

if.then118:                                       ; preds = %lor.lhs.false115, %for.body100
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 823, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end119:                                        ; preds = %lor.lhs.false115
  %inc122 = add nuw i64 %j.11049, 1
  %exitcond1072.not = icmp eq i64 %inc122, %numpipes
  br i1 %exitcond1072.not, label %if.end125, label %for.body100, !llvm.loop !111

if.end125:                                        ; preds = %if.end119, %for.cond98.preheader, %lor.lhs.false89, %lor.lhs.false72
  %wpinited.1 = phi i64 [ 1, %lor.lhs.false72 ], [ 1, %lor.lhs.false89 ], [ 0, %for.cond98.preheader ], [ %numpipes, %if.end119 ]
  %enc_write_ctx126 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %65 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx126, align 8, !tbaa !80
  %tobool127.not = icmp eq %struct.evp_cipher_ctx_st* %65, null
  br i1 %tobool127.not, label %wpacket_init_complete, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %if.end125
  %method129 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %66 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method129, align 8, !tbaa !57
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %66, i64 0, i32 25
  %67 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !58
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %67, i64 0, i32 12
  %68 = load i32, i32* %enc_flags, align 8, !tbaa !60
  %and = and i32 %68, 1
  %tobool130.not = icmp eq i32 %and, 0
  br i1 %tobool130.not, label %wpacket_init_complete, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %land.lhs.true128
  %and135 = and i32 %68, 8
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %land.lhs.true137, label %lor.lhs.false144

land.lhs.true137:                                 ; preds = %land.lhs.true131
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %66, i64 0, i32 0
  %69 = load i32, i32* %version, align 8, !tbaa !112
  %cmp139 = icmp slt i32 %69, 772
  %cmp143.not = icmp eq i32 %69, 65536
  %or.cond986 = or i1 %cmp139, %cmp143.not
  br i1 %or.cond986, label %lor.lhs.false144, label %wpacket_init_complete

lor.lhs.false144:                                 ; preds = %land.lhs.true137, %land.lhs.true131
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %70 = load i32, i32* %early_data_state, align 4, !tbaa !73
  %.off = add i32 %70, -1
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %wpacket_init_complete, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false144
  %hello_retry_request = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %71 = load i32, i32* %hello_retry_request, align 8, !tbaa !113
  %cmp156 = icmp eq i32 %71, 1
  br i1 %cmp156, label %wpacket_init_complete, label %if.then157

if.then157:                                       ; preds = %lor.lhs.false155
  %call159 = call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %65) #13
  %call160 = call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call159) #13
  switch i32 %call160, label %if.end176.fold.split [
    i32 2, label %if.then162
    i32 6, label %wpacket_init_complete
    i32 7, label %wpacket_init_complete
  ]

if.then162:                                       ; preds = %if.then157
  %72 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx126, align 8, !tbaa !80
  %call164 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %72) #13
  %cmp165 = icmp slt i32 %call164, 2
  %spec.store.select = select i1 %cmp165, i32 0, i32 %call164
  br label %wpacket_init_complete

if.end176.fold.split:                             ; preds = %if.then157
  br label %wpacket_init_complete

wpacket_init_complete:                            ; preds = %lor.lhs.false144, %if.then162, %if.end176.fold.split, %if.then157, %if.then157, %land.lhs.true137, %if.end125, %land.lhs.true128, %lor.lhs.false155
  %eivlen.1 = phi i32 [ 0, %lor.lhs.false155 ], [ 0, %land.lhs.true128 ], [ 0, %if.end125 ], [ 0, %land.lhs.true137 ], [ 0, %lor.lhs.false144 ], [ %spec.store.select, %if.then162 ], [ 8, %if.then157 ], [ 0, %if.end176.fold.split ], [ 8, %if.then157 ]
  %arraydecay = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 0
  %call178 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 2560) #13
  br i1 %cmp1044.not, label %for.end457, label %for.body181.lr.ph

for.body181.lr.ph:                                ; preds = %wpacket_init_complete
  %version183 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %73 = bitcast i8** %compressdata to i8*
  %method189 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %early_data_state203 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %hello_retry_request215 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %enc_write_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  %cmp223 = icmp ne i32 %type, 21
  %renegotiate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 98
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %cmp260.not = icmp eq i32 %eivlen.1, 0
  %conv1017 = zext i32 %eivlen.1 to i64
  %record_padding_cb = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 117
  %record_padding_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 118
  %block_padding = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 119
  %flags = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s3, i64 0, i32 0
  %cmp419 = icmp ne i32 %mac_size.0, 0
  %74 = bitcast i8** %mac to i8*
  %conv422 = sext i32 %mac_size.0 to i64
  br label %for.body181

for.body181:                                      ; preds = %for.body181.lr.ph, %for.inc455
  %j.21053 = phi i64 [ 0, %for.body181.lr.ph ], [ %inc456, %for.inc455 ]
  %totlen.11052 = phi i64 [ 0, %for.body181.lr.ph ], [ %add275, %for.inc455 ]
  %75 = load i32, i32* %version183, align 8, !tbaa !85
  %cmp184 = icmp eq i32 %75, 772
  %spec.select = select i1 %cmp184, i32 771, i32 %75
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73) #16
  store i8* null, i8** %compressdata, align 8, !tbaa !114
  %arrayidx187 = getelementptr inbounds [32 x %struct.wpacket_st], [32 x %struct.wpacket_st]* %pkt, i64 0, i64 %j.21053
  %arrayidx188 = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.21053
  %76 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method189, align 8, !tbaa !57
  %ssl3_enc190 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %76, i64 0, i32 25
  %77 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc190, align 8, !tbaa !58
  %enc_flags191 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %77, i64 0, i32 12
  %78 = load i32, i32* %enc_flags191, align 8, !tbaa !60
  %and192 = and i32 %78, 8
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %land.lhs.true194, label %lor.lhs.false202

land.lhs.true194:                                 ; preds = %for.body181
  %version196 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %76, i64 0, i32 0
  %79 = load i32, i32* %version196, align 8, !tbaa !112
  %cmp197 = icmp slt i32 %79, 772
  %cmp201.not = icmp eq i32 %79, 65536
  %or.cond987 = or i1 %cmp197, %cmp201.not
  br i1 %or.cond987, label %lor.lhs.false202, label %land.lhs.true217

lor.lhs.false202:                                 ; preds = %land.lhs.true194, %for.body181
  %80 = load i32, i32* %early_data_state203, align 4, !tbaa !73
  %.off993 = add i32 %80, -1
  %switch994 = icmp ult i32 %.off993, 4
  br i1 %switch994, label %land.lhs.true217, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %lor.lhs.false202
  %81 = load i32, i32* %hello_retry_request215, align 8, !tbaa !113
  %cmp216 = icmp eq i32 %81, 1
  br i1 %cmp216, label %land.lhs.true217, label %if.else225

land.lhs.true217:                                 ; preds = %lor.lhs.false202, %land.lhs.true194, %lor.lhs.false214
  %82 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx126, align 8, !tbaa !80
  %cmp219.not = icmp eq %struct.evp_cipher_ctx_st* %82, null
  br i1 %cmp219.not, label %if.else225, label %land.lhs.true220

land.lhs.true220:                                 ; preds = %land.lhs.true217
  %83 = load i32, i32* %enc_write_state, align 4, !tbaa !115
  %cmp221 = icmp ne i32 %83, 2
  %or.cond663 = or i1 %cmp223, %cmp221
  br i1 %or.cond663, label %if.end226, label %if.else225

if.else225:                                       ; preds = %land.lhs.true220, %land.lhs.true217, %lor.lhs.false214
  br label %if.end226

if.end226:                                        ; preds = %land.lhs.true220, %if.else225
  %rectype.0 = phi i32 [ %type, %if.else225 ], [ 23, %land.lhs.true220 ]
  %type227 = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.21053, i32 1
  store i32 %rectype.0, i32* %type227, align 4, !tbaa !43
  %call228 = call i32 @SSL_get_state(%struct.ssl_st* noundef nonnull %s) #13
  %cmp229 = icmp eq i32 %call228, 12
  br i1 %cmp229, label %land.lhs.true230, label %if.end245

land.lhs.true230:                                 ; preds = %if.end226
  %84 = load i32, i32* %renegotiate, align 8, !tbaa !116
  %tobool231.not = icmp eq i32 %84, 0
  br i1 %tobool231.not, label %land.lhs.true232, label %if.end245

land.lhs.true232:                                 ; preds = %land.lhs.true230
  %call233 = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #13
  %shr.mask = and i32 %call233, -256
  %cmp234 = icmp eq i32 %shr.mask, 768
  br i1 %cmp234, label %cond.end238, label %if.end245

cond.end238:                                      ; preds = %land.lhs.true232
  %call236 = call i32 @SSL_version(%struct.ssl_st* noundef nonnull %s) #13
  %cmp240 = icmp sgt i32 %call236, 769
  br i1 %cmp240, label %land.lhs.true241, label %if.end245

land.lhs.true241:                                 ; preds = %cond.end238
  %85 = load i32, i32* %hello_retry_request215, align 8, !tbaa !113
  %cmp243 = icmp eq i32 %85, 0
  %spec.select988 = select i1 %cmp243, i32 769, i32 %spec.select
  br label %if.end245

if.end245:                                        ; preds = %land.lhs.true232, %land.lhs.true241, %cond.end238, %land.lhs.true230, %if.end226
  %version182.0 = phi i32 [ %spec.select, %land.lhs.true230 ], [ %spec.select, %cond.end238 ], [ %spec.select, %if.end226 ], [ %spec.select988, %land.lhs.true241 ], [ %spec.select, %land.lhs.true232 ]
  %rec_version = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %arrayidx188, i64 0, i32 0
  store i32 %version182.0, i32* %rec_version, align 16, !tbaa !117
  %arrayidx246 = getelementptr inbounds i64, i64* %pipelens, i64 %j.21053
  %86 = load i64, i64* %arrayidx246, align 8, !tbaa !25
  %87 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !77
  %cmp247.not = icmp eq %struct.comp_ctx_st* %87, null
  %add249 = add i64 %86, 1024
  %spec.select989 = select i1 %cmp247.not, i64 %86, i64 %add249
  %call251 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %arrayidx187, i32 noundef %rectype.0, i64 noundef 1) #13
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then270, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %if.end245
  %call254 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %arrayidx187, i32 noundef %version182.0, i64 noundef 2) #13
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.then270, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %lor.lhs.false253
  %call257 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef nonnull %arrayidx187, i64 noundef 2) #13
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.then270, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %lor.lhs.false256
  br i1 %cmp260.not, label %lor.lhs.false264, label %land.lhs.true261

land.lhs.true261:                                 ; preds = %lor.lhs.false259
  %call262 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx187, i64 noundef %conv1017, i8** noundef null) #13
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.then270, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %land.lhs.true261, %lor.lhs.false259
  %cmp265.not = icmp eq i64 %spec.select989, 0
  br i1 %cmp265.not, label %if.end271, label %land.lhs.true267

land.lhs.true267:                                 ; preds = %lor.lhs.false264
  %call268 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef nonnull %arrayidx187, i64 noundef %spec.select989, i8** noundef nonnull %compressdata) #13
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.then270, label %if.end271

if.then270:                                       ; preds = %land.lhs.true267, %land.lhs.true261, %lor.lhs.false256, %lor.lhs.false253, %if.end245
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 901, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup449.thread

if.end271:                                        ; preds = %land.lhs.true267, %lor.lhs.false264
  %88 = load i8*, i8** %compressdata, align 8, !tbaa !114
  %data = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.21053, i32 5
  store i8* %88, i8** %data, align 16, !tbaa !118
  %89 = load i64, i64* %arrayidx246, align 8, !tbaa !25
  %length = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.21053, i32 2
  store i64 %89, i64* %length, align 8, !tbaa !44
  %arrayidx273 = getelementptr inbounds i8, i8* %buf, i64 %totlen.11052
  %input = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.21053, i32 6
  store i8* %arrayidx273, i8** %input, align 8, !tbaa !119
  %add275 = add i64 %89, %totlen.11052
  %90 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !77
  %cmp277.not = icmp eq %struct.comp_ctx_st* %90, null
  br i1 %cmp277.not, label %if.else288, label %if.then279

if.then279:                                       ; preds = %if.end271
  %call280 = call i32 @ssl3_do_compress(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arrayidx188) #13
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %if.then286, label %lor.lhs.false282

lor.lhs.false282:                                 ; preds = %if.then279
  %91 = load i64, i64* %length, align 8, !tbaa !44
  %call284 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx187, i64 noundef %91, i8** noundef null) #13
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.then286, label %if.end299

if.then286:                                       ; preds = %lor.lhs.false282, %if.then279
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 920, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 141, i8* noundef null) #13
  br label %cleanup449.thread

if.else288:                                       ; preds = %if.end271
  %call291 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef nonnull %arrayidx187, i8* noundef %arrayidx273, i64 noundef %89) #13
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.then293, label %if.end294

if.then293:                                       ; preds = %if.else288
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 928, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup449.thread

if.end294:                                        ; preds = %if.else288
  %92 = load i8*, i8** %data, align 16, !tbaa !118
  store i8* %92, i8** %input, align 8, !tbaa !119
  br label %if.end299

if.end299:                                        ; preds = %lor.lhs.false282, %if.end294
  %93 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method189, align 8, !tbaa !57
  %ssl3_enc301 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %93, i64 0, i32 25
  %94 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc301, align 8, !tbaa !58
  %enc_flags302 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %94, i64 0, i32 12
  %95 = load i32, i32* %enc_flags302, align 8, !tbaa !60
  %and303 = and i32 %95, 8
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %land.lhs.true305, label %lor.lhs.false315

land.lhs.true305:                                 ; preds = %if.end299
  %version307 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %93, i64 0, i32 0
  %96 = load i32, i32* %version307, align 8, !tbaa !112
  %cmp308 = icmp slt i32 %96, 772
  %cmp313.not = icmp eq i32 %96, 65536
  %or.cond990 = or i1 %cmp308, %cmp313.not
  br i1 %or.cond990, label %lor.lhs.false315, label %land.lhs.true335

lor.lhs.false315:                                 ; preds = %land.lhs.true305, %if.end299
  %97 = load i32, i32* %early_data_state203, align 4, !tbaa !73
  %.off995 = add i32 %97, -1
  %switch996 = icmp ult i32 %.off995, 4
  br i1 %switch996, label %land.lhs.true335, label %lor.lhs.false331

lor.lhs.false331:                                 ; preds = %lor.lhs.false315
  %98 = load i32, i32* %hello_retry_request215, align 8, !tbaa !113
  %cmp333 = icmp eq i32 %98, 1
  br i1 %cmp333, label %land.lhs.true335, label %if.end414

land.lhs.true335:                                 ; preds = %lor.lhs.false315, %land.lhs.true305, %lor.lhs.false331
  %99 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx126, align 8, !tbaa !80
  %cmp337.not = icmp eq %struct.evp_cipher_ctx_st* %99, null
  br i1 %cmp337.not, label %if.end414, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %land.lhs.true335
  %100 = load i32, i32* %enc_write_state, align 4, !tbaa !115
  %cmp342 = icmp ne i32 %100, 2
  %or.cond664 = or i1 %cmp223, %cmp342
  br i1 %or.cond664, label %if.then347, label %if.end414

if.then347:                                       ; preds = %land.lhs.true339
  %call348 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef nonnull %arrayidx187, i32 noundef %type, i64 noundef 1) #13
  %tobool349.not = icmp eq i32 %call348, 0
  br i1 %tobool349.not, label %if.then350, label %if.end351

if.then350:                                       ; preds = %if.then347
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 943, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup449.thread

if.end351:                                        ; preds = %if.then347
  %101 = load i64, i64* %length, align 8, !tbaa !44
  %add353 = add i64 %101, 1
  store i64 %add353, i64* %length, align 8, !tbaa !44
  %call354 = call i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef nonnull %s) #13
  %conv355 = zext i32 %call354 to i64
  %102 = load i64, i64* %length, align 8, !tbaa !44
  %cmp357 = icmp ult i64 %102, %conv355
  br i1 %cmp357, label %if.then359, label %if.end414

if.then359:                                       ; preds = %if.end351
  %sub360 = sub i64 %conv355, %102
  %103 = load i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_st*, i32, i64, i8*)** %record_padding_cb, align 8, !tbaa !120
  %cmp361.not = icmp eq i64 (%struct.ssl_st*, i32, i64, i8*)* %103, null
  br i1 %cmp361.not, label %if.else366, label %if.then363

if.then363:                                       ; preds = %if.then359
  %104 = load i8*, i8** %record_padding_arg, align 8, !tbaa !121
  %call365 = call i64 %103(%struct.ssl_st* noundef nonnull %s, i32 noundef %type, i64 noundef %102, i8* noundef %104) #13
  br label %if.end390

if.else366:                                       ; preds = %if.then359
  %105 = load i64, i64* %block_padding, align 8, !tbaa !122
  %cmp367.not = icmp eq i64 %105, 0
  br i1 %cmp367.not, label %if.end414, label %if.then369

if.then369:                                       ; preds = %if.else366
  %106 = call i64 @llvm.ctpop.i64(i64 %105), !range !123
  %cmp374 = icmp ult i64 %106, 2
  br i1 %cmp374, label %if.then376, label %if.else378

if.then376:                                       ; preds = %if.then369
  %sub371 = add i64 %105, -1
  %and377 = and i64 %sub371, %102
  br label %if.end381

if.else378:                                       ; preds = %if.then369
  %rem380 = urem i64 %102, %105
  br label %if.end381

if.end381:                                        ; preds = %if.else378, %if.then376
  %remainder.0 = phi i64 [ %and377, %if.then376 ], [ %rem380, %if.else378 ]
  %cmp382 = icmp eq i64 %remainder.0, 0
  br i1 %cmp382, label %if.end414, label %if.else385

if.else385:                                       ; preds = %if.end381
  %sub387 = sub i64 %105, %remainder.0
  br label %if.end390

if.end390:                                        ; preds = %if.else385, %if.then363
  %padding.1 = phi i64 [ %call365, %if.then363 ], [ %sub387, %if.else385 ]
  %cmp391.not = icmp eq i64 %padding.1, 0
  br i1 %cmp391.not, label %if.end414, label %if.then393

if.then393:                                       ; preds = %if.end390
  %cmp394 = icmp ugt i64 %padding.1, %sub360
  %spec.select991 = select i1 %cmp394, i64 %sub360, i64 %padding.1
  %call398 = call i32 @WPACKET_memset(%struct.wpacket_st* noundef nonnull %arrayidx187, i32 noundef 0, i64 noundef %spec.select991) #13
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %cleanup405, label %if.end401

if.end401:                                        ; preds = %if.then393
  %107 = load i64, i64* %length, align 8, !tbaa !44
  %add403 = add i64 %107, %spec.select991
  store i64 %add403, i64* %length, align 8, !tbaa !44
  br label %if.end414

cleanup405:                                       ; preds = %if.then393
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 977, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup449.thread

if.end414:                                        ; preds = %if.end381, %if.else366, %if.end390, %if.end401, %if.end351, %land.lhs.true339, %land.lhs.true335, %lor.lhs.false331
  %108 = load i64, i64* %flags, align 8, !tbaa !79
  %and416 = and i64 %108, 1024
  %tobool417 = icmp eq i64 %and416, 0
  %or.cond665 = select i1 %tobool417, i1 %cmp419, i1 false
  br i1 %or.cond665, label %if.then421, label %if.end436

if.then421:                                       ; preds = %if.end414
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #16
  %call423 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx187, i64 noundef %conv422, i8** noundef nonnull %mac) #13
  %tobool424.not = icmp eq i32 %call423, 0
  br i1 %tobool424.not, label %cleanup433, label %lor.lhs.false425

lor.lhs.false425:                                 ; preds = %if.then421
  %109 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method189, align 8, !tbaa !57
  %ssl3_enc427 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %109, i64 0, i32 25
  %110 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc427, align 8, !tbaa !58
  %mac428 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %110, i64 0, i32 1
  %111 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac428, align 8, !tbaa !124
  %112 = load i8*, i8** %mac, align 8, !tbaa !114
  %call429 = call i32 %111(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arrayidx188, i8* noundef %112, i32 noundef 1) #13
  %tobool430.not = icmp eq i32 %call429, 0
  br i1 %tobool430.not, label %cleanup433, label %cleanup433.thread

cleanup433.thread:                                ; preds = %lor.lhs.false425
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #16
  br label %if.end436

cleanup433:                                       ; preds = %if.then421, %lor.lhs.false425
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 996, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #16
  br label %cleanup449.thread

if.end436:                                        ; preds = %cleanup433.thread, %if.end414
  %call437 = call i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef nonnull %arrayidx187, i64 noundef 16, i8** noundef null) #13
  %tobool438.not = icmp eq i32 %call437, 0
  br i1 %tobool438.not, label %if.then442, label %lor.lhs.false439

lor.lhs.false439:                                 ; preds = %if.end436
  %call440 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %arrayidx187, i64* noundef nonnull %len) #13
  %tobool441.not = icmp eq i32 %call440, 0
  br i1 %tobool441.not, label %if.then442, label %for.inc455

if.then442:                                       ; preds = %lor.lhs.false439, %if.end436
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1015, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup449.thread

cleanup449.thread:                                ; preds = %if.then442, %cleanup433, %if.then286, %if.then293, %if.then270, %cleanup405, %if.then350
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #16
  br label %err

for.inc455:                                       ; preds = %lor.lhs.false439
  %call444 = call i8* @WPACKET_get_curr(%struct.wpacket_st* noundef nonnull %arrayidx187) #13
  %113 = load i64, i64* %len, align 8, !tbaa !25
  %idx.neg = sub i64 0, %113
  %add.ptr = getelementptr inbounds i8, i8* %call444, i64 %idx.neg
  store i8* %add.ptr, i8** %data, align 16, !tbaa !118
  store i8* %add.ptr, i8** %input, align 8, !tbaa !119
  store i64 %113, i64* %length, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #16
  %inc456 = add nuw i64 %j.21053, 1
  %exitcond1073.not = icmp eq i64 %inc456, %numpipes
  br i1 %exitcond1073.not, label %for.end457, label %for.body181, !llvm.loop !125

for.end457:                                       ; preds = %for.inc455, %wpacket_init_complete
  %totlen.1.lcssa = phi i64 [ 0, %wpacket_init_complete ], [ %add275, %for.inc455 ]
  %enc_write_state459 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 11, i32 13
  %114 = load i32, i32* %enc_write_state459, align 4, !tbaa !115
  %cmp460 = icmp eq i32 %114, 2
  br i1 %cmp460, label %if.then462, label %if.else474

if.then462:                                       ; preds = %for.end457
  %conv464 = sext i32 %mac_size.0 to i64
  %call465 = call i32 @tls13_enc(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i64 noundef %numpipes, i32 noundef 1, %struct.ssl_mac_buf_st* noundef null, i64 noundef %conv464) #13
  %cmp466 = icmp slt i32 %call465, 1
  br i1 %cmp466, label %if.then468, label %if.end488

if.then468:                                       ; preds = %if.then462
  %call469 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #13
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %if.then471, label %err

if.then471:                                       ; preds = %if.then468
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1034, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.else474:                                       ; preds = %for.end457
  %method475 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %115 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method475, align 8, !tbaa !57
  %ssl3_enc476 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %115, i64 0, i32 25
  %116 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc476, align 8, !tbaa !58
  %enc = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %116, i64 0, i32 0
  %117 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)** %enc, align 8, !tbaa !126
  %conv478 = sext i32 %mac_size.0 to i64
  %call479 = call i32 %117(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i64 noundef %numpipes, i32 noundef 1, %struct.ssl_mac_buf_st* noundef null, i64 noundef %conv478) #13
  %cmp480 = icmp slt i32 %call479, 1
  br i1 %cmp480, label %if.then482, label %if.end488

if.then482:                                       ; preds = %if.else474
  %call483 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #13
  %tobool484.not = icmp eq i32 %call483, 0
  br i1 %tobool484.not, label %if.then485, label %err

if.then485:                                       ; preds = %if.then482
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1043, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %err

if.end488:                                        ; preds = %if.else474, %if.then462
  br i1 %cmp1044.not, label %for.end626, label %for.body492.lr.ph

for.body492.lr.ph:                                ; preds = %if.end488
  %118 = bitcast i64* %origlen to i8*
  %flags513 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %s3, i64 0, i32 0
  %cmp517 = icmp ne i32 %mac_size.0, 0
  %119 = bitcast i8** %mac520 to i8*
  %conv521 = sext i32 %mac_size.0 to i64
  %method525 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %early_data_state570 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %hello_retry_request586 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 52
  %conv594 = trunc i32 %type to i8
  br label %for.body492

for.body492:                                      ; preds = %for.body492.lr.ph, %for.inc624
  %j.31056 = phi i64 [ 0, %for.body492.lr.ph ], [ %inc625, %for.inc624 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %118) #16
  %arrayidx493 = getelementptr inbounds [32 x %struct.wpacket_st], [32 x %struct.wpacket_st]* %pkt, i64 0, i64 %j.31056
  %arrayidx494 = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.31056
  %call495 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %arrayidx493, i64* noundef nonnull %origlen) #13
  %tobool496.not = icmp eq i32 %call495, 0
  br i1 %tobool496.not, label %if.then510, label %lor.lhs.false497

lor.lhs.false497:                                 ; preds = %for.body492
  %120 = load i64, i64* %origlen, align 8, !tbaa !25
  %length498 = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.31056, i32 2
  %121 = load i64, i64* %length498, align 8, !tbaa !44
  %cmp499 = icmp ult i64 %121, %120
  br i1 %cmp499, label %if.then510, label %lor.lhs.false501

lor.lhs.false501:                                 ; preds = %lor.lhs.false497
  %cmp503 = icmp ugt i64 %121, %120
  br i1 %cmp503, label %land.lhs.true505, label %if.end511

land.lhs.true505:                                 ; preds = %lor.lhs.false501
  %sub507 = sub i64 %121, %120
  %call508 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx493, i64 noundef %sub507, i8** noundef null) #13
  %tobool509.not = icmp eq i32 %call508, 0
  br i1 %tobool509.not, label %if.then510, label %if.end511

if.then510:                                       ; preds = %land.lhs.true505, %lor.lhs.false497, %for.body492
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1067, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup621.thread

if.end511:                                        ; preds = %land.lhs.true505, %lor.lhs.false501
  %122 = load i64, i64* %flags513, align 8, !tbaa !79
  %and514 = and i64 %122, 1024
  %tobool515 = icmp ne i64 %and514, 0
  %or.cond666 = select i1 %tobool515, i1 %cmp517, i1 false
  br i1 %or.cond666, label %if.then519, label %if.end538

if.then519:                                       ; preds = %if.end511
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %119) #16
  %call522 = call i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef nonnull %arrayidx493, i64 noundef %conv521, i8** noundef nonnull %mac520) #13
  %tobool523.not = icmp eq i32 %call522, 0
  br i1 %tobool523.not, label %cleanup535, label %lor.lhs.false524

lor.lhs.false524:                                 ; preds = %if.then519
  %123 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method525, align 8, !tbaa !57
  %ssl3_enc526 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %123, i64 0, i32 25
  %124 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc526, align 8, !tbaa !58
  %mac527 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %124, i64 0, i32 1
  %125 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac527, align 8, !tbaa !124
  %126 = load i8*, i8** %mac520, align 8, !tbaa !114
  %call528 = call i32 %125(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arrayidx494, i8* noundef %126, i32 noundef 1) #13
  %tobool529.not = icmp eq i32 %call528, 0
  br i1 %tobool529.not, label %cleanup535, label %cleanup535.thread

cleanup535.thread:                                ; preds = %lor.lhs.false524
  %127 = load i64, i64* %length498, align 8, !tbaa !44
  %add534 = add i64 %127, %conv521
  store i64 %add534, i64* %length498, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119) #16
  br label %if.end538

cleanup535:                                       ; preds = %if.then519, %lor.lhs.false524
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1075, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119) #16
  br label %cleanup621.thread

if.end538:                                        ; preds = %cleanup535.thread, %if.end511
  %call539 = call i32 @WPACKET_get_length(%struct.wpacket_st* noundef nonnull %arrayidx493, i64* noundef nonnull %len) #13
  %tobool540.not = icmp eq i32 %call539, 0
  br i1 %tobool540.not, label %if.then544, label %lor.lhs.false541

lor.lhs.false541:                                 ; preds = %if.end538
  %call542 = call i32 @WPACKET_close(%struct.wpacket_st* noundef nonnull %arrayidx493) #13
  %tobool543.not = icmp eq i32 %call542, 0
  br i1 %tobool543.not, label %if.then544, label %if.end545

if.then544:                                       ; preds = %lor.lhs.false541, %if.end538
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1083, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup621.thread

if.end545:                                        ; preds = %lor.lhs.false541
  %128 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !78
  %tobool546.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %128, null
  br i1 %tobool546.not, label %if.end599, label %if.then547

if.then547:                                       ; preds = %if.end545
  %call548 = call i8* @WPACKET_get_curr(%struct.wpacket_st* noundef nonnull %arrayidx493) #13
  %129 = load i64, i64* %len, align 8, !tbaa !25
  %idx.neg549 = sub i64 0, %129
  %add.ptr550 = getelementptr inbounds i8, i8* %call548, i64 -5
  %add.ptr551 = getelementptr inbounds i8, i8* %add.ptr550, i64 %idx.neg549
  %130 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !78
  %rec_version553 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %arrayidx494, i64 0, i32 0
  %131 = load i32, i32* %rec_version553, align 16, !tbaa !117
  %132 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !127
  call void %130(i32 noundef 1, i32 noundef %131, i32 noundef 256, i8* noundef nonnull %add.ptr551, i64 noundef 5, %struct.ssl_st* noundef nonnull %s, i8* noundef %132) #13
  %133 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method525, align 8, !tbaa !57
  %ssl3_enc555 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %133, i64 0, i32 25
  %134 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc555, align 8, !tbaa !58
  %enc_flags556 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %134, i64 0, i32 12
  %135 = load i32, i32* %enc_flags556, align 8, !tbaa !60
  %and557 = and i32 %135, 8
  %tobool558.not = icmp eq i32 %and557, 0
  br i1 %tobool558.not, label %land.lhs.true559, label %lor.lhs.false569

land.lhs.true559:                                 ; preds = %if.then547
  %version561 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %133, i64 0, i32 0
  %136 = load i32, i32* %version561, align 8, !tbaa !112
  %cmp562 = icmp slt i32 %136, 772
  %cmp567.not = icmp eq i32 %136, 65536
  %or.cond992 = or i1 %cmp562, %cmp567.not
  br i1 %or.cond992, label %lor.lhs.false569, label %land.lhs.true589

lor.lhs.false569:                                 ; preds = %land.lhs.true559, %if.then547
  %137 = load i32, i32* %early_data_state570, align 4, !tbaa !73
  %.off997 = add i32 %137, -1
  %switch998 = icmp ult i32 %.off997, 4
  br i1 %switch998, label %land.lhs.true589, label %lor.lhs.false585

lor.lhs.false585:                                 ; preds = %lor.lhs.false569
  %138 = load i32, i32* %hello_retry_request586, align 8, !tbaa !113
  %cmp587 = icmp eq i32 %138, 1
  br i1 %cmp587, label %land.lhs.true589, label %if.end599

land.lhs.true589:                                 ; preds = %lor.lhs.false569, %land.lhs.true559, %lor.lhs.false585
  %139 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx126, align 8, !tbaa !80
  %cmp591.not = icmp eq %struct.evp_cipher_ctx_st* %139, null
  br i1 %cmp591.not, label %if.end599, label %if.then593

if.then593:                                       ; preds = %land.lhs.true589
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %ctype) #16
  store i8 %conv594, i8* %ctype, align 1, !tbaa !56
  %140 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !78
  %141 = load i32, i32* %rec_version553, align 16, !tbaa !117
  %142 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !127
  call void %140(i32 noundef 1, i32 noundef %141, i32 noundef 257, i8* noundef nonnull %ctype, i64 noundef 1, %struct.ssl_st* noundef nonnull %s, i8* noundef %142) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %ctype) #16
  br label %if.end599

if.end599:                                        ; preds = %lor.lhs.false585, %land.lhs.true589, %if.then593, %if.end545
  %call600 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %arrayidx493) #13
  %tobool601.not = icmp eq i32 %call600, 0
  br i1 %tobool601.not, label %if.then602, label %if.end603

if.then602:                                       ; preds = %if.end599
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1103, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.do_ssl3_write, i64 0, i64 0)) #13
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup621.thread

if.end603:                                        ; preds = %if.end599
  %143 = load i64, i64* %length498, align 8, !tbaa !44
  %add606 = add i64 %143, 5
  store i64 %add606, i64* %length498, align 8, !tbaa !44
  br i1 %tobool18, label %cleanup621.thread1015, label %for.inc624

cleanup621.thread1015:                            ; preds = %if.end603
  store i64 %add606, i64* %written, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #16
  br label %cleanup640

cleanup621.thread:                                ; preds = %if.then510, %if.then602, %if.then544, %cleanup535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #16
  br label %err

for.inc624:                                       ; preds = %if.end603
  %type615 = getelementptr inbounds [32 x %struct.ssl3_record_st], [32 x %struct.ssl3_record_st]* %wr, i64 0, i64 %j.31056, i32 1
  store i32 %type, i32* %type615, align 4, !tbaa !43
  %add617 = add i64 %55, %add606
  %left = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 %j.31056, i32 4
  store i64 %add617, i64* %left, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118) #16
  %inc625 = add nuw i64 %j.31056, 1
  %exitcond1074.not = icmp eq i64 %inc625, %numpipes
  br i1 %exitcond1074.not, label %for.end626, label %for.body492, !llvm.loop !128

for.end626:                                       ; preds = %for.inc624, %if.end488
  %wpend_tot = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 14
  store i64 %totlen.1.lcssa, i64* %wpend_tot, align 8, !tbaa !72
  %wpend_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 17
  store i8* %buf, i8** %wpend_buf, align 8, !tbaa !90
  %wpend_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 15
  store i32 %type, i32* %wpend_type, align 8, !tbaa !91
  %wpend_ret = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 16
  store i64 %totlen.1.lcssa, i64* %wpend_ret, align 8, !tbaa !92
  %call631 = call i32 @ssl3_write_pending(%struct.ssl_st* noundef nonnull %s, i32 noundef %type, i8* noundef %buf, i64 noundef %totlen.1.lcssa, i64* noundef %written) #14
  br label %cleanup640

err:                                              ; preds = %cleanup621.thread, %cleanup449.thread, %if.then482, %if.then485, %if.then468, %if.then471, %if.then118
  %wpinited.2 = phi i64 [ %wpinited.1, %if.then468 ], [ %wpinited.1, %if.then471 ], [ %wpinited.1, %if.then482 ], [ %wpinited.1, %if.then485 ], [ %j.11049, %if.then118 ], [ %wpinited.1, %cleanup449.thread ], [ %wpinited.1, %cleanup621.thread ]
  %cmp6331057.not = icmp eq i64 %wpinited.2, 0
  br i1 %cmp6331057.not, label %cleanup640, label %for.body635

for.body635:                                      ; preds = %err, %for.body635
  %j.41058 = phi i64 [ %inc638, %for.body635 ], [ 0, %err ]
  %arrayidx636 = getelementptr inbounds [32 x %struct.wpacket_st], [32 x %struct.wpacket_st]* %pkt, i64 0, i64 %j.41058
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %arrayidx636) #13
  %inc638 = add nuw i64 %j.41058, 1
  %exitcond1075.not = icmp eq i64 %inc638, %wpinited.2
  br i1 %exitcond1075.not, label %cleanup640, label %for.body635, !llvm.loop !129

cleanup640:                                       ; preds = %for.body635, %cleanup.thread, %if.then33, %if.then95, %if.then76, %err, %cleanup621.thread1015, %if.end16, %if.then11, %if.then3, %for.end626, %if.then
  %retval.2 = phi i32 [ %call1, %if.then ], [ %call631, %for.end626 ], [ %call4, %if.then3 ], [ -1, %if.then11 ], [ 0, %if.end16 ], [ 1, %cleanup621.thread1015 ], [ -1, %err ], [ -1, %if.then76 ], [ -1, %if.then95 ], [ -1, %if.then33 ], [ -1, %cleanup.thread ], [ -1, %for.body635 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 1792, i8* nonnull %0) #16
  ret i32 %retval.2
}

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_allocate_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #1

declare i32 @SSL_get_state(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @SSL_version(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_reserve_bytes(%struct.wpacket_st* noundef, i64 noundef, i8** noundef) local_unnamed_addr #1

declare i32 @ssl3_do_compress(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_memset(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @WPACKET_get_length(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare i8* @WPACKET_get_curr(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @tls13_enc(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef, i64 noundef, i32 noundef, %struct.ssl_mac_buf_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_statem_in_error(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ssl3_read_bytes(%struct.ssl_st* noundef %s, i32 noundef %type, i32* noundef writeonly %recvd_type, i8* noundef %buf, i64 noundef %len, i32 noundef %peek, i64* nocapture noundef writeonly %readbytes) local_unnamed_addr #0 {
entry:
  %alert_level = alloca i32, align 4
  %alert_descr = alloca i32, align 4
  %alert = alloca %struct.PACKET, align 8
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %0 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 25
  %1 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !58
  %enc_flags = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %1, i64 0, i32 12
  %2 = load i32, i32* %enc_flags, align 8, !tbaa !60
  %and = and i32 %2, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %0, i64 0, i32 0
  %3 = load i32, i32* %version, align 8, !tbaa !112
  %cmp = icmp sgt i32 %3, 771
  %cmp4 = icmp ne i32 %3, 65536
  %spec.select = and i1 %cmp, %cmp4
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry
  %4 = phi i1 [ false, %entry ], [ %spec.select, %land.lhs.true ]
  %buf6 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %5 = load i8*, i8** %buf6, align 8, !tbaa !52
  %cmp7.not = icmp eq i8* %5, null
  br i1 %cmp7.not, label %if.then, label %if.end10

if.then:                                          ; preds = %land.end
  %call = tail call i32 @ssl3_setup_read_buffer(%struct.ssl_st* noundef nonnull %s) #13
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %cleanup564, label %if.end10

if.end10:                                         ; preds = %if.then, %land.end
  switch i32 %type, label %if.then19 [
    i32 23, label %lor.lhs.false
    i32 22, label %lor.lhs.false
    i32 0, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %if.end10, %if.end10, %if.end10
  %cmp13 = icmp ne i32 %type, 23
  %tobool16 = icmp ne i32 %peek, 0
  %or.cond577 = and i1 %cmp13, %tobool16
  br i1 %or.cond577, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end10, %lor.lhs.false
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1289, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup564

if.end20:                                         ; preds = %lor.lhs.false
  %cmp21 = icmp eq i32 %type, 22
  br i1 %cmp21, label %land.lhs.true22, label %if.end50

land.lhs.true22:                                  ; preds = %if.end20
  %handshake_fragment_len = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 12
  %6 = load i64, i64* %handshake_fragment_len, align 8, !tbaa !130
  %cmp24.not = icmp eq i64 %6, 0
  br i1 %cmp24.not, label %if.end50, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 11, i64 0
  %cmp27.not1087 = icmp eq i64 %len, 0
  br i1 %cmp27.not1087, label %for.body.preheader, label %land.rhs28

land.rhs28:                                       ; preds = %if.then25, %while.body
  %7 = phi i64 [ %dec37, %while.body ], [ 1, %if.then25 ]
  %len.addr.01091 = phi i64 [ %dec, %while.body ], [ %len, %if.then25 ]
  %n.01090 = phi i64 [ %inc, %while.body ], [ 0, %if.then25 ]
  %dst.01089 = phi i8* [ %incdec.ptr34, %while.body ], [ %buf, %if.then25 ]
  %src.01088 = phi i8* [ %incdec.ptr, %while.body ], [ %arraydecay, %if.then25 ]
  %cmp31.not = icmp eq i64 %7, 0
  br i1 %cmp31.not, label %for.end, label %while.body

while.body:                                       ; preds = %land.rhs28
  %incdec.ptr = getelementptr inbounds i8, i8* %src.01088, i64 1
  %8 = load i8, i8* %src.01088, align 1, !tbaa !56
  %incdec.ptr34 = getelementptr inbounds i8, i8* %dst.01089, i64 1
  store i8 %8, i8* %dst.01089, align 1, !tbaa !56
  %dec = add i64 %len.addr.01091, -1
  %9 = load i64, i64* %handshake_fragment_len, align 8, !tbaa !130
  %dec37 = add i64 %9, -1
  store i64 %dec37, i64* %handshake_fragment_len, align 8, !tbaa !130
  %inc = add nuw i64 %n.01090, 1
  %cmp27.not = icmp eq i64 %dec, 0
  br i1 %cmp27.not, label %while.end, label %land.rhs28, !llvm.loop !131

while.end:                                        ; preds = %while.body
  %cmp401095.not = icmp eq i64 %dec37, 0
  br i1 %cmp401095.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then25, %while.end
  %n.0.lcssa1224 = phi i64 [ %len, %while.end ], [ 0, %if.then25 ]
  %src.0.lcssa1223 = phi i8* [ %incdec.ptr, %while.end ], [ %arraydecay, %if.then25 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %conv1098 = phi i64 [ %conv, %for.body ], [ 0, %for.body.preheader ]
  %src.11096 = phi i8* [ %incdec.ptr42, %for.body ], [ %src.0.lcssa1223, %for.body.preheader ]
  %incdec.ptr42 = getelementptr inbounds i8, i8* %src.11096, i64 1
  %10 = load i8, i8* %src.11096, align 1, !tbaa !56
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 11, i64 %conv1098
  store i8 %10, i8* %arrayidx, align 1, !tbaa !56
  %inc45 = add nuw nsw i64 %conv1098, 1
  %conv = and i64 %inc45, 4294967295
  %11 = load i64, i64* %handshake_fragment_len, align 8, !tbaa !130
  %cmp40 = icmp ugt i64 %11, %conv
  br i1 %cmp40, label %for.body, label %for.end, !llvm.loop !132

for.end:                                          ; preds = %land.rhs28, %for.body, %while.end
  %n.0.lcssa1218 = phi i64 [ %len, %while.end ], [ %n.0.lcssa1224, %for.body ], [ %n.01090, %land.rhs28 ]
  %cmp46.not = icmp eq i32* %recvd_type, null
  br i1 %cmp46.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %for.end
  store i32 22, i32* %recvd_type, align 4, !tbaa !64
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.end
  store i64 %n.0.lcssa1218, i64* %readbytes, align 8, !tbaa !25
  br label %cleanup564

if.end50:                                         ; preds = %land.lhs.true22, %if.end20
  %call51 = tail call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #13
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.end66

land.lhs.true53:                                  ; preds = %if.end50
  %call54 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #13
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end66, label %if.then56

if.then56:                                        ; preds = %land.lhs.true53
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %12 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !76
  %call57 = tail call i32 %12(%struct.ssl_st* noundef nonnull %s) #13
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %cleanup564, label %if.end61

if.end61:                                         ; preds = %if.then56
  %cmp62 = icmp eq i32 %call57, 0
  br i1 %cmp62, label %cleanup564, label %if.end66

if.end66:                                         ; preds = %if.end61, %land.lhs.true53, %if.end50
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  %numrpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 3
  %handshake_fragment_len107 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 12
  %alert_count = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 21
  %change_cipher_spec = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 11
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %cmp165 = icmp ne i32* %recvd_type, null
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %mode445 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %early_data_state = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 12
  %handshake_func518 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %left535 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 4
  %cmp173 = icmp eq i32 %type, 23
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %cmp193.not = icmp eq i32* %recvd_type, null
  %cmp198 = icmp eq i64 %len, 0
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %13 = bitcast i32* %alert_level to i8*
  %14 = bitcast i32* %alert_descr to i8*
  %15 = bitcast %struct.PACKET* %alert to i8*
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %version333 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 64
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %warn_alert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 12
  br label %start.outer

start.outer:                                      ; preds = %cleanup, %if.end66
  %cb.0.ph = phi void (%struct.ssl_st*, i32, i32)* [ %cb.1881, %cleanup ], [ null, %if.end66 ]
  %buf.addr.0.ph = phi i8* [ %buf.addr.0.ph907, %cleanup ], [ %buf, %if.end66 ]
  br label %start.outer906

start.outer906:                                   ; preds = %start.outer, %do.end271
  %buf.addr.0.ph907 = phi i8* [ %buf.addr.0.ph, %start.outer ], [ %add.ptr, %do.end271 ]
  br label %start

start:                                            ; preds = %start.backedge, %start.outer906
  store i32 1, i32* %rwstate, align 8, !tbaa !66
  %16 = load i64, i64* %numrpipes, align 8, !tbaa !42
  br label %do.body

do.body:                                          ; preds = %do.cond, %start
  %num_recs.0 = phi i64 [ %16, %start ], [ 0, %do.cond ]
  %cmp70 = icmp eq i64 %num_recs.0, 0
  br i1 %cmp70, label %if.then72, label %land.rhs88.preheader

if.then72:                                        ; preds = %do.body
  %call73 = tail call i32 @ssl3_get_record(%struct.ssl_st* noundef nonnull %s) #13
  %cmp74 = icmp slt i32 %call73, 1
  br i1 %cmp74, label %cleanup564, label %if.end77

if.end77:                                         ; preds = %if.then72
  %17 = load i64, i64* %numrpipes, align 8, !tbaa !42
  %cmp80 = icmp eq i64 %17, 0
  br i1 %cmp80, label %if.then82, label %land.rhs88.preheader

if.then82:                                        ; preds = %if.end77
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1356, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup564

land.rhs88.preheader:                             ; preds = %do.body, %if.end77
  %num_recs.1 = phi i64 [ %17, %if.end77 ], [ %num_recs.0, %do.body ]
  br label %land.rhs88

land.rhs88:                                       ; preds = %land.rhs88.preheader, %for.inc94
  %curr_rec.01100 = phi i64 [ %inc95, %for.inc94 ], [ 0, %land.rhs88.preheader ]
  %read = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  %18 = load i32, i32* %read, align 8, !tbaa !36
  %tobool90.not = icmp eq i32 %18, 0
  br i1 %tobool90.not, label %for.end96, label %for.inc94

for.inc94:                                        ; preds = %land.rhs88
  %inc95 = add nuw i64 %curr_rec.01100, 1
  %exitcond.not = icmp eq i64 %inc95, %num_recs.1
  br i1 %exitcond.not, label %do.cond, label %land.rhs88, !llvm.loop !133

for.end96:                                        ; preds = %land.rhs88
  %cmp97 = icmp eq i64 %curr_rec.01100, %num_recs.1
  br i1 %cmp97, label %do.cond, label %do.end

do.cond:                                          ; preds = %for.inc94, %for.end96
  store i64 0, i64* %numrpipes, align 8, !tbaa !42
  br label %do.body, !llvm.loop !134

do.end:                                           ; preds = %for.end96
  %arrayidx105 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100
  %19 = load i64, i64* %handshake_fragment_len107, align 8, !tbaa !130
  %cmp108.not = icmp eq i64 %19, 0
  %type132.phi.trans.insert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 1
  %.pre = load i32, i32* %type132.phi.trans.insert, align 4, !tbaa !43
  br i1 %cmp108.not, label %if.end131, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %do.end
  %cmp112.not = icmp eq i32 %.pre, 22
  br i1 %cmp112.not, label %if.end131.thread, label %land.lhs.true114

if.end131.thread:                                 ; preds = %land.lhs.true110
  %type1321230 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 1
  br label %land.lhs.true135

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %20 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %ssl3_enc116 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 25
  %21 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc116, align 8, !tbaa !58
  %enc_flags117 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %21, i64 0, i32 12
  %22 = load i32, i32* %enc_flags117, align 8, !tbaa !60
  %and118 = and i32 %22, 8
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %land.lhs.true120, label %if.end131

land.lhs.true120:                                 ; preds = %land.lhs.true114
  %version122 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 0
  %23 = load i32, i32* %version122, align 8, !tbaa !112
  %cmp123 = icmp slt i32 %23, 772
  %cmp128.not = icmp eq i32 %23, 65536
  %or.cond = or i1 %cmp123, %cmp128.not
  br i1 %or.cond, label %if.end131, label %if.then130

if.then130:                                       ; preds = %land.lhs.true120
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1376, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 293, i8* noundef null) #13
  br label %cleanup564

if.end131:                                        ; preds = %do.end, %land.lhs.true120, %land.lhs.true114
  %type132 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 1
  %cmp133.not = icmp eq i32 %.pre, 21
  br i1 %cmp133.not, label %if.end140.thread, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %if.end131.thread, %if.end131
  %type1321233 = phi i32* [ %type1321230, %if.end131.thread ], [ %type132, %if.end131 ]
  %24 = phi i32 [ 22, %if.end131.thread ], [ %.pre, %if.end131 ]
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  %25 = load i64, i64* %length, align 8, !tbaa !44
  %cmp136.not = icmp eq i64 %25, 0
  br i1 %cmp136.not, label %if.end140, label %if.then138

if.then138:                                       ; preds = %land.lhs.true135
  store i32 0, i32* %alert_count, align 4, !tbaa !135
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %land.lhs.true135
  %26 = load i32, i32* %change_cipher_spec, align 8, !tbaa !136
  %tobool141.not = icmp eq i32 %26, 0
  %cmp144.not = icmp eq i32 %24, 22
  %or.cond903 = select i1 %tobool141.not, i1 true, i1 %cmp144.not
  br i1 %or.cond903, label %if.end147, label %if.then146

if.end140.thread:                                 ; preds = %if.end131
  %27 = load i32, i32* %change_cipher_spec, align 8, !tbaa !136
  %tobool141.not867 = icmp eq i32 %27, 0
  br i1 %tobool141.not867, label %if.end147, label %if.then146

if.then146:                                       ; preds = %if.end140, %if.end140.thread
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1394, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 145, i8* noundef null) #13
  br label %cleanup564

if.end147:                                        ; preds = %if.end140.thread, %if.end140
  %cmp133.not1237 = phi i1 [ true, %if.end140.thread ], [ false, %if.end140 ]
  %type1321232 = phi i32* [ %type132, %if.end140.thread ], [ %type1321233, %if.end140 ]
  %28 = phi i32 [ 21, %if.end140.thread ], [ %24, %if.end140 ]
  %29 = load i32, i32* %shutdown, align 4, !tbaa !137
  %and148 = and i32 %29, 2
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end153, label %if.then150

if.then150:                                       ; preds = %if.end147
  %length151 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  store i64 0, i64* %length151, align 8, !tbaa !44
  store i32 1, i32* %rwstate, align 8, !tbaa !66
  br label %cleanup564

if.end153:                                        ; preds = %if.end147
  %cmp155 = icmp eq i32 %28, %type
  br i1 %cmp155, label %if.then169, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %if.end153
  %cmp159 = icmp eq i32 %28, 20
  %or.cond578 = and i1 %cmp21, %cmp159
  %or.cond579 = and i1 %cmp165, %or.cond578
  %or.cond579.not = xor i1 %or.cond579, true
  %or.cond580 = select i1 %or.cond579.not, i1 true, i1 %4
  br i1 %or.cond580, label %if.end289, label %if.then169

if.then169:                                       ; preds = %lor.lhs.false157, %if.end153
  %call170 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #13
  %tobool171 = icmp ne i32 %call170, 0
  %or.cond581 = and i1 %cmp173, %tobool171
  br i1 %or.cond581, label %land.lhs.true175, label %if.end179

land.lhs.true175:                                 ; preds = %if.then169
  %30 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !138
  %cmp176 = icmp eq %struct.evp_cipher_ctx_st* %30, null
  br i1 %cmp176, label %if.then178, label %if.end179

if.then178:                                       ; preds = %land.lhs.true175
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1423, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 100, i8* noundef null) #13
  br label %cleanup564

if.end179:                                        ; preds = %land.lhs.true175, %if.then169
  br i1 %cmp21, label %land.lhs.true182, label %if.end192

land.lhs.true182:                                 ; preds = %if.end179
  %31 = load i32, i32* %type1321232, align 4, !tbaa !43
  %cmp184 = icmp eq i32 %31, 20
  br i1 %cmp184, label %land.lhs.true186, label %if.end192

land.lhs.true186:                                 ; preds = %land.lhs.true182
  %32 = load i64, i64* %handshake_fragment_len107, align 8, !tbaa !130
  %cmp189.not = icmp eq i64 %32, 0
  br i1 %cmp189.not, label %if.end192, label %if.then191

if.then191:                                       ; preds = %land.lhs.true186
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1430, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 133, i8* noundef null) #13
  br label %cleanup564

if.end192:                                        ; preds = %land.lhs.true186, %land.lhs.true182, %if.end179
  br i1 %cmp193.not, label %if.end197, label %if.then195

if.then195:                                       ; preds = %if.end192
  %33 = load i32, i32* %type1321232, align 4, !tbaa !43
  store i32 %33, i32* %recvd_type, align 4, !tbaa !64
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %if.end192
  br i1 %cmp198, label %if.then200, label %do.body208

if.then200:                                       ; preds = %if.end197
  %length201 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  %34 = load i64, i64* %length201, align 8, !tbaa !44
  %cmp202 = icmp eq i64 %34, 0
  br i1 %cmp202, label %if.then204, label %cleanup564

if.then204:                                       ; preds = %if.then200
  %read205 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read205, align 8, !tbaa !36
  br label %cleanup564

do.body208:                                       ; preds = %if.end197, %if.end258
  %rr.0 = phi %struct.ssl3_record_st* [ %rr.1, %if.end258 ], [ %arrayidx105, %if.end197 ]
  %totalbytes.0 = phi i64 [ %add259, %if.end258 ], [ 0, %if.end197 ]
  %curr_rec.2 = phi i64 [ %curr_rec.3, %if.end258 ], [ %curr_rec.01100, %if.end197 ]
  %buf.addr.1 = phi i8* [ %add.ptr, %if.end258 ], [ %buf.addr.0.ph907, %if.end197 ]
  %sub = sub i64 %len, %totalbytes.0
  %length209 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr.0, i64 0, i32 2
  %35 = load i64, i64* %length209, align 8, !tbaa !44
  %cmp210 = icmp ugt i64 %sub, %35
  %.sub = select i1 %cmp210, i64 %35, i64 %sub
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr.0, i64 0, i32 5
  %36 = load i8*, i8** %data, align 8, !tbaa !118
  %off = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr.0, i64 0, i32 4
  %37 = load i64, i64* %off, align 8, !tbaa !139
  %arrayidx216 = getelementptr inbounds i8, i8* %36, i64 %37
  %call217 = tail call i8* @memcpy(i8* noundef %buf.addr.1, i8* noundef %arrayidx216, i64 noundef %.sub) #13
  %add.ptr = getelementptr inbounds i8, i8* %buf.addr.1, i64 %.sub
  br i1 %tobool16, label %if.then219, label %if.else226

if.then219:                                       ; preds = %do.body208
  %38 = load i64, i64* %length209, align 8, !tbaa !44
  %cmp221 = icmp eq i64 %38, 0
  br i1 %cmp221, label %if.then255.sink.split, label %lor.lhs.false249

if.else226:                                       ; preds = %do.body208
  %39 = load i64, i64* %options, align 8, !tbaa !67
  %and227 = and i64 %39, 2
  %tobool228.not = icmp eq i64 %and227, 0
  br i1 %tobool228.not, label %if.end233, label %if.then229

if.then229:                                       ; preds = %if.else226
  %40 = load i8*, i8** %data, align 8, !tbaa !118
  %41 = load i64, i64* %off, align 8, !tbaa !139
  %arrayidx232 = getelementptr inbounds i8, i8* %40, i64 %41
  tail call void @OPENSSL_cleanse(i8* noundef %arrayidx232, i64 noundef %.sub) #13
  br label %if.end233

if.end233:                                        ; preds = %if.then229, %if.else226
  %42 = load i64, i64* %length209, align 8, !tbaa !44
  %sub235 = sub i64 %42, %.sub
  store i64 %sub235, i64* %length209, align 8, !tbaa !44
  %43 = load i64, i64* %off, align 8, !tbaa !139
  %add = add i64 %43, %.sub
  store i64 %add, i64* %off, align 8, !tbaa !139
  %cmp238 = icmp eq i64 %sub235, 0
  br i1 %cmp238, label %if.end245, label %if.end258

if.end245:                                        ; preds = %if.end233
  store i32 240, i32* %rstate, align 4, !tbaa !41
  store i64 0, i64* %off, align 8, !tbaa !139
  br label %if.then255.sink.split

lor.lhs.false249:                                 ; preds = %if.then219
  %cmp253 = icmp eq i64 %.sub, %38
  br i1 %cmp253, label %if.then255, label %if.end258

if.then255.sink.split:                            ; preds = %if.then219, %if.end245
  %read243 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr.0, i64 0, i32 8
  store i32 1, i32* %read243, align 8, !tbaa !36
  br label %if.then255

if.then255:                                       ; preds = %if.then255.sink.split, %lor.lhs.false249
  %inc256 = add i64 %curr_rec.2, 1
  %incdec.ptr257 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr.0, i64 1
  br label %if.end258

if.end258:                                        ; preds = %if.end233, %if.then255, %lor.lhs.false249
  %rr.1 = phi %struct.ssl3_record_st* [ %incdec.ptr257, %if.then255 ], [ %rr.0, %lor.lhs.false249 ], [ %rr.0, %if.end233 ]
  %curr_rec.3 = phi i64 [ %inc256, %if.then255 ], [ %curr_rec.2, %lor.lhs.false249 ], [ %curr_rec.2, %if.end233 ]
  %add259 = add i64 %.sub, %totalbytes.0
  %cmp264 = icmp ult i64 %curr_rec.3, %num_recs.1
  %or.cond854 = select i1 %cmp173, i1 %cmp264, i1 false
  %cmp267 = icmp ult i64 %add259, %len
  %or.cond855 = select i1 %or.cond854, i1 %cmp267, i1 false
  br i1 %or.cond855, label %do.body208, label %do.end271, !llvm.loop !140

do.end271:                                        ; preds = %if.end258
  %cmp272 = icmp eq i64 %add259, 0
  br i1 %cmp272, label %start.outer906, label %if.end275

if.end275:                                        ; preds = %do.end271
  %tobool16.not = xor i1 %tobool16, true
  %cmp278 = icmp eq i64 %curr_rec.3, %num_recs.1
  %or.cond856 = select i1 %tobool16.not, i1 %cmp278, i1 false
  br i1 %or.cond856, label %land.lhs.true280, label %if.end288

land.lhs.true280:                                 ; preds = %if.end275
  %44 = load i32, i32* %mode445, align 8, !tbaa !69
  %and281 = and i32 %44, 16
  %tobool282.not = icmp eq i32 %and281, 0
  br i1 %tobool282.not, label %if.end288, label %land.lhs.true283

land.lhs.true283:                                 ; preds = %land.lhs.true280
  %45 = load i64, i64* %left535, align 8, !tbaa !40
  %cmp284 = icmp eq i64 %45, 0
  br i1 %cmp284, label %if.then286, label %if.end288

if.then286:                                       ; preds = %land.lhs.true283
  %call287 = tail call i32 @ssl3_release_read_buffer(%struct.ssl_st* noundef nonnull %s) #13
  br label %if.end288

if.end288:                                        ; preds = %if.then286, %land.lhs.true283, %land.lhs.true280, %if.end275
  store i64 %add259, i64* %readbytes, align 8, !tbaa !25
  br label %cleanup564

if.end289:                                        ; preds = %lor.lhs.false157
  %rec_version = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %arrayidx105, i64 0, i32 0
  %46 = load i32, i32* %rec_version, align 8, !tbaa !117
  %cmp290 = icmp eq i32 %46, 2
  br i1 %cmp290, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.end289
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1508, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup564

if.end293:                                        ; preds = %if.end289
  %47 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !57
  %version295 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %47, i64 0, i32 0
  %48 = load i32, i32* %version295, align 8, !tbaa !112
  %cmp296 = icmp eq i32 %48, 65536
  br i1 %cmp296, label %land.lhs.true298, label %if.end307

land.lhs.true298:                                 ; preds = %if.end293
  %49 = load i32, i32* %server, align 8, !tbaa !141
  %tobool299.not = icmp eq i32 %49, 0
  %or.cond857 = and i1 %tobool299.not, %cmp133.not1237
  br i1 %or.cond857, label %if.end307, label %if.then304

if.then304:                                       ; preds = %land.lhs.true298
  store i32 %46, i32* %version333, align 8, !tbaa !85
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1521, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 244, i8* noundef null) #13
  br label %cleanup564

if.end307:                                        ; preds = %land.lhs.true298, %if.end293
  br i1 %cmp133.not1237, label %if.then311, label %if.end417

if.then311:                                       ; preds = %if.end307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #16
  %data312 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 5
  %50 = load i8*, i8** %data312, align 8, !tbaa !118
  %off313 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 4
  %51 = load i64, i64* %off313, align 8, !tbaa !139
  %add.ptr314 = getelementptr inbounds i8, i8* %50, i64 %51
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #16
  %length315 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  %52 = load i64, i64* %length315, align 8, !tbaa !44
  %call316 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %alert, i8* noundef %add.ptr314, i64 noundef %52) #14
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %if.then328, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %if.then311
  %call319 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %alert, i32* noundef nonnull %alert_level) #14
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.then328, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %lor.lhs.false318
  %call322 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %alert, i32* noundef nonnull %alert_descr) #14
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %if.then328, label %lor.lhs.false324

lor.lhs.false324:                                 ; preds = %lor.lhs.false321
  %call325 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %alert) #14
  %cmp326.not = icmp eq i64 %call325, 0
  br i1 %cmp326.not, label %if.end329, label %if.then328

if.then328:                                       ; preds = %lor.lhs.false324, %lor.lhs.false321, %lor.lhs.false318, %if.then311
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1540, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 205, i8* noundef null) #13
  br label %cleanup.thread

if.end329:                                        ; preds = %lor.lhs.false324
  %53 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !78
  %tobool330.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %53, null
  br i1 %tobool330.not, label %if.end334, label %if.then331

if.then331:                                       ; preds = %if.end329
  %54 = load i32, i32* %version333, align 8, !tbaa !85
  %55 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !127
  tail call void %53(i32 noundef 0, i32 noundef %54, i32 noundef 21, i8* noundef %add.ptr314, i64 noundef 2, %struct.ssl_st* noundef nonnull %s, i8* noundef %55) #13
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %if.end329
  %56 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !142
  %cmp335.not = icmp eq void (%struct.ssl_st*, i32, i32)* %56, null
  br i1 %cmp335.not, label %if.end347, label %if.then350

if.end347:                                        ; preds = %if.end334
  %57 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !143
  %info_callback340 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %57, i64 0, i32 31
  %58 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback340, align 8, !tbaa !144
  %cmp341.not = icmp eq void (%struct.ssl_st*, i32, i32)* %58, null
  %spec.select858 = select i1 %cmp341.not, void (%struct.ssl_st*, i32, i32)* %cb.0.ph, void (%struct.ssl_st*, i32, i32)* %58
  %cmp348.not = icmp eq void (%struct.ssl_st*, i32, i32)* %spec.select858, null
  br i1 %cmp348.not, label %if.end351thread-pre-split, label %if.then350

if.then350:                                       ; preds = %if.end334, %if.end347
  %cb.1880 = phi void (%struct.ssl_st*, i32, i32)* [ %spec.select858, %if.end347 ], [ %56, %if.end334 ]
  %59 = load i32, i32* %alert_level, align 4, !tbaa !64
  %shl = shl i32 %59, 8
  %60 = load i32, i32* %alert_descr, align 4, !tbaa !64
  %or = or i32 %shl, %60
  tail call void %cb.1880(%struct.ssl_st* noundef nonnull %s, i32 noundef 16388, i32 noundef %or) #13
  br label %if.end351

if.end351thread-pre-split:                        ; preds = %if.end347
  %.pr884 = load i32, i32* %alert_level, align 4, !tbaa !64
  br label %if.end351

if.end351:                                        ; preds = %if.end351thread-pre-split, %if.then350
  %61 = phi i32 [ %.pr884, %if.end351thread-pre-split ], [ %59, %if.then350 ]
  %cb.1881 = phi void (%struct.ssl_st*, i32, i32)* [ null, %if.end351thread-pre-split ], [ %cb.1880, %if.then350 ]
  %cmp352 = icmp eq i32 %61, 1
  %.pre1214 = load i32, i32* %alert_descr, align 4
  br i1 %cmp352, label %if.then359, label %lor.lhs.false354

lor.lhs.false354:                                 ; preds = %if.end351
  %cmp357 = icmp eq i32 %.pre1214, 90
  %or.cond583 = select i1 %4, i1 %cmp357, i1 false
  br i1 %or.cond583, label %if.then359, label %if.end371

if.then359:                                       ; preds = %if.end351, %lor.lhs.false354
  %.pr885 = phi i32 [ 90, %lor.lhs.false354 ], [ %.pre1214, %if.end351 ]
  store i32 %.pr885, i32* %warn_alert, align 4, !tbaa !68
  %read361 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read361, align 8, !tbaa !36
  %62 = load i32, i32* %alert_count, align 4, !tbaa !135
  %inc364 = add i32 %62, 1
  store i32 %inc364, i32* %alert_count, align 4, !tbaa !135
  %cmp367 = icmp eq i32 %inc364, 5
  br i1 %cmp367, label %if.then369, label %if.end371

if.then369:                                       ; preds = %if.then359
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1566, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 409, i8* noundef null) #13
  br label %cleanup.thread

if.end371:                                        ; preds = %if.then359, %lor.lhs.false354
  %63 = phi i32 [ %.pre1214, %lor.lhs.false354 ], [ %.pr885, %if.then359 ]
  %cmp374 = icmp eq i32 %63, 90
  %or.cond584 = select i1 %4, i1 %cmp374, i1 false
  br i1 %or.cond584, label %cleanup, label %if.else377

if.else377:                                       ; preds = %if.end371
  %cmp378 = icmp eq i32 %63, 0
  br i1 %cmp378, label %land.lhs.true380, label %if.else388

land.lhs.true380:                                 ; preds = %if.else377
  %or.cond585 = select i1 %4, i1 true, i1 %cmp352
  br i1 %or.cond585, label %if.then385, label %if.else388.thread

if.then385:                                       ; preds = %land.lhs.true380
  %64 = load i32, i32* %shutdown, align 4, !tbaa !137
  %or387 = or i32 %64, 2
  store i32 %or387, i32* %shutdown, align 4, !tbaa !137
  br label %cleanup.thread

if.else388:                                       ; preds = %if.else377
  %cmp389 = icmp eq i32 %61, 2
  %or.cond586 = select i1 %cmp389, i1 true, i1 %4
  br i1 %or.cond586, label %if.then393, label %if.else401

if.else388.thread:                                ; preds = %land.lhs.true380
  %cmp389887 = icmp eq i32 %61, 2
  br i1 %cmp389887, label %if.then393, label %if.else405

if.then393:                                       ; preds = %if.else388.thread, %if.else388
  store i32 1, i32* %rwstate, align 8, !tbaa !66
  %fatal_alert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 13
  store i32 %63, i32* %fatal_alert, align 8, !tbaa !145
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1584, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  %add396 = add i32 %63, 1000
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef %add396, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 noundef %63) #13
  %65 = load i32, i32* %shutdown, align 4, !tbaa !137
  %or398 = or i32 %65, 2
  store i32 %or398, i32* %shutdown, align 4, !tbaa !137
  %read399 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read399, align 8, !tbaa !36
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %66 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !146
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %67 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !108
  %call400 = tail call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %66, %struct.ssl_session_st* noundef %67) #13
  br label %cleanup.thread

if.else401:                                       ; preds = %if.else388
  %cmp402 = icmp eq i32 %63, 100
  br i1 %cmp402, label %if.then404, label %if.else405

if.then404:                                       ; preds = %if.else401
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1600, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 40, i32 noundef 339, i8* noundef null) #13
  br label %cleanup.thread

if.else405:                                       ; preds = %if.else388.thread, %if.else401
  br i1 %cmp352, label %cleanup, label %if.end413

if.end413:                                        ; preds = %if.else405
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1607, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 246, i8* noundef null) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then328, %if.then369, %if.then385, %if.then393, %if.then404, %if.end413
  %retval.1.ph = phi i32 [ -1, %if.end413 ], [ -1, %if.then404 ], [ 0, %if.then393 ], [ 0, %if.then385 ], [ -1, %if.then369 ], [ -1, %if.then328 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #16
  br label %cleanup564

cleanup:                                          ; preds = %if.else405, %if.end371
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #16
  br label %start.outer

if.end417:                                        ; preds = %if.end307
  %and419 = and i32 %29, 1
  %cmp420.not = icmp eq i32 %and419, 0
  %cmp462 = icmp eq i32 %28, 22
  br i1 %cmp420.not, label %if.end460, label %if.then422

if.then422:                                       ; preds = %if.end417
  br i1 %cmp462, label %if.then426, label %if.else456

if.then426:                                       ; preds = %if.then422
  %ssl3_enc428 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %47, i64 0, i32 25
  %68 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc428, align 8, !tbaa !58
  %enc_flags429 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %68, i64 0, i32 12
  %69 = load i32, i32* %enc_flags429, align 8, !tbaa !60
  %and430 = and i32 %69, 8
  %tobool431.not = icmp ne i32 %and430, 0
  %cmp435 = icmp slt i32 %48, 772
  %or.cond859 = or i1 %cmp435, %cmp296
  %or.cond904 = select i1 %tobool431.not, i1 true, i1 %or.cond859
  br i1 %or.cond904, label %if.then442, label %if.then464

if.then442:                                       ; preds = %if.then426
  %length443 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  store i64 0, i64* %length443, align 8, !tbaa !44
  %read444 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read444, align 8, !tbaa !36
  %70 = load i32, i32* %mode445, align 8, !tbaa !69
  %and446 = and i32 %70, 4
  %cmp447.not = icmp eq i32 %and446, 0
  br i1 %cmp447.not, label %cleanup454.thread, label %start.backedge

cleanup454.thread:                                ; preds = %if.then442
  store i32 3, i32* %rwstate, align 8, !tbaa !66
  %call452 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #13
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %call452, i32 noundef 15) #13
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call452, i32 noundef 9) #13
  br label %cleanup564

if.else456:                                       ; preds = %if.then422
  %length457 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  store i64 0, i64* %length457, align 8, !tbaa !44
  %read458 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read458, align 8, !tbaa !36
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1646, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef 291, i8* noundef null) #13
  br label %cleanup564

if.end460:                                        ; preds = %if.end417
  br i1 %cmp462, label %if.then464, label %if.end502

if.then464:                                       ; preds = %if.then426, %if.end460
  %sub470 = sub i64 4, %19
  %length471 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  %71 = load i64, i64* %length471, align 8, !tbaa !44
  %cmp472 = icmp ult i64 %71, %sub470
  %spec.select860 = select i1 %cmp472, i64 %71, i64 %sub470
  %add.ptr477 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 11, i64 %19
  %data478 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 5
  %72 = load i8*, i8** %data478, align 8, !tbaa !118
  %off479 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 4
  %73 = load i64, i64* %off479, align 8, !tbaa !139
  %add.ptr480 = getelementptr inbounds i8, i8* %72, i64 %73
  %call481 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr477, i8* noundef %add.ptr480, i64 noundef %spec.select860) #13
  %74 = load i64, i64* %off479, align 8, !tbaa !139
  %add483 = add i64 %74, %spec.select860
  store i64 %add483, i64* %off479, align 8, !tbaa !139
  %75 = load i64, i64* %length471, align 8, !tbaa !44
  %sub485 = sub i64 %75, %spec.select860
  store i64 %sub485, i64* %length471, align 8, !tbaa !44
  %76 = load i64, i64* %handshake_fragment_len107, align 8, !tbaa !25
  %add486 = add i64 %76, %spec.select860
  store i64 %add486, i64* %handshake_fragment_len107, align 8, !tbaa !25
  %cmp488 = icmp eq i64 %sub485, 0
  br i1 %cmp488, label %if.then490, label %if.end492

if.then490:                                       ; preds = %if.then464
  %read491 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read491, align 8, !tbaa !36
  br label %if.end492

if.end492:                                        ; preds = %if.then490, %if.then464
  %cmp493 = icmp ult i64 %add486, 4
  br i1 %cmp493, label %start.backedge, label %if.end502thread-pre-split

if.end502thread-pre-split:                        ; preds = %if.end492
  %.pr900 = load i32, i32* %type1321232, align 4, !tbaa !43
  br label %if.end502

if.end502:                                        ; preds = %if.end502thread-pre-split, %if.end460
  %77 = phi i64 [ %add486, %if.end502thread-pre-split ], [ %19, %if.end460 ]
  %78 = phi i32 [ %.pr900, %if.end502thread-pre-split ], [ %28, %if.end460 ]
  %cmp504 = icmp eq i32 %78, 20
  br i1 %cmp504, label %if.then506, label %if.end507

if.then506:                                       ; preds = %if.end502
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1680, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 133, i8* noundef null) #13
  br label %cleanup564

if.end507:                                        ; preds = %if.end502
  %cmp510 = icmp ugt i64 %77, 3
  br i1 %cmp510, label %land.lhs.true512, label %if.end546

land.lhs.true512:                                 ; preds = %if.end507
  %call513 = tail call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #13
  %tobool514.not = icmp eq i32 %call513, 0
  br i1 %tobool514.not, label %if.then515, label %land.lhs.true512.if.end546_crit_edge

land.lhs.true512.if.end546_crit_edge:             ; preds = %land.lhs.true512
  %.pre1213 = load i32, i32* %type1321232, align 4, !tbaa !43
  br label %if.end546

if.then515:                                       ; preds = %land.lhs.true512
  %79 = load i32, i32* %early_data_state, align 4, !tbaa !73
  tail call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #13
  %80 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func518, align 8, !tbaa !76
  %call519 = tail call i32 %80(%struct.ssl_st* noundef nonnull %s) #13
  %cmp520 = icmp slt i32 %call519, 0
  br i1 %cmp520, label %cleanup564, label %if.end523

if.end523:                                        ; preds = %if.then515
  %cmp516 = icmp eq i32 %79, 11
  %cmp524 = icmp eq i32 %call519, 0
  %brmerge = select i1 %cmp524, i1 true, i1 %cmp516
  br i1 %brmerge, label %cleanup564, label %if.end530

if.end530:                                        ; preds = %if.end523
  %81 = load i32, i32* %mode445, align 8, !tbaa !69
  %and532 = and i32 %81, 4
  %tobool533.not = icmp eq i32 %and532, 0
  br i1 %tobool533.not, label %if.then534, label %start.backedge

if.then534:                                       ; preds = %if.end530
  %82 = load i64, i64* %left535, align 8, !tbaa !40
  %cmp536 = icmp eq i64 %82, 0
  br i1 %cmp536, label %if.then538, label %start.backedge

start.backedge:                                   ; preds = %if.then534, %if.end530, %if.end561, %if.end492, %if.then442
  br label %start

if.then538:                                       ; preds = %if.then534
  store i32 3, i32* %rwstate, align 8, !tbaa !66
  %call540 = tail call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #13
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %call540, i32 noundef 15) #13
  tail call void @BIO_set_flags(%struct.bio_st* noundef %call540, i32 noundef 9) #13
  br label %cleanup564

if.end546:                                        ; preds = %land.lhs.true512.if.end546_crit_edge, %if.end507
  %83 = phi i32 [ %.pre1213, %land.lhs.true512.if.end546_crit_edge ], [ %78, %if.end507 ]
  switch i32 %83, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb548
  ]

sw.default:                                       ; preds = %if.end546
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1740, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 245, i8* noundef null) #13
  br label %cleanup564

sw.bb:                                            ; preds = %if.end546, %if.end546, %if.end546
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1750, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 786691, i8* noundef null) #13
  br label %cleanup564

sw.bb548:                                         ; preds = %if.end546
  %call549 = tail call i32 @ossl_statem_app_data_allowed(%struct.ssl_st* noundef nonnull %s) #13
  %tobool550.not = icmp eq i32 %call549, 0
  br i1 %tobool550.not, label %if.else553, label %if.then551

if.then551:                                       ; preds = %sw.bb548
  %in_read_app_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 19
  store i32 2, i32* %in_read_app_data, align 8, !tbaa !147
  br label %cleanup564

if.else553:                                       ; preds = %sw.bb548
  %call554 = tail call i32 @ossl_statem_skip_early_data(%struct.ssl_st* noundef nonnull %s) #13
  %tobool555.not = icmp eq i32 %call554, 0
  br i1 %tobool555.not, label %if.else563, label %if.then556

if.then556:                                       ; preds = %if.else553
  %length557 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 2
  %84 = load i64, i64* %length557, align 8, !tbaa !44
  %call558 = tail call i32 @early_data_count_ok(%struct.ssl_st* noundef nonnull %s, i64 noundef %84, i64 noundef 104, i32 noundef 0) #13
  %tobool559.not = icmp eq i32 %call558, 0
  br i1 %tobool559.not, label %cleanup564, label %if.end561

if.end561:                                        ; preds = %if.then556
  %read562 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 %curr_rec.01100, i32 8
  store i32 1, i32* %read562, align 8, !tbaa !36
  br label %start.backedge

if.else563:                                       ; preds = %if.else553
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef 1781, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ssl3_read_bytes, i64 0, i64 0)) #13
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 245, i8* noundef null) #13
  br label %cleanup564

cleanup564:                                       ; preds = %if.end523, %if.then515, %if.then556, %if.then72, %if.then538, %cleanup454.thread, %cleanup.thread, %if.then200, %if.then204, %if.end61, %if.then56, %if.then, %if.else563, %if.then551, %sw.bb, %sw.default, %if.then506, %if.else456, %if.then304, %if.then292, %if.end288, %if.then191, %if.then178, %if.then150, %if.then146, %if.then130, %if.then82, %if.end49, %if.then19
  %retval.5 = phi i32 [ -1, %if.then19 ], [ 1, %if.end49 ], [ -1, %if.then82 ], [ -1, %if.then146 ], [ 0, %if.then150 ], [ -1, %if.then178 ], [ -1, %if.then191 ], [ 1, %if.end288 ], [ -1, %if.then292 ], [ -1, %if.then304 ], [ -1, %if.then506 ], [ -1, %sw.default ], [ -1, %if.then551 ], [ -1, %if.else563 ], [ -1, %sw.bb ], [ -1, %if.else456 ], [ -1, %if.then130 ], [ -1, %if.then ], [ %call57, %if.then56 ], [ -1, %if.end61 ], [ 0, %if.then204 ], [ 0, %if.then200 ], [ %retval.1.ph, %cleanup.thread ], [ -1, %cleanup454.thread ], [ -1, %if.then538 ], [ %call73, %if.then72 ], [ %call519, %if.then515 ], [ -1, %if.end523 ], [ -1, %if.then556 ]
  ret i32 %retval.5
}

declare i32 @ssl3_get_record(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #6 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !148
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !150
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #3 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !150
  ret i64 %0
}

declare i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #1

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_statem_app_data_allowed(%struct.ssl_st* noundef) local_unnamed_addr #1

declare i32 @ossl_statem_skip_early_data(%struct.ssl_st* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @ssl3_record_sequence_update(i8* nocapture noundef %seq) local_unnamed_addr #9 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %seq, i64 7
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !56
  %inc = add i8 %0, 1
  store i8 %inc, i8* %arrayidx, align 1, !tbaa !56
  %cmp3.not = icmp eq i8 %inc, 0
  br i1 %cmp3.not, label %for.cond, label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr inbounds i8, i8* %seq, i64 6
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !56
  %inc.1 = add i8 %1, 1
  store i8 %inc.1, i8* %arrayidx.1, align 1, !tbaa !56
  %cmp3.not.1 = icmp eq i8 %inc.1, 0
  br i1 %cmp3.not.1, label %for.cond.1, label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr inbounds i8, i8* %seq, i64 5
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !56
  %inc.2 = add i8 %2, 1
  store i8 %inc.2, i8* %arrayidx.2, align 1, !tbaa !56
  %cmp3.not.2 = icmp eq i8 %inc.2, 0
  br i1 %cmp3.not.2, label %for.cond.2, label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr inbounds i8, i8* %seq, i64 4
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !56
  %inc.3 = add i8 %3, 1
  store i8 %inc.3, i8* %arrayidx.3, align 1, !tbaa !56
  %cmp3.not.3 = icmp eq i8 %inc.3, 0
  br i1 %cmp3.not.3, label %for.cond.3, label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr inbounds i8, i8* %seq, i64 3
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !56
  %inc.4 = add i8 %4, 1
  store i8 %inc.4, i8* %arrayidx.4, align 1, !tbaa !56
  %cmp3.not.4 = icmp eq i8 %inc.4, 0
  br i1 %cmp3.not.4, label %for.cond.4, label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr inbounds i8, i8* %seq, i64 2
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !56
  %inc.5 = add i8 %5, 1
  store i8 %inc.5, i8* %arrayidx.5, align 1, !tbaa !56
  %cmp3.not.5 = icmp eq i8 %inc.5, 0
  br i1 %cmp3.not.5, label %for.cond.5, label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr inbounds i8, i8* %seq, i64 1
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !56
  %inc.6 = add i8 %6, 1
  store i8 %inc.6, i8* %arrayidx.6, align 1, !tbaa !56
  %cmp3.not.6 = icmp eq i8 %inc.6, 0
  br i1 %cmp3.not.6, label %for.cond.6, label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load i8, i8* %seq, align 1, !tbaa !56
  %inc.7 = add i8 %7, 1
  store i8 %inc.7, i8* %seq, align 1, !tbaa !56
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @RECORD_LAYER_is_sslv2_record(%struct.record_layer_st* nocapture noundef readonly %rl) local_unnamed_addr #3 {
entry:
  %rec_version = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 0, i32 0
  %0 = load i32, i32* %rec_version, align 8, !tbaa !117
  %cmp = icmp eq i32 %0, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @RECORD_LAYER_get_rrec_length(%struct.record_layer_st* nocapture noundef readonly %rl) local_unnamed_addr #3 {
entry:
  %length = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 7, i64 0, i32 2
  %0 = load i64, i64* %length, align 8, !tbaa !44
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #8 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #14
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !148
  %1 = load i8, i8* %0, align 1, !tbaa !56
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #8 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !148
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !148
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !150
  %sub = add i64 %1, -1
  store i64 %sub, i64* %remaining, align 8, !tbaa !150
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare i8* @llvm.load.relative.i64(i8*, i64) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"record_layer_st", !6, i64 0, !9, i64 8, !9, i64 12, !10, i64 16, !10, i64 24, !11, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !10, i64 4184, !10, i64 4192, !7, i64 4200, !10, i64 4208, !10, i64 4216, !10, i64 4224, !9, i64 4232, !10, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !9, i64 4272, !9, i64 4276, !6, i64 4280}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"ssl3_buffer_st", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40}
!12 = !{!13, !9, i64 7432}
!13 = !{!"ssl_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !6, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !14, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !10, i64 152, !10, i64 160, !15, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !9, i64 1232, !6, i64 1240, !18, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !9, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !10, i64 2272, !7, i64 2280, !10, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !10, i64 2352, !6, i64 2360, !7, i64 2368, !10, i64 2400, !9, i64 2408, !6, i64 2416, !6, i64 2424, !9, i64 2432, !9, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !10, i64 2488, !19, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !10, i64 2536, !9, i64 2544, !9, i64 2548, !9, i64 2552, !10, i64 2560, !9, i64 2568, !9, i64 2572, !10, i64 2576, !10, i64 2584, !10, i64 2592, !20, i64 2600, !6, i64 2904, !9, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !9, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !9, i64 2976, !9, i64 2980, !7, i64 2984, !9, i64 2988, !6, i64 2992, !10, i64 3000, !9, i64 3008, !6, i64 3016, !22, i64 3024, !6, i64 3152, !5, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !10, i64 7480, !9, i64 7488, !9, i64 7492, !9, i64 7496, !6, i64 7504, !6, i64 7512, !10, i64 7520, !6, i64 7528, !10, i64 7536, !10, i64 7544, !10, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !10, i64 7600}
!14 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !7, i64 52, !7, i64 56}
!15 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !9, i64 216, !9, i64 220, !6, i64 224, !6, i64 232, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !7, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !16, i64 280, !7, i64 840, !10, i64 904, !7, i64 912, !10, i64 976, !9, i64 984, !9, i64 988, !6, i64 992, !10, i64 1000, !6, i64 1008, !10, i64 1016, !9, i64 1024, !7, i64 1028, !7, i64 1029, !17, i64 1030, !6, i64 1032}
!16 = !{!"", !7, i64 0, !10, i64 128, !7, i64 136, !10, i64 264, !10, i64 272, !9, i64 280, !6, i64 288, !6, i64 296, !9, i64 304, !6, i64 312, !10, i64 320, !6, i64 328, !10, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !9, i64 368, !10, i64 376, !6, i64 384, !9, i64 392, !6, i64 400, !10, i64 408, !6, i64 416, !10, i64 424, !6, i64 432, !10, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !10, i64 480, !10, i64 488, !6, i64 496, !7, i64 504, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552}
!17 = !{!"short", !7, i64 0}
!18 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 56}
!19 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!20 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !17, i64 72, !9, i64 76, !21, i64 80, !9, i64 112, !9, i64 116, !10, i64 120, !6, i64 128, !10, i64 136, !6, i64 144, !10, i64 152, !6, i64 160, !10, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !10, i64 232, !6, i64 240, !10, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !6, i64 272, !10, i64 280, !9, i64 288, !7, i64 292, !9, i64 296}
!21 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24}
!22 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !9, i64 112, !10, i64 120}
!23 = !{!5, !9, i64 12}
!24 = !{!5, !6, i64 4176}
!25 = !{!10, !10, i64 0}
!26 = !{!5, !10, i64 4208}
!27 = !{!5, !10, i64 4224}
!28 = !{!5, !9, i64 4232}
!29 = !{!5, !10, i64 4240}
!30 = !{!5, !6, i64 4248}
!31 = !{!5, !10, i64 16}
!32 = !{!5, !6, i64 4280}
!33 = !{!5, !6, i64 32}
!34 = !{!5, !10, i64 24}
!35 = !{!5, !10, i64 64}
!36 = !{!37, !9, i64 56}
!37 = !{!"ssl3_record_st", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !10, i64 64, !7, i64 72}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!11, !10, i64 32}
!41 = !{!13, !9, i64 3172}
!42 = !{!13, !10, i64 3176}
!43 = !{!37, !9, i64 4}
!44 = !{!37, !10, i64 8}
!45 = distinct !{!45, !39}
!46 = !{!47, !10, i64 504}
!47 = !{!"ssl_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 72, !9, i64 80, !10, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !48, i64 120, !7, i64 164, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !19, i64 240, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !10, i64 312, !9, i64 320, !9, i64 324, !9, i64 328, !10, i64 336, !6, i64 344, !9, i64 352, !6, i64 360, !6, i64 368, !9, i64 376, !10, i64 384, !7, i64 392, !6, i64 424, !6, i64 432, !6, i64 440, !9, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !49, i64 536, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !22, i64 792, !50, i64 920, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !9, i64 984, !9, i64 988, !6, i64 992, !6, i64 1000, !10, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !10, i64 1040, !6, i64 1048, !6, i64 1056, !9, i64 1064, !6, i64 1072, !6, i64 1080, !6, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !6, i64 1568, !6, i64 1576, !10, i64 1584, !10, i64 1592, !9, i64 1600, !9, i64 1604, !9, i64 1608, !9, i64 1612}
!48 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!49 = !{!"", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !7, i64 76, !10, i64 80, !6, i64 88, !10, i64 96, !6, i64 104, !6, i64 112, !10, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !10, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !7, i64 192}
!50 = !{!"dane_ctx_st", !6, i64 0, !6, i64 8, !7, i64 16, !10, i64 24}
!51 = !{!13, !10, i64 3200}
!52 = !{!11, !6, i64 0}
!53 = !{!13, !10, i64 7344}
!54 = !{!13, !6, i64 7336}
!55 = !{!11, !10, i64 24}
!56 = !{!7, !7, i64 0}
!57 = !{!13, !6, i64 8}
!58 = !{!59, !6, i64 192}
!59 = !{!"ssl_method_st", !9, i64 0, !9, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!60 = !{!61, !9, i64 96}
!61 = !{!"ssl3_enc_method", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !10, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !6, i64 104, !6, i64 112, !6, i64 120}
!62 = !{!11, !10, i64 16}
!63 = !{!13, !9, i64 3168}
!64 = !{!9, !9, i64 0}
!65 = !{!13, !6, i64 16}
!66 = !{!13, !9, i64 40}
!67 = !{!13, !10, i64 2536}
!68 = !{!13, !9, i64 412}
!69 = !{!13, !9, i64 2544}
!70 = distinct !{!70, !39}
!71 = !{!13, !10, i64 7352}
!72 = !{!13, !10, i64 7384}
!73 = !{!13, !7, i64 132}
!74 = !{!13, !9, i64 2980}
!75 = !{!13, !9, i64 2716}
!76 = !{!13, !6, i64 48}
!77 = !{!13, !6, i64 2152}
!78 = !{!13, !6, i64 1216}
!79 = !{!13, !10, i64 168}
!80 = !{!13, !6, i64 2168}
!81 = !{!13, !9, i64 420}
!82 = !{!59, !6, i64 120}
!83 = !{!84, !9, i64 24}
!84 = !{!"", !6, i64 0, !6, i64 8, !10, i64 16, !9, i64 24}
!85 = !{!13, !9, i64 0}
!86 = !{!84, !6, i64 0}
!87 = !{!84, !6, i64 8}
!88 = !{!84, !10, i64 16}
!89 = distinct !{!89, !39}
!90 = !{!13, !6, i64 7408}
!91 = !{!13, !9, i64 7392}
!92 = !{!13, !10, i64 7400}
!93 = !{!13, !6, i64 24}
!94 = !{!13, !10, i64 2592}
!95 = distinct !{!95, !39, !96}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !39, !100, !96}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !39}
!102 = distinct !{!102, !98}
!103 = !{!13, !9, i64 388}
!104 = !{!13, !10, i64 3184}
!105 = distinct !{!105, !39, !96}
!106 = distinct !{!106, !98}
!107 = distinct !{!107, !39, !100, !96}
!108 = !{!13, !6, i64 2328}
!109 = !{!13, !6, i64 2192}
!110 = !{!13, !9, i64 384}
!111 = distinct !{!111, !39}
!112 = !{!59, !9, i64 0}
!113 = !{!13, !7, i64 2280}
!114 = !{!6, !6, i64 0}
!115 = !{!13, !7, i64 124}
!116 = !{!13, !9, i64 2976}
!117 = !{!37, !9, i64 0}
!118 = !{!37, !6, i64 32}
!119 = !{!37, !6, i64 40}
!120 = !{!13, !6, i64 7504}
!121 = !{!13, !6, i64 7512}
!122 = !{!13, !10, i64 7520}
!123 = !{i64 0, i64 65}
!124 = !{!61, !6, i64 8}
!125 = distinct !{!125, !39}
!126 = !{!61, !6, i64 0}
!127 = !{!13, !6, i64 1224}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = !{!13, !10, i64 7368}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = distinct !{!134, !39}
!135 = !{!13, !9, i64 7436}
!136 = !{!13, !9, i64 408}
!137 = !{!13, !9, i64 68}
!138 = !{!13, !6, i64 2120}
!139 = !{!37, !10, i64 24}
!140 = distinct !{!140, !39}
!141 = !{!13, !9, i64 56}
!142 = !{!13, !6, i64 2424}
!143 = !{!13, !6, i64 2472}
!144 = !{!47, !6, i64 288}
!145 = !{!13, !9, i64 416}
!146 = !{!13, !6, i64 2952}
!147 = !{!13, !9, i64 440}
!148 = !{!149, !6, i64 0}
!149 = !{!"", !6, i64 0, !10, i64 8}
!150 = !{!149, !10, i64 8}
