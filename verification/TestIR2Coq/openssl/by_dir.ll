; ModuleID = 'crypto/x509/by_dir.c'
source_filename = "crypto/x509/by_dir.c"
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
%struct.stack_st_BY_DIR_ENTRY = type opaque
%struct.lookup_dir_st = type { %struct.buf_mem_st*, %struct.stack_st_BY_DIR_ENTRY*, i8* }
%union.anon.3 = type { %struct.x509_st }
%struct.lookup_dir_hashes_st = type { i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.lookup_dir_entry_st = type { i8*, i32, %struct.stack_st_BY_DIR_HASH* }
%struct.stack_st_BY_DIR_HASH = type opaque
%struct.stack_st = type opaque

@x509_dir_lookup = internal global %struct.x509_lookup_method_st { i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 (%struct.x509_lookup_st*)* @new_dir, void (%struct.x509_lookup_st*)* @free_dir, i32 (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**)* @dir_ctrl, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*)* @get_cert_by_subject, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, i8*, i32, %struct.x509_object_st*)* null, i32 (%struct.x509_lookup_st*, i32, %struct.X509_name_st*, %struct.x509_object_st*, %struct.ossl_lib_ctx_st*, i8*)* @get_cert_by_subject_ex, i32 (%struct.x509_lookup_st*, i32, i8*, i64, i8**, %struct.ossl_lib_ctx_st*, i8*)* null }, align 8
@.str = private unnamed_addr constant [37 x i8] c"Load certs from files in a directory\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/x509/by_dir.c\00", align 1
@__func__.new_dir = private unnamed_addr constant [8 x i8] c"new_dir\00", align 1
@__func__.dir_ctrl = private unnamed_addr constant [9 x i8] c"dir_ctrl\00", align 1
@__func__.add_cert_dir = private unnamed_addr constant [13 x i8] c"add_cert_dir\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__func__.get_cert_by_subject_ex = private unnamed_addr constant [23 x i8] c"get_cert_by_subject_ex\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s%c%08lx.%s%d\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.x509_lookup_method_st* @X509_LOOKUP_hash_dir() local_unnamed_addr #0 {
entry:
  ret %struct.x509_lookup_method_st* @x509_dir_lookup
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @new_dir(%struct.x509_lookup_st* nocapture noundef writeonly %lu) #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 110) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.new_dir, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.buf_mem_st* @BUF_MEM_new() #7
  %buffer = bitcast i8* %call to %struct.buf_mem_st**
  store %struct.buf_mem_st* %call1, %struct.buf_mem_st** %buffer, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.buf_mem_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %dirs = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %dirs to %struct.stack_st_BY_DIR_ENTRY**
  store %struct.stack_st_BY_DIR_ENTRY* null, %struct.stack_st_BY_DIR_ENTRY** %0, align 8, !tbaa !9
  %call5 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %lock = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %lock to i8**
  store i8* %call5, i8** %1, align 8, !tbaa !10
  %cmp7 = icmp eq i8* %call5, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buffer, align 8, !tbaa !4
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %2) #7
  br label %err

if.end10:                                         ; preds = %if.end4
  %method_data = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %lu, i64 0, i32 3
  store i8* %call, i8** %method_data, align 8, !tbaa !11
  br label %cleanup

err:                                              ; preds = %if.end, %if.then8
  %.sink = phi i32 [ 125, %if.then8 ], [ 118, %if.end ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.new_dir, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 132) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 1, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_dir(%struct.x509_lookup_st* nocapture noundef readonly %lu) #1 {
entry:
  %method_data = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %lu, i64 0, i32 3
  %0 = load i8*, i8** %method_data, align 8, !tbaa !11
  %dirs = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %dirs to %struct.stack_st_BY_DIR_ENTRY**
  %2 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %1, align 8, !tbaa !9
  tail call fastcc void @sk_BY_DIR_ENTRY_pop_free(%struct.stack_st_BY_DIR_ENTRY* noundef %2) #8
  %buffer = bitcast i8* %0 to %struct.buf_mem_st**
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buffer, align 8, !tbaa !4
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %3) #7
  %lock = getelementptr inbounds i8, i8* %0, i64 16
  %4 = bitcast i8* %lock to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !10
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %5) #7
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 165) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dir_ctrl(%struct.x509_lookup_st* nocapture noundef readonly %ctx, i32 noundef %cmd, i8* noundef %argp, i64 noundef %argl, i8** nocapture noundef readnone %retp) #1 {
entry:
  %method_data = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %ctx, i64 0, i32 3
  %0 = bitcast i8** %method_data to %struct.lookup_dir_st**
  %1 = load %struct.lookup_dir_st*, %struct.lookup_dir_st** %0, align 8, !tbaa !11
  %cond = icmp eq i32 %cmd, 2
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %cmp = icmp eq i64 %argl, 3
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %sw.bb
  %call = tail call i8* @X509_get_default_cert_dir_env() #7
  %call1 = tail call i8* @ossl_safe_getenv(i8* noundef %call) #7
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = tail call fastcc i32 @add_cert_dir(%struct.lookup_dir_st* noundef %1, i8* noundef nonnull %call1, i32 noundef 1) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call4 = tail call i8* @X509_get_default_cert_dir() #7
  %call5 = tail call fastcc i32 @add_cert_dir(%struct.lookup_dir_st* noundef %1, i8* noundef %call4, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.else ]
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.then7, label %sw.epilog

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.dir_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 103, i8* noundef null) #7
  br label %sw.epilog

if.else9:                                         ; preds = %sw.bb
  %conv = trunc i64 %argl to i32
  %call10 = tail call fastcc i32 @add_cert_dir(%struct.lookup_dir_st* noundef %1, i8* noundef %argp, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.then7, %if.else9, %entry
  %ret.1 = phi i32 [ %call10, %if.else9 ], [ 0, %entry ], [ 0, %if.then7 ], [ %ret.0, %if.end ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_cert_by_subject(%struct.x509_lookup_st* noundef %xl, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret) #1 {
entry:
  %call = tail call i32 @get_cert_by_subject_ex(%struct.x509_lookup_st* noundef %xl, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_cert_by_subject_ex(%struct.x509_lookup_st* noundef %xl, i32 noundef %type, %struct.X509_name_st* noundef %name, %struct.x509_object_st* noundef %ret, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #1 {
entry:
  %data = alloca %union.anon.3, align 8
  %i = alloca i32, align 4
  %stmp = alloca %struct.x509_object_st, align 8
  %htmp = alloca %struct.lookup_dir_hashes_st, align 8
  %st = alloca %struct.stat, align 8
  %0 = bitcast %union.anon.3* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 384, i8* nonnull %0) #9
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = bitcast %struct.x509_object_st* %stmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %cmp = icmp eq %struct.X509_name_st* %name, null
  br i1 %cmp, label %cleanup167, label %if.end

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 0
  store i32 %type, i32* %type1, align 8, !tbaa !14
  %cmp2 = icmp eq i32 %type, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %st_x509 = getelementptr inbounds %union.anon.3, %union.anon.3* %data, i64 0, i32 0
  %subject = getelementptr inbounds %union.anon.3, %union.anon.3* %data, i64 0, i32 0, i32 0, i32 5
  store %struct.X509_name_st* %name, %struct.X509_name_st** %subject, align 8, !tbaa !16
  %data5 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 1
  %x509 = bitcast %union.anon.2* %data5 to %struct.x509_st**
  store %struct.x509_st* %st_x509, %struct.x509_st** %x509, align 8, !tbaa !16
  br label %if.end14

if.else:                                          ; preds = %if.end
  %cmp6 = icmp eq i32 %type, 2
  br i1 %cmp6, label %if.then7, label %if.else12

if.then7:                                         ; preds = %if.else
  %issuer = getelementptr inbounds %union.anon.3, %union.anon.3* %data, i64 0, i32 0, i32 0, i32 1, i32 3
  %3 = bitcast i64* %issuer to %struct.X509_name_st**
  store %struct.X509_name_st* %name, %struct.X509_name_st** %3, align 8, !tbaa !16
  %data10 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %stmp, i64 0, i32 1
  %4 = bitcast %union.anon.2* %data10 to %union.anon.3**
  store %union.anon.3* %data, %union.anon.3** %4, align 8, !tbaa !16
  br label %if.end14

if.else12:                                        ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_cert_by_subject_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 112, i8* noundef null) #7
  br label %finish

if.end14:                                         ; preds = %if.then7, %if.then3
  %postfix.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %if.then3 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %if.then7 ]
  %call = call %struct.buf_mem_st* @BUF_MEM_new() #7
  %cmp15 = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_cert_by_subject_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 524295, i8* noundef null) #7
  br label %finish

if.end17:                                         ; preds = %if.end14
  %method_data = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %xl, i64 0, i32 3
  %5 = bitcast i8** %method_data to %struct.lookup_dir_st**
  %6 = load %struct.lookup_dir_st*, %struct.lookup_dir_st** %5, align 8, !tbaa !11
  %call18 = call i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef nonnull %name, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32* noundef nonnull %i) #7
  %7 = load i32, i32* %i, align 4, !tbaa !17
  %cmp19 = icmp eq i32 %7, 0
  br i1 %cmp19, label %finish, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  %dirs = getelementptr inbounds %struct.lookup_dir_st, %struct.lookup_dir_st* %6, i64 0, i32 1
  store i32 0, i32* %i, align 4, !tbaa !17
  %8 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call22273 = call fastcc i32 @sk_BY_DIR_ENTRY_num(%struct.stack_st_BY_DIR_ENTRY* noundef %8) #8
  %cmp23274 = icmp sgt i32 %call22273, 0
  br i1 %cmp23274, label %for.body.lr.ph, label %finish

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %9 = bitcast %struct.lookup_dir_hashes_st* %htmp to i8*
  %cmp35 = icmp eq i32 %type, 2
  %hash = getelementptr inbounds %struct.lookup_dir_hashes_st, %struct.lookup_dir_hashes_st* %htmp, i64 0, i32 0
  %lock = getelementptr inbounds %struct.lookup_dir_st, %struct.lookup_dir_st* %6, i64 0, i32 2
  %data57 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 2
  %10 = bitcast %struct.stat* %st to i8*
  %store_ctx = getelementptr inbounds %struct.x509_lookup_st, %struct.x509_lookup_st* %xl, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #9
  %11 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %call25 = call fastcc %struct.lookup_dir_entry_st* @sk_BY_DIR_ENTRY_value(%struct.stack_st_BY_DIR_ENTRY* noundef %11, i32 noundef %12) #8
  %dir = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %call25, i64 0, i32 0
  %13 = load i8*, i8** %dir, align 8, !tbaa !18
  %call26 = call i64 @strlen(i8* noundef %13) #10
  %conv = shl i64 %call26, 32
  %sext = add i64 %conv, 73014444032
  %conv31 = ashr exact i64 %sext, 32
  %call32 = call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %conv31) #7
  %tobool.not = icmp eq i64 %call32, 0
  br i1 %tobool.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_cert_by_subject_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup159.thread

if.end34:                                         ; preds = %for.body
  br i1 %cmp35, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end34
  %hashes = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %call25, i64 0, i32 2
  %14 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes, align 8, !tbaa !20
  %tobool37.not = icmp eq %struct.stack_st_BY_DIR_HASH* %14, null
  br i1 %tobool37.not, label %if.end55, label %if.then38

if.then38:                                        ; preds = %land.lhs.true
  store i64 %call18, i64* %hash, align 8, !tbaa !21
  %15 = load i8*, i8** %lock, align 8, !tbaa !10
  %call39 = call i32 @CRYPTO_THREAD_read_lock(i8* noundef %15) #7
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup159.thread, label %if.end42

if.end42:                                         ; preds = %if.then38
  %16 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes, align 8, !tbaa !20
  %call44 = call fastcc i32 @sk_BY_DIR_HASH_find(%struct.stack_st_BY_DIR_HASH* noundef %16, %struct.lookup_dir_hashes_st* noundef nonnull %htmp) #8
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end42
  %17 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes, align 8, !tbaa !20
  %call49 = call fastcc %struct.lookup_dir_hashes_st* @sk_BY_DIR_HASH_value(%struct.stack_st_BY_DIR_HASH* noundef %17, i32 noundef %call44) #8
  %suffix = getelementptr inbounds %struct.lookup_dir_hashes_st, %struct.lookup_dir_hashes_st* %call49, i64 0, i32 1
  %18 = load i32, i32* %suffix, align 8, !tbaa !24
  br label %if.end51

if.end51:                                         ; preds = %if.end42, %if.then47
  %k.0 = phi i32 [ %18, %if.then47 ], [ 0, %if.end42 ]
  %hent.0 = phi %struct.lookup_dir_hashes_st* [ %call49, %if.then47 ], [ null, %if.end42 ]
  %19 = load i8*, i8** %lock, align 8, !tbaa !10
  %call53 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %19) #7
  br label %if.end55

if.end55:                                         ; preds = %if.end34, %land.lhs.true, %if.end51
  %k.1 = phi i32 [ %k.0, %if.end51 ], [ 0, %land.lhs.true ], [ 0, %if.end34 ]
  %hent.1 = phi %struct.lookup_dir_hashes_st* [ %hent.0, %if.end51 ], [ null, %land.lhs.true ], [ null, %if.end34 ]
  %dir_type81 = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %call25, i64 0, i32 1
  %20 = load i8*, i8** %data57, align 8, !tbaa !25
  %21 = load i64, i64* %max, align 8, !tbaa !27
  %22 = load i8*, i8** %dir, align 8, !tbaa !18
  %call60288 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %20, i64 noundef %21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef %22, i32 noundef 47, i64 noundef %call18, i8* noundef %postfix.0, i32 noundef %k.1) #7
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #9
  %23 = load i8*, i8** %data57, align 8, !tbaa !25
  %call62289 = call i32 @stat(i8* noundef %23, %struct.stat* noundef %st) #7
  %cmp63290 = icmp slt i32 %call62289, 0
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #9
  br i1 %cmp63290, label %for.end, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end55, %cleanup89
  %k.2291 = phi i32 [ %inc, %cleanup89 ], [ %k.1, %if.end55 ]
  br i1 %cmp2, label %if.then69, label %if.else76

if.then69:                                        ; preds = %cleanup.cont
  %24 = load i8*, i8** %data57, align 8, !tbaa !25
  %25 = load i32, i32* %dir_type81, align 8, !tbaa !28
  %call71 = call i32 @X509_load_cert_file_ex(%struct.x509_lookup_st* noundef %xl, i8* noundef %24, i32 noundef %25, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %for.end, label %cleanup89

if.else76:                                        ; preds = %cleanup.cont
  br i1 %cmp35, label %if.then79, label %cleanup89

if.then79:                                        ; preds = %if.else76
  %26 = load i8*, i8** %data57, align 8, !tbaa !25
  %27 = load i32, i32* %dir_type81, align 8, !tbaa !28
  %call82 = call i32 @X509_load_crl_file(%struct.x509_lookup_st* noundef %xl, i8* noundef %26, i32 noundef %27) #7
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %for.end, label %cleanup89

cleanup89:                                        ; preds = %if.then69, %if.then79, %if.else76
  %inc = add nsw i32 %k.2291, 1
  %28 = load i8*, i8** %data57, align 8, !tbaa !25
  %29 = load i64, i64* %max, align 8, !tbaa !27
  %30 = load i8*, i8** %dir, align 8, !tbaa !18
  %call60 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %28, i64 noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef %30, i32 noundef 47, i64 noundef %call18, i8* noundef %postfix.0, i32 noundef %inc) #7
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %10) #9
  %31 = load i8*, i8** %data57, align 8, !tbaa !25
  %call62 = call i32 @stat(i8* noundef %31, %struct.stat* noundef %st) #7
  %cmp63 = icmp slt i32 %call62, 0
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %10) #9
  br i1 %cmp63, label %for.end, label %cleanup.cont

for.end:                                          ; preds = %if.then69, %if.then79, %cleanup89, %if.end55
  %k.2.lcssa = phi i32 [ %k.1, %if.end55 ], [ %k.2291, %if.then69 ], [ %k.2291, %if.then79 ], [ %inc, %cleanup89 ]
  %32 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !29
  %call92 = call i32 @X509_STORE_lock(%struct.x509_store_st* noundef %32) #7
  %33 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !29
  %objs = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %33, i64 0, i32 1
  %34 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs, align 8, !tbaa !30
  %call94 = call fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %34) #8
  %call96 = call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %call94, i8* noundef nonnull %2) #7
  %35 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !29
  %objs98 = getelementptr inbounds %struct.x509_store_st, %struct.x509_store_st* %35, i64 0, i32 1
  %36 = load %struct.stack_st_X509_OBJECT*, %struct.stack_st_X509_OBJECT** %objs98, align 8, !tbaa !30
  %call99 = call fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef %36) #8
  %call100 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call99, i32 noundef %call96) #7
  %37 = load %struct.x509_store_st*, %struct.x509_store_st** %store_ctx, align 8, !tbaa !29
  %call102 = call i32 @X509_STORE_unlock(%struct.x509_store_st* noundef %37) #7
  br i1 %cmp35, label %if.then105, label %if.end149

if.then105:                                       ; preds = %for.end
  %38 = load i8*, i8** %lock, align 8, !tbaa !10
  %call107 = call i32 @CRYPTO_THREAD_write_lock(i8* noundef %38) #7
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup159.thread, label %if.end110

if.end110:                                        ; preds = %if.then105
  %cmp111 = icmp eq %struct.lookup_dir_hashes_st* %hent.1, null
  br i1 %cmp111, label %if.end119, label %if.else139

if.end119:                                        ; preds = %if.end110
  store i64 %call18, i64* %hash, align 8, !tbaa !21
  %hashes115 = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %call25, i64 0, i32 2
  %39 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes115, align 8, !tbaa !20
  %call116 = call fastcc i32 @sk_BY_DIR_HASH_find(%struct.stack_st_BY_DIR_HASH* noundef %39, %struct.lookup_dir_hashes_st* noundef nonnull %htmp) #8
  %40 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes115, align 8, !tbaa !20
  %call118 = call fastcc %struct.lookup_dir_hashes_st* @sk_BY_DIR_HASH_value(%struct.stack_st_BY_DIR_HASH* noundef %40, i32 noundef %call116) #8
  %cmp120 = icmp eq %struct.lookup_dir_hashes_st* %call118, null
  br i1 %cmp120, label %if.then122, label %if.else139

if.then122:                                       ; preds = %if.end119
  %call123 = call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 371) #7
  %cmp124 = icmp eq i8* %call123, null
  br i1 %cmp124, label %if.then126, label %if.end129

if.then126:                                       ; preds = %if.then122
  %41 = load i8*, i8** %lock, align 8, !tbaa !10
  %call128 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %41) #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_cert_by_subject_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup159.thread

if.end129:                                        ; preds = %if.then122
  %42 = bitcast i8* %call123 to %struct.lookup_dir_hashes_st*
  %hash130 = bitcast i8* %call123 to i64*
  store i64 %call18, i64* %hash130, align 8, !tbaa !21
  %suffix131 = getelementptr inbounds i8, i8* %call123, i64 8
  %43 = bitcast i8* %suffix131 to i32*
  store i32 %k.2.lcssa, i32* %43, align 8, !tbaa !24
  %44 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes115, align 8, !tbaa !20
  %call133 = call fastcc i32 @sk_BY_DIR_HASH_push(%struct.stack_st_BY_DIR_HASH* noundef %44, %struct.lookup_dir_hashes_st* noundef nonnull %42) #8
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end146

if.then135:                                       ; preds = %if.end129
  %45 = load i8*, i8** %lock, align 8, !tbaa !10
  %call137 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %45) #7
  call void @CRYPTO_free(i8* noundef nonnull %call123, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 382) #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_cert_by_subject_ex, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup159.thread

if.else139:                                       ; preds = %if.end110, %if.end119
  %hent.2261 = phi %struct.lookup_dir_hashes_st* [ %call118, %if.end119 ], [ %hent.1, %if.end110 ]
  %suffix140 = getelementptr inbounds %struct.lookup_dir_hashes_st, %struct.lookup_dir_hashes_st* %hent.2261, i64 0, i32 1
  %46 = load i32, i32* %suffix140, align 8, !tbaa !24
  %cmp141 = icmp slt i32 %46, %k.2.lcssa
  br i1 %cmp141, label %if.then143, label %if.end146

if.then143:                                       ; preds = %if.else139
  store i32 %k.2.lcssa, i32* %suffix140, align 8, !tbaa !24
  br label %if.end146

if.end146:                                        ; preds = %if.else139, %if.then143, %if.end129
  %47 = load i8*, i8** %lock, align 8, !tbaa !10
  %call148 = call i32 @CRYPTO_THREAD_unlock(i8* noundef %47) #7
  br label %if.end149

if.end149:                                        ; preds = %if.end146, %for.end
  %cmp150.not = icmp eq i8* %call100, null
  br i1 %cmp150.not, label %for.inc, label %if.then152

if.then152:                                       ; preds = %if.end149
  %type153 = bitcast i8* %call100 to i32*
  %48 = load i32, i32* %type153, align 8, !tbaa !14
  %type154 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %ret, i64 0, i32 0
  store i32 %48, i32* %type154, align 8, !tbaa !14
  %data155 = getelementptr inbounds %struct.x509_object_st, %struct.x509_object_st* %ret, i64 0, i32 1
  %49 = bitcast %union.anon.2* %data155 to i8*
  %data156 = getelementptr inbounds i8, i8* %call100, i64 8
  %call157 = call i8* @memcpy(i8* noundef nonnull %49, i8* noundef nonnull %data156, i64 noundef 8) #7
  call void @ERR_clear_error() #7
  br label %cleanup159.thread

cleanup159.thread:                                ; preds = %if.then38, %if.then105, %if.then126, %if.then152, %if.then135, %if.then33
  %ok.1.ph = phi i32 [ 0, %if.then33 ], [ 0, %if.then135 ], [ 1, %if.then152 ], [ 0, %if.then126 ], [ 0, %if.then105 ], [ 0, %if.then38 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #9
  br label %finish

for.inc:                                          ; preds = %if.end149
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #9
  %50 = load i32, i32* %i, align 4, !tbaa !17
  %inc165 = add nsw i32 %50, 1
  store i32 %inc165, i32* %i, align 4, !tbaa !17
  %51 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call22 = call fastcc i32 @sk_BY_DIR_ENTRY_num(%struct.stack_st_BY_DIR_ENTRY* noundef %51) #8
  %cmp23 = icmp slt i32 %inc165, %call22
  br i1 %cmp23, label %for.body, label %finish, !llvm.loop !33

finish:                                           ; preds = %for.inc, %for.cond.preheader, %cleanup159.thread, %if.end17, %if.then16, %if.else12
  %b.0 = phi %struct.buf_mem_st* [ null, %if.then16 ], [ %call, %if.end17 ], [ null, %if.else12 ], [ %call, %cleanup159.thread ], [ %call, %for.cond.preheader ], [ %call, %for.inc ]
  %ok.2 = phi i32 [ 0, %if.then16 ], [ 0, %if.end17 ], [ 0, %if.else12 ], [ %ok.1.ph, %cleanup159.thread ], [ 0, %for.cond.preheader ], [ 0, %for.inc ]
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %b.0) #7
  br label %cleanup167

cleanup167:                                       ; preds = %entry, %finish
  %retval.0 = phi i32 [ %ok.2, %finish ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 384, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #3

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #3

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BY_DIR_ENTRY_pop_free(%struct.stack_st_BY_DIR_ENTRY* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_ENTRY* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.lookup_dir_entry_st*)* @by_dir_entry_free to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @by_dir_entry_free(%struct.lookup_dir_entry_st* noundef %ent) #1 {
entry:
  %dir = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %ent, i64 0, i32 0
  %0 = load i8*, i8** %dir, align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 153) #7
  %hashes = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %ent, i64 0, i32 2
  %1 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %hashes, align 8, !tbaa !20
  tail call fastcc void @sk_BY_DIR_HASH_pop_free(%struct.stack_st_BY_DIR_HASH* noundef %1) #8
  %2 = bitcast %struct.lookup_dir_entry_st* %ent to i8*
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 155) #7
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #3

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_BY_DIR_HASH_pop_free(%struct.stack_st_BY_DIR_HASH* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_HASH* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.lookup_dir_hashes_st*)* @by_dir_hash_free to void (i8*)*)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @by_dir_hash_free(%struct.lookup_dir_hashes_st* noundef %hash) #1 {
entry:
  %0 = bitcast %struct.lookup_dir_hashes_st* %hash to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 138) #7
  ret void
}

declare i8* @ossl_safe_getenv(i8* noundef) local_unnamed_addr #3

declare i8* @X509_get_default_cert_dir_env() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @add_cert_dir(%struct.lookup_dir_st* nocapture noundef %ctx, i8* noundef %dir, i32 noundef %type) unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %dir, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %dir, align 1, !tbaa !16
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %if.then, label %do.body.preheader

do.body.preheader:                                ; preds = %lor.lhs.false
  %dirs = getelementptr inbounds %struct.lookup_dir_st, %struct.lookup_dir_st* %ctx, i64 0, i32 1
  br label %do.body

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.add_cert_dir, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 113, i8* noundef null) #7
  br label %cleanup71

do.bodythread-pre-split:                          ; preds = %do.cond
  %.pr = load i8, i8* %incdec.ptr, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.bodythread-pre-split
  %1 = phi i8 [ %.pr, %do.bodythread-pre-split ], [ %0, %do.body.preheader ]
  %s.0 = phi i8* [ %s.1, %do.bodythread-pre-split ], [ %dir, %do.body.preheader ]
  %p.0 = phi i8* [ %incdec.ptr, %do.bodythread-pre-split ], [ %dir, %do.body.preheader ]
  switch i8 %1, label %do.cond [
    i8 58, label %if.then10
    i8 0, label %if.then10
  ]

if.then10:                                        ; preds = %do.body, %do.body
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp11 = icmp eq i64 %sub.ptr.sub, 0
  br i1 %cmp11, label %do.cond, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then10
  %2 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call116 = tail call fastcc i32 @sk_BY_DIR_ENTRY_num(%struct.stack_st_BY_DIR_ENTRY* noundef %2) #8
  %cmp15117 = icmp sgt i32 %call116, 0
  br i1 %cmp15117, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %j.0118 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call18 = tail call fastcc %struct.lookup_dir_entry_st* @sk_BY_DIR_ENTRY_value(%struct.stack_st_BY_DIR_ENTRY* noundef %3, i32 noundef %j.0118) #8
  %dir19 = getelementptr inbounds %struct.lookup_dir_entry_st, %struct.lookup_dir_entry_st* %call18, i64 0, i32 0
  %4 = load i8*, i8** %dir19, align 8, !tbaa !18
  %call20 = tail call i64 @strlen(i8* noundef %4) #10
  %cmp21 = icmp eq i64 %call20, %sub.ptr.sub
  br i1 %cmp21, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call24 = tail call i32 @strncmp(i8* noundef %4, i8* noundef %s.0, i64 noundef %sub.ptr.sub) #10
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %j.0118, 1
  %5 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call = tail call fastcc i32 @sk_BY_DIR_ENTRY_num(%struct.stack_st_BY_DIR_ENTRY* noundef %5) #8
  %cmp15 = icmp slt i32 %inc, %call
  br i1 %cmp15, label %for.body, label %for.end, !llvm.loop !35

for.end:                                          ; preds = %for.inc, %land.lhs.true, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %j.0118, %land.lhs.true ], [ %inc, %for.inc ]
  %6 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call30 = tail call fastcc i32 @sk_BY_DIR_ENTRY_num(%struct.stack_st_BY_DIR_ENTRY* noundef %6) #8
  %cmp31 = icmp slt i32 %j.0.lcssa, %call30
  br i1 %cmp31, label %do.cond, label %if.end34

if.end34:                                         ; preds = %for.end
  %7 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %cmp36 = icmp eq %struct.stack_st_BY_DIR_ENTRY* %7, null
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end34
  %call39 = tail call fastcc %struct.stack_st_BY_DIR_ENTRY* @sk_BY_DIR_ENTRY_new_null() #8
  store %struct.stack_st_BY_DIR_ENTRY* %call39, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %tobool.not = icmp eq %struct.stack_st_BY_DIR_ENTRY* %call39, null
  br i1 %tobool.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then38
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.add_cert_dir, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup71

if.end44:                                         ; preds = %if.then38, %if.end34
  %call45 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 204) #7
  %8 = bitcast i8* %call45 to %struct.lookup_dir_entry_st*
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.add_cert_dir, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup71

if.end49:                                         ; preds = %if.end44
  %dir_type = getelementptr inbounds i8, i8* %call45, i64 8
  %9 = bitcast i8* %dir_type to i32*
  store i32 %type, i32* %9, align 8, !tbaa !28
  %call50 = tail call fastcc %struct.stack_st_BY_DIR_HASH* @sk_BY_DIR_HASH_new() #8
  %hashes = getelementptr inbounds i8, i8* %call45, i64 16
  %10 = bitcast i8* %hashes to %struct.stack_st_BY_DIR_HASH**
  store %struct.stack_st_BY_DIR_HASH* %call50, %struct.stack_st_BY_DIR_HASH** %10, align 8, !tbaa !20
  %call51 = tail call i8* @CRYPTO_strndup(i8* noundef %s.0, i64 noundef %sub.ptr.sub, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 211) #7
  %dir52 = bitcast i8* %call45 to i8**
  store i8* %call51, i8** %dir52, align 8, !tbaa !18
  %cmp54 = icmp eq i8* %call51, null
  br i1 %cmp54, label %if.then60, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end49
  %11 = load %struct.stack_st_BY_DIR_HASH*, %struct.stack_st_BY_DIR_HASH** %10, align 8, !tbaa !20
  %cmp58 = icmp eq %struct.stack_st_BY_DIR_HASH* %11, null
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %lor.lhs.false56, %if.end49
  %12 = bitcast i8* %call45 to %struct.lookup_dir_entry_st*
  tail call void @by_dir_entry_free(%struct.lookup_dir_entry_st* noundef nonnull %12) #8
  br label %cleanup71

if.end61:                                         ; preds = %lor.lhs.false56
  %13 = load %struct.stack_st_BY_DIR_ENTRY*, %struct.stack_st_BY_DIR_ENTRY** %dirs, align 8, !tbaa !9
  %call63 = tail call fastcc i32 @sk_BY_DIR_ENTRY_push(%struct.stack_st_BY_DIR_ENTRY* noundef %13, %struct.lookup_dir_entry_st* noundef nonnull %8) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %do.cond

if.then65:                                        ; preds = %if.end61
  %14 = bitcast i8* %call45 to %struct.lookup_dir_entry_st*
  tail call void @by_dir_entry_free(%struct.lookup_dir_entry_st* noundef nonnull %14) #8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.add_cert_dir, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 11, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup71

do.cond:                                          ; preds = %if.then10, %for.end, %if.end61, %do.body
  %s.1 = phi i8* [ %s.0, %do.body ], [ %add.ptr, %if.end61 ], [ %add.ptr, %for.end ], [ %add.ptr, %if.then10 ]
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1
  %15 = load i8, i8* %p.0, align 1, !tbaa !16
  %cmp69.not = icmp eq i8 %15, 0
  br i1 %cmp69.not, label %cleanup71, label %do.bodythread-pre-split, !llvm.loop !36

cleanup71:                                        ; preds = %do.cond, %if.then42, %if.then65, %if.then60, %if.then48, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ 0, %if.then48 ], [ 0, %if.then60 ], [ 0, %if.then65 ], [ 0, %if.then42 ], [ 1, %do.cond ]
  ret i32 %retval.3
}

declare i8* @X509_get_default_cert_dir() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BY_DIR_ENTRY_num(%struct.stack_st_BY_DIR_ENTRY* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_ENTRY* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lookup_dir_entry_st* @sk_BY_DIR_ENTRY_value(%struct.stack_st_BY_DIR_ENTRY* noundef %sk, i32 noundef %idx) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_ENTRY* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to %struct.lookup_dir_entry_st*
  ret %struct.lookup_dir_entry_st* %1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_BY_DIR_ENTRY* @sk_BY_DIR_ENTRY_new_null() unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_BY_DIR_ENTRY*
  ret %struct.stack_st_BY_DIR_ENTRY* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_BY_DIR_HASH* @sk_BY_DIR_HASH_new() unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.lookup_dir_hashes_st**, %struct.lookup_dir_hashes_st**)* @by_dir_hash_cmp to i32 (i8*, i8*)*)) #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_BY_DIR_HASH*
  ret %struct.stack_st_BY_DIR_HASH* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @by_dir_hash_cmp(%struct.lookup_dir_hashes_st** nocapture noundef readonly %a, %struct.lookup_dir_hashes_st** nocapture noundef readonly %b) #5 {
entry:
  %0 = load %struct.lookup_dir_hashes_st*, %struct.lookup_dir_hashes_st** %a, align 8, !tbaa !37
  %hash = getelementptr inbounds %struct.lookup_dir_hashes_st, %struct.lookup_dir_hashes_st* %0, i64 0, i32 0
  %1 = load i64, i64* %hash, align 8, !tbaa !21
  %2 = load %struct.lookup_dir_hashes_st*, %struct.lookup_dir_hashes_st** %b, align 8, !tbaa !37
  %hash1 = getelementptr inbounds %struct.lookup_dir_hashes_st, %struct.lookup_dir_hashes_st* %2, i64 0, i32 0
  %3 = load i64, i64* %hash1, align 8, !tbaa !21
  %cmp = icmp ugt i64 %1, %3
  %cmp4 = icmp ult i64 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BY_DIR_ENTRY_push(%struct.stack_st_BY_DIR_ENTRY* noundef %sk, %struct.lookup_dir_entry_st* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_ENTRY* %sk to %struct.stack_st*
  %1 = bitcast %struct.lookup_dir_entry_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_read_lock(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BY_DIR_HASH_find(%struct.stack_st_BY_DIR_HASH* noundef %sk, %struct.lookup_dir_hashes_st* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_HASH* %sk to %struct.stack_st*
  %1 = bitcast %struct.lookup_dir_hashes_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lookup_dir_hashes_st* @sk_BY_DIR_HASH_value(%struct.stack_st_BY_DIR_HASH* noundef %sk, i32 noundef %idx) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_HASH* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #7
  %1 = bitcast i8* %call to %struct.lookup_dir_hashes_st*
  ret %struct.lookup_dir_hashes_st* %1
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #3

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
declare i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #1

declare i32 @X509_load_cert_file_ex(%struct.x509_lookup_st* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @X509_load_crl_file(%struct.x509_lookup_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @X509_STORE_lock(%struct.x509_store_st* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_OBJECT_sk_type(%struct.stack_st_X509_OBJECT* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_OBJECT* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @X509_STORE_unlock(%struct.x509_store_st* noundef) local_unnamed_addr #3

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_BY_DIR_HASH_push(%struct.stack_st_BY_DIR_HASH* noundef %sk, %struct.lookup_dir_hashes_st* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_BY_DIR_HASH* %sk to %struct.stack_st*
  %1 = bitcast %struct.lookup_dir_hashes_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare void @ERR_clear_error() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"lookup_dir_st", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!12, !6, i64 16}
!12 = !{!"x509_lookup_st", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !6, i64 24}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"x509_object_st", !7, i64 0, !7, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!19, !6, i64 0}
!19 = !{!"lookup_dir_entry_st", !6, i64 0, !13, i64 8, !6, i64 16}
!20 = !{!19, !6, i64 16}
!21 = !{!22, !23, i64 0}
!22 = !{!"lookup_dir_hashes_st", !23, i64 0, !13, i64 8}
!23 = !{!"long", !7, i64 0}
!24 = !{!22, !13, i64 8}
!25 = !{!26, !6, i64 8}
!26 = !{!"buf_mem_st", !23, i64 0, !6, i64 8, !23, i64 16, !23, i64 24}
!27 = !{!26, !23, i64 16}
!28 = !{!19, !13, i64 8}
!29 = !{!12, !6, i64 24}
!30 = !{!31, !6, i64 8}
!31 = !{!"x509_store_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !32, i64 128, !7, i64 144, !6, i64 152}
!32 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = !{!6, !6, i64 0}
