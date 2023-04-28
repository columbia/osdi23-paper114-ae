; ModuleID = 'crypto/x509/x509_lu.c'
source_filename = "crypto/x509/x509_lu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
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
%struct.ASIdentifierChoice_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_X509_ALGOR = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.2, %struct.X509_name_st* }
%union.anon.2 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type { i32, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*)*, i32 (%struct.X509_crl_st*, %struct.x509_revoked_st**, %struct.asn1_string_st*, %struct.X509_name_st*)*, i32 (%struct.X509_crl_st*, %struct.evp_pkey_st*)* }
%struct.x509_revoked_st = type { %struct.asn1_string_st, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_GENERAL_NAME*, i32, i32 }
%struct.evp_pkey_st = type opaque
%struct.ssl_dane_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.x509_lookup_method_st = type { i8*, i32 (%struct.x509_lookup_st*)*, void (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.x509_object_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/x509/x509_lu.c\00", align 1
@__func__.X509_LOOKUP_new = private unnamed_addr constant [16 x i8] c"X509_LOOKUP_new\00", align 1
@__func__.X509_STORE_new = private unnamed_addr constant [15 x i8] c"X509_STORE_new\00", align 1
@__func__.X509_STORE_add_lookup = private unnamed_addr constant [22 x i8] c"X509_STORE_add_lookup\00", align 1
@__func__.X509_STORE_add_cert = private unnamed_addr constant [20 x i8] c"X509_STORE_add_cert\00", align 1
@__func__.X509_STORE_add_crl = private unnamed_addr constant [19 x i8] c"X509_STORE_add_crl\00", align 1
@__func__.X509_OBJECT_new = private unnamed_addr constant [16 x i8] c"X509_OBJECT_new\00", align 1
@__func__.X509_STORE_get1_all_certs = private unnamed_addr constant [26 x i8] c"X509_STORE_get1_all_certs\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x509_lookup_st* @X509_LOOKUP_new(%struct.x509_lookup_method_st* noundef %method) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 20) #8
  %0 = bitcast i8* %call to %struct.x509_lookup_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_LOOKUP_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %method1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %method1 to %struct.x509_lookup_method_st**
  store %struct.x509_lookup_method_st* %method, %struct.x509_lookup_method_st** %1, align 8, !tbaa !4
  %new_item = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %method, i64 0, i32 1
  %2 = load i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)** %new_item, align 8, !tbaa !10
  %cmp2.not = icmp eq i32 (%struct.x509_lookup_st*)* %2, null
  br i1 %cmp2.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 %2(%struct.x509_lookup_st* noundef nonnull %0) #8
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then6, %if.then
  %retval.0 = phi %struct.x509_lookup_st* [ null, %if.then ], [ null, %if.then6 ], [ %0, %land.lhs.true ], [ %0, %if.end ]
  ret %struct.x509_lookup_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @X509_LOOKUP_free(%struct.x509_lookup_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_lookup_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp1.not = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp1.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %free = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 2
  %1 = load void (%struct.x509_lookup_st*)*, void (%struct.x509_lookup_st*)** %free, align 8, !tbaa !12
  %cmp3.not = icmp eq void (%struct.x509_lookup_st*)* %1, null
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  tail call void %1(%struct.x509_lookup_st* noundef nonnull %ctx) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %2 = bitcast %struct.x509_lookup_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #8
  br label %return

return:                                           ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_lock(%struct.x509_store_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %s, i64 0, i32 18
  %0 = load i8*, i8** %lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #8
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_unlock(%struct.x509_store_st* nocapture noundef readonly %s) local_unnamed_addr #0 {
entry:
  %lock = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %s, i64 0, i32 18
  %0 = load i8*, i8** %lock, align 8, !tbaa !13
  %call = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %0) #8
  ret i32 %call
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_init(%struct.x509_lookup_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %init = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 3
  %1 = load i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)** %init, align 8, !tbaa !16
  %cmp2.not = icmp eq i32 (%struct.x509_lookup_st*)* %1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %1(%struct.x509_lookup_st* noundef nonnull %ctx) #8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_shutdown(%struct.x509_lookup_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.x509_lookup_st*)*, i32 (%struct.x509_lookup_st*)** %shutdown, align 8, !tbaa !17
  %cmp2.not = icmp eq i32 (%struct.x509_lookup_st*)* %1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %1(%struct.x509_lookup_st* noundef nonnull %ctx) #8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argc, i64 noundef %argl, i8** noundef %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ctrl_ex = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 11
  %1 = load i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)** %ctrl_ex, align 8, !tbaa !18
  %cmp2.not = icmp eq i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* %1, null
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %1(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %cmd, i8* noundef %argc, i64 noundef %argl, i8** noundef %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  br label %return

if.end6:                                          ; preds = %if.end
  %ctrl = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 5
  %2 = load i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)*, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)** %ctrl, align 8, !tbaa !19
  %cmp8.not = icmp eq i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* %2, null
  br i1 %cmp8.not, label %return, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call12 = tail call i32 %2(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %cmd, i8* noundef %argc, i64 noundef %argl, i8** noundef %ret) #8
  br label %return

return:                                           ; preds = %if.end6, %entry, %if.then9, %if.then3
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call12, %if.then9 ], [ -1, %entry ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argc, i64 noundef %argl, i8** noundef %ret) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_LOOKUP_ctrl_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %cmd, i8* noundef %argc, i64 noundef %argl, i8** noundef %ret, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_by_subject_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %skip = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %skip, align 4, !tbaa !20
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %1 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %1, null
  br i1 %cmp, label %return, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %get_by_subject = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %1, i64 0, i32 6
  %2 = load i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)** %get_by_subject, align 8, !tbaa !21
  %cmp3 = icmp eq i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* %2, null
  %get_by_subject_ex = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %1, i64 0, i32 10
  %3 = load i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)** %get_by_subject_ex, align 8, !tbaa !22
  %cmp5 = icmp eq i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)* %3, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false1
  br i1 %cmp5, label %return, label %if.then9

if.end:                                           ; preds = %lor.lhs.false1
  br i1 %cmp5, label %if.else, label %if.then9

if.then9:                                         ; preds = %land.lhs.true, %if.end
  %call = tail call i32 %3(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #8
  br label %return

if.else:                                          ; preds = %if.end
  %call14 = tail call i32 %2(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %land.lhs.true, %if.else, %if.then9
  %retval.0 = phi i32 [ %call, %if.then9 ], [ %call14, %if.else ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_by_subject(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_LOOKUP_by_subject_ex(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_by_issuer_serial(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.asn1_string_st* noundef %serial, %struct.x509_object_st* noundef %ret) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %get_by_issuer_serial = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 7
  %1 = load i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)** %get_by_issuer_serial, align 8, !tbaa !23
  %cmp2 = icmp eq i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %1(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.asn1_string_st* noundef %serial, %struct.x509_object_st* noundef %ret) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_by_fingerprint(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, i8* noundef %bytes, i32 noundef %len, %struct.x509_object_st* noundef %ret) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %get_by_fingerprint = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 8
  %1 = load i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)** %get_by_fingerprint, align 8, !tbaa !24
  %cmp2 = icmp eq i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %1(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %type, i8* noundef %bytes, i32 noundef %len, %struct.x509_object_st* noundef %ret) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_LOOKUP_by_alias(%struct.x509_lookup_st* noundef %ctx, i32 noundef %type, i8* noundef %str, i32 noundef %len, %struct.x509_object_st* noundef %ret) local_unnamed_addr #0 {
entry:
  %method = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 2
  %0 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %method, align 8, !tbaa !4
  %cmp = icmp eq %struct.x509_lookup_method_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %get_by_alias = getelementptr inbounds %struct.x509_lookup_method_st, %struct.x509_lookup_method_st* %0, i64 0, i32 9
  %1 = load i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)*, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)** %get_by_alias, align 8, !tbaa !25
  %cmp2 = icmp eq i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %1(%struct.x509_lookup_st* noundef nonnull %ctx, i32 noundef %type, i8* noundef %str, i32 noundef %len, %struct.x509_object_st* noundef %ret) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @X509_LOOKUP_set_method_data(%struct.x509_lookup_st* nocapture noundef writeonly %ctx, i8* noundef %data) local_unnamed_addr #3 {
entry:
  %method_data = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 3
  store i8* %data, i8** %method_data, align 8, !tbaa !26
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @X509_LOOKUP_get_method_data(%struct.x509_lookup_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %method_data = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 3
  %0 = load i8*, i8** %method_data, align 8, !tbaa !26
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_store_st* @X509_LOOKUP_get_store(%struct.x509_lookup_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %store_ctx = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 4
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !27
  ret %struct.x509_store_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 160, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #8
  %0 = bitcast i8* %call to %struct.x509_store_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_STORE_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.x509_object_st**, %struct.x509_object_st**)* @x509_object_cmp to i32 (i8*, i8*)*)) #8
  %objs = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %objs to %struct.stack_st_X509_OBJECT**
  %2 = bitcast i8* %objs to %struct.stack_st**
  store %struct.stack_st* %call2, %struct.stack_st** %2, align 8, !tbaa !28
  %cmp3 = icmp eq %struct.stack_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %cache = bitcast i8* %call to i32*
  store i32 1, i32* %cache, align 8, !tbaa !29
  %call6 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %get_cert_methods = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %get_cert_methods to %struct.stack_st**
  store %struct.stack_st* %call6, %struct.stack_st** %3, align 8, !tbaa !30
  %cmp7 = icmp eq %struct.stack_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #8
  %param = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %param to %struct.X509_VERIFY_PARAM_st**
  store %struct.X509_VERIFY_PARAM_st* %call10, %struct.X509_VERIFY_PARAM_st** %4, align 8, !tbaa !31
  %cmp11 = icmp eq %struct.X509_VERIFY_PARAM_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %ex_data = getelementptr inbounds i8, i8* %call, i64 128
  %5 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call14 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 4, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %5) #8
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end13
  %call17 = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %lock = getelementptr inbounds i8, i8* %call, i64 152
  %6 = bitcast i8* %lock to i8**
  store i8* %call17, i8** %6, align 8, !tbaa !13
  %cmp19 = icmp eq i8* %call17, null
  br i1 %cmp19, label %err, label %if.end21

if.end21:                                         ; preds = %if.end16
  %references = getelementptr inbounds i8, i8* %call, i64 144
  %7 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %7 seq_cst, align 4, !tbaa !32
  br label %cleanup

err:                                              ; preds = %if.end16, %if.end13, %if.end9, %if.end5, %if.end
  %.sink = phi i32 [ 189, %if.end ], [ 194, %if.end5 ], [ 199, %if.end9 ], [ 203, %if.end13 ], [ 209, %if.end16 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.X509_STORE_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  %param22 = getelementptr inbounds i8, i8* %call, i64 24
  %8 = bitcast i8* %param22 to %struct.X509_VERIFY_PARAM_st**
  %9 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %8, align 8, !tbaa !31
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %9) #8
  %10 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %1, align 8, !tbaa !28
  %call24 = tail call fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %10) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call24) #8
  %get_cert_methods25 = getelementptr inbounds i8, i8* %call, i64 16
  %11 = bitcast i8* %get_cert_methods25 to %struct.stack_st_X509_LOOKUP**
  %12 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %11, align 8, !tbaa !30
  %call26 = tail call fastcc %struct.stack_st* @ossl_check_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %12) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call26) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 219) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end21, %if.then
  %retval.0 = phi %struct.x509_store_st* [ null, %if.then ], [ null, %err ], [ %0, %if.end21 ]
  ret %struct.x509_store_st* %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @x509_object_cmp(%struct.x509_object_st** nocapture noundef readonly %a, %struct.x509_object_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.x509_object_st*, %struct.x509_object_st** %a, align 8, !tbaa !33
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !34
  %2 = load %struct.x509_object_st*, %struct.x509_object_st** %b, align 8, !tbaa !33
  %type1 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %2, i64 0, i32 0
  %3 = load i32, i32* %type1, align 8, !tbaa !34
  %sub = sub i32 %1, %3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %1, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %0, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  %4 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  %data3 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %2, i64 0, i32 1
  %x5094 = bitcast %union.anon* %data3 to %struct.x509_st**
  %5 = load %struct.x509_st*, %struct.x509_st** %x5094, align 8, !tbaa !36
  %call = tail call i32 @X509_subject_name_cmp(%struct.x509_st* noundef %4, %struct.x509_st* noundef %5) #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %data6 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %0, i64 0, i32 1
  %crl = bitcast %union.anon* %data6 to %struct.X509_crl_st**
  %6 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  %data7 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %2, i64 0, i32 1
  %crl8 = bitcast %union.anon* %data7 to %struct.X509_crl_st**
  %7 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl8, align 8, !tbaa !36
  %call9 = tail call i32 @X509_CRL_cmp(%struct.X509_crl_st* noundef %6, %struct.X509_crl_st* noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb5, %if.end, %entry
  %retval.0 = phi i32 [ %sub, %entry ], [ 0, %if.end ], [ %call9, %sw.bb5 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509_LOOKUP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @X509_STORE_free(%struct.x509_store_st* noundef %vfy) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %cmp = icmp eq %struct.x509_store_st* %vfy, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 17
  %lock = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 18
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  %1 = load i32, i32* %i, align 4, !tbaa !37
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %get_cert_methods = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 2
  %2 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %get_cert_methods, align 8, !tbaa !30
  %call4 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %2) #9
  %call530 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #8
  %cmp631 = icmp sgt i32 %call530, 0
  br i1 %cmp631, label %for.body, label %for.end

for.body:                                         ; preds = %if.end3, %for.body
  %storemerge32 = phi i32 [ %inc, %for.body ], [ 0, %if.end3 ]
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call4, i32 noundef %storemerge32) #8
  %3 = bitcast i8* %call8 to %struct.x509_lookup_st*
  %call9 = tail call i32 @X509_LOOKUP_shutdown(%struct.x509_lookup_st* noundef %3) #9
  tail call void @X509_LOOKUP_free(%struct.x509_lookup_st* noundef %3) #9
  %inc = add nuw nsw i32 %storemerge32, 1
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call4) #8
  %cmp6 = icmp slt i32 %inc, %call5
  br i1 %cmp6, label %for.body, label %for.end, !llvm.loop !38

for.end:                                          ; preds = %for.body, %if.end3
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %2) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call10) #8
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 1
  %4 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %4) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call11, void (i8*)* noundef bitcast (void (%struct.x509_object_st*)* @X509_OBJECT_free to void (i8*)*)) #8
  %5 = bitcast %struct.x509_store_st* %vfy to i8*
  %ex_data = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 16
  tail call void @CRYPTO_free_ex_data(i32 noundef 4, i8* noundef nonnull %5, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #8
  %param = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 3
  %6 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !31
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef %6) #8
  %7 = load i8*, i8** %lock, align 8, !tbaa !13
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 249) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #6 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !37
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509_LOOKUP* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @X509_OBJECT_free(%struct.x509_object_st* noundef %a) #0 {
entry:
  tail call fastcc void @x509_object_free_internal(%struct.x509_object_st* noundef %a) #9
  %0 = bitcast %struct.x509_object_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 492) #8
  ret void
}

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @X509_STORE_up_ref(%struct.x509_store_st* nocapture noundef %vfy) local_unnamed_addr #7 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %references = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %vfy, i64 0, i32 17
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  %1 = load i32, i32* %i, align 4, !tbaa !37
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #6 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef %v, %struct.x509_lookup_method_st* noundef %m) local_unnamed_addr #0 {
entry:
  %get_cert_methods = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %v, i64 0, i32 2
  %0 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %get_cert_methods, align 8, !tbaa !30
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %0) #9
  %call132 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp33 = icmp sgt i32 %call132, 0
  br i1 %cmp33, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #8
  %cmp = icmp slt i32 %inc, %call1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !40

for.body:                                         ; preds = %entry, %for.cond
  %i.034 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %call3 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.034) #8
  %method = getelementptr inbounds i8, i8* %call3, i64 8
  %1 = bitcast i8* %method to %struct.x509_lookup_method_st**
  %2 = load %struct.x509_lookup_method_st*, %struct.x509_lookup_method_st** %1, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.x509_lookup_method_st* %2, %m
  %inc = add nuw nsw i32 %i.034, 1
  br i1 %cmp4, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %3 = bitcast i8* %call3 to %struct.x509_lookup_st*
  br label %cleanup

for.end:                                          ; preds = %for.cond, %entry
  %call5 = tail call %struct.x509_lookup_st* @X509_LOOKUP_new(%struct.x509_lookup_method_st* noundef %m) #9
  %cmp6 = icmp eq %struct.x509_lookup_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509_STORE_add_lookup, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end8:                                          ; preds = %for.end
  %store_ctx = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %call5, i64 0, i32 4
  store %struct.x509_store_st* %v, %struct.x509_store_st** %store_ctx, align 8, !tbaa !27
  %4 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %get_cert_methods, align 8, !tbaa !30
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %4) #9
  %5 = bitcast %struct.x509_lookup_st* %call5 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef nonnull %5) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.X509_STORE_add_lookup, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  tail call void @X509_LOOKUP_free(%struct.x509_lookup_st* noundef nonnull %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end14, %if.then7, %if.then
  %retval.0 = phi %struct.x509_lookup_st* [ %3, %if.then ], [ null, %if.then7 ], [ null, %if.end14 ], [ %call5, %if.end8 ]
  ret %struct.x509_lookup_st* %retval.0
}

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_object_st* @X509_STORE_CTX_get_obj_by_subject(%struct.x509_store_ctx_st* nocapture noundef readonly %vs, i32 noundef %type, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.x509_object_st* @X509_OBJECT_new() #9
  %cmp = icmp eq %struct.x509_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @X509_STORE_CTX_get_by_subject(%struct.x509_store_ctx_st* noundef %vs, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef nonnull %call) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi %struct.x509_object_st* [ null, %if.then2 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.x509_object_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_object_st* @X509_OBJECT_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 441) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.X509_OBJECT_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.x509_object_st*
  %type = bitcast i8* %call to i32*
  store i32 0, i32* %type, align 8, !tbaa !34
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_object_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.x509_object_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_get_by_subject(%struct.x509_store_ctx_st* nocapture noundef readonly %vs, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* nocapture noundef writeonly %ret) local_unnamed_addr #0 {
entry:
  %stmp = alloca %struct.x509_object_st, align 8
  %store1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %vs, i64 0, i32 0
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %store1, align 8, !tbaa !41
  %1 = bitcast %struct.x509_object_st* %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  %cmp = icmp eq %struct.x509_store_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 0
  store i32 0, i32* %type2, align 8, !tbaa !34
  %ptr = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 1, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !36
  %call = tail call i32 @X509_STORE_lock(%struct.x509_store_st* noundef nonnull %0) #9
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %0, i64 0, i32 1
  %2 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call3 = tail call %struct.x509_object_st* @X509_OBJECT_retrieve_by_subject(%struct.stack_st_X509_OBJECT* noundef %2, i32 noundef %type, %struct.X509_name_st* noundef %name) #9
  %call4 = tail call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %0) #9
  %cmp5 = icmp eq %struct.x509_object_st* %call3, null
  %cmp6 = icmp eq i32 %type, 2
  %or.cond = or i1 %cmp6, %cmp5
  br i1 %or.cond, label %for.cond.preheader, label %if.end20

for.cond.preheader:                               ; preds = %if.end
  %get_cert_methods = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %0, i64 0, i32 2
  %3 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %get_cert_methods, align 8, !tbaa !30
  %call860 = call fastcc %struct.stack_st* @ossl_check_const_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %3) #9
  %call961 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call860) #8
  %cmp1062 = icmp sgt i32 %call961, 0
  br i1 %cmp1062, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %libctx = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %vs, i64 0, i32 34
  %propq = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %vs, i64 0, i32 35
  br label %for.body

for.cond:                                         ; preds = %for.body
  %4 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %get_cert_methods, align 8, !tbaa !30
  %call8 = call fastcc %struct.stack_st* @ossl_check_const_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %4) #9
  %call9 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call8) #8
  %cmp10 = icmp slt i32 %inc, %call9
  br i1 %cmp10, label %for.body, label %for.end, !llvm.loop !43

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %5 = load %struct.stack_st_X509_LOOKUP*, %struct.stack_st_X509_LOOKUP** %get_cert_methods, align 8, !tbaa !30
  %call12 = call fastcc %struct.stack_st* @ossl_check_const_X509_LOOKUP_sk_type(%struct.stack_st_X509_LOOKUP* noundef %5) #9
  %call13 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call12, i32 noundef %i.063) #8
  %6 = bitcast i8* %call13 to %struct.x509_lookup_st*
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !44
  %8 = load i8*, i8** %propq, align 8, !tbaa !45
  %call14 = call i32 @X509_LOOKUP_by_subject_ex(%struct.x509_lookup_st* noundef %6, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef nonnull %stmp, %struct.ossl_lib_ctx_st* noundef %7, i8* noundef %8) #9
  %tobool.not = icmp eq i32 %call14, 0
  %inc = add nuw nsw i32 %i.063, 1
  br i1 %tobool.not, label %for.cond, label %if.end20

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  br i1 %cmp5, label %cleanup, label %if.end20

if.end20:                                         ; preds = %for.body, %for.end, %if.end
  %tmp.1 = phi %struct.x509_object_st* [ %call3, %for.end ], [ %call3, %if.end ], [ %stmp, %for.body ]
  %call21 = call i32 @X509_OBJECT_up_ref_count(%struct.x509_object_st* noundef %tmp.1) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end20
  %type25 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %tmp.1, i64 0, i32 0
  %9 = load i32, i32* %type25, align 8, !tbaa !34
  %type26 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %ret, i64 0, i32 0
  store i32 %9, i32* %type26, align 8, !tbaa !34
  %ptr28 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %tmp.1, i64 0, i32 1, i32 0
  %10 = load i8*, i8** %ptr28, align 8, !tbaa !36
  %ptr30 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %ret, i64 0, i32 1, i32 0
  store i8* %10, i8** %ptr30, align 8, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %for.end, %entry, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %entry ], [ 0, %for.end ], [ 0, %if.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_object_st* @X509_OBJECT_retrieve_by_subject(%struct.stack_st_X509_OBJECT* noundef %h, i32 noundef %type, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_OBJECT_idx_by_subject(%struct.stack_st_X509_OBJECT* noundef %h, i32 noundef %type, %struct.X509_name_st* noundef %name) #9
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %h) #9
  %call2 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %call) #8
  %0 = bitcast i8* %call2 to %struct.x509_object_st*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.x509_object_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.x509_object_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_OBJECT_up_ref_count(%struct.x509_object_st* nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !34
  switch i32 %0, label %return [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef %1) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %crl = bitcast %union.anon* %data2 to %struct.X509_crl_st**
  %2 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  %call3 = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %2) #8
  br label %return

return:                                           ; preds = %entry, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call3, %sw.bb1 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_add_cert(%struct.x509_store_st* nocapture noundef readonly %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st* %x to i8*
  %call = tail call fastcc i32 @x509_store_add(%struct.x509_store_st* noundef %ctx, i8* noundef %0, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.X509_STORE_add_cert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_store_add(%struct.x509_store_st* nocapture noundef readonly %store, i8* noundef %x, i32 noundef %crl) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %x, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.x509_object_st* @X509_OBJECT_new() #9
  %cmp1 = icmp eq %struct.x509_object_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 %crl, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %0 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %call, i64 0, i32 0
  store i32 %spec.select, i32* %0, align 8
  %1 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %call, i64 0, i32 1, i32 0
  store i8* %x, i8** %1, align 8
  %call9 = tail call i32 @X509_OBJECT_up_ref_count(%struct.x509_object_st* noundef nonnull %call) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end3
  store i32 0, i32* %0, align 8, !tbaa !34
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end3
  %call14 = tail call i32 @X509_STORE_lock(%struct.x509_store_st* noundef %store) #9
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %store, i64 0, i32 1
  %2 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call15 = tail call %struct.x509_object_st* @X509_OBJECT_retrieve_match(%struct.stack_st_X509_OBJECT* noundef %2, %struct.x509_object_st* noundef nonnull %call) #9
  %tobool16.not = icmp eq %struct.x509_object_st* %call15, null
  br i1 %tobool16.not, label %if.end24, label %if.end24.thread

if.end24.thread:                                  ; preds = %if.end13
  %call2553 = tail call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %store) #9
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end13
  %3 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call20 = tail call fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %3) #9
  %4 = bitcast %struct.x509_object_st* %call to i8*
  %call22 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call20, i8* noundef nonnull %4) #8
  %cmp23 = icmp ne i32 %call22, 0
  %conv = zext i1 %cmp23 to i32
  %phi.cmp = icmp eq i32 %call22, 0
  %call25 = tail call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %store) #9
  br i1 %phi.cmp, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end24, %if.end24.thread, %if.then11
  %retval.0.ph = phi i32 [ 0, %if.then11 ], [ 1, %if.end24.thread ], [ %conv, %if.end24 ]
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %conv, %if.end24 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_add_crl(%struct.x509_store_st* nocapture noundef readonly %ctx, %struct.X509_crl_st* noundef %x) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st* %x to i8*
  %call = tail call fastcc i32 @x509_store_add(%struct.x509_store_st* noundef %ctx, i8* noundef %0, i32 noundef 1) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.X509_STORE_add_crl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @X509_OBJECT_get0_X509(%struct.x509_object_st* noundef readonly %a) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.x509_object_st* %a, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !34
  %cmp1.not = icmp eq i32 %0, 1
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.x509_st* [ %1, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_crl_st* @X509_OBJECT_get0_X509_CRL(%struct.x509_object_st* noundef readonly %a) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.x509_object_st* %a, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !34
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %crl = bitcast %union.anon* %data to %struct.X509_crl_st**
  %1 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.X509_crl_st* [ %1, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.X509_crl_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @X509_OBJECT_get_type(%struct.x509_object_st* nocapture noundef readonly %a) local_unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !34
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_OBJECT_set1_X509(%struct.x509_object_st* noundef %a, %struct.x509_st* noundef %obj) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_object_st* %a, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef %obj) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @x509_object_free_internal(%struct.x509_object_st* noundef nonnull %a) #9
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  store i32 1, i32* %type, align 8, !tbaa !34
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  store %struct.x509_st* %obj, %struct.x509_st** %x509, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @x509_object_free_internal(%struct.x509_object_st* noundef readonly %a) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_object_st* %a, null
  br i1 %cmp, label %sw.epilog, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !34
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb1
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  tail call void @X509_free(%struct.x509_st* noundef %1) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %data2 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %crl = bitcast %union.anon* %data2 to %struct.X509_crl_st**
  %2 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %2) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_OBJECT_set1_X509_CRL(%struct.x509_object_st* noundef %a, %struct.X509_crl_st* noundef %obj) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_object_st* %a, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %obj) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @x509_object_free_internal(%struct.x509_object_st* noundef nonnull %a) #9
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 0
  store i32 2, i32* %type, align 8, !tbaa !34
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %a, i64 0, i32 1
  %crl = bitcast %union.anon* %data to %struct.X509_crl_st**
  store %struct.X509_crl_st* %obj, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_OBJECT_idx_by_subject(%struct.stack_st_X509_OBJECT* noundef %h, i32 noundef %type, %struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @x509_object_idx_cnt(%struct.stack_st_X509_OBJECT* noundef %h, i32 noundef %type, %struct.X509_name_st* noundef %name, i32* noundef null) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @x509_object_idx_cnt(%struct.stack_st_X509_OBJECT* noundef %h, i32 noundef %type, %struct.X509_name_st* noundef %name, i32* noundef %pnmatch) unnamed_addr #0 {
entry:
  %stmp = alloca %struct.x509_object_st, align 8
  %x509_s = alloca %struct.x509_st, align 8
  %crl_s = alloca %struct.X509_crl_st, align 8
  %0 = bitcast %struct.x509_object_st* %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %1 = bitcast %struct.x509_st* %x509_s to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %1) #10
  %2 = bitcast %struct.X509_crl_st* %crl_s to i8*
  call void @llvm.lifetime.start.p0i8(i64 248, i8* nonnull %2) #10
  %type1 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 0
  store i32 %type, i32* %type1, align 8, !tbaa !34
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 0, label %cleanup
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  store %struct.x509_st* %x509_s, %struct.x509_st** %x509, align 8, !tbaa !36
  %subject = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x509_s, i64 0, i32 0, i32 5
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 1
  %crl = bitcast %union.anon* %data3 to %struct.X509_crl_st**
  store %struct.X509_crl_st* %crl_s, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  %issuer = getelementptr inbounds %struct.X509_crl_st, %struct.X509_crl_st* %crl_s, i64 0, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb2
  %issuer.sink = phi %struct.X509_name_st** [ %issuer, %sw.bb2 ], [ %subject, %sw.bb ]
  store %struct.X509_name_st* %name, %struct.X509_name_st** %issuer.sink, align 8, !tbaa !33
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %call = call fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %h) #9
  %call7 = call i32 @OPENSSL_sk_find_all(%struct.stack_st* noundef %call, i8* noundef nonnull %0, i32* noundef %pnmatch) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %call7, %sw.epilog ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 248, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_OBJECT* @X509_STORE_get0_objects(%struct.x509_store_st* nocapture noundef readonly %v) local_unnamed_addr #4 {
entry:
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %v, i64 0, i32 1
  %0 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  ret %struct.stack_st_X509_OBJECT* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @X509_STORE_get1_all_certs(%struct.x509_store_st* noundef readonly %store) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.x509_store_st* %store, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.X509_STORE_get1_all_certs, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup20

if.end:                                           ; preds = %entry
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %cmp1 = icmp eq %struct.stack_st* %call, null
  br i1 %cmp1, label %cleanup20, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @X509_STORE_lock(%struct.x509_store_st* noundef nonnull %store) #9
  %call5 = tail call %struct.stack_st_X509_OBJECT* @X509_STORE_get0_objects(%struct.x509_store_st* noundef nonnull %store) #9
  %call6 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %call5) #9
  %call738 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #8
  %cmp839 = icmp sgt i32 %call738, 0
  br i1 %cmp839, label %for.body, label %for.end

for.body:                                         ; preds = %if.end3, %for.inc
  %i.040 = phi i32 [ %inc, %for.inc ], [ 0, %if.end3 ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call6, i32 noundef %i.040) #8
  %1 = bitcast i8* %call10 to %struct.x509_object_st*
  %call11 = tail call %struct.x509_st* @X509_OBJECT_get0_X509(%struct.x509_object_st* noundef %1) #9
  %cmp12.not = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp12.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call13 = tail call i32 @X509_add_cert(%struct.stack_st_X509* noundef nonnull %0, %struct.x509_st* noundef nonnull %call11, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.040, 1
  %call7 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call6) #8
  %cmp8 = icmp slt i32 %inc, %call7
  br i1 %cmp8, label %for.body, label %for.end, !llvm.loop !46

for.end:                                          ; preds = %for.inc, %if.end3
  %call16 = tail call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %store) #9
  br label %cleanup20

err:                                              ; preds = %land.lhs.true
  %call17 = tail call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %store) #9
  %call18 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef nonnull %0) #9
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call18, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end, %err, %for.end, %if.then
  %retval.0 = phi %struct.stack_st_X509* [ null, %if.then ], [ null, %err ], [ %0, %for.end ], [ null, %if.end ]
  ret %struct.stack_st_X509* %retval.0
}

declare i32 @X509_add_cert(%struct.stack_st_X509* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509* @X509_STORE_CTX_get1_certs(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, %struct.X509_name_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %cnt = alloca i32, align 4
  %0 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %store1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.x509_store_st*, %struct.x509_store_st** %store1, align 8, !tbaa !41
  %cmp = icmp eq %struct.x509_store_st* %1, null
  br i1 %cmp, label %cleanup35, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @X509_STORE_lock(%struct.x509_store_st* noundef nonnull %1) #9
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %1, i64 0, i32 1
  %2 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call2 = call fastcc i32 @x509_object_idx_cnt(%struct.stack_st_X509_OBJECT* noundef %2, i32 noundef 1, %struct.X509_name_st* noundef %nm, i32* noundef nonnull %cnt) #9
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.end
  %call5 = call %struct.x509_object_st* @X509_OBJECT_new() #9
  %call6 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %1) #9
  %cmp7 = icmp eq %struct.x509_object_st* %call5, null
  br i1 %cmp7, label %cleanup35, label %if.end9

if.end9:                                          ; preds = %if.then4
  %call10 = call i32 @X509_STORE_CTX_get_by_subject(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 1, %struct.X509_name_st* noundef %nm, %struct.x509_object_st* noundef nonnull %call5) #9
  %tobool.not = icmp eq i32 %call10, 0
  call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call5) #9
  br i1 %tobool.not, label %cleanup35, label %if.end12

if.end12:                                         ; preds = %if.end9
  %call13 = call i32 @X509_STORE_lock(%struct.x509_store_st* noundef nonnull %1) #9
  %3 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call15 = call fastcc i32 @x509_object_idx_cnt(%struct.stack_st_X509_OBJECT* noundef %3, i32 noundef 1, %struct.X509_name_st* noundef %nm, i32* noundef nonnull %cnt) #9
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  %call18 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %1) #9
  br label %cleanup35

if.end20:                                         ; preds = %if.end12, %if.end
  %idx.1 = phi i32 [ %call2, %if.end ], [ %call15, %if.end12 ]
  %call21 = call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %4 = bitcast %struct.stack_st* %call21 to %struct.stack_st_X509*
  %5 = load i32, i32* %cnt, align 4, !tbaa !37
  %cmp2272 = icmp sgt i32 %5, 0
  br i1 %cmp2272, label %for.body, label %for.end

for.body:                                         ; preds = %if.end20, %for.inc
  %i.074 = phi i32 [ %inc, %for.inc ], [ 0, %if.end20 ]
  %idx.273 = phi i32 [ %inc33, %for.inc ], [ %idx.1, %if.end20 ]
  %6 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call24 = call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %6) #9
  %call25 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call24, i32 noundef %idx.273) #8
  %data = getelementptr inbounds i8, i8* %call25, i64 8
  %x509 = bitcast i8* %data to %struct.x509_st**
  %7 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  %call26 = call i32 @X509_add_cert(%struct.stack_st_X509* noundef %4, %struct.x509_st* noundef %7, i32 noundef 1) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body
  %call29 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %1) #9
  %call30 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #9
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call30, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #8
  br label %cleanup35

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.074, 1
  %inc33 = add nsw i32 %idx.273, 1
  %8 = load i32, i32* %cnt, align 4, !tbaa !37
  %cmp22 = icmp slt i32 %inc, %8
  br i1 %cmp22, label %for.body, label %for.end, !llvm.loop !47

for.end:                                          ; preds = %for.inc, %if.end20
  %call34 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %1) #9
  br label %cleanup35

cleanup35:                                        ; preds = %if.end9, %if.then4, %if.then17, %entry, %for.end, %if.then28
  %retval.1 = phi %struct.stack_st_X509* [ null, %if.then28 ], [ %4, %for.end ], [ null, %entry ], [ null, %if.then17 ], [ null, %if.then4 ], [ null, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret %struct.stack_st_X509* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st_X509_CRL* @X509_STORE_CTX_get1_crls(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx, %struct.X509_name_st* noundef %nm) local_unnamed_addr #0 {
entry:
  %cnt = alloca i32, align 4
  %0 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #8
  %1 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_CRL*
  %call1 = tail call %struct.x509_object_st* @X509_OBJECT_new() #9
  %store2 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.x509_store_st*, %struct.x509_store_st** %store2, align 8, !tbaa !41
  %cmp = icmp eq %struct.stack_st* %call, null
  %cmp3 = icmp eq %struct.x509_object_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %cmp5 = icmp eq %struct.x509_store_st* %2, null
  %or.cond45 = select i1 %or.cond, i1 true, i1 %cmp5
  br i1 %or.cond45, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %entry
  %call7 = tail call i32 @X509_STORE_CTX_get_by_subject(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 2, %struct.X509_name_st* noundef %nm, %struct.x509_object_st* noundef nonnull %call1) #9
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %entry
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef %call1) #9
  %call8 = tail call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %1) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call8) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call1) #9
  %call9 = tail call i32 @X509_STORE_lock(%struct.x509_store_st* noundef nonnull %2) #9
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %2, i64 0, i32 1
  %3 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call10 = call fastcc i32 @x509_object_idx_cnt(%struct.stack_st_X509_OBJECT* noundef %3, i32 noundef 2, %struct.X509_name_st* noundef %nm, i32* noundef nonnull %cnt) #9
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %4 = load i32, i32* %cnt, align 4, !tbaa !37
  %cmp1678 = icmp sgt i32 %4, 0
  br i1 %cmp1678, label %for.body, label %for.end

if.then12:                                        ; preds = %if.end
  %call13 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %2) #9
  %call14 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %1) #9
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call14) #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.080 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %idx.079 = phi i32 [ %inc36, %for.inc ], [ %call10, %for.cond.preheader ]
  %5 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call18 = call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %5) #9
  %call19 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call18, i32 noundef %idx.079) #8
  %data = getelementptr inbounds i8, i8* %call19, i64 8
  %crl = bitcast i8* %data to %struct.X509_crl_st**
  %6 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  %call20 = call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %6) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end26

if.then22:                                        ; preds = %for.body
  %call23 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %2) #9
  %call24 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %1) #9
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call24, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #8
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %call27 = call fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef %1) #9
  %7 = bitcast %struct.X509_crl_st* %6 to i8*
  %call29 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call27, i8* noundef %7) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %for.inc

if.then31:                                        ; preds = %if.end26
  %call32 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %2) #9
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %6) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call27, void (i8*)* noundef bitcast (void (%struct.X509_crl_st*)* @X509_CRL_free to void (i8*)*)) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end26
  %inc = add nuw nsw i32 %i.080, 1
  %inc36 = add nsw i32 %idx.079, 1
  %8 = load i32, i32* %cnt, align 4, !tbaa !37
  %cmp16 = icmp slt i32 %inc, %8
  br i1 %cmp16, label %for.body, label %for.end, !llvm.loop !48

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call37 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %if.then22, %if.then12, %if.then
  %retval.0 = phi %struct.stack_st_X509_CRL* [ null, %if.then ], [ null, %if.then12 ], [ null, %if.then31 ], [ null, %if.then22 ], [ %1, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret %struct.stack_st_X509_CRL* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_CRL_sk_type(%struct.stack_st_X509_CRL* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_X509_CRL* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define %struct.x509_object_st* @X509_OBJECT_retrieve_match(%struct.stack_st_X509_OBJECT* noundef %h, %struct.x509_object_st* noundef %x) local_unnamed_addr #0 {
entry:
  %x.addr = alloca %struct.x509_object_st*, align 8
  %obj = alloca %struct.x509_object_st*, align 8
  store %struct.x509_object_st* %x, %struct.x509_object_st** %x.addr, align 8, !tbaa !33
  %0 = bitcast %struct.x509_object_st** %obj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = tail call fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %h) #9
  %1 = bitcast %struct.x509_object_st* %x to i8*
  %call2 = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call, i8* noundef %1) #8
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %x, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !34
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %h) #9
  br i1 %switch, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %call8 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %call2) #8
  %3 = bitcast i8* %call8 to %struct.x509_object_st*
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call10) #8
  %cmp1254 = icmp slt i32 %call2, %call11
  br i1 %cmp1254, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  %4 = bitcast %struct.x509_object_st** %obj to i8**
  %data31 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %x, i64 0, i32 1
  %crl32 = bitcast %union.anon* %data31 to %struct.X509_crl_st**
  %x50922 = bitcast %union.anon* %data31 to %struct.x509_st**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.055 = phi i32 [ %call2, %for.body.lr.ph ], [ %inc, %for.inc ]
  %call14 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call10, i32 noundef %i.055) #8
  store i8* %call14, i8** %4, align 8, !tbaa !33
  %call15 = call i32 @x509_object_cmp(%struct.x509_object_st** noundef nonnull %obj, %struct.x509_object_st** noundef nonnull %x.addr) #9
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %for.body
  %5 = load i32, i32* %type, align 8, !tbaa !34
  switch i32 %5, label %cleanup.loopexit.split.loop.exit [
    i32 1, label %if.then20
    i32 2, label %if.then29
  ]

if.then20:                                        ; preds = %if.end17
  %data = getelementptr inbounds i8, i8* %call14, i64 8
  %x509 = bitcast i8* %data to %struct.x509_st**
  %6 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  %7 = load %struct.x509_st*, %struct.x509_st** %x50922, align 8, !tbaa !36
  %call23 = tail call i32 @X509_cmp(%struct.x509_st* noundef %6, %struct.x509_st* noundef %7) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.loopexit.split.loop.exit61, label %for.inc

if.then29:                                        ; preds = %if.end17
  %data30 = getelementptr inbounds i8, i8* %call14, i64 8
  %crl = bitcast i8* %data30 to %struct.X509_crl_st**
  %8 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !36
  %9 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl32, align 8, !tbaa !36
  %call33 = tail call i32 @X509_CRL_match(%struct.X509_crl_st* noundef %8, %struct.X509_crl_st* noundef %9) #8
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %cleanup.loopexit.split.loop.exit59, label %for.inc

for.inc:                                          ; preds = %if.then20, %if.then29
  %inc = add i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %call11
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !49

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end17
  %10 = bitcast i8* %call14 to %struct.x509_object_st*
  br label %cleanup

cleanup.loopexit.split.loop.exit59:               ; preds = %if.then29
  %11 = bitcast i8* %call14 to %struct.x509_object_st*
  br label %cleanup

cleanup.loopexit.split.loop.exit61:               ; preds = %if.then20
  %12 = bitcast i8* %call14 to %struct.x509_object_st*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %for.body, %cleanup.loopexit.split.loop.exit, %cleanup.loopexit.split.loop.exit59, %cleanup.loopexit.split.loop.exit61, %if.end9, %entry, %if.then6
  %retval.0 = phi %struct.x509_object_st* [ %3, %if.then6 ], [ null, %entry ], [ null, %if.end9 ], [ %10, %cleanup.loopexit.split.loop.exit ], [ %11, %cleanup.loopexit.split.loop.exit59 ], [ %12, %cleanup.loopexit.split.loop.exit61 ], [ null, %for.body ], [ null, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.x509_object_st* %retval.0
}

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_match(%struct.X509_crl_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_CTX_get1_issuer(%struct.x509_st** nocapture noundef %issuer, %struct.x509_store_ctx_st* noundef %ctx, %struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %nmatch = alloca i32, align 4
  %call = tail call %struct.x509_object_st* @X509_OBJECT_new() #9
  %store1 = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %store1, align 8, !tbaa !41
  %1 = bitcast i32* %nmatch to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 0, i32* %nmatch, align 4, !tbaa !37
  %cmp = icmp eq %struct.x509_object_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.x509_st* null, %struct.x509_st** %issuer, align 8, !tbaa !33
  %call2 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %x) #8
  %call3 = tail call i32 @X509_STORE_CTX_get_by_subject(%struct.x509_store_ctx_st* noundef nonnull %ctx, i32 noundef 1, %struct.X509_name_st* noundef %call2, %struct.x509_object_st* noundef nonnull %call) #9
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %check_issued = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 9
  %2 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !50
  %data = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %call, i64 0, i32 1
  %x509 = bitcast %union.anon* %data to %struct.x509_st**
  %3 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  %call7 = tail call i32 %2(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, %struct.x509_st* noundef %3) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end17, label %if.then8

if.then8:                                         ; preds = %if.end6
  %4 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  %call11 = tail call i32 @ossl_x509_check_cert_time(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %4, i32 noundef -1) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.then8
  %5 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !36
  store %struct.x509_st* %5, %struct.x509_st** %issuer, align 8, !tbaa !33
  %type = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %call, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !34
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then8, %if.end6
  tail call void @X509_OBJECT_free(%struct.x509_object_st* noundef nonnull %call) #9
  %cmp18 = icmp eq %struct.x509_store_st* %0, null
  br i1 %cmp18, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end17
  %call21 = tail call i32 @X509_STORE_lock(%struct.x509_store_st* noundef nonnull %0) #9
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %0, i64 0, i32 1
  %6 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call22 = call fastcc i32 @x509_object_idx_cnt(%struct.stack_st_X509_OBJECT* noundef %6, i32 noundef 1, %struct.X509_name_st* noundef %call2, i32* noundef nonnull %nmatch) #9
  %cmp23.not = icmp ne i32 %call22, -1
  %7 = load i32, i32* %nmatch, align 4
  %cmp25124 = icmp sgt i32 %7, 0
  %or.cond = select i1 %cmp23.not, i1 %cmp25124, i1 false
  br i1 %or.cond, label %for.body, label %if.end59thread-pre-split

for.body:                                         ; preds = %if.end20, %for.inc
  %ret.0126 = phi i32 [ %ret.1, %for.inc ], [ 0, %if.end20 ]
  %i.0125 = phi i32 [ %inc, %for.inc ], [ %call22, %if.end20 ]
  %8 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !28
  %call27 = call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %8) #9
  %call28 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call27, i32 noundef %i.0125) #8
  %type29 = bitcast i8* %call28 to i32*
  %9 = load i32, i32* %type29, align 8, !tbaa !34
  %cmp30.not = icmp eq i32 %9, 1
  br i1 %cmp30.not, label %if.end32, label %if.end59thread-pre-split

if.end32:                                         ; preds = %for.body
  %10 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !50
  %data34 = getelementptr inbounds i8, i8* %call28, i64 8
  %x50935 = bitcast i8* %data34 to %struct.x509_st**
  %11 = load %struct.x509_st*, %struct.x509_st** %x50935, align 8, !tbaa !36
  %call36 = call i32 %10(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %x, %struct.x509_st* noundef %11) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.inc, label %if.then38

if.then38:                                        ; preds = %if.end32
  %12 = load %struct.x509_st*, %struct.x509_st** %x50935, align 8, !tbaa !36
  %call41 = call i32 @ossl_x509_check_cert_time(%struct.x509_store_ctx_st* noundef nonnull %ctx, %struct.x509_st* noundef %12, i32 noundef -1) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end46, label %if.then43

if.then43:                                        ; preds = %if.then38
  %x50935.le = bitcast i8* %data34 to %struct.x509_st**
  %13 = load %struct.x509_st*, %struct.x509_st** %x50935.le, align 8, !tbaa !36
  store %struct.x509_st* %13, %struct.x509_st** %issuer, align 8, !tbaa !33
  br label %if.end59

if.end46:                                         ; preds = %if.then38
  %14 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !33
  %cmp47 = icmp eq %struct.x509_st* %14, null
  br i1 %cmp47, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end46
  %15 = load %struct.x509_st*, %struct.x509_st** %x50935, align 8, !tbaa !36
  %call50 = call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %15) #8
  %16 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !33
  %call51 = call %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef %16) #8
  %call52 = call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef %call50, %struct.asn1_string_st* noundef %call51) #8
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %for.inc

if.then54:                                        ; preds = %lor.lhs.false, %if.end46
  %17 = load %struct.x509_st*, %struct.x509_st** %x50935, align 8, !tbaa !36
  store %struct.x509_st* %17, %struct.x509_st** %issuer, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.then54, %lor.lhs.false
  %ret.1 = phi i32 [ 1, %if.then54 ], [ 1, %lor.lhs.false ], [ %ret.0126, %if.end32 ]
  %inc = add nsw i32 %i.0125, 1
  %18 = load i32, i32* %nmatch, align 4, !tbaa !37
  %add = add nsw i32 %18, %call22
  %cmp25 = icmp slt i32 %inc, %add
  br i1 %cmp25, label %for.body, label %if.end59thread-pre-split, !llvm.loop !51

if.end59thread-pre-split:                         ; preds = %for.inc, %for.body, %if.end20
  %ret.2.ph = phi i32 [ 0, %if.end20 ], [ %ret.1, %for.inc ], [ %ret.0126, %for.body ]
  %.pr = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !33
  br label %if.end59

if.end59:                                         ; preds = %if.end59thread-pre-split, %if.then43
  %19 = phi %struct.x509_st* [ %.pr, %if.end59thread-pre-split ], [ %13, %if.then43 ]
  %ret.2 = phi i32 [ %ret.2.ph, %if.end59thread-pre-split ], [ 1, %if.then43 ]
  %cmp60.not = icmp eq %struct.x509_st* %19, null
  br i1 %cmp60.not, label %if.end64, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end59
  %call61 = call i32 @X509_up_ref(%struct.x509_st* noundef nonnull %19) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true
  store %struct.x509_st* null, %struct.x509_st** %issuer, align 8, !tbaa !33
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %land.lhs.true, %if.end59
  %ret.3 = phi i32 [ %ret.2, %land.lhs.true ], [ -1, %if.then63 ], [ %ret.2, %if.end59 ]
  %call65 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry, %if.end64, %if.then13, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.then13 ], [ %ret.3, %if.end64 ], [ -1, %entry ], [ 0, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  ret i32 %retval.0
}

declare %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_check_cert_time(%struct.x509_store_ctx_st* noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @X509_get0_notAfter(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_flags(%struct.x509_store_st* nocapture noundef readonly %ctx, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 3
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !31
  %call = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef %0, i64 noundef %flags) #8
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_depth(%struct.x509_store_st* nocapture noundef readonly %ctx, i32 noundef %depth) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 3
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !31
  tail call void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %depth) #8
  ret i32 1
}

declare void @X509_VERIFY_PARAM_set_depth(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_purpose(%struct.x509_store_st* nocapture noundef readonly %ctx, i32 noundef %purpose) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 3
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !31
  %call = tail call i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %purpose) #8
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set_purpose(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_trust(%struct.x509_store_st* nocapture noundef readonly %ctx, i32 noundef %trust) local_unnamed_addr #0 {
entry:
  %param = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 3
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !31
  %call = tail call i32 @X509_VERIFY_PARAM_set_trust(%struct.X509_VERIFY_PARAM_st* noundef %0, i32 noundef %trust) #8
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set_trust(%struct.X509_VERIFY_PARAM_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set1_param(%struct.x509_store_st* nocapture noundef readonly %ctx, %struct.X509_VERIFY_PARAM_st* noundef %param) local_unnamed_addr #0 {
entry:
  %param1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 3
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param1, align 8, !tbaa !31
  %call = tail call i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef %0, %struct.X509_VERIFY_PARAM_st* noundef %param) #8
  ret i32 %call
}

declare i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_VERIFY_PARAM_st* @X509_STORE_get0_param(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %param = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 3
  %0 = load %struct.X509_VERIFY_PARAM_st*, %struct.X509_VERIFY_PARAM_st** %param, align 8, !tbaa !31
  ret %struct.X509_VERIFY_PARAM_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_verify(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*)* noundef %verify) local_unnamed_addr #3 {
entry:
  %verify1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 4
  store i32 (%struct.x509_store_ctx_st*)* %verify, i32 (%struct.x509_store_ctx_st*)** %verify1, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_get_verify(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %verify = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 4
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %verify, align 8, !tbaa !52
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_verify_cb(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (i32, %struct.x509_store_ctx_st*)* noundef %verify_cb) local_unnamed_addr #3 {
entry:
  %verify_cb1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 5
  store i32 (i32, %struct.x509_store_ctx_st*)* %verify_cb, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb1, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (i32, %struct.x509_store_ctx_st*)* @X509_STORE_get_verify_cb(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %verify_cb = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 5
  %0 = load i32 (i32, %struct.x509_store_ctx_st*)*, i32 (i32, %struct.x509_store_ctx_st*)** %verify_cb, align 8, !tbaa !53
  ret i32 (i32, %struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_get_issuer(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* noundef %get_issuer) local_unnamed_addr #3 {
entry:
  %get_issuer1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 6
  store i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* %get_issuer, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer1, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* @X509_STORE_get_get_issuer(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %get_issuer = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 6
  %0 = load i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)*, i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)** %get_issuer, align 8, !tbaa !54
  ret i32 (%struct.x509_st**, %struct.x509_store_ctx_st*, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_check_issued(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* noundef %check_issued) local_unnamed_addr #3 {
entry:
  %check_issued1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 7
  store i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* %check_issued, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued1, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* @X509_STORE_get_check_issued(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %check_issued = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 7
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)** %check_issued, align 8, !tbaa !55
  ret i32 (%struct.x509_store_ctx_st*, %struct.x509_st*, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_check_revocation(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*)* noundef %check_revocation) local_unnamed_addr #3 {
entry:
  %check_revocation1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 8
  store i32 (%struct.x509_store_ctx_st*)* %check_revocation, i32 (%struct.x509_store_ctx_st*)** %check_revocation1, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_get_check_revocation(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %check_revocation = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 8
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_revocation, align 8, !tbaa !56
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_get_crl(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* noundef %get_crl) local_unnamed_addr #3 {
entry:
  %get_crl1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 9
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* %get_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %get_crl1, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* @X509_STORE_get_get_crl(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %get_crl = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 9
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)** %get_crl, align 8, !tbaa !57
  ret i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st**, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_check_crl(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* noundef %check_crl) local_unnamed_addr #3 {
entry:
  %check_crl1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 10
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* %check_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl1, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* @X509_STORE_get_check_crl(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %check_crl = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 10
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)** %check_crl, align 8, !tbaa !58
  ret i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_cert_crl(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* noundef %cert_crl) local_unnamed_addr #3 {
entry:
  %cert_crl1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 11
  store i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* %cert_crl, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl1, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* @X509_STORE_get_cert_crl(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cert_crl = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 11
  %0 = load i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)*, i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)** %cert_crl, align 8, !tbaa !59
  ret i32 (%struct.x509_store_ctx_st*, %struct.X509_crl_st*, %struct.x509_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_check_policy(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*)* noundef %check_policy) local_unnamed_addr #3 {
entry:
  %check_policy1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 12
  store i32 (%struct.x509_store_ctx_st*)* %check_policy, i32 (%struct.x509_store_ctx_st*)** %check_policy1, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_get_check_policy(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %check_policy = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 12
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %check_policy, align 8, !tbaa !60
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_lookup_certs(%struct.x509_store_st* nocapture noundef writeonly %ctx, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* noundef %lookup_certs) local_unnamed_addr #3 {
entry:
  %lookup_certs1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 13
  store %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %lookup_certs, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs1, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_get_lookup_certs(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %lookup_certs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 13
  %0 = load %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_certs, align 8, !tbaa !61
  ret %struct.stack_st_X509* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_lookup_crls(%struct.x509_store_st* nocapture noundef writeonly %ctx, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* noundef %lookup_crls) local_unnamed_addr #3 {
entry:
  %lookup_crls1 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 14
  store %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %lookup_crls, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls1, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* @X509_STORE_get_lookup_crls(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %lookup_crls = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 14
  %0 = load %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)*, %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)** %lookup_crls, align 8, !tbaa !62
  ret %struct.stack_st_X509_CRL* (%struct.x509_store_ctx_st*, %struct.X509_name_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @X509_STORE_set_cleanup(%struct.x509_store_st* nocapture noundef writeonly %ctx, i32 (%struct.x509_store_ctx_st*)* noundef %ctx_cleanup) local_unnamed_addr #3 {
entry:
  %cleanup = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 15
  store i32 (%struct.x509_store_ctx_st*)* %ctx_cleanup, i32 (%struct.x509_store_ctx_st*)** %cleanup, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.x509_store_ctx_st*)* @X509_STORE_get_cleanup(%struct.x509_store_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cleanup = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 15
  %0 = load i32 (%struct.x509_store_ctx_st*)*, i32 (%struct.x509_store_ctx_st*)** %cleanup, align 8, !tbaa !63
  ret i32 (%struct.x509_store_ctx_st*)* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @X509_STORE_set_ex_data(%struct.x509_store_st* noundef %ctx, i32 noundef %idx, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 16
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %data) #8
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @X509_STORE_get_ex_data(%struct.x509_store_st* noundef %ctx, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %ctx, i64 0, i32 16
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #8
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_store_st* @X509_STORE_CTX_get0_store(%struct.x509_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %store = getelementptr inbounds %struct.x509_store_ctx_st, %struct.x509_store_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.x509_store_st*, %struct.x509_store_st** %store, align 8, !tbaa !41
  ret %struct.x509_store_st* %0
}

declare i32 @X509_subject_name_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @X509_CRL_cmp(%struct.X509_crl_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_find_all(%struct.stack_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"x509_lookup_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!11, !9, i64 8}
!11 = !{!"x509_lookup_method_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!12 = !{!11, !9, i64 16}
!13 = !{!14, !9, i64 152}
!14 = !{!"x509_store_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !15, i64 128, !7, i64 144, !9, i64 152}
!15 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!16 = !{!11, !9, i64 24}
!17 = !{!11, !9, i64 32}
!18 = !{!11, !9, i64 88}
!19 = !{!11, !9, i64 40}
!20 = !{!5, !6, i64 4}
!21 = !{!11, !9, i64 48}
!22 = !{!11, !9, i64 80}
!23 = !{!11, !9, i64 56}
!24 = !{!11, !9, i64 64}
!25 = !{!11, !9, i64 72}
!26 = !{!5, !9, i64 16}
!27 = !{!5, !9, i64 24}
!28 = !{!14, !9, i64 8}
!29 = !{!14, !6, i64 0}
!30 = !{!14, !9, i64 16}
!31 = !{!14, !9, i64 24}
!32 = !{!14, !7, i64 144}
!33 = !{!9, !9, i64 0}
!34 = !{!35, !7, i64 0}
!35 = !{!"x509_object_st", !7, i64 0, !7, i64 8}
!36 = !{!7, !7, i64 0}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!42, !9, i64 0}
!42 = !{!"x509_store_ctx_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !6, i64 144, !6, i64 148, !9, i64 152, !9, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !6, i64 208, !6, i64 212, !9, i64 216, !15, i64 224, !9, i64 240, !6, i64 248, !9, i64 256, !9, i64 264}
!43 = distinct !{!43, !39}
!44 = !{!42, !9, i64 256}
!45 = !{!42, !9, i64 264}
!46 = distinct !{!46, !39}
!47 = distinct !{!47, !39}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39}
!50 = !{!42, !9, i64 72}
!51 = distinct !{!51, !39}
!52 = !{!14, !9, i64 32}
!53 = !{!14, !9, i64 40}
!54 = !{!14, !9, i64 48}
!55 = !{!14, !9, i64 56}
!56 = !{!14, !9, i64 64}
!57 = !{!14, !9, i64 72}
!58 = !{!14, !9, i64 80}
!59 = !{!14, !9, i64 88}
!60 = !{!14, !9, i64 96}
!61 = !{!14, !9, i64 104}
!62 = !{!14, !9, i64 112}
!63 = !{!14, !9, i64 120}
