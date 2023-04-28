; ModuleID = 'ssl/ssl_mcnf.c'
source_filename = "ssl/ssl_mcnf.c"
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
%struct.dtls_record_layer_st = type { i16, i16, %struct.dtls1_bitmap_st, %struct.dtls1_bitmap_st, %struct.record_pqueue_st, %struct.record_pqueue_st, %struct.record_pqueue_st, [8 x i8], [8 x i8] }
%struct.dtls1_bitmap_st = type { i64, [8 x i8] }
%struct.record_pqueue_st = type { i16, %struct.pqueue_st* }
%struct.async_job_st = type opaque
%struct.async_wait_ctx_st = type opaque
%struct.ssl_conf_cmd_st = type opaque
%struct.ssl_conf_ctx_st = type opaque

@.str = private unnamed_addr constant [15 x i8] c"ssl/ssl_mcnf.c\00", align 1
@__func__.ssl_do_config = private unnamed_addr constant [14 x i8] c"ssl_do_config\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"system_default\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"section=%s, cmd=%s, arg=%s\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @SSL_add_ssl_module() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_config(%struct.ssl_st* noundef %s, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @ssl_do_config(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef null, i8* noundef %name, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ssl_do_config(%struct.ssl_st* noundef %s, %struct.ssl_ctx_st* noundef %ctx, i8* noundef %name, i32 noundef %system) unnamed_addr #1 {
entry:
  %name.addr = alloca i8*, align 8
  %idx = alloca i64, align 8
  %cmd_count = alloca i64, align 8
  %cmdstr = alloca i8*, align 8
  %arg = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !4
  %0 = bitcast i64* %idx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i64* %cmd_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %cmp = icmp eq %struct.ssl_st* %s, null
  %cmp1 = icmp eq %struct.ssl_ctx_st* %ctx, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl_do_config, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, i8* noundef null) #6
  br label %err

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %name, null
  %tobool = icmp ne i32 %system, 0
  %or.cond58 = and i1 %cmp2, %tobool
  br i1 %or.cond58, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %name.addr, align 8, !tbaa !4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %2 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %if.then4 ], [ %name, %if.end ]
  %call = call i32 @conf_ssl_name_find(i8* noundef %2, i64* noundef nonnull %idx) #6
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end5
  br i1 %tobool, label %err, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl_do_config, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef 113, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* noundef %2) #6
  br label %err

if.end11:                                         ; preds = %if.end5
  %3 = load i64, i64* %idx, align 8, !tbaa !8
  %call12 = call %struct.ssl_conf_cmd_st* @conf_ssl_get(i64 noundef %3, i8** noundef nonnull %name.addr, i64* noundef nonnull %cmd_count) #6
  %call13 = call %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() #6
  %cmp14 = icmp eq %struct.ssl_conf_ctx_st* %call13, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %if.end11
  %spec.select = select i1 %tobool, i32 2, i32 98
  br i1 %cmp, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end16
  %method = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 1
  %4 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method, align 8, !tbaa !10
  call void @SSL_CONF_CTX_set_ssl(%struct.ssl_conf_ctx_st* noundef nonnull %call13, %struct.ssl_st* noundef nonnull %s) #6
  %ctx22 = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 71
  %5 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** %ctx22, align 8, !tbaa !24
  br label %if.end26

if.else:                                          ; preds = %if.end16
  %method24 = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 1
  %6 = load %struct.ssl_method_st*, %struct.ssl_method_st** %method24, align 8, !tbaa !25
  call void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef nonnull %call13, %struct.ssl_ctx_st* noundef %ctx) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then21
  %meth.0 = phi %struct.ssl_method_st* [ %4, %if.then21 ], [ %6, %if.else ]
  %.pn = phi %struct.ssl_ctx_st* [ %5, %if.then21 ], [ %ctx, %if.else ]
  %libctx.0.in = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %.pn, i64 0, i32 0
  %libctx.0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx.0.in, align 8, !tbaa !30
  %ssl_accept = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth.0, i64 0, i32 6
  %7 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_accept, align 8, !tbaa !31
  %cmp27.not = icmp eq i32 (%struct.ssl_st*)* %7, @ssl_undefined_function
  %or29 = or i32 %spec.select, 8
  %spec.select91 = select i1 %cmp27.not, i32 %spec.select, i32 %or29
  %ssl_connect = getelementptr inbounds %struct.ssl_method_st, %struct.ssl_method_st* %meth.0, i64 0, i32 7
  %8 = load i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)** %ssl_connect, align 8, !tbaa !33
  %cmp31.not = icmp eq i32 (%struct.ssl_st*)* %8, @ssl_undefined_function
  %or33 = or i32 %spec.select91, 4
  %flags.2 = select i1 %cmp31.not, i32 %spec.select91, i32 %or33
  %call35 = call i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef nonnull %call13, i32 noundef %flags.2) #6
  %call36 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %libctx.0) #6
  %9 = load i64, i64* %cmd_count, align 8, !tbaa !8
  %cmp3796.not = icmp eq i64 %9, 0
  br i1 %cmp3796.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end26
  %10 = bitcast i8** %cmdstr to i8*
  %11 = bitcast i8** %arg to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.097 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #5
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5
  call void @conf_ssl_get_cmd(%struct.ssl_conf_cmd_st* noundef %call12, i64 noundef %i.097, i8** noundef nonnull %cmdstr, i8** noundef nonnull %arg) #6
  %12 = load i8*, i8** %cmdstr, align 8, !tbaa !4
  %13 = load i8*, i8** %arg, align 8, !tbaa !4
  %call38 = call i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef nonnull %call13, i8* noundef %12, i8* noundef %13) #6
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  %cmp41 = icmp eq i32 %call38, -2
  %cond = select i1 %cmp41, i32 139, i32 384
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ssl_do_config, i64 0, i64 0)) #6
  %14 = load i8*, i8** %name.addr, align 8, !tbaa !4
  %15 = load i8*, i8** %cmdstr, align 8, !tbaa !4
  %16 = load i8*, i8** %arg, align 8, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 20, i32 noundef %cond, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* noundef %14, i8* noundef %15, i8* noundef %16) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5
  br label %err

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #5
  %inc = add nuw i64 %i.097, 1
  %17 = load i64, i64* %cmd_count, align 8, !tbaa !8
  %cmp37 = icmp ult i64 %inc, %17
  br i1 %cmp37, label %for.body, label %for.end, !llvm.loop !34

for.end:                                          ; preds = %for.inc, %if.end26
  %call44 = call i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef nonnull %call13) #6
  br label %err

err:                                              ; preds = %cleanup, %if.end11, %if.then7, %if.then9, %for.end, %if.then
  %rv.0 = phi i32 [ 0, %if.then ], [ 0, %if.end11 ], [ %call38, %cleanup ], [ %call44, %for.end ], [ 0, %if.then7 ], [ 0, %if.then9 ]
  %cctx.0 = phi %struct.ssl_conf_ctx_st* [ null, %if.then ], [ null, %if.end11 ], [ %call13, %cleanup ], [ %call13, %for.end ], [ null, %if.then7 ], [ null, %if.then9 ]
  %prev_libctx.0 = phi %struct.ossl_lib_ctx_st* [ null, %if.then ], [ null, %if.end11 ], [ %call36, %cleanup ], [ %call36, %for.end ], [ null, %if.then7 ], [ null, %if.then9 ]
  %call45 = call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %prev_libctx.0) #6
  call void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef %cctx.0) #6
  %cmp46 = icmp sgt i32 %rv.0, 0
  %cond47 = zext i1 %cmp46 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %cond47
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_config(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %name) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @ssl_do_config(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, i8* noundef %name, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ssl_ctx_system_config(%struct.ssl_ctx_st* noundef %ctx) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @ssl_do_config(%struct.ssl_st* noundef null, %struct.ssl_ctx_st* noundef %ctx, i8* noundef null, i32 noundef 1) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @conf_ssl_name_find(i8* noundef, i64* noundef) local_unnamed_addr #3

declare %struct.ssl_conf_cmd_st* @conf_ssl_get(i64 noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

declare %struct.ssl_conf_ctx_st* @SSL_CONF_CTX_new() local_unnamed_addr #3

declare void @SSL_CONF_CTX_set_ssl(%struct.ssl_conf_ctx_st* noundef, %struct.ssl_st* noundef) local_unnamed_addr #3

declare void @SSL_CONF_CTX_set_ssl_ctx(%struct.ssl_conf_ctx_st* noundef, %struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i32 @ssl_undefined_function(%struct.ssl_st* noundef) #3

declare i32 @SSL_CONF_CTX_set_flags(%struct.ssl_conf_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare void @conf_ssl_get_cmd(%struct.ssl_conf_cmd_st* noundef, i64 noundef, i8** noundef, i8** noundef) local_unnamed_addr #3

declare i32 @SSL_CONF_cmd(%struct.ssl_conf_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @SSL_CONF_CTX_finish(%struct.ssl_conf_ctx_st* noundef) local_unnamed_addr #3

declare void @SSL_CONF_CTX_free(%struct.ssl_conf_ctx_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"ssl_st", !12, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !5, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !13, i64 72, !6, i64 132, !5, i64 136, !5, i64 144, !9, i64 152, !9, i64 160, !14, i64 168, !5, i64 1208, !5, i64 1216, !5, i64 1224, !12, i64 1232, !5, i64 1240, !17, i64 1248, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !12, i64 1344, !6, i64 1348, !6, i64 1412, !6, i64 1476, !6, i64 1540, !6, i64 1604, !6, i64 1668, !6, i64 1732, !6, i64 1796, !6, i64 1860, !6, i64 1924, !6, i64 1988, !6, i64 2052, !5, i64 2120, !6, i64 2128, !5, i64 2144, !5, i64 2152, !5, i64 2160, !5, i64 2168, !6, i64 2176, !5, i64 2192, !5, i64 2200, !6, i64 2208, !9, i64 2272, !6, i64 2280, !9, i64 2288, !6, i64 2296, !5, i64 2328, !5, i64 2336, !5, i64 2344, !9, i64 2352, !5, i64 2360, !6, i64 2368, !9, i64 2400, !12, i64 2408, !5, i64 2416, !5, i64 2424, !12, i64 2432, !12, i64 2436, !5, i64 2440, !5, i64 2448, !5, i64 2456, !5, i64 2464, !5, i64 2472, !5, i64 2480, !9, i64 2488, !18, i64 2496, !5, i64 2512, !5, i64 2520, !6, i64 2528, !9, i64 2536, !12, i64 2544, !12, i64 2548, !12, i64 2552, !9, i64 2560, !12, i64 2568, !12, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !19, i64 2600, !5, i64 2904, !12, i64 2912, !5, i64 2920, !5, i64 2928, !5, i64 2936, !12, i64 2944, !5, i64 2952, !5, i64 2960, !5, i64 2968, !12, i64 2976, !12, i64 2980, !6, i64 2984, !12, i64 2988, !5, i64 2992, !9, i64 3000, !12, i64 3008, !5, i64 3016, !21, i64 3024, !5, i64 3152, !22, i64 3160, !5, i64 7448, !5, i64 7456, !5, i64 7464, !5, i64 7472, !9, i64 7480, !12, i64 7488, !12, i64 7492, !12, i64 7496, !5, i64 7504, !5, i64 7512, !9, i64 7520, !5, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !5, i64 7560, !5, i64 7568, !5, i64 7576, !5, i64 7584, !5, i64 7592, !9, i64 7600}
!12 = !{!"int", !6, i64 0}
!13 = !{!"ossl_statem_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !6, i64 52, !6, i64 56}
!14 = !{!"", !9, i64 0, !9, i64 8, !6, i64 16, !9, i64 80, !6, i64 88, !6, i64 152, !6, i64 184, !12, i64 216, !12, i64 220, !5, i64 224, !5, i64 232, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !6, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !15, i64 280, !6, i64 840, !9, i64 904, !6, i64 912, !9, i64 976, !12, i64 984, !12, i64 988, !5, i64 992, !9, i64 1000, !5, i64 1008, !9, i64 1016, !12, i64 1024, !6, i64 1028, !6, i64 1029, !16, i64 1030, !5, i64 1032}
!15 = !{!"", !6, i64 0, !9, i64 128, !6, i64 136, !9, i64 264, !9, i64 272, !12, i64 280, !5, i64 288, !5, i64 296, !12, i64 304, !5, i64 312, !9, i64 320, !5, i64 328, !9, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !12, i64 368, !9, i64 376, !5, i64 384, !12, i64 392, !5, i64 400, !9, i64 408, !5, i64 416, !9, i64 424, !5, i64 432, !9, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !9, i64 480, !9, i64 488, !5, i64 496, !6, i64 504, !12, i64 540, !12, i64 544, !12, i64 548, !12, i64 552}
!16 = !{!"short", !6, i64 0}
!17 = !{!"ssl_dane_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !9, i64 56}
!18 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!19 = !{!"", !6, i64 0, !5, i64 32, !5, i64 40, !5, i64 48, !12, i64 56, !5, i64 64, !16, i64 72, !12, i64 76, !20, i64 80, !12, i64 112, !12, i64 116, !9, i64 120, !5, i64 128, !9, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !9, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !9, i64 232, !5, i64 240, !9, i64 248, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !5, i64 272, !9, i64 280, !12, i64 288, !6, i64 292, !12, i64 296}
!20 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24}
!21 = !{!"srp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !12, i64 112, !9, i64 120}
!22 = !{!"record_layer_st", !5, i64 0, !12, i64 8, !12, i64 12, !9, i64 16, !9, i64 24, !23, i64 32, !6, i64 80, !6, i64 1616, !5, i64 4176, !9, i64 4184, !9, i64 4192, !6, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !12, i64 4232, !9, i64 4240, !5, i64 4248, !6, i64 4256, !6, i64 4264, !12, i64 4272, !12, i64 4276, !5, i64 4280}
!23 = !{!"ssl3_buffer_st", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40}
!24 = !{!11, !5, i64 2472}
!25 = !{!26, !5, i64 8}
!26 = !{!"ssl_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !12, i64 80, !9, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !27, i64 120, !6, i64 164, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !18, i64 240, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !9, i64 312, !12, i64 320, !12, i64 324, !12, i64 328, !9, i64 336, !5, i64 344, !12, i64 352, !5, i64 360, !5, i64 368, !12, i64 376, !9, i64 384, !6, i64 392, !5, i64 424, !5, i64 432, !5, i64 440, !12, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !28, i64 536, !5, i64 760, !5, i64 768, !5, i64 776, !5, i64 784, !21, i64 792, !29, i64 920, !5, i64 952, !5, i64 960, !5, i64 968, !5, i64 976, !12, i64 984, !12, i64 988, !5, i64 992, !5, i64 1000, !9, i64 1008, !5, i64 1016, !5, i64 1024, !5, i64 1032, !9, i64 1040, !5, i64 1048, !5, i64 1056, !12, i64 1064, !5, i64 1072, !5, i64 1080, !5, i64 1088, !6, i64 1096, !6, i64 1152, !6, i64 1344, !6, i64 1456, !5, i64 1568, !5, i64 1576, !9, i64 1584, !9, i64 1592, !12, i64 1600, !12, i64 1604, !12, i64 1608, !12, i64 1612}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!28 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !12, i64 72, !6, i64 76, !9, i64 80, !5, i64 88, !9, i64 96, !5, i64 104, !5, i64 112, !9, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !6, i64 192}
!29 = !{!"dane_ctx_st", !5, i64 0, !5, i64 8, !6, i64 16, !9, i64 24}
!30 = !{!26, !5, i64 0}
!31 = !{!32, !5, i64 40}
!32 = !{!"ssl_method_st", !12, i64 0, !12, i64 4, !9, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216}
!33 = !{!32, !5, i64 48}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
