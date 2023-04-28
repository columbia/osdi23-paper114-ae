; ModuleID = 'crypto/x509/by_store.c'
source_filename = "crypto/x509/by_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_lookup_method_st = type { i8*, i32 (%struct.x509_lookup_st*)*, void (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.x509_lookup_st = type { i32, i32, %struct.x509_lookup_method_st*, i8*, %struct.x509_store_st* }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, i32 (%struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, i32 (%struct.x509_store_ctx_st*)*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_X509_OBJECT = type opaque
%struct.stack_st_X509_LOOKUP = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i32, i64, i32, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_OPENSSL_STRING*, i32, i8*, i8*, i64, i8*, i64 }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.stack_st_X509_CRL = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.evp_pkey_st = type opaque
%struct.ssl_dane_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.x509_object_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.stack_st = type opaque
%struct.ossl_store_search_st = type opaque
%struct.ossl_store_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_store_info_st = type opaque

@x509_store_lookup = internal global %struct.x509_lookup_method_st { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 (%struct.x509_lookup_st*)* null, void (%struct.x509_lookup_st*)* @by_store_free, i32 (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* @by_store_ctrl, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* @by_store_subject, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)* @by_store_subject_ex, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* @by_store_ctrl_ex }, align 8
@.str = private unnamed_addr constant [27 x i8] c"Load certs from STORE URIs\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/x509/by_store.c\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.x509_lookup_method_st* @X509_LOOKUP_store() local_unnamed_addr #0 {
entry:
  ret %struct.x509_lookup_method_st* @x509_store_lookup
}

; Function Attrs: noinline nounwind uwtable
define internal void @by_store_free(%struct.x509_lookup_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @X509_LOOKUP_get_method_data(%struct.x509_lookup_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.stack_st_OPENSSL_STRING*
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #4
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call1, void (i8*)* noundef nonnull @free_uri) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @by_store_ctrl(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** nocapture noundef readnone %retp) #1 {
entry:
  %call = tail call i32 @by_store_ctrl_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** noundef %retp, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @by_store_subject(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret) #1 {
entry:
  %call = tail call i32 @by_store_subject_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @by_store_subject_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #1 {
entry:
  %call = tail call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_name(%struct.X509_name_st* noundef %name) #3
  %call1 = tail call fastcc i32 @by_store(%struct.x509_lookup_st* noundef %ctx, %struct.ossl_store_search_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %call2 = tail call %struct.x509_store_st* @X509_LOOKUP_get_store(%struct.x509_lookup_st* noundef %ctx) #3
  %call3 = tail call %struct.stack_st_X509_OBJECT* @X509_STORE_get0_objects(%struct.x509_store_st* noundef %call2) #3
  tail call void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end20, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call %struct.x509_object_st* @X509_OBJECT_retrieve_by_subject(%struct.stack_st_X509_OBJECT* noundef %call3, i32 noundef %type, %struct.X509_name_st* noundef %name) #3
  %cmp.not = icmp eq %struct.x509_object_st* %call4, null
  br i1 %cmp.not, label %if.end20, label %if.then5

if.then5:                                         ; preds = %if.end
  switch i32 %type, label %if.end20 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.then5
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %call4, i64 0, i32 1
  %x509 = bitcast %union.anon.2* %data to %struct.x509_st**
  %0 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !4
  %call6 = tail call i32 @X509_OBJECT_set1_X509(%struct.x509_object_st* noundef %ret, %struct.x509_st* noundef %0) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end20, label %if.then8

if.then8:                                         ; preds = %sw.bb
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !4
  tail call void @X509_free(%struct.x509_st* noundef %1) #3
  br label %if.end20

sw.bb12:                                          ; preds = %if.then5
  %data13 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %call4, i64 0, i32 1
  %crl = bitcast %union.anon.2* %data13 to %struct.X509_crl_st**
  %2 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !4
  %call14 = tail call i32 @X509_OBJECT_set1_X509_CRL(%struct.x509_object_st* noundef %ret, %struct.X509_crl_st* noundef %2) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %sw.bb12
  %3 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !4
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %3) #3
  br label %if.end20

if.end20:                                         ; preds = %entry, %if.then5, %if.then8, %sw.bb, %if.then16, %sw.bb12, %if.end
  %ok.0 = phi i32 [ 0, %if.then5 ], [ %call14, %if.then16 ], [ 0, %sw.bb12 ], [ %call6, %if.then8 ], [ 0, %sw.bb ], [ 0, %if.end ], [ 0, %entry ]
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @by_store_ctrl_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** nocapture noundef readnone %retp, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #1 {
entry:
  switch i32 %cmd, label %return [
    i32 3, label %sw.bb
    i32 4, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i8* %argp, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %sw.bb
  %call = tail call i8* @X509_get_default_cert_dir_env() #3
  %call1 = tail call i8* @ossl_safe_getenv(i8* noundef %call) #3
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @X509_get_default_cert_dir() #3
  br label %if.end5

if.end5:                                          ; preds = %sw.bb, %if.then3, %if.end
  %argp.addr.1 = phi i8* [ %call4, %if.then3 ], [ %call1, %if.end ], [ %argp, %sw.bb ]
  %call6 = tail call i8* @X509_LOOKUP_get_method_data(%struct.x509_lookup_st* noundef %ctx) #3
  %0 = bitcast i8* %call6 to %struct.stack_st_OPENSSL_STRING*
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %call9 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #3
  %1 = bitcast %struct.stack_st* %call9 to %struct.stack_st_OPENSSL_STRING*
  %2 = bitcast %struct.stack_st* %call9 to i8*
  %call10 = tail call i32 @X509_LOOKUP_set_method_data(%struct.x509_lookup_st* noundef %ctx, i8* noundef %2) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  %uris.0 = phi %struct.stack_st_OPENSSL_STRING* [ %1, %if.then8 ], [ %0, %if.end5 ]
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %uris.0) #4
  %call13 = tail call i8* @CRYPTO_strdup(i8* noundef %argp.addr.1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 127) #3
  %call15 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call12, i8* noundef %call13) #3
  %cmp16 = icmp sgt i32 %call15, 0
  %conv = zext i1 %cmp16 to i32
  br label %return

sw.bb17:                                          ; preds = %entry
  %call18 = tail call fastcc i32 @cache_objects(%struct.x509_lookup_st* noundef %ctx, i8* noundef %argp, %struct.ossl_store_search_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  br label %return

return:                                           ; preds = %entry, %sw.bb17, %if.end11
  %retval.0 = phi i32 [ %call18, %sw.bb17 ], [ %conv, %if.end11 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @X509_LOOKUP_get_method_data(%struct.x509_lookup_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_uri(i8* noundef %data) #1 {
entry:
  tail call void @CRYPTO_free(i8* noundef %data, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 99) #3
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_name(%struct.X509_name_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @by_store(%struct.x509_lookup_st* noundef %ctx, %struct.ossl_store_search_st* noundef %criterion, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #1 {
entry:
  %call = tail call i8* @X509_LOOKUP_get_method_data(%struct.x509_lookup_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.stack_st_OPENSSL_STRING*
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #4
  %call21 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #3
  %cmp2 = icmp sgt i32 %call21, 0
  br i1 %cmp2, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #3
  %cmp = icmp slt i32 %inc, %call2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !7

for.body:                                         ; preds = %entry, %for.cond
  %i.03 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.03) #3
  %call5 = tail call fastcc i32 @cache_objects(%struct.x509_lookup_st* noundef %ctx, i8* noundef %call4, %struct.ossl_store_search_st* noundef %criterion, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %tobool.not = icmp eq i32 %call5, 0
  %inc = add nuw nsw i32 %i.03, 1
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %for.body, %entry
  %ok.1 = phi i32 [ 0, %entry ], [ %call5, %for.body ], [ 0, %for.cond ]
  ret i32 %ok.1
}

declare %struct.stack_st_X509_OBJECT* @X509_STORE_get0_objects(%struct.x509_store_st* noundef) local_unnamed_addr #2

declare %struct.x509_store_st* @X509_LOOKUP_get_store(%struct.x509_lookup_st* noundef) local_unnamed_addr #2

declare void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef) local_unnamed_addr #2

declare %struct.x509_object_st* @X509_OBJECT_retrieve_by_subject(%struct.stack_st_X509_OBJECT* noundef, i32 noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @X509_OBJECT_set1_X509(%struct.x509_object_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_OBJECT_set1_X509_CRL(%struct.x509_object_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cache_objects(%struct.x509_lookup_st* noundef %lctx, i8* noundef %uri, %struct.ossl_store_search_st* noundef %criterion, i32 noundef %depth, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #1 {
entry:
  %call = tail call %struct.x509_store_st* @X509_LOOKUP_get_store(%struct.x509_lookup_st* noundef %lctx) #3
  %call1 = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* noundef null, i8* noundef null, %struct.ossl_param_st* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #3
  %cmp = icmp eq %struct.ossl_store_ctx_st* %call1, null
  br i1 %cmp, label %cleanup28, label %if.end

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq %struct.ossl_store_search_st* %criterion, null
  br i1 %cmp2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef nonnull %call1, %struct.ossl_store_search_st* noundef nonnull %criterion) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %call661 = tail call %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef nonnull %call1) #3
  %cmp762 = icmp eq %struct.ossl_store_info_st* %call661, null
  br i1 %cmp762, label %for.end, label %if.end9.lr.ph

if.end9.lr.ph:                                    ; preds = %if.end5
  %cmp13 = icmp sgt i32 %depth, 0
  br label %if.end9

for.cond:                                         ; preds = %if.end23
  %call6 = tail call %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef nonnull %call1) #3
  %cmp7 = icmp eq %struct.ossl_store_info_st* %call6, null
  br i1 %cmp7, label %for.end, label %if.end9

if.end9:                                          ; preds = %if.end9.lr.ph, %for.cond
  %call663 = phi %struct.ossl_store_info_st* [ %call661, %if.end9.lr.ph ], [ %call6, %for.cond ]
  %call10 = tail call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %call663) #3
  switch i32 %call10, label %if.end23.thread [
    i32 1, label %if.then12
    i32 5, label %sw.bb
    i32 6, label %sw.bb20
  ]

if.then12:                                        ; preds = %if.end9
  br i1 %cmp13, label %if.then14, label %if.end23.thread

if.then14:                                        ; preds = %if.then12
  %call15 = tail call i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef nonnull %call663) #3
  %call16 = tail call fastcc i32 @cache_objects(%struct.x509_lookup_st* noundef %lctx, i8* noundef %call15, %struct.ossl_store_search_st* noundef %criterion, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  br label %if.end23

sw.bb:                                            ; preds = %if.end9
  %call18 = tail call %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef nonnull %call663) #3
  %call19 = tail call i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef %call, %struct.x509_st* noundef %call18) #3
  br label %if.end23

sw.bb20:                                          ; preds = %if.end9
  %call21 = tail call %struct.X509_crl_st* @OSSL_STORE_INFO_get0_CRL(%struct.ossl_store_info_st* noundef nonnull %call663) #3
  %call22 = tail call i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef %call, %struct.X509_crl_st* noundef %call21) #3
  br label %if.end23

if.end23.thread:                                  ; preds = %if.then12, %if.end9
  tail call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call663) #3
  br label %for.end

if.end23:                                         ; preds = %sw.bb, %sw.bb20, %if.then14
  %ok.1 = phi i32 [ %call16, %if.then14 ], [ %call22, %sw.bb20 ], [ %call19, %sw.bb ]
  tail call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call663) #3
  %tobool.not = icmp eq i32 %ok.1, 0
  br i1 %tobool.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end23, %if.end5, %if.end23.thread
  %ok.2.ph = phi i32 [ 0, %if.end23.thread ], [ 0, %if.end5 ], [ %ok.1, %for.cond ], [ 0, %if.end23 ]
  %call27 = tail call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef nonnull %call1) #3
  br label %cleanup28

cleanup28:                                        ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %ok.2.ph, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_param_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef, %struct.ossl_store_search_st* noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_add_cert(%struct.x509_store_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare i32 @X509_STORE_add_crl(%struct.x509_store_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.X509_crl_st* @OSSL_STORE_INFO_get0_CRL(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #2

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #2

declare i8* @X509_get_default_cert_dir_env() local_unnamed_addr #2

declare i8* @X509_get_default_cert_dir() local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @X509_LOOKUP_set_method_data(%struct.x509_lookup_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
