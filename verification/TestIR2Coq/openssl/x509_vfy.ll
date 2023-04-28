; ModuleID = 'crypto/x509/x509_vfy.c'
source_filename = "crypto/x509/x509_vfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
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
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_store_ctx_st = type { %struct.x509_store_st*, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509_CRL*, %struct.X509_VERIFY_PARAM_st*, i8*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, i32, i32, %struct.stack_st_X509*, %struct.X509_POLICY_TREE_st*, i32, i32, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_crl_st*, i32, i32, %struct.x509_store_ctx_st*, %struct.crypto_ex_data_st, %struct.ssl_dane_st*, i32, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_store_st = type { i32, %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_LOOKUP*, %struct.X509_VERIFY_PARAM_st*, {}*, i32 (i32, %struct.x509_store_ctx_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, {}*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, {}*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, {}*, %struct.crypto_ex_data_st, i32, i8* }
%struct.stack_st_X509_OBJECT = type opaque
%struct.stack_st_X509_LOOKUP = type opaque
%struct.stack_st_X509_CRL = type opaque
%struct.X509_VERIFY_PARAM_st = type { i8*, i64, i32, i64, i32, i32, i32, i32, %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_OPENSSL_STRING*, i32, i8*, i8*, i64, i8*, i64 }
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st_X509 = type opaque
%struct.X509_POLICY_TREE_st = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.1, %struct.X509_name_st* }
%union.anon.1 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.ssl_dane_st = type { %struct.dane_ctx_st*, %struct.stack_st_danetls_record*, %struct.stack_st_X509*, %struct.danetls_record_st*, %struct.x509_st*, i32, i32, i32, i64 }
%struct.dane_ctx_st = type { %struct.evp_md_st**, i8*, i8, i64 }
%struct.evp_md_st = type opaque
%struct.stack_st_danetls_record = type opaque
%struct.danetls_record_st = type { i8, i8, i8, i8*, i64, %struct.evp_pkey_st* }
%struct.stack_st = type opaque
%struct.X509_extension_st = type { %struct.asn1_object_st*, i32, %struct.asn1_string_st }
%struct.x509_purpose_st = type { i32, i32, i32, i32 (%struct.x509_purpose_st*, %struct.x509_st*, i32)*, i8*, i8*, i8* }
%struct.X509_name_entry_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, i32 }
%struct.GENERAL_NAME_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.engine_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_vfy.c\00", align 1
@__func__.X509_self_signed = private unnamed_addr constant [17 x i8] c"X509_self_signed\00", align 1
@__func__.X509_STORE_CTX_verify = private unnamed_addr constant [22 x i8] c"X509_STORE_CTX_verify\00", align 1
@__func__.X509_verify_cert = private unnamed_addr constant [17 x i8] c"X509_verify_cert\00", align 1
@__func__.X509_get_pubkey_parameters = private unnamed_addr constant [27 x i8] c"X509_get_pubkey_parameters\00", align 1
@__func__.X509_CRL_diff = private unnamed_addr constant [14 x i8] c"X509_CRL_diff\00", align 1
@__func__.X509_STORE_CTX_purpose_inherit = private unnamed_addr constant [31 x i8] c"X509_STORE_CTX_purpose_inherit\00", align 1
@__func__.X509_STORE_CTX_new_ex = private unnamed_addr constant [22 x i8] c"X509_STORE_CTX_new_ex\00", align 1
@__func__.X509_STORE_CTX_init = private unnamed_addr constant [20 x i8] c"X509_STORE_CTX_init\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@__func__.X509_build_chain = private unnamed_addr constant [17 x i8] c"X509_build_chain\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"decoded-from-explicit\00", align 1
@minbits_table = internal unnamed_addr constant [5 x i32] [i32 80, i32 112, i32 128, i32 192, i32 256], align 16
@__func__.check_name_constraints = private unnamed_addr constant [23 x i8] c"check_name_constraints\00", align 1
@__func__.check_policy = private unnamed_addr constant [13 x i8] c"check_policy\00", align 1
@__func__.dane_i2d = private unnamed_addr constant [9 x i8] c"dane_i2d\00", align 1
@__func__.build_chain = private unnamed_addr constant [12 x i8] c"build_chain\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_self_signed(%struct.x509_st* noundef %cert, i32 noundef %verify_signature) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %cert) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_self_signed, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef %cert) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %cert, i64 0, i32 8
  %0 = load i32, i32* %ex_flags, align 8, !tbaa !4
  %and = and i32 %0, 8192
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %tobool7.not = icmp eq i32 %verify_signature, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @X509_verify(%struct.x509_st* noundef nonnull %cert, %struct.evp_pkey_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3, %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call10, %if.end9 ], [ -1, %if.end ], [ 0, %if.end3 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_x509v3_cache_extensions(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_verify(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_verify(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509_STORE_CTX_verify, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #9
  br label %return

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %cmp1 = icmp eq %struct.x509_st* %0, null
  br i1 %cmp1, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp3 = icmp sgt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef 0) #9
  %3 = bitcast %struct.x509_st** %cert to i8**
  store i8* %call7, i8** %3, align 8, !tbaa !18
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %call10 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_verify_cert, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %cmp1 = icmp eq %struct.x509_st* %0, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_verify_cert, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 105, i8* noundef null) #9
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 69, i32* %error, align 8, !tbaa !21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %cmp4.not = icmp eq %struct.stack_st_X509* %1, null
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_verify_cert, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786689, i8* noundef null) #9
  %error6 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 69, i32* %error6, align 8, !tbaa !21
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %chain, %struct.x509_st* noundef nonnull %0, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %error11 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 17, i32* %error11, align 8, !tbaa !21
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  store i32 1, i32* %num_untrusted, align 4, !tbaa !23
  %2 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %call14 = tail call fastcc i32 @check_key_level(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %2) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %3 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %call17 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %3, i32 noundef 0, i32 noundef 66) #10
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %cleanup, label %if.end20

if.end20:                                         ; preds = %land.lhs.true, %if.end12
  %dane = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %4 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane, align 8, !tbaa !24
  %cmp21.not = icmp eq %struct.ssl_dane_st* %4, null
  br i1 %cmp21.not, label %cond.false, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %4, i64 0, i32 1
  %5 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !25
  %call24 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %5) #10
  %cmp25 = icmp sgt i32 %call24, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true22
  %call26 = tail call fastcc i32 @dane_verify(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true22, %if.end20
  %call27 = tail call fastcc i32 @verify_chain(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call26, %cond.true ], [ %call27, %cond.false ]
  %cmp28 = icmp slt i32 %cond, 1
  br i1 %cmp28, label %land.lhs.true29, label %cleanup

land.lhs.true29:                                  ; preds = %cond.end
  %error30 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  %6 = load i32, i32* %error30, align 8, !tbaa !21
  %cmp31 = icmp eq i32 %6, 0
  br i1 %cmp31, label %if.then32, label %cleanup

if.then32:                                        ; preds = %land.lhs.true29
  store i32 1, i32* %error30, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %land.lhs.true29, %if.then32, %land.lhs.true, %if.then10, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then5 ], [ -1, %if.then10 ], [ 0, %land.lhs.true ], [ %cond, %if.then32 ], [ %cond, %land.lhs.true29 ], [ %cond, %cond.end ]
  ret i32 %retval.0
}

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_key_level(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %cert) #9
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %auth_level = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 7
  %1 = load i32, i32* %auth_level, align 4, !tbaa !28
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = icmp ult i32 %1, 5
  %spec.store.select = select i1 %2, i32 %1, i32 5
  %call7 = tail call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef nonnull %call) #9
  %sub = add nsw i32 %spec.store.select, -1
  %3 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @minbits_table, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !30
  %cmp8 = icmp sge i32 %call7, %4
  %conv = zext i1 %cmp8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %conv, %if.end3 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %depth, i32 noundef %err) unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %depth, 0
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %error_depth, align 4, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 %depth, i32* %error_depth, align 4, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %depth.addr.0 = phi i32 [ %0, %if.then ], [ %depth, %if.else ]
  %cmp2.not = icmp eq %struct.x509_st* %x, null
  br i1 %cmp2.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %depth.addr.0) #9
  %2 = bitcast i8* %call3 to %struct.x509_st*
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi %struct.x509_st* [ %2, %cond.false ], [ %x, %if.end ]
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %cond, %struct.x509_st** %current_cert, align 8, !tbaa !32
  %cmp4.not = icmp eq i32 %err, 0
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %cond.end
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 %err, i32* %error, align 8, !tbaa !21
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %cond.end
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %3 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  %call7 = tail call i32 %3(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  ret i32 %call7
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dane_verify(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %cert1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.x509_st*, %struct.x509_st** %cert1, align 8, !tbaa !18
  %dane2 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %1 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane2, align 8, !tbaa !24
  tail call fastcc void @dane_reset(%struct.ssl_dane_st* noundef %1) #10
  %2 = load %struct.x509_st*, %struct.x509_st** %cert1, align 8, !tbaa !18
  %call = tail call fastcc i32 @dane_match(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %2, i32 noundef 0) #10
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.rhs, label %land.lhs.true7

lor.rhs:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.ssl_dane_st* %1, null
  br i1 %tobool.not, label %lor.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.rhs
  %umask = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 5
  %3 = load i32, i32* %umask, align 8, !tbaa !34
  %and = and i32 %3, 5
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.end, label %if.end37

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 6
  %4 = load i32, i32* %mdpth, align 4, !tbaa !35
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %land.lhs.true7, label %if.end37

land.lhs.true7:                                   ; preds = %entry, %lor.end
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call8 = tail call i32 @X509_get_pubkey_parameters(%struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef %5) #10
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true7
  %cmp10 = icmp sgt i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end
  %call12 = tail call fastcc i32 @check_leaf_suiteb(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %0) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then11
  %flags = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 8
  %6 = load i64, i64* %flags, align 8, !tbaa !36
  %and16 = and i64 %6, 1
  %cmp17 = icmp eq i64 %and16, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.end22

land.lhs.true18:                                  ; preds = %if.end15
  %call19 = tail call fastcc i32 @check_id(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %land.lhs.true18, %if.end15
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 0, i32* %error_depth, align 4, !tbaa !31
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %0, %struct.x509_st** %current_cert, align 8, !tbaa !32
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %7 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  %call23 = tail call i32 %7(i32 noundef 1, %struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %cmp25 = icmp slt i32 %call, 0
  br i1 %cmp25, label %if.then26, label %if.then31

if.then26:                                        ; preds = %if.end24
  %error_depth27 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 0, i32* %error_depth27, align 4, !tbaa !31
  %current_cert28 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %0, %struct.x509_st** %current_cert28, align 8, !tbaa !32
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 17, i32* %error, align 8, !tbaa !21
  br label %cleanup

if.then31:                                        ; preds = %if.end24
  %call32 = tail call fastcc i32 @check_leaf_suiteb(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %0) #10
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end35

if.end35:                                         ; preds = %if.then31
  %call36 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %0, i32 noundef 0, i32 noundef 65) #10
  br label %cleanup

if.end37:                                         ; preds = %land.lhs.true, %lor.end
  %call38 = tail call fastcc i32 @verify_chain(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true18, %if.then11, %land.lhs.true7, %if.end37, %if.end35, %if.then26, %if.end22
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -1, %if.then26 ], [ %call36, %if.end35 ], [ %call38, %if.end37 ], [ -1, %land.lhs.true7 ], [ 0, %if.then11 ], [ 0, %land.lhs.true18 ], [ 0, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_chain(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @build_chain(%struct.x509_store_ctx_st* noundef %ctx) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @check_extensions(%struct.x509_store_ctx_st* noundef %ctx) #10
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @check_auth_level(%struct.x509_store_ctx_st* noundef %ctx) #10
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call fastcc i32 @check_id(%struct.x509_store_ctx_st* noundef %ctx) #10
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call10 = tail call i32 @X509_get_pubkey_parameters(%struct.evp_pkey_st* noundef null, %struct.stack_st_X509* noundef %0) #10
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %check_revocation = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 10
  %check_revocation13 = bitcast {}** %check_revocation to i32 (%struct.x509_store_ctx_st*)**
  %1 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_revocation13, align 8, !tbaa !37
  %call14 = tail call i32 %1(%struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false12
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %3 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %3, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8, !tbaa !38
  %call17 = tail call i32 @X509_chain_check_suiteb(i32* noundef nonnull %error_depth, %struct.x509_st* noundef null, %struct.stack_st_X509* noundef %2, i64 noundef %4) #9
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %error_depth, align 4, !tbaa !31
  %call20 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null, i32 noundef %5, i32 noundef %call17) #10
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %cleanup, label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.end
  %verify = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 6
  %verify24 = bitcast {}** %verify to i32 (%struct.x509_store_ctx_st*)**
  %6 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %verify24, align 8, !tbaa !39
  %cmp25.not = icmp eq i32 (%struct.x509_store_ctx_st*)* %6, null
  br i1 %cmp25.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end23
  %call28 = tail call i32 %6(%struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  %call29 = tail call i32 @internal_verify(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond30 = phi i32 [ %call28, %cond.true ], [ %call29, %cond.false ]
  %cmp31 = icmp slt i32 %cond30, 1
  br i1 %cmp31, label %cleanup, label %if.end33

if.end33:                                         ; preds = %cond.end
  %call34 = tail call fastcc i32 @check_name_constraints(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @X509v3_asid_validate_path(%struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  %cmp39 = icmp slt i32 %call38, 1
  br i1 %cmp39, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @X509v3_addr_validate_path(%struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end41
  %7 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags47 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %7, i64 0, i32 3
  %8 = load i64, i64* %flags47, align 8, !tbaa !38
  %and = and i64 %8, 128
  %cmp48.not = icmp eq i64 %and, 0
  br i1 %cmp48.not, label %cleanup, label %if.then49

if.then49:                                        ; preds = %if.end45
  %check_policy = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 14
  %check_policy50 = bitcast {}** %check_policy to i32 (%struct.x509_store_ctx_st*)**
  %9 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_policy50, align 8, !tbaa !40
  %call51 = tail call i32 %9(%struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then49, %if.end41, %if.end37, %if.end33, %cond.end, %land.lhs.true, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false12
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %lor.lhs.false ], [ %call4, %lor.lhs.false3 ], [ 0, %lor.lhs.false6 ], [ -1, %lor.lhs.false9 ], [ %call14, %lor.lhs.false12 ], [ 0, %land.lhs.true ], [ %cond30, %cond.end ], [ %call34, %if.end33 ], [ %call38, %if.end37 ], [ %call42, %if.end41 ], [ %call51, %if.then49 ], [ %call42, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_x509_check_cert_time(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %1, 2
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %check_time = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 1
  br label %if.end8

if.else:                                          ; preds = %entry
  %and4 = and i64 %1, 2097152
  %cmp5.not = icmp eq i64 %and4, 0
  br i1 %cmp5.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.else, %if.then
  %ptime.0 = phi i64* [ %check_time, %if.then ], [ null, %if.else ]
  %call = tail call %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef %x) #9
  %call9 = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %call, i64* noundef %ptime.0) #10
  %cmp10 = icmp sgt i32 %call9, -1
  %cmp11 = icmp slt i32 %depth, 0
  %or.cond = and i1 %cmp11, %cmp10
  br i1 %or.cond, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end8
  %cmp14 = icmp eq i32 %call9, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.end19

land.lhs.true15:                                  ; preds = %if.end13
  %call16 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, i32 noundef %depth, i32 noundef 13) #10
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cleanup, label %if.end25

if.end19:                                         ; preds = %if.end13
  %cmp20 = icmp sgt i32 %call9, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.end25

land.lhs.true21:                                  ; preds = %if.end19
  %call22 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, i32 noundef %depth, i32 noundef 9) #10
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %land.lhs.true15, %land.lhs.true21, %if.end19
  %call26 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %x) #9
  %call27 = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %call26, i64* noundef %ptime.0) #10
  %cmp28 = icmp slt i32 %call27, 1
  %or.cond46 = and i1 %cmp11, %cmp28
  br i1 %or.cond46, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end25
  %cmp33 = icmp eq i32 %call27, 0
  br i1 %cmp33, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %if.end32
  %call35 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, i32 noundef %depth, i32 noundef 14) #10
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %cleanup, label %if.end44

if.end38:                                         ; preds = %if.end32
  %cmp39 = icmp slt i32 %call27, 0
  br i1 %cmp39, label %land.lhs.true40, label %if.end44

land.lhs.true40:                                  ; preds = %if.end38
  %call41 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, i32 noundef %depth, i32 noundef 10) #10
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %cleanup, label %if.end44

if.end44:                                         ; preds = %land.lhs.true34, %land.lhs.true40, %if.end38
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true40, %land.lhs.true34, %if.end25, %land.lhs.true21, %land.lhs.true15, %if.end8, %if.else, %if.end44
  %retval.0 = phi i32 [ 1, %if.end44 ], [ 1, %if.else ], [ 0, %if.end8 ], [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true21 ], [ 0, %if.end25 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true40 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_cmp_time(%struct.asn1_string_st* noundef %ctm, i64* noundef %cmp_time) local_unnamed_addr #0 {
entry:
  %day = alloca i32, align 4
  %sec = alloca i32, align 4
  %0 = bitcast i32* %day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %1 = bitcast i32* %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ctm, i64 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !41
  switch i32 %2, label %cleanup [
    i32 23, label %sw.bb
    i32 24, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ctm, i64 0, i32 0
  %3 = load i32, i32* %length, align 8, !tbaa !42
  %cmp.not = icmp eq i32 %3, 13
  br i1 %cmp.not, label %for.body.lr.ph, label %cleanup

sw.bb1:                                           ; preds = %entry
  %length2 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ctm, i64 0, i32 0
  %4 = load i32, i32* %length2, align 8, !tbaa !42
  %cmp3.not = icmp eq i32 %4, 15
  br i1 %cmp3.not, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb, %sw.bb1
  %length6 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ctm, i64 0, i32 0
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ctm, i64 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %5 = load i32, i32* %length6, align 8, !tbaa !42
  %sub = add nsw i32 %5, -1
  %6 = sext i32 %sub to i64
  %cmp7 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !43

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %7 = load i8*, i8** %data, align 8, !tbaa !45
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %indvars.iv
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !46
  %call = tail call i32 @ossl_ascii_isdigit(i8 noundef signext %8) #9
  %tobool.not = icmp eq i32 %call, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  %phi.cast = sext i32 %sub to i64
  %data10 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ctm, i64 0, i32 2
  %9 = load i8*, i8** %data10, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds i8, i8* %9, i64 %phi.cast
  %10 = load i8, i8* %arrayidx14, align 1, !tbaa !46
  %cmp15.not = icmp eq i8 %10, 90
  br i1 %cmp15.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %for.end
  %call19 = tail call %struct.asn1_string_st* @X509_time_adj(%struct.asn1_string_st* noundef null, i64 noundef 0, i64* noundef %cmp_time) #10
  %cmp20 = icmp eq %struct.asn1_string_st* %call19, null
  br i1 %cmp20, label %err, label %if.end23

if.end23:                                         ; preds = %if.end18
  %call24 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef nonnull %ctm, %struct.asn1_string_st* noundef nonnull %call19) #9
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %err, label %if.end28

if.end28:                                         ; preds = %if.end23
  %11 = load i32, i32* %day, align 4, !tbaa !30
  %cmp29 = icmp sgt i32 %11, -1
  %12 = load i32, i32* %sec, align 4
  %cmp31 = icmp sgt i32 %12, -1
  %13 = select i1 %cmp29, i1 %cmp31, i1 false
  %cond = select i1 %13, i32 -1, i32 1
  br label %err

err:                                              ; preds = %if.end23, %if.end18, %if.end28
  %ret.0 = phi i32 [ 0, %if.end18 ], [ 0, %if.end23 ], [ %cond, %if.end28 ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call19) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end, %entry, %sw.bb1, %sw.bb, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %sw.bb ], [ 0, %sw.bb1 ], [ 0, %entry ], [ 0, %for.end ], [ 0, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_get0_notBefore(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_cmp_current_time(%struct.asn1_string_st* noundef %ctm) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %ctm, i64* noundef null) #10
  ret i32 %call
}

declare i32 @ossl_ascii_isdigit(i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_time_adj(%struct.asn1_string_st* noundef %s, i64 noundef %offset_sec, i64* noundef %in_tm) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef %s, i32 noundef 0, i64 noundef %offset_sec, i64* noundef %in_tm) #10
  ret %struct.asn1_string_st* %call
}

declare i32 @ASN1_TIME_diff(i32* noundef, i32* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef %start, %struct.asn1_string_st* noundef %end) local_unnamed_addr #0 {
entry:
  %ref_time = alloca i64, align 8
  %0 = bitcast i64* %ref_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %vpm, null
  br i1 %cmp, label %if.end6, label %cond.end

cond.end:                                         ; preds = %entry
  %call = tail call i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm) #9
  %and = and i64 %call, 2
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %call2 = tail call i64 @X509_VERIFY_PARAM_get_time(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm) #9
  store i64 %call2, i64* %ref_time, align 8, !tbaa !47
  br label %if.end6

if.else:                                          ; preds = %cond.end
  %and3 = and i64 %call, 2097152
  %cmp4.not = icmp eq i64 %and3, 0
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %entry, %if.else, %if.then
  %time.0 = phi i64* [ %ref_time, %if.then ], [ null, %if.else ], [ null, %entry ]
  %cmp7.not = icmp eq %struct.asn1_string_st* %end, null
  br i1 %cmp7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call8 = call i32 @X509_cmp_time(%struct.asn1_string_st* noundef nonnull %end, i64* noundef %time.0) #10
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end6
  %cmp12.not = icmp eq %struct.asn1_string_st* %start, null
  br i1 %cmp12.not, label %if.end17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11
  %call14 = call i32 @X509_cmp_time(%struct.asn1_string_st* noundef nonnull %start, i64* noundef %time.0) #10
  %cmp15 = icmp sgt i32 %call14, 0
  br i1 %cmp15, label %cleanup, label %if.end17

if.end17:                                         ; preds = %land.lhs.true13, %if.end11
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true13, %land.lhs.true, %if.else, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 0, %if.else ], [ 1, %land.lhs.true ], [ -1, %land.lhs.true13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare i64 @X509_VERIFY_PARAM_get_time(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_gmtime_adj(%struct.asn1_string_st* noundef %s, i64 noundef %adj) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @X509_time_adj(%struct.asn1_string_st* noundef %s, i64 noundef %adj, i64* noundef null) #10
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @X509_time_adj_ex(%struct.asn1_string_st* noundef %s, i32 noundef %offset_day, i64 noundef %offset_sec, i64* noundef readonly %in_tm) local_unnamed_addr #0 {
entry:
  %t = alloca i64, align 8
  %0 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %tobool.not = icmp eq i64* %in_tm, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %in_tm, align 8, !tbaa !47
  store i64 %1, i64* %t, align 8, !tbaa !47
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i64 @time(i64* noundef nonnull %t) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp.not = icmp eq %struct.asn1_string_st* %s, null
  br i1 %cmp.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %s, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !48
  %and = and i64 %2, 64
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %s, i64 0, i32 1
  %3 = load i32, i32* %type, align 4, !tbaa !41
  switch i32 %3, label %if.end12 [
    i32 23, label %if.then4
    i32 24, label %if.then9
  ]

if.then4:                                         ; preds = %if.then2
  %4 = load i64, i64* %t, align 8, !tbaa !47
  %call5 = call %struct.asn1_string_st* @ASN1_UTCTIME_adj(%struct.asn1_string_st* noundef nonnull %s, i64 noundef %4, i32 noundef %offset_day, i64 noundef %offset_sec) #9
  br label %cleanup

if.then9:                                         ; preds = %if.then2
  %5 = load i64, i64* %t, align 8, !tbaa !47
  %call10 = call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_adj(%struct.asn1_string_st* noundef nonnull %s, i64 noundef %5, i32 noundef %offset_day, i64 noundef %offset_sec) #9
  br label %cleanup

if.end12:                                         ; preds = %if.then2, %land.lhs.true, %if.end
  %6 = load i64, i64* %t, align 8, !tbaa !47
  %call13 = call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef %s, i64 noundef %6, i32 noundef %offset_day, i64 noundef %offset_sec) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then4
  %retval.0 = phi %struct.asn1_string_st* [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ %call13, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #4

declare %struct.asn1_string_st* @ASN1_UTCTIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_get_pubkey_parameters(%struct.evp_pkey_st* noundef %pkey, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %pkey) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %chain) #10
  %call261 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #9
  %cmp362 = icmp sgt i32 %call261, 0
  br i1 %cmp362, label %for.body, label %if.then15

for.body:                                         ; preds = %if.end, %if.end13
  %i.063 = phi i32 [ %inc, %if.end13 ], [ 0, %if.end ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.063) #9
  %0 = bitcast i8* %call5 to %struct.x509_st*
  %call6 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %0) #9
  %cmp7 = icmp eq %struct.evp_pkey_st* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1986, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_get_pubkey_parameters, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 108, i8* noundef null) #9
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %call10 = tail call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef nonnull %call6) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond17, label %if.end13

if.end13:                                         ; preds = %if.end9
  %inc = add nuw nsw i32 %i.063, 1
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #9
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %if.then15, !llvm.loop !49

if.then15:                                        ; preds = %if.end13, %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1994, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.X509_get_pubkey_parameters, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 107, i8* noundef null) #9
  br label %cleanup

for.cond17:                                       ; preds = %if.end9, %for.body19
  %j.0.in = phi i32 [ %j.0, %for.body19 ], [ %i.063, %if.end9 ]
  %j.0 = add nsw i32 %j.0.in, -1
  %cmp18 = icmp sgt i32 %j.0.in, 0
  br i1 %cmp18, label %for.body19, label %for.end28

for.body19:                                       ; preds = %for.cond17
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %j.0) #9
  %1 = bitcast i8* %call21 to %struct.x509_st*
  %call22 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %1) #9
  %call23 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call22, %struct.evp_pkey_st* noundef nonnull %call6) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %for.cond17, !llvm.loop !50

for.end28:                                        ; preds = %for.cond17
  br i1 %cmp.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %for.end28
  %call31 = tail call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef nonnull %pkey, %struct.evp_pkey_st* noundef nonnull %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body19, %for.end28, %land.lhs.true, %if.then30, %if.then15, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then15 ], [ %call31, %if.then30 ], [ 1, %land.lhs.true ], [ 1, %for.end28 ], [ 0, %for.body19 ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @X509_CRL_diff(%struct.X509_crl_st* noundef %base, %struct.X509_crl_st* noundef %newer, %struct.evp_pkey_st* noundef %skey, %struct.evp_md_st* noundef %md, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %rvtmp = alloca %struct.x509_revoked_st*, align 8
  %base_crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %base, i64 0, i32 10
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number, align 8, !tbaa !51
  %cmp.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %base_crl_number1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %newer, i64 0, i32 10
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number1, align 8, !tbaa !51
  %cmp2.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2023, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 127, i8* noundef null) #9
  br label %cleanup104

if.end:                                           ; preds = %lor.lhs.false
  %crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %base, i64 0, i32 9
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number, align 8, !tbaa !54
  %cmp3 = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %crl_number5 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %newer, i64 0, i32 9
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number5, align 8, !tbaa !54
  %cmp6 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2028, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 130, i8* noundef null) #9
  br label %cleanup104

if.end8:                                          ; preds = %lor.lhs.false4
  %call = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %base) #9
  %call9 = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %newer) #9
  %call10 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call, %struct.X509_name_st* noundef %call9) #9
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2034, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 129, i8* noundef null) #9
  br label %cleanup104

if.end13:                                         ; preds = %if.end8
  %call14 = tail call fastcc i32 @crl_extension_match(%struct.X509_crl_st* noundef nonnull %base, %struct.X509_crl_st* noundef nonnull %newer, i32 noundef 90) #10
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2039, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 110, i8* noundef null) #9
  br label %cleanup104

if.end16:                                         ; preds = %if.end13
  %call17 = tail call fastcc i32 @crl_extension_match(%struct.X509_crl_st* noundef nonnull %base, %struct.X509_crl_st* noundef nonnull %newer, i32 noundef 770) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2043, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 128, i8* noundef null) #9
  br label %cleanup104

if.end20:                                         ; preds = %if.end16
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number5, align 8, !tbaa !54
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number, align 8, !tbaa !54
  %call23 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %4, %struct.asn1_string_st* noundef %5) #9
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2048, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 132, i8* noundef null) #9
  br label %cleanup104

if.end26:                                         ; preds = %if.end20
  %cmp27 = icmp ne %struct.evp_pkey_st* %skey, null
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end26
  %call28 = tail call i32 @X509_CRL_verify(%struct.X509_crl_st* noundef nonnull %base, %struct.evp_pkey_st* noundef nonnull %skey) #9
  %cmp29 = icmp slt i32 %call28, 1
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true
  %call31 = tail call i32 @X509_CRL_verify(%struct.X509_crl_st* noundef nonnull %newer, %struct.evp_pkey_st* noundef nonnull %skey) #9
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false30, %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2054, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 131, i8* noundef null) #9
  br label %cleanup104

if.end34:                                         ; preds = %lor.lhs.false30, %if.end26
  %libctx = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %base, i64 0, i32 16
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !55
  %propq = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %base, i64 0, i32 17
  %7 = load i8*, i8** %propq, align 8, !tbaa !56
  %call35 = tail call %struct.X509_crl_st* @X509_CRL_new_ex(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #9
  %cmp36 = icmp eq %struct.X509_crl_st* %call35, null
  br i1 %cmp36, label %memerr, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end34
  %call38 = tail call i32 @X509_CRL_set_version(%struct.X509_crl_st* noundef nonnull %call35, i64 noundef 1) #9
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %memerr, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false37
  %call42 = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %newer) #9
  %call43 = tail call i32 @X509_CRL_set_issuer_name(%struct.X509_crl_st* noundef nonnull %call35, %struct.X509_name_st* noundef %call42) #9
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %memerr, label %if.end46

if.end46:                                         ; preds = %if.end41
  %call47 = tail call %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef nonnull %newer) #9
  %call48 = tail call i32 @X509_CRL_set1_lastUpdate(%struct.X509_crl_st* noundef nonnull %call35, %struct.asn1_string_st* noundef %call47) #9
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %memerr, label %if.end51

if.end51:                                         ; preds = %if.end46
  %call52 = tail call %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef nonnull %newer) #9
  %call53 = tail call i32 @X509_CRL_set1_nextUpdate(%struct.X509_crl_st* noundef nonnull %call35, %struct.asn1_string_st* noundef %call52) #9
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %memerr, label %if.end56

if.end56:                                         ; preds = %if.end51
  %8 = bitcast %struct.asn1_string_st** %crl_number to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !54
  %call58 = tail call i32 @X509_CRL_add1_ext_i2d(%struct.X509_crl_st* noundef nonnull %call35, i32 noundef 140, i8* noundef %9, i32 noundef 1, i64 noundef 0) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %memerr, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end56
  %call62161 = tail call i32 @X509_CRL_get_ext_count(%struct.X509_crl_st* noundef nonnull %newer) #9
  %cmp63162 = icmp sgt i32 %call62161, 0
  br i1 %cmp63162, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call62 = tail call i32 @X509_CRL_get_ext_count(%struct.X509_crl_st* noundef %newer) #9
  %cmp63 = icmp slt i32 %inc, %call62
  br i1 %cmp63, label %for.body, label %for.end, !llvm.loop !57

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0163 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call64 = tail call %struct.X509_extension_st* @X509_CRL_get_ext(%struct.X509_crl_st* noundef %newer, i32 noundef %i.0163) #9
  %call65 = tail call i32 @X509_CRL_add_ext(%struct.X509_crl_st* noundef nonnull %call35, %struct.X509_extension_st* noundef %call64, i32 noundef -1) #9
  %tobool66.not = icmp eq i32 %call65, 0
  %inc = add nuw nsw i32 %i.0163, 1
  br i1 %tobool66.not, label %memerr, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call69 = tail call %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* noundef %newer) #9
  %call71 = call fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef %call69) #10
  %call72164 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call71) #9
  %cmp73165 = icmp sgt i32 %call72164, 0
  br i1 %cmp73165, label %for.body74.lr.ph, label %for.end95

for.body74.lr.ph:                                 ; preds = %for.end
  %10 = bitcast %struct.x509_revoked_st** %rvtmp to i8*
  br label %for.body74

for.body74:                                       ; preds = %for.body74.lr.ph, %for.inc93
  %i.1166 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc94, %for.inc93 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #11
  %call76 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call71, i32 noundef %i.1166) #9
  %serialNumber = bitcast i8* %call76 to %struct.asn1_string_st*
  %call77 = call i32 @X509_CRL_get0_by_serial(%struct.X509_crl_st* noundef %base, %struct.x509_revoked_st** noundef nonnull %rvtmp, %struct.asn1_string_st* noundef %serialNumber) #9
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %for.inc93

if.then79:                                        ; preds = %for.body74
  %11 = bitcast i8* %call76 to %struct.x509_revoked_st*
  %call80 = call %struct.x509_revoked_st* @X509_REVOKED_dup(%struct.x509_revoked_st* noundef %11) #9
  store %struct.x509_revoked_st* %call80, %struct.x509_revoked_st** %rvtmp, align 8, !tbaa !58
  %cmp81 = icmp eq %struct.x509_revoked_st* %call80, null
  br i1 %cmp81, label %cleanup89, label %if.end83

if.end83:                                         ; preds = %if.then79
  %call84 = call i32 @X509_CRL_add0_revoked(%struct.X509_crl_st* noundef nonnull %call35, %struct.x509_revoked_st* noundef nonnull %call80) #9
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %for.inc93

if.then86:                                        ; preds = %if.end83
  %12 = load %struct.x509_revoked_st*, %struct.x509_revoked_st** %rvtmp, align 8, !tbaa !58
  call void @X509_REVOKED_free(%struct.x509_revoked_st* noundef %12) #9
  br label %cleanup89

cleanup89:                                        ; preds = %if.then79, %if.then86
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11
  br label %memerr

for.inc93:                                        ; preds = %if.end83, %for.body74
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #11
  %inc94 = add nuw nsw i32 %i.1166, 1
  %call72 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call71) #9
  %cmp73 = icmp slt i32 %inc94, %call72
  br i1 %cmp73, label %for.body74, label %for.end95, !llvm.loop !59

for.end95:                                        ; preds = %for.inc93, %for.end
  %cmp98 = icmp ne %struct.evp_md_st* %md, null
  %or.cond = and i1 %cmp27, %cmp98
  br i1 %or.cond, label %land.lhs.true99, label %cleanup104

land.lhs.true99:                                  ; preds = %for.end95
  %call100 = call i32 @X509_CRL_sign(%struct.X509_crl_st* noundef nonnull %call35, %struct.evp_pkey_st* noundef nonnull %skey, %struct.evp_md_st* noundef nonnull %md) #9
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %memerr, label %cleanup104

memerr:                                           ; preds = %for.body, %cleanup89, %land.lhs.true99, %if.end56, %if.end51, %if.end46, %if.end41, %if.end34, %lor.lhs.false37
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2114, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.X509_CRL_diff, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %call35) #9
  br label %cleanup104

cleanup104:                                       ; preds = %for.end95, %land.lhs.true99, %memerr, %if.then33, %if.then25, %if.then19, %if.then15, %if.then12, %if.then7, %if.then
  %retval.0 = phi %struct.X509_crl_st* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.then12 ], [ null, %if.then25 ], [ null, %if.then33 ], [ null, %memerr ], [ null, %if.then19 ], [ null, %if.then15 ], [ %call35, %land.lhs.true99 ], [ %call35, %for.end95 ]
  ret %struct.X509_crl_st* %retval.0
}

declare i32 @X509_NAME_cmp(%struct.X509_name_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @crl_extension_match(%struct.X509_crl_st* noundef %a, %struct.X509_crl_st* noundef %b, i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_CRL_get_ext_by_NID(%struct.X509_crl_st* noundef %a, i32 noundef %nid, i32 noundef -1) #9
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_CRL_get_ext_by_NID(%struct.X509_crl_st* noundef %a, i32 noundef %nid, i32 noundef %call) #9
  %cmp2.not = icmp eq i32 %call1, -1
  br i1 %cmp2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = tail call %struct.X509_extension_st* @X509_CRL_get_ext(%struct.X509_crl_st* noundef %a, i32 noundef %call) #9
  %call5 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %call4) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %exta.0 = phi %struct.asn1_string_st* [ %call5, %if.end ], [ null, %entry ]
  %call7 = tail call i32 @X509_CRL_get_ext_by_NID(%struct.X509_crl_st* noundef %b, i32 noundef %nid, i32 noundef -1) #9
  %cmp8 = icmp sgt i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @X509_CRL_get_ext_by_NID(%struct.X509_crl_st* noundef %b, i32 noundef %nid, i32 noundef %call7) #9
  %cmp11.not = icmp eq i32 %call10, -1
  br i1 %cmp11.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then9
  %call14 = tail call %struct.X509_extension_st* @X509_CRL_get_ext(%struct.X509_crl_st* noundef %b, i32 noundef %call7) #9
  %call15 = tail call %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef %call14) #9
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.end6
  %extb.0 = phi %struct.asn1_string_st* [ %call15, %if.end13 ], [ null, %if.end6 ]
  %cmp17 = icmp eq %struct.asn1_string_st* %exta.0, null
  %cmp18 = icmp eq %struct.asn1_string_st* %extb.0, null
  %or.cond = select i1 %cmp17, i1 %cmp18, i1 false
  br i1 %or.cond, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end16
  %or.cond29 = select i1 %cmp17, i1 true, i1 %cmp18
  br i1 %or.cond29, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %exta.0, %struct.asn1_string_st* noundef nonnull %extb.0) #9
  %cmp26 = icmp eq i32 %call25, 0
  %conv = zext i1 %cmp26 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16, %if.then9, %if.then, %if.end24
  %retval.0 = phi i32 [ %conv, %if.end24 ], [ 0, %if.then ], [ 0, %if.then9 ], [ 1, %if.end16 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

declare i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_verify(%struct.X509_crl_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.X509_crl_st* @X509_CRL_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_set_version(%struct.X509_crl_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_CRL_set_issuer_name(%struct.X509_crl_st* noundef, %struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_set1_lastUpdate(%struct.X509_crl_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_set1_nextUpdate(%struct.X509_crl_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_add1_ext_i2d(%struct.X509_crl_st* noundef, i32 noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @X509_CRL_get_ext_count(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.X509_extension_st* @X509_CRL_get_ext(%struct.X509_crl_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_CRL_add_ext(%struct.X509_crl_st* noundef, %struct.X509_extension_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.stack_st_X509_REVOKED* @X509_CRL_get_REVOKED(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_REVOKED_sk_type(%struct.stack_st_X509_REVOKED* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_REVOKED* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_CRL_get0_by_serial(%struct.X509_crl_st* noundef, %struct.x509_revoked_st** noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.x509_revoked_st* @X509_REVOKED_dup(%struct.x509_revoked_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_add0_revoked(%struct.X509_crl_st* noundef, %struct.x509_revoked_st* noundef) local_unnamed_addr #2

declare void @X509_REVOKED_free(%struct.x509_revoked_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_sign(%struct.X509_crl_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_set_ex_data(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef %idx, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 31
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %data) #9
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @X509_STORE_CTX_get_ex_data(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 31
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #9
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  %0 = load i32, i32* %error, align 8, !tbaa !21
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set_error(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %err) local_unnamed_addr #6 {
entry:
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 %err, i32* %error, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_STORE_CTX_get_error_depth(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %0 = load i32, i32* %error_depth, align 4, !tbaa !31
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set_error_depth(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %depth) local_unnamed_addr #6 {
entry:
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 %depth, i32* %error_depth, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @X509_STORE_CTX_get_current_cert(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %0 = load %struct.x509_st*, %struct.x509_st** %current_cert, align 8, !tbaa !32
  ret %struct.x509_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set_current_cert(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #6 {
entry:
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* %x, %struct.x509_st** %current_cert, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* @X509_STORE_CTX_get0_chain(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  ret %struct.stack_st_X509* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @X509_STORE_CTX_get1_chain(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %cmp = icmp eq %struct.stack_st_X509* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef nonnull %0) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.stack_st_X509* [ %call, %if.end ], [ null, %entry ]
  ret %struct.stack_st_X509* %retval.0
}

declare %struct.stack_st_X509* @X509_chain_up_ref(%struct.stack_st_X509* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @X509_STORE_CTX_get0_current_issuer(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %current_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 26
  %0 = load %struct.x509_st*, %struct.x509_st** %current_issuer, align 8, !tbaa !60
  ret %struct.x509_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_crl_st* @X509_STORE_CTX_get0_current_crl(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %current_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 27
  %0 = load %struct.X509_crl_st*, %struct.X509_crl_st** %current_crl, align 8, !tbaa !61
  ret %struct.X509_crl_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_store_ctx_st* @X509_STORE_CTX_get0_parent_ctx(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  %0 = load %struct.x509_store_ctx_st*, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  ret %struct.x509_store_ctx_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set_cert(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #6 {
entry:
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  store %struct.x509_st* %x, %struct.x509_st** %cert, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set0_crls(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.stack_st_X509_CRL* noundef %sk) local_unnamed_addr #6 {
entry:
  %crls = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 3
  store %struct.stack_st_X509_CRL* %sk, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_set_purpose(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_STORE_CTX_purpose_inherit(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef 0, i32 noundef %purpose, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_purpose_inherit(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %def_purpose, i32 noundef %purpose, i32 noundef %trust) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %purpose, 0
  %spec.select = select i1 %cmp, i32 %def_purpose, i32 %purpose
  %cmp1 = icmp ne i32 %spec.select, 0
  br i1 %cmp1, label %if.then2, label %if.end20

if.then2:                                         ; preds = %entry
  %call = tail call i32 @X509_PURPOSE_get_by_id(i32 noundef %spec.select) #9
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2239, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.X509_STORE_CTX_purpose_inherit, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 121, i8* noundef null) #9
  br label %cleanup44

if.end5:                                          ; preds = %if.then2
  %call6 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %call) #9
  %trust7 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %call6, i64 0, i32 1
  %0 = load i32, i32* %trust7, align 4, !tbaa !64
  %cmp8 = icmp eq i32 %0, 0
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end5
  %call10 = tail call i32 @X509_PURPOSE_get_by_id(i32 noundef %def_purpose) #9
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2251, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.X509_STORE_CTX_purpose_inherit, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 121, i8* noundef null) #9
  br label %cleanup44

if.end13:                                         ; preds = %if.then9
  %call14 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %call10) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end5
  %ptmp.0 = phi %struct.x509_purpose_st* [ %call14, %if.end13 ], [ %call6, %if.end5 ]
  %cmp16 = icmp eq i32 %trust, 0
  br i1 %cmp16, label %if.then17, label %if.then22

if.then17:                                        ; preds = %if.end15
  %trust18 = getelementptr inbounds %struct.x509_purpose_st, %struct.x509_purpose_st* %ptmp.0, i64 0, i32 1
  %1 = load i32, i32* %trust18, align 4, !tbaa !64
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %entry
  %trust.addr.2 = phi i32 [ %trust, %entry ], [ %1, %if.then17 ]
  %cmp21.not = icmp eq i32 %trust.addr.2, 0
  br i1 %cmp21.not, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end15, %if.end20
  %trust.addr.269 = phi i32 [ %trust.addr.2, %if.end20 ], [ %trust, %if.end15 ]
  %call23 = tail call i32 @X509_TRUST_get_by_id(i32 noundef %trust.addr.269) #9
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2263, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.X509_STORE_CTX_purpose_inherit, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 120, i8* noundef null) #9
  br label %cleanup44

if.end27:                                         ; preds = %if.then22, %if.end20
  %cmp2171 = phi i1 [ true, %if.then22 ], [ false, %if.end20 ]
  %trust.addr.270 = phi i32 [ %trust.addr.269, %if.then22 ], [ 0, %if.end20 ]
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %2 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %purpose28 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %2, i64 0, i32 4
  %3 = load i32, i32* %purpose28, align 8, !tbaa !66
  %cmp29 = icmp eq i32 %3, 0
  %or.cond = and i1 %cmp1, %cmp29
  br i1 %or.cond, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  store i32 %spec.select, i32* %purpose28, align 8, !tbaa !66
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27
  %trust36 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %2, i64 0, i32 5
  %4 = load i32, i32* %trust36, align 4, !tbaa !67
  %cmp37 = icmp eq i32 %4, 0
  %or.cond45 = and i1 %cmp2171, %cmp37
  br i1 %or.cond45, label %if.then40, label %cleanup44

if.then40:                                        ; preds = %if.end34
  store i32 %trust.addr.270, i32* %trust36, align 4, !tbaa !67
  br label %cleanup44

cleanup44:                                        ; preds = %if.then4, %if.then12, %if.end34, %if.then40, %if.then25
  %retval.1 = phi i32 [ 0, %if.then25 ], [ 1, %if.then40 ], [ 1, %if.end34 ], [ 0, %if.then12 ], [ 0, %if.then4 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_set_trust(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %trust) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_STORE_CTX_purpose_inherit(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef 0, i32 noundef 0, i32 noundef %trust) #10
  ret i32 %call
}

declare i32 @X509_PURPOSE_get_by_id(i32 noundef) local_unnamed_addr #2

declare %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef) local_unnamed_addr #2

declare i32 @X509_TRUST_get_by_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 272, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2277) #9
  %0 = bitcast i8* %call to %struct.x509_store_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %libctx1 = getelementptr inbounds i8, i8* %call, i64 256
  %1 = bitcast i8* %libctx1 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !68
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2286) #9
  %propq5 = getelementptr inbounds i8, i8* %call, i64 264
  %2 = bitcast i8* %propq5 to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !69
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.then3
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2288) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then8
  %.sink = phi i32 [ 2289, %if.then8 ], [ 2280, %entry ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509_STORE_CTX_new_ex, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %if.then3
  %retval.0 = phi %struct.x509_store_ctx_st* [ %0, %if.then3 ], [ %0, %if.end ], [ null, %cleanup.sink.split ]
  ret %struct.x509_store_ctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #10
  ret %struct.x509_store_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @X509_STORE_CTX_cleanup(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %propq = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 35
  %0 = load i8*, i8** %propq, align 8, !tbaa !69
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2310) #9
  %1 = bitcast %struct.x509_store_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2311) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_cleanup(%struct.x509_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cleanup = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 17
  %cleanup1 = bitcast {}** %cleanup to i32 (%struct.x509_store_ctx_st*)**
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %cleanup1, align 8, !tbaa !70
  %cmp.not = icmp eq i32 (%struct.x509_store_ctx_st*)* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %0(%struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  store i32 (%struct.x509_store_ctx_st*)* null, i32 (%struct.x509_store_ctx_st*)** %cleanup1, align 8, !tbaa !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %cmp6.not = icmp eq %struct.X509_VERIFY_PARAM_st* %1, null
  br i1 %cmp6.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  %2 = load %struct.x509_store_ctx_st*, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  %cmp8 = icmp eq %struct.x509_store_ctx_st* %2, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef nonnull %1) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  store %struct.X509_VERIFY_PARAM_st* null, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end
  %tree = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 21
  %3 = load %struct.X509_POLICY_TREE_st*, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !71
  tail call void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef %3) #9
  store %struct.X509_POLICY_TREE_st* null, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !71
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call15, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %5 = bitcast %struct.x509_store_ctx_st* %ctx to i8*
  %ex_data = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 31
  tail call void @CRYPTO_free_ex_data(i32 noundef 5, i8* noundef %5, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #9
  %6 = bitcast %struct.crypto_ex_data_st* %ex_data to i8*
  %call19 = tail call i8* @memset(i8* noundef nonnull %6, i32 noundef 0, i64 noundef 16) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef %x509, %struct.stack_st_X509* noundef %chain) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_store_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2320, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.X509_STORE_CTX_init, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup160

if.end:                                           ; preds = %entry
  tail call void @X509_STORE_CTX_cleanup(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %store1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 0
  store %struct.x509_store_st* %store, %struct.x509_store_st** %store1, align 8, !tbaa !72
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  store %struct.x509_st* %x509, %struct.x509_st** %cert, align 8, !tbaa !18
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  store %struct.stack_st_X509* %chain, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %crls = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 3
  store %struct.stack_st_X509_CRL* null, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !63
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  store i32 0, i32* %num_untrusted, align 4, !tbaa !23
  %other_ctx = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 5
  store i8* null, i8** %other_ctx, align 8, !tbaa !73
  %valid = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 18
  store i32 0, i32* %valid, align 8, !tbaa !74
  %chain2 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain2, align 8, !tbaa !22
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 0, i32* %error, align 8, !tbaa !21
  %explicit_policy = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 22
  store i32 0, i32* %explicit_policy, align 8, !tbaa !75
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 0, i32* %error_depth, align 4, !tbaa !31
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %0 = bitcast %struct.x509_st** %current_cert to <2 x %struct.x509_st*>*
  store <2 x %struct.x509_st*> zeroinitializer, <2 x %struct.x509_st*>* %0, align 8, !tbaa !58
  %current_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 27
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %current_crl, align 8, !tbaa !61
  %current_crl_score = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 28
  store i32 0, i32* %current_crl_score, align 8, !tbaa !76
  %current_reasons = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 29
  store i32 0, i32* %current_reasons, align 4, !tbaa !77
  %tree = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 21
  store %struct.X509_POLICY_TREE_st* null, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !71
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  store %struct.x509_store_ctx_st* null, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  %dane = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  store %struct.ssl_dane_st* null, %struct.ssl_dane_st** %dane, align 8, !tbaa !24
  %bare_ta_signed = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 33
  store i32 0, i32* %bare_ta_signed, align 8, !tbaa !78
  %ex_data = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 31
  %1 = bitcast %struct.crypto_ex_data_st* %ex_data to i8*
  %call = tail call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 16) #9
  %cmp3.not = icmp eq %struct.x509_store_st* %store, null
  br i1 %cmp3.not, label %if.end111.thread292, label %land.lhs.true

if.end111.thread292:                              ; preds = %if.end
  %cleanup8 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 17
  %cleanup9 = bitcast {}** %cleanup8 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* null, i32 (%struct.x509_store_ctx_st*)** %cleanup9, align 8, !tbaa !70
  %check_issued17272 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 9
  store i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* @check_issued, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued17272, align 8, !tbaa !79
  %get_issuer26274 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 8
  store i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* @X509_STORE_CTX_get1_issuer, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer26274, align 8, !tbaa !80
  %verify_cb35276 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  store i32 (i32, %struct.x509_store_ctx_st*)* @null_callback, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb35276, align 8, !tbaa !33
  %verify47278 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 6
  %verify48279 = bitcast {}** %verify47278 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* @internal_verify, i32 (%struct.x509_store_ctx_st*)** %verify48279, align 8, !tbaa !39
  %check_revocation60281 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 10
  %check_revocation61282 = bitcast {}** %check_revocation60281 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* @check_revocation, i32 (%struct.x509_store_ctx_st*)** %check_revocation61282, align 8, !tbaa !37
  %get_crl70284 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 11
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* null, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %get_crl70284, align 8, !tbaa !81
  %check_crl79286 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 12
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* @check_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl79286, align 8, !tbaa !82
  %cert_crl88288 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 13
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* @cert_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl88288, align 8, !tbaa !83
  %check_policy100290 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 14
  %check_policy101291 = bitcast {}** %check_policy100290 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* @check_policy, i32 (%struct.x509_store_ctx_st*)** %check_policy101291, align 8, !tbaa !40
  %lookup_certs110293 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 15
  store %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_CTX_get1_certs, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs110293, align 8, !tbaa !84
  br label %if.end120

land.lhs.true:                                    ; preds = %if.end
  %cleanup = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 15
  %cleanup5 = bitcast {}** %cleanup to i32 (%struct.x509_store_ctx_st*)**
  %2 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %cleanup5, align 8, !tbaa !85
  %cleanup6 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 17
  %cleanup7 = bitcast {}** %cleanup6 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* %2, i32 (%struct.x509_store_ctx_st*)** %cleanup7, align 8, !tbaa !70
  %check_issued = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 7
  %3 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !87
  %cmp12.not = icmp eq i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* %3, null
  %spec.select = select i1 %cmp12.not, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* @check_issued, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* %3
  %4 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 9
  store i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* %spec.select, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %4, align 8
  %get_issuer = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 6
  %5 = load i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer, align 8, !tbaa !88
  %cmp21.not = icmp eq i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* %5, null
  %.sink304 = select i1 %cmp21.not, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* @X509_STORE_CTX_get1_issuer, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* %5
  %6 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 8
  store i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* %.sink304, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %6, align 8
  %verify_cb = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 5
  %7 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !89
  %cmp30.not = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %7, null
  %.sink305 = select i1 %cmp30.not, i32 (i32, %struct.x509_store_ctx_st*)* @null_callback, i32 (i32, %struct.x509_store_ctx_st*)* %7
  %8 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  store i32 (i32, %struct.x509_store_ctx_st*)* %.sink305, i32 (i32, %struct.x509_store_ctx_st*)** %8, align 8
  %verify = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 4
  %verify39 = bitcast {}** %verify to i32 (%struct.x509_store_ctx_st*)**
  %9 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %verify39, align 8, !tbaa !90
  %cmp40.not = icmp eq i32 (%struct.x509_store_ctx_st*)* %9, null
  %internal_verify.sink = select i1 %cmp40.not, i32 (%struct.x509_store_ctx_st*)* @internal_verify, i32 (%struct.x509_store_ctx_st*)* %9
  %verify47 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 6
  %verify48 = bitcast {}** %verify47 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* %internal_verify.sink, i32 (%struct.x509_store_ctx_st*)** %verify48, align 8, !tbaa !39
  %check_revocation = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 8
  %check_revocation52 = bitcast {}** %check_revocation to i32 (%struct.x509_store_ctx_st*)**
  %10 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_revocation52, align 8, !tbaa !91
  %cmp53.not = icmp eq i32 (%struct.x509_store_ctx_st*)* %10, null
  %check_revocation.sink = select i1 %cmp53.not, i32 (%struct.x509_store_ctx_st*)* @check_revocation, i32 (%struct.x509_store_ctx_st*)* %10
  %check_revocation60 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 10
  %check_revocation61 = bitcast {}** %check_revocation60 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* %check_revocation.sink, i32 (%struct.x509_store_ctx_st*)** %check_revocation61, align 8, !tbaa !37
  %get_crl = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 9
  %11 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %get_crl, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 11
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* %11, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %12, align 8
  %check_crl = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 10
  %13 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl, align 8, !tbaa !93
  %cmp74.not = icmp eq i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* %13, null
  %.sink307 = select i1 %cmp74.not, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* @check_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* %13
  %14 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 12
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* %.sink307, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %14, align 8
  %cert_crl = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 11
  %15 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl, align 8, !tbaa !94
  %cmp83.not = icmp eq i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* %15, null
  %.sink308 = select i1 %cmp83.not, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* @cert_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* %15
  %16 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 13
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* %.sink308, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %16, align 8
  %check_policy = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 12
  %check_policy92 = bitcast {}** %check_policy to i32 (%struct.x509_store_ctx_st*)**
  %17 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_policy92, align 8, !tbaa !95
  %cmp93.not = icmp eq i32 (%struct.x509_store_ctx_st*)* %17, null
  %check_policy.sink = select i1 %cmp93.not, i32 (%struct.x509_store_ctx_st*)* @check_policy, i32 (%struct.x509_store_ctx_st*)* %17
  %check_policy100 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 14
  %check_policy101 = bitcast {}** %check_policy100 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* %check_policy.sink, i32 (%struct.x509_store_ctx_st*)** %check_policy101, align 8, !tbaa !40
  %lookup_certs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 13
  %18 = load %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs, align 8, !tbaa !96
  %cmp105.not = icmp eq %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %18, null
  %.sink309 = select i1 %cmp105.not, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_CTX_get1_certs, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %18
  %19 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 15
  store %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %.sink309, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %19, align 8
  %lookup_crls = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 14
  %20 = load %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls, align 8, !tbaa !97
  %cmp114.not = icmp eq %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %20, null
  br i1 %cmp114.not, label %if.end120, label %if.end120.thread

if.end120:                                        ; preds = %land.lhs.true, %if.end111.thread292
  %lookup_crls119 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 16
  store %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_CTX_get1_crls, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls119, align 8, !tbaa !98
  %call121 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #9
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  store %struct.X509_VERIFY_PARAM_st* %call121, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %cmp123 = icmp eq %struct.X509_VERIFY_PARAM_st* %call121, null
  br i1 %cmp123, label %err, label %if.end125

if.end120.thread:                                 ; preds = %land.lhs.true
  %lookup_crls117 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 16
  store %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %20, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls117, align 8, !tbaa !98
  %call121294 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #9
  %param295 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  store %struct.X509_VERIFY_PARAM_st* %call121294, %struct.X509_VERIFY_PARAM_st** %param295, align 8, !tbaa !27
  %cmp123296 = icmp eq %struct.X509_VERIFY_PARAM_st* %call121294, null
  br i1 %cmp123296, label %err, label %if.then127

if.end125:                                        ; preds = %if.end120
  br i1 %cmp3.not, label %if.else131, label %if.then127

if.then127:                                       ; preds = %if.end120.thread, %if.end125
  %call121297303 = phi %struct.X509_VERIFY_PARAM_st* [ %call121, %if.end125 ], [ %call121294, %if.end120.thread ]
  %param298302 = phi %struct.X509_VERIFY_PARAM_st** [ %param, %if.end125 ], [ %param295, %if.end120.thread ]
  %param129 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 3
  %21 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param129, align 8, !tbaa !99
  %call130 = tail call i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call121297303, %struct.X509_VERIFY_PARAM_st* noundef %21) #9
  %phi.cmp = icmp eq i32 %call130, 0
  br i1 %phi.cmp, label %err, label %if.then127.if.then134_crit_edge

if.then127.if.then134_crit_edge:                  ; preds = %if.then127
  %.pre = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param298302, align 8, !tbaa !27
  br label %if.then134

if.else131:                                       ; preds = %if.end125
  %inh_flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %call121, i64 0, i32 2
  %22 = load i32, i32* %inh_flags, align 8, !tbaa !100
  %or = or i32 %22, 17
  store i32 %or, i32* %inh_flags, align 8, !tbaa !100
  br label %if.then134

if.then134:                                       ; preds = %if.then127.if.then134_crit_edge, %if.else131
  %23 = phi %struct.X509_VERIFY_PARAM_st* [ %call121, %if.else131 ], [ %.pre, %if.then127.if.then134_crit_edge ]
  %param298301 = phi %struct.X509_VERIFY_PARAM_st** [ %param, %if.else131 ], [ %param298302, %if.then127.if.then134_crit_edge ]
  %call136 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_lookup(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #9
  %call137 = tail call i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef %23, %struct.X509_VERIFY_PARAM_st* noundef %call136) #9
  %phi.cmp270 = icmp eq i32 %call137, 0
  br i1 %phi.cmp270, label %err, label %if.end141

if.end141:                                        ; preds = %if.then134
  %24 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param298301, align 8, !tbaa !27
  %trust = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %24, i64 0, i32 5
  %25 = load i32, i32* %trust, align 4, !tbaa !67
  %cmp143 = icmp eq i32 %25, 0
  br i1 %cmp143, label %if.then144, label %if.end154

if.then144:                                       ; preds = %if.end141
  %purpose = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %24, i64 0, i32 4
  %26 = load i32, i32* %purpose, align 8, !tbaa !66
  %call146 = tail call i32 @X509_PURPOSE_get_by_id(i32 noundef %26) #9
  %call147 = tail call %struct.x509_purpose_st* @X509_PURPOSE_get0(i32 noundef %call146) #9
  %cmp148.not = icmp eq %struct.x509_purpose_st* %call147, null
  br i1 %cmp148.not, label %if.end154, label %if.then149

if.then149:                                       ; preds = %if.then144
  %call150 = tail call i32 @X509_PURPOSE_get_trust(%struct.x509_purpose_st* noundef nonnull %call147) #9
  %27 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param298301, align 8, !tbaa !27
  %trust152 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %27, i64 0, i32 5
  store i32 %call150, i32* %trust152, align 4, !tbaa !67
  br label %if.end154

if.end154:                                        ; preds = %if.then144, %if.then149, %if.end141
  %28 = bitcast %struct.x509_store_ctx_st* %ctx to i8*
  %call156 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 5, i8* noundef %28, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #9
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %cleanup160

err:                                              ; preds = %if.end154, %if.then134, %if.then127, %if.end120, %if.end120.thread
  %.sink = phi i32 [ 2411, %if.end120.thread ], [ 2411, %if.end120 ], [ 2426, %if.then127 ], [ 2426, %if.then134 ], [ 2445, %if.end154 ]
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.X509_STORE_CTX_init, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  tail call void @X509_STORE_CTX_cleanup(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup160

cleanup160:                                       ; preds = %if.end154, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 1, %if.end154 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_issued(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.x509_st* noundef %x, %struct.x509_st* noundef %issuer) #0 {
entry:
  %call = tail call i32 @ossl_x509_likely_issued(%struct.x509_st* noundef %issuer, %struct.x509_st* noundef %x) #9
  switch i32 %call, label %if.then2 [
    i32 0, label %cleanup
    i32 29, label %if.end3
  ]

if.then2:                                         ; preds = %entry
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 %call, i32* %error, align 8, !tbaa !21
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_STORE_CTX_get1_issuer(%struct.x509_st** noundef, %struct.x509_store_ctx_st* noundef, %struct.x509_st* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @null_callback(i32 noundef returned %ok, %struct.x509_store_ctx_st* nocapture noundef readnone %e) #3 {
entry:
  ret i32 %ok
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @internal_verify(%struct.x509_store_ctx_st* noundef %ctx) #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %0) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %sub = add nsw i32 %call1, -1
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %sub) #9
  %2 = bitcast i8* %call4 to %struct.x509_st*
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  store i32 %sub, i32* %error_depth, align 4, !tbaa !31
  %bare_ta_signed = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 33
  %3 = load i32, i32* %bare_ta_signed, align 8, !tbaa !78
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end20

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @ossl_x509_likely_issued(%struct.x509_st* noundef %2, %struct.x509_st* noundef %2) #9
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %4 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %4, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %5, 524288
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %land.lhs.true
  %cmp8 = icmp sgt i32 %call1, 1
  br i1 %cmp8, label %if.end20.thread, label %if.else14

if.end20.thread:                                  ; preds = %if.then7
  %dec = add nsw i32 %call1, -2
  store i32 %dec, i32* %error_depth, align 4, !tbaa !31
  %6 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call12 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %6) #10
  %call13 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef %dec) #9
  %7 = bitcast i8* %call13 to %struct.x509_st*
  br label %while.body.lr.ph

if.else14:                                        ; preds = %if.then7
  %call15 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %2, i32 noundef 0, i32 noundef 21) #10
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %cleanup82, label %if.end20

if.end20:                                         ; preds = %entry, %if.else, %land.lhs.true, %if.else14
  %xi.0 = phi %struct.x509_st* [ %2, %if.else14 ], [ %2, %land.lhs.true ], [ %2, %if.else ], [ null, %entry ]
  %cmp21156 = icmp sgt i32 %call1, 0
  br i1 %cmp21156, label %while.body.lr.ph, label %cleanup82

while.body.lr.ph:                                 ; preds = %if.end20.thread, %if.end20
  %n.0180 = phi i32 [ %dec, %if.end20.thread ], [ %sub, %if.end20 ]
  %xi.0179 = phi %struct.x509_st* [ %2, %if.end20.thread ], [ %xi.0, %if.end20 ]
  %xs.0178 = phi %struct.x509_st* [ %7, %if.end20.thread ], [ %2, %if.end20 ]
  %current_issuer181 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 26
  %param25 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end81, %while.body.lr.ph
  %n.1164 = phi i32 [ %n.0180, %while.body.lr.ph ], [ %dec75, %if.end81 ]
  %xi.1160 = phi %struct.x509_st* [ %xi.0179, %while.body.lr.ph ], [ %xs.1157, %if.end81 ]
  %xs.1157 = phi %struct.x509_st* [ %xs.0178, %while.body.lr.ph ], [ %13, %if.end81 ]
  %cmp22.not = icmp eq %struct.x509_st* %xi.1160, null
  br i1 %cmp22.not, label %if.end65, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %while.body
  %cmp24.not = icmp eq %struct.x509_st* %xs.1157, %xi.1160
  br i1 %cmp24.not, label %lor.lhs.false, label %if.then32

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %8 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param25, align 8, !tbaa !27
  %flags26 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %8, i64 0, i32 3
  %9 = load i64, i64* %flags26, align 8, !tbaa !38
  %and27 = and i64 %9, 16384
  %cmp28.not = icmp eq i64 %and27, 0
  br i1 %cmp28.not, label %if.end65, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %xi.1160, i64 0, i32 8
  %10 = load i32, i32* %ex_flags, align 8, !tbaa !4
  %and30 = and i32 %10, 8192
  %cmp31.not = icmp eq i32 %and30, 0
  br i1 %cmp31.not, label %if.end65, label %land.lhs.true35

if.then32:                                        ; preds = %land.lhs.true23
  %add = add nuw nsw i32 %n.1164, 1
  br label %cond.end

land.lhs.true35:                                  ; preds = %land.lhs.true29
  %and37 = and i32 %10, 16
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.end46, label %cond.end

cond.end:                                         ; preds = %land.lhs.true35, %if.then32
  %add149 = phi i32 [ %n.1164, %land.lhs.true35 ], [ %add, %if.then32 ]
  %call39 = tail call i32 @ossl_x509_signing_allowed(%struct.x509_st* noundef nonnull %xi.1160, %struct.x509_st* noundef %xs.1157) #9
  %cmp41.not = icmp eq i32 %call39, 0
  br i1 %cmp41.not, label %if.end46, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %cond.end
  %call43 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %xi.1160, i32 noundef %add149, i32 noundef %call39) #10
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %cleanup82, label %if.end46

if.end46:                                         ; preds = %land.lhs.true35, %land.lhs.true42, %cond.end
  %add150155 = phi i32 [ %add149, %land.lhs.true42 ], [ %add149, %cond.end ], [ %n.1164, %land.lhs.true35 ]
  %call47 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %xi.1160) #9
  %cmp48 = icmp eq %struct.evp_pkey_st* %call47, null
  br i1 %cmp48, label %if.then49, label %if.else54

if.then49:                                        ; preds = %if.end46
  %call50 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %xi.1160, i32 noundef %add150155, i32 noundef 6) #10
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %cleanup82, label %if.end65

if.else54:                                        ; preds = %if.end46
  %call55 = tail call i32 @X509_verify(%struct.x509_st* noundef %xs.1157, %struct.evp_pkey_st* noundef nonnull %call47) #9
  %cmp56 = icmp slt i32 %call55, 1
  br i1 %cmp56, label %land.lhs.true57, label %if.end65

land.lhs.true57:                                  ; preds = %if.else54
  %call58 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %xs.1157, i32 noundef %n.1164, i32 noundef 7) #10
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %cleanup82, label %if.end65

if.end65:                                         ; preds = %if.else54, %land.lhs.true57, %if.then49, %land.lhs.true29, %lor.lhs.false, %while.body
  %call66 = tail call i32 @ossl_x509_check_cert_time(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %xs.1157, i32 noundef %n.1164) #10
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup82, label %if.end69

if.end69:                                         ; preds = %if.end65
  store %struct.x509_st* %xi.1160, %struct.x509_st** %current_issuer181, align 8, !tbaa !60
  store %struct.x509_st* %xs.1157, %struct.x509_st** %current_cert, align 8, !tbaa !32
  store i32 %n.1164, i32* %error_depth, align 4, !tbaa !31
  %11 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  %call71 = tail call i32 %11(i32 noundef 1, %struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup82, label %if.end74

if.end74:                                         ; preds = %if.end69
  %dec75 = add nsw i32 %n.1164, -1
  %cmp76 = icmp sgt i32 %n.1164, 0
  br i1 %cmp76, label %if.end81, label %cleanup82

if.end81:                                         ; preds = %if.end74
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call79 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %12) #10
  %call80 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call79, i32 noundef %dec75) #9
  %13 = bitcast i8* %call80 to %struct.x509_st*
  br label %while.body

cleanup82:                                        ; preds = %if.end74, %land.lhs.true57, %if.then49, %land.lhs.true42, %if.end65, %if.end69, %if.end20, %if.else14
  %retval.3 = phi i32 [ 0, %if.else14 ], [ 1, %if.end20 ], [ 1, %if.end74 ], [ 0, %land.lhs.true57 ], [ 0, %if.then49 ], [ 0, %land.lhs.true42 ], [ 0, %if.end65 ], [ 0, %if.end69 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_revocation(%struct.x509_store_ctx_st* noundef %ctx) #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %1, 4
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and3 = and i64 %1, 8
  %cmp4.not = icmp eq i64 %and3, 0
  br i1 %cmp4.not, label %if.else, label %if.end9

if.else:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  %2 = load %struct.x509_store_ctx_st*, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  %tobool.not = icmp eq %struct.x509_store_ctx_st* %2, null
  br i1 %tobool.not, label %for.body.preheader, label %cleanup

if.end9:                                          ; preds = %if.end
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %sub = add nsw i32 %call6, -1
  %cmp10.not28 = icmp slt i32 %call6, 1
  br i1 %cmp10.not28, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.else, %if.end9
  %last.034 = phi i32 [ %sub, %if.end9 ], [ 0, %if.else ]
  %error_depth35 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %i.029, %last.034
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !101

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.029 = phi i32 [ %inc, %for.cond ], [ 0, %for.body.preheader ]
  store i32 %i.029, i32* %error_depth35, align 4, !tbaa !31
  %call11 = tail call fastcc i32 @check_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %if.end9, %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.else ], [ 1, %if.end9 ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_crl(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st* noundef %crl) #0 {
entry:
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %0 = load i32, i32* %error_depth, align 4, !tbaa !31
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %sub = add nsw i32 %call1, -1
  %current_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 26
  %2 = load %struct.x509_st*, %struct.x509_st** %current_issuer, align 8, !tbaa !60
  %cmp.not = icmp eq %struct.x509_st* %2, null
  br i1 %cmp.not, label %if.else, label %if.end20

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i32 %0, %sub
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %add = add nsw i32 %0, 1
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %add) #9
  %4 = bitcast i8* %call7 to %struct.x509_st*
  br label %if.end17

if.else8:                                         ; preds = %if.else
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %sub) #9
  %5 = bitcast i8* %call11 to %struct.x509_st*
  %check_issued = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 9
  %6 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !79
  %call12 = tail call i32 %6(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %5, %struct.x509_st* noundef %5) #9
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.else8
  %call13 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 33) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup91, label %if.end17

if.end17:                                         ; preds = %if.then4, %land.lhs.true, %if.else8
  %issuer.0 = phi %struct.x509_st* [ %4, %if.then4 ], [ %5, %if.else8 ], [ %5, %land.lhs.true ]
  %cmp18 = icmp eq %struct.x509_st* %issuer.0, null
  br i1 %cmp18, label %cleanup91, label %if.end20

if.end20:                                         ; preds = %entry, %if.end17
  %issuer.0140 = phi %struct.x509_st* [ %issuer.0, %if.end17 ], [ %2, %entry ]
  %base_crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 10
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number, align 8, !tbaa !51
  %cmp21 = icmp eq %struct.asn1_string_st* %7, null
  br i1 %cmp21, label %if.then22, label %if.end58

if.then22:                                        ; preds = %if.end20
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %issuer.0140, i64 0, i32 8
  %8 = load i32, i32* %ex_flags, align 8, !tbaa !4
  %and = and i32 %8, 2
  %cmp23.not = icmp eq i32 %and, 0
  br i1 %cmp23.not, label %if.end31, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.then22
  %ex_kusage = getelementptr inbounds %struct.x509_st, %struct.x509_st* %issuer.0140, i64 0, i32 9
  %9 = load i32, i32* %ex_kusage, align 4, !tbaa !102
  %and25 = and i32 %9, 2
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %call28 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 35) #10
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup91, label %if.end31

if.end31:                                         ; preds = %land.lhs.true27, %land.lhs.true24, %if.then22
  %current_crl_score = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 28
  %10 = load i32, i32* %current_crl_score, align 8, !tbaa !76
  %and32 = and i32 %10, 128
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %land.lhs.true34, label %if.end38

land.lhs.true34:                                  ; preds = %if.end31
  %call35 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 44) #10
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup91, label %land.lhs.true34.if.end38_crit_edge

land.lhs.true34.if.end38_crit_edge:               ; preds = %land.lhs.true34
  %.pre = load i32, i32* %current_crl_score, align 8, !tbaa !76
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true34.if.end38_crit_edge, %if.end31
  %11 = phi i32 [ %.pre, %land.lhs.true34.if.end38_crit_edge ], [ %10, %if.end31 ]
  %and40 = and i32 %11, 8
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %land.lhs.true42, label %if.end50

land.lhs.true42:                                  ; preds = %if.end38
  %12 = load %struct.x509_st*, %struct.x509_st** %current_issuer, align 8, !tbaa !60
  %call44 = tail call fastcc i32 @check_crl_path(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %12) #10
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %land.lhs.true46, label %if.end50

land.lhs.true46:                                  ; preds = %land.lhs.true42
  %call47 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 54) #10
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup91, label %if.end50

if.end50:                                         ; preds = %land.lhs.true46, %land.lhs.true42, %if.end38
  %idp_flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 7
  %13 = load i32, i32* %idp_flags, align 8, !tbaa !103
  %and51 = and i32 %13, 2
  %cmp52.not = icmp eq i32 %and51, 0
  br i1 %cmp52.not, label %if.end58, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end50
  %call54 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 41) #10
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup91, label %if.end58

if.end58:                                         ; preds = %if.end50, %land.lhs.true53, %if.end20
  %current_crl_score59 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 28
  %14 = load i32, i32* %current_crl_score59, align 8, !tbaa !76
  %and60 = and i32 %14, 64
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %land.lhs.true62, label %if.end66

land.lhs.true62:                                  ; preds = %if.end58
  %call63 = tail call fastcc i32 @check_crl_time(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef nonnull %crl, i32 noundef 1) #10
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup91, label %if.end66

if.end66:                                         ; preds = %land.lhs.true62, %if.end58
  %call67 = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef nonnull %issuer.0140) #9
  %cond = icmp eq %struct.evp_pkey_st* %call67, null
  br i1 %cond, label %land.lhs.true69, label %if.then75

land.lhs.true69:                                  ; preds = %if.end66
  %call70 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 6) #10
  %tobool71.not = icmp ne i32 %call70, 0
  %spec.select = zext i1 %tobool71.not to i32
  br label %cleanup91

if.then75:                                        ; preds = %if.end66
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %15 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %15, i64 0, i32 3
  %16 = load i64, i64* %flags, align 8, !tbaa !38
  %call76 = tail call i32 @X509_CRL_check_suiteb(%struct.X509_crl_st* noundef nonnull %crl, %struct.evp_pkey_st* noundef nonnull %call67, i64 noundef %16) #9
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %if.end82, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %if.then75
  %call79 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef %call76) #10
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %cleanup91, label %if.end82

if.end82:                                         ; preds = %land.lhs.true78, %if.then75
  %call83 = tail call i32 @X509_CRL_verify(%struct.X509_crl_st* noundef nonnull %crl, %struct.evp_pkey_st* noundef nonnull %call67) #9
  %cmp84 = icmp slt i32 %call83, 1
  br i1 %cmp84, label %land.lhs.true85, label %if.end90.critedge

land.lhs.true85:                                  ; preds = %if.end82
  %call86 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 8) #10
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %cleanup91, label %if.end90.critedge

if.end90.critedge:                                ; preds = %if.end82, %land.lhs.true85
  br label %cleanup91

cleanup91:                                        ; preds = %land.lhs.true69, %if.end90.critedge, %land.lhs.true78, %land.lhs.true85, %land.lhs.true62, %land.lhs.true53, %land.lhs.true46, %land.lhs.true34, %land.lhs.true27, %if.end17, %land.lhs.true
  %retval.1 = phi i32 [ 0, %land.lhs.true ], [ 1, %if.end17 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true62 ], [ 0, %land.lhs.true85 ], [ 0, %land.lhs.true78 ], [ 1, %if.end90.critedge ], [ %spec.select, %land.lhs.true69 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cert_crl(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st* noundef %crl, %struct.x509_st* noundef %x) #0 {
entry:
  %rev = alloca %struct.x509_revoked_st*, align 8
  %0 = bitcast %struct.x509_revoked_st** %rev to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %1, i64 0, i32 3
  %2 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %2, 16
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 4
  %3 = load i32, i32* %flags1, align 4, !tbaa !104
  %and2 = and i32 %3, 512
  %cmp3.not = icmp eq i32 %and2, 0
  br i1 %cmp3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 36) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %call5 = call i32 @X509_CRL_get0_by_cert(%struct.X509_crl_st* noundef %crl, %struct.x509_revoked_st** noundef nonnull %rev, %struct.x509_st* noundef %x) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end
  %4 = load %struct.x509_revoked_st*, %struct.x509_revoked_st** %rev, align 8, !tbaa !58
  %reason = getelementptr inbounds %struct.x509_revoked_st, %struct.x509_revoked_st* %4, i64 0, i32 4
  %5 = load i32, i32* %reason, align 8, !tbaa !105
  %cmp8 = icmp eq i32 %5, 8
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then7
  %call11 = call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 23) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %land.lhs.true4, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %land.lhs.true4 ], [ 2, %if.then7 ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_policy(%struct.x509_store_ctx_st* noundef %ctx) #0 {
entry:
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  %0 = load %struct.x509_store_ctx_st*, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  %tobool.not = icmp eq %struct.x509_store_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup64

if.end:                                           ; preds = %entry
  %bare_ta_signed = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 33
  %1 = load i32, i32* %bare_ta_signed, align 8, !tbaa !78
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %call3 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef null) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %memerr, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %tree = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 21
  %explicit_policy = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 22
  %chain7 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain7, align 8, !tbaa !22
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %4 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %policies = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %4, i64 0, i32 8
  %5 = load %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT** %policies, align 8, !tbaa !107
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %4, i64 0, i32 3
  %6 = load i64, i64* %flags, align 8, !tbaa !38
  %conv = trunc i64 %6 to i32
  %call9 = tail call i32 @X509_policy_check(%struct.X509_POLICY_TREE_st** noundef nonnull %tree, i32* noundef nonnull %explicit_policy, %struct.stack_st_X509* noundef %3, %struct.stack_st_ASN1_OBJECT* noundef %5, i32 noundef %conv) #9
  %7 = load i32, i32* %bare_ta_signed, align 8, !tbaa !78
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end6
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain7, align 8, !tbaa !22
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %8) #10
  %call15 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call14) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end6
  switch i32 %call9, label %if.then48 [
    i32 0, label %memerr
    i32 -1, label %for.cond.preheader
    i32 -2, label %if.then43
    i32 1, label %if.end49
  ]

for.cond.preheader:                               ; preds = %if.end16
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain7, align 8, !tbaa !22
  %call2496 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %9) #10
  %call2597 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call2496) #9
  %cmp2698 = icmp sgt i32 %call2597, 1
  br i1 %cmp2698, label %for.body, label %cleanup64

for.body:                                         ; preds = %for.cond.preheader, %for.inc.critedge
  %i.099 = phi i32 [ %inc, %for.inc.critedge ], [ 1, %for.cond.preheader ]
  %10 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain7, align 8, !tbaa !22
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %10) #10
  %call30 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call29, i32 noundef %i.099) #9
  %ex_flags = getelementptr inbounds i8, i8* %call30, i64 232
  %11 = bitcast i8* %ex_flags to i32*
  %12 = load i32, i32* %11, align 8, !tbaa !4
  %and = and i32 %12, 2048
  %cmp31.not = icmp eq i32 %and, 0
  br i1 %cmp31.not, label %for.inc.critedge, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %for.body
  %13 = bitcast i8* %call30 to %struct.x509_st*
  %call34 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %13, i32 noundef %i.099, i32 noundef 42) #10
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %cleanup64, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %for.body, %land.lhs.true33
  %inc = add nuw nsw i32 %i.099, 1
  %14 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain7, align 8, !tbaa !22
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %14) #10
  %call25 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call24) #9
  %cmp26 = icmp slt i32 %inc, %call25
  br i1 %cmp26, label %for.body, label %cleanup64, !llvm.loop !108

if.then43:                                        ; preds = %if.end16
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* null, %struct.x509_st** %current_cert, align 8, !tbaa !32
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 43, i32* %error, align 8, !tbaa !21
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %15 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  %call44 = tail call i32 %15(i32 noundef 0, %struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  br label %cleanup64

if.then48:                                        ; preds = %if.end16
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1676, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.check_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786691, i8* noundef null) #9
  br label %cleanup64

if.end49:                                         ; preds = %if.end16
  %16 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags51 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %16, i64 0, i32 3
  %17 = load i64, i64* %flags51, align 8, !tbaa !38
  %and52 = and i64 %17, 2048
  %cmp53.not = icmp eq i64 %and52, 0
  br i1 %cmp53.not, label %if.end62, label %if.then55

if.then55:                                        ; preds = %if.end49
  %current_cert56 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  store %struct.x509_st* null, %struct.x509_st** %current_cert56, align 8, !tbaa !32
  %verify_cb57 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %18 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb57, align 8, !tbaa !33
  %call58 = tail call i32 %18(i32 noundef 2, %struct.x509_store_ctx_st* noundef nonnull %ctx) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup64, label %if.end62

if.end62:                                         ; preds = %if.then55, %if.end49
  br label %cleanup64

memerr:                                           ; preds = %if.end16, %land.lhs.true
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 1695, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.check_policy, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  %error63 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 17, i32* %error63, align 8, !tbaa !21
  br label %cleanup64

cleanup64:                                        ; preds = %for.inc.critedge, %land.lhs.true33, %for.cond.preheader, %if.then55, %entry, %memerr, %if.end62, %if.then48, %if.then43
  %retval.3 = phi i32 [ -1, %memerr ], [ %call44, %if.then43 ], [ 0, %if.then48 ], [ 1, %if.end62 ], [ 1, %entry ], [ 0, %if.then55 ], [ 1, %for.cond.preheader ], [ 1, %for.inc.critedge ], [ 0, %land.lhs.true33 ]
  ret i32 %retval.3
}

declare %struct.stack_st_X509* @X509_STORE_CTX_get1_certs(%struct.x509_store_ctx_st* noundef, %struct.X509_name_st* noundef) #2

declare %struct.stack_st_X509_CRL* @X509_STORE_CTX_get1_crls(%struct.x509_store_ctx_st* noundef, %struct.X509_name_st* noundef) #2

declare %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_lookup(i8* noundef) local_unnamed_addr #2

declare i32 @X509_PURPOSE_get_trust(%struct.x509_purpose_st* noundef) local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.stack_st_X509* noundef %sk) local_unnamed_addr #6 {
entry:
  %other_ctx = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 5
  %0 = bitcast i8** %other_ctx to %struct.stack_st_X509**
  store %struct.stack_st_X509* %sk, %struct.stack_st_X509** %0, align 8, !tbaa !73
  %get_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 8
  store i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* @get_issuer_sk, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer, align 8, !tbaa !80
  %lookup_certs = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 15
  store %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @lookup_certs_sk, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_issuer_sk(%struct.x509_st** nocapture noundef writeonly %issuer, %struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) #0 {
entry:
  %other_ctx = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 5
  %0 = bitcast i8** %other_ctx to %struct.stack_st_X509**
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %0, align 8, !tbaa !73
  %call = tail call fastcc %struct.x509_st* @find_issuer(%struct.x509_store_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %1, %struct.x509_st* noundef %x) #10
  store %struct.x509_st* %call, %struct.x509_st** %issuer, align 8, !tbaa !58
  %cmp.not = icmp eq %struct.x509_st* %call, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  %cond = select i1 %tobool.not, i32 -1, i32 1
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.stack_st_X509* @lookup_certs_sk(%struct.x509_store_ctx_st* nocapture noundef %ctx, %struct.X509_name_st* noundef %nm) #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %other_ctx = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 5
  %1 = bitcast i8** %other_ctx to %struct.stack_st_X509**
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %1, align 8, !tbaa !73
  %call130 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %call231 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call130) #9
  %cmp332 = icmp sgt i32 %call231, 0
  br i1 %cmp332, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.033 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %1, align 8, !tbaa !73
  %call5 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  %call6 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.033) #9
  %4 = bitcast i8* %call6 to %struct.x509_st*
  %call7 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %4) #9
  %call8 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %nm, %struct.X509_name_st* noundef %call7) #9
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %call11 = tail call i32 @X509_add_cert(%struct.stack_st_X509* noundef nonnull %0, %struct.x509_st* noundef %4, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %for.inc

if.then12:                                        ; preds = %if.then10
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call13, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 17, i32* %error, align 8, !tbaa !21
  br label %cleanup

for.inc:                                          ; preds = %for.body, %if.then10
  %inc = add nuw nsw i32 %i.033, 1
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %1, align 8, !tbaa !73
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %5) #10
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #9
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %cleanup, !llvm.loop !109

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %entry, %if.then12
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then12 ], [ null, %entry ], [ %0, %for.cond.preheader ], [ %0, %for.inc ]
  ret %struct.stack_st_X509* %retval.0
}

declare void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare void @X509_policy_tree_free(%struct.X509_POLICY_TREE_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_set_depth(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  tail call void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %depth) #9
  ret void
}

declare void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_set_flags(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %call = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef %0, i64 noundef %flags) #9
  ret void
}

declare i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_set_time(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i64 noundef %flags, i64 noundef %t) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef %0, i64 noundef %t) #9
  ret void
}

declare void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @X509_STORE_CTX_get0_cert(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  ret %struct.x509_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* @X509_STORE_CTX_get0_untrusted(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  ret %struct.stack_st_X509* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set0_untrusted(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.stack_st_X509* noundef %sk) local_unnamed_addr #6 {
entry:
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  store %struct.stack_st_X509* %sk, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_set0_verified_chain(%struct.x509_store_ctx_st* nocapture noundef %ctx, %struct.stack_st_X509* noundef %sk) local_unnamed_addr #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  store %struct.stack_st_X509* %sk, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set_verify_cb(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, i32 (i32, %struct.x509_store_ctx_st*)* noundef %verify_cb) local_unnamed_addr #6 {
entry:
  %verify_cb1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  store i32 (i32, %struct.x509_store_ctx_st*)* %verify_cb, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb1, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i32, %struct.x509_store_ctx_st*)* @X509_STORE_CTX_get_verify_cb(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %0 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  ret i32 (i32, %struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set_verify(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*)* noundef %verify) local_unnamed_addr #6 {
entry:
  %verify1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 6
  %verify2 = bitcast {}** %verify1 to i32 (%struct.x509_store_ctx_st*)**
  store i32 (%struct.x509_store_ctx_st*)* %verify, i32 (%struct.x509_store_ctx_st*)** %verify2, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_CTX_get_verify(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %verify = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 6
  %verify1 = bitcast {}** %verify to i32 (%struct.x509_store_ctx_st*)**
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %verify1, align 8, !tbaa !39
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* @X509_STORE_CTX_get_get_issuer(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %get_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 8
  %0 = load i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer, align 8, !tbaa !80
  ret i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* @X509_STORE_CTX_get_check_issued(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %check_issued = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 9
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !79
  ret i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_CTX_get_check_revocation(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %check_revocation = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 10
  %check_revocation1 = bitcast {}** %check_revocation to i32 (%struct.x509_store_ctx_st*)**
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_revocation1, align 8, !tbaa !37
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* @X509_STORE_CTX_get_get_crl(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %get_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 11
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %get_crl, align 8, !tbaa !81
  ret i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* @X509_STORE_CTX_get_check_crl(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %check_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 12
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl, align 8, !tbaa !82
  ret i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* @X509_STORE_CTX_get_cert_crl(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %cert_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 13
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl, align 8, !tbaa !83
  ret i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_CTX_get_check_policy(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %check_policy = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 14
  %check_policy1 = bitcast {}** %check_policy to i32 (%struct.x509_store_ctx_st*)**
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_policy1, align 8, !tbaa !40
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_CTX_get_lookup_certs(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %lookup_certs = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 15
  %0 = load %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs, align 8, !tbaa !84
  ret %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_CTX_get_lookup_crls(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %lookup_crls = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 16
  %0 = load %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls, align 8, !tbaa !98
  ret %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_CTX_get_cleanup(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %cleanup = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 17
  %cleanup1 = bitcast {}** %cleanup to i32 (%struct.x509_store_ctx_st*)**
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %cleanup1, align 8, !tbaa !70
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_POLICY_TREE_st* @X509_STORE_CTX_get0_policy_tree(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %tree = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 21
  %0 = load %struct.X509_POLICY_TREE_st*, %struct.X509_POLICY_TREE_st** %tree, align 8, !tbaa !71
  ret %struct.X509_POLICY_TREE_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_STORE_CTX_get_explicit_policy(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %explicit_policy = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 22
  %0 = load i32, i32* %explicit_policy, align 8, !tbaa !75
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_STORE_CTX_get_num_untrusted(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  %0 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_lookup(i8* noundef %name) #9
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %param1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param1, align 8, !tbaa !27
  %call2 = tail call i32 @X509_VERIFY_PARAM_inherit(%struct.X509_VERIFY_PARAM_st* noundef %0, %struct.X509_VERIFY_PARAM_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  ret %struct.X509_VERIFY_PARAM_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_CTX_set0_param(%struct.x509_store_ctx_st* nocapture noundef %ctx, %struct.X509_VERIFY_PARAM_st* noundef %param) local_unnamed_addr #0 {
entry:
  %param1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param1, align 8, !tbaa !27
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %0) #9
  store %struct.X509_VERIFY_PARAM_st* %param, %struct.X509_VERIFY_PARAM_st** %param1, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_CTX_set0_dane(%struct.x509_store_ctx_st* nocapture noundef writeonly %ctx, %struct.ssl_dane_st* noundef %dane) local_unnamed_addr #6 {
entry:
  %dane1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  store %struct.ssl_dane_st* %dane, %struct.ssl_dane_st** %dane1, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef %target, %struct.stack_st_X509* noundef %certs, %struct.x509_store_st* noundef %store, i32 noundef %with_self_signed, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %result = alloca %struct.stack_st_X509*, align 8
  %cmp = icmp ne %struct.x509_store_st* %store, null
  %0 = bitcast %struct.stack_st_X509** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %result, align 8, !tbaa !58
  %cmp1 = icmp eq %struct.x509_st* %target, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 3335, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.X509_build_chain, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #10
  %cmp3 = icmp eq %struct.x509_store_ctx_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %cond = select i1 %cmp, %struct.stack_st_X509* %certs, %struct.stack_st_X509* null
  %call7 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call, %struct.x509_store_st* noundef %store, %struct.x509_st* noundef nonnull %target, %struct.stack_st_X509* noundef %cond) #10
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  br i1 %cmp, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  tail call void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef nonnull %call, %struct.stack_st_X509* noundef %certs) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %call, i64 0, i32 20
  %call14 = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %chain, %struct.x509_st* noundef nonnull %target, i32 noundef 1) #9
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %call, i64 0, i32 24
  store i32 17, i32* %error, align 8, !tbaa !21
  br label %err

if.end17:                                         ; preds = %if.end13
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %call, i64 0, i32 19
  store i32 1, i32* %num_untrusted, align 4, !tbaa !23
  %call18 = tail call fastcc i32 @build_chain(%struct.x509_store_ctx_st* noundef nonnull %call) #10
  %tobool19 = icmp eq i32 %call18, 0
  %or.cond = and i1 %cmp, %tobool19
  br i1 %or.cond, label %err, label %if.end22

if.end22:                                         ; preds = %if.end17
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call25 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call24) #9
  %cmp26 = icmp slt i32 %call25, 2
  %tobool29 = icmp ne i32 %with_self_signed, 0
  %or.cond41 = or i1 %tobool29, %cmp26
  %spec.select = select i1 %or.cond41, i32 1, i32 9
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call33 = call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %result, %struct.stack_st_X509* noundef %2, i32 noundef %spec.select) #9
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %err

if.then35:                                        ; preds = %if.end22
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %result, align 8, !tbaa !58
  %call36 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call36) #9
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %result, align 8, !tbaa !58
  br label %err

err:                                              ; preds = %if.end22, %if.then35, %if.end17, %if.end6, %if.then16
  call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef nonnull %call) #10
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %result, align 8, !tbaa !58
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ %4, %err ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @build_chain(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %issuer = alloca %struct.x509_st*, align 8
  %dane1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %0 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane1, align 8, !tbaa !24
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  %2 = load i32, i32* %error, align 8, !tbaa !21
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %land.rhs, label %int_err

land.rhs:                                         ; preds = %entry
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  %3 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.end, label %int_err

if.end:                                           ; preds = %land.rhs
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %cmp5.not = icmp ne %struct.stack_st_X509* %4, null
  %cond = zext i1 %cmp5.not to i32
  %tobool = icmp ne %struct.ssl_dane_st* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %if.end
  %umask = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 5
  %5 = load i32, i32* %umask, align 8, !tbaa !34
  %and = and i32 %5, 3
  %tobool6 = icmp ne i32 %and, 0
  %and10 = and i32 %5, 12
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond587 = or i1 %tobool6, %tobool11.not
  br i1 %or.cond587, label %if.then12, label %if.end25

if.then12:                                        ; preds = %if.end, %land.lhs.true
  br i1 %cmp5.not, label %lor.lhs.false14, label %if.then17

lor.lhs.false14:                                  ; preds = %if.then12
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %6 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %6, i64 0, i32 3
  %7 = load i64, i64* %flags, align 8, !tbaa !38
  %and15 = and i64 %7, 32768
  %cmp16.not = icmp eq i64 %and15, 0
  br i1 %cmp16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false14, %if.then12
  %or = or i32 %cond, 2
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false14
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 20
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %if.else, %if.then17
  %search.1 = phi i32 [ %or, %if.then17 ], [ 1, %if.else ], [ %cond, %land.lhs.true ]
  %tobool229.not = phi i1 [ false, %if.then17 ], [ false, %if.else ], [ true, %land.lhs.true ]
  %may_alternate.1 = phi i32 [ 0, %if.then17 ], [ %11, %if.else ], [ 0, %land.lhs.true ]
  %call27 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %4) #10
  %call28 = tail call %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef %call27) #9
  %12 = bitcast %struct.stack_st* %call28 to %struct.stack_st_X509*
  %cmp29 = icmp eq %struct.stack_st* %call28, null
  br i1 %cmp29, label %memerr, label %if.end31

if.end31:                                         ; preds = %if.end25
  br i1 %tobool, label %land.lhs.true33, label %if.end43

land.lhs.true33:                                  ; preds = %if.end31
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 1
  %13 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !25
  %call34 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %13) #10
  %cmp35 = icmp sgt i32 %call34, 0
  br i1 %cmp35, label %land.lhs.true36, label %if.end43

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %certs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 2
  %14 = load %struct.stack_st_X509*, %struct.stack_st_X509** %certs, align 8, !tbaa !110
  %cmp37.not = icmp eq %struct.stack_st_X509* %14, null
  br i1 %cmp37.not, label %if.end43, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %call40 = tail call i32 @X509_add_certs(%struct.stack_st_X509* noundef nonnull %12, %struct.stack_st_X509* noundef nonnull %14, i32 noundef 0) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %memerr, label %if.end43

if.end43:                                         ; preds = %land.lhs.true38, %land.lhs.true36, %land.lhs.true33, %if.end31
  %param44 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %15 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param44, align 8, !tbaa !27
  %depth = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %15, i64 0, i32 6
  %16 = load i32, i32* %depth, align 8, !tbaa !111
  %cmp45 = icmp sgt i32 %16, 1073741823
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end43
  store i32 1073741823, i32* %depth, align 8, !tbaa !111
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43
  %17 = phi i32 [ 1073741823, %if.then46 ], [ %16, %if.end43 ]
  %add = add nsw i32 %17, 1
  %cmp52.not605 = icmp eq i32 %search.1, 0
  br i1 %cmp52.not605, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end49
  %18 = bitcast %struct.x509_st** %issuer to i8*
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %trecs101 = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 1
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 6
  %mcert = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 4
  %pdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 7
  %19 = bitcast %struct.x509_st** %issuer to i8**
  %tobool181.not = icmp eq i32 %may_alternate.1, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup254
  %alt_untrusted.0608 = phi i32 [ 0, %while.body.lr.ph ], [ %alt_untrusted.3, %cleanup254 ]
  %trust.0607 = phi i32 [ 3, %while.body.lr.ph ], [ %trust.6, %cleanup254 ]
  %search.2606 = phi i32 [ %search.1, %while.body.lr.ph ], [ %search.9, %cleanup254 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #11
  store %struct.x509_st* null, %struct.x509_st** %issuer, align 8, !tbaa !58
  %20 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call54 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %20) #10
  %call55 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call54) #9
  %sub = add nsw i32 %call55, -1
  store i32 %sub, i32* %error_depth, align 4, !tbaa !31
  %and56 = and i32 %search.2606, 2
  %cmp57.not = icmp eq i32 %and56, 0
  br i1 %cmp57.not, label %if.end196, label %if.then58

if.then58:                                        ; preds = %while.body
  %and59 = and i32 %search.2606, 4
  %cmp60.not = icmp eq i32 %and59, 0
  %spec.select536 = select i1 %cmp60.not, i32 %call55, i32 %alt_untrusted.0608
  %21 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call64 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %21) #10
  %sub65 = add nsw i32 %spec.select536, -1
  %call66 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call64, i32 noundef %sub65) #9
  %22 = bitcast i8* %call66 to %struct.x509_st*
  %cmp67 = icmp sgt i32 %call55, %add
  br i1 %cmp67, label %if.end167, label %cond.end

cond.end:                                         ; preds = %if.then58
  %call68 = call fastcc i32 @get1_trusted_issuer(%struct.x509_st** noundef nonnull %issuer, %struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %22) #10
  %cmp70 = icmp slt i32 %call68, 0
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %cond.end
  store i32 70, i32* %error, align 8, !tbaa !21
  br label %cleanup254.thread

if.end73:                                         ; preds = %cond.end
  %cmp74.not = icmp eq i32 %call68, 0
  br i1 %cmp74.not, label %if.end167, label %if.then75

if.then75:                                        ; preds = %if.end73
  %call76 = call i32 @X509_self_signed(%struct.x509_st* noundef %22, i32 noundef 0) #10
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %cleanup254.thread572.sink.split, label %if.end79

if.end79:                                         ; preds = %if.then75
  br i1 %cmp60.not, label %if.end122, label %if.then82

if.then82:                                        ; preds = %if.end79
  %cmp83 = icmp sgt i32 %call55, %spec.select536
  %cmp85 = icmp sgt i32 %spec.select536, 0
  %or.cond369 = and i1 %cmp83, %cmp85
  %tobool87.not = icmp eq i32 %call76, 0
  %23 = select i1 %or.cond369, i1 %tobool87.not, i1 false
  br i1 %23, label %for.body, label %cleanup254.thread572.sink.split

for.body:                                         ; preds = %if.then82, %for.body
  %num.0604 = phi i32 [ %dec, %for.body ], [ %call55, %if.then82 ]
  %24 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call96 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %24) #10
  %call97 = call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call96) #9
  %25 = bitcast i8* %call97 to %struct.x509_st*
  call void @X509_free(%struct.x509_st* noundef %25) #9
  %dec = add nsw i32 %num.0604, -1
  %cmp94 = icmp sgt i32 %dec, %spec.select536
  br i1 %cmp94, label %for.body, label %for.end, !llvm.loop !112

for.end:                                          ; preds = %for.body
  %and93 = and i32 %search.2606, -5
  store i32 %spec.select536, i32* %num_untrusted, align 4, !tbaa !23
  br i1 %tobool, label %land.lhs.true100, label %if.end122

land.lhs.true100:                                 ; preds = %for.end
  %26 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs101, align 8, !tbaa !25
  %call102 = call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %26) #10
  %cmp103 = icmp sgt i32 %call102, 0
  br i1 %cmp103, label %land.lhs.true104, label %land.lhs.true112

land.lhs.true104:                                 ; preds = %land.lhs.true100
  %27 = load i32, i32* %mdpth, align 4, !tbaa !35
  %28 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp106.not = icmp slt i32 %27, %28
  br i1 %cmp106.not, label %land.lhs.true112, label %if.then107

if.then107:                                       ; preds = %land.lhs.true104
  store i32 -1, i32* %mdpth, align 4, !tbaa !35
  %29 = load %struct.x509_st*, %struct.x509_st** %mcert, align 8, !tbaa !113
  call void @X509_free(%struct.x509_st* noundef %29) #9
  store %struct.x509_st* null, %struct.x509_st** %mcert, align 8, !tbaa !113
  br label %land.lhs.true112

land.lhs.true112:                                 ; preds = %land.lhs.true100, %land.lhs.true104, %if.then107
  %30 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs101, align 8, !tbaa !25
  %call114 = call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %30) #10
  %cmp115 = icmp sgt i32 %call114, 0
  br i1 %cmp115, label %land.lhs.true116, label %if.end122

land.lhs.true116:                                 ; preds = %land.lhs.true112
  %31 = load i32, i32* %pdpth, align 8, !tbaa !114
  %32 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp118.not = icmp slt i32 %31, %32
  br i1 %cmp118.not, label %if.end122, label %if.then119

if.then119:                                       ; preds = %land.lhs.true116
  store i32 -1, i32* %pdpth, align 8, !tbaa !114
  br label %if.end122

if.end122:                                        ; preds = %for.end, %land.lhs.true112, %land.lhs.true116, %if.then119, %if.end79
  %search.3 = phi i32 [ %and93, %if.then119 ], [ %and93, %land.lhs.true116 ], [ %and93, %land.lhs.true112 ], [ %search.2606, %if.end79 ], [ %and93, %for.end ]
  %num.1 = phi i32 [ %spec.select536, %if.then119 ], [ %spec.select536, %land.lhs.true116 ], [ %spec.select536, %land.lhs.true112 ], [ %call55, %if.end79 ], [ %spec.select536, %for.end ]
  %tobool123.not = icmp eq i32 %call76, 0
  br i1 %tobool123.not, label %if.then124, label %if.else136

if.then124:                                       ; preds = %if.end122
  %33 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call126 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %33) #10
  %34 = load i8*, i8** %19, align 8, !tbaa !58
  %call128 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call126, i8* noundef %34) #9
  %tobool129.not = icmp eq i32 %call128, 0
  %35 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !58
  br i1 %tobool129.not, label %cleanup254.thread582, label %if.end131

cleanup254.thread582:                             ; preds = %if.then124
  call void @X509_free(%struct.x509_st* noundef %35) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11
  br label %memerr

if.end131:                                        ; preds = %if.then124
  %call132 = call i32 @X509_self_signed(%struct.x509_st* noundef %35, i32 noundef 0) #10
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %cleanup254.thread572, label %if.then150

if.else136:                                       ; preds = %if.end122
  %36 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !58
  %call137 = call i32 @X509_cmp(%struct.x509_st* noundef %22, %struct.x509_st* noundef %36) #9
  %cmp138.not = icmp eq i32 %call137, 0
  br i1 %cmp138.not, label %if.else140, label %if.end148

if.else140:                                       ; preds = %if.else136
  call void @X509_free(%struct.x509_st* noundef %22) #9
  %dec141 = add nsw i32 %num.1, -1
  store i32 %dec141, i32* %num_untrusted, align 4, !tbaa !23
  %37 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call144 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %37) #10
  %38 = load i8*, i8** %19, align 8, !tbaa !58
  %call146 = call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call144, i32 noundef %dec141, i8* noundef %38) #9
  br label %if.then150

if.end148:                                        ; preds = %if.else136
  %39 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !58
  call void @X509_free(%struct.x509_st* noundef %39) #9
  br label %if.end167

if.then150:                                       ; preds = %if.else140, %if.end131
  %num.2.ph = phi i32 [ %num.1, %if.end131 ], [ %dec141, %if.else140 ]
  %self_signed.0.ph = phi i32 [ %call132, %if.end131 ], [ 1, %if.else140 ]
  %40 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp152.not = icmp sgt i32 %40, %num.2.ph
  br i1 %cmp152.not, label %cleanup254.thread572, label %if.end156

if.end156:                                        ; preds = %if.then150
  %and157 = and i32 %search.3, -2
  %call158 = call fastcc i32 @check_trust(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef %num.2.ph) #10
  %cmp159.not = icmp eq i32 %call158, 3
  br i1 %cmp159.not, label %if.end162, label %cleanup254.thread577

cleanup254.thread577:                             ; preds = %if.end156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11
  br label %while.end

if.end162:                                        ; preds = %if.end156
  %tobool163.not = icmp eq i32 %self_signed.0.ph, 0
  br i1 %tobool163.not, label %cleanup254, label %if.end167, !llvm.loop !115

if.end167:                                        ; preds = %if.then58, %if.end148, %if.end162, %if.end73
  %search.6 = phi i32 [ %search.2606, %if.end73 ], [ %and157, %if.end162 ], [ %search.3, %if.end148 ], [ %search.2606, %if.then58 ]
  %trust.3 = phi i32 [ %trust.0607, %if.end73 ], [ 3, %if.end162 ], [ %trust.0607, %if.end148 ], [ %trust.0607, %if.then58 ]
  %and168 = and i32 %search.6, 1
  %cmp169 = icmp eq i32 %and168, 0
  br i1 %cmp169, label %if.then171, label %if.end196

if.then171:                                       ; preds = %if.end167
  %and172 = and i32 %search.6, 4
  %cmp173.not = icmp eq i32 %and172, 0
  br i1 %cmp173.not, label %if.end180, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %if.then171
  %dec176 = add nsw i32 %alt_untrusted.0608, -1
  %cmp177 = icmp sgt i32 %alt_untrusted.0608, 1
  br i1 %cmp177, label %cleanup254, label %cleanup254.thread, !llvm.loop !115

if.end180:                                        ; preds = %if.then171
  br i1 %tobool181.not, label %cleanup254.thread, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.end180
  %41 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp188 = icmp slt i32 %41, 2
  br i1 %cmp188, label %cleanup254.thread, label %if.end191

if.end191:                                        ; preds = %lor.lhs.false186
  %or192 = or i32 %search.6, 4
  %sub194 = add nsw i32 %41, -1
  br label %if.end196

if.end196:                                        ; preds = %if.end167, %if.end191, %while.body
  %search.7 = phi i32 [ %or192, %if.end191 ], [ %search.6, %if.end167 ], [ %search.2606, %while.body ]
  %trust.4 = phi i32 [ %trust.3, %if.end191 ], [ %trust.3, %if.end167 ], [ %trust.0607, %while.body ]
  %alt_untrusted.2 = phi i32 [ %sub194, %if.end191 ], [ %alt_untrusted.0608, %if.end167 ], [ %alt_untrusted.0608, %while.body ]
  %and197 = and i32 %search.7, 1
  %cmp198.not = icmp eq i32 %and197, 0
  br i1 %cmp198.not, label %cleanup254, label %if.then200

if.then200:                                       ; preds = %if.end196
  %42 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call202 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %42) #10
  %call203 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call202) #9
  %43 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp205 = icmp eq i32 %call203, %43
  br i1 %cmp205, label %if.end210, label %cleanup254.thread563

if.end210:                                        ; preds = %if.then200
  %44 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call212 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %44) #10
  %sub213 = add nsw i32 %call203, -1
  %call214 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call212, i32 noundef %sub213) #9
  %45 = bitcast i8* %call214 to %struct.x509_st*
  %call215 = call i32 @X509_self_signed(%struct.x509_st* noundef %45, i32 noundef 0) #10
  %tobool216.not = icmp ne i32 %call215, 0
  %cmp218 = icmp sgt i32 %call203, %add
  %or.cond = select i1 %tobool216.not, i1 true, i1 %cmp218
  br i1 %or.cond, label %if.then227, label %cond.end223

cond.end223:                                      ; preds = %if.end210
  %call222 = call fastcc %struct.x509_st* @find_issuer(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.stack_st_X509* noundef nonnull %12, %struct.x509_st* noundef %45) #10
  store %struct.x509_st* %call222, %struct.x509_st** %issuer, align 8, !tbaa !58
  %cmp225 = icmp eq %struct.x509_st* %call222, null
  br i1 %cmp225, label %if.then227, label %if.end233

if.then227:                                       ; preds = %if.end210, %cond.end223
  %and228 = and i32 %search.7, -2
  %or231 = or i32 %and228, 2
  %spec.select = select i1 %tobool229.not, i32 %and228, i32 %or231
  br label %cleanup254

if.end233:                                        ; preds = %cond.end223
  %call234 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %12) #10
  %46 = bitcast %struct.x509_st* %call222 to i8*
  %call236 = call i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef %call234, i8* noundef nonnull %46) #9
  %47 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %48 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !58
  %call238 = call i32 @X509_add_cert(%struct.stack_st_X509* noundef %47, %struct.x509_st* noundef %48, i32 noundef 1) #9
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %cleanup254.thread563, label %if.end241

if.end241:                                        ; preds = %if.end233
  %49 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %num_untrusted, align 4, !tbaa !23
  %call245 = call fastcc i32 @check_dane_issuer(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef %49) #10
  %50 = add i32 %call245, -1
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %cleanup254.thread, label %cleanup254

cleanup254.thread:                                ; preds = %if.end180, %lor.lhs.false186, %if.end241, %land.lhs.true175, %if.then71
  %trust.6.ph = phi i32 [ -1, %if.then71 ], [ %call245, %if.end241 ], [ %trust.3, %lor.lhs.false186 ], [ %trust.3, %if.end180 ], [ %trust.3, %land.lhs.true175 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11
  br label %while.end

cleanup254.thread563:                             ; preds = %if.then200, %if.end233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11
  br label %int_err

cleanup254.thread572.sink.split:                  ; preds = %if.then82, %if.then75
  %.sink = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !58
  call void @X509_free(%struct.x509_st* noundef %.sink) #9
  br label %cleanup254.thread572

cleanup254.thread572:                             ; preds = %if.then150, %if.end131, %cleanup254.thread572.sink.split
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11
  br label %int_err

cleanup254:                                       ; preds = %if.then227, %if.end196, %if.end241, %if.end162, %land.lhs.true175
  %search.9 = phi i32 [ %search.6, %land.lhs.true175 ], [ %and157, %if.end162 ], [ %search.7, %if.end241 ], [ %search.7, %if.end196 ], [ %spec.select, %if.then227 ]
  %trust.6 = phi i32 [ %trust.3, %land.lhs.true175 ], [ 3, %if.end162 ], [ %call245, %if.end241 ], [ %trust.4, %if.end196 ], [ %trust.4, %if.then227 ]
  %alt_untrusted.3 = phi i32 [ %dec176, %land.lhs.true175 ], [ %alt_untrusted.0608, %if.end162 ], [ %alt_untrusted.2, %if.end241 ], [ %alt_untrusted.2, %if.end196 ], [ %alt_untrusted.2, %if.then227 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #11
  %cmp52.not = icmp eq i32 %search.9, 0
  br i1 %cmp52.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup254, %if.end49, %cleanup254.thread577, %cleanup254.thread
  %trust.7 = phi i32 [ %trust.6.ph, %cleanup254.thread ], [ %call158, %cleanup254.thread577 ], [ 3, %if.end49 ], [ %trust.6, %cleanup254 ]
  %call258 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %12) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call258) #9
  %cmp259 = icmp slt i32 %trust.7, 0
  br i1 %cmp259, label %cleanup355, label %if.end262

if.end262:                                        ; preds = %while.end
  %52 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call264 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %52) #10
  %call265 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call264) #9
  %cmp266.not = icmp sgt i32 %call265, %add
  br i1 %cmp266.not, label %if.end289, label %if.then268

if.then268:                                       ; preds = %if.end262
  %cmp269 = icmp eq i32 %trust.7, 3
  %or.cond373 = select i1 %cmp269, i1 %tobool, i1 false
  br i1 %or.cond373, label %land.lhs.true273, label %if.end279

land.lhs.true273:                                 ; preds = %if.then268
  %umask274 = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 5
  %53 = load i32, i32* %umask274, align 8, !tbaa !34
  %and275 = and i32 %53, 4
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %land.lhs.true282, label %if.then277

if.then277:                                       ; preds = %land.lhs.true273
  %call278 = call fastcc i32 @check_dane_pkeys(%struct.x509_store_ctx_st* noundef nonnull %ctx) #10
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.then268
  %trust.8 = phi i32 [ %call278, %if.then277 ], [ %trust.7, %if.then268 ]
  %cmp280 = icmp eq i32 %trust.8, 3
  br i1 %cmp280, label %land.lhs.true282, label %if.end289

land.lhs.true282:                                 ; preds = %land.lhs.true273, %if.end279
  %54 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp284 = icmp eq i32 %call265, %54
  br i1 %cmp284, label %if.then286, label %sw.default

if.then286:                                       ; preds = %land.lhs.true282
  %call287 = call fastcc i32 @check_trust(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef %call265) #10
  br label %if.end289

if.end289:                                        ; preds = %if.end279, %if.then286, %if.end262
  %trust.9 = phi i32 [ %call287, %if.then286 ], [ %trust.8, %if.end279 ], [ %trust.7, %if.end262 ]
  switch i32 %trust.9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %cleanup355
  ]

sw.bb:                                            ; preds = %if.end289
  store i32 %2, i32* %error, align 8, !tbaa !21
  br label %cleanup355

sw.default:                                       ; preds = %land.lhs.true282, %if.end289
  %55 = load i32, i32* %error, align 8, !tbaa !21
  switch i32 %55, label %sw.default295 [
    i32 13, label %cleanup355
    i32 9, label %cleanup355
    i32 14, label %cleanup355
    i32 10, label %cleanup355
    i32 0, label %sw.epilog
  ]

sw.default295:                                    ; preds = %sw.default
  %sub296 = add nsw i32 %call265, -1
  %call298 = call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null, i32 noundef %sub296, i32 noundef %55) #10
  br label %cleanup355

sw.epilog:                                        ; preds = %sw.default
  br i1 %cmp266.not, label %land.lhs.true301, label %if.end307

land.lhs.true301:                                 ; preds = %sw.epilog
  %sub302 = add nsw i32 %call265, -1
  %call303 = call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null, i32 noundef %sub302, i32 noundef 22) #10
  %cmp304 = icmp eq i32 %call303, 0
  br i1 %cmp304, label %cleanup355, label %if.end307

if.end307:                                        ; preds = %land.lhs.true301, %sw.epilog
  br i1 %tobool, label %land.lhs.true310, label %if.end331

land.lhs.true310:                                 ; preds = %if.end307
  %trecs311 = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 1
  %56 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs311, align 8, !tbaa !25
  %call312 = call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %56) #10
  %cmp313 = icmp sgt i32 %call312, 0
  br i1 %cmp313, label %land.lhs.true317, label %if.end331

land.lhs.true317:                                 ; preds = %land.lhs.true310
  %umask318 = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 5
  %57 = load i32, i32* %umask318, align 8, !tbaa !34
  %and319 = and i32 %57, 3
  %tobool320.not = icmp eq i32 %and319, 0
  br i1 %tobool320.not, label %land.lhs.true325, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %land.lhs.true317
  %pdpth322 = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 7
  %58 = load i32, i32* %pdpth322, align 8, !tbaa !114
  %cmp323 = icmp sgt i32 %58, -1
  br i1 %cmp323, label %land.lhs.true325, label %if.end331

land.lhs.true325:                                 ; preds = %lor.lhs.false321, %land.lhs.true317
  %sub326 = add nsw i32 %call265, -1
  %call327 = call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null, i32 noundef %sub326, i32 noundef 65) #10
  %cmp328 = icmp eq i32 %call327, 0
  br i1 %cmp328, label %cleanup355, label %if.end331

if.end331:                                        ; preds = %land.lhs.true325, %lor.lhs.false321, %land.lhs.true310, %if.end307
  %59 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call333 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %59) #10
  %sub334 = add nsw i32 %call265, -1
  %call335 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call333, i32 noundef %sub334) #9
  %60 = bitcast i8* %call335 to %struct.x509_st*
  %call336 = call i32 @X509_self_signed(%struct.x509_st* noundef %60, i32 noundef 0) #10
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.end344, label %if.then338

if.then338:                                       ; preds = %if.end331
  %cmp340 = icmp eq i32 %call265, 1
  %cond342 = select i1 %cmp340, i32 18, i32 19
  %call343 = call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null, i32 noundef %sub334, i32 noundef %cond342) #10
  br label %cleanup355

if.end344:                                        ; preds = %if.end331
  %61 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp347 = icmp slt i32 %61, %call265
  %cond349 = select i1 %cmp347, i32 2, i32 20
  %call350 = call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef null, i32 noundef %sub334, i32 noundef %cond349) #10
  br label %cleanup355

int_err:                                          ; preds = %cleanup254.thread572, %cleanup254.thread563, %entry, %land.rhs
  %sk_untrusted.0 = phi %struct.stack_st_X509* [ null, %land.rhs ], [ null, %entry ], [ %12, %cleanup254.thread563 ], [ %12, %cleanup254.thread572 ]
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 3313, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.build_chain, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786691, i8* noundef null) #9
  store i32 1, i32* %error, align 8, !tbaa !21
  %call352 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %sk_untrusted.0) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call352) #9
  br label %cleanup355

memerr:                                           ; preds = %cleanup254.thread582, %land.lhs.true38, %if.end25
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 3319, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.build_chain, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  store i32 17, i32* %error, align 8, !tbaa !21
  %call354 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %12) #10
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call354) #9
  br label %cleanup355

cleanup355:                                       ; preds = %land.lhs.true325, %land.lhs.true301, %sw.default, %sw.default, %sw.default, %sw.default, %if.end289, %while.end, %memerr, %int_err, %if.end344, %if.then338, %sw.default295, %sw.bb
  %retval.0 = phi i32 [ -1, %memerr ], [ -1, %int_err ], [ %call298, %sw.default295 ], [ %call343, %if.then338 ], [ %call350, %if.end344 ], [ 1, %sw.bb ], [ %trust.7, %while.end ], [ 0, %if.end289 ], [ 0, %sw.default ], [ 0, %sw.default ], [ 0, %sw.default ], [ 0, %sw.default ], [ 0, %land.lhs.true301 ], [ 0, %land.lhs.true325 ]
  ret i32 %retval.0
}

declare i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_extensions(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %0) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  %1 = load %struct.x509_store_ctx_st*, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  %cmp.not = icmp eq %struct.x509_store_ctx_st* %1, null
  br i1 %cmp.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %2 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %2, i64 0, i32 3
  %3 = load i64, i64* %flags, align 8, !tbaa !38
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 6
  %6 = and i32 %5, 1
  %purpose4 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %2, i64 0, i32 4
  %7 = load i32, i32* %purpose4, align 8, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %purpose.0 = phi i32 [ %7, %if.else ], [ 6, %entry ]
  %allow_proxy_certs.0 = phi i32 [ %6, %if.else ], [ 0, %entry ]
  %cmp5569 = icmp sgt i32 %call1, 0
  br i1 %cmp5569, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %param10 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %tobool.not = icmp eq i32 %allow_proxy_certs.0, 0
  %cmp81.not = icmp eq i32 %call1, 1
  %cmp332 = icmp sgt i32 %purpose.0, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %proxy_path_length.0578 = phi i32 [ 0, %for.body.lr.ph ], [ %proxy_path_length.2, %for.inc ]
  %i.0572 = phi i32 [ 0, %for.body.lr.ph ], [ %inc390, %for.inc ]
  %plen.0571 = phi i32 [ 0, %for.body.lr.ph ], [ %plen.1, %for.inc ]
  %must_be_ca.0570 = phi i32 [ -1, %for.body.lr.ph ], [ %must_be_ca.1, %for.inc ]
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %8) #10
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.0572) #9
  %9 = bitcast i8* %call9 to %struct.x509_st*
  %10 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param10, align 8, !tbaa !27
  %flags11 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %10, i64 0, i32 3
  %11 = load i64, i64* %flags11, align 8, !tbaa !38
  %and12 = and i64 %11, 16
  %cmp13 = icmp eq i64 %and12, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %for.body
  %ex_flags = getelementptr inbounds i8, i8* %call9, i64 232
  %12 = bitcast i8* %ex_flags to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !4
  %and15 = and i32 %13, 512
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %if.end23, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true
  %call19 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 34) #10
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %cleanup, label %if.end23

if.end23:                                         ; preds = %land.lhs.true18, %land.lhs.true, %for.body
  br i1 %tobool.not, label %land.lhs.true24, label %if.end34

land.lhs.true24:                                  ; preds = %if.end23
  %ex_flags25 = getelementptr inbounds i8, i8* %call9, i64 232
  %14 = bitcast i8* %ex_flags25 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !4
  %and26 = and i32 %15, 1024
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end34, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %call30 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 40) #10
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %land.lhs.true29, %land.lhs.true24, %if.end23
  %call35 = tail call i32 @X509_check_ca(%struct.x509_st* noundef %9) #9
  switch i32 %must_be_ca.0570, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb53
  ]

sw.bb:                                            ; preds = %if.end34
  %16 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param10, align 8, !tbaa !27
  %flags37 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %16, i64 0, i32 3
  %17 = load i64, i64* %flags37, align 8, !tbaa !38
  %and38 = and i64 %17, 32
  %cmp39 = icmp ne i64 %and38, 0
  %cmp42 = icmp ne i32 %call35, 1
  %or.cond = select i1 %cmp39, i1 %cmp42, i1 false
  %cmp45 = icmp ne i32 %call35, 0
  %or.cond399 = select i1 %or.cond, i1 %cmp45, i1 false
  br i1 %or.cond399, label %land.lhs.true47, label %sw.epilog

land.lhs.true47:                                  ; preds = %sw.bb
  %call48 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %9, i32 noundef %i.0572, i32 noundef 79) #10
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %cleanup, label %sw.epilog

sw.bb53:                                          ; preds = %if.end34
  %cmp54.not = icmp eq i32 %call35, 0
  br i1 %cmp54.not, label %sw.epilog, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %sw.bb53
  %call57 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %9, i32 noundef %i.0572, i32 noundef 37) #10
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %cleanup, label %sw.epilog

sw.default:                                       ; preds = %if.end34
  %cmp62 = icmp eq i32 %call35, 0
  br i1 %cmp62, label %land.lhs.true75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.default
  %add = add nuw nsw i32 %i.0572, 1
  %cmp64 = icmp slt i32 %add, %call1
  br i1 %cmp64, label %land.lhs.true72, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false
  %18 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param10, align 8, !tbaa !27
  %flags68 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %18, i64 0, i32 3
  %19 = load i64, i64* %flags68, align 8, !tbaa !38
  %and69 = and i64 %19, 32
  %cmp70 = icmp ne i64 %and69, 0
  %cmp73 = icmp ne i32 %call35, 1
  %or.cond400 = select i1 %cmp70, i1 %cmp73, i1 false
  br i1 %or.cond400, label %land.lhs.true75, label %sw.epilog

land.lhs.true72:                                  ; preds = %lor.lhs.false
  %cmp73.old.not = icmp eq i32 %call35, 1
  br i1 %cmp73.old.not, label %sw.epilog, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %lor.lhs.false66, %land.lhs.true72, %sw.default
  %call76 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %9, i32 noundef %i.0572, i32 noundef 79) #10
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false66, %land.lhs.true72, %land.lhs.true75, %sw.bb53, %land.lhs.true56, %sw.bb, %land.lhs.true47
  br i1 %cmp81.not, label %if.end331, label %if.then83

if.then83:                                        ; preds = %sw.epilog
  %call84 = tail call fastcc i32 @check_curve(%struct.x509_st* noundef %9) #10
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end92

land.lhs.true87:                                  ; preds = %if.then83
  %call88 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %9, i32 noundef %i.0572, i32 noundef 1) #10
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %cleanup, label %if.end101

if.end92:                                         ; preds = %if.then83
  %cmp93 = icmp eq i32 %call84, 0
  br i1 %cmp93, label %land.lhs.true95, label %if.end101

land.lhs.true95:                                  ; preds = %if.end92
  %call96 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %9, i32 noundef %i.0572, i32 noundef 94) #10
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %cleanup, label %if.end101

if.end101:                                        ; preds = %land.lhs.true87, %if.end92, %land.lhs.true95
  %20 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param10, align 8, !tbaa !27
  %flags103 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %20, i64 0, i32 3
  %21 = load i64, i64* %flags103, align 8, !tbaa !38
  %and104 = and i64 %21, 32
  %cmp105.not = icmp eq i64 %and104, 0
  br i1 %cmp105.not, label %if.end331, label %if.then110

if.then110:                                       ; preds = %if.end101
  %ex_pathlen = getelementptr inbounds i8, i8* %call9, i64 216
  %22 = bitcast i8* %ex_pathlen to i64*
  %23 = load i64, i64* %22, align 8, !tbaa !116
  %cmp111.not = icmp eq i64 %23, -1
  br i1 %cmp111.not, label %if.end133, label %if.then113

if.then113:                                       ; preds = %if.then110
  %ex_flags114 = getelementptr inbounds i8, i8* %call9, i64 232
  %24 = bitcast i8* %ex_flags114 to i32*
  %25 = load i32, i32* %24, align 8, !tbaa !4
  %and115 = and i32 %25, 16
  %cmp116 = icmp eq i32 %and115, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.end123

land.lhs.true118:                                 ; preds = %if.then113
  %call119 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 80) #10
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %cleanup, label %if.end123

if.end123:                                        ; preds = %land.lhs.true118, %if.then113
  %ex_kusage = getelementptr inbounds i8, i8* %call9, i64 236
  %26 = bitcast i8* %ex_kusage to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !102
  %and124 = and i32 %27, 4
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %land.lhs.true127, label %if.end133

land.lhs.true127:                                 ; preds = %if.end123
  %call128 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 81) #10
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %cleanup, label %if.end133

if.end133:                                        ; preds = %if.then110, %if.end123, %land.lhs.true127
  %ex_flags134 = getelementptr inbounds i8, i8* %call9, i64 232
  %28 = bitcast i8* %ex_flags134 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !4
  %30 = and i32 %29, 65553
  %31 = icmp eq i32 %30, 17
  br i1 %31, label %land.lhs.true148, label %if.end153

land.lhs.true148:                                 ; preds = %if.end133
  %call149 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 89) #10
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %cleanup, label %land.lhs.true148.if.end153_crit_edge

land.lhs.true148.if.end153_crit_edge:             ; preds = %land.lhs.true148
  %.pre = load i32, i32* %28, align 8, !tbaa !4
  br label %if.end153

if.end153:                                        ; preds = %land.lhs.true148.if.end153_crit_edge, %if.end133
  %32 = phi i32 [ %.pre, %land.lhs.true148.if.end153_crit_edge ], [ %29, %if.end133 ]
  %and155 = and i32 %32, 16
  %cmp156.not = icmp eq i32 %and155, 0
  br i1 %cmp156.not, label %if.else169, label %if.then158

if.then158:                                       ; preds = %if.end153
  %and160 = and i32 %32, 2
  %cmp161 = icmp eq i32 %and160, 0
  br i1 %cmp161, label %land.lhs.true163, label %if.end180

land.lhs.true163:                                 ; preds = %if.then158
  %call164 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 92) #10
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %cleanup, label %if.end180

if.else169:                                       ; preds = %if.end153
  %ex_kusage170 = getelementptr inbounds i8, i8* %call9, i64 236
  %33 = bitcast i8* %ex_kusage170 to i32*
  %34 = load i32, i32* %33, align 4, !tbaa !102
  %and171 = and i32 %34, 4
  %cmp172.not = icmp eq i32 %and171, 0
  br i1 %cmp172.not, label %if.end180, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %if.else169
  %call175 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 82) #10
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %cleanup, label %if.end180

if.end180:                                        ; preds = %if.else169, %land.lhs.true174, %if.then158, %land.lhs.true163
  %call181 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %9) #9
  %call182 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call181) #9
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %land.lhs.true185, label %if.end190

land.lhs.true185:                                 ; preds = %if.end180
  %call186 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 83) #10
  %cmp187 = icmp eq i32 %call186, 0
  br i1 %cmp187, label %cleanup, label %if.end190

if.end190:                                        ; preds = %land.lhs.true185, %if.end180
  %35 = load i32, i32* %28, align 8, !tbaa !4
  %and192 = and i32 %35, 16
  %cmp193.not = icmp eq i32 %and192, 0
  br i1 %cmp193.not, label %lor.lhs.false195, label %land.lhs.true203

lor.lhs.false195:                                 ; preds = %if.end190
  %ex_kusage196 = getelementptr inbounds i8, i8* %call9, i64 236
  %36 = bitcast i8* %ex_kusage196 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !102
  %and197 = and i32 %37, 2
  %cmp198.not = icmp eq i32 %and197, 0
  br i1 %cmp198.not, label %lor.lhs.false200, label %land.lhs.true203

lor.lhs.false200:                                 ; preds = %lor.lhs.false195
  %altname = getelementptr inbounds i8, i8* %call9, i64 280
  %38 = bitcast i8* %altname to %struct.stack_st_GENERAL_NAME**
  %39 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %38, align 8, !tbaa !117
  %cmp201 = icmp eq %struct.stack_st_GENERAL_NAME* %39, null
  br i1 %cmp201, label %land.lhs.true203, label %if.end213

land.lhs.true203:                                 ; preds = %lor.lhs.false200, %lor.lhs.false195, %if.end190
  %call204 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %9) #9
  %call205 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call204) #9
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %land.lhs.true208, label %if.end213

land.lhs.true208:                                 ; preds = %land.lhs.true203
  %call209 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 84) #10
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %cleanup, label %if.end213

if.end213:                                        ; preds = %land.lhs.true208, %land.lhs.true203, %lor.lhs.false200
  %call214 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %9) #9
  %call215 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call214) #9
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %land.lhs.true218, label %if.end232

land.lhs.true218:                                 ; preds = %if.end213
  %altname219 = getelementptr inbounds i8, i8* %call9, i64 280
  %40 = bitcast i8* %altname219 to %struct.stack_st_GENERAL_NAME**
  %41 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %40, align 8, !tbaa !117
  %cmp220.not = icmp eq %struct.stack_st_GENERAL_NAME* %41, null
  br i1 %cmp220.not, label %if.end232, label %land.lhs.true222

land.lhs.true222:                                 ; preds = %land.lhs.true218
  %42 = load i32, i32* %28, align 8, !tbaa !4
  %and224 = and i32 %42, 524288
  %cmp225 = icmp eq i32 %and224, 0
  br i1 %cmp225, label %land.lhs.true227, label %if.end232

land.lhs.true227:                                 ; preds = %land.lhs.true222
  %call228 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 88) #10
  %cmp229 = icmp eq i32 %call228, 0
  br i1 %cmp229, label %cleanup, label %if.end232

if.end232:                                        ; preds = %if.end213, %land.lhs.true227, %land.lhs.true222, %land.lhs.true218
  %altname233 = getelementptr inbounds i8, i8* %call9, i64 280
  %43 = bitcast i8* %altname233 to %struct.stack_st_GENERAL_NAME**
  %44 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %43, align 8, !tbaa !117
  %cmp234.not = icmp eq %struct.stack_st_GENERAL_NAME* %44, null
  br i1 %cmp234.not, label %if.end247, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %if.end232
  %call238 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %44) #10
  %call239 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call238) #9
  %cmp240 = icmp slt i32 %call239, 1
  br i1 %cmp240, label %land.lhs.true242, label %if.end247

land.lhs.true242:                                 ; preds = %land.lhs.true236
  %call243 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 87) #10
  %cmp244 = icmp eq i32 %call243, 0
  br i1 %cmp244, label %cleanup, label %if.end247

if.end247:                                        ; preds = %land.lhs.true242, %land.lhs.true236, %if.end232
  %sig_alg = getelementptr inbounds i8, i8* %call9, i64 136
  %45 = bitcast i8* %sig_alg to %struct.X509_algor_st*
  %signature = getelementptr inbounds i8, i8* %call9, i64 32
  %46 = bitcast i8* %signature to %struct.X509_algor_st*
  %call248 = tail call i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef nonnull %45, %struct.X509_algor_st* noundef nonnull %46) #9
  %cmp249.not = icmp eq i32 %call248, 0
  br i1 %cmp249.not, label %if.end256, label %land.lhs.true251

land.lhs.true251:                                 ; preds = %if.end247
  %call252 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 78) #10
  %cmp253 = icmp eq i32 %call252, 0
  br i1 %cmp253, label %cleanup, label %if.end256

if.end256:                                        ; preds = %land.lhs.true251, %if.end247
  %akid = getelementptr inbounds i8, i8* %call9, i64 256
  %47 = bitcast i8* %akid to %struct.AUTHORITY_KEYID_st**
  %48 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %47, align 8, !tbaa !118
  %cmp257.not = icmp eq %struct.AUTHORITY_KEYID_st* %48, null
  br i1 %cmp257.not, label %if.end269, label %land.lhs.true259

land.lhs.true259:                                 ; preds = %if.end256
  %49 = load i32, i32* %28, align 8, !tbaa !4
  %and261 = and i32 %49, 131072
  %cmp262.not = icmp eq i32 %and261, 0
  br i1 %cmp262.not, label %if.end269, label %land.lhs.true264

land.lhs.true264:                                 ; preds = %land.lhs.true259
  %call265 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 90) #10
  %cmp266 = icmp eq i32 %call265, 0
  br i1 %cmp266, label %cleanup, label %if.end269

if.end269:                                        ; preds = %land.lhs.true264, %land.lhs.true259, %if.end256
  %skid = getelementptr inbounds i8, i8* %call9, i64 248
  %50 = bitcast i8* %skid to %struct.asn1_string_st**
  %51 = load %struct.asn1_string_st*, %struct.asn1_string_st** %50, align 8, !tbaa !119
  %cmp270.not = icmp eq %struct.asn1_string_st* %51, null
  br i1 %cmp270.not, label %if.end282, label %land.lhs.true272

land.lhs.true272:                                 ; preds = %if.end269
  %52 = load i32, i32* %28, align 8, !tbaa !4
  %and274 = and i32 %52, 262144
  %cmp275.not = icmp eq i32 %and274, 0
  br i1 %cmp275.not, label %if.end282, label %land.lhs.true277

land.lhs.true277:                                 ; preds = %land.lhs.true272
  %call278 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 91) #10
  %cmp279 = icmp eq i32 %call278, 0
  br i1 %cmp279, label %cleanup, label %if.end282

if.end282:                                        ; preds = %land.lhs.true277, %land.lhs.true272, %if.end269
  %call283 = tail call i64 @X509_get_version(%struct.x509_st* noundef nonnull %9) #9
  %cmp284 = icmp sgt i64 %call283, 1
  br i1 %cmp284, label %if.then286, label %if.else318

if.then286:                                       ; preds = %if.end282
  %add287 = add nuw nsw i32 %i.0572, 1
  %cmp288 = icmp slt i32 %add287, %call1
  br i1 %cmp288, label %land.lhs.true290, label %if.end303

land.lhs.true290:                                 ; preds = %if.then286
  %53 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %47, align 8, !tbaa !118
  %cmp292 = icmp eq %struct.AUTHORITY_KEYID_st* %53, null
  br i1 %cmp292, label %land.lhs.true298, label %lor.lhs.false294

lor.lhs.false294:                                 ; preds = %land.lhs.true290
  %keyid = getelementptr inbounds %struct.AUTHORITY_KEYID_st, %struct.AUTHORITY_KEYID_st* %53, i64 0, i32 0
  %54 = load %struct.asn1_string_st*, %struct.asn1_string_st** %keyid, align 8, !tbaa !120
  %cmp296 = icmp eq %struct.asn1_string_st* %54, null
  br i1 %cmp296, label %land.lhs.true298, label %if.end303

land.lhs.true298:                                 ; preds = %lor.lhs.false294, %land.lhs.true290
  %call299 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 85) #10
  %cmp300 = icmp eq i32 %call299, 0
  br i1 %cmp300, label %cleanup, label %if.end303

if.end303:                                        ; preds = %land.lhs.true298, %lor.lhs.false294, %if.then286
  %55 = load i32, i32* %28, align 8, !tbaa !4
  %and305 = and i32 %55, 16
  %cmp306.not = icmp eq i32 %and305, 0
  br i1 %cmp306.not, label %if.end331, label %land.lhs.true308

land.lhs.true308:                                 ; preds = %if.end303
  %56 = load %struct.asn1_string_st*, %struct.asn1_string_st** %50, align 8, !tbaa !119
  %cmp310 = icmp eq %struct.asn1_string_st* %56, null
  br i1 %cmp310, label %land.lhs.true312, label %if.end331

land.lhs.true312:                                 ; preds = %land.lhs.true308
  %call313 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 86) #10
  %cmp314 = icmp eq i32 %call313, 0
  br i1 %cmp314, label %cleanup, label %if.end331

if.else318:                                       ; preds = %if.end282
  %call319 = tail call %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef nonnull %9) #9
  %call320 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef %call319) #10
  %call321 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call320) #9
  %cmp322 = icmp sgt i32 %call321, 0
  br i1 %cmp322, label %land.lhs.true324, label %if.end331

land.lhs.true324:                                 ; preds = %if.else318
  %call325 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 93) #10
  %cmp326 = icmp eq i32 %call325, 0
  br i1 %cmp326, label %cleanup, label %if.end331

if.end331:                                        ; preds = %sw.epilog, %land.lhs.true312, %land.lhs.true308, %if.end303, %land.lhs.true324, %if.else318, %if.end101
  br i1 %cmp332, label %land.lhs.true334, label %if.end338

land.lhs.true334:                                 ; preds = %if.end331
  %call335 = tail call fastcc i32 @check_purpose(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %9, i32 noundef %purpose.0, i32 noundef %i.0572, i32 noundef %must_be_ca.0570) #10
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %cleanup, label %if.end338

if.end338:                                        ; preds = %land.lhs.true334, %if.end331
  %cmp339 = icmp ugt i32 %i.0572, 1
  br i1 %cmp339, label %land.lhs.true341, label %if.end357

land.lhs.true341:                                 ; preds = %if.end338
  %ex_pathlen342 = getelementptr inbounds i8, i8* %call9, i64 216
  %57 = bitcast i8* %ex_pathlen342 to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !116
  %cmp343.not = icmp eq i64 %58, -1
  br i1 %cmp343.not, label %land.lhs.true360, label %land.lhs.true345

land.lhs.true345:                                 ; preds = %land.lhs.true341
  %conv346 = sext i32 %plen.0571 to i64
  %conv348 = sext i32 %proxy_path_length.0578 to i64
  %add349 = add nsw i64 %58, %conv348
  %cmp350 = icmp slt i64 %add349, %conv346
  br i1 %cmp350, label %land.lhs.true352, label %land.lhs.true360

land.lhs.true352:                                 ; preds = %land.lhs.true345
  %call353 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 25) #10
  %cmp354 = icmp eq i32 %call353, 0
  br i1 %cmp354, label %cleanup, label %land.lhs.true360

if.end357:                                        ; preds = %if.end338
  %cmp358.not = icmp eq i32 %i.0572, 0
  br i1 %cmp358.not, label %if.end357.if.end366_crit_edge, label %land.lhs.true360

if.end357.if.end366_crit_edge:                    ; preds = %if.end357
  %ex_flags367.phi.trans.insert = getelementptr inbounds i8, i8* %call9, i64 232
  %.phi.trans.insert = bitcast i8* %ex_flags367.phi.trans.insert to i32*
  %.pre604 = load i32, i32* %.phi.trans.insert, align 8, !tbaa !4
  br label %if.end366

land.lhs.true360:                                 ; preds = %land.lhs.true341, %land.lhs.true345, %land.lhs.true352, %if.end357
  %ex_flags361 = getelementptr inbounds i8, i8* %call9, i64 232
  %59 = bitcast i8* %ex_flags361 to i32*
  %60 = load i32, i32* %59, align 8, !tbaa !4
  %and362 = lshr i32 %60, 5
  %and362.lobit = and i32 %and362, 1
  %61 = xor i32 %and362.lobit, 1
  %spec.select = add nsw i32 %61, %plen.0571
  br label %if.end366

if.end366:                                        ; preds = %if.end357.if.end366_crit_edge, %land.lhs.true360
  %62 = phi i32 [ %.pre604, %if.end357.if.end366_crit_edge ], [ %60, %land.lhs.true360 ]
  %plen.1 = phi i32 [ %plen.0571, %if.end357.if.end366_crit_edge ], [ %spec.select, %land.lhs.true360 ]
  %and368 = and i32 %62, 1024
  %tobool369.not = icmp eq i32 %and368, 0
  br i1 %tobool369.not, label %for.inc, label %if.then370

if.then370:                                       ; preds = %if.end366
  %ex_pcpathlen = getelementptr inbounds i8, i8* %call9, i64 224
  %63 = bitcast i8* %ex_pcpathlen to i64*
  %64 = load i64, i64* %63, align 8, !tbaa !122
  %cmp371.not = icmp eq i64 %64, -1
  br i1 %cmp371.not, label %if.end386, label %if.then373

if.then373:                                       ; preds = %if.then370
  %conv374 = sext i32 %proxy_path_length.0578 to i64
  %cmp376 = icmp slt i64 %64, %conv374
  br i1 %cmp376, label %land.lhs.true378, label %if.end383

land.lhs.true378:                                 ; preds = %if.then373
  %call379 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef nonnull %9, i32 noundef %i.0572, i32 noundef 38) #10
  %cmp380 = icmp eq i32 %call379, 0
  br i1 %cmp380, label %cleanup, label %land.lhs.true378.if.end383_crit_edge

land.lhs.true378.if.end383_crit_edge:             ; preds = %land.lhs.true378
  %.pre605 = load i64, i64* %63, align 8, !tbaa !122
  br label %if.end383

if.end383:                                        ; preds = %land.lhs.true378.if.end383_crit_edge, %if.then373
  %65 = phi i64 [ %.pre605, %land.lhs.true378.if.end383_crit_edge ], [ %64, %if.then373 ]
  %conv385 = trunc i64 %65 to i32
  br label %if.end386

if.end386:                                        ; preds = %if.end383, %if.then370
  %proxy_path_length.1 = phi i32 [ %conv385, %if.end383 ], [ %proxy_path_length.0578, %if.then370 ]
  %inc387 = add nsw i32 %proxy_path_length.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end366, %if.end386
  %must_be_ca.1 = phi i32 [ 0, %if.end386 ], [ 1, %if.end366 ]
  %proxy_path_length.2 = phi i32 [ %inc387, %if.end386 ], [ %proxy_path_length.0578, %if.end366 ]
  %inc390 = add nuw nsw i32 %i.0572, 1
  %exitcond.not = icmp eq i32 %inc390, %call1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !123

cleanup:                                          ; preds = %land.lhs.true18, %land.lhs.true29, %land.lhs.true47, %land.lhs.true56, %land.lhs.true75, %land.lhs.true87, %land.lhs.true95, %land.lhs.true118, %land.lhs.true127, %land.lhs.true148, %land.lhs.true163, %land.lhs.true174, %land.lhs.true185, %land.lhs.true208, %land.lhs.true227, %land.lhs.true242, %land.lhs.true251, %land.lhs.true264, %land.lhs.true277, %land.lhs.true298, %land.lhs.true312, %land.lhs.true324, %land.lhs.true334, %land.lhs.true352, %land.lhs.true378, %for.inc, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %for.inc ], [ 0, %land.lhs.true378 ], [ 0, %land.lhs.true352 ], [ 0, %land.lhs.true334 ], [ 0, %land.lhs.true324 ], [ 0, %land.lhs.true312 ], [ 0, %land.lhs.true298 ], [ 0, %land.lhs.true277 ], [ 0, %land.lhs.true264 ], [ 0, %land.lhs.true251 ], [ 0, %land.lhs.true242 ], [ 0, %land.lhs.true227 ], [ 0, %land.lhs.true208 ], [ 0, %land.lhs.true185 ], [ 0, %land.lhs.true174 ], [ 0, %land.lhs.true163 ], [ 0, %land.lhs.true148 ], [ 0, %land.lhs.true127 ], [ 0, %land.lhs.true118 ], [ 0, %land.lhs.true95 ], [ 0, %land.lhs.true87 ], [ 0, %land.lhs.true75 ], [ 0, %land.lhs.true56 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_auth_level(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %0) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %auth_level = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %1, i64 0, i32 7
  %2 = load i32, i32* %auth_level, align 4, !tbaa !28
  %cmp = icmp sgt i32 %2, 0
  %cmp243 = icmp sgt i32 %call1, 0
  %or.cond = select i1 %cmp, i1 %cmp243, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %cleanup22

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %call1, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.critedge
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge ]
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.044) #9
  %4 = bitcast i8* %call5 to %struct.x509_st*
  %cmp6.not = icmp eq i32 %i.044, 0
  br i1 %cmp6.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call7 = tail call fastcc i32 @check_key_level(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %4) #10
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %4, i32 noundef %i.044, i32 noundef 67) #10
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %cleanup22, label %if.end12

if.end12:                                         ; preds = %land.lhs.true8, %land.lhs.true, %for.body
  %cmp13 = icmp slt i32 %i.044, %sub
  br i1 %cmp13, label %land.lhs.true14, label %for.inc.critedge

land.lhs.true14:                                  ; preds = %if.end12
  %call15 = tail call fastcc i32 @check_sig_level(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %4) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %for.inc.critedge

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %call18 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %4, i32 noundef %i.044, i32 noundef 68) #10
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %cleanup22, label %for.inc.critedge

for.inc.critedge:                                 ; preds = %if.end12, %land.lhs.true14, %land.lhs.true17
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup22, label %for.body, !llvm.loop !124

cleanup22:                                        ; preds = %land.lhs.true17, %land.lhs.true8, %for.inc.critedge, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true8 ], [ 1, %for.inc.critedge ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_id(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %hosts = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 9
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !125
  %cmp.not = icmp eq %struct.stack_st_OPENSSL_STRING* %2, null
  br i1 %cmp.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @check_hosts(%struct.x509_st* noundef %1, %struct.X509_VERIFY_PARAM_st* noundef nonnull %0) #10
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call fastcc i32 @check_id_error(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 62) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true, %entry
  %email = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 12
  %3 = load i8*, i8** %email, align 8, !tbaa !126
  %cmp5.not = icmp eq i8* %3, null
  br i1 %cmp5.not, label %if.end15, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %emaillen = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 13
  %4 = load i64, i64* %emaillen, align 8, !tbaa !127
  %call8 = tail call i32 @X509_check_email(%struct.x509_st* noundef %1, i8* noundef nonnull %3, i64 noundef %4, i32 noundef 0) #9
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %land.lhs.true6
  %call11 = tail call fastcc i32 @check_id_error(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 63) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true6, %if.end4
  %ip = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 14
  %5 = load i8*, i8** %ip, align 8, !tbaa !128
  %cmp16.not = icmp eq i8* %5, null
  br i1 %cmp16.not, label %if.end26, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15
  %iplen = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 15
  %6 = load i64, i64* %iplen, align 8, !tbaa !129
  %call19 = tail call i32 @X509_check_ip(%struct.x509_st* noundef %1, i8* noundef nonnull %5, i64 noundef %6, i32 noundef 0) #9
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %land.lhs.true17
  %call22 = tail call fastcc i32 @check_id_error(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 64) #10
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true17, %if.end15
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then10, %if.then, %if.end26
  %retval.0 = phi i32 [ 1, %if.end26 ], [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

declare i32 @X509_chain_check_suiteb(i32* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_name_constraints(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %0) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp193 = icmp sgt i32 %call1, 0
  br i1 %cmp193, label %for.body.lr.ph, label %cleanup107

for.body.lr.ph:                                   ; preds = %entry
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc104
  %i.0.in194 = phi i32 [ %call1, %for.body.lr.ph ], [ %i.0195, %for.inc104 ]
  %i.0195 = add nsw i32 %i.0.in194, -1
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call4 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call3, i32 noundef %i.0195) #9
  %2 = bitcast i8* %call4 to %struct.x509_st*
  %cmp5.not = icmp eq i32 %i.0195, 0
  %ex_flags7.phi.trans.insert = getelementptr inbounds i8, i8* %call4, i64 232
  %.phi.trans.insert = bitcast i8* %ex_flags7.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 8, !tbaa !4
  %and = and i32 %.pre, 32
  %cmp6.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end, label %for.inc104

if.end:                                           ; preds = %for.body
  %and8 = and i32 %.pre, 1024
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %if.end54, label %if.then10

if.then10:                                        ; preds = %if.end
  %call11 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef nonnull %2) #9
  %call12 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef nonnull %2) #9
  %call13 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call11) #9
  %sub14 = add nsw i32 %call13, -1
  %cmp15 = icmp slt i32 %call13, 2
  br i1 %cmp15, label %land.lhs.true44, label %if.end17

if.end17:                                         ; preds = %if.then10
  %call18 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call11) #9
  %call19 = tail call i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef %call12) #9
  %add = add nsw i32 %call19, 1
  %cmp20.not = icmp eq i32 %call18, %add
  br i1 %cmp20.not, label %if.end22, label %land.lhs.true44

if.end22:                                         ; preds = %if.end17
  %call23 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call11, i32 noundef %sub14) #9
  %call24 = tail call i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* noundef %call23) #9
  %sub25 = add nsw i32 %call13, -2
  %call26 = tail call %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef %call11, i32 noundef %sub25) #9
  %call27 = tail call i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* noundef %call26) #9
  %cmp28 = icmp eq i32 %call24, %call27
  br i1 %cmp28, label %land.lhs.true44, label %if.end30

if.end30:                                         ; preds = %if.end22
  %call31 = tail call %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef %call11) #9
  %cmp32 = icmp eq %struct.X509_name_st* %call31, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.check_name_constraints, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 17, i32* %error, align 8, !tbaa !21
  br label %cleanup107

if.end34:                                         ; preds = %if.end30
  %call35 = tail call %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef nonnull %call31, i32 noundef %sub14) #9
  %call36 = tail call %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef %call35) #9
  %call37 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %call36) #9
  %cmp38.not = icmp eq i32 %call37, 13
  br i1 %cmp38.not, label %lor.lhs.false, label %if.then41

lor.lhs.false:                                    ; preds = %if.end34
  %call39 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %call31, %struct.X509_name_st* noundef %call12) #9
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %proxy_name_done, label %if.then41

if.then41:                                        ; preds = %lor.lhs.false, %if.end34
  br label %proxy_name_done

proxy_name_done:                                  ; preds = %lor.lhs.false, %if.then41
  %cmp43.not = phi i1 [ true, %lor.lhs.false ], [ false, %if.then41 ]
  %err.0 = phi i32 [ 0, %lor.lhs.false ], [ 72, %if.then41 ]
  tail call void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef %call35) #9
  tail call void @X509_NAME_free(%struct.X509_name_st* noundef nonnull %call31) #9
  br i1 %cmp43.not, label %if.end54, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.end22, %if.end17, %if.then10, %proxy_name_done
  %err.1171 = phi i32 [ %err.0, %proxy_name_done ], [ 72, %if.then10 ], [ 72, %if.end17 ], [ 72, %if.end22 ]
  %call45 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %2, i32 noundef %i.0195, i32 noundef %err.1171) #10
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %cleanup107, label %if.end54

if.end54:                                         ; preds = %land.lhs.true44, %proxy_name_done, %if.end
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  %call57 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56) #9
  %cmp60190 = icmp sgt i32 %call57, %i.0.in194
  br i1 %cmp60190, label %for.body61, label %for.inc104

for.body61:                                       ; preds = %if.end54, %cleanup97
  %j.0191.in = phi i32 [ %j.0191, %cleanup97 ], [ %call57, %if.end54 ]
  %j.0191 = add nsw i32 %j.0191.in, -1
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call63 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %4) #10
  %call64 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call63, i32 noundef %j.0191) #9
  %nc65 = getelementptr inbounds i8, i8* %call64, i64 288
  %5 = bitcast i8* %nc65 to %struct.NAME_CONSTRAINTS_st**
  %6 = load %struct.NAME_CONSTRAINTS_st*, %struct.NAME_CONSTRAINTS_st** %5, align 8, !tbaa !130
  %tobool.not = icmp eq %struct.NAME_CONSTRAINTS_st* %6, null
  br i1 %tobool.not, label %cleanup97, label %if.then66

if.then66:                                        ; preds = %for.body61
  %call67 = tail call i32 @NAME_CONSTRAINTS_check(%struct.x509_st* noundef %2, %struct.NAME_CONSTRAINTS_st* noundef nonnull %6) #9
  %7 = or i32 %call67, %i.0195
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %land.lhs.true71, label %if.end87

land.lhs.true71:                                  ; preds = %if.then66
  %9 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %hostflags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %9, i64 0, i32 10
  %10 = load i32, i32* %hostflags, align 8, !tbaa !131
  %and72 = and i32 %10, 32
  %cmp73 = icmp eq i32 %and72, 0
  br i1 %cmp73, label %land.lhs.true74, label %cleanup97

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %and77 = and i32 %10, 1
  %cmp78.not = icmp eq i32 %and77, 0
  br i1 %cmp78.not, label %lor.lhs.false79, label %if.then82

lor.lhs.false79:                                  ; preds = %land.lhs.true74
  %call80 = tail call fastcc i32 @has_san_id(%struct.x509_st* noundef %2) #10
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %lor.lhs.false79, %land.lhs.true74
  %call83 = tail call i32 @NAME_CONSTRAINTS_check_CN(%struct.x509_st* noundef %2, %struct.NAME_CONSTRAINTS_st* noundef nonnull %6) #9
  br label %if.end87

if.end84:                                         ; preds = %lor.lhs.false79
  %cmp85 = icmp slt i32 %call80, 0
  br i1 %cmp85, label %cleanup107, label %cleanup97

if.end87:                                         ; preds = %if.then82, %if.then66
  %rv.0.ph = phi i32 [ %call67, %if.then66 ], [ %call83, %if.then82 ]
  switch i32 %rv.0.ph, label %sw.default [
    i32 0, label %cleanup97
    i32 17, label %cleanup107
  ]

sw.default:                                       ; preds = %if.end87
  %call88 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %2, i32 noundef %i.0195, i32 noundef %rv.0.ph) #10
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %cleanup107, label %cleanup97

cleanup97:                                        ; preds = %if.end84, %land.lhs.true71, %for.body61, %if.end87, %sw.default
  %cmp60 = icmp sgt i32 %j.0191, %i.0.in194
  br i1 %cmp60, label %for.body61, label %for.inc104, !llvm.loop !132

for.inc104:                                       ; preds = %cleanup97, %for.body, %if.end54
  %cmp = icmp sgt i32 %i.0.in194, 1
  br i1 %cmp, label %for.body, label %cleanup107, !llvm.loop !133

cleanup107:                                       ; preds = %for.inc104, %land.lhs.true44, %if.end84, %if.end87, %sw.default, %entry, %if.then33
  %retval.8 = phi i32 [ -1, %if.then33 ], [ 1, %entry ], [ %call80, %if.end84 ], [ -1, %if.end87 ], [ 0, %sw.default ], [ 1, %for.inc104 ], [ 0, %land.lhs.true44 ]
  ret i32 %retval.8
}

declare i32 @X509v3_asid_validate_path(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509v3_addr_validate_path(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare i32 @X509_check_ca(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_curve(%struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %val = alloca i32, align 4
  %call = tail call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %cert) #9
  %cmp = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %call) #9
  %cmp2 = icmp eq i32 %call1, 408
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %call4 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %val) #9
  %cmp5 = icmp slt i32 %call4, 0
  %1 = load i32, i32* %val, align 4
  %tobool.not = icmp eq i32 %1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %cond = select i1 %cmp5, i32 %call4, i32 %lnot.ext
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %cond, %if.then3 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @X509_NAME_entry_count(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_GENERAL_NAME* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i64 @X509_get_version(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_EXTENSION_sk_type(%struct.stack_st_X509_EXTENSION* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_EXTENSION* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare %struct.stack_st_X509_EXTENSION* @X509_get0_extensions(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_purpose(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, i32 noundef %purpose, i32 noundef %depth, i32 noundef %must_be_ca) unnamed_addr #0 {
entry:
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  %0 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp.not = icmp sgt i32 %0, %depth
  br i1 %cmp.not, label %sw.default, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %purpose1 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %1, i64 0, i32 4
  %2 = load i32, i32* %purpose1, align 8, !tbaa !66
  %cmp2 = icmp eq i32 %2, %purpose
  br i1 %cmp2, label %if.end, label %sw.default

if.end:                                           ; preds = %land.lhs.true
  %trust = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %1, i64 0, i32 5
  %3 = load i32, i32* %trust, align 4, !tbaa !67
  %call = tail call i32 @X509_check_trust(%struct.x509_st* noundef %x, i32 noundef %3, i32 noundef 4) #9
  switch i32 %call, label %sw.default [
    i32 1, label %cleanup
    i32 2, label %sw.epilog13
  ]

sw.default:                                       ; preds = %entry, %land.lhs.true, %if.end
  %cmp4 = icmp sgt i32 %must_be_ca, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @X509_check_purpose(%struct.x509_st* noundef %x, i32 noundef %purpose, i32 noundef %conv) #9
  switch i32 %call5, label %sw.default7 [
    i32 1, label %cleanup
    i32 0, label %sw.epilog13
  ]

sw.default7:                                      ; preds = %sw.default
  %param8 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %4 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param8, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %4, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %5, 32
  %cmp9 = icmp eq i64 %and, 0
  br i1 %cmp9, label %cleanup, label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.default, %sw.default7, %if.end
  %call14 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, i32 noundef %depth, i32 noundef 26) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default7, %sw.default, %if.end, %sw.epilog13
  %retval.0 = phi i32 [ %call14, %sw.epilog13 ], [ %call, %if.end ], [ %call5, %sw.default ], [ 1, %sw.default7 ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @X509_check_trust(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_purpose(%struct.x509_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_sig_level(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %secbits = alloca i32, align 4
  %0 = bitcast i32* %secbits to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 -1, i32* %secbits, align 4, !tbaa !30
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %auth_level = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %1, i64 0, i32 7
  %2 = load i32, i32* %auth_level, align 4, !tbaa !28
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @X509_get_signature_info(%struct.x509_st* noundef %cert, i32* noundef null, i32* noundef null, i32* noundef nonnull %secbits, i32* noundef null) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = icmp ult i32 %2, 5
  %spec.store.select = select i1 %3, i32 %2, i32 5
  %4 = load i32, i32* %secbits, align 4, !tbaa !30
  %sub = add nsw i32 %spec.store.select, -1
  %5 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @minbits_table, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !30
  %cmp6 = icmp sge i32 %4, %6
  %conv = zext i1 %cmp6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %conv, %if.end5 ], [ 1, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i32 @X509_get_signature_info(%struct.x509_st* noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_hosts(%struct.x509_st* noundef %x, %struct.X509_VERIFY_PARAM_st* noundef %vpm) unnamed_addr #0 {
entry:
  %hosts = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %vpm, i64 0, i32 9
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !125
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %peername = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %vpm, i64 0, i32 11
  %1 = load i8*, i8** %peername, align 8, !tbaa !134
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 779) #9
  store i8* null, i8** %peername, align 8, !tbaa !134
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp428 = icmp sgt i32 %call1, 0
  br i1 %cmp428, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %hostflags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %vpm, i64 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !135

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %hosts, align 8, !tbaa !125
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #10
  %call7 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.029) #9
  %3 = load i32, i32* %hostflags, align 8, !tbaa !131
  %call9 = tail call i32 @X509_check_host(%struct.x509_st* noundef %x, i8* noundef %call7, i64 noundef 0, i32 noundef %3, i8** noundef nonnull %peername) #9
  %cmp10 = icmp sgt i32 %call9, 0
  %inc = add nuw nsw i32 %i.029, 1
  br i1 %cmp10, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end
  %cmp13 = icmp eq i32 %call1, 0
  %conv = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end
  %retval.0 = phi i32 [ %conv, %for.end ], [ 1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_id_error(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef %errcode) unnamed_addr #0 {
entry:
  %cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !18
  %call = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %0, i32 noundef 0, i32 noundef %errcode) #10
  ret i32 %call
}

declare i32 @X509_check_email(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @X509_check_ip(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_check_host(%struct.x509_st* noundef, i8* noundef, i64 noundef, i32 noundef, i8** noundef) local_unnamed_addr #2

declare i32 @X509_NAME_ENTRY_set(%struct.X509_name_entry_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_entry_st* @X509_NAME_get_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @X509_NAME_dup(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare %struct.X509_name_entry_st* @X509_NAME_delete_entry(%struct.X509_name_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @X509_NAME_ENTRY_get_object(%struct.X509_name_entry_st* noundef) local_unnamed_addr #2

declare void @X509_NAME_ENTRY_free(%struct.X509_name_entry_st* noundef) local_unnamed_addr #2

declare void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare i32 @NAME_CONSTRAINTS_check(%struct.x509_st* noundef, %struct.NAME_CONSTRAINTS_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @has_san_id(%struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %call = tail call i8* @X509_get_ext_d2i(%struct.x509_st* noundef %x, i32 noundef 85, i32* noundef null, i32* noundef null) #9
  %0 = bitcast i8* %call to %struct.stack_st_GENERAL_NAME*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #10
  %call21 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #9
  %cmp32 = icmp sgt i32 %call21, 0
  br i1 %cmp32, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #9
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %for.end, !llvm.loop !136

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.03 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.03) #9
  %type = bitcast i8* %call5 to i32*
  %1 = load i32, i32* %type, align 8, !tbaa !137
  %cmp6 = icmp eq i32 %1, 2
  %inc = add nuw nsw i32 %i.03, 1
  br i1 %cmp6, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %for.cond.preheader
  %ret.2 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  tail call void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #9
  br label %cleanup9

cleanup9:                                         ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @NAME_CONSTRAINTS_check_CN(%struct.x509_st* noundef, %struct.NAME_CONSTRAINTS_st* noundef) local_unnamed_addr #2

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare void @GENERAL_NAMES_free(%struct.stack_st_GENERAL_NAME* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_get_ext_by_NID(%struct.X509_crl_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_EXTENSION_get_data(%struct.X509_extension_st* noundef) local_unnamed_addr #2

declare i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_likely_issued(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_signing_allowed(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_cert(%struct.x509_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %crl = alloca %struct.X509_crl_st*, align 8
  %dcrl = alloca %struct.X509_crl_st*, align 8
  %0 = bitcast %struct.X509_crl_st** %crl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  %1 = bitcast %struct.X509_crl_st** %dcrl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %2 = load i32, i32* %error_depth, align 4, !tbaa !31
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  %call1 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %2) #9
  %4 = bitcast i8* %call1 to %struct.x509_st*
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %5 = bitcast %struct.x509_st** %current_cert to i8**
  store i8* %call1, i8** %5, align 8, !tbaa !32
  %current_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 26
  store %struct.x509_st* null, %struct.x509_st** %current_issuer, align 8, !tbaa !60
  %current_crl_score = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 28
  store i32 0, i32* %current_crl_score, align 8, !tbaa !76
  %current_reasons = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 29
  store i32 0, i32* %current_reasons, align 4, !tbaa !77
  %ex_flags = getelementptr inbounds i8, i8* %call1, i64 232
  %6 = bitcast i8* %ex_flags to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !4
  %and = and i32 %7, 1024
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.body.lr.ph, label %cleanup45

while.body.lr.ph:                                 ; preds = %entry
  %get_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 11
  %current_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 27
  %check_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 12
  %cert_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 13
  br label %while.body

while.cond:                                       ; preds = %if.end38
  %cmp3.not = icmp eq i32 %18, 32895
  br i1 %cmp3.not, label %done, label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %8 = phi i32 [ 0, %while.body.lr.ph ], [ %18, %while.cond ]
  %9 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %get_crl, align 8, !tbaa !81
  %cmp5.not = icmp eq i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* %9, null
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %while.body
  %call8 = call i32 %9(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st** noundef nonnull %crl, %struct.x509_st* noundef %4) #9
  br label %if.end10

if.else:                                          ; preds = %while.body
  %call9 = call fastcc i32 @get_crl_delta(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st** noundef nonnull %crl, %struct.X509_crl_st** noundef nonnull %dcrl, %struct.x509_st* noundef %4) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %ok.1 = phi i32 [ %call8, %if.then6 ], [ %call9, %if.else ]
  %tobool.not = icmp eq i32 %ok.1, 0
  br i1 %tobool.not, label %done.sink.split, label %if.end13

if.end13:                                         ; preds = %if.end10
  %10 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  store %struct.X509_crl_st* %10, %struct.X509_crl_st** %current_crl, align 8, !tbaa !61
  %11 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl, align 8, !tbaa !82
  %call14 = call i32 %11(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef %10) #9
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %done, label %if.end17

if.end17:                                         ; preds = %if.end13
  %12 = load %struct.X509_crl_st*, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  %cmp18.not = icmp eq %struct.X509_crl_st* %12, null
  br i1 %cmp18.not, label %if.then32, label %if.then19

if.then19:                                        ; preds = %if.end17
  %13 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl, align 8, !tbaa !82
  %call21 = call i32 %13(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef nonnull %12) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %done, label %if.end24

if.end24:                                         ; preds = %if.then19
  %14 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl, align 8, !tbaa !83
  %call25 = call i32 %14(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef nonnull %12, %struct.x509_st* noundef %4) #9
  switch i32 %call25, label %if.then32 [
    i32 0, label %done
    i32 2, label %if.end38
  ]

if.then32:                                        ; preds = %if.end24, %if.end17
  %15 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl, align 8, !tbaa !83
  %16 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  %call34 = call i32 %15(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef %16, %struct.x509_st* noundef %4) #9
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %done, label %if.end38

if.end38:                                         ; preds = %if.end24, %if.then32
  %ok.3 = phi i32 [ %call34, %if.then32 ], [ %call25, %if.end24 ]
  %17 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %17) #9
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %12) #9
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  %18 = load i32, i32* %current_reasons, align 4, !tbaa !77
  %cmp40 = icmp eq i32 %8, %18
  br i1 %cmp40, label %done.sink.split, label %while.cond

done.sink.split:                                  ; preds = %if.end38, %if.end10
  %call12 = call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 3) #10
  br label %done

done:                                             ; preds = %while.cond, %if.end13, %if.then19, %if.then32, %if.end24, %done.sink.split
  %ok.5 = phi i32 [ %call12, %done.sink.split ], [ %ok.3, %while.cond ], [ 0, %if.end13 ], [ 0, %if.then19 ], [ 0, %if.then32 ], [ %call25, %if.end24 ]
  %19 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %19) #9
  %20 = load %struct.X509_crl_st*, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %20) #9
  %current_crl44 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 27
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %current_crl44, align 8, !tbaa !61
  br label %cleanup45

cleanup45:                                        ; preds = %entry, %done
  %retval.0 = phi i32 [ %ok.5, %done ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_crl_delta(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st** nocapture noundef writeonly %pcrl, %struct.X509_crl_st** nocapture noundef writeonly %pdcrl, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %issuer = alloca %struct.x509_st*, align 8
  %crl_score = alloca i32, align 4
  %reasons = alloca i32, align 4
  %crl = alloca %struct.X509_crl_st*, align 8
  %dcrl = alloca %struct.X509_crl_st*, align 8
  %0 = bitcast %struct.x509_st** %issuer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store %struct.x509_st* null, %struct.x509_st** %issuer, align 8, !tbaa !58
  %1 = bitcast i32* %crl_score to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  store i32 0, i32* %crl_score, align 4, !tbaa !30
  %2 = bitcast i32* %reasons to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  %3 = bitcast %struct.X509_crl_st** %crl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  %4 = bitcast %struct.X509_crl_st** %dcrl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #11
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  %call = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #9
  %current_reasons = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 29
  %5 = load i32, i32* %current_reasons, align 4, !tbaa !77
  store i32 %5, i32* %reasons, align 4, !tbaa !30
  %crls = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 3
  %6 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !63
  %call1 = call fastcc i32 @get_crl_sk(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st** noundef nonnull %crl, %struct.X509_crl_st** noundef nonnull %dcrl, %struct.x509_st** noundef nonnull %issuer, i32* noundef nonnull %crl_score, i32* noundef nonnull %reasons, %struct.stack_st_X509_CRL* noundef %6) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %done

if.end:                                           ; preds = %entry
  %lookup_crls = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 16
  %7 = load %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls, align 8, !tbaa !98
  %call2 = tail call %struct.stack_st_X509_CRL* %7(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_name_st* noundef %call) #9
  %cmp = icmp eq %struct.stack_st_X509_CRL* %call2, null
  %8 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8
  %cmp3 = icmp ne %struct.X509_crl_st* %8, null
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then10, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @get_crl_sk(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st** noundef nonnull %crl, %struct.X509_crl_st** noundef nonnull %dcrl, %struct.x509_st** noundef nonnull %issuer, i32* noundef nonnull %crl_score, i32* noundef nonnull %reasons, %struct.stack_st_X509_CRL* noundef %call2) #10
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %call2) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call7, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #9
  br label %done

done:                                             ; preds = %entry, %if.end5
  %.pr = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !58
  %cmp9.not = icmp eq %struct.X509_crl_st* %.pr, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.end, %done
  %9 = phi %struct.X509_crl_st* [ %.pr, %done ], [ %8, %if.end ]
  %10 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !58
  %current_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 26
  store %struct.x509_st* %10, %struct.x509_st** %current_issuer, align 8, !tbaa !60
  %11 = load i32, i32* %crl_score, align 4, !tbaa !30
  %current_crl_score = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 28
  store i32 %11, i32* %current_crl_score, align 8, !tbaa !76
  %12 = load i32, i32* %reasons, align 4, !tbaa !30
  store i32 %12, i32* %current_reasons, align 4, !tbaa !77
  store %struct.X509_crl_st* %9, %struct.X509_crl_st** %pcrl, align 8, !tbaa !58
  %13 = load %struct.X509_crl_st*, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  store %struct.X509_crl_st* %13, %struct.X509_crl_st** %pdcrl, align 8, !tbaa !58
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then10
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 0, %done ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef %err) unnamed_addr #0 {
entry:
  %error = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 24
  store i32 %err, i32* %error, align 8, !tbaa !21
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %0 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  %call = tail call i32 %0(i32 noundef 0, %struct.x509_store_ctx_st* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_crl_sk(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st** nocapture noundef %pcrl, %struct.X509_crl_st** nocapture noundef %pdcrl, %struct.x509_st** nocapture noundef writeonly %pissuer, i32* nocapture noundef %pscore, i32* nocapture noundef %preasons, %struct.stack_st_X509_CRL* noundef %crls) unnamed_addr #0 {
entry:
  %reasons = alloca i32, align 4
  %crl_issuer = alloca %struct.x509_st*, align 8
  %day = alloca i32, align 4
  %sec = alloca i32, align 4
  %0 = load i32, i32* %pscore, align 4, !tbaa !30
  %1 = bitcast i32* %reasons to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %2 = load %struct.x509_st*, %struct.x509_st** %current_cert, align 8, !tbaa !32
  %3 = bitcast %struct.x509_st** %crl_issuer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  store %struct.x509_st* null, %struct.x509_st** %crl_issuer, align 8, !tbaa !58
  %call = call fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls) #10
  %call178 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp79 = icmp sgt i32 %call178, 0
  br i1 %cmp79, label %for.body.lr.ph, label %if.end26

for.body.lr.ph:                                   ; preds = %entry
  %4 = bitcast i32* %day to i8*
  %5 = bitcast i32* %sec to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %best_crl_issuer.084 = phi %struct.x509_st* [ null, %for.body.lr.ph ], [ %best_crl_issuer.1, %for.inc ]
  %best_crl.083 = phi %struct.X509_crl_st* [ null, %for.body.lr.ph ], [ %best_crl.1, %for.inc ]
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %best_reasons.081 = phi i32 [ 0, %for.body.lr.ph ], [ %best_reasons.1, %for.inc ]
  %best_score.080 = phi i32 [ %0, %for.body.lr.ph ], [ %best_score.1, %for.inc ]
  %call3 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.082) #9
  %6 = bitcast i8* %call3 to %struct.X509_crl_st*
  %7 = load i32, i32* %preasons, align 4, !tbaa !30
  store i32 %7, i32* %reasons, align 4, !tbaa !30
  %call4 = call fastcc i32 @get_crl_score(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st** noundef nonnull %crl_issuer, i32* noundef nonnull %reasons, %struct.X509_crl_st* noundef %6, %struct.x509_st* noundef %2) #10
  %cmp5 = icmp slt i32 %call4, %best_score.080
  %cmp6 = icmp eq i32 %call4, 0
  %or.cond = or i1 %cmp5, %cmp6
  br i1 %or.cond, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %cmp7 = icmp eq i32 %call4, %best_score.080
  %cmp8 = icmp ne %struct.X509_crl_st* %best_crl.083, null
  %or.cond40 = select i1 %cmp7, i1 %cmp8, i1 false
  br i1 %or.cond40, label %if.then9, label %if.end22

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11
  %call10 = call %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef nonnull %best_crl.083) #9
  %call11 = call %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef %6) #9
  %call12 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef %call10, %struct.asn1_string_st* noundef %call11) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %cleanup.thread, label %if.end15

if.end15:                                         ; preds = %if.then9
  %8 = load i32, i32* %day, align 4, !tbaa !30
  %cmp16 = icmp slt i32 %8, 1
  %9 = load i32, i32* %sec, align 4
  %cmp18 = icmp slt i32 %9, 1
  %or.cond41 = select i1 %cmp16, i1 %cmp18, i1 false
  br i1 %or.cond41, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then9, %if.end15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  br label %for.inc

cleanup:                                          ; preds = %if.end15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  br label %if.end22

if.end22:                                         ; preds = %cleanup, %if.end
  %10 = load %struct.x509_st*, %struct.x509_st** %crl_issuer, align 8, !tbaa !58
  %11 = load i32, i32* %reasons, align 4, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %for.body, %if.end22
  %best_score.1 = phi i32 [ %best_score.080, %for.body ], [ %call4, %if.end22 ], [ %best_score.080, %cleanup.thread ]
  %best_reasons.1 = phi i32 [ %best_reasons.081, %for.body ], [ %11, %if.end22 ], [ %best_reasons.081, %cleanup.thread ]
  %best_crl.1 = phi %struct.X509_crl_st* [ %best_crl.083, %for.body ], [ %6, %if.end22 ], [ %best_crl.083, %cleanup.thread ]
  %best_crl_issuer.1 = phi %struct.x509_st* [ %best_crl_issuer.084, %for.body ], [ %10, %if.end22 ], [ %best_crl_issuer.084, %cleanup.thread ]
  %inc = add nuw nsw i32 %i.082, 1
  %call1 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !139

for.end:                                          ; preds = %for.inc
  %cmp23.not = icmp eq %struct.X509_crl_st* %best_crl.1, null
  br i1 %cmp23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %for.end
  %12 = load %struct.X509_crl_st*, %struct.X509_crl_st** %pcrl, align 8, !tbaa !58
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %12) #9
  store %struct.X509_crl_st* %best_crl.1, %struct.X509_crl_st** %pcrl, align 8, !tbaa !58
  store %struct.x509_st* %best_crl_issuer.1, %struct.x509_st** %pissuer, align 8, !tbaa !58
  store i32 %best_score.1, i32* %pscore, align 4, !tbaa !30
  store i32 %best_reasons.1, i32* %preasons, align 4, !tbaa !30
  %call25 = call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef nonnull %best_crl.1) #9
  %13 = load %struct.X509_crl_st*, %struct.X509_crl_st** %pdcrl, align 8, !tbaa !58
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %13) #9
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %pdcrl, align 8, !tbaa !58
  call fastcc void @get_delta_sk(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st** noundef nonnull %pdcrl, i32* noundef nonnull %pscore, %struct.X509_crl_st* noundef nonnull %best_crl.1, %struct.stack_st_X509_CRL* noundef %crls) #10
  br label %if.end26

if.end26:                                         ; preds = %entry, %if.then24, %for.end
  %best_score.0.lcssa93 = phi i32 [ %best_score.1, %if.then24 ], [ %best_score.1, %for.end ], [ %0, %entry ]
  %cmp27 = icmp sgt i32 %best_score.0.lcssa93, 447
  %.75 = zext i1 %cmp27 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  ret i32 %.75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_crl_score(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st** nocapture noundef writeonly %pissuer, i32* nocapture noundef %preasons, %struct.X509_crl_st* noundef %crl, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %crl_score = alloca i32, align 4
  %crl_reasons = alloca i32, align 4
  %0 = bitcast i32* %crl_score to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  store i32 0, i32* %crl_score, align 4, !tbaa !30
  %1 = load i32, i32* %preasons, align 4, !tbaa !30
  %2 = bitcast i32* %crl_reasons to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  %idp_flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 7
  %3 = load i32, i32* %idp_flags, align 8, !tbaa !103
  %and = and i32 %3, 2
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %4 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %4, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8, !tbaa !38
  %and1 = and i64 %5, 4096
  %cmp2 = icmp eq i64 %and1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %3, 96
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end21, label %cleanup

if.else:                                          ; preds = %if.end
  %and9 = and i32 %3, 64
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else
  %idp_reasons = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 8
  %6 = load i32, i32* %idp_reasons, align 4, !tbaa !140
  %neg = xor i32 %1, -1
  %and12 = and i32 %6, %neg
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %cleanup, label %if.end21

if.else16:                                        ; preds = %if.else
  %base_crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 10
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number, align 8, !tbaa !51
  %cmp17.not = icmp eq %struct.asn1_string_st* %7, null
  br i1 %cmp17.not, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.then11, %if.else16, %if.then3
  %call = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #9
  %call22 = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %crl) #9
  %call23 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call, %struct.X509_name_st* noundef %call22) #9
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.else31, label %if.then25

if.then25:                                        ; preds = %if.end21
  %8 = load i32, i32* %idp_flags, align 8, !tbaa !103
  %and27 = and i32 %8, 32
  %cmp28 = icmp eq i32 %and27, 0
  br i1 %cmp28, label %cleanup, label %if.end32

if.else31:                                        ; preds = %if.end21
  store i32 32, i32* %crl_score, align 4, !tbaa !30
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.else31
  %9 = phi i32 [ 0, %if.then25 ], [ 32, %if.else31 ]
  %flags33 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 4
  %10 = load i32, i32* %flags33, align 4, !tbaa !104
  %and34 = and i32 %10, 512
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  %or37 = or i32 %9, 256
  store i32 %or37, i32* %crl_score, align 4, !tbaa !30
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32
  %11 = phi i32 [ %or37, %if.then36 ], [ %9, %if.end32 ]
  %call39 = tail call fastcc i32 @check_crl_time(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef nonnull %crl, i32 noundef 0) #10
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end38
  %or42 = or i32 %11, 64
  store i32 %or42, i32* %crl_score, align 4, !tbaa !30
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  call fastcc void @crl_akid_check(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.X509_crl_st* noundef nonnull %crl, %struct.x509_st** noundef %pissuer, i32* noundef nonnull %crl_score) #10
  %12 = load i32, i32* %crl_score, align 4, !tbaa !30
  %and44 = and i32 %12, 4
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end43
  %call48 = call fastcc i32 @crl_crldp_check(%struct.x509_st* noundef %x, %struct.X509_crl_st* noundef nonnull %crl, i32 noundef %12, i32* noundef nonnull %crl_reasons) #10
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end58, label %if.then50

if.then50:                                        ; preds = %if.end47
  %13 = load i32, i32* %crl_reasons, align 4, !tbaa !30
  %neg51 = xor i32 %1, -1
  %and52 = and i32 %13, %neg51
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %cleanup, label %if.end55

if.end55:                                         ; preds = %if.then50
  %or56 = or i32 %13, %1
  %or57 = or i32 %12, 128
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.end47
  %14 = phi i32 [ %or57, %if.end55 ], [ %12, %if.end47 ]
  %tmp_reasons.0 = phi i32 [ %or56, %if.end55 ], [ %1, %if.end47 ]
  store i32 %tmp_reasons.0, i32* %preasons, align 4, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end43, %if.then25, %if.else16, %if.then11, %if.then3, %entry, %if.end58
  %retval.0 = phi i32 [ %14, %if.end58 ], [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.then11 ], [ 0, %if.else16 ], [ 0, %if.then25 ], [ 0, %if.end43 ], [ 0, %if.then50 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @get_delta_sk(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st** nocapture noundef writeonly %dcrl, i32* nocapture noundef %pscore, %struct.X509_crl_st* noundef %base, %struct.stack_st_X509_CRL* noundef %crls) unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %1, 8192
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 25
  %2 = load %struct.x509_st*, %struct.x509_st** %current_cert, align 8, !tbaa !32
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %2, i64 0, i32 8
  %3 = load i32, i32* %ex_flags, align 8, !tbaa !4
  %flags1 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %base, i64 0, i32 4
  %4 = load i32, i32* %flags1, align 4, !tbaa !104
  %or = or i32 %4, %3
  %and2 = and i32 %or, 4096
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %crls) #10
  %call633 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp734 = icmp sgt i32 %call633, 0
  br i1 %cmp734, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp7 = icmp slt i32 %inc, %call6
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !141

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.035 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.035) #9
  %5 = bitcast i8* %call9 to %struct.X509_crl_st*
  %call10 = tail call fastcc i32 @check_delta_base(%struct.X509_crl_st* noundef %5, %struct.X509_crl_st* noundef %base) #10
  %tobool.not = icmp eq i32 %call10, 0
  %inc = add nuw nsw i32 %i.035, 1
  br i1 %tobool.not, label %for.cond, label %if.then11

if.then11:                                        ; preds = %for.body
  %6 = bitcast i8* %call9 to %struct.X509_crl_st*
  %call12 = tail call fastcc i32 @check_crl_time(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st* noundef %6, i32 noundef 0) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then11
  %7 = load i32, i32* %pscore, align 4, !tbaa !30
  %or15 = or i32 %7, 2
  store i32 %or15, i32* %pscore, align 4, !tbaa !30
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11
  %call17 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %6) #9
  %8 = bitcast %struct.X509_crl_st** %dcrl to i8**
  store i8* %call9, i8** %8, align 8, !tbaa !58
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %dcrl, align 8, !tbaa !58
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end, %if.end16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_crl_time(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_crl_st* noundef %crl, i32 noundef %notify) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %notify, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %current_crl = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 27
  store %struct.X509_crl_st* %crl, %struct.X509_crl_st** %current_crl, align 8, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !38
  %and = and i64 %1, 2
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %check_time = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 1
  br label %if.end10

if.else:                                          ; preds = %if.end
  %and5 = and i64 %1, 2097152
  %cmp6.not = icmp eq i64 %and5, 0
  br i1 %cmp6.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.else, %if.then1
  %ptime.0 = phi i64* [ %check_time, %if.then1 ], [ null, %if.else ]
  %call = tail call %struct.asn1_string_st* @X509_CRL_get0_lastUpdate(%struct.X509_crl_st* noundef %crl) #9
  %call11 = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %call, i64* noundef %ptime.0) #10
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end10
  br i1 %tobool.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then13
  %call17 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 15) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end31

if.end21:                                         ; preds = %if.end10
  %cmp22 = icmp sgt i32 %call11, 0
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end21
  br i1 %tobool.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.then23
  %call27 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 11) #10
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end16, %if.end26, %if.end21
  %call32 = tail call %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef %crl) #9
  %tobool33.not = icmp eq %struct.asn1_string_st* %call32, null
  br i1 %tobool33.not, label %if.end57, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = tail call %struct.asn1_string_st* @X509_CRL_get0_nextUpdate(%struct.X509_crl_st* noundef %crl) #9
  %call36 = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %call35, i64* noundef %ptime.0) #10
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %if.then34
  br i1 %tobool.not, label %cleanup, label %if.end41

if.end41:                                         ; preds = %if.then38
  %call42 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 16) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.then59

if.end46:                                         ; preds = %if.then34
  %cmp47 = icmp slt i32 %call36, 0
  br i1 %cmp47, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.end46
  %current_crl_score = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 28
  %2 = load i32, i32* %current_crl_score, align 8, !tbaa !76
  %and48 = and i32 %2, 2
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %if.then50, label %if.end57

if.then50:                                        ; preds = %land.lhs.true
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then50
  %call52 = tail call fastcc i32 @verify_cb_crl(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 12) #10
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cleanup, label %if.then59

if.end57:                                         ; preds = %if.end46, %land.lhs.true, %if.end31
  br i1 %tobool.not, label %cleanup, label %if.then59

if.then59:                                        ; preds = %if.end41, %lor.lhs.false, %if.end57
  %current_crl60 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 27
  store %struct.X509_crl_st* null, %struct.X509_crl_st** %current_crl60, align 8, !tbaa !61
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end57, %if.then59, %if.then50, %if.end41, %if.then38, %if.end26, %if.then23, %if.end16, %if.then13, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %if.then13 ], [ 0, %if.end16 ], [ 0, %if.then23 ], [ 0, %if.end26 ], [ 0, %if.then38 ], [ 0, %if.end41 ], [ 0, %lor.lhs.false ], [ 0, %if.then50 ], [ 1, %if.then59 ], [ 1, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @crl_akid_check(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, %struct.X509_crl_st* noundef %crl, %struct.x509_st** nocapture noundef writeonly %pissuer, i32* nocapture noundef %pcrl_score) unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef %crl) #9
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 23
  %0 = load i32, i32* %error_depth, align 4, !tbaa !31
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %1 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %1) #10
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #9
  %sub = add nsw i32 %call2, -1
  %cmp.not = icmp ne i32 %0, %sub
  %inc = zext i1 %cmp.not to i32
  %spec.select = add nsw i32 %0, %inc
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %spec.select) #9
  %3 = bitcast i8* %call5 to %struct.x509_st*
  %akid = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 5
  %4 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !142
  %call6 = tail call i32 @X509_check_akid(%struct.x509_st* noundef %3, %struct.AUTHORITY_KEYID_st* noundef %4) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %entry
  %5 = load i32, i32* %pcrl_score, align 4, !tbaa !30
  %and = and i32 %5, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.then8
  %or = or i32 %5, 28
  store i32 %or, i32* %pcrl_score, align 4, !tbaa !30
  %6 = bitcast %struct.x509_st** %pissuer to i8**
  store i8* %call5, i8** %6, align 8, !tbaa !58
  br label %cleanup

if.end11:                                         ; preds = %if.then8, %entry
  %cidx.196 = add nsw i32 %spec.select, 1
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call1497 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %7) #10
  %call1598 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1497) #9
  %cmp1699 = icmp slt i32 %cidx.196, %call1598
  br i1 %cmp1699, label %for.body, label %for.end

for.body:                                         ; preds = %if.end11, %for.inc
  %cidx.1100 = phi i32 [ %cidx.1, %for.inc ], [ %cidx.196, %if.end11 ]
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %8) #10
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %cidx.1100) #9
  %9 = bitcast i8* %call19 to %struct.x509_st*
  %call20 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %9) #9
  %call21 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call20, %struct.X509_name_st* noundef %call) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.inc

if.end24:                                         ; preds = %for.body
  %10 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !142
  %call26 = tail call i32 @X509_check_akid(%struct.x509_st* noundef %9, %struct.AUTHORITY_KEYID_st* noundef %10) #9
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %if.end24
  %11 = load i32, i32* %pcrl_score, align 4, !tbaa !30
  %or29 = or i32 %11, 12
  store i32 %or29, i32* %pcrl_score, align 4, !tbaa !30
  %12 = bitcast %struct.x509_st** %pissuer to i8**
  store i8* %call19, i8** %12, align 8, !tbaa !58
  br label %cleanup

for.inc:                                          ; preds = %if.end24, %for.body
  %cidx.1 = add nsw i32 %cidx.1100, 1
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %13) #10
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #9
  %cmp16 = icmp slt i32 %cidx.1, %call15
  br i1 %cmp16, label %for.body, label %for.end, !llvm.loop !143

for.end:                                          ; preds = %for.inc, %if.end11
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %14 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %14, i64 0, i32 3
  %15 = load i64, i64* %flags, align 8, !tbaa !38
  %and32 = and i64 %15, 4096
  %cmp33 = icmp eq i64 %and32, 0
  br i1 %cmp33, label %cleanup, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.end
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %call37101 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %16) #10
  %call38102 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call37101) #9
  %cmp39103 = icmp sgt i32 %call38102, 0
  br i1 %cmp39103, label %for.body40, label %cleanup

for.body40:                                       ; preds = %for.cond36.preheader, %for.inc55
  %i.0104 = phi i32 [ %inc56, %for.inc55 ], [ 0, %for.cond36.preheader ]
  %17 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %17) #10
  %call43 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call42, i32 noundef %i.0104) #9
  %18 = bitcast i8* %call43 to %struct.x509_st*
  %call44 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %18) #9
  %call45 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call44, %struct.X509_name_st* noundef %call) #9
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end48, label %for.inc55

if.end48:                                         ; preds = %for.body40
  %19 = load %struct.AUTHORITY_KEYID_st*, %struct.AUTHORITY_KEYID_st** %akid, align 8, !tbaa !142
  %call50 = tail call i32 @X509_check_akid(%struct.x509_st* noundef %18, %struct.AUTHORITY_KEYID_st* noundef %19) #9
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %for.inc55

if.then52:                                        ; preds = %if.end48
  %20 = bitcast %struct.x509_st** %pissuer to i8**
  store i8* %call43, i8** %20, align 8, !tbaa !58
  %21 = load i32, i32* %pcrl_score, align 4, !tbaa !30
  %or53 = or i32 %21, 4
  store i32 %or53, i32* %pcrl_score, align 4, !tbaa !30
  br label %cleanup

for.inc55:                                        ; preds = %if.end48, %for.body40
  %inc56 = add nuw nsw i32 %i.0104, 1
  %22 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %call37 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %22) #10
  %call38 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call37) #9
  %cmp39 = icmp slt i32 %inc56, %call38
  br i1 %cmp39, label %for.body40, label %cleanup, !llvm.loop !144

cleanup:                                          ; preds = %for.inc55, %for.cond36.preheader, %for.end, %if.then52, %if.then28, %if.then9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @crl_crldp_check(%struct.x509_st* nocapture noundef readonly %x, %struct.X509_crl_st* noundef %crl, i32 noundef %crl_score, i32* nocapture noundef %preasons) unnamed_addr #0 {
entry:
  %idp_flags = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 7
  %0 = load i32, i32* %idp_flags, align 8, !tbaa !103
  %and = and i32 %0, 16
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %cleanup39

if.end:                                           ; preds = %entry
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %1 = load i32, i32* %ex_flags, align 8, !tbaa !4
  %and1 = and i32 %1, 16
  %cmp2.not = icmp eq i32 %and1, 0
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %0, 4
  %cmp6.not = icmp eq i32 %and5, 0
  br i1 %cmp6.not, label %if.end14, label %cleanup39

if.else:                                          ; preds = %if.end
  %and10 = and i32 %0, 8
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.end14, label %cleanup39

if.end14:                                         ; preds = %if.else, %if.then3
  %idp_reasons = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 8
  %2 = load i32, i32* %idp_reasons, align 4, !tbaa !140
  store i32 %2, i32* %preasons, align 4, !tbaa !30
  %crldp = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 15
  %3 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp, align 8, !tbaa !145
  %call59 = tail call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %3) #10
  %call1560 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call59) #9
  %cmp1661 = icmp sgt i32 %call1560, 0
  br i1 %cmp1661, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %idp = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %4 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp, align 8, !tbaa !145
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %4) #10
  %call19 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %i.062) #9
  %5 = bitcast i8* %call19 to %struct.DIST_POINT_st*
  %call20 = tail call fastcc i32 @crldp_check_crlissuer(%struct.DIST_POINT_st* noundef %5, %struct.X509_crl_st* noundef %crl, i32 noundef %crl_score) #10
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %for.inc, label %if.then21

if.then21:                                        ; preds = %for.body
  %6 = load %struct.ISSUING_DIST_POINT_st*, %struct.ISSUING_DIST_POINT_st** %idp, align 8, !tbaa !146
  %cmp22 = icmp eq %struct.ISSUING_DIST_POINT_st* %6, null
  br i1 %cmp22, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %distpoint = bitcast i8* %call19 to %struct.DIST_POINT_NAME_st**
  %7 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint, align 8, !tbaa !147
  %distpoint24 = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %6, i64 0, i32 0
  %8 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint24, align 8, !tbaa !149
  %call25 = tail call fastcc i32 @idp_check_dp(%struct.DIST_POINT_NAME_st* noundef %7, %struct.DIST_POINT_NAME_st* noundef %8) #10
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false, %if.then21
  %dp_reasons = getelementptr inbounds i8, i8* %call19, i64 24
  %9 = bitcast i8* %dp_reasons to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !151
  %11 = load i32, i32* %preasons, align 4, !tbaa !30
  %and28 = and i32 %11, %10
  store i32 %and28, i32* %preasons, align 4, !tbaa !30
  br label %cleanup39

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %inc = add nuw nsw i32 %i.062, 1
  %12 = load %struct.stack_st_DIST_POINT*, %struct.stack_st_DIST_POINT** %crldp, align 8, !tbaa !145
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef %12) #10
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp16 = icmp slt i32 %inc, %call15
  br i1 %cmp16, label %for.body, label %for.end, !llvm.loop !152

for.end:                                          ; preds = %for.inc, %if.end14
  %idp31 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl, i64 0, i32 6
  %13 = load %struct.ISSUING_DIST_POINT_st*, %struct.ISSUING_DIST_POINT_st** %idp31, align 8, !tbaa !146
  %cmp32 = icmp eq %struct.ISSUING_DIST_POINT_st* %13, null
  br i1 %cmp32, label %land.rhs, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %for.end
  %distpoint35 = getelementptr inbounds %struct.ISSUING_DIST_POINT_st, %struct.ISSUING_DIST_POINT_st* %13, i64 0, i32 0
  %14 = load %struct.DIST_POINT_NAME_st*, %struct.DIST_POINT_NAME_st** %distpoint35, align 8, !tbaa !149
  %cmp36 = icmp eq %struct.DIST_POINT_NAME_st* %14, null
  br i1 %cmp36, label %land.rhs, label %cleanup39

land.rhs:                                         ; preds = %lor.lhs.false33, %for.end
  %and37 = lshr i32 %crl_score, 5
  %and37.lobit = and i32 %and37, 1
  br label %cleanup39

cleanup39:                                        ; preds = %lor.lhs.false33, %land.rhs, %if.then27, %if.else, %if.then3, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %if.then3 ], [ 0, %if.else ], [ 1, %if.then27 ], [ 0, %lor.lhs.false33 ], [ %and37.lobit, %land.rhs ]
  ret i32 %retval.2
}

declare i32 @X509_check_akid(%struct.x509_st* noundef, %struct.AUTHORITY_KEYID_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_DIST_POINT_sk_type(%struct.stack_st_DIST_POINT* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_DIST_POINT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @crldp_check_crlissuer(%struct.DIST_POINT_st* nocapture noundef readonly %dp, %struct.X509_crl_st* noundef %crl, i32 noundef %crl_score) unnamed_addr #0 {
entry:
  %call = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef %crl) #9
  %CRLissuer = getelementptr inbounds %struct.DIST_POINT_st, %struct.DIST_POINT_st* %dp, i64 0, i32 2
  %0 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer, align 8, !tbaa !153
  %cmp = icmp eq %struct.stack_st_GENERAL_NAME* %0, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call330 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef nonnull %0) #10
  %call431 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call330) #9
  %cmp532 = icmp sgt i32 %call431, 0
  br i1 %cmp532, label %for.body, label %cleanup19

if.then:                                          ; preds = %entry
  %and = lshr i32 %crl_score, 5
  %and.lobit = and i32 %and, 1
  br label %cleanup19

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.033 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %1 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer, align 8, !tbaa !153
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %1) #10
  %call9 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call8, i32 noundef %i.033) #9
  %type = bitcast i8* %call9 to i32*
  %2 = load i32, i32* %type, align 8, !tbaa !137
  %cmp10.not = icmp eq i32 %2, 4
  br i1 %cmp10.not, label %if.end13, label %for.inc

if.end13:                                         ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call9, i64 8
  %directoryName = bitcast i8* %d to %struct.X509_name_st**
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !46
  %call14 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %3, %struct.X509_name_st* noundef %call) #9
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %cleanup19, label %for.inc

for.inc:                                          ; preds = %for.body, %if.end13
  %inc = add nuw nsw i32 %i.033, 1
  %4 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %CRLissuer, align 8, !tbaa !153
  %call3 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %4) #10
  %call4 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call3) #9
  %cmp5 = icmp slt i32 %inc, %call4
  br i1 %cmp5, label %for.body, label %cleanup19, !llvm.loop !154

cleanup19:                                        ; preds = %for.inc, %if.end13, %for.cond.preheader, %if.then
  %retval.2 = phi i32 [ %and.lobit, %if.then ], [ 0, %for.cond.preheader ], [ 0, %for.inc ], [ 1, %if.end13 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @idp_check_dp(%struct.DIST_POINT_NAME_st* noundef readonly %a, %struct.DIST_POINT_NAME_st* noundef readonly %b) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.DIST_POINT_NAME_st* %a, null
  %cmp1 = icmp eq %struct.DIST_POINT_NAME_st* %b, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !155
  %cmp2 = icmp eq i32 %0, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %dpname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %a, i64 0, i32 2
  %1 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname, align 8, !tbaa !157
  %cmp4 = icmp eq %struct.X509_name_st* %1, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.then3
  %type7 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %b, i64 0, i32 0
  %2 = load i32, i32* %type7, align 8, !tbaa !155
  %cmp8 = icmp eq i32 %2, 1
  br i1 %cmp8, label %if.then9, label %for.cond.preheader

if.then9:                                         ; preds = %if.end6
  %dpname10 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %b, i64 0, i32 2
  %3 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname10, align 8, !tbaa !157
  %cmp11 = icmp eq %struct.X509_name_st* %3, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then9
  %call = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %1, %struct.X509_name_st* noundef nonnull %3) #9
  %cmp16 = icmp eq i32 %call, 0
  %conv = zext i1 %cmp16 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %type19 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %b, i64 0, i32 0
  %4 = load i32, i32* %type19, align 8, !tbaa !155
  %cmp20 = icmp eq i32 %4, 1
  br i1 %cmp20, label %if.then22, label %for.cond53.preheader

if.then22:                                        ; preds = %if.else
  %dpname23 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %b, i64 0, i32 2
  %5 = load %struct.X509_name_st*, %struct.X509_name_st** %dpname23, align 8, !tbaa !157
  %cmp24 = icmp eq %struct.X509_name_st* %5, null
  br i1 %cmp24, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then22, %if.end6
  %b.sink = phi %struct.DIST_POINT_NAME_st* [ %b, %if.end6 ], [ %a, %if.then22 ]
  %nm.0.ph = phi %struct.X509_name_st* [ %1, %if.end6 ], [ %5, %if.then22 ]
  %fullname = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %b.sink, i64 0, i32 1, i32 0
  %6 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname, align 8, !tbaa !46
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %6) #10
  %call37130 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call36) #9
  %cmp38131 = icmp sgt i32 %call37130, 0
  br i1 %cmp38131, label %for.body, label %cleanup

for.cond53.preheader:                             ; preds = %if.else
  %fullname55 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %a, i64 0, i32 1, i32 0
  %7 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname55, align 8, !tbaa !46
  %call56138 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %7) #10
  %call57139 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56138) #9
  %cmp58140 = icmp sgt i32 %call57139, 0
  br i1 %cmp58140, label %for.body60.lr.ph, label %cleanup

for.body60.lr.ph:                                 ; preds = %for.cond53.preheader
  %fullname67 = getelementptr inbounds %struct.DIST_POINT_NAME_st, %struct.DIST_POINT_NAME_st* %b, i64 0, i32 1, i32 0
  br label %for.body60

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0132 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call41 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call36, i32 noundef %i.0132) #9
  %type42 = bitcast i8* %call41 to i32*
  %8 = load i32, i32* %type42, align 8, !tbaa !137
  %cmp43.not = icmp eq i32 %8, 4
  br i1 %cmp43.not, label %if.end46, label %for.inc

if.end46:                                         ; preds = %for.body
  %d = getelementptr inbounds i8, i8* %call41, i64 8
  %directoryName = bitcast i8* %d to %struct.X509_name_st**
  %9 = load %struct.X509_name_st*, %struct.X509_name_st** %directoryName, align 8, !tbaa !46
  %call47 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef nonnull %nm.0.ph, %struct.X509_name_st* noundef %9) #9
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end46, %for.body
  %inc = add nuw nsw i32 %i.0132, 1
  %call37 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call36) #9
  %cmp38 = icmp slt i32 %inc, %call37
  br i1 %cmp38, label %for.body, label %cleanup, !llvm.loop !158

for.body60:                                       ; preds = %for.body60.lr.ph, %for.inc85
  %i.1141 = phi i32 [ 0, %for.body60.lr.ph ], [ %inc86, %for.inc85 ]
  %10 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname55, align 8, !tbaa !46
  %call63 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %10) #10
  %call64 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call63, i32 noundef %i.1141) #9
  %11 = bitcast i8* %call64 to %struct.GENERAL_NAME_st*
  %12 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname67, align 8, !tbaa !46
  %call68134 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %12) #10
  %call69135 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call68134) #9
  %cmp70136 = icmp sgt i32 %call69135, 0
  br i1 %cmp70136, label %for.body72, label %for.inc85

for.cond65:                                       ; preds = %for.body72
  %13 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname67, align 8, !tbaa !46
  %call68 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %13) #10
  %call69 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call68) #9
  %cmp70 = icmp slt i32 %inc83, %call69
  br i1 %cmp70, label %for.body72, label %for.inc85, !llvm.loop !159

for.body72:                                       ; preds = %for.body60, %for.cond65
  %j.0137 = phi i32 [ %inc83, %for.cond65 ], [ 0, %for.body60 ]
  %14 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname67, align 8, !tbaa !46
  %call75 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %14) #10
  %call76 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call75, i32 noundef %j.0137) #9
  %15 = bitcast i8* %call76 to %struct.GENERAL_NAME_st*
  %call77 = tail call i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef %11, %struct.GENERAL_NAME_st* noundef %15) #9
  %cmp78 = icmp eq i32 %call77, 0
  %inc83 = add nuw nsw i32 %j.0137, 1
  br i1 %cmp78, label %cleanup, label %for.cond65

for.inc85:                                        ; preds = %for.cond65, %for.body60
  %inc86 = add nuw nsw i32 %i.1141, 1
  %16 = load %struct.stack_st_GENERAL_NAME*, %struct.stack_st_GENERAL_NAME** %fullname55, align 8, !tbaa !46
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_const_GENERAL_NAME_sk_type(%struct.stack_st_GENERAL_NAME* noundef %16) #10
  %call57 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56) #9
  %cmp58 = icmp slt i32 %inc86, %call57
  br i1 %cmp58, label %for.body60, label %cleanup, !llvm.loop !160

cleanup:                                          ; preds = %for.inc85, %for.body72, %if.end46, %for.inc, %for.cond.preheader, %for.cond53.preheader, %if.then22, %if.then9, %if.then3, %entry, %if.end13
  %retval.0 = phi i32 [ %conv, %if.end13 ], [ 1, %entry ], [ 0, %if.then3 ], [ 0, %if.then9 ], [ 0, %if.then22 ], [ 0, %for.cond53.preheader ], [ 0, %for.cond.preheader ], [ 1, %if.end46 ], [ 0, %for.inc ], [ 1, %for.body72 ], [ 0, %for.inc85 ]
  ret i32 %retval.0
}

declare i32 @GENERAL_NAME_cmp(%struct.GENERAL_NAME_st* noundef, %struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_delta_base(%struct.X509_crl_st* noundef %delta, %struct.X509_crl_st* noundef %base) unnamed_addr #0 {
entry:
  %base_crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %delta, i64 0, i32 10
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number, align 8, !tbaa !51
  %cmp = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %crl_number = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %base, i64 0, i32 9
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number, align 8, !tbaa !54
  %cmp1 = icmp eq %struct.asn1_string_st* %1, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %base) #9
  %call4 = tail call %struct.X509_name_st* @X509_CRL_get_issuer(%struct.X509_crl_st* noundef nonnull %delta) #9
  %call5 = tail call i32 @X509_NAME_cmp(%struct.X509_name_st* noundef %call, %struct.X509_name_st* noundef %call4) #9
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end3
  %call9 = tail call fastcc i32 @crl_extension_match(%struct.X509_crl_st* noundef nonnull %delta, %struct.X509_crl_st* noundef nonnull %base, i32 noundef 90) #10
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %return, label %if.end11

if.end11:                                         ; preds = %if.end8
  %call12 = tail call fastcc i32 @crl_extension_match(%struct.X509_crl_st* noundef nonnull %delta, %struct.X509_crl_st* noundef nonnull %base, i32 noundef 770) #10
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %return, label %if.end15

if.end15:                                         ; preds = %if.end11
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base_crl_number, align 8, !tbaa !51
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number, align 8, !tbaa !54
  %call18 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %2, %struct.asn1_string_st* noundef %3) #9
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %return, label %if.end21

if.end21:                                         ; preds = %if.end15
  %crl_number22 = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %delta, i64 0, i32 9
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number22, align 8, !tbaa !54
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %crl_number, align 8, !tbaa !54
  %call24 = tail call i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %4, %struct.asn1_string_st* noundef %5) #9
  %cmp25 = icmp sgt i32 %call24, 0
  %conv = zext i1 %cmp25 to i32
  br label %return

return:                                           ; preds = %if.end15, %if.end11, %if.end8, %if.end3, %if.end, %entry, %if.end21
  %retval.0 = phi i32 [ %conv, %if.end21 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ], [ 0, %if.end8 ], [ 0, %if.end11 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_crl_path(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %crl_ctx = alloca %struct.x509_store_ctx_st, align 8
  %0 = bitcast %struct.x509_store_ctx_st* %crl_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 272, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(272) %0, i8 0, i64 272, i1 false)
  %parent = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 30
  %1 = load %struct.x509_store_ctx_st*, %struct.x509_store_ctx_st** %parent, align 8, !tbaa !62
  %cmp.not = icmp eq %struct.x509_store_ctx_st* %1, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %store = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.x509_store_st*, %struct.x509_store_st** %store, align 8, !tbaa !72
  %untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 2
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !20
  %call = call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %crl_ctx, %struct.x509_store_st* noundef %2, %struct.x509_st* noundef %x, %struct.stack_st_X509* noundef %3) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %crls = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 3
  %4 = load %struct.stack_st_X509_CRL*, %struct.stack_st_X509_CRL** %crls, align 8, !tbaa !63
  %crls3 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %crl_ctx, i64 0, i32 3
  store %struct.stack_st_X509_CRL* %4, %struct.stack_st_X509_CRL** %crls3, align 8, !tbaa !63
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %5 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  call void @X509_STORE_CTX_set0_param(%struct.x509_store_ctx_st* noundef nonnull %crl_ctx, %struct.X509_VERIFY_PARAM_st* noundef %5) #10
  %parent4 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %crl_ctx, i64 0, i32 30
  store %struct.x509_store_ctx_st* %ctx, %struct.x509_store_ctx_st** %parent4, align 8, !tbaa !62
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 7
  %6 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !33
  %verify_cb5 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %crl_ctx, i64 0, i32 7
  store i32 (i32, %struct.x509_store_ctx_st*)* %6, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb5, align 8, !tbaa !33
  %call6 = call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %crl_ctx) #10
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end2
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %chain10 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %crl_ctx, i64 0, i32 20
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain10, align 8, !tbaa !22
  %call11 = call fastcc i32 @check_crl_chain(%struct.stack_st_X509* noundef %7, %struct.stack_st_X509* noundef %8) #10
  br label %err

err:                                              ; preds = %if.end2, %if.end9
  %ret.0 = phi i32 [ %call6, %if.end2 ], [ %call11, %if.end9 ]
  call void @X509_STORE_CTX_cleanup(%struct.x509_store_ctx_st* noundef nonnull %crl_ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ -1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 272, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i32 @X509_CRL_check_suiteb(%struct.X509_crl_st* noundef, %struct.evp_pkey_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_crl_chain(%struct.stack_st_X509* noundef %cert_path, %struct.stack_st_X509* noundef %crl_path) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %cert_path) #10
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %sub = add nsw i32 %call2, -1
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #9
  %0 = bitcast i8* %call3 to %struct.x509_st*
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %crl_path) #10
  %call6 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #9
  %sub7 = add nsw i32 %call6, -1
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %sub7) #9
  %1 = bitcast i8* %call8 to %struct.x509_st*
  %call9 = tail call i32 @X509_cmp(%struct.x509_st* noundef %0, %struct.x509_st* noundef %1) #9
  %cmp = icmp eq i32 %call9, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_get0_by_cert(%struct.X509_crl_st* noundef, %struct.x509_revoked_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_policy_check(%struct.X509_POLICY_TREE_st** noundef, i32* noundef, %struct.stack_st_X509* noundef, %struct.stack_st_ASN1_OBJECT* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_pop(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.x509_st* @find_issuer(%struct.x509_store_ctx_st* noundef %ctx, %struct.stack_st_X509* noundef %sk, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %sk) #10
  %call147 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp48 = icmp sgt i32 %call147, 0
  br i1 %cmp48, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %check_issued = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 9
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %rv.050 = phi %struct.x509_st* [ null, %for.body.lr.ph ], [ %rv.1, %for.inc ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.049) #9
  %0 = bitcast i8* %call3 to %struct.x509_st*
  %1 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !79
  %call4 = tail call i32 %1(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x, %struct.x509_st* noundef %0) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, i32* %ex_flags, align 8, !tbaa !4
  %and = and i32 %2, 32
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %lor.lhs.false, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %3 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %3) #10
  %call8 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call7) #9
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true6, %land.lhs.true
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call11 = tail call fastcc i32 @sk_X509_contains(%struct.stack_st_X509* noundef %4, %struct.x509_st* noundef %0) #10
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true6
  %call13 = tail call i32 @ossl_x509_check_cert_time(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %0, i32 noundef -1) #10
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end, label %cleanup.loopexit.split.loop.exit

if.end:                                           ; preds = %if.then
  %cmp16 = icmp eq %struct.x509_st* %rv.050, null
  br i1 %cmp16, label %if.then22, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end
  %call18 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %0) #9
  %call19 = tail call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef nonnull %rv.050) #9
  %call20 = tail call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef %call18, %struct.asn1_string_st* noundef %call19) #9
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %lor.lhs.false17, %if.end
  br label %for.inc

for.inc:                                          ; preds = %for.body, %lor.lhs.false, %if.then22, %lor.lhs.false17
  %rv.1 = phi %struct.x509_st* [ %0, %if.then22 ], [ %rv.050, %lor.lhs.false17 ], [ %rv.050, %lor.lhs.false ], [ %rv.050, %for.body ]
  %inc = add nuw nsw i32 %i.049, 1
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %cleanup, !llvm.loop !161

cleanup.loopexit.split.loop.exit:                 ; preds = %if.then
  %5 = bitcast i8* %call3 to %struct.x509_st*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %cleanup.loopexit.split.loop.exit, %entry
  %retval.0 = phi %struct.x509_st* [ null, %entry ], [ %5, %cleanup.loopexit.split.loop.exit ], [ %rv.1, %for.inc ]
  ret %struct.x509_st* %retval.0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_X509_contains(%struct.stack_st_X509* noundef %sk, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %sk) #10
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %cmp12 = icmp sgt i32 %call1, 0
  br i1 %cmp12, label %for.body, label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !162

for.body:                                         ; preds = %entry, %for.cond
  %i.013 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.013) #9
  %0 = bitcast i8* %call3 to %struct.x509_st*
  %call4 = tail call i32 @X509_cmp(%struct.x509_st* noundef %0, %struct.x509_st* noundef %cert) #9
  %cmp5 = icmp eq i32 %call4, 0
  %inc = add nuw nsw i32 %i.013, 1
  br i1 %cmp5, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %retval.0
}

declare i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @X509_add_cert(%struct.stack_st_X509* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @dane_reset(%struct.ssl_dane_st* nocapture noundef %dane) unnamed_addr #0 {
entry:
  %mcert = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 4
  %0 = load %struct.x509_st*, %struct.x509_st** %mcert, align 8, !tbaa !113
  tail call void @X509_free(%struct.x509_st* noundef %0) #9
  store %struct.x509_st* null, %struct.x509_st** %mcert, align 8, !tbaa !113
  %mtlsa = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 3
  store %struct.danetls_record_st* null, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !163
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 6
  store i32 -1, i32* %mdpth, align 4, !tbaa !35
  %pdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %dane, i64 0, i32 7
  store i32 -1, i32* %pdpth, align 8, !tbaa !114
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dane_match(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, %struct.x509_st* noundef %cert, i32 noundef %depth) unnamed_addr #0 {
entry:
  %i2dlen = alloca i32, align 4
  %mdbuf = alloca [64 x i8], align 16
  %cmplen = alloca i32, align 4
  %dane1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %0 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane1, align 8, !tbaa !24
  %1 = bitcast i32* %i2dlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  store i32 0, i32* %i2dlen, align 4, !tbaa !30
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %mdbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #11
  %3 = bitcast i32* %cmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #11
  store i32 0, i32* %cmplen, align 4, !tbaa !30
  %cmp = icmp eq i32 %depth, 0
  %cond = select i1 %cmp, i32 10, i32 5
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  %4 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp2.not = icmp sgt i32 %4, %depth
  %and = and i32 %cond, 3
  %spec.select = select i1 %cmp2.not, i32 %cond, i32 %and
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 6
  %5 = load i32, i32* %mdpth, align 4, !tbaa !35
  %cmp3 = icmp sgt i32 %5, -1
  %and5 = and i32 %spec.select, 12
  %mask.1 = select i1 %cmp3, i32 %and5, i32 %spec.select
  %umask = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 5
  %6 = load i32, i32* %umask, align 8, !tbaa !34
  %and7 = and i32 %mask.1, %6
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %for.end, label %cond.end

cond.end:                                         ; preds = %entry
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 1
  %7 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !25
  %call = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %7) #10
  %cmp11205 = icmp sgt i32 %call, 0
  br i1 %cmp11205, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %trecs12 = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 1
  %dctx = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %8 = phi i32 [ 0, %for.body.lr.ph ], [ %37, %for.inc ]
  %usage.0212 = phi i32 [ 256, %for.body.lr.ph ], [ %usage.2, %for.inc ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %cmpbuf.0210 = phi i8* [ null, %for.body.lr.ph ], [ %cmpbuf.4, %for.inc ]
  %i2dbuf.0209 = phi i8* [ null, %for.body.lr.ph ], [ %i2dbuf.2, %for.inc ]
  %mtype.0208 = phi i32 [ 256, %for.body.lr.ph ], [ %mtype.4, %for.inc ]
  %ordinal.0207 = phi i32 [ 256, %for.body.lr.ph ], [ %ordinal.3, %for.inc ]
  %selector.0206 = phi i32 [ 256, %for.body.lr.ph ], [ %selector.2, %for.inc ]
  %9 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs12, align 8, !tbaa !25
  %call13 = call fastcc %struct.danetls_record_st* @sk_danetls_record_value(%struct.stack_st_danetls_record* noundef %9, i32 noundef %i.0211) #10
  %usage14 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 0
  %10 = load i8, i8* %usage14, align 8, !tbaa !164
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv
  %and15 = and i32 %shl, %mask.1
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %for.inc, label %if.end19

if.end19:                                         ; preds = %for.body
  %cmp22.not = icmp eq i32 %usage.0212, %conv
  br i1 %cmp22.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end19
  %11 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %dctx, align 8, !tbaa !166
  %mdord = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %11, i64 0, i32 1
  %12 = load i8*, i8** %mdord, align 8, !tbaa !167
  %mtype27 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 2
  %13 = load i8, i8* %mtype27, align 2, !tbaa !169
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !46
  %conv28 = zext i8 %14 to i32
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end19
  %ordinal.1 = phi i32 [ %conv28, %if.then24 ], [ %ordinal.0207, %if.end19 ]
  %mtype.1 = phi i32 [ 256, %if.then24 ], [ %mtype.0208, %if.end19 ]
  %usage.1 = phi i32 [ %conv, %if.then24 ], [ %usage.0212, %if.end19 ]
  %selector30 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 1
  %15 = load i8, i8* %selector30, align 1, !tbaa !170
  %conv31 = zext i8 %15 to i32
  %cmp32.not = icmp eq i32 %selector.0206, %conv31
  br i1 %cmp32.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @CRYPTO_free(i8* noundef %i2dbuf.0209, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2760) #9
  %call38 = call fastcc i8* @dane_i2d(%struct.x509_st* noundef %cert, i8 noundef zeroext %15, i32* noundef nonnull %i2dlen) #10
  %cmp39 = icmp eq i8* %call38, null
  br i1 %cmp39, label %cleanup108, label %if.end65.thread

if.end65.thread:                                  ; preds = %if.then34
  %16 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %dctx, align 8, !tbaa !166
  %mdord44 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %16, i64 0, i32 1
  %17 = load i8*, i8** %mdord44, align 8, !tbaa !167
  %mtype45 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 2
  %18 = load i8, i8* %mtype45, align 2, !tbaa !169
  %idxprom46 = zext i8 %18 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %17, i64 %idxprom46
  %19 = load i8, i8* %arrayidx47, align 1, !tbaa !46
  %conv48 = zext i8 %19 to i32
  %conv67187 = zext i8 %18 to i32
  %.pre220 = load i32, i32* %i2dlen, align 4, !tbaa !30
  br label %if.then70

if.else:                                          ; preds = %if.end29
  %mtype49 = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 2
  %20 = load i8, i8* %mtype49, align 2, !tbaa !169
  %cmp51.not = icmp eq i8 %20, 0
  br i1 %cmp51.not, label %if.end65, label %if.then53

if.then53:                                        ; preds = %if.else
  %21 = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %dctx, align 8, !tbaa !166
  %mdord55 = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %21, i64 0, i32 1
  %22 = load i8*, i8** %mdord55, align 8, !tbaa !167
  %idxprom57 = zext i8 %20 to i64
  %arrayidx58 = getelementptr inbounds i8, i8* %22, i64 %idxprom57
  %23 = load i8, i8* %arrayidx58, align 1, !tbaa !46
  %conv59 = zext i8 %23 to i32
  %cmp60 = icmp ugt i32 %ordinal.1, %conv59
  br i1 %cmp60, label %for.inc, label %if.end65

if.end65:                                         ; preds = %if.else, %if.then53
  %conv67 = zext i8 %20 to i32
  %cmp68.not = icmp eq i32 %mtype.1, %conv67
  br i1 %cmp68.not, label %if.end84, label %if.end65.if.then70_crit_edge

if.end65.if.then70_crit_edge:                     ; preds = %if.end65
  %.pre = load %struct.dane_ctx_st*, %struct.dane_ctx_st** %dctx, align 8, !tbaa !166
  %.pre219 = zext i8 %20 to i64
  br label %if.then70

if.then70:                                        ; preds = %if.end65.if.then70_crit_edge, %if.end65.thread
  %24 = phi i32 [ %8, %if.end65.if.then70_crit_edge ], [ %.pre220, %if.end65.thread ]
  %idxprom74.pre-phi = phi i64 [ %.pre219, %if.end65.if.then70_crit_edge ], [ %idxprom46, %if.end65.thread ]
  %25 = phi %struct.dane_ctx_st* [ %.pre, %if.end65.if.then70_crit_edge ], [ %16, %if.end65.thread ]
  %conv67197 = phi i32 [ %conv67, %if.end65.if.then70_crit_edge ], [ %conv67187, %if.end65.thread ]
  %i2dbuf.1193 = phi i8* [ %i2dbuf.0209, %if.end65.if.then70_crit_edge ], [ %call38, %if.end65.thread ]
  %ordinal.2191 = phi i32 [ %ordinal.1, %if.end65.if.then70_crit_edge ], [ %conv48, %if.end65.thread ]
  %selector.1189 = phi i32 [ %selector.0206, %if.end65.if.then70_crit_edge ], [ %conv31, %if.end65.thread ]
  %mdevp = getelementptr inbounds %struct.dane_ctx_st, %struct.dane_ctx_st* %25, i64 0, i32 0
  %26 = load %struct.evp_md_st**, %struct.evp_md_st*** %mdevp, align 8, !tbaa !171
  %arrayidx75 = getelementptr inbounds %struct.evp_md_st*, %struct.evp_md_st** %26, i64 %idxprom74.pre-phi
  %27 = load %struct.evp_md_st*, %struct.evp_md_st** %arrayidx75, align 8, !tbaa !58
  store i32 %24, i32* %cmplen, align 4, !tbaa !30
  %cmp76.not = icmp eq %struct.evp_md_st* %27, null
  br i1 %cmp76.not, label %if.end84, label %if.then78

if.then78:                                        ; preds = %if.then70
  %conv79 = zext i32 %24 to i64
  %call80 = call i32 @EVP_Digest(i8* noundef %i2dbuf.1193, i64 noundef %conv79, i8* noundef nonnull %2, i32* noundef nonnull %cmplen, %struct.evp_md_st* noundef nonnull %27, %struct.engine_st* noundef null) #9
  %tobool.not = icmp eq i32 %call80, 0
  br i1 %tobool.not, label %for.end, label %if.end84

if.end84:                                         ; preds = %if.then78, %if.then70, %if.end65
  %28 = phi i32 [ %8, %if.end65 ], [ %24, %if.then78 ], [ %24, %if.then70 ]
  %i2dbuf.1196 = phi i8* [ %i2dbuf.0209, %if.end65 ], [ %i2dbuf.1193, %if.then78 ], [ %i2dbuf.1193, %if.then70 ]
  %ordinal.2192 = phi i32 [ %ordinal.1, %if.end65 ], [ %ordinal.2191, %if.then78 ], [ %ordinal.2191, %if.then70 ]
  %selector.1190 = phi i32 [ %selector.0206, %if.end65 ], [ %selector.1189, %if.then78 ], [ %selector.1189, %if.then70 ]
  %mtype.3 = phi i32 [ %mtype.1, %if.end65 ], [ %conv67197, %if.then78 ], [ %conv67197, %if.then70 ]
  %cmpbuf.3 = phi i8* [ %cmpbuf.0210, %if.end65 ], [ %2, %if.then78 ], [ %i2dbuf.1193, %if.then70 ]
  %29 = load i32, i32* %cmplen, align 4, !tbaa !30
  %conv85 = zext i32 %29 to i64
  %dlen = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 4
  %30 = load i64, i64* %dlen, align 8, !tbaa !172
  %cmp86 = icmp eq i64 %30, %conv85
  br i1 %cmp86, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end84
  %data = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call13, i64 0, i32 3
  %31 = load i8*, i8** %data, align 8, !tbaa !173
  %call89 = call i32 @memcmp(i8* noundef %cmpbuf.3, i8* noundef %31, i64 noundef %conv85) #12
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %for.inc

if.then92:                                        ; preds = %land.lhs.true
  %32 = lshr i32 12, %usage.1
  %33 = and i32 %32, 1
  %tobool98.not = icmp eq i32 %33, 0
  br i1 %tobool98.not, label %lor.lhs.false, label %if.then102

lor.lhs.false:                                    ; preds = %if.then92
  %34 = load i32, i32* %mdpth, align 4, !tbaa !35
  %cmp100 = icmp slt i32 %34, 0
  br i1 %cmp100, label %if.then102, label %for.end

if.then102:                                       ; preds = %lor.lhs.false, %if.then92
  store i32 %depth, i32* %mdpth, align 4, !tbaa !35
  %mtlsa = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 3
  store %struct.danetls_record_st* %call13, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !163
  %mcert = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 4
  %35 = bitcast %struct.x509_st** %mcert to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !113
  call void @CRYPTO_free(i8* noundef %36, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2813) #9
  store %struct.x509_st* %cert, %struct.x509_st** %mcert, align 8, !tbaa !113
  %call105 = call i32 @X509_up_ref(%struct.x509_st* noundef %cert) #9
  br label %for.end

for.inc:                                          ; preds = %if.end84, %land.lhs.true, %if.then53, %for.body
  %37 = phi i32 [ %8, %for.body ], [ %28, %land.lhs.true ], [ %28, %if.end84 ], [ %8, %if.then53 ]
  %selector.2 = phi i32 [ %selector.0206, %for.body ], [ %selector.1190, %land.lhs.true ], [ %selector.1190, %if.end84 ], [ %selector.0206, %if.then53 ]
  %ordinal.3 = phi i32 [ %ordinal.0207, %for.body ], [ %ordinal.2192, %land.lhs.true ], [ %ordinal.2192, %if.end84 ], [ %ordinal.1, %if.then53 ]
  %mtype.4 = phi i32 [ %mtype.0208, %for.body ], [ %mtype.3, %land.lhs.true ], [ %mtype.3, %if.end84 ], [ %mtype.1, %if.then53 ]
  %i2dbuf.2 = phi i8* [ %i2dbuf.0209, %for.body ], [ %i2dbuf.1196, %land.lhs.true ], [ %i2dbuf.1196, %if.end84 ], [ %i2dbuf.0209, %if.then53 ]
  %cmpbuf.4 = phi i8* [ %cmpbuf.0210, %for.body ], [ %cmpbuf.3, %land.lhs.true ], [ %cmpbuf.3, %if.end84 ], [ %cmpbuf.0210, %if.then53 ]
  %usage.2 = phi i32 [ %usage.0212, %for.body ], [ %usage.1, %land.lhs.true ], [ %usage.1, %if.end84 ], [ %usage.1, %if.then53 ]
  %inc = add nuw nsw i32 %i.0211, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !174

for.end:                                          ; preds = %for.inc, %if.then78, %entry, %cond.end, %lor.lhs.false, %if.then102
  %i2dbuf.3 = phi i8* [ %i2dbuf.1196, %if.then102 ], [ %i2dbuf.1196, %lor.lhs.false ], [ null, %cond.end ], [ null, %entry ], [ %i2dbuf.2, %for.inc ], [ %i2dbuf.1193, %if.then78 ]
  %matched.5 = phi i32 [ %33, %if.then102 ], [ 0, %lor.lhs.false ], [ 0, %cond.end ], [ 0, %entry ], [ 0, %for.inc ], [ -1, %if.then78 ]
  call void @CRYPTO_free(i8* noundef %i2dbuf.3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2822) #9
  br label %cleanup108

cleanup108:                                       ; preds = %if.then34, %for.end
  %retval.0 = phi i32 [ %matched.5, %for.end ], [ -1, %if.then34 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_leaf_suiteb(%struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %0, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !38
  %call = tail call i32 @X509_chain_check_suiteb(i32* noundef null, %struct.x509_st* noundef %cert, %struct.stack_st_X509* noundef null, i64 noundef %1) #9
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %cert, i32 noundef 0, i32 noundef %call) #10
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.danetls_record_st* @sk_danetls_record_value(%struct.stack_st_danetls_record* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_danetls_record* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #9
  %1 = bitcast i8* %call to %struct.danetls_record_st*
  ret %struct.danetls_record_st* %1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @dane_i2d(%struct.x509_st* noundef %cert, i8 noundef zeroext %selector, i32* nocapture noundef writeonly %i2dlen) unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %buf, align 8, !tbaa !58
  switch i8 %selector, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %call = call i32 @i2d_X509(%struct.x509_st* noundef %cert, i8** noundef nonnull %buf) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef %cert) #9
  %call3 = call i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef %call2, i8** noundef nonnull %buf) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2668, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.dane_i2d, i64 0, i64 0)) #9
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 133, i8* noundef null) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %len.0 = phi i32 [ %call3, %sw.bb1 ], [ %call, %sw.bb ]
  %cmp = icmp slt i32 %len.0, 0
  %1 = load i8*, i8** %buf, align 8
  %cmp5 = icmp eq i8* %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @ERR_new() #9
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 2673, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.dane_i2d, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  store i32 %len.0, i32* %i2dlen, align 4, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  %retval.0 = phi i8* [ null, %sw.default ], [ null, %if.then ], [ %1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i8* %retval.0
}

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

declare i32 @i2d_X509(%struct.x509_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @i2d_X509_PUBKEY(%struct.X509_pubkey_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef) local_unnamed_addr #2

declare i32 @X509_add_certs(%struct.stack_st_X509* noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get1_trusted_issuer(%struct.x509_st** noundef %issuer, %struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) unnamed_addr #0 {
entry:
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %0 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %get_issuer = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 8
  %1 = load i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer, align 8, !tbaa !80
  %call = tail call i32 %1(%struct.x509_st** noundef %issuer, %struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %cert) #9
  store %struct.stack_st_X509* %0, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  ret i32 %call
}

declare i8* @OPENSSL_sk_set(%struct.stack_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_trust(%struct.x509_store_ctx_st* noundef %ctx, i32 noundef %num_untrusted) unnamed_addr #0 {
entry:
  %mx = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %mx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  %dane1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %1 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane1, align 8, !tbaa !24
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #9
  %tobool.not = icmp eq %struct.ssl_dane_st* %1, null
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %umask = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 5
  %3 = load i32, i32* %umask, align 8, !tbaa !34
  %and = and i32 %3, 5
  %tobool3 = icmp ne i32 %and, 0
  %cmp = icmp sgt i32 %num_untrusted, 0
  %or.cond = and i1 %cmp, %tobool3
  %cmp6 = icmp sgt i32 %call2, %num_untrusted
  %or.cond127 = select i1 %or.cond, i1 %cmp6, i1 false
  br i1 %or.cond127, label %if.then, label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call7 = tail call fastcc i32 @check_dane_issuer(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef %num_untrusted) #10
  %cmp8.not = icmp eq i32 %call7, 3
  br i1 %cmp8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.then, %land.lhs.true, %entry
  %cmp11131 = icmp sgt i32 %call2, %num_untrusted
  br i1 %cmp11131, label %for.body.lr.ph, label %if.end30

for.body.lr.ph:                                   ; preds = %if.end10
  %param = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0132 = phi i32 [ %num_untrusted, %for.body.lr.ph ], [ %inc, %for.inc ]
  %4 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %4) #10
  %call14 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call13, i32 noundef %i.0132) #9
  %5 = bitcast i8* %call14 to %struct.x509_st*
  %6 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !27
  %trust15 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %6, i64 0, i32 5
  %7 = load i32, i32* %trust15, align 4, !tbaa !67
  %call16 = tail call i32 @X509_check_trust(%struct.x509_st* noundef %5, i32 noundef %7, i32 noundef 0) #9
  switch i32 %call16, label %for.inc [
    i32 1, label %trusted
    i32 2, label %rejected.loopexit
  ]

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, %call2
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !175

for.end:                                          ; preds = %for.inc
  br i1 %cmp11131, label %if.then24, label %if.end30

if.then24:                                        ; preds = %for.end
  %param25 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %8 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param25, align 8, !tbaa !27
  %flags = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %8, i64 0, i32 3
  %9 = load i64, i64* %flags, align 8, !tbaa !38
  %and26 = and i64 %9, 524288
  %cmp27.not = icmp eq i64 %and26, 0
  %brmerge = select i1 %cmp27.not, i1 true, i1 %tobool.not
  %.mux = select i1 %cmp27.not, i32 3, i32 1
  br i1 %brmerge, label %cleanup, label %land.lhs.true63

if.end30:                                         ; preds = %if.end10, %for.end
  %cmp31 = icmp eq i32 %call2, %num_untrusted
  br i1 %cmp31, label %land.lhs.true32, label %cleanup

land.lhs.true32:                                  ; preds = %if.end30
  %param33 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 4
  %10 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param33, align 8, !tbaa !27
  %flags34 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %10, i64 0, i32 3
  %11 = load i64, i64* %flags34, align 8, !tbaa !38
  %and35 = and i64 %11, 524288
  %cmp36.not = icmp eq i64 %and35, 0
  br i1 %cmp36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %land.lhs.true32
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call39 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %12) #10
  %call40 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call39, i32 noundef 0) #9
  %13 = bitcast i8* %call40 to %struct.x509_st*
  %call41 = call fastcc i32 @lookup_cert_match(%struct.x509_st** noundef nonnull %mx, %struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %13) #10
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.then37
  %14 = load %struct.x509_st*, %struct.x509_st** %mx, align 8, !tbaa !58
  %cmp45 = icmp eq %struct.x509_st* %14, null
  br i1 %cmp45, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.end44
  %15 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param33, align 8, !tbaa !27
  %trust49 = getelementptr inbounds %struct.X509_VERIFY_PARAM_st, %struct.X509_VERIFY_PARAM_st* %15, i64 0, i32 5
  %16 = load i32, i32* %trust49, align 4, !tbaa !67
  %call50 = tail call i32 @X509_check_trust(%struct.x509_st* noundef nonnull %14, i32 noundef %16, i32 noundef 0) #9
  %cmp51 = icmp eq i32 %call50, 2
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end47
  tail call void @X509_free(%struct.x509_st* noundef nonnull %14) #9
  br label %rejected

if.end53:                                         ; preds = %if.end47
  %17 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call55 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %17) #10
  %18 = bitcast %struct.x509_st* %14 to i8*
  %call57 = tail call i8* @OPENSSL_sk_set(%struct.stack_st* noundef %call55, i32 noundef 0, i8* noundef nonnull %18) #9
  tail call void @X509_free(%struct.x509_st* noundef %13) #9
  %num_untrusted58 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  store i32 0, i32* %num_untrusted58, align 4, !tbaa !23
  br label %trusted

rejected.loopexit:                                ; preds = %for.body
  %19 = bitcast i8* %call14 to %struct.x509_st*
  br label %rejected

rejected:                                         ; preds = %rejected.loopexit, %if.then52
  %x.0 = phi %struct.x509_st* [ %13, %if.then52 ], [ %19, %rejected.loopexit ]
  %i.1 = phi i32 [ 0, %if.then52 ], [ %i.0132, %rejected.loopexit ]
  %call60 = tail call fastcc i32 @verify_cb_cert(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x.0, i32 noundef %i.1, i32 noundef 28) #10
  %cmp61 = icmp eq i32 %call60, 0
  %cond = select i1 %cmp61, i32 2, i32 3
  br label %cleanup

trusted:                                          ; preds = %for.body, %if.end53
  br i1 %tobool.not, label %cleanup, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.then24, %trusted
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 1
  %20 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !25
  %call64 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %20) #10
  %cmp65 = icmp sgt i32 %call64, 0
  br i1 %cmp65, label %if.end67, label %cleanup

if.end67:                                         ; preds = %land.lhs.true63
  %pdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 7
  %21 = load i32, i32* %pdpth, align 8, !tbaa !114
  %cmp68 = icmp slt i32 %21, 0
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end67
  store i32 %num_untrusted, i32* %pdpth, align 8, !tbaa !114
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end67
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %1, i64 0, i32 6
  %22 = load i32, i32* %mdpth, align 4, !tbaa !35
  %cmp72 = icmp sgt i32 %22, -1
  %. = select i1 %cmp72, i32 1, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end71, %trusted, %land.lhs.true63, %if.end30, %land.lhs.true32, %if.end44, %if.then37, %if.then, %rejected
  %retval.0 = phi i32 [ %cond, %rejected ], [ %call7, %if.then ], [ %.mux, %if.then24 ], [ %call41, %if.then37 ], [ 3, %if.end44 ], [ 3, %land.lhs.true32 ], [ 3, %if.end30 ], [ 1, %land.lhs.true63 ], [ 1, %trusted ], [ %., %if.end71 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_dane_issuer(%struct.x509_store_ctx_st* nocapture noundef %ctx, i32 noundef %depth) unnamed_addr #0 {
entry:
  %dane1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %0 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane1, align 8, !tbaa !24
  %tobool.not = icmp eq %struct.ssl_dane_st* %0, null
  br i1 %tobool.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %umask = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 5
  %1 = load i32, i32* %umask, align 8, !tbaa !34
  %and = and i32 %1, 5
  %tobool2 = icmp eq i32 %and, 0
  %cmp = icmp eq i32 %depth, 0
  %or.cond = or i1 %cmp, %tobool2
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %depth) #9
  %cmp4.not = icmp eq i8* %call3, null
  br i1 %cmp4.not, label %cleanup, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.end
  %3 = bitcast i8* %call3 to %struct.x509_st*
  %call6 = tail call fastcc i32 @dane_match(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef nonnull %3, i32 noundef %depth) #10
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %land.lhs.true5
  %cmp10.not = icmp eq i32 %call6, 0
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end9
  %sub = add nsw i32 %depth, -1
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  store i32 %sub, i32* %num_untrusted, align 4, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9, %land.lhs.true5, %entry, %land.lhs.true, %if.then11
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 3, %land.lhs.true ], [ 3, %entry ], [ %call6, %land.lhs.true5 ], [ 3, %if.end9 ], [ 3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_dane_pkeys(%struct.x509_store_ctx_st* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %dane1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 32
  %0 = load %struct.ssl_dane_st*, %struct.ssl_dane_st** %dane1, align 8, !tbaa !24
  %num_untrusted = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 19
  %1 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 20
  %2 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %2) #10
  %sub = add nsw i32 %1, -1
  %call2 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %sub) #9
  %3 = bitcast i8* %call2 to %struct.x509_st*
  %trecs = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 1
  %4 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !25
  %call3 = tail call fastcc i32 @sk_danetls_record_num(%struct.stack_st_danetls_record* noundef %4) #10
  %cmp66 = icmp sgt i32 %call3, 0
  br i1 %cmp66, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc32
  %i.067 = phi i32 [ %inc, %for.inc32 ], [ 0, %entry ]
  %5 = load %struct.stack_st_danetls_record*, %struct.stack_st_danetls_record** %trecs, align 8, !tbaa !25
  %call5 = tail call fastcc %struct.danetls_record_st* @sk_danetls_record_value(%struct.stack_st_danetls_record* noundef %5, i32 noundef %i.067) #10
  %usage = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call5, i64 0, i32 0
  %6 = load i8, i8* %usage, align 8, !tbaa !164
  %cmp6.not = icmp eq i8 %6, 2
  br i1 %cmp6.not, label %lor.lhs.false, label %for.inc32

lor.lhs.false:                                    ; preds = %for.body
  %selector = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call5, i64 0, i32 1
  %7 = load i8, i8* %selector, align 1, !tbaa !170
  %cmp9.not = icmp eq i8 %7, 1
  br i1 %cmp9.not, label %lor.lhs.false11, label %for.inc32

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %mtype = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call5, i64 0, i32 2
  %8 = load i8, i8* %mtype, align 2, !tbaa !169
  %cmp13.not = icmp eq i8 %8, 0
  br i1 %cmp13.not, label %lor.lhs.false15, label %for.inc32

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %spki = getelementptr inbounds %struct.danetls_record_st, %struct.danetls_record_st* %call5, i64 0, i32 5
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %spki, align 8, !tbaa !176
  %call16 = tail call i32 @X509_verify(%struct.x509_st* noundef %3, %struct.evp_pkey_st* noundef %9) #9
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %for.inc32, label %if.end

if.end:                                           ; preds = %lor.lhs.false15
  %mcert = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 4
  %10 = load %struct.x509_st*, %struct.x509_st** %mcert, align 8, !tbaa !113
  tail call void @X509_free(%struct.x509_st* noundef %10) #9
  store %struct.x509_st* null, %struct.x509_st** %mcert, align 8, !tbaa !113
  %bare_ta_signed = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 33
  store i32 1, i32* %bare_ta_signed, align 8, !tbaa !78
  %mdpth = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 6
  store i32 %sub, i32* %mdpth, align 4, !tbaa !35
  %mtlsa = getelementptr inbounds %struct.ssl_dane_st, %struct.ssl_dane_st* %0, i64 0, i32 3
  store %struct.danetls_record_st* %call5, %struct.danetls_record_st** %mtlsa, align 8, !tbaa !163
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call22 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %11) #10
  %call23 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call22) #9
  %12 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp2668 = icmp sgt i32 %call23, %12
  br i1 %cmp2668, label %for.body28, label %cleanup

for.body28:                                       ; preds = %if.end, %for.body28
  %num.069 = phi i32 [ %dec, %for.body28 ], [ %call23, %if.end ]
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !22
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %13) #10
  %call31 = tail call i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %call30) #9
  %14 = bitcast i8* %call31 to %struct.x509_st*
  tail call void @X509_free(%struct.x509_st* noundef %14) #9
  %dec = add nsw i32 %num.069, -1
  %15 = load i32, i32* %num_untrusted, align 4, !tbaa !23
  %cmp26 = icmp sgt i32 %dec, %15
  br i1 %cmp26, label %for.body28, label %cleanup, !llvm.loop !177

for.inc32:                                        ; preds = %for.body, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false15
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %call3
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !178

cleanup:                                          ; preds = %for.inc32, %for.body28, %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 3, %entry ], [ 1, %for.body28 ], [ 3, %for.inc32 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @lookup_cert_match(%struct.x509_st** nocapture noundef writeonly %result, %struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  store %struct.x509_st* null, %struct.x509_st** %result, align 8, !tbaa !58
  %call = tail call i32 @ERR_set_mark() #9
  %lookup_certs = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 15
  %0 = load %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs, align 8, !tbaa !84
  %call1 = tail call %struct.X509_name_st* @X509_get_subject_name(%struct.x509_st* noundef %x) #9
  %call2 = tail call %struct.stack_st_X509* %0(%struct.x509_store_ctx_st* noundef %ctx, %struct.X509_name_st* noundef %call1) #9
  %call3 = tail call i32 @ERR_pop_to_mark() #9
  %cmp = icmp eq %struct.stack_st_X509* %call2, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call2) #10
  %call545 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #9
  %cmp646 = icmp sgt i32 %call545, 0
  br i1 %cmp646, label %for.body, label %if.end19

for.cond:                                         ; preds = %for.body
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #9
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %if.end19, !llvm.loop !179

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.047 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %i.047) #9
  %1 = bitcast i8* %call8 to %struct.x509_st*
  %call9 = tail call i32 @X509_cmp(%struct.x509_st* noundef %1, %struct.x509_st* noundef %x) #9
  %cmp10 = icmp eq i32 %call9, 0
  %inc = add nuw nsw i32 %i.047, 1
  br i1 %cmp10, label %for.end, label %for.cond

for.end:                                          ; preds = %for.body
  %cmp13.not = icmp eq i8* %call8, null
  br i1 %cmp13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %for.end
  %2 = bitcast i8* %call8 to %struct.x509_st*
  %call15 = tail call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %2) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.else

if.else:                                          ; preds = %if.then14
  %3 = bitcast %struct.x509_st** %result to i8**
  store i8* %call8, i8** %3, align 8, !tbaa !58
  br label %if.end19

if.end19:                                         ; preds = %for.cond, %for.cond.preheader, %if.then14, %if.else, %for.end
  %ret.0 = phi i32 [ 1, %if.else ], [ 0, %for.end ], [ -1, %if.then14 ], [ 0, %for.cond.preheader ], [ 0, %for.cond ]
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %call2) #10
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call20, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end19
  %retval.0 = phi i32 [ %ret.0, %if.end19 ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !11, i64 232}
!5 = !{!"x509_st", !6, i64 0, !13, i64 136, !10, i64 152, !16, i64 176, !8, i64 192, !17, i64 200, !12, i64 216, !12, i64 224, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 336, !7, i64 344, !11, i64 352, !7, i64 360, !7, i64 368, !7, i64 376}
!6 = !{!"x509_cinf_st", !7, i64 0, !10, i64 8, !13, i64 32, !7, i64 48, !14, i64 56, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !15, i64 112}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !7, i64 8, !12, i64 16}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"X509_algor_st", !7, i64 0, !7, i64 8}
!14 = !{!"X509_val_st", !7, i64 0, !7, i64 8}
!15 = !{!"ASN1_ENCODING_st", !7, i64 0, !12, i64 8, !11, i64 16}
!16 = !{!"x509_sig_info_st", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!17 = !{!"crypto_ex_data_st", !7, i64 0, !7, i64 8}
!18 = !{!19, !7, i64 8}
!19 = !{!"x509_store_ctx_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !11, i64 144, !11, i64 148, !7, i64 152, !7, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !11, i64 208, !11, i64 212, !7, i64 216, !17, i64 224, !7, i64 240, !11, i64 248, !7, i64 256, !7, i64 264}
!20 = !{!19, !7, i64 16}
!21 = !{!19, !11, i64 176}
!22 = !{!19, !7, i64 152}
!23 = !{!19, !11, i64 148}
!24 = !{!19, !7, i64 240}
!25 = !{!26, !7, i64 8}
!26 = !{!"ssl_dane_st", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !12, i64 56}
!27 = !{!19, !7, i64 32}
!28 = !{!29, !11, i64 44}
!29 = !{!"X509_VERIFY_PARAM_st", !7, i64 0, !12, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !7, i64 48, !7, i64 56, !11, i64 64, !7, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !12, i64 104}
!30 = !{!11, !11, i64 0}
!31 = !{!19, !11, i64 172}
!32 = !{!19, !7, i64 184}
!33 = !{!19, !7, i64 56}
!34 = !{!26, !11, i64 40}
!35 = !{!26, !11, i64 44}
!36 = !{!26, !12, i64 56}
!37 = !{!19, !7, i64 80}
!38 = !{!29, !12, i64 24}
!39 = !{!19, !7, i64 48}
!40 = !{!19, !7, i64 112}
!41 = !{!10, !11, i64 4}
!42 = !{!10, !11, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!10, !7, i64 8}
!46 = !{!8, !8, i64 0}
!47 = !{!12, !12, i64 0}
!48 = !{!10, !12, i64 16}
!49 = distinct !{!49, !44}
!50 = distinct !{!50, !44}
!51 = !{!52, !7, i64 168}
!52 = !{!"X509_crl_st", !53, i64 0, !13, i64 88, !10, i64 104, !8, i64 128, !11, i64 132, !7, i64 136, !7, i64 144, !11, i64 152, !11, i64 156, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240}
!53 = !{!"X509_crl_info_st", !7, i64 0, !13, i64 8, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !15, i64 64}
!54 = !{!52, !7, i64 160}
!55 = !{!52, !7, i64 232}
!56 = !{!52, !7, i64 240}
!57 = distinct !{!57, !44}
!58 = !{!7, !7, i64 0}
!59 = distinct !{!59, !44}
!60 = !{!19, !7, i64 192}
!61 = !{!19, !7, i64 200}
!62 = !{!19, !7, i64 216}
!63 = !{!19, !7, i64 24}
!64 = !{!65, !11, i64 4}
!65 = !{!"x509_purpose_st", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!66 = !{!29, !11, i64 32}
!67 = !{!29, !11, i64 36}
!68 = !{!19, !7, i64 256}
!69 = !{!19, !7, i64 264}
!70 = !{!19, !7, i64 136}
!71 = !{!19, !7, i64 160}
!72 = !{!19, !7, i64 0}
!73 = !{!19, !7, i64 40}
!74 = !{!19, !11, i64 144}
!75 = !{!19, !11, i64 168}
!76 = !{!19, !11, i64 208}
!77 = !{!19, !11, i64 212}
!78 = !{!19, !11, i64 248}
!79 = !{!19, !7, i64 72}
!80 = !{!19, !7, i64 64}
!81 = !{!19, !7, i64 88}
!82 = !{!19, !7, i64 96}
!83 = !{!19, !7, i64 104}
!84 = !{!19, !7, i64 120}
!85 = !{!86, !7, i64 120}
!86 = !{!"x509_store_st", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !17, i64 128, !8, i64 144, !7, i64 152}
!87 = !{!86, !7, i64 56}
!88 = !{!86, !7, i64 48}
!89 = !{!86, !7, i64 40}
!90 = !{!86, !7, i64 32}
!91 = !{!86, !7, i64 64}
!92 = !{!86, !7, i64 72}
!93 = !{!86, !7, i64 80}
!94 = !{!86, !7, i64 88}
!95 = !{!86, !7, i64 96}
!96 = !{!86, !7, i64 104}
!97 = !{!86, !7, i64 112}
!98 = !{!19, !7, i64 128}
!99 = !{!86, !7, i64 24}
!100 = !{!29, !11, i64 16}
!101 = distinct !{!101, !44}
!102 = !{!5, !11, i64 236}
!103 = !{!52, !11, i64 152}
!104 = !{!52, !11, i64 132}
!105 = !{!106, !11, i64 48}
!106 = !{!"x509_revoked_st", !10, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !11, i64 48, !11, i64 52}
!107 = !{!29, !7, i64 48}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = !{!26, !7, i64 16}
!111 = !{!29, !11, i64 40}
!112 = distinct !{!112, !44}
!113 = !{!26, !7, i64 32}
!114 = !{!26, !11, i64 48}
!115 = distinct !{!115, !44}
!116 = !{!5, !12, i64 216}
!117 = !{!5, !7, i64 280}
!118 = !{!5, !7, i64 256}
!119 = !{!5, !7, i64 248}
!120 = !{!121, !7, i64 0}
!121 = !{!"AUTHORITY_KEYID_st", !7, i64 0, !7, i64 8, !7, i64 16}
!122 = !{!5, !12, i64 224}
!123 = distinct !{!123, !44}
!124 = distinct !{!124, !44}
!125 = !{!29, !7, i64 56}
!126 = !{!29, !7, i64 80}
!127 = !{!29, !12, i64 88}
!128 = !{!29, !7, i64 96}
!129 = !{!29, !12, i64 104}
!130 = !{!5, !7, i64 288}
!131 = !{!29, !11, i64 64}
!132 = distinct !{!132, !44}
!133 = distinct !{!133, !44}
!134 = !{!29, !7, i64 72}
!135 = distinct !{!135, !44}
!136 = distinct !{!136, !44}
!137 = !{!138, !11, i64 0}
!138 = !{!"GENERAL_NAME_st", !11, i64 0, !8, i64 8}
!139 = distinct !{!139, !44}
!140 = !{!52, !11, i64 156}
!141 = distinct !{!141, !44}
!142 = !{!52, !7, i64 136}
!143 = distinct !{!143, !44}
!144 = distinct !{!144, !44}
!145 = !{!5, !7, i64 272}
!146 = !{!52, !7, i64 144}
!147 = !{!148, !7, i64 0}
!148 = !{!"DIST_POINT_st", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24}
!149 = !{!150, !7, i64 0}
!150 = !{!"ISSUING_DIST_POINT_st", !7, i64 0, !11, i64 8, !11, i64 12, !7, i64 16, !11, i64 24, !11, i64 28}
!151 = !{!148, !11, i64 24}
!152 = distinct !{!152, !44}
!153 = !{!148, !7, i64 16}
!154 = distinct !{!154, !44}
!155 = !{!156, !11, i64 0}
!156 = !{!"DIST_POINT_NAME_st", !11, i64 0, !8, i64 8, !7, i64 16}
!157 = !{!156, !7, i64 16}
!158 = distinct !{!158, !44}
!159 = distinct !{!159, !44}
!160 = distinct !{!160, !44}
!161 = distinct !{!161, !44}
!162 = distinct !{!162, !44}
!163 = !{!26, !7, i64 24}
!164 = !{!165, !8, i64 0}
!165 = !{!"danetls_record_st", !8, i64 0, !8, i64 1, !8, i64 2, !7, i64 8, !12, i64 16, !7, i64 24}
!166 = !{!26, !7, i64 0}
!167 = !{!168, !7, i64 8}
!168 = !{!"dane_ctx_st", !7, i64 0, !7, i64 8, !8, i64 16, !12, i64 24}
!169 = !{!165, !8, i64 2}
!170 = !{!165, !8, i64 1}
!171 = !{!168, !7, i64 0}
!172 = !{!165, !12, i64 16}
!173 = !{!165, !7, i64 8}
!174 = distinct !{!174, !44}
!175 = distinct !{!175, !44}
!176 = !{!165, !7, i64 24}
!177 = distinct !{!177, !44}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
