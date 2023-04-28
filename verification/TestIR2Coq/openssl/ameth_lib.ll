; ModuleID = 'crypto/asn1/ameth_lib.c'
source_filename = "crypto/asn1/ameth_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st_EVP_PKEY_ASN1_METHOD = type opaque
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.stack_st = type opaque

@app_methods = internal unnamed_addr global %struct.stack_st_EVP_PKEY_ASN1_METHOD* null, align 8
@standard_methods = internal global [16 x %struct.evp_pkey_asn1_method_st*] [%struct.evp_pkey_asn1_method_st* getelementptr inbounds ([2 x %struct.evp_pkey_asn1_method_st], [2 x %struct.evp_pkey_asn1_method_st]* @ossl_rsa_asn1_meths, i32 0, i32 0), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %struct.evp_pkey_asn1_method_st]* @ossl_rsa_asn1_meths to i8*), i64 320) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* @ossl_dh_asn1_meth, %struct.evp_pkey_asn1_method_st* getelementptr inbounds ([5 x %struct.evp_pkey_asn1_method_st], [5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths, i32 0, i32 0), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 320) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 640) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 960) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %struct.evp_pkey_asn1_method_st]* @ossl_dsa_asn1_meths to i8*), i64 1280) to %struct.evp_pkey_asn1_method_st*), %struct.evp_pkey_asn1_method_st* @ossl_eckey_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_rsa_pss_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_dhx_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ecx25519_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ecx448_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ed25519_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_ed448_asn1_meth, %struct.evp_pkey_asn1_method_st* @ossl_sm2_asn1_meth], align 16
@.str = private unnamed_addr constant [24 x i8] c"crypto/asn1/ameth_lib.c\00", align 1
@__func__.EVP_PKEY_asn1_add0 = private unnamed_addr constant [19 x i8] c"EVP_PKEY_asn1_add0\00", align 1
@__func__.EVP_PKEY_asn1_new = private unnamed_addr constant [18 x i8] c"EVP_PKEY_asn1_new\00", align 1
@ossl_rsa_asn1_meths = external constant [2 x %struct.evp_pkey_asn1_method_st], align 16
@ossl_dh_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_dsa_asn1_meths = external constant [5 x %struct.evp_pkey_asn1_method_st], align 16
@ossl_eckey_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_rsa_pss_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_dhx_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ecx25519_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ecx448_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ed25519_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_ed448_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8
@ossl_sm2_asn1_meth = external constant %struct.evp_pkey_asn1_method_st, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_asn1_get_count() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.stack_st_EVP_PKEY_ASN1_METHOD* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_num(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef nonnull %0) #10
  %add = add nsw i32 %call, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %num.0 = phi i32 [ %add, %if.then ], [ 16, %entry ]
  ret i32 %num.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_num(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_ASN1_METHOD* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i32 %idx, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %idxprom10 = zext i32 %idx to i64
  %arrayidx = getelementptr inbounds [16 x %struct.evp_pkey_asn1_method_st*], [16 x %struct.evp_pkey_asn1_method_st*]* @standard_methods, i64 0, i64 %idxprom10
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %arrayidx, align 8, !tbaa !4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = add nsw i32 %idx, -16
  %1 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %call = tail call fastcc %struct.evp_pkey_asn1_method_st* @sk_EVP_PKEY_ASN1_METHOD_value(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %1, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi %struct.evp_pkey_asn1_method_st* [ %0, %if.then2 ], [ %call, %if.end3 ], [ null, %entry ]
  ret %struct.evp_pkey_asn1_method_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_asn1_method_st* @sk_EVP_PKEY_ASN1_METHOD_value(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_ASN1_METHOD* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #11
  %1 = bitcast i8* %call to %struct.evp_pkey_asn1_method_st*
  ret %struct.evp_pkey_asn1_method_st* %1
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find(%struct.engine_st** noundef writeonly %pe, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %call23 = tail call fastcc %struct.evp_pkey_asn1_method_st* @pkey_asn1_find(i32 noundef %type) #10
  %tobool.not24 = icmp eq %struct.evp_pkey_asn1_method_st* %call23, null
  br i1 %tobool.not24, label %for.end, label %lor.lhs.false.preheader

lor.lhs.false.preheader:                          ; preds = %entry
  %pkey_flags30 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call23, i64 0, i32 2
  %0 = load i64, i64* %pkey_flags30, align 8, !tbaa !8
  %and31 = and i64 %0, 1
  %tobool1.not32 = icmp eq i64 %and31, 0
  br i1 %tobool1.not32, label %for.end, label %if.end

lor.lhs.false:                                    ; preds = %if.end
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call, i64 0, i32 2
  %1 = load i64, i64* %pkey_flags, align 8, !tbaa !8
  %and = and i64 %1, 1
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %for.end, label %if.end

if.end:                                           ; preds = %lor.lhs.false.preheader, %lor.lhs.false
  %call2633 = phi %struct.evp_pkey_asn1_method_st* [ %call, %lor.lhs.false ], [ %call23, %lor.lhs.false.preheader ]
  %pkey_base_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call2633, i64 0, i32 1
  %2 = load i32, i32* %pkey_base_id, align 4, !tbaa !12
  %call = tail call fastcc %struct.evp_pkey_asn1_method_st* @pkey_asn1_find(i32 noundef %2) #10
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %call, null
  br i1 %tobool.not, label %for.end, label %lor.lhs.false

for.end:                                          ; preds = %if.end, %lor.lhs.false, %lor.lhs.false.preheader, %entry
  %type.addr.0.lcssa = phi i32 [ %type, %entry ], [ %type, %lor.lhs.false.preheader ], [ %2, %lor.lhs.false ], [ %2, %if.end ]
  %call.lcssa = phi %struct.evp_pkey_asn1_method_st* [ null, %entry ], [ %call23, %lor.lhs.false.preheader ], [ %call, %lor.lhs.false ], [ null, %if.end ]
  %tobool2.not = icmp eq %struct.engine_st** %pe, null
  br i1 %tobool2.not, label %cleanup10, label %if.then3

if.then3:                                         ; preds = %for.end
  %call4 = tail call %struct.engine_st* @ENGINE_get_pkey_asn1_meth_engine(i32 noundef %type.addr.0.lcssa) #11
  %tobool5.not = icmp eq %struct.engine_st* %call4, null
  br i1 %tobool5.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then3
  store %struct.engine_st* null, %struct.engine_st** %pe, align 8, !tbaa !4
  br label %cleanup10

cleanup:                                          ; preds = %if.then3
  store %struct.engine_st* %call4, %struct.engine_st** %pe, align 8, !tbaa !4
  %call7 = tail call %struct.evp_pkey_asn1_method_st* @ENGINE_get_pkey_asn1_meth(%struct.engine_st* noundef nonnull %call4, i32 noundef %type.addr.0.lcssa) #11
  br label %cleanup10

cleanup10:                                        ; preds = %for.end, %cleanup.thread, %cleanup
  %retval.1 = phi %struct.evp_pkey_asn1_method_st* [ %call7, %cleanup ], [ %call.lcssa, %cleanup.thread ], [ %call.lcssa, %for.end ]
  ret %struct.evp_pkey_asn1_method_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_asn1_method_st* @pkey_asn1_find(i32 noundef %type) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.evp_pkey_asn1_method_st, align 8
  %t = alloca %struct.evp_pkey_asn1_method_st*, align 8
  %0 = bitcast %struct.evp_pkey_asn1_method_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %0) #12
  %1 = bitcast %struct.evp_pkey_asn1_method_st** %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store %struct.evp_pkey_asn1_method_st* %tmp, %struct.evp_pkey_asn1_method_st** %t, align 8, !tbaa !4
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %tmp, i64 0, i32 0
  store i32 %type, i32* %pkey_id, align 8, !tbaa !13
  %2 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.stack_st_EVP_PKEY_ASN1_METHOD* %2, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_find(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef nonnull %2, %struct.evp_pkey_asn1_method_st* noundef nonnull %tmp) #10
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %cleanup.thread, label %if.end3

cleanup.thread:                                   ; preds = %if.then
  %3 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %call2 = call fastcc %struct.evp_pkey_asn1_method_st* @sk_EVP_PKEY_ASN1_METHOD_value(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %3, i32 noundef %call) #10
  br label %cleanup9

if.end3:                                          ; preds = %if.then, %entry
  %call4 = call fastcc %struct.evp_pkey_asn1_method_st** @OBJ_bsearch_ameth(%struct.evp_pkey_asn1_method_st** noundef nonnull %t) #10
  %cmp5 = icmp eq %struct.evp_pkey_asn1_method_st** %call4, null
  br i1 %cmp5, label %cleanup9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %call4, align 8, !tbaa !4
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup.thread, %lor.lhs.false, %if.end3
  %retval.1 = phi %struct.evp_pkey_asn1_method_st* [ null, %if.end3 ], [ %4, %lor.lhs.false ], [ %call2, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %0) #12
  ret %struct.evp_pkey_asn1_method_st* %retval.1
}

declare %struct.engine_st* @ENGINE_get_pkey_asn1_meth_engine(i32 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_asn1_method_st* @ENGINE_get_pkey_asn1_meth(%struct.engine_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef writeonly %pe, i8* noundef %str, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %e = alloca %struct.engine_st*, align 8
  %cmp = icmp eq i32 %len, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %str) #13
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %len.addr.0 = phi i32 [ %conv, %if.then ], [ %len, %entry ]
  %tobool.not = icmp eq %struct.engine_st** %pe, null
  br i1 %tobool.not, label %if.end11, label %if.then1

if.then1:                                         ; preds = %if.end
  %0 = bitcast %struct.engine_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  %call2 = call %struct.evp_pkey_asn1_method_st* @ENGINE_pkey_asn1_find_str(%struct.engine_st** noundef nonnull %e, i8* noundef %str, i32 noundef %len.addr.0) #11
  %tobool3.not = icmp eq %struct.evp_pkey_asn1_method_st* %call2, null
  br i1 %tobool3.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then1
  store %struct.engine_st* null, %struct.engine_st** %pe, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  br label %if.end11

cleanup:                                          ; preds = %if.then1
  %1 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !4
  %call5 = call i32 @ENGINE_init(%struct.engine_st* noundef %1) #11
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, %struct.evp_pkey_asn1_method_st* null, %struct.evp_pkey_asn1_method_st* %call2
  %2 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !4
  %call9 = call i32 @ENGINE_free(%struct.engine_st* noundef %2) #11
  %3 = load %struct.engine_st*, %struct.engine_st** %e, align 8, !tbaa !4
  store %struct.engine_st* %3, %struct.engine_st** %pe, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  br label %cleanup30

if.end11:                                         ; preds = %cleanup.thread, %if.end
  %call12 = call i32 @EVP_PKEY_asn1_get_count() #10
  %conv24 = sext i32 %len.addr.0 to i64
  %cmp1350 = icmp sgt i32 %call12, 0
  br i1 %cmp1350, label %for.body, label %cleanup30

for.body:                                         ; preds = %if.end11, %for.cond.backedge
  %dec51.in = phi i32 [ %dec51, %for.cond.backedge ], [ %call12, %if.end11 ]
  %dec51 = add nsw i32 %dec51.in, -1
  %call15 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %dec51) #10
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call15, i64 0, i32 2
  %4 = load i64, i64* %pkey_flags, align 8, !tbaa !8
  %and = and i64 %4, 1
  %tobool16.not = icmp eq i64 %and, 0
  br i1 %tobool16.not, label %if.end18, label %for.cond.backedge

if.end18:                                         ; preds = %for.body
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call15, i64 0, i32 3
  %5 = load i8*, i8** %pem_str, align 8, !tbaa !14
  %call19 = call i64 @strlen(i8* noundef %5) #13
  %conv20 = trunc i64 %call19 to i32
  %cmp21 = icmp eq i32 %len.addr.0, %conv20
  br i1 %cmp21, label %land.lhs.true, label %for.cond.backedge

land.lhs.true:                                    ; preds = %if.end18
  %call25 = call i32 @strncasecmp(i8* noundef %5, i8* noundef %str, i64 noundef %conv24) #13
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %cleanup30, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end18, %land.lhs.true, %for.body
  %cmp13 = icmp ugt i32 %dec51.in, 1
  br i1 %cmp13, label %for.body, label %cleanup30, !llvm.loop !15

cleanup30:                                        ; preds = %land.lhs.true, %for.cond.backedge, %if.end11, %cleanup
  %retval.1 = phi %struct.evp_pkey_asn1_method_st* [ %spec.select, %cleanup ], [ null, %if.end11 ], [ %call15, %land.lhs.true ], [ null, %for.cond.backedge ]
  ret %struct.evp_pkey_asn1_method_st* %retval.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare %struct.evp_pkey_asn1_method_st* @ENGINE_pkey_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_asn1_add0(%struct.evp_pkey_asn1_method_st* noundef %ameth) local_unnamed_addr #0 {
entry:
  %tmp = alloca %struct.evp_pkey_asn1_method_st, align 8
  %0 = bitcast %struct.evp_pkey_asn1_method_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 320, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(320) %0, i8 0, i64 320, i1 false)
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 3
  %1 = load i8*, i8** %pem_str, align 8, !tbaa !14
  %cmp = icmp eq i8* %1, null
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 2
  %2 = load i64, i64* %pkey_flags, align 8, !tbaa !8
  %and = and i64 %2, 1
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true4

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp1.not, label %if.then, label %if.end

land.lhs.true4:                                   ; preds = %entry
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true4
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_PKEY_asn1_add0, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524550, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true
  %3 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.stack_st_EVP_PKEY_ASN1_METHOD* %3, null
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  %call = tail call fastcc %struct.stack_st_EVP_PKEY_ASN1_METHOD* @sk_EVP_PKEY_ASN1_METHOD_new() #10
  store %struct.stack_st_EVP_PKEY_ASN1_METHOD* %call, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %cmp10 = icmp eq %struct.stack_st_EVP_PKEY_ASN1_METHOD* %call, null
  br i1 %cmp10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %4 = phi %struct.stack_st_EVP_PKEY_ASN1_METHOD* [ %call, %if.then9 ], [ %3, %if.end ]
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 0
  %5 = load i32, i32* %pkey_id, align 8, !tbaa !13
  %pkey_id14 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %tmp, i64 0, i32 0
  store i32 %5, i32* %pkey_id14, align 8, !tbaa !13
  %call15 = call fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_find(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef nonnull %4, %struct.evp_pkey_asn1_method_st* noundef nonnull %tmp) #10
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EVP_PKEY_asn1_add0, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 179, i8* noundef null) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %6 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  %call19 = call fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_push(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %6, %struct.evp_pkey_asn1_method_st* noundef nonnull %ameth) #10
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end18
  %7 = load %struct.stack_st_EVP_PKEY_ASN1_METHOD*, %struct.stack_st_EVP_PKEY_ASN1_METHOD** @app_methods, align 8, !tbaa !4
  call fastcc void @sk_EVP_PKEY_ASN1_METHOD_sort(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then9, %if.end21, %if.then17, %if.then
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 1, %if.end21 ], [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0i8(i64 320, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_PKEY_ASN1_METHOD* @sk_EVP_PKEY_ASN1_METHOD_new() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef bitcast (i32 (%struct.evp_pkey_asn1_method_st**, %struct.evp_pkey_asn1_method_st**)* @ameth_cmp to i32 (i8*, i8*)*)) #11
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_PKEY_ASN1_METHOD*
  ret %struct.stack_st_EVP_PKEY_ASN1_METHOD* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ameth_cmp(%struct.evp_pkey_asn1_method_st** nocapture noundef readonly %a, %struct.evp_pkey_asn1_method_st** nocapture noundef readonly %b) #5 {
entry:
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %a, align 8, !tbaa !4
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %pkey_id, align 8, !tbaa !13
  %2 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %b, align 8, !tbaa !4
  %pkey_id1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %2, i64 0, i32 0
  %3 = load i32, i32* %pkey_id1, align 8, !tbaa !13
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_find(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %sk, %struct.evp_pkey_asn1_method_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_ASN1_METHOD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pkey_asn1_method_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_PKEY_ASN1_METHOD_push(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %sk, %struct.evp_pkey_asn1_method_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_ASN1_METHOD* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_pkey_asn1_method_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_PKEY_ASN1_METHOD_sort(%struct.stack_st_EVP_PKEY_ASN1_METHOD* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_PKEY_ASN1_METHOD* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_sort(%struct.stack_st* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_asn1_add_alias(i32 noundef %to, i32 noundef %from) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_new(i32 noundef %from, i32 noundef 1, i8* noundef null, i8* noundef null) #10
  %cmp = icmp eq %struct.evp_pkey_asn1_method_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %pkey_base_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %call, i64 0, i32 1
  store i32 %to, i32* %pkey_base_id, align 4, !tbaa !12
  %call1 = tail call i32 @EVP_PKEY_asn1_add0(%struct.evp_pkey_asn1_method_st* noundef nonnull %call) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  tail call void @EVP_PKEY_asn1_free(%struct.evp_pkey_asn1_method_st* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_new(i32 noundef %id, i32 noundef %flags, i8* noundef %pem_str, i8* noundef %info) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 320, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 224) #11
  %0 = bitcast i8* %call to %struct.evp_pkey_asn1_method_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %pkey_id = bitcast i8* %call to i32*
  store i32 %id, i32* %pkey_id, align 8, !tbaa !13
  %pkey_base_id = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %pkey_base_id to i32*
  store i32 %id, i32* %1, align 4, !tbaa !12
  %or = or i32 %flags, 2
  %conv = sext i32 %or to i64
  %pkey_flags = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %pkey_flags to i64*
  store i64 %conv, i64* %2, align 8, !tbaa !8
  %tobool.not = icmp eq i8* %info, null
  br i1 %tobool.not, label %if.end9, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %info, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 236) #11
  %info3 = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %info3 to i8**
  store i8* %call2, i8** %3, align 8, !tbaa !17
  %cmp5 = icmp eq i8* %call2, null
  br i1 %cmp5, label %err, label %if.end9

if.end9:                                          ; preds = %if.then1, %if.end
  %tobool10.not = icmp eq i8* %pem_str, null
  br i1 %tobool10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %pem_str, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 242) #11
  %pem_str13 = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %pem_str13 to i8**
  store i8* %call12, i8** %4, align 8, !tbaa !14
  %cmp15 = icmp eq i8* %call12, null
  br i1 %cmp15, label %err, label %cleanup

err:                                              ; preds = %if.then11, %if.then1
  tail call void @EVP_PKEY_asn1_free(%struct.evp_pkey_asn1_method_st* noundef nonnull %0) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %err
  %.sink = phi i32 [ 251, %err ], [ 227, %entry ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_asn1_new, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9, %if.then11
  %retval.0 = phi %struct.evp_pkey_asn1_method_st* [ %0, %if.then11 ], [ %0, %if.end9 ], [ null, %cleanup.sink.split ]
  ret %struct.evp_pkey_asn1_method_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_PKEY_asn1_free(%struct.evp_pkey_asn1_method_st* noundef %ameth) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %ameth, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 2
  %0 = load i64, i64* %pkey_flags, align 8, !tbaa !8
  %and = and i64 %0, 2
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 3
  %1 = load i8*, i8** %pem_str, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 277) #11
  %info = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 4
  %2 = load i8*, i8** %info, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 278) #11
  %3 = bitcast %struct.evp_pkey_asn1_method_st* %ameth to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 279) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @EVP_PKEY_asn1_get0_info(i32* noundef writeonly %ppkey_id, i32* noundef writeonly %ppkey_base_id, i32* noundef writeonly %ppkey_flags, i8** noundef writeonly %pinfo, i8** noundef writeonly %ppem_str, %struct.evp_pkey_asn1_method_st* noundef readonly %ameth) local_unnamed_addr #6 {
entry:
  %tobool.not = icmp eq %struct.evp_pkey_asn1_method_st* %ameth, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq i32* %ppkey_id, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %pkey_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 0
  %0 = load i32, i32* %pkey_id, align 8, !tbaa !13
  store i32 %0, i32* %ppkey_id, align 4, !tbaa !18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tobool4.not = icmp eq i32* %ppkey_base_id, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %pkey_base_id = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 1
  %1 = load i32, i32* %pkey_base_id, align 4, !tbaa !12
  store i32 %1, i32* %ppkey_base_id, align 4, !tbaa !18
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %tobool7.not = icmp eq i32* %ppkey_flags, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  %pkey_flags = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 2
  %2 = load i64, i64* %pkey_flags, align 8, !tbaa !8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %ppkey_flags, align 4, !tbaa !18
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %tobool10.not = icmp eq i8** %pinfo, null
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  %info = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 4
  %3 = load i8*, i8** %info, align 8, !tbaa !17
  store i8* %3, i8** %pinfo, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %tobool13.not = icmp eq i8** %ppem_str, null
  br i1 %tobool13.not, label %return, label %if.then14

if.then14:                                        ; preds = %if.end12
  %pem_str = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 3
  %4 = load i8*, i8** %pem_str, align 8, !tbaa !14
  store i8* %4, i8** %ppem_str, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end12, %if.then14, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then14 ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_asn1_method_st* @EVP_PKEY_get0_asn1(%struct.evp_pkey_st* nocapture noundef readonly %pkey) local_unnamed_addr #5 {
entry:
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %0 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  ret %struct.evp_pkey_asn1_method_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define void @EVP_PKEY_asn1_copy(%struct.evp_pkey_asn1_method_st* nocapture noundef %dst, %struct.evp_pkey_asn1_method_st* nocapture noundef readonly %src) local_unnamed_addr #7 {
entry:
  %pkey_id1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %dst, i64 0, i32 0
  %0 = load i32, i32* %pkey_id1, align 8, !tbaa !13
  %pkey_base_id2 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %dst, i64 0, i32 1
  %1 = load i32, i32* %pkey_base_id2, align 4, !tbaa !12
  %pkey_flags3 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %dst, i64 0, i32 2
  %2 = load i64, i64* %pkey_flags3, align 8, !tbaa !8
  %pem_str4 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %dst, i64 0, i32 3
  %3 = bitcast i8** %pem_str4 to <2 x i8*>*
  %4 = load <2 x i8*>, <2 x i8*>* %3, align 8, !tbaa !4
  %5 = bitcast %struct.evp_pkey_asn1_method_st* %dst to i8*
  %6 = bitcast %struct.evp_pkey_asn1_method_st* %src to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(320) %5, i8* noundef nonnull align 8 dereferenceable(320) %6, i64 320, i1 false), !tbaa.struct !23
  store i32 %0, i32* %pkey_id1, align 8, !tbaa !13
  store i32 %1, i32* %pkey_base_id2, align 4, !tbaa !12
  store i64 %2, i64* %pkey_flags3, align 8, !tbaa !8
  %7 = bitcast i8** %pem_str4 to <2 x i8*>*
  store <2 x i8*> %4, <2 x i8*>* %7, align 8, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_public(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* noundef %pub_decode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* noundef %pub_encode, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef %pub_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef %pub_print, i32 (%struct.evp_pkey_st*)* noundef %pkey_size, i32 (%struct.evp_pkey_st*)* noundef %pkey_bits) local_unnamed_addr #9 {
entry:
  %pub_decode1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 5
  store i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)* %pub_decode, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)** %pub_decode1, align 8, !tbaa !25
  %pub_encode2 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 6
  store i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)* %pub_encode, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)** %pub_encode2, align 8, !tbaa !26
  %pub_cmp3 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 7
  store i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %pub_cmp, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %pub_cmp3, align 8, !tbaa !27
  %pub_print4 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 8
  store i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* %pub_print, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)** %pub_print4, align 8, !tbaa !28
  %pkey_size5 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 12
  store i32 (%struct.evp_pkey_st*)* %pkey_size, i32 (%struct.evp_pkey_st*)** %pkey_size5, align 8, !tbaa !29
  %pkey_bits6 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 13
  store i32 (%struct.evp_pkey_st*)* %pkey_bits, i32 (%struct.evp_pkey_st*)** %pkey_bits6, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_private(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* noundef %priv_decode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* noundef %priv_encode, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef %priv_print) local_unnamed_addr #9 {
entry:
  %priv_decode1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 9
  store i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)* %priv_decode, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)** %priv_decode1, align 8, !tbaa !31
  %priv_encode2 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 10
  store i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* %priv_encode, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)** %priv_encode2, align 8, !tbaa !32
  %priv_print3 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 11
  store i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* %priv_print, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)** %priv_print3, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_param(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, i8**, i32)* noundef %param_decode, i32 (%struct.evp_pkey_st*, i8**)* noundef %param_encode, i32 (%struct.evp_pkey_st*)* noundef %param_missing, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef %param_copy, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef %param_cmp, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef %param_print) local_unnamed_addr #9 {
entry:
  %param_decode1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 15
  store i32 (%struct.evp_pkey_st*, i8**, i32)* %param_decode, i32 (%struct.evp_pkey_st*, i8**, i32)** %param_decode1, align 8, !tbaa !34
  %param_encode2 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 16
  store i32 (%struct.evp_pkey_st*, i8**)* %param_encode, i32 (%struct.evp_pkey_st*, i8**)** %param_encode2, align 8, !tbaa !35
  %param_missing3 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 17
  store i32 (%struct.evp_pkey_st*)* %param_missing, i32 (%struct.evp_pkey_st*)** %param_missing3, align 8, !tbaa !36
  %param_copy4 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 18
  store i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %param_copy, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %param_copy4, align 8, !tbaa !37
  %param_cmp5 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 19
  store i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* %param_cmp, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)** %param_cmp5, align 8, !tbaa !38
  %param_print6 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 20
  store i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* %param_print, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)** %param_print6, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_free(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, void (%struct.evp_pkey_st*)* noundef %pkey_free) local_unnamed_addr #9 {
entry:
  %pkey_free1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 22
  store void (%struct.evp_pkey_st*)* %pkey_free, void (%struct.evp_pkey_st*)** %pkey_free1, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_ctrl(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, i32, i64, i8*)* noundef %pkey_ctrl) local_unnamed_addr #9 {
entry:
  %pkey_ctrl1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 23
  store i32 (%struct.evp_pkey_st*, i32, i64, i8*)* %pkey_ctrl, i32 (%struct.evp_pkey_st*, i32, i64, i8*)** %pkey_ctrl1, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_security_bits(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*)* noundef %pkey_security_bits) local_unnamed_addr #9 {
entry:
  %pkey_security_bits1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 14
  store i32 (%struct.evp_pkey_st*)* %pkey_security_bits, i32 (%struct.evp_pkey_st*)** %pkey_security_bits1, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_item(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* noundef %item_verify, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* noundef %item_sign) local_unnamed_addr #9 {
entry:
  %item_sign1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 27
  store i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* %item_sign, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)** %item_sign1, align 8, !tbaa !43
  %item_verify2 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 26
  store i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)* %item_verify, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)** %item_verify2, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_siginf(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* noundef %siginf_set) local_unnamed_addr #9 {
entry:
  %siginf_set1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 28
  store i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)* %siginf_set, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)** %siginf_set1, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_check(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*)* noundef %pkey_check) local_unnamed_addr #9 {
entry:
  %pkey_check1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 29
  store i32 (%struct.evp_pkey_st*)* %pkey_check, i32 (%struct.evp_pkey_st*)** %pkey_check1, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_public_check(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*)* noundef %pkey_pub_check) local_unnamed_addr #9 {
entry:
  %pkey_public_check = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 30
  store i32 (%struct.evp_pkey_st*)* %pkey_pub_check, i32 (%struct.evp_pkey_st*)** %pkey_public_check, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_param_check(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*)* noundef %pkey_param_check) local_unnamed_addr #9 {
entry:
  %pkey_param_check1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 31
  store i32 (%struct.evp_pkey_st*)* %pkey_param_check, i32 (%struct.evp_pkey_st*)** %pkey_param_check1, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_set_priv_key(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, i8*, i64)* noundef %set_priv_key) local_unnamed_addr #9 {
entry:
  %set_priv_key1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 32
  store i32 (%struct.evp_pkey_st*, i8*, i64)* %set_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64)** %set_priv_key1, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_set_pub_key(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, i8*, i64)* noundef %set_pub_key) local_unnamed_addr #9 {
entry:
  %set_pub_key1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 33
  store i32 (%struct.evp_pkey_st*, i8*, i64)* %set_pub_key, i32 (%struct.evp_pkey_st*, i8*, i64)** %set_pub_key1, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_get_priv_key(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, i8*, i64*)* noundef %get_priv_key) local_unnamed_addr #9 {
entry:
  %get_priv_key1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 34
  store i32 (%struct.evp_pkey_st*, i8*, i64*)* %get_priv_key, i32 (%struct.evp_pkey_st*, i8*, i64*)** %get_priv_key1, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_asn1_set_get_pub_key(%struct.evp_pkey_asn1_method_st* nocapture noundef writeonly %ameth, i32 (%struct.evp_pkey_st*, i8*, i64*)* noundef %get_pub_key) local_unnamed_addr #9 {
entry:
  %get_pub_key1 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %ameth, i64 0, i32 35
  store i32 (%struct.evp_pkey_st*, i8*, i64*)* %get_pub_key, i32 (%struct.evp_pkey_st*, i8*, i64*)** %get_pub_key1, align 8, !tbaa !52
  ret void
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_asn1_method_st** @OBJ_bsearch_ameth(%struct.evp_pkey_asn1_method_st** noundef %key) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_asn1_method_st** %key to i8*
  %call = tail call i8* @OBJ_bsearch_(i8* noundef %0, i8* noundef bitcast ([16 x %struct.evp_pkey_asn1_method_st*]* @standard_methods to i8*), i32 noundef 16, i32 noundef 8, i32 (i8*, i8*)* noundef nonnull @ameth_cmp_BSEARCH_CMP_FN) #11
  %1 = bitcast i8* %call to %struct.evp_pkey_asn1_method_st**
  ret %struct.evp_pkey_asn1_method_st** %1
}

declare i8* @OBJ_bsearch_(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @ameth_cmp_BSEARCH_CMP_FN(i8* nocapture noundef readonly %a_, i8* nocapture noundef readonly %b_) #5 {
entry:
  %0 = bitcast i8* %a_ to %struct.evp_pkey_asn1_method_st**
  %1 = bitcast i8* %b_ to %struct.evp_pkey_asn1_method_st**
  %call = tail call i32 @ameth_cmp(%struct.evp_pkey_asn1_method_st** noundef %0, %struct.evp_pkey_asn1_method_st** noundef %1) #10
  ret i32 %call
}

declare %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_sort(%struct.stack_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !11, i64 8}
!9 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !11, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 4}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !5, i64 16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!9, !5, i64 24}
!18 = !{!10, !10, i64 0}
!19 = !{!20, !5, i64 8}
!20 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !21, i64 80, !5, i64 96, !5, i64 104, !11, i64 112, !5, i64 120, !11, i64 128, !22, i64 136}
!21 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!22 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!23 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 8, !24, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 40, i64 8, !4, i64 48, i64 8, !4, i64 56, i64 8, !4, i64 64, i64 8, !4, i64 72, i64 8, !4, i64 80, i64 8, !4, i64 88, i64 8, !4, i64 96, i64 8, !4, i64 104, i64 8, !4, i64 112, i64 8, !4, i64 120, i64 8, !4, i64 128, i64 8, !4, i64 136, i64 8, !4, i64 144, i64 8, !4, i64 152, i64 8, !4, i64 160, i64 8, !4, i64 168, i64 8, !4, i64 176, i64 8, !4, i64 184, i64 8, !4, i64 192, i64 8, !4, i64 200, i64 8, !4, i64 208, i64 8, !4, i64 216, i64 8, !4, i64 224, i64 8, !4, i64 232, i64 8, !4, i64 240, i64 8, !4, i64 248, i64 8, !4, i64 256, i64 8, !4, i64 264, i64 8, !4, i64 272, i64 8, !4, i64 280, i64 8, !4, i64 288, i64 8, !4, i64 296, i64 8, !4, i64 304, i64 8, !4, i64 312, i64 8, !4}
!24 = !{!11, !11, i64 0}
!25 = !{!9, !5, i64 32}
!26 = !{!9, !5, i64 40}
!27 = !{!9, !5, i64 48}
!28 = !{!9, !5, i64 56}
!29 = !{!9, !5, i64 88}
!30 = !{!9, !5, i64 96}
!31 = !{!9, !5, i64 64}
!32 = !{!9, !5, i64 72}
!33 = !{!9, !5, i64 80}
!34 = !{!9, !5, i64 112}
!35 = !{!9, !5, i64 120}
!36 = !{!9, !5, i64 128}
!37 = !{!9, !5, i64 136}
!38 = !{!9, !5, i64 144}
!39 = !{!9, !5, i64 152}
!40 = !{!9, !5, i64 168}
!41 = !{!9, !5, i64 176}
!42 = !{!9, !5, i64 104}
!43 = !{!9, !5, i64 208}
!44 = !{!9, !5, i64 200}
!45 = !{!9, !5, i64 216}
!46 = !{!9, !5, i64 224}
!47 = !{!9, !5, i64 232}
!48 = !{!9, !5, i64 240}
!49 = !{!9, !5, i64 248}
!50 = !{!9, !5, i64 256}
!51 = !{!9, !5, i64 264}
!52 = !{!9, !5, i64 272}
