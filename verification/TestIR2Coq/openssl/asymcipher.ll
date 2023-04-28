; ModuleID = 'crypto/evp/asymcipher.c'
source_filename = "crypto/evp/asymcipher.c"
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
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.evp_asym_cipher_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/evp/asymcipher.c\00", align 1
@__func__.EVP_PKEY_encrypt = private unnamed_addr constant [17 x i8] c"EVP_PKEY_encrypt\00", align 1
@__func__.EVP_PKEY_decrypt = private unnamed_addr constant [17 x i8] c"EVP_PKEY_decrypt\00", align 1
@__func__.evp_pkey_asym_cipher_init = private unnamed_addr constant [26 x i8] c"evp_pkey_asym_cipher_init\00", align 1
@__func__.evp_asym_cipher_from_algorithm = private unnamed_addr constant [31 x i8] c"evp_asym_cipher_from_algorithm\00", align 1
@__func__.evp_asym_cipher_new = private unnamed_addr constant [20 x i8] c"evp_asym_cipher_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_asym_cipher_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 512, %struct.ossl_param_st* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_asym_cipher_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %operation, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %tmp_keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %0 = bitcast %struct.evp_keymgmt_st** %tmp_keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_asym_cipher_init, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %operation1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  store i32 %operation, i32* %operation1, align 8, !tbaa !8
  %call = tail call i32 @ERR_set_mark() #8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 4
  %1 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  %cmp2 = icmp eq %struct.evp_keymgmt_st* %1, null
  br i1 %cmp2, label %legacy, label %if.end4

if.end4:                                          ; preds = %if.end
  store %struct.evp_keymgmt_st* %1, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %propquery = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 2
  %4 = load i8*, i8** %propquery, align 8, !tbaa !16
  %call6 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %2, %struct.ossl_lib_ctx_st* noundef %3, %struct.evp_keymgmt_st** noundef nonnull %tmp_keymgmt, i8* noundef %4) #8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %legacy, label %if.end9

if.end9:                                          ; preds = %if.end4
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  %call10 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %5) #8
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @ERR_clear_last_mark() #8
  br label %if.then101.sink.split

if.end13:                                         ; preds = %if.end9
  %6 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %6) #8
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %tmp_keymgmt, align 8, !tbaa !4
  store %struct.evp_keymgmt_st* %7, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  %query_operation_name = getelementptr inbounds %struct.evp_keymgmt_st, %struct.evp_keymgmt_st* %7, i64 0, i32 20
  %8 = load i8* (i32)*, i8* (i32)** %query_operation_name, align 8, !tbaa !17
  %cmp17.not = icmp eq i8* (i32)* %8, null
  br i1 %cmp17.not, label %if.then24, label %if.end22

if.end22:                                         ; preds = %if.end13
  %call21 = call i8* %8(i32 noundef 13) #8
  %cmp23 = icmp eq i8* %call21, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end13, %if.end22
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 3
  %9 = load i8*, i8** %keytype, align 8, !tbaa !19
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %supported_ciph.1 = phi i8* [ %9, %if.then24 ], [ %call21, %if.end22 ]
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !15
  %11 = load i8*, i8** %propquery, align 8, !tbaa !16
  %call28 = call %struct.evp_asym_cipher_st* @EVP_ASYM_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %supported_ciph.1, i8* noundef %11) #6
  %cmp29 = icmp eq %struct.evp_asym_cipher_st* %call28, null
  br i1 %cmp29, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %12 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !13
  %call31 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %12) #8
  %call32 = call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef nonnull %call28) #6
  %cmp33.not = icmp eq %struct.ossl_provider_st* %call31, %call32
  br i1 %cmp33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false, %if.end25
  call void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef %call28) #6
  br label %legacy

if.end35:                                         ; preds = %lor.lhs.false
  %call36 = call i32 @ERR_pop_to_mark() #8
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher37 = bitcast %union.anon* %op to %struct.evp_asym_cipher_st**
  store %struct.evp_asym_cipher_st* %call28, %struct.evp_asym_cipher_st** %cipher37, align 8, !tbaa !20
  %newctx = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call28, i64 0, i32 6
  %13 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !21
  %prov = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call28, i64 0, i32 3
  %14 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  %call38 = call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %14) #8
  %call39 = call i8* %13(i8* noundef %call38) #8
  %15 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  store i8* %call39, i8** %15, align 8, !tbaa !20
  %cmp45 = icmp eq i8* %call39, null
  br i1 %cmp45, label %if.then101.sink.split, label %if.end47

if.end47:                                         ; preds = %if.end35
  switch i32 %operation, label %if.then101.sink.split [
    i32 512, label %sw.bb
    i32 1024, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end47
  %encrypt_init = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call28, i64 0, i32 7
  %16 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %encrypt_init, align 8, !tbaa !24
  %cmp48 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %16, null
  br i1 %cmp48, label %if.then101.sink.split, label %sw.epilog

sw.bb56:                                          ; preds = %if.end47
  %decrypt_init = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call28, i64 0, i32 9
  %17 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %decrypt_init, align 8, !tbaa !25
  %cmp57 = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %17, null
  br i1 %cmp57, label %if.then101.sink.split, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb56, %sw.bb
  %.sink = phi i32 (i8*, i8*, %struct.ossl_param_st*)* [ %16, %sw.bb ], [ %17, %sw.bb56 ]
  %call64 = call i32 %.sink(i8* noundef nonnull %call39, i8* noundef nonnull %call6, %struct.ossl_param_st* noundef %params) #8
  %cmp65 = icmp slt i32 %call64, 1
  br i1 %cmp65, label %if.then101, label %cleanup

legacy:                                           ; preds = %if.end4, %if.end, %if.then34
  %call68 = call i32 @ERR_pop_to_mark() #8
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %18 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !26
  %cmp69 = icmp eq %struct.evp_pkey_method_st* %18, null
  br i1 %cmp69, label %if.then73, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %legacy
  %encrypt = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %18, i64 0, i32 20
  %19 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %encrypt, align 8, !tbaa !27
  %cmp72 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %19, null
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %lor.lhs.false70, %legacy
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_asym_cipher_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false70
  %20 = load i32, i32* %operation1, align 8, !tbaa !8
  switch i32 %20, label %if.then101.sink.split [
    i32 512, label %sw.bb76
    i32 1024, label %sw.bb87
  ]

sw.bb76:                                          ; preds = %if.end74
  %encrypt_init78 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %18, i64 0, i32 19
  %encrypt_init79 = bitcast {}** %encrypt_init78 to i32 (%struct.evp_pkey_ctx_st*)**
  %21 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %encrypt_init79, align 8, !tbaa !29
  %cmp80 = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %21, null
  br i1 %cmp80, label %cleanup, label %err

sw.bb87:                                          ; preds = %if.end74
  %decrypt_init89 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %18, i64 0, i32 21
  %decrypt_init90 = bitcast {}** %decrypt_init89 to i32 (%struct.evp_pkey_ctx_st*)**
  %22 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %decrypt_init90, align 8, !tbaa !30
  %cmp91 = icmp eq i32 (%struct.evp_pkey_ctx_st*)* %22, null
  br i1 %cmp91, label %cleanup, label %err

err:                                              ; preds = %sw.bb87, %sw.bb76
  %.sink170 = phi i32 (%struct.evp_pkey_ctx_st*)* [ %21, %sw.bb76 ], [ %22, %sw.bb87 ]
  %call86 = call i32 %.sink170(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  %cmp100 = icmp slt i32 %call86, 1
  br i1 %cmp100, label %if.then101, label %cleanup

if.then101.sink.split:                            ; preds = %if.end74, %if.end47, %sw.bb56, %sw.bb, %if.end35, %if.then11
  %.sink172 = phi i32 [ 53, %if.then11 ], [ 100, %if.end35 ], [ 107, %sw.bb ], [ 115, %sw.bb56 ], [ 122, %if.end47 ], [ 153, %if.end74 ]
  %.sink171 = phi i32 [ 134, %if.then11 ], [ 134, %if.end35 ], [ 150, %sw.bb ], [ 150, %sw.bb56 ], [ 134, %if.end47 ], [ 134, %if.end74 ]
  %ret.1169.ph = phi i32 [ 0, %if.then11 ], [ 0, %if.end35 ], [ -2, %sw.bb ], [ -2, %sw.bb56 ], [ 0, %if.end47 ], [ -1, %if.end74 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink172, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.evp_pkey_asym_cipher_init, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink171, i8* noundef null) #8
  br label %if.then101

if.then101:                                       ; preds = %if.then101.sink.split, %sw.epilog, %err
  %ret.1169 = phi i32 [ %call86, %err ], [ %call64, %sw.epilog ], [ %ret.1169.ph, %if.then101.sink.split ]
  call void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef nonnull %ctx) #8
  store i32 0, i32* %operation1, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then101, %sw.bb87, %sw.bb76, %sw.epilog, %if.then73, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -2, %if.then73 ], [ 1, %sw.epilog ], [ 1, %sw.bb76 ], [ 1, %sw.bb87 ], [ %ret.1169, %if.then101 ], [ %call86, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_encrypt_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_asym_cipher_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 512, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup38

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !8
  %cmp1.not = icmp eq i32 %0, 512
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup38

if.end3:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !20
  %cmp4 = icmp eq i8* %2, null
  br i1 %cmp4, label %legacy, label %if.end6

if.end6:                                          ; preds = %if.end3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op to %struct.evp_asym_cipher_st**
  %3 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !20
  %encrypt = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %3, i64 0, i32 8
  %4 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %encrypt, align 8, !tbaa !31
  %cmp12 = icmp eq i8* %out, null
  br i1 %cmp12, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end6
  %5 = load i64, i64* %outlen, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %if.end6, %cond.false
  %cond = phi i64 [ %5, %cond.false ], [ 0, %if.end6 ]
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %out, i64* noundef %outlen, i64 noundef %cond, i8* noundef %in, i64 noundef %inlen) #8
  br label %cleanup38

legacy:                                           ; preds = %if.end3
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !26
  %cmp13 = icmp eq %struct.evp_pkey_method_st* %6, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %legacy
  %encrypt15 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 20
  %7 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %encrypt15, align 8, !tbaa !27
  %cmp16 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %7, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup38

if.end18:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 1
  %8 = load i32, i32* %flags, align 4, !tbaa !33
  %and = and i32 %8, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end34, label %if.then20

if.then20:                                        ; preds = %if.end18
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  %call21 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %9) #8
  %conv = sext i32 %call21 to i64
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #8
  br label %cleanup38

if.end25:                                         ; preds = %if.then20
  %cmp26 = icmp eq i8* %out, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  store i64 %conv, i64* %outlen, align 8, !tbaa !32
  br label %cleanup38

if.end29:                                         ; preds = %if.end25
  %10 = load i64, i64* %outlen, align 8, !tbaa !32
  %cmp30 = icmp ult i64 %10, %conv
  br i1 %cmp30, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !26
  %encrypt36.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %.pre, i64 0, i32 20
  %.pre66 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %encrypt36.phi.trans.insert, align 8, !tbaa !27
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_encrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 155, i8* noundef null) #8
  br label %cleanup38

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %if.end18
  %11 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* [ %.pre66, %if.end29.if.end34_crit_edge ], [ %7, %if.end18 ]
  %call37 = tail call i32 %11(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #8
  br label %cleanup38

cleanup38:                                        ; preds = %if.then24, %if.then28, %if.then32, %if.end34, %if.then17, %cond.end, %if.then2, %if.then
  %retval.1 = phi i32 [ -2, %if.then ], [ -1, %if.then2 ], [ -2, %if.then17 ], [ %call37, %if.end34 ], [ %call, %cond.end ], [ 0, %if.then24 ], [ 1, %if.then28 ], [ 0, %if.then32 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_asym_cipher_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 1024, %struct.ossl_param_st* noundef null) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_decrypt_init_ex(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_asym_cipher_init(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 1024, %struct.ossl_param_st* noundef %params) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup38

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 0
  %0 = load i32, i32* %operation, align 8, !tbaa !8
  %cmp1.not = icmp eq i32 %0, 1024
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 151, i8* noundef null) #8
  br label %cleanup38

if.end3:                                          ; preds = %if.end
  %1 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5, i32 0, i32 1
  %2 = load i8*, i8** %1, align 8, !tbaa !20
  %cmp4 = icmp eq i8* %2, null
  br i1 %cmp4, label %legacy, label %if.end6

if.end6:                                          ; preds = %if.end3
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 5
  %cipher = bitcast %union.anon* %op to %struct.evp_asym_cipher_st**
  %3 = load %struct.evp_asym_cipher_st*, %struct.evp_asym_cipher_st** %cipher, align 8, !tbaa !20
  %decrypt = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %3, i64 0, i32 10
  %4 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %decrypt, align 8, !tbaa !34
  %cmp12 = icmp eq i8* %out, null
  br i1 %cmp12, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end6
  %5 = load i64, i64* %outlen, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %if.end6, %cond.false
  %cond = phi i64 [ %5, %cond.false ], [ 0, %if.end6 ]
  %call = tail call i32 %4(i8* noundef nonnull %2, i8* noundef %out, i64* noundef %outlen, i64 noundef %cond, i8* noundef %in, i64 noundef %inlen) #8
  br label %cleanup38

legacy:                                           ; preds = %if.end3
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !26
  %cmp13 = icmp eq %struct.evp_pkey_method_st* %6, null
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %legacy
  %decrypt15 = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 22
  %7 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %decrypt15, align 8, !tbaa !35
  %cmp16 = icmp eq i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %7, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %legacy
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 150, i8* noundef null) #8
  br label %cleanup38

if.end18:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 1
  %8 = load i32, i32* %flags, align 4, !tbaa !33
  %and = and i32 %8, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end34, label %if.then20

if.then20:                                        ; preds = %if.end18
  %pkey = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %ctx, i64 0, i32 14
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !14
  %call21 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %9) #8
  %conv = sext i32 %call21 to i64
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #8
  br label %cleanup38

if.end25:                                         ; preds = %if.then20
  %cmp26 = icmp eq i8* %out, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  store i64 %conv, i64* %outlen, align 8, !tbaa !32
  br label %cleanup38

if.end29:                                         ; preds = %if.end25
  %10 = load i64, i64* %outlen, align 8, !tbaa !32
  %cmp30 = icmp ult i64 %10, %conv
  br i1 %cmp30, label %if.then32, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  %.pre = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !26
  %decrypt36.phi.trans.insert = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %.pre, i64 0, i32 22
  %.pre66 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %decrypt36.phi.trans.insert, align 8, !tbaa !35
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EVP_PKEY_decrypt, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 155, i8* noundef null) #8
  br label %cleanup38

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %if.end18
  %11 = phi i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* [ %.pre66, %if.end29.if.end34_crit_edge ], [ %7, %if.end18 ]
  %call37 = tail call i32 %11(%struct.evp_pkey_ctx_st* noundef nonnull %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #8
  br label %cleanup38

cleanup38:                                        ; preds = %if.then24, %if.then28, %if.then32, %if.end34, %if.then17, %cond.end, %if.then2, %if.then
  %retval.1 = phi i32 [ -2, %if.then ], [ -1, %if.then2 ], [ -2, %if.then17 ], [ %call37, %if.end34 ], [ %call, %cond.end ], [ 0, %if.then24 ], [ 1, %if.then28 ], [ 0, %if.then32 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef %cipher) #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %cmp = icmp eq %struct.evp_asym_cipher_st* %cipher, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 4
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %i) #6
  %1 = load i32, i32* %i, align 4, !tbaa !36
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 5
  %type_name = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 1
  %2 = load i8*, i8** %type_name, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 398) #8
  %prov = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 3
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %3) #8
  %4 = load i8*, i8** %lock, align 8, !tbaa !38
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %4) #8
  %5 = bitcast %struct.evp_asym_cipher_st* %cipher to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 401) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !36
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EVP_ASYM_CIPHER_up_ref(%struct.evp_asym_cipher_st* nocapture noundef %cipher) #4 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %refcnt = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 4
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %refcnt, i32* noundef nonnull %ref) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #5 {
entry:
  %prov = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  ret %struct.ossl_provider_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_asym_cipher_st* @EVP_ASYM_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %algorithm, i8* noundef %properties) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef %ctx, i32 noundef 13, i8* noundef %algorithm, i8* noundef %properties, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_asym_cipher_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_asym_cipher_st*)* @EVP_ASYM_CIPHER_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_asym_cipher_st*)* @EVP_ASYM_CIPHER_free to void (i8*)*)) #8
  %0 = bitcast i8* %call to %struct.evp_asym_cipher_st*
  ret %struct.evp_asym_cipher_st* %0
}

declare i8* @evp_generic_fetch(%struct.ossl_lib_ctx_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @evp_asym_cipher_from_algorithm(i32 noundef %name_id, %struct.ossl_algorithm_st* noundef %algodef, %struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %implementation = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 2
  %0 = load %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st** %implementation, align 8, !tbaa !39
  %call = tail call fastcc %struct.evp_asym_cipher_st* @evp_asym_cipher_new(%struct.ossl_provider_st* noundef %prov) #6
  %cmp = icmp eq %struct.evp_asym_cipher_st* %call, null
  br i1 %cmp, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %name_id1 = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 0
  store i32 %name_id, i32* %name_id1, align 8, !tbaa !41
  %call2 = tail call i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef nonnull %algodef) #8
  %type_name = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 1
  store i8* %call2, i8** %type_name, align 8, !tbaa !37
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %algorithm_description = getelementptr inbounds %struct.ossl_algorithm_st, %struct.ossl_algorithm_st* %algodef, i64 0, i32 3
  %1 = load i8*, i8** %algorithm_description, align 8, !tbaa !42
  %description = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 2
  store i8* %1, i8** %description, align 8, !tbaa !43
  %settable_ctx_params = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 16
  %set_ctx_params = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 15
  %gettable_ctx_params = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 14
  %get_ctx_params = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 13
  %dupctx = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 12
  %freectx = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 11
  %decrypt = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 10
  %decrypt_init = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 9
  %encrypt = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 8
  %encrypt_init = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 7
  %newctx = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %call, i64 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %fns.0 = phi %struct.ossl_dispatch_st* [ %0, %if.end5 ], [ %incdec.ptr, %for.inc ]
  %ctxfncnt.0 = phi i32 [ 0, %if.end5 ], [ %ctxfncnt.1, %for.inc ]
  %encfncnt.0 = phi i32 [ 0, %if.end5 ], [ %encfncnt.1, %for.inc ]
  %decfncnt.0 = phi i32 [ 0, %if.end5 ], [ %decfncnt.1, %for.inc ]
  %gparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %gparamfncnt.1, %for.inc ]
  %sparamfncnt.0 = phi i32 [ 0, %if.end5 ], [ %sparamfncnt.1, %for.inc ]
  %function_id = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 0, i32 0
  %2 = load i32, i32* %function_id, align 8, !tbaa !44
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
  %call11 = tail call fastcc i8* (i8*)* @OSSL_FUNC_asym_cipher_newctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i8* (i8*)* %call11, i8* (i8*)** %newctx, align 8, !tbaa !21
  %inc = add nsw i32 %ctxfncnt.0, 1
  br label %for.inc

sw.bb13:                                          ; preds = %for.cond
  %4 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %encrypt_init, align 8, !tbaa !24
  %cmp14.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %4, null
  br i1 %cmp14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %sw.bb13
  %call17 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_encrypt_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call17, i32 (i8*, i8*, %struct.ossl_param_st*)** %encrypt_init, align 8, !tbaa !24
  %inc19 = add nsw i32 %encfncnt.0, 1
  br label %for.inc

sw.bb20:                                          ; preds = %for.cond
  %5 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %encrypt, align 8, !tbaa !31
  %cmp21.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %5, null
  br i1 %cmp21.not, label %if.end23, label %for.inc

if.end23:                                         ; preds = %sw.bb20
  %call24 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_asym_cipher_encrypt(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call24, i32 (i8*, i8*, i64*, i64, i8*, i64)** %encrypt, align 8, !tbaa !31
  %inc26 = add nsw i32 %encfncnt.0, 1
  br label %for.inc

sw.bb27:                                          ; preds = %for.cond
  %6 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %decrypt_init, align 8, !tbaa !25
  %cmp28.not = icmp eq i32 (i8*, i8*, %struct.ossl_param_st*)* %6, null
  br i1 %cmp28.not, label %if.end30, label %for.inc

if.end30:                                         ; preds = %sw.bb27
  %call31 = tail call fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_decrypt_init(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, %struct.ossl_param_st*)* %call31, i32 (i8*, i8*, %struct.ossl_param_st*)** %decrypt_init, align 8, !tbaa !25
  %inc33 = add nsw i32 %decfncnt.0, 1
  br label %for.inc

sw.bb34:                                          ; preds = %for.cond
  %7 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %decrypt, align 8, !tbaa !34
  %cmp35.not = icmp eq i32 (i8*, i8*, i64*, i64, i8*, i64)* %7, null
  br i1 %cmp35.not, label %if.end37, label %for.inc

if.end37:                                         ; preds = %sw.bb34
  %call38 = tail call fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_asym_cipher_decrypt(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, i8*, i64*, i64, i8*, i64)* %call38, i32 (i8*, i8*, i64*, i64, i8*, i64)** %decrypt, align 8, !tbaa !34
  %inc40 = add nsw i32 %decfncnt.0, 1
  br label %for.inc

sw.bb41:                                          ; preds = %for.cond
  %8 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !46
  %cmp42.not = icmp eq void (i8*)* %8, null
  br i1 %cmp42.not, label %if.end44, label %for.inc

if.end44:                                         ; preds = %sw.bb41
  %call45 = tail call fastcc void (i8*)* @OSSL_FUNC_asym_cipher_freectx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store void (i8*)* %call45, void (i8*)** %freectx, align 8, !tbaa !46
  %inc47 = add nsw i32 %ctxfncnt.0, 1
  br label %for.inc

sw.bb48:                                          ; preds = %for.cond
  %9 = load i8* (i8*)*, i8* (i8*)** %dupctx, align 8, !tbaa !47
  %cmp49.not = icmp eq i8* (i8*)* %9, null
  br i1 %cmp49.not, label %if.end51, label %for.inc

if.end51:                                         ; preds = %sw.bb48
  %call52 = tail call fastcc i8* (i8*)* @OSSL_FUNC_asym_cipher_dupctx(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i8* (i8*)* %call52, i8* (i8*)** %dupctx, align 8, !tbaa !47
  br label %for.inc

sw.bb54:                                          ; preds = %for.cond
  %10 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !48
  %cmp55.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %10, null
  br i1 %cmp55.not, label %if.end57, label %for.inc

if.end57:                                         ; preds = %sw.bb54
  %call58 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_get_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, %struct.ossl_param_st*)* %call58, i32 (i8*, %struct.ossl_param_st*)** %get_ctx_params, align 8, !tbaa !48
  %inc60 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb61:                                          ; preds = %for.cond
  %11 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !49
  %cmp62.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %11, null
  br i1 %cmp62.not, label %if.end64, label %for.inc

if.end64:                                         ; preds = %sw.bb61
  %call65 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_asym_cipher_gettable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store %struct.ossl_param_st* (i8*, i8*)* %call65, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !49
  %inc67 = add nsw i32 %gparamfncnt.0, 1
  br label %for.inc

sw.bb68:                                          ; preds = %for.cond
  %12 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !50
  %cmp69.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %12, null
  br i1 %cmp69.not, label %if.end71, label %for.inc

if.end71:                                         ; preds = %sw.bb68
  %call72 = tail call fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_set_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store i32 (i8*, %struct.ossl_param_st*)* %call72, i32 (i8*, %struct.ossl_param_st*)** %set_ctx_params, align 8, !tbaa !50
  %inc74 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

sw.bb75:                                          ; preds = %for.cond
  %13 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !51
  %cmp76.not = icmp eq %struct.ossl_param_st* (i8*, i8*)* %13, null
  br i1 %cmp76.not, label %if.end78, label %for.inc

if.end78:                                         ; preds = %sw.bb75
  %call79 = tail call fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_asym_cipher_settable_ctx_params(%struct.ossl_dispatch_st* noundef nonnull %fns.0) #6
  store %struct.ossl_param_st* (i8*, i8*)* %call79, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !51
  %inc81 = add nsw i32 %sparamfncnt.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.end10, %if.end16, %if.end23, %if.end30, %if.end37, %if.end44, %if.end51, %if.end57, %if.end64, %if.end71, %if.end78, %sw.bb, %sw.bb13, %sw.bb20, %sw.bb27, %sw.bb34, %sw.bb41, %sw.bb48, %sw.bb54, %sw.bb61, %sw.bb68, %sw.bb75
  %ctxfncnt.1 = phi i32 [ %ctxfncnt.0, %sw.bb75 ], [ %ctxfncnt.0, %if.end78 ], [ %ctxfncnt.0, %sw.bb68 ], [ %ctxfncnt.0, %if.end71 ], [ %ctxfncnt.0, %sw.bb61 ], [ %ctxfncnt.0, %if.end64 ], [ %ctxfncnt.0, %sw.bb54 ], [ %ctxfncnt.0, %if.end57 ], [ %ctxfncnt.0, %sw.bb48 ], [ %ctxfncnt.0, %if.end51 ], [ %ctxfncnt.0, %sw.bb41 ], [ %inc47, %if.end44 ], [ %ctxfncnt.0, %sw.bb34 ], [ %ctxfncnt.0, %if.end37 ], [ %ctxfncnt.0, %sw.bb27 ], [ %ctxfncnt.0, %if.end30 ], [ %ctxfncnt.0, %sw.bb20 ], [ %ctxfncnt.0, %if.end23 ], [ %ctxfncnt.0, %sw.bb13 ], [ %ctxfncnt.0, %if.end16 ], [ %ctxfncnt.0, %sw.bb ], [ %inc, %if.end10 ], [ %ctxfncnt.0, %for.cond ]
  %encfncnt.1 = phi i32 [ %encfncnt.0, %sw.bb75 ], [ %encfncnt.0, %if.end78 ], [ %encfncnt.0, %sw.bb68 ], [ %encfncnt.0, %if.end71 ], [ %encfncnt.0, %sw.bb61 ], [ %encfncnt.0, %if.end64 ], [ %encfncnt.0, %sw.bb54 ], [ %encfncnt.0, %if.end57 ], [ %encfncnt.0, %sw.bb48 ], [ %encfncnt.0, %if.end51 ], [ %encfncnt.0, %sw.bb41 ], [ %encfncnt.0, %if.end44 ], [ %encfncnt.0, %sw.bb34 ], [ %encfncnt.0, %if.end37 ], [ %encfncnt.0, %sw.bb27 ], [ %encfncnt.0, %if.end30 ], [ %encfncnt.0, %sw.bb20 ], [ %inc26, %if.end23 ], [ %encfncnt.0, %sw.bb13 ], [ %inc19, %if.end16 ], [ %encfncnt.0, %sw.bb ], [ %encfncnt.0, %if.end10 ], [ %encfncnt.0, %for.cond ]
  %decfncnt.1 = phi i32 [ %decfncnt.0, %sw.bb75 ], [ %decfncnt.0, %if.end78 ], [ %decfncnt.0, %sw.bb68 ], [ %decfncnt.0, %if.end71 ], [ %decfncnt.0, %sw.bb61 ], [ %decfncnt.0, %if.end64 ], [ %decfncnt.0, %sw.bb54 ], [ %decfncnt.0, %if.end57 ], [ %decfncnt.0, %sw.bb48 ], [ %decfncnt.0, %if.end51 ], [ %decfncnt.0, %sw.bb41 ], [ %decfncnt.0, %if.end44 ], [ %decfncnt.0, %sw.bb34 ], [ %inc40, %if.end37 ], [ %decfncnt.0, %sw.bb27 ], [ %inc33, %if.end30 ], [ %decfncnt.0, %sw.bb20 ], [ %decfncnt.0, %if.end23 ], [ %decfncnt.0, %sw.bb13 ], [ %decfncnt.0, %if.end16 ], [ %decfncnt.0, %sw.bb ], [ %decfncnt.0, %if.end10 ], [ %decfncnt.0, %for.cond ]
  %gparamfncnt.1 = phi i32 [ %gparamfncnt.0, %sw.bb75 ], [ %gparamfncnt.0, %if.end78 ], [ %gparamfncnt.0, %sw.bb68 ], [ %gparamfncnt.0, %if.end71 ], [ %gparamfncnt.0, %sw.bb61 ], [ %inc67, %if.end64 ], [ %gparamfncnt.0, %sw.bb54 ], [ %inc60, %if.end57 ], [ %gparamfncnt.0, %sw.bb48 ], [ %gparamfncnt.0, %if.end51 ], [ %gparamfncnt.0, %sw.bb41 ], [ %gparamfncnt.0, %if.end44 ], [ %gparamfncnt.0, %sw.bb34 ], [ %gparamfncnt.0, %if.end37 ], [ %gparamfncnt.0, %sw.bb27 ], [ %gparamfncnt.0, %if.end30 ], [ %gparamfncnt.0, %sw.bb20 ], [ %gparamfncnt.0, %if.end23 ], [ %gparamfncnt.0, %sw.bb13 ], [ %gparamfncnt.0, %if.end16 ], [ %gparamfncnt.0, %sw.bb ], [ %gparamfncnt.0, %if.end10 ], [ %gparamfncnt.0, %for.cond ]
  %sparamfncnt.1 = phi i32 [ %sparamfncnt.0, %sw.bb75 ], [ %inc81, %if.end78 ], [ %sparamfncnt.0, %sw.bb68 ], [ %inc74, %if.end71 ], [ %sparamfncnt.0, %sw.bb61 ], [ %sparamfncnt.0, %if.end64 ], [ %sparamfncnt.0, %sw.bb54 ], [ %sparamfncnt.0, %if.end57 ], [ %sparamfncnt.0, %sw.bb48 ], [ %sparamfncnt.0, %if.end51 ], [ %sparamfncnt.0, %sw.bb41 ], [ %sparamfncnt.0, %if.end44 ], [ %sparamfncnt.0, %sw.bb34 ], [ %sparamfncnt.0, %if.end37 ], [ %sparamfncnt.0, %sw.bb27 ], [ %sparamfncnt.0, %if.end30 ], [ %sparamfncnt.0, %sw.bb20 ], [ %sparamfncnt.0, %if.end23 ], [ %sparamfncnt.0, %sw.bb13 ], [ %sparamfncnt.0, %if.end16 ], [ %sparamfncnt.0, %sw.bb ], [ %sparamfncnt.0, %if.end10 ], [ %sparamfncnt.0, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %fns.0, i64 1
  br label %for.cond, !llvm.loop !52

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
  %18 = bitcast %struct.evp_asym_cipher_st* %call to i8*
  br label %cleanup

err.sink.split:                                   ; preds = %for.end, %lor.lhs.false, %lor.lhs.false89, %entry
  %.sink182 = phi i32 [ 282, %entry ], [ 379, %lor.lhs.false89 ], [ 379, %lor.lhs.false ], [ 379, %for.end ]
  %.sink = phi i32 [ 786688, %entry ], [ 193, %lor.lhs.false89 ], [ 193, %lor.lhs.false ], [ 193, %for.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink182, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.evp_asym_cipher_from_algorithm, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  tail call void @EVP_ASYM_CIPHER_free(%struct.evp_asym_cipher_st* noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end102
  %retval.0 = phi i8* [ null, %err ], [ %18, %if.end102 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_ASYM_CIPHER_is_a(%struct.evp_asym_cipher_st* nocapture noundef readonly %cipher, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  %name_id = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !41
  %call = tail call i32 @evp_is_a(%struct.ossl_provider_st* noundef %0, i32 noundef %1, i8* noundef null, i8* noundef %name) #8
  ret i32 %call
}

declare i32 @evp_is_a(%struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @evp_asym_cipher_get_number(%struct.evp_asym_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #5 {
entry:
  %name_id = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 0
  %0 = load i32, i32* %name_id, align 8, !tbaa !41
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_ASYM_CIPHER_get0_name(%struct.evp_asym_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #5 {
entry:
  %type_name = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 1
  %0 = load i8*, i8** %type_name, align 8, !tbaa !37
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EVP_ASYM_CIPHER_get0_description(%struct.evp_asym_cipher_st* nocapture noundef readonly %cipher) local_unnamed_addr #5 {
entry:
  %description = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 2
  %0 = load i8*, i8** %description, align 8, !tbaa !43
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EVP_ASYM_CIPHER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_asym_cipher_st*, i8*)* noundef %fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %0 = bitcast void (%struct.evp_asym_cipher_st*, i8*)* %fn to void (i8*, i8*)*
  tail call void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef %libctx, i32 noundef 13, void (i8*, i8*)* noundef %0, i8* noundef %arg, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef nonnull @evp_asym_cipher_from_algorithm, i32 (i8*)* noundef bitcast (i32 (%struct.evp_asym_cipher_st*)* @EVP_ASYM_CIPHER_up_ref to i32 (i8*)*), void (i8*)* noundef bitcast (void (%struct.evp_asym_cipher_st*)* @EVP_ASYM_CIPHER_free to void (i8*)*)) #8
  ret void
}

declare void @evp_generic_do_all(%struct.ossl_lib_ctx_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef, i8* (i32, %struct.ossl_algorithm_st*, %struct.ossl_provider_st*)* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EVP_ASYM_CIPHER_names_do_all(%struct.evp_asym_cipher_st* nocapture noundef readonly %cipher, void (i8*, i8*)* noundef %fn, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %prov = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 3
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !23
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %name_id = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cipher, i64 0, i32 0
  %1 = load i32, i32* %name_id, align 8, !tbaa !41
  %call = tail call i32 @evp_names_do_all(%struct.ossl_provider_st* noundef nonnull %0, i32 noundef %1, void (i8*, i8*)* noundef %fn, i8* noundef %data) #8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @evp_names_do_all(%struct.ossl_provider_st* noundef, i32 noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_ASYM_CIPHER_gettable_ctx_params(%struct.evp_asym_cipher_st* noundef readonly %cip) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_asym_cipher_st* %cip, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %gettable_ctx_params = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cip, i64 0, i32 14
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !49
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef nonnull %cip) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %gettable_ctx_params, align 8, !tbaa !49
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @EVP_ASYM_CIPHER_settable_ctx_params(%struct.evp_asym_cipher_st* noundef readonly %cip) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_asym_cipher_st* %cip, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %settable_ctx_params = getelementptr inbounds %struct.evp_asym_cipher_st, %struct.evp_asym_cipher_st* %cip, i64 0, i32 16
  %0 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !51
  %cmp1 = icmp eq %struct.ossl_param_st* (i8*, i8*)* %0, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.ossl_provider_st* @EVP_ASYM_CIPHER_get0_provider(%struct.evp_asym_cipher_st* noundef nonnull %cip) #6
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #8
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %settable_ctx_params, align 8, !tbaa !51
  %call4 = tail call %struct.ossl_param_st* %1(i8* noundef null, i8* noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi %struct.ossl_param_st* [ %call4, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.ossl_param_st* %retval.0
}

declare void @evp_pkey_ctx_free_old_ops(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #2

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_asym_cipher_st* @evp_asym_cipher_new(%struct.ossl_provider_st* noundef %prov) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 136, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 252) #8
  %0 = bitcast i8* %call to %struct.evp_asym_cipher_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.evp_asym_cipher_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #8
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast i8* %lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !38
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.evp_asym_cipher_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 262) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %prov6 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %prov6 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %prov, %struct.ossl_provider_st** %2, align 8, !tbaa !23
  %call7 = tail call i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef %prov) #8
  %refcnt = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %refcnt to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !54
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.evp_asym_cipher_st* [ null, %if.then ], [ null, %if.then4 ], [ %0, %if.end5 ]
  ret %struct.evp_asym_cipher_st* %retval.0
}

declare i8* @ossl_algorithm_get1_first_name(%struct.ossl_algorithm_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_asym_cipher_newctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !55
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_encrypt_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !55
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_asym_cipher_encrypt(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !55
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_decrypt_init(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !55
  ret i32 (i8*, i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, i8*, i64*, i64, i8*, i64)* @OSSL_FUNC_asym_cipher_decrypt(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, i8*, i64*, i64, i8*, i64)**
  %1 = load i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)** %0, align 8, !tbaa !55
  ret i32 (i8*, i8*, i64*, i64, i8*, i64)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc void (i8*)* @OSSL_FUNC_asym_cipher_freectx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to void (i8*)**
  %1 = load void (i8*)*, void (i8*)** %0, align 8, !tbaa !55
  ret void (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* (i8*)* @OSSL_FUNC_asym_cipher_dupctx(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i8* (i8*)**
  %1 = load i8* (i8*)*, i8* (i8*)** %0, align 8, !tbaa !55
  ret i8* (i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_get_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !55
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_asym_cipher_gettable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !55
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 (i8*, %struct.ossl_param_st*)* @OSSL_FUNC_asym_cipher_set_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to i32 (i8*, %struct.ossl_param_st*)**
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %0, align 8, !tbaa !55
  ret i32 (i8*, %struct.ossl_param_st*)* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc %struct.ossl_param_st* (i8*, i8*)* @OSSL_FUNC_asym_cipher_settable_ctx_params(%struct.ossl_dispatch_st* nocapture noundef readonly %opf) unnamed_addr #5 {
entry:
  %function = getelementptr inbounds %struct.ossl_dispatch_st, %struct.ossl_dispatch_st* %opf, i64 0, i32 1
  %0 = bitcast void ()** %function to %struct.ossl_param_st* (i8*, i8*)**
  %1 = load %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)** %0, align 8, !tbaa !55
  ret %struct.ossl_param_st* (i8*, i8*)* %1
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare i32 @ossl_provider_up_ref(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"evp_pkey_ctx_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !11, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !10, i64 160, !5, i64 168}
!10 = !{!"int", !6, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 8, !12, i64 16, !10, i64 24}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !5, i64 32}
!14 = !{!9, !5, i64 136}
!15 = !{!9, !5, i64 8}
!16 = !{!9, !5, i64 16}
!17 = !{!18, !5, i64 152}
!18 = !{!"evp_keymgmt_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216}
!19 = !{!9, !5, i64 24}
!20 = !{!6, !6, i64 0}
!21 = !{!22, !5, i64 48}
!22 = !{!"evp_asym_cipher_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128}
!23 = !{!22, !5, i64 24}
!24 = !{!22, !5, i64 56}
!25 = !{!22, !5, i64 72}
!26 = !{!9, !5, i64 120}
!27 = !{!28, !5, i64 152}
!28 = !{!"evp_pkey_method_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248}
!29 = !{!28, !5, i64 144}
!30 = !{!28, !5, i64 160}
!31 = !{!22, !5, i64 64}
!32 = !{!12, !12, i64 0}
!33 = !{!28, !10, i64 4}
!34 = !{!22, !5, i64 80}
!35 = !{!28, !5, i64 168}
!36 = !{!10, !10, i64 0}
!37 = !{!22, !5, i64 8}
!38 = !{!22, !5, i64 40}
!39 = !{!40, !5, i64 16}
!40 = !{!"ossl_algorithm_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!41 = !{!22, !10, i64 0}
!42 = !{!40, !5, i64 24}
!43 = !{!22, !5, i64 16}
!44 = !{!45, !10, i64 0}
!45 = !{!"ossl_dispatch_st", !10, i64 0, !5, i64 8}
!46 = !{!22, !5, i64 88}
!47 = !{!22, !5, i64 96}
!48 = !{!22, !5, i64 104}
!49 = !{!22, !5, i64 112}
!50 = !{!22, !5, i64 120}
!51 = !{!22, !5, i64 128}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!22, !6, i64 32}
!55 = !{!45, !5, i64 8}
