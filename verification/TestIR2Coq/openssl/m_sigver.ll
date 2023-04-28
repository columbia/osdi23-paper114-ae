; ModuleID = 'crypto/evp/m_sigver.c'
source_filename = "crypto/evp/m_sigver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_signature_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*, i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/evp/m_sigver.c\00", align 1
@__func__.EVP_DigestSignUpdate = private unnamed_addr constant [21 x i8] c"EVP_DigestSignUpdate\00", align 1
@__func__.EVP_DigestVerifyUpdate = private unnamed_addr constant [23 x i8] c"EVP_DigestVerifyUpdate\00", align 1
@__func__.EVP_DigestSignFinal = private unnamed_addr constant [20 x i8] c"EVP_DigestSignFinal\00", align 1
@__func__.EVP_DigestVerifyFinal = private unnamed_addr constant [22 x i8] c"EVP_DigestVerifyFinal\00", align 1
@__func__.do_sigver_init = private unnamed_addr constant [15 x i8] c"do_sigver_init\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@__func__.update = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, i8* noundef %mdname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %props, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_sigver_init(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, %struct.evp_md_st* noundef null, i8* noundef %mdname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %props, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey, i32 noundef 0, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_sigver_init(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef writeonly %pctx, %struct.evp_md_st* noundef %type, i8* noundef %mdname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %props, %struct.engine_st* noundef %e, %struct.evp_pkey_st* noundef %pkey, i32 noundef %ver, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %locmdname = alloca [80 x i8], align 16
  %def_nid = alloca i32, align 4
  %0 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %locmdname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %algctx = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 7
  %2 = load i8*, i8** %algctx, align 8, !tbaa !8
  %cmp.not = icmp eq i8* %2, null
  br i1 %cmp.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !11
  %cmp1.not = icmp eq %struct.evp_md_st* %3, null
  br i1 %cmp1.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_sigver_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %freectx = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %3, i64 0, i32 24
  %4 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !12
  %cmp6.not = icmp eq void (i8*)* %4, null
  br i1 %cmp6.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void %4(i8* noundef nonnull %2) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  store i8* null, i8** %algctx, align 8, !tbaa !8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %entry
  %pctx15 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %5 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %cmp16 = icmp eq %struct.evp_pkey_ctx_st* %5, null
  br i1 %cmp16, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.end14
  %cmp19 = icmp eq %struct.engine_st* %e, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef %pkey, i8* noundef %props) #8
  br label %if.end26

if.else:                                          ; preds = %if.then18
  %call23 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %pkey, %struct.engine_st* noundef nonnull %e) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.else
  %storemerge = phi %struct.evp_pkey_ctx_st* [ %call23, %if.else ], [ %call, %if.then21 ]
  store %struct.evp_pkey_ctx_st* %storemerge, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %cmp28 = icmp eq %struct.evp_pkey_ctx_st* %storemerge, null
  br i1 %cmp28, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end14, %if.end26
  %6 = phi %struct.evp_pkey_ctx_st* [ %storemerge, %if.end26 ], [ %5, %if.end14 ]
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %6) #8
  %cmp33 = icmp eq i8* %props, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %propquery, align 8, !tbaa !16
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31
  %props.addr.0 = phi i8* [ %7, %if.then35 ], [ %props, %if.end31 ]
  %call37 = tail call i32 @ERR_set_mark() #8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 4
  %8 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !19
  %cmp38 = icmp eq %struct.evp_keymgmt_st* %8, null
  br i1 %cmp38, label %legacy, label %if.end41

if.end41:                                         ; preds = %if.end36
  store %struct.evp_keymgmt_st* %8, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %pkey43 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 14
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey43, align 8, !tbaa !20
  %libctx44 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 1
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx44, align 8, !tbaa !21
  %propquery45 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 2
  %11 = load i8*, i8** %propquery45, align 8, !tbaa !16
  %call46 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %9, %struct.ossl_lib_ctx_st* noundef %10, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %11) #8
  %cmp47 = icmp eq i8* %call46, null
  br i1 %cmp47, label %err.sink.split.sink.split, label %if.end51

if.end51:                                         ; preds = %if.end41
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %call52 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %12) #8
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %err.sink.split.sink.split, label %if.end55

if.end55:                                         ; preds = %if.end51
  %13 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !19
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %13) #8
  %14 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  store %struct.evp_keymgmt_st* %14, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !19
  %query_operation_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %14, i64 0, i32 20
  %15 = load i8* (i32)*, i8* (i32)** %query_operation_name, align 8, !tbaa !22
  %cmp59.not = icmp eq i8* (i32)* %15, null
  br i1 %cmp59.not, label %if.then68, label %if.end65

if.end65:                                         ; preds = %if.end55
  %call64 = call i8* %15(i32 noundef 12) #8
  %cmp66 = icmp eq i8* %call64, null
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end55, %if.end65
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 3
  %16 = load i8*, i8** %keytype, align 8, !tbaa !24
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65
  %supported_sig.1 = phi i8* [ %16, %if.then68 ], [ %call64, %if.end65 ]
  %17 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx44, align 8, !tbaa !21
  %18 = load i8*, i8** %propquery45, align 8, !tbaa !16
  %call72 = call %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef %17, i8* noundef %supported_sig.1, i8* noundef %18) #8
  %cmp73 = icmp eq %struct.evp_signature_st* %call72, null
  br i1 %cmp73, label %if.then80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end69
  %19 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !19
  %call76 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %19) #8
  %call77 = call %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef nonnull %call72) #8
  %cmp78.not = icmp eq %struct.ossl_provider_st* %call76, %call77
  br i1 %cmp78.not, label %if.end81, label %if.then80

if.then80:                                        ; preds = %lor.lhs.false, %if.end69
  call void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef %call72) #8
  br label %legacy

if.end81:                                         ; preds = %lor.lhs.false
  %call82 = call i32 @ERR_pop_to_mark() #8
  %cmp83.not = icmp eq %struct.evp_pkey_ctx_st** %pctx, null
  br i1 %cmp83.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end81
  store %struct.evp_pkey_ctx_st* %6, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end81
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 5
  %signature87 = bitcast %union.anon* %op to %struct.evp_signature_st**
  store %struct.evp_signature_st* %call72, %struct.evp_signature_st** %signature87, align 8, !tbaa !25
  %tobool88.not = icmp eq i32 %ver, 0
  %cond = select i1 %tobool88.not, i32 128, i32 256
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 0
  store i32 %cond, i32* %operation, align 8, !tbaa !26
  %newctx = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call72, i64 0, i32 6
  %20 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %newctx, align 8, !tbaa !27
  %prov = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call72, i64 0, i32 3
  %21 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !29
  %call89 = call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %21) #8
  %call90 = call i8* %20(i8* noundef %call89, i8* noundef %props.addr.0) #8
  %22 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 5, i32 0, i32 1
  store i8* %call90, i8** %22, align 8, !tbaa !25
  %cmp97 = icmp eq i8* %call90, null
  br i1 %cmp97, label %err.sink.split, label %if.end100

if.end100:                                        ; preds = %if.end86
  %cmp101.not = icmp eq %struct.evp_md_st* %type, null
  br i1 %cmp101.not, label %if.else110, label %if.then103

if.then103:                                       ; preds = %if.end100
  %reqdigest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_md_st* %type, %struct.evp_md_st** %reqdigest, align 8, !tbaa !30
  %cmp104 = icmp eq i8* %mdname, null
  br i1 %cmp104, label %if.then106, label %if.end148

if.then106:                                       ; preds = %if.then103
  %call107 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %type) #8
  %call108 = call fastcc i8* @canon_mdname(i8* noundef %call107) #6
  br label %if.end148

if.else110:                                       ; preds = %if.end100
  %cmp111 = icmp eq i8* %mdname, null
  br i1 %cmp111, label %if.then113, label %if.then124

if.then113:                                       ; preds = %if.else110
  %23 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %call114 = call i32 @evp_keymgmt_util_get_deflt_digest_name(%struct.evp_keymgmt_st* noundef %23, i8* noundef nonnull %call46, i8* noundef nonnull %1, i64 noundef 80) #8
  %cmp115 = icmp sgt i32 %call114, 0
  br i1 %cmp115, label %if.end121, label %if.end148

if.end121:                                        ; preds = %if.then113
  %call119 = call fastcc i8* @canon_mdname(i8* noundef nonnull %1) #6
  %cmp122.not = icmp eq i8* %call119, null
  br i1 %cmp122.not, label %if.end148, label %if.then124

if.then124:                                       ; preds = %if.else110, %if.end121
  %mdname.addr.0476 = phi i8* [ %call119, %if.end121 ], [ %mdname, %if.else110 ]
  call void @evp_md_ctx_clear_digest(%struct.evp_md_ctx_st* noundef nonnull %ctx, i32 noundef 1) #8
  %call125 = call i32 @ERR_set_mark() #8
  %24 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx44, align 8, !tbaa !21
  %call127 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %24, i8* noundef nonnull %mdname.addr.0476, i8* noundef %props.addr.0) #8
  %fetched_digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 8
  store %struct.evp_md_st* %call127, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !31
  %cmp129.not = icmp eq %struct.evp_md_st* %call127, null
  br i1 %cmp129.not, label %if.else135, label %if.then131

if.then131:                                       ; preds = %if.then124
  %reqdigest133 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_md_st* %call127, %struct.evp_md_st** %reqdigest133, align 8, !tbaa !30
  %digest134 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  store %struct.evp_md_st* %call127, %struct.evp_md_st** %digest134, align 8, !tbaa !11
  br label %if.end145

if.else135:                                       ; preds = %if.then124
  %call136 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef nonnull %mdname.addr.0476) #8
  %digest137 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  store %struct.evp_md_st* %call136, %struct.evp_md_st** %digest137, align 8, !tbaa !11
  %reqdigest138 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_md_st* %call136, %struct.evp_md_st** %reqdigest138, align 8, !tbaa !30
  %cmp140 = icmp eq %struct.evp_md_st* %call136, null
  br i1 %cmp140, label %err.sink.split.sink.split, label %if.end145

if.end145:                                        ; preds = %if.else135, %if.then131
  %call146 = call i32 @ERR_pop_to_mark() #8
  br label %if.end148

if.end148:                                        ; preds = %if.then113, %if.end121, %if.end145, %if.then103, %if.then106
  %mdname.addr.1 = phi i8* [ %call108, %if.then106 ], [ %mdname, %if.then103 ], [ %mdname.addr.0476, %if.end145 ], [ null, %if.end121 ], [ null, %if.then113 ]
  br i1 %tobool88.not, label %if.else160, label %if.then150

if.then150:                                       ; preds = %if.end148
  %digest_verify_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call72, i64 0, i32 17
  %25 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_verify_init, align 8, !tbaa !32
  %cmp151 = icmp eq i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %25, null
  br i1 %cmp151, label %err.sink.split, label %if.end170

if.else160:                                       ; preds = %if.end148
  %digest_sign_init = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %call72, i64 0, i32 13
  %26 = load i32 (i8*, i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i8*, %struct.ossl_param_st*)** %digest_sign_init, align 8, !tbaa !33
  %cmp161 = icmp eq i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* %26, null
  br i1 %cmp161, label %err.sink.split, label %if.end170

if.end170:                                        ; preds = %if.else160, %if.then150
  %.sink485 = phi i32 (i8*, i8*, i8*, %struct.ossl_param_st*)* [ %25, %if.then150 ], [ %26, %if.else160 ]
  %27 = load i8*, i8** %22, align 8, !tbaa !25
  %call169 = call i32 %.sink485(i8* noundef %27, i8* noundef %mdname.addr.1, i8* noundef nonnull %call46, %struct.ossl_param_st* noundef %params) #8
  %cmp171 = icmp sgt i32 %call169, 0
  %cmp174 = icmp ne i8* %mdname.addr.1, null
  %or.cond = select i1 %cmp171, i1 true, i1 %cmp174
  br i1 %or.cond, label %end, label %if.end177

if.end177:                                        ; preds = %if.end170
  br i1 %cmp101.not, label %err.sink.split, label %err

err.sink.split.sink.split:                        ; preds = %if.else135, %if.end51, %if.end41
  %.sink486.ph = phi i32 [ 91, %if.end41 ], [ 96, %if.end51 ], [ 188, %if.else135 ]
  %call50 = call i32 @ERR_clear_last_mark() #8
  br label %err.sink.split

err.sink.split:                                   ; preds = %err.sink.split.sink.split, %if.end177, %if.else160, %if.then150, %if.end86
  %.sink486 = phi i32 [ 148, %if.end86 ], [ 198, %if.then150 ], [ 205, %if.else160 ], [ 219, %if.end177 ], [ %.sink486.ph, %err.sink.split.sink.split ]
  %.sink = phi i32 [ 134, %if.end86 ], [ 134, %if.then150 ], [ 134, %if.else160 ], [ 158, %if.end177 ], [ 134, %err.sink.split.sink.split ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink486, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_sigver_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end177
  call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %6) #8
  %operation182 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 0
  store i32 0, i32* %operation182, align 8, !tbaa !26
  br label %cleanup

legacy:                                           ; preds = %if.end36, %if.then80
  %call183 = call i32 @ERR_pop_to_mark() #8
  %cmp184 = icmp eq %struct.evp_md_st* %type, null
  %cmp186 = icmp ne i8* %mdname, null
  %or.cond333 = and i1 %cmp184, %cmp186
  br i1 %or.cond333, label %if.then188, label %if.end191

if.then188:                                       ; preds = %legacy
  %libctx189 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %6, i64 0, i32 1
  %28 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx189, align 8, !tbaa !21
  %call190 = call %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef %28, i8* noundef nonnull %mdname) #8
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %legacy
  %type.addr.0 = phi %struct.evp_md_st* [ %call190, %if.then188 ], [ %type, %legacy ]
  %29 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %29, i64 0, i32 12
  %30 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %cmp193 = icmp eq %struct.evp_pkey_method_st* %30, null
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end191
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_sigver_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end196:                                        ; preds = %if.end191
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %30, i64 0, i32 1
  %31 = load i32, i32* %flags, align 4, !tbaa !35
  %and = and i32 %31, 4
  %tobool199.not = icmp eq i32 %and, 0
  %cmp201 = icmp eq %struct.evp_md_st* %type.addr.0, null
  %or.cond484 = select i1 %tobool199.not, i1 %cmp201, i1 false
  br i1 %or.cond484, label %if.then203, label %if.end216

if.then203:                                       ; preds = %if.end196
  %32 = bitcast i32* %def_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #7
  %call204 = call i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef %pkey, i32* noundef nonnull %def_nid) #8
  %cmp205 = icmp sgt i32 %call204, 0
  br i1 %cmp205, label %if.end211, label %if.end211.thread479

if.end211.thread479:                              ; preds = %if.then203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #7
  br label %if.then214

if.end211:                                        ; preds = %if.then203
  %33 = load i32, i32* %def_nid, align 4, !tbaa !37
  %call208 = call i8* @OBJ_nid2sn(i32 noundef %33) #8
  %call209 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call208) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #7
  %cmp212 = icmp eq %struct.evp_md_st* %call209, null
  br i1 %cmp212, label %if.then214, label %if.end216

if.then214:                                       ; preds = %if.end211.thread479, %if.end211
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.do_sigver_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 158, i8* noundef null) #8
  br label %cleanup

if.end216:                                        ; preds = %if.end211, %if.end196
  %type.addr.3 = phi %struct.evp_md_st* [ %type.addr.0, %if.end196 ], [ %call209, %if.end211 ]
  %tobool217.not = icmp eq i32 %ver, 0
  %34 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %pmeth253 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %34, i64 0, i32 12
  %35 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth253, align 8, !tbaa !34
  br i1 %tobool217.not, label %if.else251, label %if.then218

if.then218:                                       ; preds = %if.end216
  %verifyctx_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %35, i64 0, i32 17
  %36 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %verifyctx_init, align 8, !tbaa !38
  %tobool221.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %36, null
  br i1 %tobool221.not, label %if.else234, label %if.then222

if.then222:                                       ; preds = %if.then218
  %call227 = call i32 %36(%struct.evp_pkey_ctx_st* noundef nonnull %34, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %cmp228 = icmp slt i32 %call227, 1
  br i1 %cmp228, label %cleanup, label %if.end231

if.end231:                                        ; preds = %if.then222
  %37 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %operation233 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %37, i64 0, i32 0
  store i32 256, i32* %operation233, align 8, !tbaa !26
  br label %if.end285

if.else234:                                       ; preds = %if.then218
  %digestverify = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %35, i64 0, i32 28
  %38 = load i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** %digestverify, align 8, !tbaa !39
  %cmp237.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* %38, null
  br i1 %cmp237.not, label %if.else242, label %if.then239

if.then239:                                       ; preds = %if.else234
  %operation241 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %34, i64 0, i32 0
  store i32 32, i32* %operation241, align 8, !tbaa !26
  %update = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 6
  store i32 (%struct.evp_md_ctx_st*, i8*, i64)* @update, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update, align 8, !tbaa !40
  br label %if.end285

if.else242:                                       ; preds = %if.else234
  %call244 = call i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef nonnull %34) #8
  %cmp245 = icmp slt i32 %call244, 1
  br i1 %cmp245, label %cleanup, label %if.end285

if.else251:                                       ; preds = %if.end216
  %signctx_init = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %35, i64 0, i32 15
  %39 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %signctx_init, align 8, !tbaa !41
  %tobool254.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %39, null
  br i1 %tobool254.not, label %if.else267, label %if.then255

if.then255:                                       ; preds = %if.else251
  %call260 = call i32 %39(%struct.evp_pkey_ctx_st* noundef nonnull %34, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %cmp261 = icmp slt i32 %call260, 1
  br i1 %cmp261, label %cleanup, label %if.end264

if.end264:                                        ; preds = %if.then255
  %40 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %operation266 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %40, i64 0, i32 0
  store i32 128, i32* %operation266, align 8, !tbaa !26
  br label %if.end285

if.else267:                                       ; preds = %if.else251
  %digestsign = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %35, i64 0, i32 27
  %41 = load i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %digestsign, align 8, !tbaa !42
  %cmp270.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* %41, null
  br i1 %cmp270.not, label %if.else276, label %if.then272

if.then272:                                       ; preds = %if.else267
  %operation274 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %34, i64 0, i32 0
  store i32 16, i32* %operation274, align 8, !tbaa !26
  %update275 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 6
  store i32 (%struct.evp_md_ctx_st*, i8*, i64)* @update, i32 (%struct.evp_md_ctx_st*, i8*, i64)** %update275, align 8, !tbaa !40
  br label %if.end285

if.else276:                                       ; preds = %if.else267
  %call278 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %34) #8
  %cmp279 = icmp slt i32 %call278, 1
  br i1 %cmp279, label %cleanup, label %if.end285

if.end285:                                        ; preds = %if.end264, %if.else276, %if.then272, %if.end231, %if.else242, %if.then239
  %42 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %call287 = call i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef %42, %struct.evp_md_st* noundef %type.addr.3) #8
  %cmp288 = icmp slt i32 %call287, 1
  br i1 %cmp288, label %cleanup, label %if.end291

if.end291:                                        ; preds = %if.end285
  %tobool292.not = icmp eq %struct.evp_pkey_ctx_st** %pctx, null
  br i1 %tobool292.not, label %if.end295, label %if.then293

if.then293:                                       ; preds = %if.end291
  %43 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  store %struct.evp_pkey_ctx_st* %43, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !4
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %if.end291
  %44 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %pmeth297 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %44, i64 0, i32 12
  %45 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth297, align 8, !tbaa !34
  %flags298 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %45, i64 0, i32 1
  %46 = load i32, i32* %flags298, align 4, !tbaa !35
  %and299 = and i32 %46, 4
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %if.end302, label %cleanup

if.end302:                                        ; preds = %if.end295
  %call303 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %ctx, %struct.evp_md_st* noundef %type.addr.3, %struct.engine_st* noundef %e) #8
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %cleanup, label %if.end306

if.end306:                                        ; preds = %if.end302
  %47 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %flag_call_digest_custom = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %47, i64 0, i32 17
  %bf.load = load i8, i8* %flag_call_digest_custom, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %flag_call_digest_custom, align 8
  %48 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx15, align 8, !tbaa !15
  %pmeth309 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %48, i64 0, i32 12
  %49 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth309, align 8, !tbaa !34
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %49, i64 0, i32 32
  %50 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !43
  %cmp310.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* %50, null
  br i1 %cmp310.not, label %if.then321, label %if.then312

if.then312:                                       ; preds = %if.end306
  %flag_call_digest_custom314 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %48, i64 0, i32 17
  %bf.load315 = load i8, i8* %flag_call_digest_custom314, align 8
  %bf.set317 = or i8 %bf.load315, 1
  store i8 %bf.set317, i8* %flag_call_digest_custom314, align 8
  br label %if.then321

end:                                              ; preds = %if.end170
  br i1 %cmp171, label %if.then321, label %if.end323

if.then321:                                       ; preds = %if.end306, %if.then312, %end
  %call322 = call i32 @evp_pkey_ctx_use_cached_data(%struct.evp_pkey_ctx_st* noundef nonnull %6) #8
  br label %if.end323

if.end323:                                        ; preds = %if.then321, %end
  %ret.2 = phi i32 [ %call322, %if.then321 ], [ %call169, %end ]
  %cmp324 = icmp sgt i32 %ret.2, 0
  %cond326 = zext i1 %cmp324 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end302, %if.end295, %if.end285, %if.else276, %if.then255, %if.else242, %if.then222, %if.end26, %if.end323, %if.then214, %if.then195, %err, %if.then4
  %retval.0 = phi i32 [ 0, %if.then195 ], [ %cond326, %if.end323 ], [ 0, %if.then214 ], [ 0, %err ], [ 0, %if.then4 ], [ 0, %if.end26 ], [ 0, %if.then222 ], [ 0, %if.else242 ], [ 0, %if.then255 ], [ 0, %if.else276 ], [ 0, %if.end285 ], [ 1, %if.end295 ], [ 0, %if.end302 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %e, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_sigver_init(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, %struct.evp_md_st* noundef %type, i8* noundef null, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.engine_st* noundef %e, %struct.evp_pkey_st* noundef %pkey, i32 noundef 0, %struct.ossl_param_st* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, i8* noundef %mdname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %props, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_sigver_init(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, %struct.evp_md_st* noundef null, i8* noundef %mdname, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %props, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey, i32 noundef 1, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef %e, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @do_sigver_init(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_pkey_ctx_st** noundef %pctx, %struct.evp_md_st* noundef %type, i8* noundef null, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.engine_st* noundef %e, %struct.evp_pkey_st* noundef %pkey, i32 noundef 1, %struct.ossl_param_st* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %dsize) local_unnamed_addr #0 {
entry:
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !15
  %cond = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cond, label %if.end33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  %cmp2.not = icmp eq i32 %1, 128
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then23

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !25
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then23, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !25
  %cmp8 = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp8, label %if.then23, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %digest_sign_update = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 14
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_sign_update, align 8, !tbaa !44
  %cmp12 = icmp eq i32 (i8*, i8*, i64)* %5, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_DigestSignUpdate, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call = tail call i32 %5(i8* noundef nonnull %3, i8* noundef %data, i64 noundef %dsize) #8
  br label %cleanup

if.then23:                                        ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false
  %flag_call_digest_custom = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 17
  %bf.load = load i8, i8* %flag_call_digest_custom, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 32
  %7 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !43
  %call26 = tail call i32 %7(%struct.evp_pkey_ctx_st* noundef nonnull %0, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  %bf.load31.pre = load i8, i8* %flag_call_digest_custom, align 8
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.then23
  %bf.load31 = phi i8 [ %bf.load31.pre, %land.lhs.true.if.end29_crit_edge ], [ %bf.load, %if.then23 ]
  %bf.clear32 = and i8 %bf.load31, -2
  store i8 %bf.clear32, i8* %flag_call_digest_custom, align 8
  br label %if.end33

if.end33:                                         ; preds = %entry, %if.end29
  %call34 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %data, i64 noundef %dsize) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end33, %if.end14, %if.then13
  %retval.0 = phi i32 [ %call34, %if.end33 ], [ 0, %if.then13 ], [ %call, %if.end14 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %dsize) local_unnamed_addr #0 {
entry:
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !15
  %cond = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cond, label %if.end33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  %cmp2.not = icmp eq i32 %1, 256
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then23

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !25
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then23, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !25
  %cmp8 = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp8, label %if.then23, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %digest_verify_update = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 18
  %5 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_verify_update, align 8, !tbaa !45
  %cmp12 = icmp eq i32 (i8*, i8*, i64)* %5, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EVP_DigestVerifyUpdate, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call = tail call i32 %5(i8* noundef nonnull %3, i8* noundef %data, i64 noundef %dsize) #8
  br label %cleanup

if.then23:                                        ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false
  %flag_call_digest_custom = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 17
  %bf.load = load i8, i8* %flag_call_digest_custom, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then23
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 32
  %7 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !43
  %call26 = tail call i32 %7(%struct.evp_pkey_ctx_st* noundef nonnull %0, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  %bf.load31.pre = load i8, i8* %flag_call_digest_custom, align 8
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.then23
  %bf.load31 = phi i8 [ %bf.load31.pre, %land.lhs.true.if.end29_crit_edge ], [ %bf.load, %if.then23 ]
  %bf.clear32 = and i8 %bf.load31, -2
  store i8 %bf.clear32, i8* %flag_call_digest_custom, align 8
  br label %if.end33

if.end33:                                         ; preds = %entry, %if.end29
  %call34 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %data, i64 noundef %dsize) #8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end33, %if.end14, %if.then13
  %retval.0 = phi i32 [ %call34, %if.end33 ], [ 0, %if.then13 ], [ %call, %if.end14 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigret, i64* noundef %siglen) local_unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %mdlen = alloca i32, align 4
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  %cmp2.not = icmp eq i32 %1, 128
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false33

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !25
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %lor.lhs.false33, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !25
  %cmp8 = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp8, label %lor.lhs.false33, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %cmp9 = icmp eq i8* %sigret, null
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %flags = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8, !tbaa !46
  %and = and i64 %5, 512
  %cmp11.not = icmp eq i64 %and, 0
  br i1 %cmp11.not, label %if.end19, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false10, %if.end
  %digest_sign_final = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 15
  %6 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %digest_sign_final, align 8, !tbaa !47
  %call = tail call i32 %6(i8* noundef nonnull %3, i8* noundef %sigret, i64* noundef %siglen, i64 noundef -1) #8
  br label %cleanup155

if.end19:                                         ; preds = %lor.lhs.false10
  %call20 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef nonnull %0) #8
  %cmp21 = icmp eq %struct.evp_pkey_ctx_st* %call20, null
  br i1 %cmp21, label %cleanup155, label %if.end23

if.end23:                                         ; preds = %if.end19
  %op24 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call20, i64 0, i32 5
  %signature26 = bitcast %union.anon* %op24 to %struct.evp_signature_st**
  %7 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature26, align 8, !tbaa !25
  %digest_sign_final27 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %7, i64 0, i32 15
  %8 = load i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64)** %digest_sign_final27, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call20, i64 0, i32 5, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !25
  %call31 = tail call i32 %8(i8* noundef %10, i8* noundef nonnull %sigret, i64* noundef %siglen, i64 noundef -1) #8
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call20) #8
  br label %cleanup155

lor.lhs.false33:                                  ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 12
  %11 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %cmp34 = icmp eq %struct.evp_pkey_method_st* %11, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %entry, %lor.lhs.false33
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EVP_DigestSignFinal, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %cleanup155

if.end36:                                         ; preds = %lor.lhs.false33
  %flag_call_digest_custom = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 17
  %bf.load = load i8, i8* %flag_call_digest_custom, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end43, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %11, i64 0, i32 32
  %12 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !43
  %call40 = tail call i32 %12(%struct.evp_pkey_ctx_st* noundef nonnull %0, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup155, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  %bf.load45.pre = load i8, i8* %flag_call_digest_custom, align 8
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end36
  %13 = phi %struct.evp_pkey_method_st* [ %.pre, %land.lhs.true.if.end43_crit_edge ], [ %11, %if.end36 ]
  %bf.load45 = phi i8 [ %bf.load45.pre, %land.lhs.true.if.end43_crit_edge ], [ %bf.load, %if.end36 ]
  %bf.clear46 = and i8 %bf.load45, -2
  store i8 %bf.clear46, i8* %flag_call_digest_custom, align 8
  %flags48 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %13, i64 0, i32 1
  %14 = load i32, i32* %flags48, align 4, !tbaa !35
  %and49 = and i32 %14, 4
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end72, label %if.then51

if.then51:                                        ; preds = %if.end43
  %cmp52 = icmp eq i8* %sigret, null
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.then51
  %signctx = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %13, i64 0, i32 16
  %15 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx, align 8, !tbaa !48
  %call55 = tail call i32 %15(%struct.evp_pkey_ctx_st* noundef nonnull %0, i8* noundef null, i64* noundef %siglen, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  br label %cleanup155

if.end56:                                         ; preds = %if.then51
  %flags57 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %16 = load i64, i64* %flags57, align 8, !tbaa !46
  %and58 = and i64 %16, 512
  %tobool59.not = icmp eq i64 %and58, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end56
  %signctx62 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %13, i64 0, i32 16
  %17 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx62, align 8, !tbaa !48
  %call63 = tail call i32 %17(%struct.evp_pkey_ctx_st* noundef nonnull %0, i8* noundef nonnull %sigret, i64* noundef %siglen, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  br label %cleanup155

if.else:                                          ; preds = %if.end56
  %call64 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef nonnull %0) #8
  %cmp65 = icmp eq %struct.evp_pkey_ctx_st* %call64, null
  br i1 %cmp65, label %cleanup155, label %if.end67

if.end67:                                         ; preds = %if.else
  %pmeth68 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call64, i64 0, i32 12
  %18 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth68, align 8, !tbaa !34
  %signctx69 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %18, i64 0, i32 16
  %19 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx69, align 8, !tbaa !48
  %call70 = tail call i32 %19(%struct.evp_pkey_ctx_st* noundef nonnull %call64, i8* noundef nonnull %sigret, i64* noundef %siglen, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call64) #8
  br label %cleanup155

if.end72:                                         ; preds = %if.end43
  %signctx74 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %13, i64 0, i32 16
  %20 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx74, align 8, !tbaa !48
  %cmp75.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)* %20, null
  %cmp79.not = icmp eq i8* %sigret, null
  br i1 %cmp79.not, label %if.else129, label %if.then80

if.then80:                                        ; preds = %if.end72
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %21) #7
  %22 = bitcast i32* %mdlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #7
  store i32 0, i32* %mdlen, align 4, !tbaa !37
  %flags81 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %23 = load i64, i64* %flags81, align 8, !tbaa !46
  %and82 = and i64 %23, 512
  %tobool83.not = icmp eq i64 %and82, 0
  br i1 %tobool83.not, label %if.else93, label %if.then84

if.then84:                                        ; preds = %if.then80
  br i1 %cmp75.not, label %if.else90, label %if.end113.thread

if.end113.thread:                                 ; preds = %if.then84
  %call89 = tail call i32 %20(%struct.evp_pkey_ctx_st* noundef nonnull %0, i8* noundef nonnull %sigret, i64* noundef %siglen, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  br label %cleanup125.thread

if.else90:                                        ; preds = %if.then84
  %call91 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %21, i32* noundef nonnull %mdlen) #8
  br label %if.end113

if.else93:                                        ; preds = %if.then80
  %call94 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %cmp95 = icmp eq %struct.evp_md_ctx_st* %call94, null
  br i1 %cmp95, label %cleanup125.thread, label %if.end97

if.end97:                                         ; preds = %if.else93
  %call98 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call94, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end97
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call94) #8
  br label %cleanup125.thread

if.end101:                                        ; preds = %if.end97
  br i1 %cmp75.not, label %if.else109, label %if.then103

if.then103:                                       ; preds = %if.end101
  %pctx104 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %call94, i64 0, i32 5
  %24 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx104, align 8, !tbaa !15
  %pmeth105 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %24, i64 0, i32 12
  %25 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth105, align 8, !tbaa !34
  %signctx106 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %25, i64 0, i32 16
  %26 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)** %signctx106, align 8, !tbaa !48
  %call108 = tail call i32 %26(%struct.evp_pkey_ctx_st* noundef %24, i8* noundef nonnull %sigret, i64* noundef %siglen, %struct.evp_md_ctx_st* noundef nonnull %call94) #8
  br label %cleanup

if.else109:                                       ; preds = %if.end101
  %call111 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call94, i8* noundef nonnull %21, i32* noundef nonnull %mdlen) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %if.else109
  %r.1 = phi i32 [ %call108, %if.then103 ], [ %call111, %if.else109 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call94) #8
  br label %if.end113

if.end113:                                        ; preds = %cleanup, %if.else90
  %r.3 = phi i32 [ %call91, %if.else90 ], [ %r.1, %cleanup ]
  %tobool116 = icmp ne i32 %r.3, 0
  %or.cond = select i1 %cmp75.not, i1 %tobool116, i1 false
  br i1 %or.cond, label %cleanup125, label %cleanup125.thread

cleanup125.thread:                                ; preds = %if.end113, %if.end113.thread, %if.then100, %if.else93
  %retval.2.ph = phi i32 [ %call89, %if.end113.thread ], [ %r.3, %if.end113 ], [ 0, %if.then100 ], [ 0, %if.else93 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %21) #7
  br label %cleanup155

cleanup125:                                       ; preds = %if.end113
  %27 = load i32, i32* %mdlen, align 4, !tbaa !37
  %conv = zext i32 %27 to i64
  %call120 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef nonnull %0, i8* noundef nonnull %sigret, i64* noundef %siglen, i8* noundef nonnull %21, i64 noundef %conv) #8
  %cmp121 = icmp sgt i32 %call120, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %21) #7
  br i1 %cmp121, label %if.end154, label %cleanup155

if.else129:                                       ; preds = %if.end72
  br i1 %cmp75.not, label %if.else139, label %if.then131

if.then131:                                       ; preds = %if.else129
  %call134 = tail call i32 %20(%struct.evp_pkey_ctx_st* noundef nonnull %0, i8* noundef null, i64* noundef %siglen, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %cmp135 = icmp slt i32 %call134, 1
  br i1 %cmp135, label %cleanup155, label %if.end154

if.else139:                                       ; preds = %if.else129
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %28 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !11
  %call140 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %28) #8
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %cleanup155, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.else139
  %conv144255 = zext i32 %call140 to i64
  %call145 = tail call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef nonnull %0, i8* noundef null, i64* noundef %siglen, i8* noundef null, i64 noundef %conv144255) #8
  %cmp146 = icmp slt i32 %call145, 1
  br i1 %cmp146, label %cleanup155, label %if.end154

if.end154:                                        ; preds = %lor.lhs.false143, %if.then131, %cleanup125
  br label %cleanup155

cleanup155:                                       ; preds = %cleanup125.thread, %lor.lhs.false143, %if.else139, %if.then131, %if.then60, %if.end67, %if.else, %land.lhs.true, %if.end19, %cleanup125, %if.end154, %if.then53, %if.then35, %if.end23, %if.then12
  %retval.4 = phi i32 [ 0, %if.then35 ], [ %call55, %if.then53 ], [ 1, %if.end154 ], [ 0, %cleanup125 ], [ %call, %if.then12 ], [ %call31, %if.end23 ], [ 0, %if.end19 ], [ 0, %land.lhs.true ], [ 0, %if.else ], [ %call63, %if.then60 ], [ %call70, %if.end67 ], [ 0, %if.then131 ], [ 0, %if.else139 ], [ 0, %lor.lhs.false143 ], [ %retval.2.ph, %cleanup125.thread ]
  ret i32 %retval.4
}

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigret, i64* noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) local_unnamed_addr #0 {
entry:
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !15
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  %cmp2 = icmp eq i32 %1, 128
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !25
  %cmp4.not = icmp eq i8* %3, null
  br i1 %cmp4.not, label %if.else, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !25
  %cmp8.not = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp8.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true5
  %digest_sign = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 16
  %5 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %digest_sign, align 8, !tbaa !49
  %cmp12.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %5, null
  br i1 %cmp12.not, label %if.end33, label %if.then13

if.then13:                                        ; preds = %if.then
  %call = tail call i32 %5(i8* noundef nonnull %3, i8* noundef %sigret, i64* noundef %siglen, i64 noundef -1, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %cmp22.not = icmp eq %struct.evp_pkey_method_st* %6, null
  br i1 %cmp22.not, label %if.end33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else
  %digestsign = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 27
  %7 = load i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %digestsign, align 8, !tbaa !42
  %cmp26.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* %7, null
  br i1 %cmp26.not, label %if.end33, label %if.then27

if.then27:                                        ; preds = %land.lhs.true23
  %call31 = tail call i32 %7(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %sigret, i64* noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup

if.end33:                                         ; preds = %if.else, %land.lhs.true23, %if.then
  %cmp34.not = icmp eq i8* %sigret, null
  br i1 %cmp34.not, label %if.end39, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end33
  %call36 = tail call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %tbs, i64 noundef %tbslen) #6
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %cleanup, label %if.end39

if.end39:                                         ; preds = %land.lhs.true35, %if.end33
  %call40 = tail call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %sigret, i64* noundef %siglen) #6
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true35, %if.end39, %if.then27, %if.then13
  %retval.0 = phi i32 [ %call, %if.then13 ], [ %call40, %if.end39 ], [ %call31, %if.then27 ], [ 0, %land.lhs.true35 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64 noundef %siglen) local_unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %mdlen = alloca i32, align 4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  %1 = bitcast i32* %mdlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %mdlen, align 4, !tbaa !37
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !15
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %2, null
  br i1 %cmp, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %2, i64 0, i32 0
  %3 = load i32, i32* %operation, align 8, !tbaa !26
  %cmp2.not = icmp eq i32 %3, 256
  br i1 %cmp2.not, label %lor.lhs.false3, label %lor.lhs.false32

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %2, i64 0, i32 5, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8, !tbaa !25
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %lor.lhs.false32, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %2, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %6 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !25
  %cmp9 = icmp eq %struct.evp_signature_st* %6, null
  br i1 %cmp9, label %lor.lhs.false32, label %if.end

if.end:                                           ; preds = %lor.lhs.false6
  %flags = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %7 = load i64, i64* %flags, align 8, !tbaa !46
  %and = and i64 %7, 512
  %cmp10.not = icmp eq i64 %and, 0
  br i1 %cmp10.not, label %if.end18, label %if.then11

if.then11:                                        ; preds = %if.end
  %digest_verify_final = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %6, i64 0, i32 19
  %8 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_verify_final, align 8, !tbaa !50
  %call = tail call i32 %8(i8* noundef nonnull %5, i8* noundef %sig, i64 noundef %siglen) #8
  br label %cleanup93

if.end18:                                         ; preds = %if.end
  %call19 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef nonnull %2) #8
  %cmp20 = icmp eq %struct.evp_pkey_ctx_st* %call19, null
  br i1 %cmp20, label %cleanup93, label %if.end22

if.end22:                                         ; preds = %if.end18
  %op23 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call19, i64 0, i32 5
  %signature25 = bitcast %union.anon* %op23 to %struct.evp_signature_st**
  %9 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature25, align 8, !tbaa !25
  %digest_verify_final26 = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %9, i64 0, i32 19
  %10 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %digest_verify_final26, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call19, i64 0, i32 5, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8, !tbaa !25
  %call30 = tail call i32 %10(i8* noundef %12, i8* noundef %sig, i64 noundef %siglen) #8
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call19) #8
  br label %cleanup93

lor.lhs.false32:                                  ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %2, i64 0, i32 12
  %13 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %cmp33 = icmp eq %struct.evp_pkey_method_st* %13, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %entry, %lor.lhs.false32
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EVP_DigestVerifyFinal, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %cleanup93

if.end35:                                         ; preds = %lor.lhs.false32
  %flag_call_digest_custom = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %2, i64 0, i32 17
  %bf.load = load i8, i8* %flag_call_digest_custom, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35
  %digest_custom = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %13, i64 0, i32 32
  %14 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)** %digest_custom, align 8, !tbaa !43
  %call39 = tail call i32 %14(%struct.evp_pkey_ctx_st* noundef nonnull %2, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup93, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  %bf.load44.pre = load i8, i8* %flag_call_digest_custom, align 8
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end35
  %15 = phi %struct.evp_pkey_method_st* [ %.pre, %land.lhs.true.if.end42_crit_edge ], [ %13, %if.end35 ]
  %bf.load44 = phi i8 [ %bf.load44.pre, %land.lhs.true.if.end42_crit_edge ], [ %bf.load, %if.end35 ]
  %bf.clear45 = and i8 %bf.load44, -2
  store i8 %bf.clear45, i8* %flag_call_digest_custom, align 8
  %verifyctx = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %15, i64 0, i32 18
  %16 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** %verifyctx, align 8, !tbaa !51
  %cmp47.not = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)* %16, null
  %flags50 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 3
  %17 = load i64, i64* %flags50, align 8, !tbaa !46
  %and51 = and i64 %17, 512
  %tobool52.not = icmp eq i64 %and51, 0
  br i1 %tobool52.not, label %if.else62, label %if.then53

if.then53:                                        ; preds = %if.end42
  br i1 %cmp47.not, label %if.else59, label %if.end84.thread

if.end84.thread:                                  ; preds = %if.then53
  %conv = trunc i64 %siglen to i32
  %call58 = tail call i32 %16(%struct.evp_pkey_ctx_st* noundef nonnull %2, i8* noundef %sig, i32 noundef %conv, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  br label %cleanup93

if.else59:                                        ; preds = %if.then53
  %call60 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %0, i32* noundef nonnull %mdlen) #8
  br label %if.end84

if.else62:                                        ; preds = %if.end42
  %call63 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %cmp64 = icmp eq %struct.evp_md_ctx_st* %call63, null
  br i1 %cmp64, label %cleanup93, label %if.end67

if.end67:                                         ; preds = %if.else62
  %call68 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef nonnull %call63, %struct.evp_md_ctx_st* noundef nonnull %ctx) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end67
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call63) #8
  br label %cleanup93

if.end71:                                         ; preds = %if.end67
  br i1 %cmp47.not, label %if.else80, label %if.then73

if.then73:                                        ; preds = %if.end71
  %pctx74 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %call63, i64 0, i32 5
  %18 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx74, align 8, !tbaa !15
  %pmeth75 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %18, i64 0, i32 12
  %19 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth75, align 8, !tbaa !34
  %verifyctx76 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %19, i64 0, i32 18
  %20 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)** %verifyctx76, align 8, !tbaa !51
  %conv78 = trunc i64 %siglen to i32
  %call79 = tail call i32 %20(%struct.evp_pkey_ctx_st* noundef %18, i8* noundef %sig, i32 noundef %conv78, %struct.evp_md_ctx_st* noundef nonnull %call63) #8
  br label %cleanup

if.else80:                                        ; preds = %if.end71
  %call82 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call63, i8* noundef nonnull %0, i32* noundef nonnull %mdlen) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.else80
  %r.0 = phi i32 [ %call79, %if.then73 ], [ %call82, %if.else80 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef nonnull %call63) #8
  br label %if.end84

if.end84:                                         ; preds = %cleanup, %if.else59
  %r.2 = phi i32 [ %call60, %if.else59 ], [ %r.0, %cleanup ]
  %tobool87 = icmp ne i32 %r.2, 0
  %or.cond = select i1 %cmp47.not, i1 %tobool87, i1 false
  br i1 %or.cond, label %if.end89, label %cleanup93

if.end89:                                         ; preds = %if.end84
  %21 = load i32, i32* %mdlen, align 4, !tbaa !37
  %conv91 = zext i32 %21 to i64
  %call92 = call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef nonnull %2, i8* noundef %sig, i64 noundef %siglen, i8* noundef nonnull %0, i64 noundef %conv91) #8
  br label %cleanup93

cleanup93:                                        ; preds = %if.else62, %if.then70, %if.end84.thread, %if.end84, %land.lhs.true, %if.end18, %if.end89, %if.then34, %if.end22, %if.then11
  %retval.1 = phi i32 [ 0, %if.then34 ], [ %call92, %if.end89 ], [ %call, %if.then11 ], [ %call30, %if.end22 ], [ 0, %if.end18 ], [ 0, %land.lhs.true ], [ %r.2, %if.end84 ], [ %call58, %if.end84.thread ], [ -1, %if.then70 ], [ -1, %if.else62 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.1
}

declare i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigret, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) local_unnamed_addr #0 {
entry:
  %pctx1 = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 5
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx1, align 8, !tbaa !15
  %cmp.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !26
  %cmp2 = icmp eq i32 %1, 256
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8, !tbaa !25
  %cmp4.not = icmp eq i8* %3, null
  br i1 %cmp4.not, label %if.else, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 5
  %signature = bitcast %union.anon* %op to %struct.evp_signature_st**
  %4 = load %struct.evp_signature_st*, %struct.evp_signature_st** %signature, align 8, !tbaa !25
  %cmp8.not = icmp eq %struct.evp_signature_st* %4, null
  br i1 %cmp8.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true5
  %digest_verify = getelementptr inbounds %struct.evp_signature_st, %struct.evp_signature_st* %4, i64 0, i32 20
  %5 = load i32 (i8*, i8*, i64, i8*, i64)*, i32 (i8*, i8*, i64, i8*, i64)** %digest_verify, align 8, !tbaa !52
  %cmp12.not = icmp eq i32 (i8*, i8*, i64, i8*, i64)* %5, null
  br i1 %cmp12.not, label %if.end33, label %if.then13

if.then13:                                        ; preds = %if.then
  %call = tail call i32 %5(i8* noundef nonnull %3, i8* noundef %sigret, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %0, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !34
  %cmp22.not = icmp eq %struct.evp_pkey_method_st* %6, null
  br i1 %cmp22.not, label %if.end33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else
  %digestverify = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 28
  %7 = load i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)** %digestverify, align 8, !tbaa !39
  %cmp26.not = icmp eq i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)* %7, null
  br i1 %cmp26.not, label %if.end33, label %if.then27

if.then27:                                        ; preds = %land.lhs.true23
  %call31 = tail call i32 %7(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %sigret, i64 noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  br label %cleanup

if.end33:                                         ; preds = %if.else, %land.lhs.true23, %if.then
  %call34 = tail call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %tbs, i64 noundef %tbslen) #6
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef nonnull %ctx, i8* noundef %sigret, i64 noundef %siglen) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end37, %if.then27, %if.then13
  %retval.0 = phi i32 [ %call, %if.then13 ], [ %call38, %if.end37 ], [ %call31, %if.then27 ], [ -1, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare %struct.evp_signature_st* @EVP_SIGNATURE_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_SIGNATURE_get0_provider(%struct.evp_signature_st* noundef) local_unnamed_addr #2

declare void @EVP_SIGNATURE_free(%struct.evp_signature_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i8* @canon_mdname(i8* noundef readonly %mdname) unnamed_addr #4 {
entry:
  %cmp.not = icmp eq i8* %mdname, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %mdname, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i8* [ %mdname, %if.end ], [ null, %land.lhs.true ]
  ret i8* %retval.0
}

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @evp_keymgmt_util_get_deflt_digest_name(%struct.evp_keymgmt_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @evp_md_ctx_clear_digest(%struct.evp_md_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_default_digest_nid(%struct.evp_pkey_st* noundef, i32* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @update(%struct.evp_md_ctx_st* nocapture noundef readnone %ctx, i8* nocapture noundef readnone %data, i64 noundef %datalen) #0 {
entry:
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.update, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 177, i8* noundef null) #8
  ret i32 0
}

declare i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare i32 @evp_pkey_ctx_use_cached_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !5, i64 56}
!9 = !{!"evp_md_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !5, i64 8}
!12 = !{!13, !5, i64 176}
!13 = !{!"evp_md_st", !14, i64 0, !14, i64 4, !14, i64 8, !10, i64 16, !14, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !14, i64 72, !14, i64 76, !5, i64 80, !14, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !6, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !5, i64 40}
!16 = !{!17, !5, i64 16}
!17 = !{!"evp_pkey_ctx_st", !14, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !18, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !14, i64 112, !14, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !14, i64 160, !5, i64 168}
!18 = !{!"", !5, i64 0, !5, i64 8, !10, i64 16, !14, i64 24}
!19 = !{!17, !5, i64 32}
!20 = !{!17, !5, i64 136}
!21 = !{!17, !5, i64 8}
!22 = !{!23, !5, i64 152}
!23 = !{!"evp_keymgmt_st", !14, i64 0, !14, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216}
!24 = !{!17, !5, i64 24}
!25 = !{!6, !6, i64 0}
!26 = !{!17, !14, i64 0}
!27 = !{!28, !5, i64 48}
!28 = !{!"evp_signature_st", !14, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240}
!29 = !{!28, !5, i64 24}
!30 = !{!9, !5, i64 0}
!31 = !{!9, !5, i64 64}
!32 = !{!28, !5, i64 136}
!33 = !{!28, !5, i64 104}
!34 = !{!17, !5, i64 120}
!35 = !{!36, !14, i64 4}
!36 = !{!"evp_pkey_method_st", !14, i64 0, !14, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248}
!37 = !{!14, !14, i64 0}
!38 = !{!36, !5, i64 128}
!39 = !{!36, !5, i64 216}
!40 = !{!9, !5, i64 48}
!41 = !{!36, !5, i64 112}
!42 = !{!36, !5, i64 208}
!43 = !{!36, !5, i64 248}
!44 = !{!28, !5, i64 112}
!45 = !{!28, !5, i64 144}
!46 = !{!9, !10, i64 24}
!47 = !{!28, !5, i64 120}
!48 = !{!36, !5, i64 120}
!49 = !{!28, !5, i64 128}
!50 = !{!28, !5, i64 152}
!51 = !{!36, !5, i64 136}
!52 = !{!28, !5, i64 160}
