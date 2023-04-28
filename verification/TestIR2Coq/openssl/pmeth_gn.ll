; ModuleID = 'crypto/evp/pmeth_gn.c'
source_filename = "crypto/evp/pmeth_gn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, {}*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, {}*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.fake_import_data_st = type { i32 (%struct.ossl_param_st*, i8*)*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/pmeth_gn.c\00", align 1
@__func__.EVP_PKEY_generate = private unnamed_addr constant [18 x i8] c"EVP_PKEY_generate\00", align 1
@__func__.EVP_PKEY_paramgen = private unnamed_addr constant [18 x i8] c"EVP_PKEY_paramgen\00", align 1
@__func__.EVP_PKEY_keygen = private unnamed_addr constant [16 x i8] c"EVP_PKEY_keygen\00", align 1
@__func__.EVP_PKEY_fromdata = private unnamed_addr constant [18 x i8] c"EVP_PKEY_fromdata\00", align 1
@__func__.EVP_PKEY_export = private unnamed_addr constant [16 x i8] c"EVP_PKEY_export\00", align 1
@__func__.gen_init = private unnamed_addr constant [9 x i8] c"gen_init\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"potential\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"iteration\00", align 1
@__func__.fromdata_init = private unnamed_addr constant [14 x i8] c"fromdata_init\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @gen_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @gen_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %operation) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %not_supported, label %if.end

if.end:                                           ; preds = %entry
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #6
  %operation1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 %operation, i32* %operation1, align 8, !tbaa !4
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !12
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp2, label %legacy, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %gen_init = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %0, i64 0, i32 13
  %1 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %gen_init, align 8, !tbaa !13
  %cmp4 = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %1, null
  br i1 %cmp4, label %legacy, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  switch i32 %operation, label %if.end6.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb9
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  %op15.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx17.phi.trans.insert = bitcast %union.anon* %op15.phi.trans.insert to i8**
  %.pre = load i8*, i8** %genctx17.phi.trans.insert, align 8, !tbaa !15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %call = tail call i8* @evp_keymgmt_gen_init(%struct.evp_keymgmt_st* noundef nonnull %0, i32 noundef 132, %struct.ossl_param_st* noundef null) #6
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op to i8**
  store i8* %call, i8** %genctx, align 8, !tbaa !15
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  %call11 = tail call i8* @evp_keymgmt_gen_init(%struct.evp_keymgmt_st* noundef nonnull %0, i32 noundef 3, %struct.ossl_param_st* noundef null) #6
  %op12 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx14 = bitcast %union.anon* %op12 to i8**
  store i8* %call11, i8** %genctx14, align 8, !tbaa !15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6.sw.epilog_crit_edge, %sw.bb9, %sw.bb
  %2 = phi i8* [ %.pre, %if.end6.sw.epilog_crit_edge ], [ %call11, %sw.bb9 ], [ %call, %sw.bb ]
  %cmp18 = icmp eq i8* %2, null
  br i1 %cmp18, label %if.then19, label %if.end59

if.then19:                                        ; preds = %sw.epilog
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.gen_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #6
  br label %end

legacy:                                           ; preds = %if.end, %lor.lhs.false
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %3 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !16
  %cmp21 = icmp eq %struct.evp_pkey_method_st* %3, null
  br i1 %cmp21, label %not_supported, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %legacy
  switch i32 %operation, label %if.end59 [
    i32 2, label %land.lhs.true
    i32 4, label %land.lhs.true28
  ]

land.lhs.true:                                    ; preds = %lor.lhs.false22
  %paramgen = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %3, i64 0, i32 6
  %4 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %paramgen, align 8, !tbaa !17
  %cmp25 = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %4, null
  br i1 %cmp25, label %not_supported, label %sw.bb33

land.lhs.true28:                                  ; preds = %lor.lhs.false22
  %keygen = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %3, i64 0, i32 8
  %5 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %keygen, align 8, !tbaa !19
  %cmp30 = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)* %5, null
  br i1 %cmp30, label %not_supported, label %sw.bb43

sw.bb33:                                          ; preds = %land.lhs.true
  %paramgen_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %3, i64 0, i32 5
  %paramgen_init35 = bitcast {}** %paramgen_init to i32 (%struct.evp_pkey_ctx_st*)**
  %6 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %paramgen_init35, align 8, !tbaa !20
  %cmp36.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %6, null
  br i1 %cmp36.not, label %if.end59, label %if.then37

if.then37:                                        ; preds = %sw.bb33
  %call41 = tail call i32 %6(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #6
  br label %end

sw.bb43:                                          ; preds = %land.lhs.true28
  %keygen_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %3, i64 0, i32 7
  %keygen_init45 = bitcast {}** %keygen_init to i32 (%struct.evp_pkey_ctx_st*)**
  %7 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %keygen_init45, align 8, !tbaa !21
  %cmp46.not = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %7, null
  br i1 %cmp46.not, label %if.end59, label %if.then47

if.then47:                                        ; preds = %sw.bb43
  %call51 = tail call i32 %7(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #6
  br label %end

end:                                              ; preds = %if.then37, %if.then47, %if.then19, %not_supported
  %ret.0 = phi i32 [ -2, %not_supported ], [ %call51, %if.then47 ], [ %call41, %if.then37 ], [ 0, %if.then19 ]
  %cmp54 = icmp slt i32 %ret.0, 1
  %cmp56 = icmp ne %struct.evp_pkey_ctx_st* %ctx, null
  %or.cond = and i1 %cmp56, %cmp54
  br i1 %or.cond, label %if.then57, label %if.end59

if.then57:                                        ; preds = %end
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #6
  %operation58 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 0, i32* %operation58, align 8, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %lor.lhs.false22, %sw.epilog, %sw.bb33, %sw.bb43, %if.then57, %end
  %ret.094 = phi i32 [ %ret.0, %if.then57 ], [ %ret.0, %end ], [ 1, %sw.bb43 ], [ 1, %sw.bb33 ], [ 1, %sw.epilog ], [ 1, %lor.lhs.false22 ]
  ret i32 %ret.094

not_supported:                                    ; preds = %legacy, %land.lhs.true, %land.lhs.true28, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.gen_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #6
  br label %end
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @gen_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 4) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st** noundef %ppkey) local_unnamed_addr #0 {
entry:
  %gentmp = alloca [2 x i32], align 4
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast [2 x i32]* %gentmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp = icmp eq %struct.evp_pkey_st** %ppkey, null
  br i1 %cmp, label %cleanup60, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp1, label %not_supported, label %if.end3

if.end3:                                          ; preds = %if.end
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !4
  %and = and i32 %1, 6
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %if.then55.thread, label %if.end6

if.end6:                                          ; preds = %if.end3
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  %cmp7 = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp7, label %if.end9, label %if.end12

if.end9:                                          ; preds = %if.end6
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  store %struct.evp_pkey_st* %call, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  %cmp10 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_generate, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup60

if.end12:                                         ; preds = %if.end6, %if.end9
  %allocated_pkey.0105 = phi %struct.evp_pkey_st* [ %call, %if.end9 ], [ null, %if.end6 ]
  %3 = phi %struct.evp_pkey_st* [ %call, %if.end9 ], [ %2, %if.end6 ]
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %genctx = bitcast %union.anon* %op to i8**
  %4 = load i8*, i8** %genctx, align 8, !tbaa !15
  %cmp13 = icmp eq i8* %4, null
  br i1 %cmp13, label %legacy, label %if.end15

if.end15:                                         ; preds = %if.end12
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %gentmp, i64 0, i64 0
  %keygen_info = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 9
  store i32* %arraydecay, i32** %keygen_info, align 8, !tbaa !23
  %keygen_info_count = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  store i32 2, i32* %keygen_info_count, align 8, !tbaa !24
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !25
  %cmp16.not = icmp eq %struct.evp_pkey_st* %5, null
  br i1 %cmp16.not, label %land.end, label %if.then17

if.then17:                                        ; preds = %if.end15
  %6 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %keymgmt18 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt18, align 8, !tbaa !12
  store %struct.evp_keymgmt_st* %7, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !22
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %9 = load i8*, i8** %propquery, align 8, !tbaa !27
  %call20 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef nonnull %5, %struct.ossl_lib_ctx_st* noundef %8, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %9) #6
  %10 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !22
  %cmp21 = icmp eq %struct.evp_keymgmt_st* %10, null
  br i1 %cmp21, label %cleanup, label %if.end30

cleanup:                                          ; preds = %if.then17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  br label %not_supported

if.end30:                                         ; preds = %if.then17
  %11 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt18, align 8, !tbaa !12
  %12 = load i8*, i8** %genctx, align 8, !tbaa !15
  %call28 = call i32 @evp_keymgmt_gen_set_template(%struct.evp_keymgmt_st* noundef %11, i8* noundef %12, i8* noundef %call20) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %land.end.thread, label %if.end30.land.end_crit_edge

if.end30.land.end_crit_edge:                      ; preds = %if.end30
  %.pre = load i8*, i8** %genctx, align 8, !tbaa !15
  br label %land.end

land.end.thread:                                  ; preds = %if.end30
  store i32* null, i32** %keygen_info, align 8, !tbaa !23
  br label %if.end40

land.end:                                         ; preds = %if.end30.land.end_crit_edge, %if.end15
  %13 = phi i8* [ %.pre, %if.end30.land.end_crit_edge ], [ %4, %if.end15 ]
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  %keymgmt31 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %15 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt31, align 8, !tbaa !12
  %16 = bitcast %struct.evp_pkey_ctx_st* %ctx to i8*
  %call35 = call i8* @evp_keymgmt_util_gen(%struct.evp_pkey_st* noundef %14, %struct.evp_keymgmt_st* noundef %15, i8* noundef %13, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @ossl_callback_to_pkey_gencb, i8* noundef nonnull %16) #6
  %cmp36.not = icmp eq i8* %call35, null
  store i32* null, i32** %keygen_info, align 8, !tbaa !23
  br i1 %cmp36.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %land.end
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  call void @evp_pkey_free_legacy(%struct.evp_pkey_st* noundef %17) #6
  br label %if.end40

if.end40:                                         ; preds = %land.end.thread, %if.then39, %land.end
  %land.ext118 = phi i32 [ 0, %land.end.thread ], [ 1, %if.then39 ], [ 0, %land.end ]
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 11
  %18 = load i32, i32* %legacy_keytype, align 4, !tbaa !28
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %19, i64 0, i32 0
  store i32 %18, i32* %type, align 8, !tbaa !29
  br label %end

legacy:                                           ; preds = %if.end12
  %pkey41 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey41, align 8, !tbaa !25
  %cmp42.not = icmp eq %struct.evp_pkey_st* %20, null
  br i1 %cmp42.not, label %if.end48, label %land.lhs.true

land.lhs.true:                                    ; preds = %legacy
  %keymgmt44 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %20, i64 0, i32 13
  %21 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt44, align 8, !tbaa !33
  %cmp45.not = icmp eq %struct.evp_keymgmt_st* %21, null
  br i1 %cmp45.not, label %if.end48, label %not_accessible

if.end48:                                         ; preds = %land.lhs.true, %legacy
  %22 = load i32, i32* %operation, align 8, !tbaa !4
  switch i32 %22, label %not_supported [
    i32 2, label %sw.bb
    i32 4, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end48
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %23 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !16
  %paramgen = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %23, i64 0, i32 6
  %24 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %paramgen, align 8, !tbaa !17
  %call50 = tail call i32 %24(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st* noundef nonnull %3) #6
  br label %end

sw.bb51:                                          ; preds = %if.end48
  %pmeth52 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %25 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth52, align 8, !tbaa !16
  %keygen = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %25, i64 0, i32 8
  %26 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)** %keygen, align 8, !tbaa !19
  %call53 = tail call i32 %26(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st* noundef nonnull %3) #6
  br label %end

end:                                              ; preds = %sw.bb, %sw.bb51, %if.end40
  %ret.2 = phi i32 [ %call53, %sw.bb51 ], [ %call50, %sw.bb ], [ %land.ext118, %if.end40 ]
  %cmp54 = icmp slt i32 %ret.2, 1
  br i1 %cmp54, label %if.then55, label %cleanup60

if.then55:                                        ; preds = %not_accessible, %not_supported, %end
  %allocated_pkey.1123 = phi %struct.evp_pkey_st* [ %allocated_pkey.0105, %end ], [ %allocated_pkey.0105, %not_accessible ], [ %allocated_pkey.2, %not_supported ]
  %ret.2122 = phi i32 [ %ret.2, %end ], [ -1, %not_accessible ], [ -2, %not_supported ]
  %cmp56.not = icmp eq %struct.evp_pkey_st* %allocated_pkey.1123, null
  br i1 %cmp56.not, label %if.end58, label %if.then57

if.then57:                                        ; preds = %if.then55
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  br label %if.end58

if.end58:                                         ; preds = %if.then55.thread, %if.then57, %if.then55
  %ret.2122128 = phi i32 [ -1, %if.then55.thread ], [ %ret.2122, %if.then57 ], [ %ret.2122, %if.then55 ]
  %allocated_pkey.1123127 = phi %struct.evp_pkey_st* [ null, %if.then55.thread ], [ %allocated_pkey.1123, %if.then57 ], [ null, %if.then55 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %allocated_pkey.1123127) #6
  br label %cleanup60

not_supported:                                    ; preds = %cleanup, %if.end48, %if.end
  %allocated_pkey.2 = phi %struct.evp_pkey_st* [ null, %if.end ], [ %allocated_pkey.0105, %if.end48 ], [ %allocated_pkey.0105, %cleanup ]
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_generate, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #6
  br label %if.then55

if.then55.thread:                                 ; preds = %if.end3
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_generate, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #6
  br label %if.end58

not_accessible:                                   ; preds = %land.lhs.true
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_generate, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 204, i8* noundef null) #6
  br label %if.then55

cleanup60:                                        ; preds = %end, %if.end58, %entry, %if.then11
  %retval.0 = phi i32 [ -1, %if.then11 ], [ -1, %entry ], [ %ret.2122128, %if.end58 ], [ %ret.2, %end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @evp_keymgmt_gen_set_template(%struct.evp_keymgmt_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @evp_keymgmt_util_gen(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef, i8* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_callback_to_pkey_gencb(%struct.ossl_param_st* noundef %params, i8* noundef %arg) #0 {
entry:
  %p = alloca i32, align 4
  %n = alloca i32, align 4
  %0 = bitcast i8* %arg to %struct.evp_pkey_ctx_st*
  %1 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 -1, i32* %p, align 4, !tbaa !34
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 -1, i32* %n, align 4, !tbaa !34
  %pkey_gencb = getelementptr inbounds i8, i8* %arg, i64 96
  %pkey_gencb1 = bitcast i8* %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  %3 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb1, align 8, !tbaa !35
  %cmp = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %3, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp2 = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call, i32* noundef nonnull %p) #6
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp7 = icmp eq %struct.ossl_param_st* %call6, null
  br i1 %cmp7, label %cleanup, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end5
  %call9 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call6, i32* noundef nonnull %n) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false8
  %4 = load i32, i32* %p, align 4, !tbaa !34
  %keygen_info = getelementptr inbounds i8, i8* %arg, i64 104
  %5 = bitcast i8* %keygen_info to i32**
  %6 = load i32*, i32** %5, align 8, !tbaa !23
  store i32 %4, i32* %6, align 4, !tbaa !34
  %7 = load i32, i32* %n, align 4, !tbaa !34
  %arrayidx14 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 %7, i32* %arrayidx14, align 4, !tbaa !34
  %8 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb1, align 8, !tbaa !35
  %call17 = call i32 %8(%struct.evp_pkey_ctx_st* noundef nonnull %0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false8, %if.end, %lor.lhs.false, %entry, %if.end12
  %retval.0 = phi i32 [ %call17, %if.end12 ], [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %lor.lhs.false8 ], [ 0, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  ret i32 %retval.0
}

declare void @evp_pkey_free_legacy(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st** noundef %ppkey) local_unnamed_addr #0 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_paramgen, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st** noundef %ppkey) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.evp_pkey_st** noundef %ppkey) local_unnamed_addr #0 {
entry:
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_keygen, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, %struct.evp_pkey_st** noundef %ppkey) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* nocapture noundef writeonly %ctx, i32 (%struct.evp_pkey_ctx_st*)* noundef %cb) local_unnamed_addr #3 {
entry:
  %pkey_gencb = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 8
  %pkey_gencb1 = bitcast {}** %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  store i32 (%struct.evp_pkey_ctx_st*)* %cb, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb1, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.evp_pkey_ctx_st*)* @EVP_PKEY_CTX_get_cb(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %pkey_gencb = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 8
  %pkey_gencb1 = bitcast {}** %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  %0 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb1, align 8, !tbaa !35
  ret i32 (%struct.evp_pkey_ctx_st*)* %0
}

; Function Attrs: noinline nounwind uwtable
define void @evp_pkey_set_cb_translate(%struct.bn_gencb_st* noundef %cb, %struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_ctx_st* %ctx to i8*
  tail call void @BN_GENCB_set(%struct.bn_gencb_st* noundef %cb, i32 (i32, i32, %struct.bn_gencb_st*)* noundef nonnull @trans_cb, i8* noundef %0) #6
  ret void
}

declare void @BN_GENCB_set(%struct.bn_gencb_st* noundef, i32 (i32, i32, %struct.bn_gencb_st*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @trans_cb(i32 noundef %a, i32 noundef %b, %struct.bn_gencb_st* noundef %gcb) #0 {
entry:
  %call = tail call i8* @BN_GENCB_get_arg(%struct.bn_gencb_st* noundef %gcb) #6
  %0 = bitcast i8* %call to %struct.evp_pkey_ctx_st*
  %keygen_info = getelementptr inbounds i8, i8* %call, i64 104
  %1 = bitcast i8* %keygen_info to i32**
  %2 = load i32*, i32** %1, align 8, !tbaa !23
  store i32 %a, i32* %2, align 4, !tbaa !34
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 1
  store i32 %b, i32* %arrayidx2, align 4, !tbaa !34
  %pkey_gencb = getelementptr inbounds i8, i8* %call, i64 96
  %pkey_gencb3 = bitcast i8* %pkey_gencb to i32 (%struct.evp_pkey_ctx_st*)**
  %3 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pkey_gencb3, align 8, !tbaa !35
  %call4 = tail call i32 %3(%struct.evp_pkey_ctx_st* noundef %0) #6
  ret i32 %call4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %idx) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %idx, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %keygen_info_count = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  %0 = load i32, i32* %keygen_info_count, align 8, !tbaa !24
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %idx, 0
  br i1 %cmp1, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %keygen_info_count2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 10
  %1 = load i32, i32* %keygen_info_count2, align 8, !tbaa !24
  %cmp3 = icmp slt i32 %1, %idx
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %keygen_info = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 9
  %2 = load i32*, i32** %keygen_info, align 8, !tbaa !23
  %idxprom11 = zext i32 %idx to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom11
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !34
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %3, %if.end5 ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @EVP_PKEY_new_mac_key(i32 noundef %type, %struct.engine_st* noundef %e, i8* noundef %key, i32 noundef %keylen) local_unnamed_addr #0 {
entry:
  %mac_key = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %mac_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %mac_key, align 8, !tbaa !22
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %type, %struct.engine_st* noundef %e) #6
  %tobool.not = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #5
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %merr, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @EVP_PKEY_CTX_set_mac_key(%struct.evp_pkey_ctx_st* noundef nonnull %call, i8* noundef %key, i32 noundef %keylen) #6
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %merr, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef nonnull %mac_key) #5
  br label %merr

merr:                                             ; preds = %if.end7, %if.end3, %if.end
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call) #6
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %mac_key, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %entry, %merr
  %retval.0 = phi %struct.evp_pkey_st* [ %1, %merr ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret %struct.evp_pkey_st* %retval.0
}

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_mac_key(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @fromdata_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 8) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fromdata_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %operation) unnamed_addr #0 {
entry:
  %cond = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cond, label %if.end9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 3
  %0 = load i8*, i8** %keytype, align 8, !tbaa !36
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then7, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #6
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !12
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2, label %if.then7, label %if.end4

if.end4:                                          ; preds = %if.end
  %operation5 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 %operation, i32* %operation5, align 8, !tbaa !4
  br label %return

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %operation8 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 0, i32* %operation8, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.then7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.fromdata_init, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #6
  br label %return

return:                                           ; preds = %if.end9, %if.end4
  %retval.0 = phi i32 [ -2, %if.end9 ], [ 1, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef readonly %ctx, %struct.evp_pkey_st** noundef %ppkey, i32 noundef %selection, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !4
  %and = and i32 %0, 8
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_fromdata, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp eq %struct.evp_pkey_st** %ppkey, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  %cmp5 = icmp eq %struct.evp_pkey_st* %1, null
  br i1 %cmp5, label %if.end7, label %if.end10

if.end7:                                          ; preds = %if.end4
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  store %struct.evp_pkey_st* %call, %struct.evp_pkey_st** %ppkey, align 8, !tbaa !22
  %cmp8 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 381, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EVP_PKEY_fromdata, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end4, %if.end7
  %2 = phi %struct.evp_pkey_st* [ %call, %if.end7 ], [ %1, %if.end4 ]
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !12
  %call11 = tail call i8* @evp_keymgmt_util_fromdata(%struct.evp_pkey_st* noundef nonnull %2, %struct.evp_keymgmt_st* noundef %3, i32 noundef %selection, %struct.ossl_param_st* noundef %params) #6
  %cmp12 = icmp ne i8* %call11, null
  %. = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end, %if.then9, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -1, %if.then9 ], [ -1, %if.end ], [ %., %if.end10 ]
  ret i32 %retval.0
}

declare i8* @evp_keymgmt_util_fromdata(%struct.evp_pkey_st* noundef, %struct.evp_keymgmt_st* noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_PKEY_fromdata_settable(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %selection) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @fromdata_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #5
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !12
  %call1 = tail call %struct.ossl_param_st* @evp_keymgmt_import_types(%struct.evp_keymgmt_st* noundef %0, i32 noundef %selection) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.ossl_param_st* [ %call1, %if.then ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare %struct.ossl_param_st* @evp_keymgmt_import_types(%struct.evp_keymgmt_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_todata(%struct.evp_pkey_st* noundef %pkey, i32 noundef %selection, %struct.ossl_param_st** noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_param_st** %params, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.ossl_param_st** %params to i8*
  %call = tail call i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %pkey, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @ossl_pkey_todata_cb, i8* noundef nonnull %0) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_export(%struct.evp_pkey_st* noundef %pkey, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef %export_cb, i8* noundef %export_cbarg) local_unnamed_addr #0 {
entry:
  %data = alloca %struct.fake_import_data_st, align 8
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EVP_PKEY_export, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !29
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !33
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %2 = bitcast %struct.fake_import_data_st* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7
  %export_cb4 = getelementptr inbounds %struct.fake_import_data_st, %struct.fake_import_data_st* %data, i64 0, i32 0
  store i32 (%struct.ossl_param_st*, i8*)* %export_cb, i32 (%struct.ossl_param_st*, i8*)** %export_cb4, align 8, !tbaa !37
  %export_cbarg5 = getelementptr inbounds %struct.fake_import_data_st, %struct.fake_import_data_st* %data, i64 0, i32 1
  store i8* %export_cbarg, i8** %export_cbarg5, align 8, !tbaa !39
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 2
  %3 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !40
  %export_to = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %3, i64 0, i32 37
  %4 = load i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)** %export_to, align 8, !tbaa !41
  %call = call i32 %4(%struct.evp_pkey_st* noundef nonnull %pkey, i8* noundef nonnull %2, i32 (i8*, i32, %struct.ossl_param_st*)* noundef nonnull @pkey_fake_import, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %call7 = tail call i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %selection, i32 (%struct.ossl_param_st*, i8*)* noundef %export_cb, i8* noundef %export_cbarg) #6
  br label %return

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then3 ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ossl_pkey_todata_cb(%struct.ossl_param_st* noundef %params, i8* nocapture noundef writeonly %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.ossl_param_st**
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef %params) #6
  store %struct.ossl_param_st* %call, %struct.ossl_param_st** %0, align 8, !tbaa !22
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_fake_import(i8* nocapture noundef readonly %fake_keydata, i32 noundef %ignored_selection, %struct.ossl_param_st* noundef %params) #0 {
entry:
  %export_cb = bitcast i8* %fake_keydata to i32 (%struct.ossl_param_st*, i8*)**
  %0 = load i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)** %export_cb, align 8, !tbaa !37
  %export_cbarg = getelementptr inbounds i8, i8* %fake_keydata, i64 8
  %1 = bitcast i8* %export_cbarg to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !39
  %call = tail call i32 %0(%struct.ossl_param_st* noundef %params, i8* noundef %2) #6
  ret i32 %call
}

declare i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i8* @evp_keymgmt_gen_init(%struct.evp_keymgmt_st* noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #2

declare i8* @BN_GENCB_get_arg(%struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !10, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !6, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!5, !9, i64 32}
!13 = !{!14, !9, i64 96}
!14 = !{!"evp_keymgmt_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!15 = !{!7, !7, i64 0}
!16 = !{!5, !9, i64 120}
!17 = !{!18, !9, i64 40}
!18 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!19 = !{!18, !9, i64 56}
!20 = !{!18, !9, i64 32}
!21 = !{!18, !9, i64 48}
!22 = !{!9, !9, i64 0}
!23 = !{!5, !9, i64 104}
!24 = !{!5, !6, i64 112}
!25 = !{!5, !9, i64 136}
!26 = !{!5, !9, i64 8}
!27 = !{!5, !9, i64 16}
!28 = !{!5, !6, i64 116}
!29 = !{!30, !6, i64 0}
!30 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !31, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !32, i64 136}
!31 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!32 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!33 = !{!30, !9, i64 96}
!34 = !{!6, !6, i64 0}
!35 = !{!5, !9, i64 96}
!36 = !{!5, !9, i64 24}
!37 = !{!38, !9, i64 0}
!38 = !{!"fake_import_data_st", !9, i64 0, !9, i64 8}
!39 = !{!38, !9, i64 8}
!40 = !{!30, !9, i64 8}
!41 = !{!42, !9, i64 288}
!42 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312}
