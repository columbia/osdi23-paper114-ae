; ModuleID = 'fuzz/cmp.c'
source_filename = "fuzz/cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_init_settings_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_cmp_srv_ctx_st = type opaque
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_http_req_ctx_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
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
%struct.ASN1_VALUE_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.ossl_crmf_msg_st = type opaque
%struct.stack_st = type opaque
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.3 }
%union.anon.3 = type { i8* }

@.str = private unnamed_addr constant [57 x i8] c"assertion failed: (size_t)BIO_write(in, buf, len) == len\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fuzz/cmp.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@num_responses = internal unnamed_addr global i32 0, align 4
@__func__.process_cert_request = private unnamed_addr constant [21 x i8] c"process_cert_request\00", align 1
@__func__.process_rr = private unnamed_addr constant [11 x i8] c"process_rr\00", align 1
@__func__.process_genm = private unnamed_addr constant [13 x i8] c"process_genm\00", align 1
@__func__.process_error = private unnamed_addr constant [14 x i8] c"process_error\00", align 1
@__func__.process_certConf = private unnamed_addr constant [17 x i8] c"process_certConf\00", align 1
@__func__.process_pollReq = private unnamed_addr constant [16 x i8] c"process_pollReq\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerInitialize(i32* nocapture noundef readnone %argc, i8*** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  tail call void @FuzzerSetRand() #4
  %call = tail call i32 @OPENSSL_init_crypto(i64 noundef 2, %struct.ossl_init_settings_st* noundef null) #4
  tail call void @ERR_clear_error() #4
  %call1 = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #4
  ret i32 1
}

declare dso_local void @FuzzerSetRand() local_unnamed_addr #1

declare dso_local i32 @OPENSSL_init_crypto(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @FuzzerTestOneInput(i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %conv = trunc i64 %len to i32
  %call2 = tail call i32 @BIO_write(%struct.bio_st* noundef %call1, i8* noundef %buf, i32 noundef %conv) #4
  %conv3 = sext i32 %call2 to i64
  %cmp4 = icmp eq i64 %conv3, %len
  br i1 %cmp4, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 167) #5
  unreachable

cond.end:                                         ; preds = %if.end
  %call6 = tail call %struct.ossl_cmp_msg_st* @d2i_OSSL_CMP_MSG_bio(%struct.bio_st* noundef %call1, %struct.ossl_cmp_msg_st** noundef null) #4
  %cmp7.not = icmp eq %struct.ossl_cmp_msg_st* %call6, null
  br i1 %cmp7.not, label %if.end32, label %if.then9

if.then9:                                         ; preds = %cond.end
  %call10 = tail call %struct.bio_method_st* @BIO_s_null() #4
  %call11 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call10) #4
  %call12 = tail call %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  %call13 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  %call14 = tail call i32 @i2d_OSSL_CMP_MSG_bio(%struct.bio_st* noundef %call11, %struct.ossl_cmp_msg_st* noundef nonnull %call6) #4
  %0 = bitcast %struct.ossl_cmp_msg_st* %call6 to %struct.ASN1_VALUE_st*
  %call15 = tail call %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() #4
  %call16 = tail call i32 @ASN1_item_print(%struct.bio_st* noundef %call11, %struct.ASN1_VALUE_st* noundef nonnull %0, i32 noundef 4, %struct.ASN1_ITEM_st* noundef %call15, %struct.asn1_pctx_st* noundef null) #4
  %call17 = tail call i32 @BIO_free(%struct.bio_st* noundef %call11) #4
  %cmp18.not = icmp eq %struct.ossl_cmp_ctx_st* %call13, null
  br i1 %cmp18.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then9
  tail call fastcc void @cmp_client_process_response(%struct.ossl_cmp_ctx_st* noundef nonnull %call13, %struct.ossl_cmp_msg_st* noundef nonnull %call6) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then9
  %cmp22.not = icmp eq %struct.ossl_cmp_srv_ctx_st* %call12, null
  br i1 %cmp22.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %call24 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_SRV_CTX_get0_cmp_ctx(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %call12) #4
  %call25 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef %call24, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @print_noop) #4
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end31, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true
  %call27 = tail call i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %call12, i8* noundef null, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef nonnull @process_cert_request, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef nonnull @process_rr, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef nonnull @process_genm, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef nonnull @process_error, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef nonnull @process_certConf, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef nonnull @process_pollReq) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_SRV_process_request(%struct.ossl_cmp_srv_ctx_st* noundef nonnull %call12, %struct.ossl_cmp_msg_st* noundef nonnull %call6) #4
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %call30) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true26, %land.lhs.true, %if.end21
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %call13) #4
  tail call void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef %call12) #4
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef nonnull %call6) #4
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %cond.end
  %call33 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #4
  tail call void @ERR_clear_error() #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end32
  ret i32 0
}

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_msg_st* @d2i_OSSL_CMP_MSG_bio(%struct.bio_st* noundef, %struct.ossl_cmp_msg_st** noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_null() local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_OSSL_CMP_MSG_bio(%struct.bio_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_item_print(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ASN1_ITEM_st* @OSSL_CMP_MSG_it() local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cmp_client_process_response(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #4
  %call1 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #4
  %unprotectedSend = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 26
  store i32 1, i32* %unprotectedSend, align 8, !tbaa !3
  %disableConfirm = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 44
  store i32 1, i32* %disableConfirm, align 4, !tbaa !10
  %popoMethod = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 57
  store i32 -1, i32* %popoMethod, align 4, !tbaa !11
  %call2 = tail call %struct.x509_st* @X509_new() #4
  %oldCert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 58
  store %struct.x509_st* %call2, %struct.x509_st** %oldCert, align 8, !tbaa !12
  %call3 = tail call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %ctx, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !12
  %cmp = icmp eq %struct.x509_st* %0, null
  %cmp6 = icmp eq %struct.X509_name_st* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @X509_set_issuer_name(%struct.x509_st* noundef nonnull %0, %struct.X509_name_st* noundef nonnull %call) #4
  %tobool10 = icmp eq i32 %call9, 0
  %cmp12 = icmp eq %struct.asn1_string_st* %call1, null
  %or.cond37 = select i1 %tobool10, i1 true, i1 %cmp12
  br i1 %or.cond37, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %1 = load %struct.x509_st*, %struct.x509_st** %oldCert, align 8, !tbaa !12
  %call15 = tail call i32 @X509_set_serialNumber(%struct.x509_st* noundef %1, %struct.asn1_string_st* noundef nonnull %call1) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef nonnull @transfer_cb) #4
  %2 = bitcast %struct.ossl_cmp_msg_st* %msg to i8*
  %call18 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef %2) #4
  %call19 = tail call i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 (i8*, i8*, i32, i32, i8*)* noundef nonnull @print_noop) #4
  store i32 0, i32* @num_responses, align 4, !tbaa !13
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %3 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !14
  %cmp20.not = icmp eq %struct.ossl_cmp_pkibody_st* %3, null
  br i1 %cmp20.not, label %sw.default, label %cond.end

cond.end:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %3, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !16
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb23
    i32 8, label %sw.bb26
    i32 26, label %sw.bb28
    i32 12, label %sw.bb30
    i32 22, label %sw.bb32
  ]

sw.bb:                                            ; preds = %cond.end
  %call22 = tail call %struct.x509_st* @OSSL_CMP_exec_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 0, %struct.ossl_crmf_msg_st* noundef null) #4
  br label %err

sw.bb23:                                          ; preds = %cond.end
  %call24 = tail call %struct.x509_st* @OSSL_CMP_exec_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 2, %struct.ossl_crmf_msg_st* noundef null) #4
  %call25 = tail call %struct.x509_st* @OSSL_CMP_exec_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 4, %struct.ossl_crmf_msg_st* noundef null) #4
  br label %err

sw.bb26:                                          ; preds = %cond.end
  %call27 = tail call %struct.x509_st* @OSSL_CMP_exec_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 7, %struct.ossl_crmf_msg_st* noundef null) #4
  br label %err

sw.bb28:                                          ; preds = %cond.end
  %status = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 62
  store i32 3, i32* %status, align 8, !tbaa !18
  %call29 = tail call i32 @OSSL_CMP_try_certreq(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i32 noundef 2, %struct.ossl_crmf_msg_st* noundef null, i32* noundef null) #4
  br label %err

sw.bb30:                                          ; preds = %cond.end
  %call31 = tail call i32 @OSSL_CMP_exec_RR_ses(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #4
  br label %err

sw.bb32:                                          ; preds = %cond.end
  %call33 = tail call %struct.stack_st_OSSL_CMP_ITAV* @OSSL_CMP_exec_GENM_ses(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #4
  %call34 = tail call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %call33) #6
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call34, void (i8*)* noundef bitcast (void (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_free to void (i8*)*)) #4
  br label %err

sw.default:                                       ; preds = %if.end, %cond.end
  %call36 = tail call i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef nonnull @allow_unprotected, i32 noundef 0) #4
  br label %err

err:                                              ; preds = %sw.bb, %sw.bb23, %sw.bb26, %sw.bb28, %sw.bb30, %sw.bb32, %sw.default, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #4
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call1) #4
  ret void
}

declare dso_local i32 @OSSL_CMP_CTX_set_log_cb(%struct.ossl_cmp_ctx_st* noundef, i32 (i8*, i8*, i32, i32, i8*)* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_SRV_CTX_get0_cmp_ctx(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @print_noop(i8* nocapture noundef readnone %func, i8* nocapture noundef readnone %file, i32 noundef %line, i32 noundef %level, i8* nocapture noundef readnone %msg) #3 {
entry:
  ret i32 1
}

declare dso_local i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef, i8* noundef, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal noalias %struct.ossl_cmp_pkisi_st* @process_cert_request(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %cert_req, i32 noundef %certReqId, %struct.ossl_crmf_msg_st* nocapture noundef readnone %crm, %struct.X509_req_st* nocapture noundef readnone %p10cr, %struct.x509_st** nocapture noundef readnone %certOut, %struct.stack_st_X509** nocapture noundef readnone %chainOut, %struct.stack_st_X509** nocapture noundef readnone %caPubs) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  ret %struct.ossl_cmp_pkisi_st* null
}

; Function Attrs: noinline nounwind uwtable
define internal noalias %struct.ossl_cmp_pkisi_st* @process_rr(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %rr, %struct.X509_name_st* nocapture noundef readnone %issuer, %struct.asn1_string_st* nocapture noundef readnone %serial) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.process_rr, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  ret %struct.ossl_cmp_pkisi_st* null
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_genm(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %genm, %struct.stack_st_OSSL_CMP_ITAV* nocapture noundef readnone %in, %struct.stack_st_OSSL_CMP_ITAV** nocapture noundef readnone %out) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.process_genm, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_error(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %error, %struct.ossl_cmp_pkisi_st* nocapture noundef readnone %statusInfo, %struct.asn1_string_st* nocapture noundef readnone %errorCode, %struct.stack_st_ASN1_UTF8STRING* nocapture noundef readnone %errorDetails) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.process_error, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_certConf(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %certConf, i32 noundef %certReqId, %struct.asn1_string_st* nocapture noundef readnone %certHash, %struct.ossl_cmp_pkisi_st* nocapture noundef readnone %si) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.process_certConf, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_pollReq(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %pollReq, i32 noundef %certReqId, %struct.ossl_cmp_msg_st** nocapture noundef readnone %certReq, i64* nocapture noundef readnone %check_after) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.process_pollReq, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 158, i8* noundef null) #4
  ret i32 0
}

declare dso_local void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_SRV_process_request(%struct.ossl_cmp_srv_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #0 {
entry:
  tail call void @FuzzerClearRand() #4
  ret void
}

declare dso_local void @FuzzerClearRand() local_unnamed_addr #1

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare dso_local %struct.x509_st* @X509_new() local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_set_issuer_name(%struct.x509_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_set_serialNumber(%struct.x509_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set_transfer_cb(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_cmp_msg_st* @transfer_cb(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %req) #0 {
entry:
  %0 = load i32, i32* @num_responses, align 4, !tbaa !13
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @num_responses, align 4, !tbaa !13
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %ctx) #4
  %1 = bitcast i8* %call to %struct.ossl_cmp_msg_st*
  %call1 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef %1) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_cmp_msg_st* [ %call1, %if.end ], [ null, %entry ]
  ret %struct.ossl_cmp_msg_st* %retval.0
}

declare dso_local i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.x509_st* @OSSL_CMP_exec_certreq(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.ossl_crmf_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_try_certreq(%struct.ossl_cmp_ctx_st* noundef, i32 noundef, %struct.ossl_crmf_msg_st* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_exec_RR_ses(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.stack_st_OSSL_CMP_ITAV* @OSSL_CMP_exec_GENM_ses(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) #1

declare dso_local i32 @ossl_cmp_msg_check_update(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef, i32 (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*, i32, i32)* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @allow_unprotected(%struct.ossl_cmp_ctx_st* nocapture noundef readnone %ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %rep, i32 noundef %invalid_protection, i32 noundef %expected_type) #3 {
entry:
  ret i32 1
}

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #1

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_MSG_dup(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i8* @OSSL_CMP_CTX_get_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_new() local_unnamed_addr #1

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 192}
!4 = !{!"ossl_cmp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !8, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !8, i64 72, !5, i64 80, !5, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !5, i64 120, !5, i64 128, !8, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !9, i64 240, !5, i64 248, !8, i64 256, !8, i64 260, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !8, i64 320, !8, i64 324, !5, i64 328, !5, i64 336, !8, i64 344, !5, i64 352, !8, i64 360, !5, i64 368, !5, i64 376, !8, i64 384, !8, i64 388, !5, i64 392, !5, i64 400, !8, i64 408, !8, i64 412, !5, i64 416, !5, i64 424, !8, i64 432, !5, i64 440, !8, i64 448, !5, i64 456, !8, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!4, !8, i64 324}
!11 = !{!4, !8, i64 412}
!12 = !{!4, !5, i64 416}
!13 = !{!8, !8, i64 0}
!14 = !{!15, !5, i64 8}
!15 = !{!"ossl_cmp_msg_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!16 = !{!17, !8, i64 0}
!17 = !{!"ossl_cmp_pkibody_st", !8, i64 0, !6, i64 8}
!18 = !{!4, !8, i64 448}
