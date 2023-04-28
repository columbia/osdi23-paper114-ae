; ModuleID = 'crypto/evp/kem.c'
source_filename = "crypto/evp/kem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_provider_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_kem_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i8*, i64*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }

@.str = private unnamed_addr constant [17 x i8] c"crypto/evp/kem.c\00", align 1
@__func__.EVP_PKEY_encapsulate = private unnamed_addr constant [21 x i8] c"EVP_PKEY_encapsulate\00", align 1
@__func__.EVP_PKEY_decapsulate = private unnamed_addr constant [21 x i8] c"EVP_PKEY_decapsulate\00", align 1
@__func__.evp_kem_init = private unnamed_addr constant [13 x i8] c"evp_kem_init\00", align 1
@__func__.evp_kem_from_algorithm = private unnamed_addr constant [23 x i8] c"evp_kem_from_algorithm\00", align 1
@__func__.evp_kem_new = private unnamed_addr constant [12 x i8] c"evp_kem_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_encapsulate_init(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_kem_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 4096, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_kem_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %operation, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 3
  %1 = load i8*, i8** %keytype, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.evp_kem_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %operation2 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 %operation, i32* %operation2, align 8, !tbaa !12
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  store %struct.evp_keymgmt_st* %2, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !14
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !15
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !16
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %5 = load i8*, i8** %propquery, align 8, !tbaa !17
  %call = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %3, %struct.ossl_lib_ctx_st* noundef %4, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %5) #8
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then64.sink.split, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %6 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !14
  %call5 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %6) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then64.sink.split, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false4
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %7) #8
  %8 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !14
  store %struct.evp_keymgmt_st* %8, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  %query_operation_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %8, i64 0, i32 20
  %9 = load i8* (i32)*, i8* (i32)** %query_operation_name, align 8, !tbaa !18
  %cmp11.not = icmp eq i8* (i32)* %9, null
  br i1 %cmp11.not, label %if.then18, label %if.end16

if.end16:                                         ; preds = %if.end7
  %call15 = call i8* %9(i32 noundef 14) #8
  %cmp17 = icmp eq i8* %call15, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end7, %if.end16
  %10 = load i8*, i8** %keytype, align 8, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %supported_kem.1 = phi i8* [ %10, %if.then18 ], [ %call15, %if.end16 ]
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !16
  %12 = load i8*, i8** %propquery, align 8, !tbaa !17
  %call23 = call %struct.evp_kem_st* @EVP_KEM_fetch(%struct.ossl_lib_ctx_st* noundef %11, i8* noundef %supported_kem.1, i8* noundef %12) #6
  %cmp24 = icmp eq %struct.evp_kem_st* %call23, null
  br i1 %cmp24, label %if.then64.sink.split, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end20
  %13 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  %call27 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %13) #8
  %call28 = call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef nonnull %call23) #6
  %cmp29.not = icmp eq %struct.ossl_provider_st* %call27, %call28
  br i1 %cmp29.not, label %if.end31, label %if.then64.sink.split

if.end31:                                         ; preds = %lor.lhs.false25
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem32 = bitcast %union.anon* %op to %struct.evp_kem_st**
  store %struct.evp_kem_st* %call23, %struct.evp_kem_st** %kem32, align 8, !tbaa !20
  %newctx = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call23, i64 0, i32 6
  %14 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !21
  %prov = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call23, i64 0, i32 3
  %15 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  %call33 = call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %15) #8
  %call34 = call i8* %14(i8* noundef %call33) #8
  %16 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  store i8* %call34, i8** %16, align 8, !tbaa !20
  %cmp40 = icmp eq i8* %call34, null
  br i1 %cmp40, label %if.then64.sink.split, label %if.end42

if.end42:                                         ; preds = %if.end31
  switch i32 %operation, label %if.then64.sink.split [
    i32 4096, label %sw.bb
    i32 8192, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end42
  %encapsulate_init = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call23, i64 0, i32 7
  %17 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %encapsulate_init, align 8, !tbaa !24
  %cmp43 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %17, null
  br i1 %cmp43, label %if.then64.sink.split, label %sw.epilog

sw.bb51:                                          ; preds = %if.end42
  %decapsulate_init = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call23, i64 0, i32 9
  %18 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %decapsulate_init, align 8, !tbaa !25
  %cmp52 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %18, null
  br i1 %cmp52, label %if.then64.sink.split, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb
  %.sink = phi i32 (i8*, i8*, %struct.ossl_param_st*)* [ %17, %sw.bb ], [ %18, %sw.bb51 ]
  %call59 = call i32 %.sink(i8* noundef nonnull %call34, i8* noundef nonnull %call, %struct.ossl_param_st* noundef %params) #8
  %cmp60 = icmp sgt i32 %call59, 0
  br i1 %cmp60, label %cleanup, label %if.then64

if.then64.sink.split:                             ; preds = %if.end42, %sw.bb51, %sw.bb, %if.end31, %if.end20, %lor.lhs.false25, %if.end, %lor.lhs.false4
  %.sink117 = phi i32 [ 45, %lor.lhs.false4 ], [ 45, %if.end ], [ 64, %lor.lhs.false25 ], [ 64, %if.end20 ], [ 73, %if.end31 ], [ 80, %sw.bb ], [ 88, %sw.bb51 ], [ 95, %if.end42 ]
  %.sink116 = phi i32 [ 134, %lor.lhs.false4 ], [ 134, %if.end ], [ 150, %lor.lhs.false25 ], [ 150, %if.end20 ], [ 134, %if.end31 ], [ 150, %sw.bb ], [ 150, %sw.bb51 ], [ 134, %if.end42 ]
  %ret.1.ph = phi i32 [ 0, %lor.lhs.false4 ], [ 0, %if.end ], [ -2, %lor.lhs.false25 ], [ -2, %if.end20 ], [ 0, %if.end31 ], [ -2, %sw.bb ], [ -2, %sw.bb51 ], [ 0, %if.end42 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink117, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.evp_kem_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink116, i8* noundef null) #8
  br label %if.then64

if.then64:                                        ; preds = %if.then64.sink.split, %sw.epilog
  %ret.1 = phi i32 [ %call59, %sw.epilog ], [ %ret.1.ph, %if.then64.sink.split ]
  call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  store i32 0, i32* %operation2, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then64, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.1, %if.then64 ], [ 1, %sw.epilog ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_encapsulate(%struct.evp_pkey_ctx_st* noundef readonly %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %secret, i64* noundef %secretlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp1.not = icmp eq i32 %0, 4096
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_encapsulate, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %return

if.end3:                                          ; preds = %if.end
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !20
  %cmp4 = icmp eq i8* %2, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_encapsulate, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %return

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp ne i8* %out, null
  %cmp8 = icmp eq i8* %secret, null
  %or.cond = and i1 %cmp7, %cmp8
  br i1 %or.cond, label %return, label %if.end10

if.end10:                                         ; preds = %if.end6
  %kem = bitcast %union.anon* %op to %struct.evp_kem_st**
  %3 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !20
  %encapsulate = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %3, i64 0, i32 8
  %4 = load i32 (i8*, i8*, i64*, i8*, i64*)*, i32 (i8*, i8*, i64*, i8*, i64*)** %encapsulate, align 8, !tbaa !26
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %out, i64* noundef %outlen, i8* noundef %secret, i64* noundef %secretlen) #8
  br label %return

return:                                           ; preds = %if.end6, %entry, %if.end10, %if.then5, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -2, %if.then5 ], [ %call, %if.end10 ], [ 0, %entry ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_decapsulate_init(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_kem_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 8192, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_decapsulate(%struct.evp_pkey_ctx_st* noundef readonly %ctx, i8* noundef %secret, i64* noundef %secretlen, i8* noundef %in, i64 noundef %inlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  %cmp1 = icmp eq i8* %in, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i64 %inlen, 0
  %or.cond18 = or i1 %or.cond, %cmp3
  br i1 %or.cond18, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp eq i8* %secret, null
  %cmp6 = icmp eq i64* %secretlen, null
  %or.cond19 = and i1 %cmp5, %cmp6
  br i1 %or.cond19, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !12
  %cmp7.not = icmp eq i32 %0, 8192
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_decapsulate, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %return

if.end9:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !20
  %cmp10 = icmp eq i8* %2, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EVP_PKEY_decapsulate, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %return

if.end12:                                         ; preds = %if.end9
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %kem = bitcast %union.anon* %op to %struct.evp_kem_st**
  %3 = load %struct.evp_kem_st*, %struct.evp_kem_st** %kem, align 8, !tbaa !20
  %decapsulate = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %3, i64 0, i32 10
  %4 = load i32 (i8*, i8*, i64*, i8*, i64)*, i32 (i8*, i8*, i64*, i8*, i64)** %decapsulate, align 8, !tbaa !27
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %secret, i64* noundef %secretlen, i8* noundef nonnull %in, i64 noundef %inlen) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false4, %if.end12, %if.then11, %if.then8
  %retval.0 = phi i32 [ -1, %if.then8 ], [ -2, %if.then11 ], [ %call, %if.end12 ], [ 0, %lor.lhs.false4 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_KEM_free(%struct.evp_kem_st* noundef %kem) #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %cmp = icmp eq %struct.evp_kem_st* %kem, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 4
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #6
  %1 = load i32, i32* %i, align 4, !tbaa !28
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 5
  %type_name = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 1
  %2 = load i8*, i8** %type_name, align 8, !tbaa !29
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 313) #8
  %prov = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 3
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %3) #8
  %4 = load i8*, i8** %lock, align 8, !tbaa !30
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #8
  %5 = bitcast %struct.evp_kem_st* %kem to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 316) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !28
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_KEM_up_ref(%struct.evp_kem_st* nocapture noundef %kem) #4 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %refcnt = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 4
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* nocapture noundef readonly %kem) local_unnamed_addr #5 {
entry:
  %prov = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_kem_st* @EVP_KEM_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 14, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_kem_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_kem_st*)* @EVP_KEM_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_kem_st*)* @EVP_KEM_free to void (i8*)*)) #8
  %0 = bitcast i8* %call to %struct.evp_kem_st*
  ret %struct.evp_kem_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_kem_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !31
  %call = tail call fastcc %struct.evp_kem_st* @evp_kem_new(%struct.ossl_provider_st* noundef %prov) #6
  %cmp = icmp eq %struct.evp_kem_st* %call, null
  br i1 %cmp, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 0
  store i32 %name_id, i32* %name_id1, align 8, !tbaa !33
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #8
  %type_name = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 1
  store i8* %call2, i8** %type_name, align 8, !tbaa !29
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %1 = load i8*, i8** %algorithm_description, align 8, !tbaa !34
  %description = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 2
  store i8* %1, i8** %description, align 8, !tbaa !35
  %settable_ctx_params = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 16
  %set_ctx_params = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 15
  %gettable_ctx_params = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 14
  %get_ctx_params = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 13
  %dupctx = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 12
  %freectx = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 11
  %decapsulate = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 10
  %decapsulate_init = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 9
  %encapsulate = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 8
  %encapsulate_init = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 7
  %newctx = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %call, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %ctxfncnt.0 = phi i32 [ 0, %if.end5 ], [ %ctxfncnt.1, %for.inc ]
  %encfncnt.0 = phi i32 [ 0, %if.end5 ], [ %encfncnt.1, %for.inc ]
  %decfncnt.0 = phi i32 [ 0, %if.end5 ], [ %decfncnt.1, %for.inc ]
  %gparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %gparamfncnt.1, %for.inc ]
  %sparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %sparamfncnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %2 = load i32, i32* %function_id, align 8, !tbaa !36
  switch i32 %2, label %for.inc [
    i32 0, label %for.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 3, label %sw.bb20
    i32 4, label %sw.bb27
    i32 5, label %sw.bb34
    i32 6, label %sw.bb41
    i32 7, label %sw.bb48
    i32 8, label %sw.bb54
    i32 9, label %sw.bb61
    i32 10, label %sw.bb68
    i32 11, label %sw.bb75
  ]

sw.bb:                                            ; preds = %for.cond
  %3 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !21
  %cmp8.not = icmp eq i8* (i8*)* %3, null
  br i1 %cmp8.not, label %if.end10, label %for.inc

if.end10:                                         ; preds = %sw.bb
  %call11 = tail call fastcc i8* (i8*)* @OSSL_FUNC_kem_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i8* (i8*)* %call11, i8* (i8*)** %newctx, align 8, !tbaa !21
  %inc = add nsw i32 %ctxfncnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %4 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %encapsulate_init, align 8, !tbaa !24
  %cmp14.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %4, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_encapsulate_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call17, i32 (i8*, i8*, %struct.ossl_param_st*)** %encapsulate_init, align 8, !tbaa !24
  %inc19 = add nsw i32 %encfncnt.0, 1
  br label %for.inc

sw.bb20:                                          ; preds = %for.cond
  %5 = load i32 (i8*, i8*, i64*, i8*, i64*)*, i32 (i8*, i8*, i64*, i8*, i64*)** %encapsulate, align 8, !tbaa !26
  %cmp21.not = icmp eq i32 (i8*, i8*, i64*, i8*, i64*)* %5, null
  br i1 %cmp21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %sw.bb20
  %call24 = tail call fastcc i32 (i8*, i8*, i64*, i8*, i64*)* @OSSL_FUNC_kem_encapsulate(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, i64*, i8*, i64*)* %call24, i32 (i8*, i8*, i64*, i8*, i64*)** %encapsulate, align 8, !tbaa !26
  %inc26 = add nsw i32 %encfncnt.0, 1
  br label %for.inc

sw.bb27:                                          ; preds = %for.cond
  %6 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %decapsulate_init, align 8, !tbaa !25
  %cmp28.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %6, null
  br i1 %cmp28.not, label %if.end30, label %for.inc

if.end30:                                         ; preds = %sw.bb27
  %call31 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_decapsulate_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call31, i32 (i8*, i8*, %struct.ossl_param_st*)** %decapsulate_init, align 8, !tbaa !25
  %inc33 = add nsw i32 %decfncnt.0, 1
  br label %for.inc

sw.bb34:                                          ; preds = %for.cond
  %7 = load i32 (i8*, i8*, i64*, i8*, i64)*, i32 (i8*, i8*, i64*, i8*, i64)** %decapsulate, align 8, !tbaa !27
  %cmp35.not = icmp eq i32 (i8*, i8*, i64*, i8*, i64)* %7, null
  br i1 %cmp35.not, label %if.end37, label %for.inc

if.end37:                                         ; preds = %sw.bb34
  %call38 = tail call fastcc i32 (i8*, i8*, i64*, i8*, i64)* @OSSL_FUNC_kem_decapsulate(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, i64*, i8*, i64)* %call38, i32 (i8*, i8*, i64*, i8*, i64)** %decapsulate, align 8, !tbaa !27
  %inc40 = add nsw i32 %decfncnt.0, 1
  br label %for.inc

sw.bb41:                                          ; preds = %for.cond
  %8 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !38
  %cmp42.not = icmp eq void (i8*)* %8, null
  br i1 %cmp42.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %sw.bb41
  %call45 = tail call fastcc void (i8*)* @OSSL_FUNC_kem_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store void (i8*)* %call45, void (i8*)** %freectx, align 8, !tbaa !38
  %inc47 = add nsw i32 %ctxfncnt.0, 1
  br label %for.inc

sw.bb48:                                          ; preds = %for.cond
  %9 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !39
  %cmp49.not = icmp eq i8* (i8*)* %9, null
  br i1 %cmp49.not, label %if.end51, label %for.inc

if.end51:                                         ; preds = %sw.bb48
  %call52 = tail call fastcc i8* (i8*)* @OSSL_FUNC_kem_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i8* (i8*)* %call52, i8* (i8*)** %dupctx, align 8, !tbaa !39
  br label %for.inc

sw.bb54:                                          ; preds = %for.cond
  %10 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !40
  %cmp55.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %10, null
  br i1 %cmp55.not, label %if.end57, label %for.inc

if.end57:                                         ; preds = %sw.bb54
  %call58 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, %struct.ossl_param_st*)* %call58, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !40
  %inc60 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb61:                                          ; preds = %for.cond
  %11 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !41
  %cmp62.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %11, null
  br i1 %cmp62.not, label %if.end64, label %for.inc

if.end64:                                         ; preds = %sw.bb61
  %call65 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kem_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store %struct.ossl_param_st* (i8*, i8*)* %call65, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !41
  %inc67 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb68:                                          ; preds = %for.cond
  %12 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !42
  %cmp69.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %12, null
  br i1 %cmp69.not, label %if.end71, label %for.inc

if.end71:                                         ; preds = %sw.bb68
  %call72 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, %struct.ossl_param_st*)* %call72, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !42
  %inc74 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

sw.bb75:                                          ; preds = %for.cond
  %13 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !43
  %cmp76.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %13, null
  br i1 %cmp76.not, label %if.end78, label %for.inc

if.end78:                                         ; preds = %sw.bb75
  %call79 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kem_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store %struct.ossl_param_st* (i8*, i8*)* %call79, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !43
  %inc81 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end23, %if.end30, %if.end37, %if.end44, %if.end51, %if.end57, %if.end64, %if.end71, %if.end78, %sw.bb, %sw.bb13, %sw.bb20, %sw.bb27, %sw.bb34, %sw.bb41, %sw.bb48, %sw.bb54, %sw.bb61, %sw.bb68, %sw.bb75
  %ctxfncnt.1 = phi i32 [ %ctxfncnt.0, %sw.bb75 ], [ %ctxfncnt.0, %if.end78 ], [ %ctxfncnt.0, %sw.bb68 ], [ %ctxfncnt.0, %if.end71 ], [ %ctxfncnt.0, %sw.bb61 ], [ %ctxfncnt.0, %if.end64 ], [ %ctxfncnt.0, %sw.bb54 ], [ %ctxfncnt.0, %if.end57 ], [ %ctxfncnt.0, %sw.bb48 ], [ %ctxfncnt.0, %if.end51 ], [ %ctxfncnt.0, %sw.bb41 ], [ %inc47, %if.end44 ], [ %ctxfncnt.0, %sw.bb34 ], [ %ctxfncnt.0, %if.end37 ], [ %ctxfncnt.0, %sw.bb27 ], [ %ctxfncnt.0, %if.end30 ], [ %ctxfncnt.0, %sw.bb20 ], [ %ctxfncnt.0, %if.end23 ], [ %ctxfncnt.0, %sw.bb13 ], [ %ctxfncnt.0, %if.end16 ], [ %ctxfncnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %ctxfncnt.0, %for.cond ]
  %encfncnt.1 = phi i32 [ %encfncnt.0, %sw.bb75 ], [ %encfncnt.0, %if.end78 ], [ %encfncnt.0, %sw.bb68 ], [ %encfncnt.0, %if.end71 ], [ %encfncnt.0, %sw.bb61 ], [ %encfncnt.0, %if.end64 ], [ %encfncnt.0, %sw.bb54 ], [ %encfncnt.0, %if.end57 ], [ %encfncnt.0, %sw.bb48 ], [ %encfncnt.0, %if.end51 ], [ %encfncnt.0, %sw.bb41 ], [ %encfncnt.0, %if.end44 ], [ %encfncnt.0, %sw.bb34 ], [ %encfncnt.0, %if.end37 ], [ %encfncnt.0, %sw.bb27 ], [ %encfncnt.0, %if.end30 ], [ %encfncnt.0, %sw.bb20 ], [ %inc26, %if.end23 ], [ %encfncnt.0, %sw.bb13 ], [ %inc19, %if.end16 ], [ %encfncnt.0, %sw.bb ], [ %encfncnt.0, %if.end10 ], [ %encfncnt.0, %for.cond ]
  %decfncnt.1 = phi i32 [ %decfncnt.0, %sw.bb75 ], [ %decfncnt.0, %if.end78 ], [ %decfncnt.0, %sw.bb68 ], [ %decfncnt.0, %if.end71 ], [ %decfncnt.0, %sw.bb61 ], [ %decfncnt.0, %if.end64 ], [ %decfncnt.0, %sw.bb54 ], [ %decfncnt.0, %if.end57 ], [ %decfncnt.0, %sw.bb48 ], [ %decfncnt.0, %if.end51 ], [ %decfncnt.0, %sw.bb41 ], [ %decfncnt.0, %if.end44 ], [ %decfncnt.0, %sw.bb34 ], [ %inc40, %if.end37 ], [ %decfncnt.0, %sw.bb27 ], [ %inc33, %if.end30 ], [ %decfncnt.0, %sw.bb20 ], [ %decfncnt.0, %if.end23 ], [ %decfncnt.0, %sw.bb13 ], [ %decfncnt.0, %if.end16 ], [ %decfncnt.0, %sw.bb ], [ %decfncnt.0, %if.end10 ], [ %decfncnt.0, %for.cond ]
  %gparamfncnt.1 = phi i32 [ %gparamfncnt.0, %sw.bb75 ], [ %gparamfncnt.0, %if.end78 ], [ %gparamfncnt.0, %sw.bb68 ], [ %gparamfncnt.0, %if.end71 ], [ %gparamfncnt.0, %sw.bb61 ], [ %inc67, %if.end64 ], [ %gparamfncnt.0, %sw.bb54 ], [ %inc60, %if.end57 ], [ %gparamfncnt.0, %sw.bb48 ], [ %gparamfncnt.0, %if.end51 ], [ %gparamfncnt.0, %sw.bb41 ], [ %gparamfncnt.0, %if.end44 ], [ %gparamfncnt.0, %sw.bb34 ], [ %gparamfncnt.0, %if.end37 ], [ %gparamfncnt.0, %sw.bb27 ], [ %gparamfncnt.0, %if.end30 ], [ %gparamfncnt.0, %sw.bb20 ], [ %gparamfncnt.0, %if.end23 ], [ %gparamfncnt.0, %sw.bb13 ], [ %gparamfncnt.0, %if.end16 ], [ %gparamfncnt.0, %sw.bb ], [ %gparamfncnt.0, %if.end10 ], [ %gparamfncnt.0, %for.cond ]
  %sparamfncnt.1 = phi i32 [ %sparamfncnt.0, %sw.bb75 ], [ %inc81, %if.end78 ], [ %sparamfncnt.0, %sw.bb68 ], [ %inc74, %if.end71 ], [ %sparamfncnt.0, %sw.bb61 ], [ %sparamfncnt.0, %if.end64 ], [ %sparamfncnt.0, %sw.bb54 ], [ %sparamfncnt.0, %if.end57 ], [ %sparamfncnt.0, %sw.bb48 ], [ %sparamfncnt.0, %if.end51 ], [ %sparamfncnt.0, %sw.bb41 ], [ %sparamfncnt.0, %if.end44 ], [ %sparamfncnt.0, %sw.bb34 ], [ %sparamfncnt.0, %if.end37 ], [ %sparamfncnt.0, %sw.bb27 ], [ %sparamfncnt.0, %if.end30 ], [ %sparamfncnt.0, %sw.bb20 ], [ %sparamfncnt.0, %if.end23 ], [ %sparamfncnt.0, %sw.bb13 ], [ %sparamfncnt.0, %if.end16 ], [ %sparamfncnt.0, %sw.bb ], [ %sparamfncnt.0, %if.end10 ], [ %sparamfncnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %cmp82.not = icmp eq i32 %ctxfncnt.0, 2
  br i1 %cmp82.not, label %lor.lhs.false, label %err.sink.split

lor.lhs.false:                                    ; preds = %for.end
  %14 = and i32 %encfncnt.0, -3
  %.not = icmp eq i32 %14, 0
  %15 = and i32 %decfncnt.0, -3
  %.not177 = icmp eq i32 %15, 0
  %or.cond = select i1 %.not, i1 %.not177, i1 false
  br i1 %or.cond, label %lor.lhs.false89, label %err.sink.split

lor.lhs.false89:                                  ; preds = %lor.lhs.false
  %cmp84 = icmp eq i32 %encfncnt.0, 2
  %cmp88 = icmp eq i32 %decfncnt.0, 2
  %or.cond110 = select i1 %cmp84, i1 true, i1 %cmp88
  %16 = and i32 %gparamfncnt.0, -3
  %.not178 = icmp eq i32 %16, 0
  %or.cond180 = select i1 %or.cond110, i1 %.not178, i1 false
  %17 = and i32 %sparamfncnt.0, -3
  %.not179 = icmp eq i32 %17, 0
  %or.cond181 = select i1 %or.cond180, i1 %.not179, i1 false
  br i1 %or.cond181, label %if.end102, label %err.sink.split

if.end102:                                        ; preds = %lor.lhs.false89
  %18 = bitcast %struct.evp_kem_st* %call to i8*
  br label %cleanup

err.sink.split:                                   ; preds = %for.end, %lor.lhs.false, %lor.lhs.false89, %entry
  %.sink182 = phi i32 [ 196, %entry ], [ 293, %lor.lhs.false89 ], [ 293, %lor.lhs.false ], [ 293, %for.end ]
  %.sink = phi i32 [ 786688, %entry ], [ 193, %lor.lhs.false89 ], [ 193, %lor.lhs.false ], [ 193, %for.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink182, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.evp_kem_from_algorithm, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  tail call void @EVP_KEM_free(%struct.evp_kem_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end102
  %retval.0 = phi i8* [ null, %err ], [ %18, %if.end102 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KEM_is_a(%struct.evp_kem_st* nocapture noundef readonly %kem, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  %name_id = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !33
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #8
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_kem_get_number(%struct.evp_kem_st* nocapture noundef readonly %kem) local_unnamed_addr #5 {
entry:
  %name_id = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 0
  %0 = load i32, i32* %name_id, align 8, !tbaa !33
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KEM_get0_name(%struct.evp_kem_st* nocapture noundef readonly %kem) local_unnamed_addr #5 {
entry:
  %type_name = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 1
  %0 = load i8*, i8** %type_name, align 8, !tbaa !29
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_KEM_get0_description(%struct.evp_kem_st* nocapture noundef readonly %kem) local_unnamed_addr #5 {
entry:
  %description = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 2
  %0 = load i8*, i8** %description, align 8, !tbaa !35
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_KEM_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_kem_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_kem_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 14, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_kem_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_kem_st*)* @EVP_KEM_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_kem_st*)* @EVP_KEM_free to void (i8*)*)) #8
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_KEM_names_do_all(%struct.evp_kem_st* nocapture noundef readonly %kem, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !33
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEM_gettable_ctx_params(%struct.evp_kem_st* noundef readonly %kem) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kem_st* %kem, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %gettable_ctx_params = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 14
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !41
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef nonnull %kem) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !41
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_KEM_settable_ctx_params(%struct.evp_kem_st* noundef readonly %kem) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_kem_st* %kem, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.evp_kem_st, %struct.evp_kem_st* %kem, i64 0, i32 16
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !43
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_KEM_get0_provider(%struct.evp_kem_st* noundef nonnull %kem) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !43
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_kem_st* @evp_kem_new(%struct.ossl_provider_st* noundef %prov) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 136, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 167) #8
  %0 = bitcast i8* %call to %struct.evp_kem_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.evp_kem_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !30
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.evp_kem_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 177) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %prov6 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %prov6 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %2, align 8, !tbaa !23
  %call7 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) #8
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !46
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.evp_kem_st* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ]
  ret %struct.evp_kem_st* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_kem_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !47
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_encapsulate_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !47
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i8*, i64*)* @OSSL_FUNC_kem_encapsulate(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i8*, i64*)**
  %1 = load i32 (i8*, i8*, i64*, i8*, i64*)*, i32 (i8*, i8*, i64*, i8*, i64*)** %0, align 8, !tbaa !47
  ret i32 (i8*, i8*, i64*, i8*, i64*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_decapsulate_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !47
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i8*, i64)* @OSSL_FUNC_kem_decapsulate(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i8*, i64)*, i32 (i8*, i8*, i64*, i8*, i64)** %0, align 8, !tbaa !47
  ret i32 (i8*, i8*, i64*, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_kem_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !47
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_kem_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !47
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !47
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kem_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !47
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_kem_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !47
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_kem_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !47
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !10, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !6, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !9, i64 32}
!14 = !{!9, !9, i64 0}
!15 = !{!5, !9, i64 136}
!16 = !{!5, !9, i64 8}
!17 = !{!5, !9, i64 16}
!18 = !{!19, !9, i64 152}
!19 = !{!"evp_keymgmt_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !9, i64 48}
!22 = !{!"evp_kem_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128}
!23 = !{!22, !9, i64 24}
!24 = !{!22, !9, i64 56}
!25 = !{!22, !9, i64 72}
!26 = !{!22, !9, i64 64}
!27 = !{!22, !9, i64 80}
!28 = !{!6, !6, i64 0}
!29 = !{!22, !9, i64 8}
!30 = !{!22, !9, i64 40}
!31 = !{!32, !9, i64 16}
!32 = !{!"ossl_algorithm_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!33 = !{!22, !6, i64 0}
!34 = !{!32, !9, i64 24}
!35 = !{!22, !9, i64 16}
!36 = !{!37, !6, i64 0}
!37 = !{!"ossl_dispatch_st", !6, i64 0, !9, i64 8}
!38 = !{!22, !9, i64 88}
!39 = !{!22, !9, i64 96}
!40 = !{!22, !9, i64 104}
!41 = !{!22, !9, i64 112}
!42 = !{!22, !9, i64 120}
!43 = !{!22, !9, i64 128}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!22, !7, i64 32}
!47 = !{!37, !9, i64 8}
