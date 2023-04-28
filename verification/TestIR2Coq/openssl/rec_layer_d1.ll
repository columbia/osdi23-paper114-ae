; ModuleID = 'ssl/record/rec_layer_d1.c'
source_filename = "ssl/record/rec_layer_d1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_layer_st = type { %struct.ssl_st*, i32, i32, i64, i64, %struct.ssl3_buffer_st, [32 x %struct.ssl3_buffer_st], [32 x %struct.ssl3_record_st], i8*, i64, i64, [4 x i8], i64, i64, i64, i32, i64, i8*, [8 x i8], [8 x i8], i32, i32, %struct.dtls_record_layer_st* }
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
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.ssl3_buffer_st = type { i8*, i64, i64, i64, i64, i32 }
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.pitem_st = type { [8 x i8], i8*, %struct.pitem_st* }
%struct.dtls1_record_data_st = type { i8*, i64, %struct.ssl3_buffer_st, %struct.ssl3_record_st }

@.str = private unnamed_addr constant [26 x i8] c"ssl/record/rec_layer_d1.c\00", align 1
@__func__.DTLS_RECORD_LAYER_new = private unnamed_addr constant [22 x i8] c"DTLS_RECORD_LAYER_new\00", align 1
@__func__.dtls1_buffer_record = private unnamed_addr constant [20 x i8] c"dtls1_buffer_record\00", align 1
@__func__.dtls1_process_buffered_records = private unnamed_addr constant [31 x i8] c"dtls1_process_buffered_records\00", align 1
@__func__.dtls1_read_bytes = private unnamed_addr constant [17 x i8] c"dtls1_read_bytes\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SSL alert number %d\00", align 1
@__func__.dtls1_write_bytes = private unnamed_addr constant [18 x i8] c"dtls1_write_bytes\00", align 1
@__func__.do_dtls1_write = private unnamed_addr constant [15 x i8] c"do_dtls1_write\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @DTLS_RECORD_LAYER_new(%struct.record_layer_st* nocapture noundef writeonly %rl) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 104, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 23) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.DTLS_RECORD_LAYER_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %d1 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 22
  %0 = bitcast %struct.dtls_record_layer_st** %d1 to i8**
  store i8* %call, i8** %0, align 8, !tbaa !4
  %call2 = tail call %struct.pqueue_st* @pqueue_new() #7
  %q = getelementptr inbounds i8, i8* %call, i64 48
  %1 = bitcast i8* %q to %struct.pqueue_st**
  store %struct.pqueue_st* %call2, %struct.pqueue_st** %1, align 8, !tbaa !12
  %call3 = tail call %struct.pqueue_st* @pqueue_new() #7
  %q4 = getelementptr inbounds i8, i8* %call, i64 64
  %2 = bitcast i8* %q4 to %struct.pqueue_st**
  store %struct.pqueue_st* %call3, %struct.pqueue_st** %2, align 8, !tbaa !17
  %call5 = tail call %struct.pqueue_st* @pqueue_new() #7
  %q6 = getelementptr inbounds i8, i8* %call, i64 80
  %3 = bitcast i8* %q6 to %struct.pqueue_st**
  store %struct.pqueue_st* %call5, %struct.pqueue_st** %3, align 8, !tbaa !18
  %4 = load %struct.pqueue_st*, %struct.pqueue_st** %1, align 8, !tbaa !12
  %cmp9 = icmp eq %struct.pqueue_st* %4, null
  br i1 %cmp9, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.pqueue_st*, %struct.pqueue_st** %2, align 8, !tbaa !17
  %cmp12 = icmp eq %struct.pqueue_st* %5, null
  %cmp16 = icmp eq %struct.pqueue_st* %call5, null
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.then17, label %cleanup

if.then17:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @pqueue_free(%struct.pqueue_st* noundef %4) #7
  %6 = load %struct.pqueue_st*, %struct.pqueue_st** %2, align 8, !tbaa !17
  tail call void @pqueue_free(%struct.pqueue_st* noundef %6) #7
  %7 = load %struct.pqueue_st*, %struct.pqueue_st** %3, align 8, !tbaa !18
  tail call void @pqueue_free(%struct.pqueue_st* noundef %7) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #7
  store %struct.dtls_record_layer_st* null, %struct.dtls_record_layer_st** %d1, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then17, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then17 ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.pqueue_st* @pqueue_new() local_unnamed_addr #2

declare void @pqueue_free(%struct.pqueue_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @DTLS_RECORD_LAYER_free(%struct.record_layer_st* nocapture noundef %rl) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 22
  %0 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %cmp = icmp eq %struct.dtls_record_layer_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @DTLS_RECORD_LAYER_clear(%struct.record_layer_st* noundef nonnull %rl) #8
  %1 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %1, i64 0, i32 4, i32 1
  %2 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !12
  tail call void @pqueue_free(%struct.pqueue_st* noundef %2) #7
  %3 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %q3 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %3, i64 0, i32 5, i32 1
  %4 = load %struct.pqueue_st*, %struct.pqueue_st** %q3, align 8, !tbaa !17
  tail call void @pqueue_free(%struct.pqueue_st* noundef %4) #7
  %5 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %q5 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %5, i64 0, i32 6, i32 1
  %6 = load %struct.pqueue_st*, %struct.pqueue_st** %q5, align 8, !tbaa !18
  tail call void @pqueue_free(%struct.pqueue_st* noundef %6) #7
  %7 = bitcast %struct.dtls_record_layer_st** %d to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 56) #7
  store %struct.dtls_record_layer_st* null, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @DTLS_RECORD_LAYER_clear(%struct.record_layer_st* nocapture noundef readonly %rl) local_unnamed_addr #0 {
entry:
  %d1 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 22
  %0 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d1, align 8, !tbaa !4
  %q = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 4, i32 1
  %1 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !12
  %call83 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %1) #7
  %cmp.not84 = icmp eq %struct.pitem_st* %call83, null
  br i1 %cmp.not84, label %while.cond4.preheader, label %while.body

while.cond4.preheader:                            ; preds = %while.body, %entry
  %q6 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 5, i32 1
  %2 = load %struct.pqueue_st*, %struct.pqueue_st** %q6, align 8, !tbaa !17
  %call786 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %2) #7
  %cmp8.not87 = icmp eq %struct.pitem_st* %call786, null
  br i1 %cmp8.not87, label %while.cond18.preheader, label %while.body9.lr.ph

while.body9.lr.ph:                                ; preds = %while.cond4.preheader
  %s = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 0
  br label %while.body9

while.body:                                       ; preds = %entry, %while.body
  %call85 = phi %struct.pitem_st* [ %call, %while.body ], [ %call83, %entry ]
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call85, i64 0, i32 1
  %3 = bitcast i8** %data to %struct.dtls1_record_data_st**
  %4 = load %struct.dtls1_record_data_st*, %struct.dtls1_record_data_st** %3, align 8, !tbaa !19
  %buf = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %4, i64 0, i32 2, i32 0
  %5 = load i8*, i8** %buf, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 73) #7
  %6 = load i8*, i8** %data, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 74) #7
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call85) #7
  %7 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !12
  %call = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %7) #7
  %cmp.not = icmp eq %struct.pitem_st* %call, null
  br i1 %cmp.not, label %while.cond4.preheader, label %while.body, !llvm.loop !24

while.cond18.preheader:                           ; preds = %if.end, %while.cond4.preheader
  %q20 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 6, i32 1
  %8 = load %struct.pqueue_st*, %struct.pqueue_st** %q20, align 8, !tbaa !18
  %call2189 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %8) #7
  %cmp22.not90 = icmp eq %struct.pitem_st* %call2189, null
  br i1 %cmp22.not90, label %while.end38, label %while.body23.lr.ph

while.body23.lr.ph:                               ; preds = %while.cond18.preheader
  %s25 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 0
  br label %while.body23

while.body9:                                      ; preds = %while.body9.lr.ph, %if.end
  %call788 = phi %struct.pitem_st* [ %call786, %while.body9.lr.ph ], [ %call7, %if.end ]
  %data10 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call788, i64 0, i32 1
  %9 = bitcast i8** %data10 to %struct.dtls1_record_data_st**
  %10 = load %struct.dtls1_record_data_st*, %struct.dtls1_record_data_st** %9, align 8, !tbaa !19
  %11 = load %struct.ssl_st*, %struct.ssl_st** %s, align 8, !tbaa !26
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %11, i64 0, i32 78
  %12 = load i64, i64* %options, align 8, !tbaa !27
  %and = and i64 %12, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body9
  %buf12 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %10, i64 0, i32 2, i32 0
  %13 = load i8*, i8** %buf12, align 8, !tbaa !21
  %len = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %10, i64 0, i32 2, i32 2
  %14 = load i64, i64* %len, align 8, !tbaa !37
  tail call void @OPENSSL_cleanse(i8* noundef %13, i64 noundef %14) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body9
  %buf15 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %10, i64 0, i32 2, i32 0
  %15 = load i8*, i8** %buf15, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #7
  %16 = load i8*, i8** %data10, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #7
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call788) #7
  %17 = load %struct.pqueue_st*, %struct.pqueue_st** %q6, align 8, !tbaa !17
  %call7 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %17) #7
  %cmp8.not = icmp eq %struct.pitem_st* %call7, null
  br i1 %cmp8.not, label %while.cond18.preheader, label %while.body9, !llvm.loop !38

while.body23:                                     ; preds = %while.body23.lr.ph, %if.end34
  %call2191 = phi %struct.pitem_st* [ %call2189, %while.body23.lr.ph ], [ %call21, %if.end34 ]
  %data24 = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call2191, i64 0, i32 1
  %18 = bitcast i8** %data24 to %struct.dtls1_record_data_st**
  %19 = load %struct.dtls1_record_data_st*, %struct.dtls1_record_data_st** %18, align 8, !tbaa !19
  %20 = load %struct.ssl_st*, %struct.ssl_st** %s25, align 8, !tbaa !26
  %options26 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %20, i64 0, i32 78
  %21 = load i64, i64* %options26, align 8, !tbaa !27
  %and27 = and i64 %21, 2
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %if.end34, label %if.then29

if.then29:                                        ; preds = %while.body23
  %buf31 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %19, i64 0, i32 2, i32 0
  %22 = load i8*, i8** %buf31, align 8, !tbaa !21
  %len33 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %19, i64 0, i32 2, i32 2
  %23 = load i64, i64* %len33, align 8, !tbaa !37
  tail call void @OPENSSL_cleanse(i8* noundef %22, i64 noundef %23) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %while.body23
  %buf36 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %19, i64 0, i32 2, i32 0
  %24 = load i8*, i8** %buf36, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 91) #7
  %25 = load i8*, i8** %data24, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 92) #7
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call2191) #7
  %26 = load %struct.pqueue_st*, %struct.pqueue_st** %q20, align 8, !tbaa !18
  %call21 = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %26) #7
  %cmp22.not = icmp eq %struct.pitem_st* %call21, null
  br i1 %cmp22.not, label %while.end38, label %while.body23, !llvm.loop !39

while.end38:                                      ; preds = %if.end34, %while.cond18.preheader
  %27 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !12
  %28 = load %struct.pqueue_st*, %struct.pqueue_st** %q6, align 8, !tbaa !17
  %29 = load %struct.pqueue_st*, %struct.pqueue_st** %q20, align 8, !tbaa !18
  %30 = bitcast %struct.dtls_record_layer_st* %0 to i8*
  %call45 = tail call i8* @memset(i8* noundef %30, i32 noundef 0, i64 noundef 104) #7
  store %struct.pqueue_st* %27, %struct.pqueue_st** %q, align 8, !tbaa !12
  store %struct.pqueue_st* %28, %struct.pqueue_st** %q6, align 8, !tbaa !17
  store %struct.pqueue_st* %29, %struct.pqueue_st** %q20, align 8, !tbaa !18
  ret void
}

declare %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef) local_unnamed_addr #2

declare void @pitem_free(%struct.pitem_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @DTLS_RECORD_LAYER_set_saved_w_epoch(%struct.record_layer_st* noundef %rl, i16 noundef zeroext %e) local_unnamed_addr #0 {
entry:
  %conv = zext i16 %e to i32
  %d = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 22
  %0 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 1
  %1 = load i16, i16* %w_epoch, align 2, !tbaa !40
  %conv1 = zext i16 %1 to i32
  %sub = add nsw i32 %conv1, -1
  %cmp = icmp eq i32 %sub, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 8, i64 0
  %arraydecay4 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 19, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef nonnull %arraydecay4, i64 noundef 8) #7
  %2 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %arraydecay8 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %2, i64 0, i32 7, i64 0
  %call9 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay4, i8* noundef nonnull %arraydecay8, i64 noundef 8) #7
  br label %if.end29

if.else:                                          ; preds = %entry
  %add = add nuw nsw i32 %conv1, 1
  %cmp14 = icmp eq i32 %add, %conv
  br i1 %cmp14, label %if.then16, label %if.end29

if.then16:                                        ; preds = %if.else
  %arraydecay19 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 7, i64 0
  %arraydecay21 = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 19, i64 0
  %call22 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay19, i8* noundef nonnull %arraydecay21, i64 noundef 8) #7
  %3 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %arraydecay27 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %3, i64 0, i32 8, i64 0
  %call28 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay21, i8* noundef nonnull %arraydecay27, i64 noundef 8) #7
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then16, %if.then
  %4 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !4
  %w_epoch31 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %4, i64 0, i32 1
  store i16 %e, i16* %w_epoch31, align 2, !tbaa !40
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @DTLS_RECORD_LAYER_set_write_sequence(%struct.record_layer_st* noundef %rl, i8* noundef %seq) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.record_layer_st, %struct.record_layer_st* %rl, i64 0, i32 19, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %seq, i64 noundef 8) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_buffer_record(%struct.ssl_st* noundef %s, %struct.record_pqueue_st* nocapture noundef readonly %queue, i8* noundef %priority) local_unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.record_pqueue_st, %struct.record_pqueue_st* %queue, i64 0, i32 1
  %0 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !41
  %call = tail call i64 @pqueue_size(%struct.pqueue_st* noundef %0) #7
  %cmp = icmp ugt i64 %call, 99
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 144, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 155) #7
  %call2 = tail call %struct.pitem_st* @pitem_new(i8* noundef %priority, i8* noundef %call1) #7
  %cmp3 = icmp eq i8* %call1, null
  %cmp4 = icmp eq %struct.pitem_st* %call2, null
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 158) #7
  tail call void @pitem_free(%struct.pitem_st* noundef %call2) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dtls1_buffer_record, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %packet = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  %1 = load i8*, i8** %packet, align 8, !tbaa !42
  %packet7 = bitcast i8* %call1 to i8**
  store i8* %1, i8** %packet7, align 8, !tbaa !43
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  %2 = load i64, i64* %packet_length, align 8, !tbaa !44
  %packet_length9 = getelementptr inbounds i8, i8* %call1, i64 8
  %3 = bitcast i8* %packet_length9 to i64*
  store i64 %2, i64* %3, align 8, !tbaa !45
  %rbuf = getelementptr inbounds i8, i8* %call1, i64 16
  %rbuf11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5
  %4 = bitcast %struct.ssl3_buffer_st* %rbuf11 to i8*
  %call12 = tail call i8* @memcpy(i8* noundef nonnull %rbuf, i8* noundef nonnull %4, i64 noundef 48) #7
  %rrec = getelementptr inbounds i8, i8* %call1, i64 64
  %rrec14 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7
  %5 = bitcast [32 x %struct.ssl3_record_st]* %rrec14 to i8*
  %call15 = tail call i8* @memcpy(i8* noundef nonnull %rrec, i8* noundef nonnull %5, i64 noundef 80) #7
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call2, i64 0, i32 1
  store i8* %call1, i8** %data, align 8, !tbaa !19
  store i8* null, i8** %packet, align 8, !tbaa !42
  store i64 0, i64* %packet_length, align 8, !tbaa !44
  %call22 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 48) #7
  %call25 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 2560) #7
  %call26 = tail call i32 @ssl3_setup_buffers(%struct.ssl_st* noundef %s) #7
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end6
  %buf = bitcast i8* %rbuf to i8**
  %6 = load i8*, i8** %buf, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 188) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 189) #7
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call2) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end6
  %7 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !41
  %call31 = tail call %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* noundef %7, %struct.pitem_st* noundef nonnull %call2) #7
  %cmp32 = icmp eq %struct.pitem_st* %call31, null
  br i1 %cmp32, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end29
  %buf35 = bitcast i8* %rbuf to i8**
  %8 = load i8*, i8** %buf35, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 196) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 197) #7
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then33, %entry, %if.then27, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then27 ], [ 0, %entry ], [ 1, %if.then33 ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

declare i64 @pqueue_size(%struct.pqueue_st* noundef) local_unnamed_addr #2

declare %struct.pitem_st* @pitem_new(i8* noundef, i8* noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ssl3_setup_buffers(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.pitem_st* @pqueue_insert(%struct.pqueue_st* noundef, %struct.pitem_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_retrieve_buffered_record(%struct.ssl_st* noundef %s, %struct.record_pqueue_st* nocapture noundef readonly %queue) local_unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.record_pqueue_st, %struct.record_pqueue_st* %queue, i64 0, i32 1
  %0 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !41
  %call = tail call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %0) #7
  %tobool.not = icmp eq %struct.pitem_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @dtls1_copy_record(%struct.ssl_st* noundef %s, %struct.pitem_st* noundef nonnull %call) #8
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 212) #7
  tail call void @pitem_free(%struct.pitem_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dtls1_copy_record(%struct.ssl_st* noundef %s, %struct.pitem_st* nocapture noundef readonly %item) unnamed_addr #0 {
entry:
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %item, i64 0, i32 1
  %0 = bitcast i8** %data to %struct.dtls1_record_data_st**
  %1 = load %struct.dtls1_record_data_st*, %struct.dtls1_record_data_st** %0, align 8, !tbaa !19
  %rbuf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5
  tail call void @SSL3_BUFFER_release(%struct.ssl3_buffer_st* noundef nonnull %rbuf) #7
  %packet = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %1, i64 0, i32 0
  %2 = load i8*, i8** %packet, align 8, !tbaa !43
  %packet2 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 8
  store i8* %2, i8** %packet2, align 8, !tbaa !42
  %packet_length = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %1, i64 0, i32 1
  %3 = load i64, i64* %packet_length, align 8, !tbaa !45
  %packet_length4 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  store i64 %3, i64* %packet_length4, align 8, !tbaa !44
  %4 = bitcast %struct.ssl3_buffer_st* %rbuf to i8*
  %rbuf7 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %1, i64 0, i32 2
  %5 = bitcast %struct.ssl3_buffer_st* %rbuf7 to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %4, i8* noundef nonnull %5, i64 noundef 48) #7
  %rrec = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7
  %6 = bitcast [32 x %struct.ssl3_record_st]* %rrec to i8*
  %rrec9 = getelementptr inbounds %struct.dtls1_record_data_st, %struct.dtls1_record_data_st* %1, i64 0, i32 3
  %7 = bitcast %struct.ssl3_record_st* %rrec9 to i8*
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef nonnull %7, i64 noundef 80) #7
  %arrayidx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 2
  %8 = load i8*, i8** %packet, align 8, !tbaa !43
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i64 5
  %call14 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef nonnull %arrayidx13, i64 noundef 6) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_process_buffered_records(%struct.ssl_st* noundef %s) local_unnamed_addr #0 {
entry:
  %is_next_epoch = alloca i32, align 4
  %0 = bitcast i32* %is_next_epoch to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %1 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %q = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %1, i64 0, i32 4, i32 1
  %2 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !12
  %call = tail call %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef %2) #7
  %tobool.not = icmp eq %struct.pitem_st* %call, null
  br i1 %tobool.not, label %if.end52, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %3, i64 0, i32 4, i32 0
  %4 = load i16, i16* %epoch, align 8, !tbaa !47
  %r_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %3, i64 0, i32 0
  %5 = load i16, i16* %r_epoch, align 8, !tbaa !48
  %cmp.not = icmp eq i16 %4, %5
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0
  %left = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 4
  %6 = load i64, i64* %left, align 8, !tbaa !49
  %cmp11.not = icmp eq i64 %6, 0
  br i1 %cmp11.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %q18102 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %3, i64 0, i32 4, i32 1
  %7 = load %struct.pqueue_st*, %struct.pqueue_st** %q18102, align 8, !tbaa !12
  %call19103 = tail call %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef %7) #7
  %tobool20.not104 = icmp eq %struct.pitem_st* %call19103, null
  br i1 %tobool20.not104, label %if.end52, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arraydecay46 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 10, i64 0
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  %packet_length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %8 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %unprocessed_rcds23 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %8, i64 0, i32 4
  %call24 = tail call i32 @dtls1_retrieve_buffered_record(%struct.ssl_st* noundef nonnull %s, %struct.record_pqueue_st* noundef nonnull %unprocessed_rcds23) #8
  %call25 = call %struct.dtls1_bitmap_st* @dtls1_get_bitmap(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %arraydecay, i32* noundef nonnull %is_next_epoch) #8
  %cmp26 = icmp eq %struct.dtls1_bitmap_st* %call25, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %while.body
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.dtls1_process_buffered_records, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end29:                                         ; preds = %while.body
  %call30 = tail call i32 @dtls1_record_replay_check(%struct.ssl_st* noundef nonnull %s, %struct.dtls1_bitmap_st* noundef nonnull %call25) #7
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %call32 = tail call i32 @dtls1_process_record(%struct.ssl_st* noundef nonnull %s, %struct.dtls1_bitmap_st* noundef nonnull %call25) #7
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end40

if.then34:                                        ; preds = %lor.lhs.false, %if.end29
  %call35 = tail call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %cleanup

if.end38:                                         ; preds = %if.then34
  store i64 0, i64* %length, align 8, !tbaa !50
  store i64 0, i64* %packet_length, align 8, !tbaa !44
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end38, %if.end40
  %9 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %q18 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %9, i64 0, i32 4, i32 1
  %10 = load %struct.pqueue_st*, %struct.pqueue_st** %q18, align 8, !tbaa !12
  %call19 = tail call %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef %10) #7
  %tobool20.not = icmp eq %struct.pitem_st* %call19, null
  br i1 %tobool20.not, label %if.end52, label %while.body, !llvm.loop !51

if.end40:                                         ; preds = %lor.lhs.false
  %11 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %processed_rcds = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %11, i64 0, i32 5
  %call47 = tail call i32 @dtls1_buffer_record(%struct.ssl_st* noundef nonnull %s, %struct.record_pqueue_st* noundef nonnull %processed_rcds, i8* noundef nonnull %arraydecay46) #8
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %cleanup, label %while.cond.backedge

if.end52:                                         ; preds = %while.cond.backedge, %while.cond.preheader, %entry
  %12 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %r_epoch55 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %12, i64 0, i32 0
  %13 = load i16, i16* %r_epoch55, align 8, !tbaa !48
  %epoch59 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %12, i64 0, i32 5, i32 0
  store i16 %13, i16* %epoch59, align 8, !tbaa !52
  %add = add i16 %13, 1
  %epoch68 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %12, i64 0, i32 4, i32 0
  store i16 %add, i16* %epoch68, align 8, !tbaa !47
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then34, %if.end, %if.then, %if.end52, %if.then28
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 1, %if.end52 ], [ 1, %if.then ], [ 1, %if.end ], [ 0, %if.end40 ], [ -1, %if.then34 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare %struct.pitem_st* @pqueue_peek(%struct.pqueue_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define %struct.dtls1_bitmap_st* @dtls1_get_bitmap(%struct.ssl_st* nocapture noundef readonly %s, %struct.ssl3_record_st* nocapture noundef readonly %rr, i32* nocapture noundef writeonly %is_next_epoch) local_unnamed_addr #4 {
entry:
  store i32 0, i32* %is_next_epoch, align 4, !tbaa !53
  %epoch = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr, i64 0, i32 9
  %0 = load i64, i64* %epoch, align 8, !tbaa !54
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %1 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %r_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %1, i64 0, i32 0
  %2 = load i16, i16* %r_epoch, align 8, !tbaa !48
  %conv = zext i16 %2 to i64
  %cmp = icmp eq i64 %0, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bitmap = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %1, i64 0, i32 2
  br label %return

if.else:                                          ; preds = %entry
  %add = add nuw nsw i64 %conv, 1
  %cmp10 = icmp eq i64 %0, %add
  br i1 %cmp10, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.else
  %epoch14 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %1, i64 0, i32 4, i32 0
  %3 = load i16, i16* %epoch14, align 8, !tbaa !47
  %cmp20.not = icmp eq i16 %3, %2
  br i1 %cmp20.not, label %return, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %rr, i64 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !55
  %.off = add i32 %4, -21
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then28, label %return

if.then28:                                        ; preds = %land.lhs.true22
  store i32 1, i32* %is_next_epoch, align 4, !tbaa !53
  %next_bitmap = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %1, i64 0, i32 3
  br label %return

return:                                           ; preds = %land.lhs.true22, %land.lhs.true, %if.else, %if.then28, %if.then
  %retval.0 = phi %struct.dtls1_bitmap_st* [ %bitmap, %if.then ], [ %next_bitmap, %if.then28 ], [ null, %land.lhs.true22 ], [ null, %if.else ], [ null, %land.lhs.true ]
  ret %struct.dtls1_bitmap_st* %retval.0
}

declare i32 @dtls1_record_replay_check(%struct.ssl_st* noundef, %struct.dtls1_bitmap_st* noundef) local_unnamed_addr #2

declare i32 @dtls1_process_record(%struct.ssl_st* noundef, %struct.dtls1_bitmap_st* noundef) local_unnamed_addr #2

declare i32 @ossl_statem_in_error(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_read_bytes(%struct.ssl_st* noundef %s, i32 noundef %type, i32* noundef writeonly %recvd_type, i8* noundef %buf, i64 noundef %len, i32 noundef %peek, i64* nocapture noundef writeonly %readbytes) local_unnamed_addr #0 {
entry:
  %alert_level = alloca i32, align 4
  %alert_descr = alloca i32, align 4
  %alert = alloca %struct.PACKET, align 8
  %msg_hdr = alloca %struct.hm_header_st, align 8
  %buf1 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 0
  %0 = load i8*, i8** %buf1, align 8, !tbaa !56
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @ssl3_setup_buffers(%struct.ssl_st* noundef nonnull %s) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup346, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  switch i32 %type, label %if.then11 [
    i32 23, label %lor.lhs.false
    i32 22, label %lor.lhs.false
    i32 0, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %if.end3, %if.end3, %if.end3
  %cmp5 = icmp ne i32 %type, 23
  %tobool8 = icmp ne i32 %peek, 0
  %or.cond354 = and i1 %cmp5, %tobool8
  br i1 %or.cond354, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end3, %lor.lhs.false
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup346

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = tail call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.end26

land.lhs.true15:                                  ; preds = %if.end12
  %call16 = tail call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end26, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  %handshake_func = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %1 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func, align 8, !tbaa !57
  %call19 = tail call i32 %1(%struct.ssl_st* noundef nonnull %s) #7
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %cleanup346, label %if.end22

if.end22:                                         ; preds = %if.then18
  %cmp23 = icmp eq i32 %call19, 0
  br i1 %cmp23, label %cleanup346, label %if.end26

if.end26:                                         ; preds = %if.end22, %land.lhs.true15, %if.end12
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  %length = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 2
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %rstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 2
  %numrpipes = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 3
  %type66 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 1
  %alert_count = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 21
  %change_cipher_spec = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 11
  %arraydecay82 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 10, i64 0
  %read = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 8
  %shutdown = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 10
  %cmp101 = icmp eq i32 %type, 22
  %cmp103 = icmp ne i32* %recvd_type, null
  %2 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %msg_hdr, i64 0, i32 0
  %epoch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 9
  %data261 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 5
  %handshake_func302 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 6
  %mode312 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 79
  %left318 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 5, i32 4
  %3 = bitcast i32* %alert_level to i8*
  %4 = bitcast i32* %alert_descr to i8*
  %off164 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 7, i64 0, i32 4
  %5 = bitcast %struct.PACKET* %alert to i8*
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %info_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 64
  %ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %warn_alert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 12
  br label %start.outer

start.outer:                                      ; preds = %cleanup, %if.end26
  %cb.0.ph = phi void (%struct.ssl_st*, i32, i32)* [ %cb.1536, %cleanup ], [ null, %if.end26 ]
  br label %start

start:                                            ; preds = %start.backedge, %start.outer
  store i32 1, i32* %rwstate, align 8, !tbaa !58
  %call28 = call i32 @SSL_is_init_finished(%struct.ssl_st* noundef nonnull %s) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end39, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %start
  %6 = load i64, i64* %length, align 8, !tbaa !50
  %cmp31 = icmp eq i64 %6, 0
  br i1 %cmp31, label %if.then32, label %if.end39

if.then32:                                        ; preds = %land.lhs.true30
  %7 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %q = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %7, i64 0, i32 6, i32 1
  %8 = load %struct.pqueue_st*, %struct.pqueue_st** %q, align 8, !tbaa !18
  %call34 = call %struct.pitem_st* @pqueue_pop(%struct.pqueue_st* noundef %8) #7
  %tobool35.not = icmp eq %struct.pitem_st* %call34, null
  br i1 %tobool35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.then32
  call fastcc void @dtls1_copy_record(%struct.ssl_st* noundef nonnull %s, %struct.pitem_st* noundef nonnull %call34) #8
  %data = getelementptr inbounds %struct.pitem_st, %struct.pitem_st* %call34, i64 0, i32 1
  %9 = load i8*, i8** %data, align 8, !tbaa !19
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 406) #7
  call void @pitem_free(%struct.pitem_st* noundef nonnull %call34) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.then36, %land.lhs.true30, %start
  %call40 = call i32 @dtls1_handle_timeout(%struct.ssl_st* noundef nonnull %s) #7
  %cmp41 = icmp sgt i32 %call40, 0
  br i1 %cmp41, label %start.backedge, label %if.else

if.else:                                          ; preds = %if.end39
  %call43 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end47, label %cleanup346

if.end47:                                         ; preds = %if.else
  %10 = load i64, i64* %length, align 8, !tbaa !50
  %cmp49 = icmp eq i64 %10, 0
  br i1 %cmp49, label %if.then53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end47
  %11 = load i32, i32* %rstate, align 4, !tbaa !59
  %cmp52 = icmp eq i32 %11, 241
  br i1 %cmp52, label %if.then53, label %if.end65

if.then53:                                        ; preds = %lor.lhs.false50, %if.end47
  store i64 0, i64* %numrpipes, align 8, !tbaa !60
  %call55 = call i32 @dtls1_get_record(%struct.ssl_st* noundef nonnull %s) #7
  %cmp56 = icmp slt i32 %call55, 1
  br i1 %cmp56, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.then53
  %call58 = call i32 @dtls1_read_failed(%struct.ssl_st* noundef nonnull %s, i32 noundef %call55) #7
  %cmp59 = icmp slt i32 %call58, 1
  br i1 %cmp59, label %cleanup346, label %start.backedge

if.end62:                                         ; preds = %if.then53
  store i64 1, i64* %numrpipes, align 8, !tbaa !60
  br label %if.end65

if.end65:                                         ; preds = %if.end62, %lor.lhs.false50
  %12 = load i32, i32* %type66, align 4, !tbaa !55
  %cmp67.not = icmp eq i32 %12, 21
  br i1 %cmp67.not, label %if.end73.thread, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end65
  %13 = load i64, i64* %length, align 8, !tbaa !50
  %cmp70.not = icmp eq i64 %13, 0
  br i1 %cmp70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %land.lhs.true68
  store i32 0, i32* %alert_count, align 4, !tbaa !61
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true68
  %14 = load i32, i32* %change_cipher_spec, align 8, !tbaa !62
  %tobool74.not = icmp eq i32 %14, 0
  %cmp77.not = icmp eq i32 %12, 22
  %or.cond = select i1 %tobool74.not, i1 true, i1 %cmp77.not
  br i1 %or.cond, label %if.end88, label %if.then78

if.end73.thread:                                  ; preds = %if.end65
  %15 = load i32, i32* %change_cipher_spec, align 8, !tbaa !62
  %tobool74.not531 = icmp eq i32 %15, 0
  br i1 %tobool74.not531, label %if.end88, label %if.then78

if.then78:                                        ; preds = %if.end73, %if.end73.thread
  %16 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %buffered_app_data81 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %16, i64 0, i32 6
  %call83 = call i32 @dtls1_buffer_record(%struct.ssl_st* noundef nonnull %s, %struct.record_pqueue_st* noundef nonnull %buffered_app_data81, i8* noundef nonnull %arraydecay82) #8
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %cleanup346, label %if.end86

if.end86:                                         ; preds = %if.then78
  store i64 0, i64* %length, align 8, !tbaa !50
  store i32 1, i32* %read, align 8, !tbaa !63
  br label %start.backedge

start.backedge:                                   ; preds = %if.end86, %if.then239, %if.end39, %if.then57, %cleanup328
  br label %start

if.end88:                                         ; preds = %if.end73.thread, %if.end73
  %17 = load i32, i32* %shutdown, align 4, !tbaa !64
  %and = and i32 %17, 2
  %tobool89.not = icmp eq i32 %and, 0
  br i1 %tobool89.not, label %if.end94, label %if.then90

if.then90:                                        ; preds = %if.end88
  store i64 0, i64* %length, align 8, !tbaa !50
  store i32 1, i32* %read, align 8, !tbaa !63
  store i32 1, i32* %rwstate, align 8, !tbaa !58
  br label %cleanup346

if.end94:                                         ; preds = %if.end88
  %cmp96 = icmp eq i32 %12, %type
  br i1 %cmp96, label %if.then104, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end94
  %cmp99 = icmp eq i32 %12, 20
  %or.cond355 = and i1 %cmp101, %cmp99
  %or.cond356 = and i1 %cmp103, %or.cond355
  br i1 %or.cond356, label %if.then104, label %if.end159

if.then104:                                       ; preds = %lor.lhs.false97, %if.end94
  %call105 = call i32 @SSL_in_init(%struct.ssl_st* noundef nonnull %s) #7
  %tobool106 = icmp ne i32 %call105, 0
  %cmp108 = icmp eq i32 %type, 23
  %or.cond357 = and i1 %cmp108, %tobool106
  br i1 %or.cond357, label %land.lhs.true109, label %if.end112

land.lhs.true109:                                 ; preds = %if.then104
  %enc_read_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 41
  %18 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_read_ctx, align 8, !tbaa !65
  %cmp110 = icmp eq %struct.evp_cipher_ctx_st* %18, null
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %land.lhs.true109
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 492, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 100, i8* noundef null) #7
  br label %cleanup346

if.end112:                                        ; preds = %land.lhs.true109, %if.then104
  %cmp113.not = icmp eq i32* %recvd_type, null
  br i1 %cmp113.not, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.end112
  %19 = load i32, i32* %type66, align 4, !tbaa !55
  store i32 %19, i32* %recvd_type, align 4, !tbaa !53
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end112
  %cmp117 = icmp eq i64 %len, 0
  %20 = load i64, i64* %length, align 8, !tbaa !50
  br i1 %cmp117, label %if.then118, label %if.end124

if.then118:                                       ; preds = %if.end116
  %cmp120 = icmp eq i64 %20, 0
  br i1 %cmp120, label %if.then121, label %cleanup346

if.then121:                                       ; preds = %if.then118
  store i32 1, i32* %read, align 8, !tbaa !63
  br label %cleanup346

if.end124:                                        ; preds = %if.end116
  %cmp126 = icmp ult i64 %20, %len
  %.len = select i1 %cmp126, i64 %20, i64 %len
  %21 = load i8*, i8** %data261, align 8, !tbaa !66
  %22 = load i64, i64* %off164, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %22
  %call132 = call i8* @memcpy(i8* noundef %buf, i8* noundef %arrayidx, i64 noundef %.len) #7
  br i1 %tobool8, label %if.then134, label %if.else140

if.then134:                                       ; preds = %if.end124
  %23 = load i64, i64* %length, align 8, !tbaa !50
  %cmp136 = icmp eq i64 %23, 0
  br i1 %cmp136, label %if.end158.sink.split, label %if.end158

if.else140:                                       ; preds = %if.end124
  %options = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 78
  %24 = load i64, i64* %options, align 8, !tbaa !27
  %and141 = and i64 %24, 2
  %tobool142.not = icmp eq i64 %and141, 0
  br i1 %tobool142.not, label %if.end147, label %if.then143

if.then143:                                       ; preds = %if.else140
  %25 = load i8*, i8** %data261, align 8, !tbaa !66
  %26 = load i64, i64* %off164, align 8, !tbaa !67
  %arrayidx146 = getelementptr inbounds i8, i8* %25, i64 %26
  call void @OPENSSL_cleanse(i8* noundef %arrayidx146, i64 noundef %.len) #7
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.else140
  %27 = load i64, i64* %length, align 8, !tbaa !50
  %sub = sub i64 %27, %.len
  store i64 %sub, i64* %length, align 8, !tbaa !50
  %28 = load i64, i64* %off164, align 8, !tbaa !67
  %add = add i64 %28, %.len
  store i64 %add, i64* %off164, align 8, !tbaa !67
  %cmp151 = icmp eq i64 %sub, 0
  br i1 %cmp151, label %if.then152, label %if.end158

if.then152:                                       ; preds = %if.end147
  store i32 240, i32* %rstate, align 4, !tbaa !59
  store i64 0, i64* %off164, align 8, !tbaa !67
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.then134, %if.then152
  store i32 1, i32* %read, align 8, !tbaa !63
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %if.end147, %if.then134
  store i64 %.len, i64* %readbytes, align 8, !tbaa !68
  br label %cleanup346

if.end159:                                        ; preds = %lor.lhs.false97
  br i1 %cmp67.not, label %if.then162, label %if.end228

if.then162:                                       ; preds = %if.end159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  %29 = load i8*, i8** %data261, align 8, !tbaa !66
  %30 = load i64, i64* %off164, align 8, !tbaa !67
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %30
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9
  %31 = load i64, i64* %length, align 8, !tbaa !50
  %call166 = call fastcc i32 @PACKET_buf_init(%struct.PACKET* noundef nonnull %alert, i8* noundef %add.ptr, i64 noundef %31) #8
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.then177, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.then162
  %call169 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %alert, i32* noundef nonnull %alert_level) #8
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then177, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false168
  %call172 = call fastcc i32 @PACKET_get_1(%struct.PACKET* noundef nonnull %alert, i32* noundef nonnull %alert_descr) #8
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then177, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false171
  %call175 = call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef nonnull %alert) #8
  %cmp176.not = icmp eq i64 %call175, 0
  br i1 %cmp176.not, label %if.end178, label %if.then177

if.then177:                                       ; preds = %lor.lhs.false174, %lor.lhs.false171, %lor.lhs.false168, %if.then162
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 562, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 205, i8* noundef null) #7
  br label %cleanup.thread

if.end178:                                        ; preds = %lor.lhs.false174
  %32 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !69
  %tobool179.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %32, null
  br i1 %tobool179.not, label %if.end182, label %if.then180

if.then180:                                       ; preds = %if.end178
  %33 = load i32, i32* %version, align 8, !tbaa !70
  %34 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !71
  call void %32(i32 noundef 0, i32 noundef %33, i32 noundef 21, i8* noundef %add.ptr, i64 noundef 2, %struct.ssl_st* noundef nonnull %s, i8* noundef %34) #7
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end178
  %35 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback, align 8, !tbaa !72
  %cmp183.not = icmp eq void (%struct.ssl_st*, i32, i32)* %35, null
  br i1 %cmp183.not, label %if.end193, label %if.then195

if.end193:                                        ; preds = %if.end182
  %36 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx, align 8, !tbaa !73
  %info_callback187 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %36, i64 0, i32 31
  %37 = load void (%struct.ssl_st*, i32, i32)*, void (%struct.ssl_st*, i32, i32)** %info_callback187, align 8, !tbaa !74
  %cmp188.not = icmp eq void (%struct.ssl_st*, i32, i32)* %37, null
  %spec.select = select i1 %cmp188.not, void (%struct.ssl_st*, i32, i32)* %cb.0.ph, void (%struct.ssl_st*, i32, i32)* %37
  %cmp194.not = icmp eq void (%struct.ssl_st*, i32, i32)* %spec.select, null
  br i1 %cmp194.not, label %if.end196thread-pre-split, label %if.then195

if.then195:                                       ; preds = %if.end182, %if.end193
  %cb.1535 = phi void (%struct.ssl_st*, i32, i32)* [ %spec.select, %if.end193 ], [ %35, %if.end182 ]
  %38 = load i32, i32* %alert_level, align 4, !tbaa !53
  %shl = shl i32 %38, 8
  %39 = load i32, i32* %alert_descr, align 4, !tbaa !53
  %or = or i32 %shl, %39
  call void %cb.1535(%struct.ssl_st* noundef nonnull %s, i32 noundef 16388, i32 noundef %or) #7
  br label %if.end196

if.end196thread-pre-split:                        ; preds = %if.end193
  %.pr = load i32, i32* %alert_level, align 4, !tbaa !53
  br label %if.end196

if.end196:                                        ; preds = %if.end196thread-pre-split, %if.then195
  %40 = phi i32 [ %.pr, %if.end196thread-pre-split ], [ %38, %if.then195 ]
  %cb.1536 = phi void (%struct.ssl_st*, i32, i32)* [ null, %if.end196thread-pre-split ], [ %cb.1535, %if.then195 ]
  switch i32 %40, label %if.else223 [
    i32 1, label %if.then198
    i32 2, label %if.then215
  ]

if.then198:                                       ; preds = %if.end196
  %41 = load i32, i32* %alert_descr, align 4, !tbaa !53
  store i32 %41, i32* %warn_alert, align 4, !tbaa !79
  store i32 1, i32* %read, align 8, !tbaa !63
  %42 = load i32, i32* %alert_count, align 4, !tbaa !61
  %inc = add i32 %42, 1
  store i32 %inc, i32* %alert_count, align 4, !tbaa !61
  %cmp205 = icmp eq i32 %inc, 5
  br i1 %cmp205, label %if.then206, label %if.end207

if.then206:                                       ; preds = %if.then198
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 409, i8* noundef null) #7
  br label %cleanup.thread

if.end207:                                        ; preds = %if.then198
  %cmp208 = icmp eq i32 %41, 0
  br i1 %cmp208, label %if.then209, label %cleanup

if.then209:                                       ; preds = %if.end207
  %43 = load i32, i32* %shutdown, align 4, !tbaa !64
  %or211 = or i32 %43, 2
  store i32 %or211, i32* %shutdown, align 4, !tbaa !64
  br label %cleanup.thread

if.then215:                                       ; preds = %if.end196
  store i32 1, i32* %rwstate, align 8, !tbaa !58
  %44 = load i32, i32* %alert_descr, align 4, !tbaa !53
  %fatal_alert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 13
  store i32 %44, i32* %fatal_alert, align 8, !tbaa !80
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 613, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  %add218 = add i32 %44, 1000
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef -1, i32 noundef %add218, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef %44) #7
  %45 = load i32, i32* %shutdown, align 4, !tbaa !64
  %or220 = or i32 %45, 2
  store i32 %or220, i32* %shutdown, align 4, !tbaa !64
  store i32 1, i32* %read, align 8, !tbaa !63
  %session_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 95
  %46 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %session_ctx, align 8, !tbaa !81
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %47 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !82
  %call222 = call i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef %46, %struct.ssl_session_st* noundef %47) #7
  br label %cleanup.thread

if.else223:                                       ; preds = %if.end196
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 47, i32 noundef 246, i8* noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then177, %if.then206, %if.then209, %if.then215, %if.else223
  %retval.1.ph = phi i32 [ -1, %if.else223 ], [ 0, %if.then215 ], [ 0, %if.then209 ], [ -1, %if.then206 ], [ -1, %if.then177 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %cleanup346

cleanup:                                          ; preds = %if.end207
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  br label %start.outer

if.end228:                                        ; preds = %if.end159
  %and230 = and i32 %17, 1
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end236, label %if.then232

if.then232:                                       ; preds = %if.end228
  store i32 1, i32* %rwstate, align 8, !tbaa !58
  store i64 0, i64* %length, align 8, !tbaa !50
  store i32 1, i32* %read, align 8, !tbaa !63
  br label %cleanup346

if.end236:                                        ; preds = %if.end228
  br i1 %cmp99, label %if.then239, label %if.end242

if.then239:                                       ; preds = %if.end236
  store i64 0, i64* %length, align 8, !tbaa !50
  store i32 1, i32* %read, align 8, !tbaa !63
  br label %start.backedge

if.end242:                                        ; preds = %if.end236
  %cmp244 = icmp eq i32 %12, 22
  br i1 %cmp244, label %land.lhs.true245, label %if.end330

land.lhs.true245:                                 ; preds = %if.end242
  %call246 = call i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef nonnull %s) #7
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.then248, label %land.lhs.true245.if.end330_crit_edge

land.lhs.true245.if.end330_crit_edge:             ; preds = %land.lhs.true245
  %.pre = load i32, i32* %type66, align 4, !tbaa !55
  br label %if.end330

if.then248:                                       ; preds = %land.lhs.true245
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %2) #9
  %48 = load i64, i64* %epoch, align 8, !tbaa !54
  %49 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %r_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %49, i64 0, i32 0
  %50 = load i16, i16* %r_epoch, align 8, !tbaa !48
  %conv = zext i16 %50 to i64
  %cmp251.not = icmp eq i64 %48, %conv
  br i1 %cmp251.not, label %lor.lhs.false253, label %if.then257

lor.lhs.false253:                                 ; preds = %if.then248
  %51 = load i64, i64* %length, align 8, !tbaa !50
  %cmp255 = icmp ult i64 %51, 12
  br i1 %cmp255, label %if.then257, label %if.end260

if.then257:                                       ; preds = %lor.lhs.false253, %if.then248
  store i64 0, i64* %length, align 8, !tbaa !50
  store i32 1, i32* %read, align 8, !tbaa !63
  br label %cleanup328

if.end260:                                        ; preds = %lor.lhs.false253
  %52 = load i8*, i8** %data261, align 8, !tbaa !66
  call void @dtls1_get_message_header(i8* noundef %52, %struct.hm_header_st* noundef nonnull %msg_hdr) #7
  %53 = load i8, i8* %2, align 8, !tbaa !83
  %cmp264 = icmp eq i8 %53, 20
  br i1 %cmp264, label %if.then266, label %if.end296

if.then266:                                       ; preds = %if.end260
  %call267 = call i32 @dtls1_check_timeout_num(%struct.ssl_st* noundef nonnull %s) #7
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %cleanup328.thread, label %if.end271

if.end271:                                        ; preds = %if.then266
  %call272 = call i32 @dtls1_retransmit_buffered_messages(%struct.ssl_st* noundef nonnull %s) #7
  %cmp273 = icmp slt i32 %call272, 1
  br i1 %cmp273, label %if.then275, label %if.end280

if.then275:                                       ; preds = %if.end271
  %call276 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #7
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end280, label %cleanup328.thread

if.end280:                                        ; preds = %if.then275, %if.end271
  store i64 0, i64* %length, align 8, !tbaa !50
  store i32 1, i32* %read, align 8, !tbaa !63
  %54 = load i32, i32* %mode312, align 8, !tbaa !86
  %and283 = and i32 %54, 4
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.then285, label %cleanup328

if.then285:                                       ; preds = %if.end280
  %55 = load i64, i64* %left318, align 8, !tbaa !87
  %cmp288 = icmp eq i64 %55, 0
  br i1 %cmp288, label %if.then290, label %cleanup328

if.then290:                                       ; preds = %if.then285
  store i32 3, i32* %rwstate, align 8, !tbaa !58
  %call292 = call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #7
  call void @BIO_clear_flags(%struct.bio_st* noundef %call292, i32 noundef 15) #7
  call void @BIO_set_flags(%struct.bio_st* noundef %call292, i32 noundef 9) #7
  br label %cleanup328.thread

if.end296:                                        ; preds = %if.end260
  %call297 = call i32 @SSL_is_init_finished(%struct.ssl_st* noundef nonnull %s) #7
  %cmp298.not = icmp eq i32 %call297, 0
  br i1 %cmp298.not, label %if.then300, label %if.end301

if.then300:                                       ; preds = %if.end296
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 705, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup328.thread

if.end301:                                        ; preds = %if.end296
  call void @ossl_statem_set_in_init(%struct.ssl_st* noundef nonnull %s, i32 noundef 1) #7
  %56 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %handshake_func302, align 8, !tbaa !57
  %call303 = call i32 %56(%struct.ssl_st* noundef nonnull %s) #7
  %cmp304 = icmp slt i32 %call303, 0
  br i1 %cmp304, label %cleanup328.thread, label %if.end307

if.end307:                                        ; preds = %if.end301
  %cmp308 = icmp eq i32 %call303, 0
  br i1 %cmp308, label %cleanup328.thread, label %if.end311

if.end311:                                        ; preds = %if.end307
  %57 = load i32, i32* %mode312, align 8, !tbaa !86
  %and313 = and i32 %57, 4
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %if.then315, label %cleanup328

if.then315:                                       ; preds = %if.end311
  %58 = load i64, i64* %left318, align 8, !tbaa !87
  %cmp319 = icmp eq i64 %58, 0
  br i1 %cmp319, label %if.then321, label %cleanup328

if.then321:                                       ; preds = %if.then315
  store i32 3, i32* %rwstate, align 8, !tbaa !58
  %call324 = call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef nonnull %s) #7
  call void @BIO_clear_flags(%struct.bio_st* noundef %call324, i32 noundef 15) #7
  call void @BIO_set_flags(%struct.bio_st* noundef %call324, i32 noundef 9) #7
  br label %cleanup328.thread

cleanup328.thread:                                ; preds = %if.then266, %if.then275, %if.end301, %if.end307, %if.then321, %if.then300, %if.then290
  %retval.2.ph = phi i32 [ -1, %if.then290 ], [ -1, %if.then300 ], [ -1, %if.then321 ], [ -1, %if.then266 ], [ -1, %if.then275 ], [ %call303, %if.end301 ], [ -1, %if.end307 ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #9
  br label %cleanup346

cleanup328:                                       ; preds = %if.end311, %if.then315, %if.end280, %if.then285, %if.then257
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %2) #9
  br label %start.backedge

if.end330:                                        ; preds = %if.end242, %land.lhs.true245.if.end330_crit_edge
  %59 = phi i32 [ %.pre, %land.lhs.true245.if.end330_crit_edge ], [ %12, %if.end242 ]
  switch i32 %59, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb332
  ]

sw.default:                                       ; preds = %if.end330
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 741, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 245, i8* noundef null) #7
  br label %cleanup346

sw.bb:                                            ; preds = %if.end330, %if.end330, %if.end330
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 751, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup346

sw.bb332:                                         ; preds = %if.end330
  %in_read_app_data = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 19
  %60 = load i32, i32* %in_read_app_data, align 8, !tbaa !88
  %tobool334.not = icmp eq i32 %60, 0
  br i1 %tobool334.not, label %if.else345, label %land.lhs.true335

land.lhs.true335:                                 ; preds = %sw.bb332
  %total_renegotiations = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 17
  %61 = load i32, i32* %total_renegotiations, align 8, !tbaa !89
  %cmp337.not = icmp eq i32 %61, 0
  br i1 %cmp337.not, label %if.else345, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %land.lhs.true335
  %call340 = call i32 @ossl_statem_app_data_allowed(%struct.ssl_st* noundef nonnull %s) #7
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.else345, label %if.then342

if.then342:                                       ; preds = %land.lhs.true339
  store i32 2, i32* %in_read_app_data, align 8, !tbaa !88
  br label %cleanup346

if.else345:                                       ; preds = %land.lhs.true339, %land.lhs.true335, %sw.bb332
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dtls1_read_bytes, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 10, i32 noundef 245, i8* noundef null) #7
  br label %cleanup346

cleanup346:                                       ; preds = %if.then78, %if.then57, %if.else, %cleanup328.thread, %cleanup.thread, %if.then118, %if.then121, %if.end22, %if.then18, %if.then, %if.else345, %if.then342, %sw.bb, %sw.default, %if.then232, %if.end158, %if.then111, %if.then90, %if.then11
  %retval.3 = phi i32 [ -1, %if.then11 ], [ 0, %if.then90 ], [ -1, %if.then111 ], [ 1, %if.end158 ], [ 0, %if.then232 ], [ -1, %sw.default ], [ -1, %if.then342 ], [ -1, %if.else345 ], [ -1, %sw.bb ], [ -1, %if.then ], [ %call19, %if.then18 ], [ -1, %if.end22 ], [ 0, %if.then121 ], [ 0, %if.then118 ], [ %retval.1.ph, %cleanup.thread ], [ %retval.2.ph, %cleanup328.thread ], [ -1, %if.then78 ], [ %call58, %if.then57 ], [ -1, %if.else ]
  ret i32 %retval.3
}

declare i32 @ossl_statem_get_in_handshake(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @SSL_in_init(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @SSL_is_init_finished(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @dtls1_handle_timeout(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @dtls1_get_record(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @dtls1_read_failed(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @PACKET_buf_init(%struct.PACKET* nocapture noundef writeonly %pkt, i8* noundef %buf, i64 noundef %len) unnamed_addr #5 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  store i8* %buf, i8** %curr, align 8, !tbaa !90
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  store i64 %len, i64* %remaining, align 8, !tbaa !92
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_get_1(%struct.PACKET* nocapture noundef %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i32 @PACKET_peek_1(%struct.PACKET* noundef %pkt, i32* noundef %data) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @packet_forward(%struct.PACKET* noundef %pkt) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @PACKET_remaining(%struct.PACKET* nocapture noundef readonly %pkt) unnamed_addr #6 {
entry:
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %0 = load i64, i64* %remaining, align 8, !tbaa !92
  ret i64 %0
}

declare i32 @SSL_CTX_remove_session(%struct.ssl_ctx_st* noundef, %struct.ssl_session_st* noundef) local_unnamed_addr #2

declare void @dtls1_get_message_header(i8* noundef, %struct.hm_header_st* noundef) local_unnamed_addr #2

declare i32 @dtls1_check_timeout_num(%struct.ssl_st* noundef) local_unnamed_addr #2

declare i32 @dtls1_retransmit_buffered_messages(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_statem_set_in_init(%struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_statem_app_data_allowed(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @dtls1_write_bytes(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %buf, i64 noundef %len, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %len, 16385
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dtls1_write_bytes, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rwstate = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 5
  store i32 1, i32* %rwstate, align 8, !tbaa !58
  %call = tail call i32 @do_dtls1_write(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %buf, i64 noundef %len, i32 noundef 0, i64* noundef %written) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @do_dtls1_write(%struct.ssl_st* noundef %s, i32 noundef %type, i8* noundef %buf, i64 noundef %len, i32 noundef %create_empty_fragment, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %wr = alloca %struct.ssl3_record_st, align 8
  %0 = bitcast %struct.ssl3_record_st* %wr to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  %left = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 4
  %1 = load i64, i64* %left, align 8, !tbaa !49
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 810, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %alert_dispatch = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 14
  %2 = load i32, i32* %alert_dispatch, align 4, !tbaa !93
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %3 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !94
  %ssl_dispatch_alert = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %3, i64 0, i32 16
  %4 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_dispatch_alert, align 8, !tbaa !95
  %call = tail call i32 %4(%struct.ssl_st* noundef nonnull %s) #7
  %cmp4 = icmp slt i32 %call, 1
  br i1 %cmp4, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %cmp9 = icmp ne i64 %len, 0
  %tobool11 = icmp ne i32 %create_empty_fragment, 0
  %or.cond = or i1 %cmp9, %tobool11
  br i1 %or.cond, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef nonnull %s) #7
  %conv15 = zext i32 %call14 to i64
  %cmp16 = icmp ult i64 %conv15, %len
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 826, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 194, i8* noundef null) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %session = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 55
  %5 = load %struct.ssl_session_st*, %struct.ssl_session_st** %session, align 8, !tbaa !82
  %cmp20 = icmp eq %struct.ssl_session_st* %5, null
  br i1 %cmp20, label %if.end39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %enc_write_ctx = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %6 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx, align 8, !tbaa !97
  %cmp22 = icmp eq %struct.evp_cipher_ctx_st* %6, null
  br i1 %cmp22, label %if.end39, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %write_hash = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 48
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !98
  %call25 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %7) #7
  %cmp26 = icmp eq %struct.evp_md_st* %call25, null
  br i1 %cmp26, label %if.end39, label %if.else

if.else:                                          ; preds = %lor.lhs.false24
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %write_hash, align 8, !tbaa !98
  %call33 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %8) #7
  %call34 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call33) #7
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 843, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 194, i8* noundef null) #7
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false24, %lor.lhs.false, %if.end19, %if.else
  %mac_size.0 = phi i32 [ %call34, %if.else ], [ 0, %if.end19 ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false24 ]
  %buf40 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 0
  %9 = load i8*, i8** %buf40, align 8, !tbaa !99
  %conv41 = trunc i32 %type to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %conv41, i8* %9, align 1, !tbaa !100
  %type42 = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 1
  store i32 %type, i32* %type42, align 4, !tbaa !55
  %method43 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %10 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method43, align 8, !tbaa !94
  %version = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %10, i64 0, i32 0
  %11 = load i32, i32* %version, align 8, !tbaa !101
  %cmp44 = icmp eq i32 %11, 131071
  br i1 %cmp44, label %land.lhs.true46, label %if.else52

land.lhs.true46:                                  ; preds = %if.end39
  %max_proto_version = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 81
  %12 = load i32, i32* %max_proto_version, align 8, !tbaa !102
  %cmp47.not = icmp eq i32 %12, 256
  br i1 %cmp47.not, label %if.else52, label %if.then49

if.then49:                                        ; preds = %land.lhs.true46
  %incdec.ptr50 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 -2, i8* %incdec.ptr, align 1, !tbaa !100
  store i8 -1, i8* %incdec.ptr50, align 1, !tbaa !100
  br label %if.end60

if.else52:                                        ; preds = %land.lhs.true46, %if.end39
  %version53 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 0
  %13 = load i32, i32* %version53, align 8, !tbaa !70
  %14 = lshr i32 %13, 8
  %conv54 = trunc i32 %14 to i8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %9, i64 2
  store i8 %conv54, i8* %incdec.ptr, align 1, !tbaa !100
  %15 = load i32, i32* %version53, align 8, !tbaa !70
  %conv58 = trunc i32 %15 to i8
  store i8 %conv58, i8* %incdec.ptr55, align 1, !tbaa !100
  br label %if.end60

if.end60:                                         ; preds = %if.else52, %if.then49
  %p.0 = getelementptr inbounds i8, i8* %9, i64 3
  %add.ptr61 = getelementptr inbounds i8, i8* %9, i64 13
  %enc_write_ctx62 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 46
  %16 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx62, align 8, !tbaa !97
  %tobool63.not = icmp eq %struct.evp_cipher_ctx_st* %16, null
  br i1 %tobool63.not, label %if.end90, label %if.then64

if.then64:                                        ; preds = %if.end60
  %call66 = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef nonnull %16) #7
  %call67 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %call66) #7
  switch i32 %call67, label %if.else85 [
    i32 2, label %if.then70
    i32 6, label %if.end90
    i32 7, label %if.end90
  ]

if.then70:                                        ; preds = %if.then64
  %17 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %enc_write_ctx62, align 8, !tbaa !97
  %call72 = tail call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %17) #7
  %cmp73 = icmp slt i32 %call72, 2
  %spec.store.select = select i1 %cmp73, i32 0, i32 %call72
  br label %if.end90

if.else85:                                        ; preds = %if.then64
  br label %if.end90

if.end90:                                         ; preds = %if.end60, %if.then70, %if.else85, %if.then64, %if.then64
  %eivlen.1 = phi i32 [ %spec.store.select, %if.then70 ], [ 0, %if.else85 ], [ 8, %if.then64 ], [ 8, %if.then64 ], [ 0, %if.end60 ]
  %idx.ext334 = zext i32 %eivlen.1 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %add.ptr61, i64 %idx.ext334
  %data = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 5
  store i8* %add.ptr91, i8** %data, align 8, !tbaa !66
  %length = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 2
  store i64 %len, i64* %length, align 8, !tbaa !50
  %input = getelementptr inbounds %struct.ssl3_record_st, %struct.ssl3_record_st* %wr, i64 0, i32 6
  store i8* %buf, i8** %input, align 8, !tbaa !103
  %compress = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 44
  %18 = load %struct.comp_ctx_st*, %struct.comp_ctx_st** %compress, align 8, !tbaa !104
  %cmp92.not = icmp eq %struct.comp_ctx_st* %18, null
  br i1 %cmp92.not, label %if.else99, label %if.then94

if.then94:                                        ; preds = %if.end90
  %call95 = call i32 @ssl3_do_compress(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %wr) #7
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.end106

if.then97:                                        ; preds = %if.then94
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 902, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 141, i8* noundef null) #7
  br label %cleanup

if.else99:                                        ; preds = %if.end90
  %call103 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr91, i8* noundef %buf, i64 noundef %len) #7
  store i8* %add.ptr91, i8** %input, align 8, !tbaa !103
  br label %if.end106

if.end106:                                        ; preds = %if.then94, %if.else99
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 17, i32 0
  %19 = load i64, i64* %flags, align 8, !tbaa !105
  %and108 = and i64 %19, 1024
  %tobool109 = icmp eq i64 %and108, 0
  %cmp111 = icmp ne i32 %mac_size.0, 0
  %or.cond228 = select i1 %tobool109, i1 %cmp111, i1 false
  br i1 %or.cond228, label %if.then113, label %if.end125

if.then113:                                       ; preds = %if.end106
  %20 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method43, align 8, !tbaa !94
  %ssl3_enc = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %20, i64 0, i32 25
  %21 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc, align 8, !tbaa !106
  %mac = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %21, i64 0, i32 1
  %22 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac, align 8, !tbaa !107
  %23 = load i64, i64* %length, align 8, !tbaa !50
  %add = add i64 %23, %idx.ext334
  %arrayidx117 = getelementptr inbounds i8, i8* %add.ptr61, i64 %add
  %call118 = call i32 %22(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %wr, i8* noundef nonnull %arrayidx117, i32 noundef 1) #7
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.then113
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 921, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end121:                                        ; preds = %if.then113
  %conv122335 = zext i32 %mac_size.0 to i64
  %24 = load i64, i64* %length, align 8, !tbaa !50
  %add124 = add i64 %24, %conv122335
  store i64 %add124, i64* %length, align 8, !tbaa !50
  br label %if.end125

if.end125:                                        ; preds = %if.end121, %if.end106
  store i8* %add.ptr61, i8** %data, align 8, !tbaa !66
  store i8* %add.ptr61, i8** %input, align 8, !tbaa !103
  %tobool129.not = icmp eq i32 %eivlen.1, 0
  br i1 %tobool129.not, label %if.end134, label %if.then130

if.then130:                                       ; preds = %if.end125
  %25 = load i64, i64* %length, align 8, !tbaa !50
  %add133 = add i64 %25, %idx.ext334
  store i64 %add133, i64* %length, align 8, !tbaa !50
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %if.end125
  %26 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method43, align 8, !tbaa !94
  %ssl3_enc136 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %26, i64 0, i32 25
  %27 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc136, align 8, !tbaa !106
  %enc = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %27, i64 0, i32 0
  %28 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i64, i32, %struct.ssl_mac_buf_st*, i64)** %enc, align 8, !tbaa !109
  %conv137336 = zext i32 %mac_size.0 to i64
  %call138 = call i32 %28(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %wr, i64 noundef 1, i32 noundef 1, %struct.ssl_mac_buf_st* noundef null, i64 noundef %conv137336) #7
  %cmp139 = icmp slt i32 %call138, 1
  br i1 %cmp139, label %if.then141, label %if.end146

if.then141:                                       ; preds = %if.end134
  %call142 = call i32 @ossl_statem_in_error(%struct.ssl_st* noundef nonnull %s) #7
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %cleanup

if.then144:                                       ; preds = %if.then141
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 936, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end146:                                        ; preds = %if.end134
  %29 = load i64, i64* %flags, align 8, !tbaa !105
  %and149 = and i64 %29, 1024
  %tobool150 = icmp ne i64 %and149, 0
  %or.cond229 = select i1 %tobool150, i1 %cmp111, i1 false
  br i1 %or.cond229, label %if.then154, label %if.end167

if.then154:                                       ; preds = %if.end146
  %30 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method43, align 8, !tbaa !94
  %ssl3_enc156 = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %30, i64 0, i32 25
  %31 = load %struct.ssl3_enc_method*, %struct.ssl3_enc_method** %ssl3_enc156, align 8, !tbaa !106
  %mac157 = getelementptr inbounds %struct.ssl3_enc_method, %struct.ssl3_enc_method* %31, i64 0, i32 1
  %32 = load i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)*, i32 (%struct.ssl_st*, %struct.ssl3_record_st*, i8*, i32)** %mac157, align 8, !tbaa !107
  %33 = load i64, i64* %length, align 8, !tbaa !50
  %arrayidx159 = getelementptr inbounds i8, i8* %add.ptr61, i64 %33
  %call160 = call i32 %32(%struct.ssl_st* noundef nonnull %s, %struct.ssl3_record_st* noundef nonnull %wr, i8* noundef nonnull %arrayidx159, i32 noundef 1) #7
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.then154
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef 944, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_dtls1_write, i64 0, i64 0)) #7
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #7
  br label %cleanup

if.end163:                                        ; preds = %if.then154
  %34 = load i64, i64* %length, align 8, !tbaa !50
  %add166 = add i64 %34, %conv137336
  store i64 %add166, i64* %length, align 8, !tbaa !50
  br label %if.end167

if.end167:                                        ; preds = %if.end163, %if.end146
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %35 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %35, i64 0, i32 1
  %36 = load i16, i16* %w_epoch, align 2, !tbaa !40
  %37 = lshr i16 %36, 8
  %conv172 = trunc i16 %37 to i8
  store i8 %conv172, i8* %p.0, align 1, !tbaa !100
  %38 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %w_epoch176 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %38, i64 0, i32 1
  %39 = load i16, i16* %w_epoch176, align 2, !tbaa !40
  %conv179 = trunc i16 %39 to i8
  %arrayidx180 = getelementptr inbounds i8, i8* %9, i64 4
  store i8 %conv179, i8* %arrayidx180, align 1, !tbaa !100
  %add.ptr181 = getelementptr inbounds i8, i8* %9, i64 5
  %arrayidx183 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 2
  %call184 = call i8* @memcpy(i8* noundef nonnull %add.ptr181, i8* noundef nonnull %arrayidx183, i64 noundef 6) #7
  %add.ptr185 = getelementptr inbounds i8, i8* %9, i64 11
  %40 = load i64, i64* %length, align 8, !tbaa !50
  %shr187 = lshr i64 %40, 8
  %conv189 = trunc i64 %shr187 to i8
  store i8 %conv189, i8* %add.ptr185, align 1, !tbaa !100
  %41 = load i64, i64* %length, align 8, !tbaa !50
  %conv193 = trunc i64 %41 to i8
  %arrayidx194 = getelementptr inbounds i8, i8* %9, i64 12
  store i8 %conv193, i8* %arrayidx194, align 1, !tbaa !100
  %msg_callback = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 19
  %42 = load void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)** %msg_callback, align 8, !tbaa !69
  %tobool196.not = icmp eq void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)* %42, null
  br i1 %tobool196.not, label %if.end200, label %if.then197

if.then197:                                       ; preds = %if.end167
  %msg_callback_arg = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 20
  %43 = load i8*, i8** %msg_callback_arg, align 8, !tbaa !71
  call void %42(i32 noundef 1, i32 noundef 0, i32 noundef 256, i8* noundef nonnull %9, i64 noundef 13, %struct.ssl_st* noundef nonnull %s, i8* noundef %43) #7
  br label %if.end200

if.end200:                                        ; preds = %if.then197, %if.end167
  store i32 %type, i32* %type42, align 4, !tbaa !55
  %44 = load i64, i64* %length, align 8, !tbaa !50
  %add203 = add i64 %44, 13
  store i64 %add203, i64* %length, align 8, !tbaa !50
  %arrayidx206 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  call void @ssl3_record_sequence_update(i8* noundef nonnull %arrayidx206) #7
  %45 = load i64, i64* %length, align 8, !tbaa !50
  br i1 %tobool11, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.end200
  store i64 %45, i64* %written, align 8, !tbaa !68
  br label %cleanup

if.end210:                                        ; preds = %if.end200
  store i64 %45, i64* %left, align 8, !tbaa !49
  %offset = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 6, i64 0, i32 3
  store i64 0, i64* %offset, align 8, !tbaa !110
  %wpend_tot = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 14
  store i64 %len, i64* %wpend_tot, align 8, !tbaa !111
  %wpend_buf = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 17
  store i8* %buf, i8** %wpend_buf, align 8, !tbaa !112
  %wpend_type = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 15
  store i32 %type, i32* %wpend_type, align 8, !tbaa !113
  %wpend_ret = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 16
  store i64 %len, i64* %wpend_ret, align 8, !tbaa !114
  %call218 = call i32 @ssl3_write_pending(%struct.ssl_st* noundef nonnull %s, i32 noundef %type, i8* noundef %buf, i64 noundef %len, i64* noundef %written) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %if.then144, %if.end8, %if.then3, %if.end210, %if.then208, %if.then162, %if.then120, %if.then97, %if.then37, %if.then18, %if.then
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 1, %if.then208 ], [ %call218, %if.end210 ], [ -1, %if.then162 ], [ -1, %if.then120 ], [ -1, %if.then97 ], [ -1, %if.then37 ], [ 0, %if.then ], [ %call, %if.then3 ], [ 0, %if.end8 ], [ -1, %if.then144 ], [ -1, %if.then141 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @ssl_get_max_send_fragment(%struct.ssl_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ssl3_do_compress(%struct.ssl_st* noundef, %struct.ssl3_record_st* noundef) local_unnamed_addr #2

declare void @ssl3_record_sequence_update(i8* noundef) local_unnamed_addr #2

declare i32 @ssl3_write_pending(%struct.ssl_st* noundef, i32 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @dtls1_reset_seq_numbers(%struct.ssl_st* noundef %s, i32 noundef %rw) local_unnamed_addr #0 {
entry:
  %and = and i32 %rw, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 18, i64 0
  %d = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %0 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %r_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 0
  %1 = load i16, i16* %r_epoch, align 8, !tbaa !48
  %inc = add i16 %1, 1
  store i16 %inc, i16* %r_epoch, align 8, !tbaa !48
  %bitmap = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 2
  %2 = bitcast %struct.dtls1_bitmap_st* %bitmap to i8*
  %next_bitmap = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %0, i64 0, i32 3
  %3 = bitcast %struct.dtls1_bitmap_st* %next_bitmap to i8*
  %call = tail call i8* @memcpy(i8* noundef nonnull %2, i8* noundef nonnull %3, i64 noundef 16) #7
  %4 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d, align 8, !tbaa !46
  %next_bitmap8 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %4, i64 0, i32 3
  %5 = bitcast %struct.dtls1_bitmap_st* %next_bitmap8 to i8*
  %call9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i64 noundef 16) #7
  tail call void @dtls1_clear_received_buffer(%struct.ssl_st* noundef %s) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay11 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 19, i64 0
  %d13 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 108, i32 22
  %6 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d13, align 8, !tbaa !46
  %arraydecay14 = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %6, i64 0, i32 7, i64 0
  %call15 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay14, i8* noundef nonnull %arraydecay11, i64 noundef 8) #7
  %7 = load %struct.dtls_record_layer_st*, %struct.dtls_record_layer_st** %d13, align 8, !tbaa !46
  %w_epoch = getelementptr inbounds %struct.dtls_record_layer_st, %struct.dtls_record_layer_st* %7, i64 0, i32 1
  %8 = load i16, i16* %w_epoch, align 2, !tbaa !40
  %inc18 = add i16 %8, 1
  store i16 %inc18, i16* %w_epoch, align 2, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %seq.0 = phi i8* [ %arraydecay, %if.then ], [ %arraydecay11, %if.else ]
  %call19 = tail call i8* @memset(i8* noundef nonnull %seq.0, i32 noundef 0, i64 noundef 8) #7
  ret void
}

declare void @dtls1_clear_received_buffer(%struct.ssl_st* noundef) local_unnamed_addr #2

declare void @SSL3_BUFFER_release(%struct.ssl3_buffer_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @PACKET_peek_1(%struct.PACKET* nocapture noundef readonly %pkt, i32* nocapture noundef writeonly %data) unnamed_addr #4 {
entry:
  %call = tail call fastcc i64 @PACKET_remaining(%struct.PACKET* noundef %pkt) #8
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !90
  %1 = load i8, i8* %0, align 1, !tbaa !100
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %data, align 4, !tbaa !53
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @packet_forward(%struct.PACKET* nocapture noundef %pkt) unnamed_addr #4 {
entry:
  %curr = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 0
  %0 = load i8*, i8** %curr, align 8, !tbaa !90
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %add.ptr, i8** %curr, align 8, !tbaa !90
  %remaining = getelementptr inbounds %struct.PACKET, %struct.PACKET* %pkt, i64 0, i32 1
  %1 = load i64, i64* %remaining, align 8, !tbaa !92
  %sub = add i64 %1, -1
  store i64 %sub, i64* %remaining, align 8, !tbaa !92
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4280}
!5 = !{!"record_layer_st", !6, i64 0, !9, i64 8, !9, i64 12, !10, i64 16, !10, i64 24, !11, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !10, i64 4184, !10, i64 4192, !7, i64 4200, !10, i64 4208, !10, i64 4216, !10, i64 4224, !9, i64 4232, !10, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !9, i64 4272, !9, i64 4276, !6, i64 4280}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"ssl3_buffer_st", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !9, i64 40}
!12 = !{!13, !6, i64 48}
!13 = !{!"dtls_record_layer_st", !14, i64 0, !14, i64 2, !15, i64 8, !15, i64 24, !16, i64 40, !16, i64 56, !16, i64 72, !7, i64 88, !7, i64 96}
!14 = !{!"short", !7, i64 0}
!15 = !{!"dtls1_bitmap_st", !10, i64 0, !7, i64 8}
!16 = !{!"record_pqueue_st", !14, i64 0, !6, i64 8}
!17 = !{!13, !6, i64 64}
!18 = !{!13, !6, i64 80}
!19 = !{!20, !6, i64 8}
!20 = !{!"pitem_st", !7, i64 0, !6, i64 8, !6, i64 16}
!21 = !{!22, !6, i64 16}
!22 = !{!"dtls1_record_data_st", !6, i64 0, !10, i64 8, !11, i64 16, !23, i64 64}
!23 = !{!"ssl3_record_st", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !10, i64 64, !7, i64 72}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!5, !6, i64 0}
!27 = !{!28, !10, i64 2536}
!28 = !{!"ssl_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !6, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !29, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !10, i64 152, !10, i64 160, !30, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !9, i64 1232, !6, i64 1240, !32, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !9, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !10, i64 2272, !7, i64 2280, !10, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !10, i64 2352, !6, i64 2360, !7, i64 2368, !10, i64 2400, !9, i64 2408, !6, i64 2416, !6, i64 2424, !9, i64 2432, !9, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !10, i64 2488, !33, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !10, i64 2536, !9, i64 2544, !9, i64 2548, !9, i64 2552, !10, i64 2560, !9, i64 2568, !9, i64 2572, !10, i64 2576, !10, i64 2584, !10, i64 2592, !34, i64 2600, !6, i64 2904, !9, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !9, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !9, i64 2976, !9, i64 2980, !7, i64 2984, !9, i64 2988, !6, i64 2992, !10, i64 3000, !9, i64 3008, !6, i64 3016, !36, i64 3024, !6, i64 3152, !5, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !10, i64 7480, !9, i64 7488, !9, i64 7492, !9, i64 7496, !6, i64 7504, !6, i64 7512, !10, i64 7520, !6, i64 7528, !10, i64 7536, !10, i64 7544, !10, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !10, i64 7600}
!29 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !7, i64 52, !7, i64 56}
!30 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !9, i64 216, !9, i64 220, !6, i64 224, !6, i64 232, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !7, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !31, i64 280, !7, i64 840, !10, i64 904, !7, i64 912, !10, i64 976, !9, i64 984, !9, i64 988, !6, i64 992, !10, i64 1000, !6, i64 1008, !10, i64 1016, !9, i64 1024, !7, i64 1028, !7, i64 1029, !14, i64 1030, !6, i64 1032}
!31 = !{!"", !7, i64 0, !10, i64 128, !7, i64 136, !10, i64 264, !10, i64 272, !9, i64 280, !6, i64 288, !6, i64 296, !9, i64 304, !6, i64 312, !10, i64 320, !6, i64 328, !10, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !9, i64 368, !10, i64 376, !6, i64 384, !9, i64 392, !6, i64 400, !10, i64 408, !6, i64 416, !10, i64 424, !6, i64 432, !10, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !10, i64 480, !10, i64 488, !6, i64 496, !7, i64 504, !9, i64 540, !9, i64 544, !9, i64 548, !9, i64 552}
!32 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 56}
!33 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!34 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !14, i64 72, !9, i64 76, !35, i64 80, !9, i64 112, !9, i64 116, !10, i64 120, !6, i64 128, !10, i64 136, !6, i64 144, !10, i64 152, !6, i64 160, !10, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !10, i64 232, !6, i64 240, !10, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !6, i64 272, !10, i64 280, !9, i64 288, !7, i64 292, !9, i64 296}
!35 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24}
!36 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !9, i64 112, !10, i64 120}
!37 = !{!22, !10, i64 32}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25}
!40 = !{!13, !14, i64 2}
!41 = !{!16, !6, i64 8}
!42 = !{!28, !6, i64 7336}
!43 = !{!22, !6, i64 0}
!44 = !{!28, !10, i64 7344}
!45 = !{!22, !10, i64 8}
!46 = !{!28, !6, i64 7440}
!47 = !{!13, !14, i64 40}
!48 = !{!13, !14, i64 0}
!49 = !{!11, !10, i64 32}
!50 = !{!23, !10, i64 8}
!51 = distinct !{!51, !25}
!52 = !{!13, !14, i64 56}
!53 = !{!9, !9, i64 0}
!54 = !{!23, !10, i64 64}
!55 = !{!23, !9, i64 4}
!56 = !{!28, !6, i64 3192}
!57 = !{!28, !6, i64 48}
!58 = !{!28, !9, i64 40}
!59 = !{!28, !9, i64 3172}
!60 = !{!28, !10, i64 3176}
!61 = !{!28, !9, i64 7436}
!62 = !{!28, !9, i64 408}
!63 = !{!23, !9, i64 56}
!64 = !{!28, !9, i64 68}
!65 = !{!28, !6, i64 2120}
!66 = !{!23, !6, i64 32}
!67 = !{!23, !10, i64 24}
!68 = !{!10, !10, i64 0}
!69 = !{!28, !6, i64 1216}
!70 = !{!28, !9, i64 0}
!71 = !{!28, !6, i64 1224}
!72 = !{!28, !6, i64 2424}
!73 = !{!28, !6, i64 2472}
!74 = !{!75, !6, i64 288}
!75 = !{!"ssl_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 72, !9, i64 80, !10, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !76, i64 120, !7, i64 164, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !33, i64 240, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !10, i64 312, !9, i64 320, !9, i64 324, !9, i64 328, !10, i64 336, !6, i64 344, !9, i64 352, !6, i64 360, !6, i64 368, !9, i64 376, !10, i64 384, !7, i64 392, !6, i64 424, !6, i64 432, !6, i64 440, !9, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !77, i64 536, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !36, i64 792, !78, i64 920, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !9, i64 984, !9, i64 988, !6, i64 992, !6, i64 1000, !10, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !10, i64 1040, !6, i64 1048, !6, i64 1056, !9, i64 1064, !6, i64 1072, !6, i64 1080, !6, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !6, i64 1568, !6, i64 1576, !10, i64 1584, !10, i64 1592, !9, i64 1600, !9, i64 1604, !9, i64 1608, !9, i64 1612}
!76 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!77 = !{!"", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !9, i64 72, !7, i64 76, !10, i64 80, !6, i64 88, !10, i64 96, !6, i64 104, !6, i64 112, !10, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !10, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !7, i64 192}
!78 = !{!"dane_ctx_st", !6, i64 0, !6, i64 8, !7, i64 16, !10, i64 24}
!79 = !{!28, !9, i64 412}
!80 = !{!28, !9, i64 416}
!81 = !{!28, !6, i64 2952}
!82 = !{!28, !6, i64 2328}
!83 = !{!84, !7, i64 0}
!84 = !{!"hm_header_st", !7, i64 0, !10, i64 8, !14, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !85, i64 48}
!85 = !{!"dtls1_retransmit_state", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !14, i64 32}
!86 = !{!28, !9, i64 2544}
!87 = !{!28, !10, i64 3224}
!88 = !{!28, !9, i64 440}
!89 = !{!28, !9, i64 432}
!90 = !{!91, !6, i64 0}
!91 = !{!"", !6, i64 0, !10, i64 8}
!92 = !{!91, !10, i64 8}
!93 = !{!28, !9, i64 420}
!94 = !{!28, !6, i64 8}
!95 = !{!96, !6, i64 120}
!96 = !{!"ssl_method_st", !9, i64 0, !9, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!97 = !{!28, !6, i64 2168}
!98 = !{!28, !6, i64 2192}
!99 = !{!11, !6, i64 0}
!100 = !{!7, !7, i64 0}
!101 = !{!96, !9, i64 0}
!102 = !{!28, !9, i64 2552}
!103 = !{!23, !6, i64 40}
!104 = !{!28, !6, i64 2152}
!105 = !{!28, !10, i64 168}
!106 = !{!96, !6, i64 192}
!107 = !{!108, !6, i64 8}
!108 = !{!"ssl3_enc_method", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !10, i64 72, !6, i64 80, !6, i64 88, !9, i64 96, !6, i64 104, !6, i64 112, !6, i64 120}
!109 = !{!108, !6, i64 0}
!110 = !{!11, !10, i64 24}
!111 = !{!28, !10, i64 7384}
!112 = !{!28, !6, i64 7408}
!113 = !{!28, !9, i64 7392}
!114 = !{!28, !10, i64 7400}
