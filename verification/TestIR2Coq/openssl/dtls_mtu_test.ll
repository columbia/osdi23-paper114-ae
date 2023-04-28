; ModuleID = 'test/dtls_mtu_test.c'
source_filename = "test/dtls_mtu_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_method_st = type { i32, i32, i64, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, void (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*)*, i32 (%struct.ssl_st*, i32)*, i32 (%struct.ssl_st*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.ssl_st*, i32, i8*, i64, i64*)*, i32 (%struct.ssl_st*)*, i64 (%struct.ssl_st*, i32, i64, i8*)*, i64 (%struct.ssl_ctx_st*, i32, i64, i8*)*, %struct.ssl_cipher_st* (i8*)*, i32 (%struct.ssl_cipher_st*, %struct.wpacket_st*, i64*)*, i64 (%struct.ssl_st*)*, i32 ()*, %struct.ssl_cipher_st* (i32)*, i64 ()*, %struct.ssl3_enc_method*, i32 ()*, i64 (%struct.ssl_st*, i32, void ()*)*, i64 (%struct.ssl_ctx_st*, i32, void ()*)* }
%struct.ssl_st = type { i32, %struct.ssl_method_st*, %struct.bio_st*, %struct.bio_st*, %struct.bio_st*, i32, {}*, i32, i32, i32, i32, %struct.ossl_statem_st, i32, %struct.buf_mem_st*, i8*, i64, i64, %struct.anon, %struct.dtls1_state_st*, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, %struct.X509_VERIFY_PARAM_st*, %struct.ssl_dane_st, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, i32, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.comp_ctx_st*, %struct.comp_ctx_st*, %struct.evp_cipher_ctx_st*, [16 x i8], %struct.evp_md_ctx_st*, %struct.cert_st*, [64 x i8], i64, i32, i64, [32 x i8], %struct.ssl_session_st*, %struct.ssl_session_st*, i8*, i64, i32 (%struct.ssl_st*, i8*, i32*)*, [32 x i8], i64, i32, i32 (i32, %struct.x509_store_ctx_st*)*, void (%struct.ssl_st*, i32, i32)*, i32, i32, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.ssl_ctx_st*, %struct.stack_st_X509*, i64, %struct.crypto_ex_data_st, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i32, i64, i32, i32, i32, i64, i32, i32, i64, i64, i64, %struct.anon.2, %struct.CLIENTHELLO_MSG*, i32, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, %struct.stack_st_SCT*, i32, %struct.ssl_ctx_st*, %struct.stack_st_SRTP_PROTECTION_PROFILE*, %struct.srtp_protection_profile_st*, i32, i32, i32, i32, i8*, i64, i32, %struct.evp_md_ctx_st*, %struct.srp_ctx_st, i32 (%struct.ssl_st*, i32)*, %struct.record_layer_st, i32 (i8*, i32, i32, i8*)*, i8*, %struct.async_job_st*, %struct.async_wait_ctx_st*, i64, i32, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i8*, i64, i64, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32 (%struct.ssl_st*, i8*)*, i8*, %struct.sigalg_lookup_st**, i64 }
%struct.bio_st = type opaque
%struct.ossl_statem_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.anon = type { i64, i64, [64 x i8], i64, [64 x i8], [32 x i8], [32 x i8], i32, i32, %struct.bio_st*, %struct.evp_md_ctx_st*, i32, i32, i32, i32, [2 x i8], i32, i32, i32, i32, %struct.anon.0, [64 x i8], i64, [64 x i8], i64, i32, i32, i8*, i64, i8*, i64, i32, i8, i8, i16, %struct.evp_pkey_st* }
%struct.anon.0 = type { [128 x i8], i64, [128 x i8], i64, i64, i32, %struct.ssl_cipher_st*, %struct.evp_pkey_st*, i32, i8*, i64, %struct.stack_st_X509_NAME*, i64, i8*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32, i64, %struct.ssl_comp_st*, i32, i8*, i64, i8*, i64, i8*, i64, %struct.sigalg_lookup_st*, %struct.cert_pkey_st*, i16*, i16*, i64, i64, %struct.sigalg_lookup_st*, [9 x i32], i32, i32, i32, i32 }
%struct.ssl_cipher_st = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ssl_session_st = type { i32, i64, [64 x i8], [512 x i8], i64, [32 x i8], i64, [32 x i8], i8*, i8*, i32, %struct.x509_st*, %struct.stack_st_X509*, i64, i32, i64, i64, i64, i32, i32, %struct.ssl_cipher_st*, i64, i32, %struct.crypto_ex_data_st, %struct.ssl_session_st*, %struct.ssl_session_st*, %struct.anon.1, i8*, i8*, i64, i32, %struct.ssl_ctx_st*, i8* }
%struct.anon.1 = type { i8*, i8*, i64, i64, i32, i32, i8*, i64, i8 }
%struct.x509_store_ctx_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.stack_st_X509_NAME = type opaque
%struct.anon.2 = type { [26 x i8], void (%struct.ssl_st*, i32, i32, i8*, i32, i8*)*, i8*, i8*, i32, i8*, i16, i32, %struct.anon.3, i32, i32, i64, i8*, i64, i8*, i64, i16*, i64, i16*, %struct.tls_session_ticket_ext_st*, i32 (%struct.ssl_st*, i8*, i32, i8*)*, i8*, i32 (%struct.ssl_st*, i8*, i32*, %struct.stack_st_SSL_CIPHER*, %struct.ssl_cipher_st**, i8*)*, i8*, i8*, i64, i8*, i64, i32, i32, i32, i32, i8*, i64, i32, i8, i32 }
%struct.anon.3 = type { %struct.stack_st_OCSP_RESPID*, %struct.stack_st_X509_EXTENSION*, i8*, i64 }
%struct.stack_st_OCSP_RESPID = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.tls_session_ticket_ext_st = type { i16, i8* }
%struct.CLIENTHELLO_MSG = type { i32, i32, [32 x i8], i64, [32 x i8], i64, [255 x i8], %struct.PACKET, i64, [255 x i8], %struct.PACKET, i64, %struct.raw_extension_st* }
%struct.PACKET = type { i8*, i64 }
%struct.raw_extension_st = type { %struct.PACKET, i32, i32, i32, i64 }
%struct.ct_policy_eval_ctx_st = type opaque
%struct.stack_st_SCT = type opaque
%struct.ssl_ctx_st = type { %struct.ossl_lib_ctx_st*, %struct.ssl_method_st*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.stack_st_SSL_CIPHER*, %struct.x509_store_st*, %struct.lhash_st_SSL_SESSION*, i64, %struct.ssl_session_st*, %struct.ssl_session_st*, i32, i64, i32 (%struct.ssl_st*, %struct.ssl_session_st*)*, void (%struct.ssl_ctx_st*, %struct.ssl_session_st*)*, %struct.ssl_session_st* (%struct.ssl_st*, i8*, i32, i32*)*, %struct.anon.4, i32, i32 (%struct.x509_store_ctx_st*, i8*)*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i32 (%struct.ssl_st*, %struct.x509_st**, %struct.evp_pkey_st**)*, i32 (%struct.ssl_st*, i8*, i32*)*, i32 (%struct.ssl_st*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64*)*, i32 (%struct.ssl_st*, i8*, i64)*, %struct.crypto_ex_data_st, %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_X509*, %struct.stack_st_SSL_COMP*, void (%struct.ssl_st*, i32, i32)*, %struct.stack_st_X509_NAME*, %struct.stack_st_X509_NAME*, i64, i32, i32, i32, i64, %struct.cert_st*, i32, void (i32, i32, i32, i8*, i64, %struct.ssl_st*, i8*)*, i8*, i32, i64, [32 x i8], i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.ssl_st*, i8*, i32*)*, %struct.X509_VERIFY_PARAM_st*, i32, %struct.ctlog_store_st*, i32 (%struct.ct_policy_eval_ctx_st*, %struct.stack_st_SCT*, i8*)*, i8*, i64, i64, i64, i64, %struct.engine_st*, i32 (%struct.ssl_st*, i32*, i8*)*, i8*, %struct.anon.5, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, i32)*, i32 (%struct.ssl_st*, i8*, i64, %struct.ssl_session_st**)*, i32 (%struct.ssl_st*, %struct.evp_md_st*, i8**, i64*, %struct.ssl_session_st**)*, %struct.srp_ctx_st, %struct.dane_ctx_st, %struct.stack_st_SRTP_PROTECTION_PROFILE*, i32 (%struct.ssl_st*, i32)*, i8*, void (%struct.ssl_st*, i8*)*, i32, i32, i64 (%struct.ssl_st*, i32, i64, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i32 (%struct.ssl_st*, %struct.ssl_session_st*, i8*, i64, i32, i8*)*, i8*, i64, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i32 (%struct.ssl_st*, i8*)*, i8*, i8*, [14 x i32], [24 x %struct.evp_cipher_st*], [14 x %struct.evp_md_st*], [14 x i64], %struct.sigalg_lookup_st*, %struct.tls_group_info_st*, i64, i64, i32, i32, i32, i32 }
%struct.lhash_st_SSL_SESSION = type { %union.lh_SSL_SESSION_dummy }
%union.lh_SSL_SESSION_dummy = type { i8* }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stack_st_SSL_COMP = type opaque
%struct.ctlog_store_st = type opaque
%struct.engine_st = type opaque
%struct.anon.5 = type { i32 (%struct.ssl_st*, i32*, i8*)*, i8*, [16 x i8], %struct.ssl_ctx_ext_secure_st*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.hmac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*, i8*, %struct.evp_cipher_ctx_st*, %struct.evp_mac_ctx_st*, i32)*, i32 (%struct.ssl_st*, i8*)*, i8*, i32, i8, i64, i8*, i64, i16*, i16*, i64, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, i8*, i64, i32 (%struct.ssl_st*, i8**, i32*, i8*)*, i8*, i32 (%struct.ssl_st*, i8**, i8*, i8*, i32, i8*)*, i8*, [32 x i8] }
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
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [14 x i8] c"run_mtu_tests\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"test/dtls_mtu_test.c\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ctx = SSL_CTX_new(DTLS_method())\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SSL_CTX_set_cipher_list(ctx, \22PSK\22)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PSK\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PSK-\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"ret = mtu_test(ctx, cipher_name, 0)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s OK\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"ret = mtu_test(ctx, cipher_name, 1)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%s without EtM OK\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"create_ssl_objects(ctx, ctx, &srvr_ssl, &clnt_ssl, NULL, NULL)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"SSL_set_cipher_list(srvr_ssl, cs)\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"SSL_set_cipher_list(clnt_ssl, cs)\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"sc_bio = SSL_get_rbio(srvr_ssl)\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"create_ssl_connection(clnt_ssl, srvr_ssl, SSL_ERROR_NONE)\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"mtus[i]\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Cipher %s MTU %d\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"SSL_write(clnt_ssl, buf, s)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"(int)s\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"s <= mtus[i] && reclen > (size_t)(500 + i)\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"s > mtus[i] && reclen <= (size_t)(500 + i)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @run_mtu_tests) #6
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_mtu_tests() #0 {
entry:
  %call = tail call %struct.ssl_method_st* @DTLS_method() #6
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #6
  %0 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  tail call void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef %call1, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef nonnull @srvr_psk_callback) #6
  tail call void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* noundef %call1, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef nonnull @clnt_psk_callback) #6
  tail call void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* noundef %call1, i32 noundef 0) #6
  %call3 = tail call i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.stack_st_SSL_CIPHER* @SSL_CTX_get_ciphers(%struct.ssl_ctx_st* noundef %call1) #6
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef %call8) #7
  %call1066 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #6
  %cmp1167 = icmp sgt i32 %call1066, 0
  br i1 %cmp1167, label %for.body, label %end

for.body:                                         ; preds = %if.end7, %for.inc
  %i.069 = phi i32 [ %inc, %for.inc ], [ 0, %if.end7 ]
  %ret.068 = phi i32 [ %ret.1.ph, %for.inc ], [ 0, %if.end7 ]
  %call14 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %i.069) #6
  %1 = bitcast i8* %call14 to %struct.ssl_cipher_st*
  %call15 = tail call i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef %1) #6
  %call16 = tail call i32 @strncmp(i8* noundef %call15, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef 4) #8
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end20, label %for.inc

if.end20:                                         ; preds = %for.body
  %call21 = tail call fastcc i32 @mtu_test(%struct.ssl_ctx_st* noundef %call1, i8* noundef %call15, i32 noundef 0) #7
  %call22 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call21, i32 noundef 0) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %if.end25

if.end25:                                         ; preds = %if.end20
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call15) #6
  %cmp26 = icmp eq i32 %call21, 1
  br i1 %cmp26, label %for.inc, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = tail call fastcc i32 @mtu_test(%struct.ssl_ctx_st* noundef %call1, i8* noundef %call15, i32 noundef 1) #7
  %call31 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call30, i32 noundef 0) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %end, label %if.end34

if.end34:                                         ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call15) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %for.body, %if.end25
  %ret.1.ph = phi i32 [ 1, %if.end25 ], [ %ret.068, %for.body ], [ %call30, %if.end34 ]
  %inc = add nuw nsw i32 %i.069, 1
  %call10 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call9) #6
  %cmp11 = icmp slt i32 %inc, %call10
  br i1 %cmp11, label %for.body, label %end, !llvm.loop !3

end:                                              ; preds = %for.inc, %if.end29, %if.end20, %if.end7, %if.end, %entry
  %ret.2 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end7 ], [ %ret.1.ph, %for.inc ], [ %call30, %if.end29 ], [ %call21, %if.end20 ]
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %call1) #6
  tail call void @bio_s_mempacket_test_free() #6
  ret i32 %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @DTLS_method() local_unnamed_addr #1

declare dso_local void @SSL_CTX_set_psk_server_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @srvr_psk_callback(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %identity, i8* noundef %psk, i32 noundef %max_psk_len) #0 {
entry:
  %0 = icmp ult i32 %max_psk_len, 20
  %spec.store.select = select i1 %0, i32 %max_psk_len, i32 20
  %conv = zext i32 %spec.store.select to i64
  %call = tail call i8* @memset(i8* noundef %psk, i32 noundef 90, i64 noundef %conv) #6
  ret i32 %spec.store.select
}

declare dso_local void @SSL_CTX_set_psk_client_callback(%struct.ssl_ctx_st* noundef, i32 (%struct.ssl_st*, i8*, i8*, i32, i8*, i32)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @clnt_psk_callback(%struct.ssl_st* nocapture noundef readnone %ssl, i8* nocapture noundef readnone %hint, i8* noundef %ident, i32 noundef %max_ident_len, i8* noundef %psk, i32 noundef %max_psk_len) #0 {
entry:
  %conv = zext i32 %max_ident_len to i64
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %ident, i64 noundef %conv, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #6
  %0 = icmp ult i32 %max_psk_len, 20
  %spec.store.select = select i1 %0, i32 %max_psk_len, i32 20
  %conv2 = zext i32 %spec.store.select to i64
  %call3 = tail call i8* @memset(i8* noundef %psk, i32 noundef 90, i64 noundef %conv2) #6
  ret i32 %spec.store.select
}

declare dso_local void @SSL_CTX_set_security_level(%struct.ssl_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_CTX_set_cipher_list(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.stack_st_SSL_CIPHER* @SSL_CTX_get_ciphers(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_SSL_CIPHER_sk_type(%struct.stack_st_SSL_CIPHER* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_SSL_CIPHER* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i8* @SSL_CIPHER_get_name(%struct.ssl_cipher_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @mtu_test(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %cs, i32 noundef %no_etm) unnamed_addr #0 {
entry:
  %srvr_ssl = alloca %struct.ssl_st*, align 8
  %clnt_ssl = alloca %struct.ssl_st*, align 8
  %mtus = alloca [30 x i64], align 16
  %buf = alloca [600 x i8], align 16
  %0 = bitcast %struct.ssl_st** %srvr_ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.ssl_st* null, %struct.ssl_st** %srvr_ssl, align 8, !tbaa !5
  %1 = bitcast %struct.ssl_st** %clnt_ssl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.ssl_st* null, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %2 = bitcast [30 x i64]* %mtus to i8*
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %2) #9
  %3 = getelementptr inbounds [600 x i8], [600 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 600, i8* nonnull %3) #9
  %call = call i8* @memset(i8* noundef nonnull %3, i32 noundef 90, i64 noundef 600) #6
  %call1 = call i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef %ctx, %struct.ssl_ctx_st* noundef %ctx, %struct.ssl_st** noundef nonnull %srvr_ssl, %struct.ssl_st** noundef nonnull %clnt_ssl, %struct.bio_st* noundef null, %struct.bio_st* noundef null) #6
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq i32 %no_etm, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load %struct.ssl_st*, %struct.ssl_st** %srvr_ssl, align 8, !tbaa !5
  %call5 = call i64 @SSL_set_options(%struct.ssl_st* noundef %4, i64 noundef 524288) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load %struct.ssl_st*, %struct.ssl_st** %srvr_ssl, align 8, !tbaa !5
  %call7 = call i32 @SSL_set_cipher_list(%struct.ssl_st* noundef %5, i8* noundef %cs) #6
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv9) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %6 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %call12 = call i32 @SSL_set_cipher_list(%struct.ssl_st* noundef %6, i8* noundef %cs) #6
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv14) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %7 = load %struct.ssl_st*, %struct.ssl_st** %srvr_ssl, align 8, !tbaa !5
  %call18 = call %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef %7) #6
  %8 = bitcast %struct.bio_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* noundef %8) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %end, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %9 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %10 = load %struct.ssl_st*, %struct.ssl_st** %srvr_ssl, align 8, !tbaa !5
  %call22 = call i32 @create_ssl_connection(%struct.ssl_st* noundef %9, %struct.ssl_st* noundef %10, i32 noundef 0) #6
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv24) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %end, label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.body:                                         ; preds = %lor.lhs.false21, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %lor.lhs.false21 ]
  %11 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %12 = add nuw nsw i64 %indvars.iv, 500
  %call35 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %11, i32 noundef 17, i64 noundef %12, i8* noundef null) #6
  %13 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %call36 = call i64 @DTLS_get_data_mtu(%struct.ssl_st* noundef %13) #6
  %arrayidx = getelementptr inbounds [30 x i64], [30 x i64]* %mtus, i64 0, i64 %indvars.iv
  store i64 %call36, i64* %arrayidx, align 8, !tbaa !10
  %call46 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 noundef %call36, i64 noundef 0) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %for.cond

if.then48:                                        ; preds = %for.body
  %14 = trunc i64 %12 to i32
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* noundef %cs, i32 noundef %14) #6
  br label %end

for.end:                                          ; preds = %for.cond
  %15 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %call51 = call i64 @SSL_ctrl(%struct.ssl_st* noundef %15, i32 noundef 17, i64 noundef 1000, i8* noundef null) #6
  %arrayidx52 = getelementptr inbounds [30 x i64], [30 x i64]* %mtus, i64 0, i64 0
  %16 = load i64, i64* %arrayidx52, align 16, !tbaa !10
  %arrayidx54 = getelementptr inbounds [30 x i64], [30 x i64]* %mtus, i64 0, i64 29
  %17 = load i64, i64* %arrayidx54, align 8, !tbaa !10
  %cmp55.not182 = icmp ugt i64 %16, %17
  br i1 %cmp55.not182, label %for.end118, label %for.body57

for.body57:                                       ; preds = %for.end, %for.inc116
  %s.0183 = phi i64 [ %inc117, %for.inc116 ], [ %16, %for.end ]
  %18 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %conv59 = trunc i64 %s.0183 to i32
  %call60 = call i32 @SSL_write(%struct.ssl_st* noundef %18, i8* noundef nonnull %3, i32 noundef %conv59) #6
  %call62 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call60, i32 noundef %conv59) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %end, label %if.end65

if.end65:                                         ; preds = %for.body57
  %call67 = call i32 @BIO_read(%struct.bio_st* noundef %call18, i8* noundef nonnull %3, i32 noundef 600) #6
  %conv68 = sext i32 %call67 to i64
  br label %for.body75

for.cond72:                                       ; preds = %if.end92
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, 30
  br i1 %exitcond200.not, label %for.inc116, label %for.body75, !llvm.loop !12

for.body75:                                       ; preds = %if.end65, %for.cond72
  %indvars.iv196 = phi i64 [ 0, %if.end65 ], [ %indvars.iv.next197, %for.cond72 ]
  %arrayidx77 = getelementptr inbounds [30 x i64], [30 x i64]* %mtus, i64 0, i64 %indvars.iv196
  %19 = load i64, i64* %arrayidx77, align 8, !tbaa !10
  %cmp78.not = icmp ugt i64 %s.0183, %19
  %20 = add nuw nsw i64 %indvars.iv196, 500
  %cmp82 = icmp ult i64 %20, %conv68
  %not.cmp78.not = xor i1 %cmp78.not, true
  %21 = select i1 %not.cmp78.not, i1 %cmp82, i1 false
  %land.ext = zext i1 %21 to i32
  %call86 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 noundef %land.ext) #6
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.end92

if.then88:                                        ; preds = %for.body75
  %22 = trunc i64 %20 to i32
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i8* noundef %cs, i64 noundef %s.0183, i64 noundef %19, i64 noundef %conv68, i32 noundef %22) #6
  br label %end

if.end92:                                         ; preds = %for.body75
  %cmp100 = icmp uge i64 %20, %conv68
  %23 = select i1 %cmp78.not, i1 %cmp100, i1 false
  %land.ext103 = zext i1 %23 to i32
  %call106 = call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 noundef %land.ext103) #6
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %for.cond72

if.then108:                                       ; preds = %if.end92
  %24 = trunc i64 %20 to i32
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i8* noundef %cs, i64 noundef %s.0183, i64 noundef %19, i64 noundef %conv68, i32 noundef %24) #6
  br label %end

for.inc116:                                       ; preds = %for.cond72
  %inc117 = add i64 %s.0183, 1
  %cmp55.not = icmp ugt i64 %inc117, %17
  br i1 %cmp55.not, label %for.end118, label %for.body57, !llvm.loop !13

for.end118:                                       ; preds = %for.inc116, %for.end
  %25 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  %flags = getelementptr inbounds %struct.ssl_st, %struct.ssl_st* %25, i64 0, i32 17, i32 0
  %26 = load i64, i64* %flags, align 8, !tbaa !14
  %and = and i64 %26, 256
  %tobool119.not = icmp eq i64 %and, 0
  %spec.store.select = select i1 %tobool119.not, i32 1, i32 2
  br label %end

end:                                              ; preds = %for.body57, %if.then88, %if.then108, %if.end6, %lor.lhs.false, %lor.lhs.false17, %lor.lhs.false21, %entry, %for.end118, %if.then48
  %rv.0 = phi i32 [ 0, %if.then48 ], [ %spec.store.select, %for.end118 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false ], [ 0, %if.end6 ], [ 0, %entry ], [ 0, %if.then108 ], [ 0, %if.then88 ], [ 0, %for.body57 ]
  %27 = load %struct.ssl_st*, %struct.ssl_st** %clnt_ssl, align 8, !tbaa !5
  call void @SSL_free(%struct.ssl_st* noundef %27) #6
  %28 = load %struct.ssl_st*, %struct.ssl_st** %srvr_ssl, align 8, !tbaa !5
  call void @SSL_free(%struct.ssl_st* noundef %28) #6
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %rv.0
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @bio_s_mempacket_test_free() local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @create_ssl_objects(%struct.ssl_ctx_st* noundef, %struct.ssl_ctx_st* noundef, %struct.ssl_st** noundef, %struct.ssl_st** noundef, %struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_set_options(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_set_cipher_list(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @SSL_get_rbio(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @create_ssl_connection(%struct.ssl_st* noundef, %struct.ssl_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_ctrl(%struct.ssl_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i64 @DTLS_get_data_mtu(%struct.ssl_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SSL_write(%struct.ssl_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !4}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = !{!15, !11, i64 168}
!15 = !{!"ssl_st", !16, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !16, i64 40, !6, i64 48, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !17, i64 72, !7, i64 132, !6, i64 136, !6, i64 144, !11, i64 152, !11, i64 160, !18, i64 168, !6, i64 1208, !6, i64 1216, !6, i64 1224, !16, i64 1232, !6, i64 1240, !21, i64 1248, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !16, i64 1344, !7, i64 1348, !7, i64 1412, !7, i64 1476, !7, i64 1540, !7, i64 1604, !7, i64 1668, !7, i64 1732, !7, i64 1796, !7, i64 1860, !7, i64 1924, !7, i64 1988, !7, i64 2052, !6, i64 2120, !7, i64 2128, !6, i64 2144, !6, i64 2152, !6, i64 2160, !6, i64 2168, !7, i64 2176, !6, i64 2192, !6, i64 2200, !7, i64 2208, !11, i64 2272, !7, i64 2280, !11, i64 2288, !7, i64 2296, !6, i64 2328, !6, i64 2336, !6, i64 2344, !11, i64 2352, !6, i64 2360, !7, i64 2368, !11, i64 2400, !16, i64 2408, !6, i64 2416, !6, i64 2424, !16, i64 2432, !16, i64 2436, !6, i64 2440, !6, i64 2448, !6, i64 2456, !6, i64 2464, !6, i64 2472, !6, i64 2480, !11, i64 2488, !22, i64 2496, !6, i64 2512, !6, i64 2520, !7, i64 2528, !11, i64 2536, !16, i64 2544, !16, i64 2548, !16, i64 2552, !11, i64 2560, !16, i64 2568, !16, i64 2572, !11, i64 2576, !11, i64 2584, !11, i64 2592, !23, i64 2600, !6, i64 2904, !16, i64 2912, !6, i64 2920, !6, i64 2928, !6, i64 2936, !16, i64 2944, !6, i64 2952, !6, i64 2960, !6, i64 2968, !16, i64 2976, !16, i64 2980, !7, i64 2984, !16, i64 2988, !6, i64 2992, !11, i64 3000, !16, i64 3008, !6, i64 3016, !25, i64 3024, !6, i64 3152, !26, i64 3160, !6, i64 7448, !6, i64 7456, !6, i64 7464, !6, i64 7472, !11, i64 7480, !16, i64 7488, !16, i64 7492, !16, i64 7496, !6, i64 7504, !6, i64 7512, !11, i64 7520, !6, i64 7528, !11, i64 7536, !11, i64 7544, !11, i64 7552, !6, i64 7560, !6, i64 7568, !6, i64 7576, !6, i64 7584, !6, i64 7592, !11, i64 7600}
!16 = !{!"int", !7, i64 0}
!17 = !{!"ossl_statem_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !7, i64 52, !7, i64 56}
!18 = !{!"", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 80, !7, i64 88, !7, i64 152, !7, i64 184, !16, i64 216, !16, i64 220, !6, i64 224, !6, i64 232, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !7, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !19, i64 280, !7, i64 840, !11, i64 904, !7, i64 912, !11, i64 976, !16, i64 984, !16, i64 988, !6, i64 992, !11, i64 1000, !6, i64 1008, !11, i64 1016, !16, i64 1024, !7, i64 1028, !7, i64 1029, !20, i64 1030, !6, i64 1032}
!19 = !{!"", !7, i64 0, !11, i64 128, !7, i64 136, !11, i64 264, !11, i64 272, !16, i64 280, !6, i64 288, !6, i64 296, !16, i64 304, !6, i64 312, !11, i64 320, !6, i64 328, !11, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !16, i64 368, !11, i64 376, !6, i64 384, !16, i64 392, !6, i64 400, !11, i64 408, !6, i64 416, !11, i64 424, !6, i64 432, !11, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !11, i64 480, !11, i64 488, !6, i64 496, !7, i64 504, !16, i64 540, !16, i64 544, !16, i64 548, !16, i64 552}
!20 = !{!"short", !7, i64 0}
!21 = !{!"ssl_dane_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !11, i64 56}
!22 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!23 = !{!"", !7, i64 0, !6, i64 32, !6, i64 40, !6, i64 48, !16, i64 56, !6, i64 64, !20, i64 72, !16, i64 76, !24, i64 80, !16, i64 112, !16, i64 116, !11, i64 120, !6, i64 128, !11, i64 136, !6, i64 144, !11, i64 152, !6, i64 160, !11, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !11, i64 232, !6, i64 240, !11, i64 248, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !6, i64 272, !11, i64 280, !16, i64 288, !7, i64 292, !16, i64 296}
!24 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24}
!25 = !{!"srp_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !16, i64 112, !11, i64 120}
!26 = !{!"record_layer_st", !6, i64 0, !16, i64 8, !16, i64 12, !11, i64 16, !11, i64 24, !27, i64 32, !7, i64 80, !7, i64 1616, !6, i64 4176, !11, i64 4184, !11, i64 4192, !7, i64 4200, !11, i64 4208, !11, i64 4216, !11, i64 4224, !16, i64 4232, !11, i64 4240, !6, i64 4248, !7, i64 4256, !7, i64 4264, !16, i64 4272, !16, i64 4276, !6, i64 4280}
!27 = !{!"ssl3_buffer_st", !6, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !16, i64 40}
