; ModuleID = 'crypto/evp/pmeth_check.c'
source_filename = "crypto/evp/pmeth_check.c"
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

@.str = private unnamed_addr constant [25 x i8] c"crypto/evp/pmeth_check.c\00", align 1
@__func__.EVP_PKEY_private_check = private unnamed_addr constant [23 x i8] c"EVP_PKEY_private_check\00", align 1
@__func__.EVP_PKEY_pairwise_check = private unnamed_addr constant [24 x i8] c"EVP_PKEY_pairwise_check\00", align 1
@__func__.evp_pkey_public_check_combined = private unnamed_addr constant [31 x i8] c"evp_pkey_public_check_combined\00", align 1
@__func__.evp_pkey_param_check_combined = private unnamed_addr constant [30 x i8] c"evp_pkey_param_check_combined\00", align 1
@__func__.try_provided_check = private unnamed_addr constant [19 x i8] c"try_provided_check\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_public_check_combined(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_public_check_combined(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %checktype) unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_public_check_combined, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 154, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @try_provided_check(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 2, i32 noundef %checktype) #3
  %cmp2.not = icmp eq i32 %call, -1
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !12
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %not_supported, label %if.end7

if.end7:                                          ; preds = %if.end4
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !16
  %public_check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 30
  %3 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %public_check, align 8, !tbaa !17
  %cmp8.not = icmp eq i32 (%struct.evp_pkey_st*)* %3, null
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call12 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %0) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %cmp14 = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp14, label %not_supported, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %pkey_public_check = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 30
  %5 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %pkey_public_check, align 8, !tbaa !20
  %cmp16 = icmp eq i32 (%struct.evp_pkey_st*)* %5, null
  br i1 %cmp16, label %not_supported, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %call21 = tail call i32 %5(%struct.evp_pkey_st* noundef nonnull %0) #4
  br label %cleanup

not_supported:                                    ; preds = %if.end13, %lor.lhs.false, %if.end4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_pkey_public_check_combined, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %not_supported, %if.end18, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %not_supported ], [ %call12, %if.then9 ], [ %call21, %if.end18 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_public_check_quick(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_public_check_combined(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_param_check_combined(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_param_check_combined(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %checktype) unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.evp_pkey_param_check_combined, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 154, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @try_provided_check(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 132, i32 noundef %checktype) #3
  %cmp2.not = icmp eq i32 %call, -1
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !12
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %not_supported, label %if.end7

if.end7:                                          ; preds = %if.end4
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !16
  %param_check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 31
  %3 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %param_check, align 8, !tbaa !22
  %cmp8.not = icmp eq i32 (%struct.evp_pkey_st*)* %3, null
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call12 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %0) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %cmp14 = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp14, label %not_supported, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %pkey_param_check = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 31
  %5 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %pkey_param_check, align 8, !tbaa !23
  %cmp16 = icmp eq i32 (%struct.evp_pkey_st*)* %5, null
  br i1 %cmp16, label %not_supported, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %call21 = tail call i32 %5(%struct.evp_pkey_st* noundef nonnull %0) #4
  br label %cleanup

not_supported:                                    ; preds = %if.end13, %lor.lhs.false, %if.end4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.evp_pkey_param_check_combined, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %not_supported, %if.end18, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %not_supported ], [ %call12, %if.then9 ], [ %call21, %if.end18 ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_param_check_quick(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_param_check_combined(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 1) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @try_provided_check(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 1, i32 noundef 0) #3
  %cmp2.not = icmp eq i32 %call, -1
  br i1 %cmp2.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink9 = phi i32 [ 142, %entry ], [ 151, %if.end ]
  %.sink = phi i32 [ 154, %entry ], [ 150, %if.end ]
  %retval.0.ph = phi i32 [ 0, %entry ], [ -2, %if.end ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EVP_PKEY_private_check, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @try_provided_check(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx, i32 noundef %selection, i32 noundef %checktype) unnamed_addr #0 {
entry:
  %keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_keymgmt_st** %keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %keymgmt1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt1, align 8, !tbaa !24
  %cmp = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  store %struct.evp_keymgmt_st* %1, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !25
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !4
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %4 = load i8*, i8** %propquery, align 8, !tbaa !27
  %call = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %2, %struct.ossl_lib_ctx_st* noundef %3, %struct.evp_keymgmt_st** noundef nonnull %keymgmt, i8* noundef %4) #4
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.try_provided_check, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !25
  %call6 = call i32 @evp_keymgmt_validate(%struct.evp_keymgmt_st* noundef %5, i8* noundef nonnull %call, i32 noundef %selection, i32 noundef %checktype) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %call6, %if.end5 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef %ctx) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %pkey1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey1, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_pairwise_check, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 154, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @try_provided_check(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i32 noundef 3, i32 noundef 0) #3
  %cmp2.not = icmp eq i32 %call, -1
  br i1 %cmp2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !12
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %not_supported, label %if.end7

if.end7:                                          ; preds = %if.end4
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %2 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !16
  %check = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %2, i64 0, i32 29
  %3 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %check, align 8, !tbaa !28
  %cmp8.not = icmp eq i32 (%struct.evp_pkey_st*)* %3, null
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call12 = tail call i32 %3(%struct.evp_pkey_st* noundef nonnull %0) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %0, i64 0, i32 2
  %4 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !19
  %cmp14 = icmp eq %struct.evp_pkey_asn1_method_st* %4, null
  br i1 %cmp14, label %not_supported, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %pkey_check = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %4, i64 0, i32 29
  %5 = load i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)** %pkey_check, align 8, !tbaa !29
  %cmp16 = icmp eq i32 (%struct.evp_pkey_st*)* %5, null
  br i1 %cmp16, label %not_supported, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %call21 = tail call i32 %5(%struct.evp_pkey_st* noundef nonnull %0) #4
  br label %cleanup

not_supported:                                    ; preds = %if.end13, %lor.lhs.false, %if.end4
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EVP_PKEY_pairwise_check, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %not_supported, %if.end18, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -2, %not_supported ], [ %call12, %if.then9 ], [ %call21, %if.end18 ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @evp_keymgmt_validate(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 136}
!5 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !10, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !6, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !14, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !15, i64 136}
!14 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!16 = !{!5, !9, i64 120}
!17 = !{!18, !9, i64 232}
!18 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!19 = !{!13, !9, i64 8}
!20 = !{!21, !9, i64 232}
!21 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312}
!22 = !{!18, !9, i64 240}
!23 = !{!21, !9, i64 240}
!24 = !{!5, !9, i64 32}
!25 = !{!9, !9, i64 0}
!26 = !{!5, !9, i64 8}
!27 = !{!5, !9, i64 16}
!28 = !{!18, !9, i64 224}
!29 = !{!21, !9, i64 224}
