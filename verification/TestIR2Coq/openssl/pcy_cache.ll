; ModuleID = 'crypto/x509/pcy_cache.c'
source_filename = "crypto/x509/pcy_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X509_POLICY_CACHE_st = type { %struct.X509_POLICY_DATA_st*, %struct.stack_st_X509_POLICY_DATA*, i64, i64, i64 }
%struct.X509_POLICY_DATA_st = type { i32, %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO*, %struct.stack_st_ASN1_OBJECT* }
%struct.asn1_object_st = type opaque
%struct.stack_st_POLICYQUALINFO = type opaque
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_POLICY_DATA = type opaque
%struct.stack_st = type opaque
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
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
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
%struct.ossl_lib_ctx_st = type opaque
%struct.POLICY_CONSTRAINTS_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.stack_st_POLICYINFO = type opaque
%struct.stack_st_POLICY_MAPPING = type opaque
%struct.POLICYINFO_st = type { %struct.asn1_object_st*, %struct.stack_st_POLICYQUALINFO* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/x509/pcy_cache.c\00", align 1
@__func__.policy_cache_new = private unnamed_addr constant [17 x i8] c"policy_cache_new\00", align 1
@__func__.policy_cache_create = private unnamed_addr constant [20 x i8] c"policy_cache_create\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ossl_policy_cache_free(%struct.X509_POLICY_CACHE_st* noundef %cache) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.X509_POLICY_CACHE_st* %cache, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %cache, i64 0, i32 0
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !4
  tail call void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef %0) #4
  %data = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %cache, i64 0, i32 1
  %1 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data, align 8, !tbaa !10
  tail call fastcc void @sk_X509_POLICY_DATA_pop_free(%struct.stack_st_X509_POLICY_DATA* noundef %1) #5
  %2 = bitcast %struct.X509_POLICY_CACHE_st* %cache to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 184) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_X509_POLICY_DATA_pop_free(%struct.stack_st_X509_POLICY_DATA* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.X509_POLICY_DATA_st*)* @ossl_policy_data_free to void (i8*)*)) #4
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_CACHE_st* @ossl_policy_cache_set(%struct.x509_st* noundef %x) local_unnamed_addr #0 {
entry:
  %policy_cache = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 14
  %0 = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache, align 8, !tbaa !11
  %cmp = icmp eq %struct.X509_POLICY_CACHE_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 22
  %1 = load i8*, i8** %lock, align 8, !tbaa !21
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %1) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  tail call fastcc void @policy_cache_new(%struct.x509_st* noundef nonnull %x) #5
  %2 = load i8*, i8** %lock, align 8, !tbaa !21
  %call4 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #4
  %.pre = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %entry, %if.end, %if.then
  %retval.0 = phi %struct.X509_POLICY_CACHE_st* [ null, %if.then ], [ %.pre, %if.end ], [ %0, %entry ]
  ret %struct.X509_POLICY_CACHE_st* %retval.0
}

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @policy_cache_new(%struct.x509_st* noundef %x) unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %policy_cache = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 14
  %1 = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache, align 8, !tbaa !11
  %cmp.not = icmp eq %struct.X509_POLICY_CACHE_st* %1, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 40, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 92) #4
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.policy_cache_new, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %anyPolicy = bitcast i8* %call to %struct.X509_POLICY_DATA_st**
  store %struct.X509_POLICY_DATA_st* null, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !4
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %data to %struct.stack_st_X509_POLICY_DATA**
  store %struct.stack_st_X509_POLICY_DATA* null, %struct.stack_st_X509_POLICY_DATA** %2, align 8, !tbaa !10
  %any_skip = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %any_skip to i64*
  %explicit_skip = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %explicit_skip to i64*
  %5 = bitcast i8* %any_skip to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %5, align 8, !tbaa !22
  %map_skip = getelementptr inbounds i8, i8* %call, i64 32
  %6 = bitcast i8* %map_skip to i64*
  store i64 -1, i64* %6, align 8, !tbaa !23
  %7 = bitcast %struct.X509_POLICY_CACHE_st** %policy_cache to i8**
  store i8* %call, i8** %7, align 8, !tbaa !11
  %call5 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 401, i32* noundef nonnull %i, i32* noundef null) #4
  %8 = bitcast i8* %call5 to %struct.POLICY_CONSTRAINTS_st*
  %tobool.not = icmp eq i8* %call5, null
  br i1 %tobool.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %9 = load i32, i32* %i, align 4, !tbaa !24
  %cmp7.not = icmp eq i32 %9, -1
  br i1 %cmp7.not, label %if.end26, label %bad_cache

if.else:                                          ; preds = %if.end3
  %requireExplicitPolicy = bitcast i8* %call5 to %struct.asn1_string_st**
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %requireExplicitPolicy, align 8, !tbaa !25
  %tobool10.not = icmp eq %struct.asn1_string_st* %10, null
  br i1 %tobool10.not, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.else
  %inhibitPolicyMapping = getelementptr inbounds i8, i8* %call5, i64 8
  %11 = bitcast i8* %inhibitPolicyMapping to %struct.asn1_string_st**
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %11, align 8, !tbaa !27
  %tobool11.not = icmp eq %struct.asn1_string_st* %12, null
  br i1 %tobool11.not, label %bad_cache, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.else
  %call16 = call fastcc i32 @policy_cache_set_int(i64* noundef nonnull %4, %struct.asn1_string_st* noundef %10) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %bad_cache, label %if.end19

if.end19:                                         ; preds = %if.end13
  %inhibitPolicyMapping21 = getelementptr inbounds i8, i8* %call5, i64 8
  %13 = bitcast i8* %inhibitPolicyMapping21 to %struct.asn1_string_st**
  %14 = load %struct.asn1_string_st*, %struct.asn1_string_st** %13, align 8, !tbaa !27
  %call22 = call fastcc i32 @policy_cache_set_int(i64* noundef nonnull %6, %struct.asn1_string_st* noundef %14) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %bad_cache, label %if.end26

if.end26:                                         ; preds = %if.end19, %if.then6
  %call27 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 89, i32* noundef nonnull %i, i32* noundef null) #4
  %tobool28.not = icmp eq i8* %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end26
  %15 = load i32, i32* %i, align 4, !tbaa !24
  %cmp30.not = icmp eq i32 %15, -1
  br i1 %cmp30.not, label %cleanup, label %bad_cache

if.end33:                                         ; preds = %if.end26
  %16 = bitcast i8* %call27 to %struct.stack_st_POLICYINFO*
  %17 = load i32, i32* %i, align 4, !tbaa !24
  %call34 = call fastcc i32 @policy_cache_create(%struct.x509_st* noundef nonnull %x, %struct.stack_st_POLICYINFO* noundef nonnull %16, i32 noundef %17) #5
  store i32 %call34, i32* %i, align 4, !tbaa !24
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call38 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 747, i32* noundef nonnull %i, i32* noundef null) #4
  %tobool39.not = icmp eq i8* %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.end37
  %18 = load i32, i32* %i, align 4, !tbaa !24
  %cmp41.not = icmp eq i32 %18, -1
  br i1 %cmp41.not, label %if.end49, label %bad_cache

if.else44:                                        ; preds = %if.end37
  %19 = bitcast i8* %call38 to %struct.stack_st_POLICY_MAPPING*
  %call45 = call i32 @ossl_policy_cache_set_mapping(%struct.x509_st* noundef nonnull %x, %struct.stack_st_POLICY_MAPPING* noundef nonnull %19) #4
  store i32 %call45, i32* %i, align 4, !tbaa !24
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %bad_cache, label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then40
  %call50 = call i8* @X509_get_ext_d2i(%struct.x509_st* noundef nonnull %x, i32 noundef 748, i32* noundef nonnull %i, i32* noundef null) #4
  %20 = bitcast i8* %call50 to %struct.asn1_string_st*
  %tobool51.not = icmp eq i8* %call50, null
  br i1 %tobool51.not, label %if.then52, label %if.else56

if.then52:                                        ; preds = %if.end49
  %21 = load i32, i32* %i, align 4, !tbaa !24
  %cmp53.not = icmp eq i32 %21, -1
  br i1 %cmp53.not, label %just_cleanup, label %bad_cache

if.else56:                                        ; preds = %if.end49
  %call58 = call fastcc i32 @policy_cache_set_int(i64* noundef nonnull %3, %struct.asn1_string_st* noundef nonnull %20) #5
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %bad_cache, label %just_cleanup

bad_cache:                                        ; preds = %if.else56, %if.then52, %if.else44, %if.then40, %if.then29, %if.end19, %if.end13, %land.lhs.true, %if.then6
  %ext_any.0 = phi %struct.asn1_string_st* [ null, %if.else44 ], [ %20, %if.else56 ], [ null, %if.then52 ], [ null, %if.then40 ], [ null, %if.then29 ], [ null, %if.end19 ], [ null, %if.end13 ], [ null, %land.lhs.true ], [ null, %if.then6 ]
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %22 = load i32, i32* %ex_flags, align 8, !tbaa !28
  %or = or i32 %22, 2048
  store i32 %or, i32* %ex_flags, align 8, !tbaa !28
  br label %just_cleanup

just_cleanup:                                     ; preds = %if.then52, %if.else56, %bad_cache
  %ext_any.1 = phi %struct.asn1_string_st* [ %ext_any.0, %bad_cache ], [ %20, %if.else56 ], [ null, %if.then52 ]
  call void @POLICY_CONSTRAINTS_free(%struct.POLICY_CONSTRAINTS_st* noundef %8) #4
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %ext_any.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then29, %entry, %just_cleanup, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret void
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.X509_POLICY_DATA_st* @ossl_policy_cache_find_data(%struct.X509_POLICY_CACHE_st* nocapture noundef readonly %cache, %struct.asn1_object_st* noundef %id) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.X509_POLICY_DATA_st, align 8
  %0 = bitcast %struct.X509_POLICY_DATA_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %tmp, i64 0, i32 1
  store %struct.asn1_object_st* %id, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !29
  %data = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %cache, i64 0, i32 1
  %1 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data, align 8, !tbaa !10
  %call = call fastcc i32 @sk_X509_POLICY_DATA_find(%struct.stack_st_X509_POLICY_DATA* noundef %1, %struct.X509_POLICY_DATA_st* noundef nonnull %tmp) #5
  %2 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data, align 8, !tbaa !10
  %call2 = call fastcc %struct.X509_POLICY_DATA_st* @sk_X509_POLICY_DATA_value(%struct.stack_st_X509_POLICY_DATA* noundef %2, i32 noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret %struct.X509_POLICY_DATA_st* %call2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_X509_POLICY_DATA_find(%struct.stack_st_X509_POLICY_DATA* noundef %sk, %struct.X509_POLICY_DATA_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %1 = bitcast %struct.X509_POLICY_DATA_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_POLICY_DATA_st* @sk_X509_POLICY_DATA_value(%struct.stack_st_X509_POLICY_DATA* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #4
  %1 = bitcast i8* %call to %struct.X509_POLICY_DATA_st*
  ret %struct.X509_POLICY_DATA_st* %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @X509_get_ext_d2i(%struct.x509_st* noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @policy_cache_set_int(i64* nocapture noundef writeonly %out, %struct.asn1_string_st* noundef %value) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %value, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %value, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %0, 258
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %value) #4
  store i64 %call, i64* %out, align 8, !tbaa !22
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 1, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @policy_cache_create(%struct.x509_st* nocapture noundef %x, %struct.stack_st_POLICYINFO* noundef %policies, i32 noundef %crit) unnamed_addr #0 {
entry:
  %policy_cache = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 14
  %0 = load %struct.X509_POLICY_CACHE_st*, %struct.X509_POLICY_CACHE_st** %policy_cache, align 8, !tbaa !11
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %policies) #5
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #4
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.end35, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.stack_st_X509_POLICY_DATA* @sk_X509_POLICY_DATA_new() #5
  %data3 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %0, i64 0, i32 1
  store %struct.stack_st_X509_POLICY_DATA* %call2, %struct.stack_st_X509_POLICY_DATA** %data3, align 8, !tbaa !10
  %cmp5 = icmp eq %struct.stack_st_X509_POLICY_DATA* %call2, null
  br i1 %cmp5, label %if.then6, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %anyPolicy = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %0, i64 0, i32 0
  br label %for.body

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.policy_cache_create, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %just_cleanup

for.body:                                         ; preds = %for.body.lr.ph, %if.end32
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32 ]
  %call10 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %i.076) #4
  %1 = bitcast i8* %call10 to %struct.POLICYINFO_st*
  %call11 = tail call %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef %1, %struct.asn1_object_st* noundef null, i32 noundef %crit) #4
  %cmp12 = icmp eq %struct.X509_POLICY_DATA_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.policy_cache_create, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %just_cleanup

if.end14:                                         ; preds = %for.body
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %call11, i64 0, i32 1
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !29
  %call15 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %2) #4
  %cmp16 = icmp eq i32 %call15, 746
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %3 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.X509_POLICY_DATA_st* %3, null
  br i1 %tobool.not, label %if.end19, label %if.then34

if.end19:                                         ; preds = %if.then17
  store %struct.X509_POLICY_DATA_st* %call11, %struct.X509_POLICY_DATA_st** %anyPolicy, align 8, !tbaa !4
  br label %if.end32

if.else:                                          ; preds = %if.end14
  %4 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data3, align 8, !tbaa !10
  %call22 = tail call fastcc i32 @sk_X509_POLICY_DATA_find(%struct.stack_st_X509_POLICY_DATA* noundef %4, %struct.X509_POLICY_DATA_st* noundef nonnull %call11) #5
  %cmp23 = icmp sgt i32 %call22, -1
  br i1 %cmp23, label %if.then34, label %if.else25

if.else25:                                        ; preds = %if.else
  %5 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data3, align 8, !tbaa !10
  %call27 = tail call fastcc i32 @sk_X509_POLICY_DATA_push(%struct.stack_st_X509_POLICY_DATA* noundef %5, %struct.X509_POLICY_DATA_st* noundef nonnull %call11) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.else25
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.policy_cache_create, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, i8* noundef null) #4
  br label %if.end35

if.end32:                                         ; preds = %if.else25, %if.end19
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %if.end35, label %for.body, !llvm.loop !32

if.then34:                                        ; preds = %if.then17, %if.else
  %ex_flags = getelementptr inbounds %struct.x509_st, %struct.x509_st* %x, i64 0, i32 8
  %6 = load i32, i32* %ex_flags, align 8, !tbaa !28
  %or = or i32 %6, 2048
  store i32 %or, i32* %ex_flags, align 8, !tbaa !28
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.then29, %entry, %if.then34
  %data.172 = phi %struct.X509_POLICY_DATA_st* [ %call11, %if.then34 ], [ %call11, %if.then29 ], [ null, %entry ], [ null, %if.end32 ]
  %ret.071 = phi i32 [ -1, %if.then34 ], [ 0, %if.then29 ], [ 0, %entry ], [ 1, %if.end32 ]
  tail call void @ossl_policy_data_free(%struct.X509_POLICY_DATA_st* noundef %data.172) #4
  br label %just_cleanup

just_cleanup:                                     ; preds = %if.end35, %if.then13, %if.then6
  %ret.1 = phi i32 [ %ret.071, %if.end35 ], [ 0, %if.then6 ], [ 0, %if.then13 ]
  %call36 = tail call fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef %policies) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call36, void (i8*)* noundef bitcast (void (%struct.POLICYINFO_st*)* @POLICYINFO_free to void (i8*)*)) #4
  %cmp38 = icmp slt i32 %ret.1, 1
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %just_cleanup
  %data40 = getelementptr inbounds %struct.X509_POLICY_CACHE_st, %struct.X509_POLICY_CACHE_st* %0, i64 0, i32 1
  %7 = load %struct.stack_st_X509_POLICY_DATA*, %struct.stack_st_X509_POLICY_DATA** %data40, align 8, !tbaa !10
  tail call fastcc void @sk_X509_POLICY_DATA_pop_free(%struct.stack_st_X509_POLICY_DATA* noundef %7) #5
  store %struct.stack_st_X509_POLICY_DATA* null, %struct.stack_st_X509_POLICY_DATA** %data40, align 8, !tbaa !10
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %just_cleanup
  ret i32 %ret.1
}

declare i32 @ossl_policy_cache_set_mapping(%struct.x509_st* noundef, %struct.stack_st_POLICY_MAPPING* noundef) local_unnamed_addr #1

declare void @POLICY_CONSTRAINTS_free(%struct.POLICY_CONSTRAINTS_st* noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509_POLICY_DATA* @sk_X509_POLICY_DATA_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.X509_POLICY_DATA_st**, %struct.X509_POLICY_DATA_st**)* @policy_data_cmp to i32 (i8*, i8*)*)) #4
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_X509_POLICY_DATA*
  ret %struct.stack_st_X509_POLICY_DATA* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @policy_data_cmp(%struct.X509_POLICY_DATA_st** nocapture noundef readonly %a, %struct.X509_POLICY_DATA_st** nocapture noundef readonly %b) #0 {
entry:
  %0 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %a, align 8, !tbaa !34
  %valid_policy = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %0, i64 0, i32 1
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy, align 8, !tbaa !29
  %2 = load %struct.X509_POLICY_DATA_st*, %struct.X509_POLICY_DATA_st** %b, align 8, !tbaa !34
  %valid_policy1 = getelementptr inbounds %struct.X509_POLICY_DATA_st, %struct.X509_POLICY_DATA_st* %2, i64 0, i32 1
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %valid_policy1, align 8, !tbaa !29
  %call = tail call i32 @OBJ_cmp(%struct.asn1_object_st* noundef %1, %struct.asn1_object_st* noundef %3) #4
  ret i32 %call
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.X509_POLICY_DATA_st* @ossl_policy_data_new(%struct.POLICYINFO_st* noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_X509_POLICY_DATA_push(%struct.stack_st_X509_POLICY_DATA* noundef %sk, %struct.X509_POLICY_DATA_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_POLICY_DATA* %sk to %struct.stack_st*
  %1 = bitcast %struct.X509_POLICY_DATA_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #4
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_POLICYINFO_sk_type(%struct.stack_st_POLICYINFO* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_POLICYINFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @POLICYINFO_free(%struct.POLICYINFO_st* noundef) #1

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #1

declare i32 @OBJ_cmp(%struct.asn1_object_st* noundef, %struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"X509_POLICY_CACHE_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !6, i64 8}
!11 = !{!12, !6, i64 264}
!12 = !{!"x509_st", !13, i64 0, !16, i64 136, !14, i64 152, !19, i64 176, !7, i64 192, !20, i64 200, !9, i64 216, !9, i64 224, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !7, i64 312, !6, i64 336, !6, i64 344, !15, i64 352, !6, i64 360, !6, i64 368, !6, i64 376}
!13 = !{!"x509_cinf_st", !6, i64 0, !14, i64 8, !16, i64 32, !6, i64 48, !17, i64 56, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !18, i64 112}
!14 = !{!"asn1_string_st", !15, i64 0, !15, i64 4, !6, i64 8, !9, i64 16}
!15 = !{!"int", !7, i64 0}
!16 = !{!"X509_algor_st", !6, i64 0, !6, i64 8}
!17 = !{!"X509_val_st", !6, i64 0, !6, i64 8}
!18 = !{!"ASN1_ENCODING_st", !6, i64 0, !9, i64 8, !15, i64 16}
!19 = !{!"x509_sig_info_st", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!20 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!21 = !{!12, !6, i64 344}
!22 = !{!9, !9, i64 0}
!23 = !{!5, !9, i64 32}
!24 = !{!15, !15, i64 0}
!25 = !{!26, !6, i64 0}
!26 = !{!"POLICY_CONSTRAINTS_st", !6, i64 0, !6, i64 8}
!27 = !{!26, !6, i64 8}
!28 = !{!12, !15, i64 232}
!29 = !{!30, !6, i64 8}
!30 = !{!"X509_POLICY_DATA_st", !15, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!31 = !{!14, !15, i64 4}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!6, !6, i64 0}
