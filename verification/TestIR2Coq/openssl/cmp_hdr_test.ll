; ModuleID = 'test/cmp_hdr_test.c'
source_filename = "test/cmp_hdr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i8*, i32, %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_pkiheader_st* }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
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
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.stack_st = type opaque
%struct.ossl_cmp_itav_st = type { %struct.asn1_object_st*, %union.anon.3 }
%union.anon.3 = type { i8* }

@rand_data = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"test_HDR_set_get_pvno\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"test_HDR_get0_senderNonce\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"test_HDR_set1_sender\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test_HDR_set1_recipient\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"test_HDR_update_messageTime\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"test_HDR_set1_senderKID\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test_HDR_push0_freeText\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"test_HDR_push1_freeText\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"test_HDR_generalInfo_push0_item\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"test_HDR_generalInfo_push1_items\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"test_HDR_set_and_check_implicit_confirm\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"test_HDR_init_with_ref\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"test_HDR_init_with_subject\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"test/cmp_hdr_test.c\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"fixture->cmp_ctx = OSSL_CMP_CTX_new(NULL, NULL)\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"fixture->hdr = OSSL_CMP_PKIHEADER_new()\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"ossl_cmp_hdr_set_pvno(fixture->hdr, pvno)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"ossl_cmp_hdr_get_pvno(fixture->hdr)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pvno\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sender\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"A common sender name\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"OSSL_CMP_CTX_set1_subjectName(fixture->cmp_ctx, sender)\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"ossl_cmp_hdr_init(fixture->cmp_ctx, fixture->hdr)\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"ASN1_OCTET_STRING_cmp(fixture->cmp_ctx->senderNonce, sn)\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"x509name\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"ossl_cmp_hdr_set1_sender(fixture->hdr, x509name)\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"fixture->hdr->sender->type\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"GEN_DIRNAME\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"X509_NAME_cmp(fixture->hdr->sender->d.directoryName, x509name)\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"A common recipient name\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"ossl_cmp_hdr_set1_recipient(fixture->hdr, x509name)\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"fixture->hdr->recipient->type\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"X509_NAME_cmp(fixture->hdr->recipient->d.directoryName, x509name)\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"ossl_cmp_hdr_update_messageTime(fixture->hdr)\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"ASN1_TIME_to_tm(fixture->hdr->messageTime, &hdrtm)\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"hdrtime\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"senderKID\00", align 1
@.str.43 = private unnamed_addr constant [63 x i8] c"ASN1_OCTET_STRING_set(senderKID, rand_data, sizeof(rand_data))\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"ossl_cmp_hdr_set1_senderKID(fixture->hdr, senderKID)\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"ASN1_OCTET_STRING_cmp(fixture->hdr->senderKID, senderKID)\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"A free text\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"ossl_cmp_hdr_push0_freeText(fixture->hdr, text)\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"text == sk_ASN1_UTF8STRING_value(fixture->hdr->freeText, 0)\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"ossl_cmp_hdr_push1_freeText(fixture->hdr, text)\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"ASN1_STRING_cmp(text, pushed_text)\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"itav\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"ossl_cmp_hdr_generalInfo_push0_item(fixture->hdr, itav)\00", align 1
@.str.54 = private unnamed_addr constant [61 x i8] c"itav == sk_OSSL_CMP_ITAV_value(fixture->hdr->generalInfo, 0)\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"asn1int\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c"itav = OSSL_CMP_ITAV_create(OBJ_txt2obj(oid, 1), val)\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"OSSL_CMP_ITAV_push0_stack_item(&itavs, itav)\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"ossl_cmp_hdr_generalInfo_push1_items(fixture->hdr, itavs)\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"memcmp(oid, buf, sizeof(oid))\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"ASN1_TYPE_cmp(itav->infoValue.other, pushed_val)\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"ossl_cmp_hdr_has_implicitConfirm(fixture->hdr)\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"ossl_cmp_hdr_set_implicitConfirm(fixture->hdr)\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"RAND_bytes(ref, sizeof(ref))\00", align 1
@.str.65 = private unnamed_addr constant [69 x i8] c"OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx, ref, sizeof(ref))\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"fixture->expected\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"OSSL_CMP_PVNO\00", align 1
@.str.68 = private unnamed_addr constant [67 x i8] c"ASN1_OCTET_STRING_cmp(header_nonce, fixture->cmp_ctx->senderNonce)\00", align 1
@.str.69 = private unnamed_addr constant [82 x i8] c"0 == ASN1_OCTET_STRING_cmp(header_transactionID, fixture->cmp_ctx->transactionID)\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"header_nonce\00", align 1
@.str.71 = private unnamed_addr constant [47 x i8] c"ASN1_OCTET_STRING_cmp(header_nonce, ctx_nonce)\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"subject = X509_NAME_new()\00", align 1
@.str.73 = private unnamed_addr constant [44 x i8] c"X509_NAME_ADD(subject, \22CN\22, \22Common Name\22)\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"Common Name\00", align 1
@.str.75 = private unnamed_addr constant [57 x i8] c"OSSL_CMP_CTX_set1_subjectName(fixture->cmp_ctx, subject)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @RAND_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_set_get_pvno) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_get0_senderNonce) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_set1_sender) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_set1_recipient) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_update_messageTime) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_set1_senderKID) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_push0_freeText) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_push1_freeText) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_generalInfo_push0_item) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_generalInfo_push1_items) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_set_and_check_implicit_confirm) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_init_with_ref) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_HDR_init_with_subject) #7
  ret i32 1
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_set_get_pvno() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_set_get_pvno_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_get0_senderNonce() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_get0_senderNonce_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_set1_sender() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_set1_sender_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_set1_recipient() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_set1_recipient_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_update_messageTime() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_update_messageTime_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_set1_senderKID() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_set1_senderKID_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_push0_freeText() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_push0_freeText_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_push1_freeText() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_push1_freeText_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_generalInfo_push0_item() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_generalInfo_push0_item_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_generalInfo_push1_items() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call3 = tail call fastcc i32 @execute_HDR_generalInfo_push1_items_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_set_and_check_implicit_confirm() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @execute_HDR_set_and_check_implicitConfirm_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_init_with_ref() #1 {
entry:
  %ref = alloca [15 x i8], align 1
  %0 = getelementptr inbounds [15 x i8], [15 x i8]* %ref, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 15, i8* nonnull %0) #9
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call1 = call i32 @RAND_bytes(i8* noundef nonnull %0, i32 noundef 15) #7
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.64, i64 0, i64 0), i32 noundef 1, i32 noundef %call1) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %call4 = call i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %1, i8* noundef nonnull %0, i32 noundef 15) #7
  %cmp5 = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp5 to i32
  %call6 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.sink.split, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false
  %call13 = call fastcc i32 @execute_HDR_init_test(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %if.end, %if.then12
  %retval.0.ph = phi i32 [ %call13, %if.then12 ], [ 0, %if.end ], [ 0, %lor.lhs.false ]
  call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 15, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HDR_init_with_subject() #1 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #8
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !3
  %call1 = tail call %struct.X509_name_st* @X509_NAME_new() #7
  %0 = bitcast %struct.X509_name_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.72, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end14.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef %call1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef 4097, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 noundef -1, i32 noundef -1, i32 noundef 0) #7
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14.thread, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %call8 = tail call i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef %1, %struct.X509_name_st* noundef %call1) #7
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv10) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14.thread, label %if.then17

if.end14.thread:                                  ; preds = %if.end, %lor.lhs.false, %lor.lhs.false7
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call1) #7
  br label %cleanup

if.then17:                                        ; preds = %lor.lhs.false7
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call1) #7
  %call18 = tail call fastcc i32 @execute_HDR_init_test(%struct.test_fixture* noundef nonnull %call) #8
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14.thread, %if.then17, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call18, %if.then17 ], [ 0, %if.end14.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up(i8* noundef %test_case_name) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 35) #7
  %0 = bitcast i8* %call to %struct.test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* %test_case_name, i8** %test_case_name2, align 8, !tbaa !10
  %call3 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #7
  %cmp_ctx = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %cmp_ctx to %struct.ossl_cmp_ctx_st**
  store %struct.ossl_cmp_ctx_st* %call3, %struct.ossl_cmp_ctx_st** %1, align 8, !tbaa !9
  %2 = bitcast %struct.ossl_cmp_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* noundef %2) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_PKIHEADER_new() #7
  %hdr = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %hdr to %struct.ossl_cmp_pkiheader_st**
  store %struct.ossl_cmp_pkiheader_st* %call8, %struct.ossl_cmp_pkiheader_st** %3, align 8, !tbaa !11
  %4 = bitcast %struct.ossl_cmp_pkiheader_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* noundef %4) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %cleanup

err:                                              ; preds = %if.end7, %if.end
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry, %err
  %retval.0 = phi %struct.test_fixture* [ null, %err ], [ null, %entry ], [ %0, %if.end7 ]
  ret %struct.test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_set_get_pvno_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call = tail call i32 @ossl_cmp_hdr_set_pvno(%struct.ossl_cmp_pkiheader_st* noundef %0, i32 noundef 77) #7
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call3 = tail call i32 @ossl_cmp_hdr_get_pvno(%struct.ossl_cmp_pkiheader_st* noundef %1) #7
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call3, i32 noundef 77) #7
  %tobool5.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #1 {
entry:
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  tail call void @OSSL_CMP_PKIHEADER_free(%struct.ossl_cmp_pkiheader_st* noundef %0) #7
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %1) #7
  %2 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 28) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_pkiheader_st* @OSSL_CMP_PKIHEADER_new() local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_set_pvno(%struct.ossl_cmp_pkiheader_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_get_pvno(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_CMP_PKIHEADER_free(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_get0_senderNonce_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #7
  %0 = bitcast %struct.X509_name_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef 4097, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 noundef -1, i32 noundef -1, i32 noundef 0) #7
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %call3 = tail call i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef %1, %struct.X509_name_st* noundef %call) #7
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call3, i32 noundef 1) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %2 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %3 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call9 = tail call i32 @ossl_cmp_hdr_init(%struct.ossl_cmp_ctx_st* noundef %2, %struct.ossl_cmp_pkiheader_st* noundef %3) #7
  %call10 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call9, i32 noundef 1) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end7
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call15 = tail call %struct.asn1_string_st* @ossl_cmp_hdr_get0_senderNonce(%struct.ossl_cmp_pkiheader_st* noundef %4) #7
  %5 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %5, i64 0, i32 39
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !12
  %call17 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %6, %struct.asn1_string_st* noundef %call15) #7
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call17, i32 noundef 0) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end13
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7, %if.end, %entry, %if.end21
  %retval.0 = phi i32 [ 1, %if.end21 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end7 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #2

declare dso_local i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_CMP_CTX_set1_subjectName(%struct.ossl_cmp_ctx_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_init(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ossl_cmp_hdr_get0_senderNonce(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_set1_sender_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #7
  %0 = bitcast %struct.X509_name_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef 4097, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 noundef -1, i32 noundef -1, i32 noundef 0) #7
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call3 = tail call i32 @ossl_cmp_hdr_set1_sender(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.X509_name_st* noundef %call) #7
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call3, i32 noundef 1) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %sender = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %2, i64 0, i32 1
  %3 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %3, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !17
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 noundef %4, i32 noundef 4) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %5 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %sender14 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %5, i64 0, i32 1
  %6 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender14, align 8, !tbaa !15
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %6, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %7 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !19
  %call15 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %7, %struct.X509_name_st* noundef %call) #7
  %call16 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call15, i32 noundef 0) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end12
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7, %if.end, %entry, %if.end19
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end7 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare dso_local i32 @ossl_cmp_hdr_set1_sender(%struct.ossl_cmp_pkiheader_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_set1_recipient_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_name_st* @X509_NAME_new() #7
  %0 = bitcast %struct.X509_name_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @X509_NAME_add_entry_by_txt(%struct.X509_name_st* noundef %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef 4097, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i32 noundef -1, i32 noundef -1, i32 noundef 0) #7
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call3 = tail call i32 @ossl_cmp_hdr_set1_recipient(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.X509_name_st* noundef %call) #7
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call3, i32 noundef 1) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %recipient = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %2, i64 0, i32 2
  %3 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %recipient, align 8, !tbaa !20
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %3, i64 0, i32 0
  %4 = load i32, i32* %type, align 8, !tbaa !17
  %call9 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 noundef %4, i32 noundef 4) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %5 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %recipient14 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %5, i64 0, i32 2
  %6 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %recipient14, align 8, !tbaa !20
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, %struct.GENERAL_NAME_st* %6, i64 0, i32 1
  %directoryName = bitcast %union.anon* %d to %struct.X509_name_st**
  %7 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !19
  %call15 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %7, %struct.X509_name_st* noundef %call) #7
  %call16 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call15, i32 noundef 0) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end12
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7, %if.end, %entry, %if.end19
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end7 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare dso_local i32 @ossl_cmp_hdr_set1_recipient(%struct.ossl_cmp_pkiheader_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_update_messageTime_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %hdrtm = alloca %struct.tm, align 8
  %tmptm = alloca %struct.tm, align 8
  %now = alloca i64, align 8
  %0 = bitcast %struct.tm* %hdrtm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #9
  %1 = bitcast %struct.tm* %tmptm to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #9
  %2 = bitcast i64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %call = tail call i64 @time(i64* noundef null) #7
  store i64 %call, i64* %now, align 8, !tbaa !21
  %call1 = call %struct.tm* @gmtime(i64* noundef nonnull %now) #7
  %3 = bitcast %struct.tm* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %1, i8* noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !22
  %call2 = call i64 @mktime(%struct.tm* noundef nonnull %tmptm) #7
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call3 = call i32 @ossl_cmp_hdr_update_messageTime(%struct.ossl_cmp_pkiheader_st* noundef %4) #7
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %5 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %messageTime = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %5, i64 0, i32 3
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %messageTime, align 8, !tbaa !25
  %call6 = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %6, %struct.tm* noundef nonnull %hdrtm) #7
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv8) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end
  %call13 = call i64 @mktime(%struct.tm* noundef nonnull %hdrtm) #7
  %call14 = call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i64 noundef %call2, i64 noundef %call13) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = call i64 @time(i64* noundef null) #7
  store i64 %call18, i64* %now, align 8, !tbaa !21
  %call19 = call %struct.tm* @gmtime(i64* noundef nonnull %now) #7
  %7 = bitcast %struct.tm* %call19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %1, i8* noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !22
  %call20 = call i64 @mktime(%struct.tm* noundef nonnull %tmptm) #7
  %call21 = call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i64 noundef %call13, i64 noundef %call20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end, %entry, %if.end17
  %retval.0 = phi i32 [ %call21, %if.end17 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i64 @mktime(%struct.tm* noundef) local_unnamed_addr #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_update_messageTime(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef, %struct.tm* noundef) local_unnamed_addr #2

declare dso_local i32 @test_time_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_set1_senderKID_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #7
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @rand_data, i64 0, i64 0), i32 noundef 16) #7
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call7 = tail call i32 @ossl_cmp_hdr_set1_senderKID(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.asn1_string_st* noundef %call) #7
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call7, i32 noundef 1) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %senderKID13 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %2, i64 0, i32 5
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderKID13, align 8, !tbaa !26
  %call14 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %3, %struct.asn1_string_st* noundef %call) #7
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #7
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %if.end11, %if.end6, %if.end
  %res.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end ], [ %spec.select, %if.end11 ]
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_set1_senderKID(%struct.ossl_cmp_pkiheader_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_push0_freeText_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #7
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef -1) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call6 = tail call i32 @ossl_cmp_hdr_push0_freeText(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.asn1_string_st* noundef %call) #7
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end5
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %freeText = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %2, i64 0, i32 10
  %3 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %freeText, align 8, !tbaa !27
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %3) #8
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef 0) #7
  %4 = bitcast i8* %call13 to %struct.asn1_string_st*
  %cmp = icmp eq %struct.asn1_string_st* %call, %4
  %conv = zext i1 %cmp to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv) #7
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %cleanup

err:                                              ; preds = %if.end10, %if.end5, %if.end
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 1, %if.end10 ]
  ret i32 %retval.0
}

declare dso_local %struct.asn1_string_st* @ASN1_UTF8STRING_new() local_unnamed_addr #2

declare dso_local i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_push0_freeText(%struct.ossl_cmp_pkiheader_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_push1_freeText_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_UTF8STRING_new() #7
  %0 = bitcast %struct.asn1_string_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 noundef -1) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call6 = tail call i32 @ossl_cmp_hdr_push1_freeText(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.asn1_string_st* noundef %call) #7
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call6, i32 noundef 1) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end5
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %freeText = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %2, i64 0, i32 10
  %3 = load %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_ASN1_UTF8STRING** %freeText, align 8, !tbaa !27
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %3) #8
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef 0) #7
  %4 = bitcast i8* %call13 to %struct.asn1_string_st*
  %call14 = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef %call, %struct.asn1_string_st* noundef %4) #7
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #7
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %if.end10, %if.end5, %if.end
  %res.0 = phi i32 [ 0, %if.end5 ], [ 0, %if.end ], [ %spec.select, %if.end10 ]
  tail call void @ASN1_UTF8STRING_free(%struct.asn1_string_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @ossl_cmp_hdr_push1_freeText(%struct.ossl_cmp_pkiheader_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_generalInfo_push0_item_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %call = tail call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() #7
  %0 = bitcast %struct.ossl_cmp_itav_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call2 = tail call i32 @ossl_cmp_hdr_generalInfo_push0_item(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.ossl_cmp_itav_st* noundef %call) #7
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %generalInfo = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %2, i64 0, i32 11
  %3 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %generalInfo, align 8, !tbaa !28
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %3) #8
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef 0) #7
  %4 = bitcast i8* %call9 to %struct.ossl_cmp_itav_st*
  %cmp = icmp eq %struct.ossl_cmp_itav_st* %call, %4
  %conv = zext i1 %cmp to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv) #7
  %tobool13.not = icmp ne i32 %call12, 0
  %. = zext i1 %tobool13.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end6 ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_new() local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_generalInfo_push0_item(%struct.ossl_cmp_pkiheader_st* noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_generalInfo_push1_items_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %oid = alloca i64, align 8
  %buf = alloca [20 x i8], align 16
  %itavs = alloca %struct.stack_st_OSSL_CMP_ITAV*, align 8
  %0 = bitcast i64* %oid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 14687496142204465, i64* %oid, align 8
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #9
  %2 = bitcast %struct.stack_st_OSSL_CMP_ITAV** %itavs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.stack_st_OSSL_CMP_ITAV* null, %struct.stack_st_OSSL_CMP_ITAV** %itavs, align 8, !tbaa !24
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #7
  %call1 = tail call %struct.asn1_type_st* @ASN1_TYPE_new() #7
  %3 = bitcast %struct.asn1_string_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i8* noundef %3) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.asn1_type_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i8* noundef %4) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %call, i64 noundef 88) #7
  tail call void @ASN1_TYPE_set(%struct.asn1_type_st* noundef %call1, i32 noundef 2, i8* noundef %3) #7
  %call8 = call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef nonnull %0, i32 noundef 1) #7
  %call9 = call %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef %call8, %struct.asn1_type_st* noundef %call1) #7
  %5 = bitcast %struct.ossl_cmp_itav_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i64 0, i64 0), i8* noundef %5) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %call1) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = call i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef nonnull %itavs, %struct.ossl_cmp_itav_st* noundef %call9) #7
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef %call9) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %6 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %7 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %itavs, align 8, !tbaa !24
  %call19 = call i32 @ossl_cmp_hdr_generalInfo_push1_items(%struct.ossl_cmp_pkiheader_st* noundef %6, %struct.stack_st_OSSL_CMP_ITAV* noundef %7) #7
  %call20 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32 noundef %call19, i32 noundef 1) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  %8 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %generalInfo = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %8, i64 0, i32 11
  %9 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %generalInfo, align 8, !tbaa !28
  %call25 = call fastcc %struct.stack_st* @ossl_check_const_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %9) #8
  %call26 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call25, i32 noundef 0) #7
  %10 = bitcast i8* %call26 to %struct.ossl_cmp_itav_st*
  %call28 = call %struct.asn1_object_st* @OSSL_CMP_ITAV_get0_type(%struct.ossl_cmp_itav_st* noundef %10) #7
  %call29 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 20, %struct.asn1_object_st* noundef %call28, i32 noundef 0) #7
  %call32 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef nonnull %1, i64 noundef 8) #10
  %call33 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call32, i32 noundef 0) #7
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.end23
  %call38 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call25, i32 noundef 0) #7
  %11 = bitcast i8* %call38 to %struct.ossl_cmp_itav_st*
  %call39 = call %struct.asn1_type_st* @OSSL_CMP_ITAV_get0_value(%struct.ossl_cmp_itav_st* noundef %11) #7
  %infoValue = getelementptr inbounds %struct.ossl_cmp_itav_st, %struct.ossl_cmp_itav_st* %call9, i64 0, i32 1
  %other = bitcast %union.anon.3* %infoValue to %struct.asn1_type_st**
  %12 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !19
  %call40 = call i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef %12, %struct.asn1_type_st* noundef %call39) #7
  %call41 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i32 noundef %call40, i32 noundef 0) #7
  %tobool42.not = icmp ne i32 %call41, 0
  %spec.select = zext i1 %tobool42.not to i32
  br label %err

err:                                              ; preds = %if.end36, %if.end23, %if.end18
  %res.0 = phi i32 [ 0, %if.end23 ], [ 0, %if.end18 ], [ %spec.select, %if.end36 ]
  %13 = load %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV** %itavs, align 8, !tbaa !24
  %call45 = call fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef %13) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call45, void (i8*)* noundef bitcast (void (%struct.ossl_cmp_itav_st*)* @OSSL_CMP_ITAV_free to void (i8*)*)) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.then17, %if.then12, %if.then5
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %if.then17 ], [ 0, %if.then12 ], [ 0, %if.then5 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare dso_local %struct.asn1_type_st* @ASN1_TYPE_new() local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @ASN1_TYPE_set(%struct.asn1_type_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_cmp_itav_st* @OSSL_CMP_ITAV_create(%struct.asn1_object_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_CMP_ITAV_push0_stack_item(%struct.stack_st_OSSL_CMP_ITAV** noundef, %struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_CMP_ITAV_free(%struct.ossl_cmp_itav_st* noundef) #2

declare dso_local i32 @ossl_cmp_hdr_generalInfo_push1_items(%struct.ossl_cmp_pkiheader_st* noundef, %struct.stack_st_OSSL_CMP_ITAV* noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_object_st* @OSSL_CMP_ITAV_get0_type(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare dso_local %struct.asn1_type_st* @OSSL_CMP_ITAV_get0_value(%struct.ossl_cmp_itav_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_TYPE_cmp(%struct.asn1_type_st* noundef, %struct.asn1_type_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OSSL_CMP_ITAV_sk_type(%struct.stack_st_OSSL_CMP_ITAV* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_CMP_ITAV* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_set_and_check_implicitConfirm_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %0 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call = tail call i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %0) #7
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call3 = tail call i32 @ossl_cmp_hdr_set_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %1) #7
  %cmp4 = icmp ne i32 %call3, 0
  %conv5 = zext i1 %cmp4 to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv5) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call9 = tail call i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef %2) #7
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv11) #7
  %tobool13 = icmp ne i32 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_has_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ossl_cmp_hdr_set_implicitConfirm(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_HDR_init_test(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #1 {
entry:
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 1
  %0 = load i32, i32* %expected, align 8, !tbaa !3
  %cmp_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %1 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %hdr = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %2 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call = tail call i32 @ossl_cmp_hdr_init(%struct.ossl_cmp_ctx_st* noundef %1, %struct.ossl_cmp_pkiheader_st* noundef %2) #7
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 noundef %0, i32 noundef %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %expected, align 8, !tbaa !3
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call6 = tail call i32 @ossl_cmp_hdr_get_pvno(%struct.ossl_cmp_pkiheader_st* noundef %4) #7
  %call7 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 408, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0), i32 noundef %call6, i32 noundef 2) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end4
  %5 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call12 = tail call %struct.asn1_string_st* @ossl_cmp_hdr_get0_senderNonce(%struct.ossl_cmp_pkiheader_st* noundef %5) #7
  %6 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %senderNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %6, i64 0, i32 39
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderNonce, align 8, !tbaa !12
  %call14 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %call12, %struct.asn1_string_st* noundef %7) #7
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.68, i64 0, i64 0), i32 noundef 0, i32 noundef %call14) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end10
  %8 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call20 = tail call %struct.asn1_string_st* @OSSL_CMP_HDR_get0_transactionID(%struct.ossl_cmp_pkiheader_st* noundef %8) #7
  %9 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %transactionID = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %9, i64 0, i32 38
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %transactionID, align 8, !tbaa !29
  %call22 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %call20, %struct.asn1_string_st* noundef %10) #7
  %cmp23 = icmp eq i32 %call22, 0
  %conv = zext i1 %cmp23 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.end18
  %11 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %hdr, align 8, !tbaa !11
  %call31 = tail call %struct.asn1_string_st* @OSSL_CMP_HDR_get0_recipNonce(%struct.ossl_cmp_pkiheader_st* noundef %11) #7
  %12 = load %struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_ctx_st** %cmp_ctx, align 8, !tbaa !9
  %recipNonce = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %12, i64 0, i32 40
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %recipNonce, align 8, !tbaa !30
  %cmp33.not = icmp eq %struct.asn1_string_st* %13, null
  br i1 %cmp33.not, label %if.end41, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end29
  %14 = bitcast %struct.asn1_string_st* %call31 to i8*
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i8* noundef %14) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call37 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef %call31, %struct.asn1_string_st* noundef nonnull %13) #7
  %call38 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.71, i64 0, i64 0), i32 noundef 0, i32 noundef %call37) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false, %if.end29
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.end18, %if.end10, %if.end4, %if.end, %entry, %if.end41
  %retval.0 = phi i32 [ 1, %if.end41 ], [ 0, %entry ], [ 1, %if.end ], [ 0, %if.end4 ], [ 0, %if.end10 ], [ 0, %if.end18 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare dso_local %struct.asn1_string_st* @OSSL_CMP_HDR_get0_transactionID(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @OSSL_CMP_HDR_get0_recipNonce(%struct.ossl_cmp_pkiheader_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 8}
!4 = !{!"test_fixture", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 24}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 16}
!10 = !{!4, !5, i64 0}
!11 = !{!4, !5, i64 24}
!12 = !{!13, !5, i64 288}
!13 = !{!"ossl_cmp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !8, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !8, i64 72, !5, i64 80, !5, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !14, i64 112, !5, i64 120, !5, i64 128, !8, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !14, i64 240, !5, i64 248, !8, i64 256, !8, i64 260, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !8, i64 320, !8, i64 324, !5, i64 328, !5, i64 336, !8, i64 344, !5, i64 352, !8, i64 360, !5, i64 368, !5, i64 376, !8, i64 384, !8, i64 388, !5, i64 392, !5, i64 400, !8, i64 408, !8, i64 412, !5, i64 416, !5, i64 424, !8, i64 432, !5, i64 440, !8, i64 448, !5, i64 456, !8, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !5, i64 8}
!16 = !{!"ossl_cmp_pkiheader_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!17 = !{!18, !8, i64 0}
!18 = !{!"GENERAL_NAME_st", !8, i64 0, !6, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!16, !5, i64 16}
!21 = !{!14, !14, i64 0}
!22 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23, i64 28, i64 4, !23, i64 32, i64 4, !23, i64 40, i64 8, !21, i64 48, i64 8, !24}
!23 = !{!8, !8, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!16, !5, i64 24}
!26 = !{!16, !5, i64 40}
!27 = !{!16, !5, i64 80}
!28 = !{!16, !5, i64 88}
!29 = !{!13, !5, i64 280}
!30 = !{!13, !5, i64 296}
