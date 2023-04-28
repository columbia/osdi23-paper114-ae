; ModuleID = 'ssl/statem/extensions_cust.c'
source_filename = "ssl/statem/extensions_cust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.custom_ext_method = type { i16, i32, i32, i32, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i8*)*, i8*, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)*, i8* }
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

@.str = private unnamed_addr constant [29 x i8] c"ssl/statem/extensions_cust.c\00", align 1
@__func__.custom_ext_parse = private unnamed_addr constant [17 x i8] c"custom_ext_parse\00", align 1
@__func__.custom_ext_add = private unnamed_addr constant [15 x i8] c"custom_ext_add\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* nocapture noundef readonly %exts, i32 noundef %role, i32 noundef %ext_type, i64* noundef writeonly %idx) local_unnamed_addr #0 {
entry:
  %meths_count = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %exts, i64 0, i32 1
  %0 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp31.not = icmp eq i64 %0, 0
  br i1 %cmp31.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %meths = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %exts, i64 0, i32 0
  %1 = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths, align 8, !tbaa !10
  %cmp4 = icmp eq i32 %role, 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %meth.034 = phi %struct.custom_ext_method* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %i.032 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %ext_type1 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.034, i64 0, i32 0
  %2 = load i16, i16* %ext_type1, align 8, !tbaa !11
  %conv = zext i16 %2 to i32
  %cmp2 = icmp eq i32 %conv, %ext_type
  br i1 %cmp2, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %role6 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.034, i64 0, i32 1
  %3 = load i32, i32* %role6, align 4, !tbaa !15
  %cmp7 = icmp eq i32 %3, %role
  %cmp11 = icmp eq i32 %3, 2
  %or.cond = or i1 %cmp7, %cmp11
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %cmp13.not = icmp eq i64* %idx, null
  br i1 %cmp13.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.then
  store i64 %i.032, i64* %idx, align 8, !tbaa !16
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %inc = add nuw i64 %i.032, 1
  %incdec.ptr = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.034, i64 1
  %exitcond.not = icmp eq i64 %inc, %0
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !17

cleanup:                                          ; preds = %for.inc, %entry, %if.then, %if.then15
  %retval.0 = phi %struct.custom_ext_method* [ %meth.034, %if.then15 ], [ %meth.034, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.custom_ext_method* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @custom_ext_init(%struct.custom_ext_methods* nocapture noundef readonly %exts) local_unnamed_addr #0 {
entry:
  %meths_count = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %exts, i64 0, i32 1
  %0 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp6.not = icmp eq i64 %0, 0
  br i1 %cmp6.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %meths = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %exts, i64 0, i32 0
  %1 = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths, align 8, !tbaa !10
  %2 = add i64 %0, -1
  %xtraiter = and i64 %0, 7
  %3 = icmp ult i64 %2, 7
  br i1 %3, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %0, -8
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %meth.08 = phi %struct.custom_ext_method* [ %1, %for.body.preheader.new ], [ %incdec.ptr.7, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.7, %for.body ]
  %ext_flags = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 0, i32 3
  store i32 0, i32* %ext_flags, align 4, !tbaa !19
  %ext_flags.1 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 1, i32 3
  store i32 0, i32* %ext_flags.1, align 4, !tbaa !19
  %ext_flags.2 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 2, i32 3
  store i32 0, i32* %ext_flags.2, align 4, !tbaa !19
  %ext_flags.3 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 3, i32 3
  store i32 0, i32* %ext_flags.3, align 4, !tbaa !19
  %ext_flags.4 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 4, i32 3
  store i32 0, i32* %ext_flags.4, align 4, !tbaa !19
  %ext_flags.5 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 5, i32 3
  store i32 0, i32* %ext_flags.5, align 4, !tbaa !19
  %ext_flags.6 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 6, i32 3
  store i32 0, i32* %ext_flags.6, align 4, !tbaa !19
  %ext_flags.7 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 7, i32 3
  store i32 0, i32* %ext_flags.7, align 4, !tbaa !19
  %incdec.ptr.7 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08, i64 8
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !20

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %meth.08.unr = phi %struct.custom_ext_method* [ %1, %for.body.preheader ], [ %incdec.ptr.7, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %meth.08.epil = phi %struct.custom_ext_method* [ %incdec.ptr.epil, %for.body.epil ], [ %meth.08.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %ext_flags.epil = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08.epil, i64 0, i32 3
  store i32 0, i32* %ext_flags.epil, align 4, !tbaa !19
  %incdec.ptr.epil = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.08.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !21

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @custom_ext_parse(%struct.ssl_st* noundef %s, i32 noundef %context, i32 noundef %ext_type, i8* noundef %ext_data, i64 noundef %ext_size, %struct.x509_st* noundef %x, i64 noundef %chainidx) local_unnamed_addr #2 {
entry:
  %al = alloca i32, align 4
  %0 = bitcast i32* %al to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %1 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !23
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %1, i64 0, i32 16
  %and = and i32 %context, 384
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %server = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 7
  %2 = load i32, i32* %server, align 8, !tbaa !35
  %tobool.not = icmp ne i32 %2, 0
  %cond = zext i1 %tobool.not to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %role.0 = phi i32 [ %cond, %if.then ], [ 2, %entry ]
  %call = tail call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef nonnull %custext, i32 noundef %role.0, i32 noundef %ext_type, i64* noundef null) #7
  %tobool1.not = icmp eq %struct.custom_ext_method* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %context4 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 2
  %3 = load i32, i32* %context4, align 8, !tbaa !36
  %call5 = tail call i32 @extension_is_relevant(%struct.ssl_st* noundef nonnull %s, i32 noundef %3, i32 noundef %context) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %and9 = and i32 %context, 1792
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end8
  %ext_flags = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 3
  %4 = load i32, i32* %ext_flags, align 4, !tbaa !19
  %and12 = and i32 %4, 2
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.custom_ext_parse, i64 0, i64 0)) #8
  tail call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef 110, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

if.end16:                                         ; preds = %if.then11, %if.end8
  %and17 = and i32 %context, 128
  %cmp18.not = icmp eq i32 %and17, 0
  br i1 %cmp18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  %ext_flags20 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 3
  %5 = load i32, i32* %ext_flags20, align 4, !tbaa !19
  %or = or i32 %5, 1
  store i32 %or, i32* %ext_flags20, align 4, !tbaa !19
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %parse_cb = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 7
  %6 = load i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)*, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)** %parse_cb, align 8, !tbaa !37
  %tobool22.not = icmp eq i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* %6, null
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end21
  %parse_arg = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 8
  %7 = load i8*, i8** %parse_arg, align 8, !tbaa !38
  %call26 = call i32 %6(%struct.ssl_st* noundef nonnull %s, i32 noundef %ext_type, i32 noundef %context, i8* noundef %ext_data, i64 noundef %ext_size, %struct.x509_st* noundef %x, i64 noundef %chainidx, i32* noundef nonnull %al, i8* noundef %7) #8
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %if.then28, label %cleanup

if.then28:                                        ; preds = %if.end24
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.custom_ext_parse, i64 0, i64 0)) #8
  %8 = load i32, i32* %al, align 4, !tbaa !39
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef nonnull %s, i32 noundef %8, i32 noundef 110, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21, %if.end3, %if.end, %if.then28, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then28 ], [ 1, %if.end ], [ 1, %if.end3 ], [ 1, %if.end21 ], [ 1, %if.end24 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare i32 @extension_is_relevant(%struct.ssl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ossl_statem_fatal(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @custom_ext_add(%struct.ssl_st* noundef %s, i32 noundef %context, %struct.wpacket_st* noundef %pkt, %struct.x509_st* noundef %x, i64 noundef %chainidx, i32 noundef %maxversion) local_unnamed_addr #2 {
entry:
  %al = alloca i32, align 4
  %out = alloca i8*, align 8
  %outlen = alloca i64, align 8
  %cert = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %s, i64 0, i32 49
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !23
  %1 = bitcast i32* %al to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #6
  %meths_count = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 16, i32 1
  %2 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp125.not = icmp eq i64 %2, 0
  br i1 %cmp125.not, label %cleanup71, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %3 = bitcast i8** %out to i8*
  %4 = bitcast i64* %outlen to i8*
  %meths = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 16, i32 0
  %and = and i32 %context, 7936
  %cmp2.not = icmp eq i32 %and, 0
  %and9 = and i32 %context, 128
  %cmp10 = icmp eq i32 %and9, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0126 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  store i8* null, i8** %out, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #6
  store i64 0, i64* %outlen, align 8, !tbaa !16
  %5 = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126
  %context1 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 2
  %6 = load i32, i32* %context1, align 8, !tbaa !36
  %call = call i32 @should_add_extension(%struct.ssl_st* noundef %s, i32 noundef %6, i32 noundef %context, i32 noundef %maxversion) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup67.thread, label %if.end

if.end:                                           ; preds = %for.body
  br i1 %cmp2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %ext_flags = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 3
  %7 = load i32, i32* %ext_flags, align 4, !tbaa !19
  %and4 = and i32 %7, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %cleanup67.thread, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %add_cb = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 4
  %8 = load i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)** %add_cb, align 8, !tbaa !41
  %cmp11 = icmp eq i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* %8, null
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end8
  br i1 %cmp11, label %cleanup67.thread, label %if.then16

if.end13:                                         ; preds = %if.end8
  br i1 %cmp11, label %if.end27, label %if.then16

if.then16:                                        ; preds = %land.lhs.true, %if.end13
  %ext_type = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %add.ptr, i64 0, i32 0
  %9 = load i16, i16* %ext_type, align 8, !tbaa !11
  %conv = zext i16 %9 to i32
  %add_arg = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 6
  %10 = load i8*, i8** %add_arg, align 8, !tbaa !42
  %call18 = call i32 %8(%struct.ssl_st* noundef %s, i32 noundef %conv, i32 noundef %context, i8** noundef nonnull %out, i64* noundef nonnull %outlen, %struct.x509_st* noundef %x, i64 noundef %chainidx, i32* noundef nonnull %al, i8* noundef %10) #8
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then16
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.custom_ext_add, i64 0, i64 0)) #8
  %11 = load i32, i32* %al, align 4, !tbaa !39
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef %11, i32 noundef 234, i8* noundef null) #8
  br label %cleanup67.thread118

cleanup:                                          ; preds = %if.then16
  %cmp23.not = icmp eq i32 %call18, 0
  br i1 %cmp23.not, label %cleanup67, label %if.end27

if.end27:                                         ; preds = %cleanup, %if.end13
  %ext_type28 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %add.ptr, i64 0, i32 0
  %12 = load i16, i16* %ext_type28, align 8, !tbaa !11
  %conv29 = zext i16 %12 to i32
  %call30 = call i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef %pkt, i32 noundef %conv29, i64 noundef 2) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end27
  %call32 = call i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef %pkt, i64 noundef 2) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then43, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false
  %13 = load i64, i64* %outlen, align 8, !tbaa !16
  %cmp35.not = icmp eq i64 %13, 0
  br i1 %cmp35.not, label %lor.lhs.false40, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %lor.lhs.false34
  %14 = load i8*, i8** %out, align 8, !tbaa !40
  %call38 = call i32 @WPACKET_memcpy(%struct.wpacket_st* noundef %pkt, i8* noundef %14, i64 noundef %13) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then43, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %land.lhs.true37, %lor.lhs.false34
  %call41 = call i32 @WPACKET_close(%struct.wpacket_st* noundef %pkt) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %lor.lhs.false40, %land.lhs.true37, %lor.lhs.false, %if.end27
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.custom_ext_add, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup67.thread118

if.end44:                                         ; preds = %lor.lhs.false40
  br i1 %cmp10, label %if.end58, label %if.then48

if.then48:                                        ; preds = %if.end44
  %ext_flags49 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 3
  %15 = load i32, i32* %ext_flags49, align 4, !tbaa !19
  %and50 = and i32 %15, 2
  %cmp51 = icmp eq i32 %and50, 0
  br i1 %cmp51, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.then48
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.custom_ext_add, i64 0, i64 0)) #8
  call void (%struct.ssl_st*, i32, i32, i8*, ...) @ossl_statem_fatal(%struct.ssl_st* noundef %s, i32 noundef 80, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup67.thread118

if.end56:                                         ; preds = %if.then48
  %or = or i32 %15, 2
  store i32 %or, i32* %ext_flags49, align 4, !tbaa !19
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %if.end44
  %free_cb = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 5
  %16 = load void (%struct.ssl_st*, i32, i32, i8*, i8*)*, void (%struct.ssl_st*, i32, i32, i8*, i8*)** %free_cb, align 8, !tbaa !43
  %cmp59.not = icmp eq void (%struct.ssl_st*, i32, i32, i8*, i8*)* %16, null
  br i1 %cmp59.not, label %cleanup67.thread, label %if.then61

if.then61:                                        ; preds = %if.end58
  %17 = load i16, i16* %ext_type28, align 8, !tbaa !11
  %conv64 = zext i16 %17 to i32
  %18 = load i8*, i8** %out, align 8, !tbaa !40
  %add_arg65 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %i.0126, i32 6
  %19 = load i8*, i8** %add_arg65, align 8, !tbaa !42
  call void %16(%struct.ssl_st* noundef %s, i32 noundef %conv64, i32 noundef %context, i8* noundef %18, i8* noundef %19) #8
  br label %cleanup67.thread

cleanup67.thread:                                 ; preds = %for.body, %if.then3, %land.lhs.true, %if.then61, %if.end58
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  br label %for.inc

cleanup67.thread118:                              ; preds = %if.then55, %if.then43, %cleanup.thread
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  br label %cleanup71

cleanup67:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  br label %for.inc

for.inc:                                          ; preds = %cleanup67, %cleanup67.thread
  %inc = add nuw i64 %i.0126, 1
  %20 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp = icmp ult i64 %inc, %20
  br i1 %cmp, label %for.body, label %cleanup71, !llvm.loop !44

cleanup71:                                        ; preds = %for.inc, %entry, %cleanup67.thread118
  %retval.4 = phi i32 [ 0, %cleanup67.thread118 ], [ 1, %entry ], [ 1, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #6
  ret i32 %retval.4
}

declare i32 @should_add_extension(%struct.ssl_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WPACKET_put_bytes__(%struct.wpacket_st* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_start_sub_packet_len__(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_memcpy(%struct.wpacket_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_close(%struct.wpacket_st* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @custom_exts_copy_flags(%struct.custom_ext_methods* nocapture noundef readonly %dst, %struct.custom_ext_methods* nocapture noundef readonly %src) local_unnamed_addr #0 {
entry:
  %meths_count = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %src, i64 0, i32 1
  %0 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp15.not = icmp eq i64 %0, 0
  br i1 %cmp15.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %meths = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %src, i64 0, i32 0
  %1 = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths, align 8, !tbaa !10
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %i.018 = phi i64 [ %inc, %cleanup ], [ 0, %for.body.preheader ]
  %methsrc.016 = phi %struct.custom_ext_method* [ %incdec.ptr, %cleanup ], [ %1, %for.body.preheader ]
  %role = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %methsrc.016, i64 0, i32 1
  %2 = load i32, i32* %role, align 4, !tbaa !15
  %ext_type = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %methsrc.016, i64 0, i32 0
  %3 = load i16, i16* %ext_type, align 8, !tbaa !11
  %conv = zext i16 %3 to i32
  %call = tail call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef %dst, i32 noundef %2, i32 noundef %conv, i64* noundef null) #7
  %cmp1 = icmp eq %struct.custom_ext_method* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %ext_flags = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %methsrc.016, i64 0, i32 3
  %4 = load i32, i32* %ext_flags, align 4, !tbaa !19
  %ext_flags3 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %call, i64 0, i32 3
  store i32 %4, i32* %ext_flags3, align 4, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %inc = add nuw i64 %i.018, 1
  %incdec.ptr = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %methsrc.016, i64 1
  %5 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp = icmp ult i64 %inc, %5
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !45

for.end:                                          ; preds = %cleanup, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @custom_exts_copy(%struct.custom_ext_methods* nocapture noundef %dst, %struct.custom_ext_methods* nocapture noundef readonly %src) local_unnamed_addr #2 {
entry:
  %meths_count = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %src, i64 0, i32 1
  %0 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %cleanup35, label %if.then

if.then:                                          ; preds = %entry
  %meths = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %src, i64 0, i32 0
  %1 = bitcast %struct.custom_ext_methods* %src to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  %mul = mul i64 %0, 56
  %call = tail call i8* @CRYPTO_memdup(i8* noundef %2, i64 noundef %mul, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 275) #8
  %meths2 = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %dst, i64 0, i32 0
  %3 = bitcast %struct.custom_ext_methods* %dst to i8**
  store i8* %call, i8** %3, align 8, !tbaa !10
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %cleanup35, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load i64, i64* %meths_count, align 8, !tbaa !4
  %meths_count7 = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %dst, i64 0, i32 1
  store i64 %4, i64* %meths_count7, align 8, !tbaa !4
  %5 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp963.not = icmp eq i64 %5, 0
  br i1 %cmp963.not, label %cleanup35, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %6 = bitcast i8* %call to %struct.custom_ext_method*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup.for.body_crit_edge
  %7 = phi i64 [ %14, %cleanup.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %8 = phi %struct.custom_ext_method* [ %.pre, %cleanup.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %i.065 = phi i64 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %err.064 = phi i32 [ %err.2, %cleanup.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths, align 8, !tbaa !10
  %add_cb = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %9, i64 %i.065, i32 4
  %10 = load i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)** %add_cb, align 8, !tbaa !41
  %cmp13.not = icmp eq i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* %10, @custom_ext_add_old_cb_wrap
  br i1 %cmp13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %for.body
  %tobool.not = icmp eq i32 %err.064, 0
  br i1 %tobool.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end15
  %add_arg = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %8, i64 %i.065, i32 6
  store i8* null, i8** %add_arg, align 8, !tbaa !42
  %parse_arg = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %8, i64 %i.065, i32 8
  store i8* null, i8** %parse_arg, align 8, !tbaa !38
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %add_arg18 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %9, i64 %i.065, i32 6
  %11 = load i8*, i8** %add_arg18, align 8, !tbaa !42
  %call19 = tail call i8* @CRYPTO_memdup(i8* noundef %11, i64 noundef 24, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 299) #8
  %add_arg20 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %8, i64 %i.065, i32 6
  store i8* %call19, i8** %add_arg20, align 8, !tbaa !42
  %parse_arg21 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %9, i64 %i.065, i32 8
  %12 = load i8*, i8** %parse_arg21, align 8, !tbaa !38
  %call22 = tail call i8* @CRYPTO_memdup(i8* noundef %12, i64 noundef 16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 301) #8
  %parse_arg23 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %8, i64 %i.065, i32 8
  store i8* %call22, i8** %parse_arg23, align 8, !tbaa !38
  %13 = load i8*, i8** %add_arg20, align 8, !tbaa !42
  %cmp25 = icmp eq i8* %13, null
  %cmp27 = icmp eq i8* %call22, null
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  %err.1 = zext i1 %or.cond to i32
  %.pre67 = load i64, i64* %meths_count, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end17, %if.then16
  %14 = phi i64 [ %7, %if.then16 ], [ %.pre67, %if.end17 ], [ %7, %for.body ]
  %err.2 = phi i32 [ 1, %if.then16 ], [ %err.1, %if.end17 ], [ %err.064, %for.body ]
  %inc = add nuw i64 %i.065, 1
  %cmp9 = icmp ult i64 %inc, %14
  br i1 %cmp9, label %cleanup.for.body_crit_edge, label %if.end31, !llvm.loop !46

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  %.pre = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths2, align 8, !tbaa !10
  br label %for.body

if.end31:                                         ; preds = %cleanup
  %tobool32.not = icmp eq i32 %err.2, 0
  br i1 %tobool32.not, label %cleanup35, label %if.then33

if.then33:                                        ; preds = %if.end31
  tail call void @custom_exts_free(%struct.custom_ext_methods* noundef nonnull %dst) #7
  br label %cleanup35

cleanup35:                                        ; preds = %if.end, %entry, %if.end31, %if.then, %if.then33
  %retval.0 = phi i32 [ 0, %if.then33 ], [ 0, %if.then ], [ 1, %if.end31 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_ext_add_old_cb_wrap(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i32 noundef %context, i8** noundef %out, i64* noundef %outlen, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx, i32* noundef %al, i8* nocapture noundef readonly %add_arg) #2 {
entry:
  %add_cb = getelementptr inbounds i8, i8* %add_arg, i64 8
  %0 = bitcast i8* %add_cb to i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)**
  %1 = load i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)*, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)** %0, align 8, !tbaa !47
  %cmp = icmp eq i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add_arg2 = bitcast i8* %add_arg to i8**
  %2 = load i8*, i8** %add_arg2, align 8, !tbaa !49
  %call = tail call i32 %1(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i8** noundef %out, i64* noundef %outlen, i32* noundef %al, i8* noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @custom_exts_free(%struct.custom_ext_methods* nocapture noundef readonly %exts) local_unnamed_addr #2 {
entry:
  %meths = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %exts, i64 0, i32 0
  %0 = load %struct.custom_ext_method*, %struct.custom_ext_method** %meths, align 8, !tbaa !10
  %meths_count = getelementptr inbounds %struct.custom_ext_methods, %struct.custom_ext_methods* %exts, i64 0, i32 1
  %1 = load i64, i64* %meths_count, align 8, !tbaa !4
  %cmp11.not = icmp eq i64 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  %2 = bitcast %struct.custom_ext_method* %0 to i8*
  br label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %3 = phi i64 [ %7, %for.inc ], [ %1, %entry ]
  %meth.013 = phi %struct.custom_ext_method* [ %incdec.ptr, %for.inc ], [ %0, %entry ]
  %i.012 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %add_cb = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.013, i64 0, i32 4
  %4 = load i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)*, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)** %add_cb, align 8, !tbaa !41
  %cmp1.not = icmp eq i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* %4, @custom_ext_add_old_cb_wrap
  br i1 %cmp1.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %add_arg = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.013, i64 0, i32 6
  %5 = load i8*, i8** %add_arg, align 8, !tbaa !42
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 326) #8
  %parse_arg = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.013, i64 0, i32 8
  %6 = load i8*, i8** %parse_arg, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 327) #8
  %.pre = load i64, i64* %meths_count, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %7 = phi i64 [ %3, %for.body ], [ %.pre, %if.end ]
  %inc = add nuw i64 %i.012, 1
  %incdec.ptr = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %meth.013, i64 1
  %cmp = icmp ult i64 %inc, %7
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !50

for.end.loopexit:                                 ; preds = %for.inc
  %.phi.trans.insert = bitcast %struct.custom_ext_methods* %exts to i8**
  %.pre15 = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !10
  br label %for.end

for.end:                                          ; preds = %entry.for.end_crit_edge, %for.end.loopexit
  %8 = phi i8* [ %.pre15, %for.end.loopexit ], [ %2, %entry.for.end_crit_edge ]
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 329) #8
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @SSL_CTX_has_client_custom_ext(%struct.ssl_ctx_st* nocapture noundef readonly %ctx, i32 noundef %ext_type) local_unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 16
  %call = tail call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef nonnull %custext, i32 noundef 0, i32 noundef %ext_type, i64* noundef null) #7
  %cmp = icmp ne %struct.custom_ext_method* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_add_client_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %ext_type, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @add_old_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 0, i32 noundef %ext_type, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_old_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %role, i32 noundef %ext_type, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) unnamed_addr #2 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 413) #8
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 415) #8
  %cmp = icmp eq i8* %call, null
  %cmp2 = icmp eq i8* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 419) #8
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 420) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add_arg3 = bitcast i8* %call to i8**
  store i8* %add_arg, i8** %add_arg3, align 8, !tbaa !49
  %add_cb4 = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %add_cb4 to i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)**
  store i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* %add_cb, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)** %0, align 8, !tbaa !47
  %free_cb5 = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %free_cb5 to void (%struct.ssl_st*, i32, i8*, i8*)**
  store void (%struct.ssl_st*, i32, i8*, i8*)* %free_cb, void (%struct.ssl_st*, i32, i8*, i8*)** %1, align 8, !tbaa !56
  %parse_arg6 = bitcast i8* %call1 to i8**
  store i8* %parse_arg, i8** %parse_arg6, align 8, !tbaa !57
  %parse_cb7 = getelementptr inbounds i8, i8* %call1, i64 8
  %2 = bitcast i8* %parse_cb7 to i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)**
  store i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* %parse_cb, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)** %2, align 8, !tbaa !59
  %call8 = tail call fastcc i32 @add_custom_ext_intern(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %role, i32 noundef %ext_type, i32 noundef 464, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* noundef nonnull @custom_ext_add_old_cb_wrap, void (%struct.ssl_st*, i32, i32, i8*, i8*)* noundef nonnull @custom_ext_free_old_cb_wrap, i8* noundef nonnull %call, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* noundef nonnull @custom_ext_parse_old_cb_wrap, i8* noundef nonnull %call1) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 439) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 440) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_add_server_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %ext_type, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @add_old_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 1, i32 noundef %ext_type, i32 (%struct.ssl_st*, i32, i8**, i64*, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SSL_CTX_add_custom_ext(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %ext_type, i32 noundef %context, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @add_custom_ext_intern(%struct.ssl_ctx_st* noundef %ctx, i32 noundef 2, i32 noundef %ext_type, i32 noundef %context, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_custom_ext_intern(%struct.ssl_ctx_st* noundef %ctx, i32 noundef %role, i32 noundef %ext_type, i32 noundef %context, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* noundef %add_cb, void (%struct.ssl_st*, i32, i32, i8*, i8*)* noundef %free_cb, i8* noundef %add_arg, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* noundef %parse_cb, i8* noundef %parse_arg) unnamed_addr #2 {
entry:
  %cert = getelementptr inbounds %struct.ssl_ctx_st, %struct.ssl_ctx_st* %ctx, i64 0, i32 39
  %0 = load %struct.cert_st*, %struct.cert_st** %cert, align 8, !tbaa !51
  %custext = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 16
  %cmp = icmp eq i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* %add_cb, null
  %cmp1 = icmp ne void (%struct.ssl_st*, i32, i32, i8*, i8*)* %free_cb, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ne i32 %ext_type, 18
  %and = and i32 %context, 128
  %cmp4.not = icmp eq i32 %and, 0
  %or.cond69 = or i1 %cmp2, %cmp4.not
  br i1 %or.cond69, label %if.end7, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %call = tail call i32 @SSL_CTX_ct_is_enabled(%struct.ssl_ctx_st* noundef nonnull %ctx) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %land.lhs.true5, %if.end
  %call8 = tail call i32 @SSL_extension_supported(i32 noundef %ext_type) #7
  %tobool9 = icmp ne i32 %call8, 0
  %or.cond40 = and i1 %cmp2, %tobool9
  %cmp14 = icmp ugt i32 %ext_type, 65535
  %or.cond70 = or i1 %cmp14, %or.cond40
  br i1 %or.cond70, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end7
  %call17 = tail call %struct.custom_ext_method* @custom_ext_find(%struct.custom_ext_methods* noundef nonnull %custext, i32 noundef %role, i32 noundef %ext_type, i64* noundef null) #7
  %tobool18.not = icmp eq %struct.custom_ext_method* %call17, null
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end16
  %1 = bitcast %struct.custom_ext_methods* %custext to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !10
  %meths_count = getelementptr inbounds %struct.cert_st, %struct.cert_st* %0, i64 0, i32 16, i32 1
  %3 = load i64, i64* %meths_count, align 8, !tbaa !4
  %4 = mul i64 %3, 56
  %mul = add i64 %4, 56
  %call21 = tail call i8* @CRYPTO_realloc(i8* noundef %2, i64 noundef %mul, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 385) #8
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %5 = bitcast i8* %call21 to %struct.custom_ext_method*
  store i8* %call21, i8** %1, align 8, !tbaa !10
  %6 = load i64, i64* %meths_count, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6
  %7 = bitcast %struct.custom_ext_method* %add.ptr to i8*
  %call28 = tail call i8* @memset(i8* noundef nonnull %7, i32 noundef 0, i64 noundef 56) #8
  %role29 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 1
  store i32 %role, i32* %role29, align 4, !tbaa !15
  %context30 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 2
  store i32 %context, i32* %context30, align 8, !tbaa !36
  %parse_cb31 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 7
  store i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)* %parse_cb, i32 (%struct.ssl_st*, i32, i32, i8*, i64, %struct.x509_st*, i64, i32*, i8*)** %parse_cb31, align 8, !tbaa !37
  %add_cb32 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 4
  store i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)* %add_cb, i32 (%struct.ssl_st*, i32, i32, i8**, i64*, %struct.x509_st*, i64, i32*, i8*)** %add_cb32, align 8, !tbaa !41
  %free_cb33 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 5
  store void (%struct.ssl_st*, i32, i32, i8*, i8*)* %free_cb, void (%struct.ssl_st*, i32, i32, i8*, i8*)** %free_cb33, align 8, !tbaa !43
  %conv = trunc i32 %ext_type to i16
  %ext_type34 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %add.ptr, i64 0, i32 0
  store i16 %conv, i16* %ext_type34, align 8, !tbaa !11
  %add_arg35 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 6
  store i8* %add_arg, i8** %add_arg35, align 8, !tbaa !42
  %parse_arg36 = getelementptr inbounds %struct.custom_ext_method, %struct.custom_ext_method* %5, i64 %6, i32 8
  store i8* %parse_arg, i8** %parse_arg36, align 8, !tbaa !38
  %8 = load i64, i64* %meths_count, align 8, !tbaa !4
  %inc = add i64 %8, 1
  store i64 %inc, i64* %meths_count, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16, %if.end7, %land.lhs.true5, %entry, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %entry ], [ 0, %land.lhs.true5 ], [ 0, %if.end7 ], [ 0, %if.end16 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @SSL_extension_supported(i32 noundef %ext_type) local_unnamed_addr #4 {
entry:
  switch i32 %ext_type, label %sw.default [
    i32 16, label %return
    i32 11, label %return
    i32 10, label %return
    i32 51, label %return
    i32 13172, label %return
    i32 21, label %return
    i32 65281, label %return
    i32 1, label %return
    i32 0, label %return
    i32 35, label %return
    i32 13, label %return
    i32 12, label %return
    i32 5, label %return
    i32 18, label %return
    i32 14, label %return
    i32 22, label %return
    i32 43, label %return
    i32 23, label %return
    i32 45, label %return
    i32 44, label %return
    i32 42, label %return
    i32 47, label %return
    i32 41, label %return
    i32 49, label %return
  ]

sw.default:                                       ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @custom_ext_free_old_cb_wrap(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i32 noundef %context, i8* noundef %out, i8* nocapture noundef readonly %add_arg) #2 {
entry:
  %free_cb = getelementptr inbounds i8, i8* %add_arg, i64 16
  %0 = bitcast i8* %free_cb to void (%struct.ssl_st*, i32, i8*, i8*)**
  %1 = load void (%struct.ssl_st*, i32, i8*, i8*)*, void (%struct.ssl_st*, i32, i8*, i8*)** %0, align 8, !tbaa !56
  %cmp = icmp eq void (%struct.ssl_st*, i32, i8*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add_arg2 = bitcast i8* %add_arg to i8**
  %2 = load i8*, i8** %add_arg2, align 8, !tbaa !49
  tail call void %1(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i8* noundef %out, i8* noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_ext_parse_old_cb_wrap(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i32 noundef %context, i8* noundef %in, i64 noundef %inlen, %struct.x509_st* nocapture noundef readnone %x, i64 noundef %chainidx, i32* noundef %al, i8* nocapture noundef readonly %parse_arg) #2 {
entry:
  %parse_cb = getelementptr inbounds i8, i8* %parse_arg, i64 8
  %0 = bitcast i8* %parse_cb to i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)**
  %1 = load i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)** %0, align 8, !tbaa !59
  %cmp = icmp eq i32 (%struct.ssl_st*, i32, i8*, i64, i32*, i8*)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parse_arg2 = bitcast i8* %parse_arg to i8**
  %2 = load i8*, i8** %parse_arg2, align 8, !tbaa !57
  %call = tail call i32 %1(%struct.ssl_st* noundef %s, i32 noundef %ext_type, i8* noundef %in, i64 noundef %inlen, i32* noundef %al, i8* noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @SSL_CTX_ct_is_enabled(%struct.ssl_ctx_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !7, i64 4, !14, i64 8, !14, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!13 = !{!"short", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!12, !7, i64 4}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !14, i64 12}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!24, !6, i64 2200}
!24 = !{!"ssl_st", !14, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !14, i64 40, !6, i64 48, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !25, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !9, i64 152, !9, i64 160, !26, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !14, i64 1232, !6, i64 1240, !28, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !14, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !9, i64 2272, !7, i64 2280, !9, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !9, i64 2352, !6, i64 2360, !7, i64 2368, !9, i64 2400, !14, i64 2408, !6, i64 2416, !6, i64 2424, !14, i64 2432, !14, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !9, i64 2488, !29, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !9, i64 2536, !14, i64 2544, !14, i64 2548, !14, i64 2552, !9, i64 2560, !14, i64 2568, !14, i64 2572, !9, i64 2576, !9, i64 2584, !9, i64 2592, !30, i64 2600, !6, i64 2904, !14, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !14, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !14, i64 2976, !14, i64 2980, !7, i64 2984, !14, i64 2988, !6, i64 2992, !9, i64 3000, !14, i64 3008, !6, i64 3016, !32, i64 3024, !6, i64 3152, !33, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !9, i64 7480, !14, i64 7488, !14, i64 7492, !14, i64 7496, !6, i64 7504, !6, i64 7512, !9, i64 7520, !6, i64 7528, !9, i64 7536, !9, i64 7544, !9, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !9, i64 7600}
!25 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !7, i64 52, !7, i64 56}
!26 = !{!"", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !14, i64 216, !14, i64 220, !6, i64 224, !6, i64 232, !14, i64 240, !14, i64 244, !14, i64 248, !14, i64 252, !7, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !27, i64 280, !7, i64 840, !9, i64 904, !7, i64 912, !9, i64 976, !14, i64 984, !14, i64 988, !6, i64 992, !9, i64 1000, !6, i64 1008, !9, i64 1016, !14, i64 1024, !7, i64 1028, !7, i64 1029, !13, i64 1030, !6, i64 1032}
!27 = !{!"", !7, i64 0, !9, i64 128, !7, i64 136, !9, i64 264, !9, i64 272, !14, i64 280, !6, i64 288, !6, i64 296, !14, i64 304, !6, i64 312, !9, i64 320, !6, i64 328, !9, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !14, i64 368, !9, i64 376, !6, i64 384, !14, i64 392, !6, i64 400, !9, i64 408, !6, i64 416, !9, i64 424, !6, i64 432, !9, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !9, i64 480, !9, i64 488, !6, i64 496, !7, i64 504, !14, i64 540, !14, i64 544, !14, i64 548, !14, i64 552}
!28 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !9, i64 56}
!29 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!30 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 56, !6, i64 64, !13, i64 72, !14, i64 76, !31, i64 80, !14, i64 112, !14, i64 116, !9, i64 120, !6, i64 128, !9, i64 136, !6, i64 144, !9, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !9, i64 232, !6, i64 240, !9, i64 248, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !6, i64 272, !9, i64 280, !14, i64 288, !7, i64 292, !14, i64 296}
!31 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24}
!32 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !14, i64 112, !9, i64 120}
!33 = !{!"record_layer_st", !6, i64 0, !14, i64 8, !14, i64 12, !9, i64 16, !9, i64 24, !34, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !9, i64 4184, !9, i64 4192, !7, i64 4200, !9, i64 4208, !9, i64 4216, !9, i64 4224, !14, i64 4232, !9, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !14, i64 4272, !14, i64 4276, !6, i64 4280}
!34 = !{!"ssl3_buffer_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !14, i64 40}
!35 = !{!24, !14, i64 56}
!36 = !{!12, !14, i64 8}
!37 = !{!12, !6, i64 40}
!38 = !{!12, !6, i64 48}
!39 = !{!14, !14, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!12, !6, i64 16}
!42 = !{!12, !6, i64 32}
!43 = !{!12, !6, i64 24}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = !{!48, !6, i64 8}
!48 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!49 = !{!48, !6, i64 0}
!50 = distinct !{!50, !18}
!51 = !{!52, !6, i64 344}
!52 = !{!"ssl_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !6, i64 64, !6, i64 72, !14, i64 80, !9, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !53, i64 120, !7, i64 164, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !29, i64 240, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !9, i64 312, !14, i64 320, !14, i64 324, !14, i64 328, !9, i64 336, !6, i64 344, !14, i64 352, !6, i64 360, !6, i64 368, !14, i64 376, !9, i64 384, !7, i64 392, !6, i64 424, !6, i64 432, !6, i64 440, !14, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !9, i64 480, !9, i64 488, !9, i64 496, !9, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !54, i64 536, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !32, i64 792, !55, i64 920, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !14, i64 984, !14, i64 988, !6, i64 992, !6, i64 1000, !9, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !9, i64 1040, !6, i64 1048, !6, i64 1056, !14, i64 1064, !6, i64 1072, !6, i64 1080, !6, i64 1088, !7, i64 1096, !7, i64 1152, !7, i64 1344, !7, i64 1456, !6, i64 1568, !6, i64 1576, !9, i64 1584, !9, i64 1592, !14, i64 1600, !14, i64 1604, !14, i64 1608, !14, i64 1612}
!53 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!54 = !{!"", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !14, i64 72, !7, i64 76, !9, i64 80, !6, i64 88, !9, i64 96, !6, i64 104, !6, i64 112, !9, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !9, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !7, i64 192}
!55 = !{!"dane_ctx_st", !6, i64 0, !6, i64 8, !7, i64 16, !9, i64 24}
!56 = !{!48, !6, i64 16}
!57 = !{!58, !6, i64 0}
!58 = !{!"", !6, i64 0, !6, i64 8}
!59 = !{!58, !6, i64 8}
