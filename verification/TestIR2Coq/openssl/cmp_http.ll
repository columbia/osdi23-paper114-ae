; ModuleID = 'crypto/cmp/cmp_http.c'
source_filename = "crypto/cmp/cmp_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, {}*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.stack_st = type opaque
%struct.CONF_VALUE = type { i8*, i8*, i8* }

@__const.OSSL_CMP_MSG_http_perform.content_type_pkix = private unnamed_addr constant [20 x i8] c"application/pkixcmp\00", align 16
@.str = private unnamed_addr constant [22 x i8] c"crypto/cmp/cmp_http.c\00", align 1
@__func__.OSSL_CMP_MSG_http_perform = private unnamed_addr constant [26 x i8] c"OSSL_CMP_MSG_http_perform\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Pragma\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"connecting to CMP server %s:%s%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" using TLS\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"disconnected from CMP server\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"finished reading response from CMP server\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_http_perform(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %req) local_unnamed_addr #0 {
entry:
  %server_port = alloca [32 x i8], align 16
  %headers = alloca %struct.stack_st_CONF_VALUE*, align 8
  %content_type_pkix = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %server_port, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %1 = bitcast %struct.stack_st_CONF_VALUE** %headers to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store %struct.stack_st_CONF_VALUE* null, %struct.stack_st_CONF_VALUE** %headers, align 8, !tbaa !4
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %content_type_pkix, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %2, i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @__const.OSSL_CMP_MSG_http_perform.content_type_pkix, i64 0, i64 0), i64 20, i1 false)
  %call = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #7
  %cmp = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp eq %struct.ossl_cmp_msg_st* %req, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_MSG_http_perform, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 103, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @X509V3_add_value(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.stack_st_CONF_VALUE** noundef nonnull %headers) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %3 = bitcast %struct.ossl_cmp_msg_st* %req to %struct.ASN1_VALUE_st*
  %call5 = call %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.ASN1_VALUE_st* noundef %3) #7
  %cmp6 = icmp eq %struct.bio_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %serverPort = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 9
  %4 = load i32, i32* %serverPort, align 8, !tbaa !8
  %cmp9.not = icmp eq i32 %4, 0
  br i1 %cmp9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call12 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 noundef %4) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8
  %call14 = call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #7
  %cmp15 = icmp ne i8* %call14, null
  %conv = zext i1 %cmp15 to i32
  %http_ctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 6
  %5 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %http_ctx, align 8, !tbaa !12
  %cmp16 = icmp eq %struct.ossl_http_req_ctx_st* %5, null
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end13
  %server = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 8
  %6 = load i8*, i8** %server, align 8, !tbaa !13
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %call21 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_MSG_http_perform, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6, i8* noundef nonnull %0, i8* noundef %cond) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end13
  %server24 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 8
  %7 = load i8*, i8** %server24, align 8, !tbaa !13
  %serverPath = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 7
  %8 = load i8*, i8** %serverPath, align 8, !tbaa !14
  %proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 10
  %9 = load i8*, i8** %proxy, align 8, !tbaa !15
  %no_proxy = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 11
  %10 = load i8*, i8** %no_proxy, align 8, !tbaa !16
  %http_cb = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 16
  %11 = load %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)** %http_cb, align 8, !tbaa !17
  %call26 = call i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #7
  %12 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %headers, align 8, !tbaa !4
  %msg_timeout = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 13
  %13 = load i32, i32* %msg_timeout, align 4, !tbaa !18
  %keep_alive = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 12
  %14 = load i32, i32* %keep_alive, align 8, !tbaa !19
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %req, i64 0, i32 1
  %15 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !20
  %type = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %15, i64 0, i32 0
  %16 = load i32, i32* %type, align 8, !tbaa !22
  %call29 = call fastcc i32 @keep_alive(i32 noundef %14, i32 noundef %16) #8
  %call30 = call %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef nonnull %http_ctx, i8* noundef %7, i8* noundef nonnull %0, i8* noundef %8, i32 noundef %conv, i8* noundef %9, i8* noundef %10, %struct.bio_st* noundef null, %struct.bio_st* noundef null, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef %11, i8* noundef %call26, i32 noundef 0, %struct.stack_st_CONF_VALUE* noundef %12, i8* noundef nonnull %2, %struct.bio_st* noundef nonnull %call5, i8* noundef nonnull %2, i32 noundef 1, i64 noundef 102400, i32 noundef %13, i32 noundef %call29) #7
  %call31 = call i32 @BIO_free(%struct.bio_st* noundef nonnull %call5) #7
  %call32 = call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %call30, i8* noundef null) #7
  %17 = bitcast i8* %call32 to %struct.ossl_cmp_msg_st*
  %call33 = call i32 @BIO_free(%struct.bio_st* noundef %call30) #7
  %18 = load %struct.ossl_http_req_ctx_st*, %struct.ossl_http_req_ctx_st** %http_ctx, align 8, !tbaa !12
  %cmp35 = icmp eq %struct.ossl_http_req_ctx_st* %18, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end22
  %call38 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_MSG_http_perform, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0)) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end22
  %cmp40.not = icmp eq i8* %call32, null
  br i1 %cmp40.not, label %err, label %if.then42

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_CMP_MSG_http_perform, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0)) #7
  br label %err

err:                                              ; preds = %if.end39, %if.then42, %if.end4
  %res.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.end4 ], [ %17, %if.then42 ], [ null, %if.end39 ]
  %19 = load %struct.stack_st_CONF_VALUE*, %struct.stack_st_CONF_VALUE** %headers, align 8, !tbaa !4
  %call45 = call fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef %19) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call45, void (i8*)* noundef bitcast (void (%struct.CONF_VALUE*)* @X509V3_conf_free to void (i8*)*)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ null, %if.then ], [ %res.0, %err ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret %struct.ossl_cmp_msg_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @X509V3_add_value(i8* noundef, i8* noundef, %struct.stack_st_CONF_VALUE** noundef) local_unnamed_addr #4

declare %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef, %struct.ASN1_VALUE_st* noundef) local_unnamed_addr #4

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i8* @OSSL_CMP_CTX_get_http_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #4

declare i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare %struct.bio_st* @OSSL_HTTP_transfer(%struct.ossl_http_req_ctx_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bio_st* noundef, %struct.bio_st* noundef, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)* noundef, i8* noundef, i32 noundef, %struct.stack_st_CONF_VALUE* noundef, i8* noundef, %struct.bio_st* noundef, i8* noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @keep_alive(i32 noundef %keep_alive, i32 noundef %body_type) unnamed_addr #5 {
entry:
  %cmp.not = icmp eq i32 %keep_alive, 0
  br i1 %cmp.not, label %if.end, label %switch.early.test

switch.early.test:                                ; preds = %entry
  switch i32 %body_type, label %if.then [
    i32 25, label %if.end
    i32 7, label %if.end
    i32 4, label %if.end
    i32 2, label %if.end
    i32 0, label %if.end
  ]

if.then:                                          ; preds = %switch.early.test
  br label %if.end

if.end:                                           ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %entry, %if.then
  %keep_alive.addr.0 = phi i32 [ 0, %if.then ], [ %keep_alive, %switch.early.test ], [ 0, %entry ], [ %keep_alive, %switch.early.test ], [ %keep_alive, %switch.early.test ], [ %keep_alive, %switch.early.test ], [ %keep_alive, %switch.early.test ]
  ret i32 %keep_alive.addr.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #4

declare i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #4

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_CONF_VALUE_sk_type(%struct.stack_st_CONF_VALUE* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_CONF_VALUE* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509V3_conf_free(%struct.CONF_VALUE* noundef) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !10, i64 72}
!9 = !{!"ossl_cmp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !5, i64 80, !5, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !11, i64 112, !5, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !11, i64 240, !5, i64 248, !10, i64 256, !10, i64 260, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !10, i64 320, !10, i64 324, !5, i64 328, !5, i64 336, !10, i64 344, !5, i64 352, !10, i64 360, !5, i64 368, !5, i64 376, !10, i64 384, !10, i64 388, !5, i64 392, !5, i64 400, !10, i64 408, !10, i64 412, !5, i64 416, !5, i64 424, !10, i64 432, !5, i64 440, !10, i64 448, !5, i64 456, !10, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !5, i64 48}
!13 = !{!9, !5, i64 64}
!14 = !{!9, !5, i64 56}
!15 = !{!9, !5, i64 80}
!16 = !{!9, !5, i64 88}
!17 = !{!9, !5, i64 120}
!18 = !{!9, !10, i64 100}
!19 = !{!9, !10, i64 96}
!20 = !{!21, !5, i64 8}
!21 = !{!"ossl_cmp_msg_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!22 = !{!23, !10, i64 0}
!23 = !{!"ossl_cmp_pkibody_st", !10, i64 0, !6, i64 8}
