; ModuleID = 'engines/e_loader_attic.c'
source_filename = "engines/e_loader_attic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_store_loader_st = type opaque
%struct.ERR_string_data_st = type { i64, i8* }
%struct.file_handler_st = type { i8*, %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (i8*)*, void (i8**)*, i32 }
%struct.ossl_store_info_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.st_dynamic_fns = type { i8*, %struct.st_dynamic_MEM_fns }
%struct.st_dynamic_MEM_fns = type { i8* (i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.ossl_store_loader_ctx_st = type { i8*, i32, i32, i32, %union.anon, i32, %struct.ossl_lib_ctx_st*, i8* }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.OPENSSL_dir_context_st*, i32, [9 x i8], i8*, i32 }
%struct.OPENSSL_dir_context_st = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.anon.1 = type { i8*, i8 }
%struct.bio_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_store_search_st = type opaque
%struct.X509_name_st = type opaque
%struct.bio_method_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque
%struct.pem_pass_data = type { %struct.ui_method_st*, i8*, i8*, i8* }
%struct.evp_pkey_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.embedded_st = type { %struct.buf_mem_st*, i8* }
%struct.ui_st = type opaque
%struct.x509_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st_OSSL_STORE_INFO = type opaque
%struct.PKCS12_st = type opaque
%struct.stack_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_sig_st = type opaque
%struct.X509_crl_st = type opaque
%struct.evp_pkey_asn1_method_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque

@.str = private unnamed_addr constant [13 x i8] c"loader_attic\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@loader_attic = internal unnamed_addr global %struct.ossl_store_loader_st* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"engines/e_loader_attic.c\00", align 1
@lib_code = internal unnamed_addr global i32 0, align 4
@error_loaded = internal unnamed_addr global i1 false, align 4
@ATTIC_str_reasons = internal global [12 x %struct.ERR_string_data_st] [%struct.ERR_string_data_st { i64 100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0) }, %struct.ERR_string_data_st { i64 110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0) }, %struct.ERR_string_data_st zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"ambiguous content type\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad password read\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"error verifying pkcs12 mac\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"init failed\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"passphrase callback error\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"path must be absolute\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"search only supported for directories\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"ui process interrupted or cancelled\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"unsupported content type\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"unsupported search type\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"uri authority unsupported\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"localhost/\00", align 1
@__func__.file_open_ex = private unnamed_addr constant [13 x i8] c"file_open_ex\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"calling stat(%s)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1
@__func__.file_load = private unnamed_addr constant [10 x i8] c"file_load\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"PEM type is '\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"PEM pass phrase\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"PVK pass phrase\00", align 1
@file_handlers = internal unnamed_addr constant [7 x %struct.file_handler_st*] [%struct.file_handler_st* @PKCS12_handler, %struct.file_handler_st* @PKCS8Encrypted_handler, %struct.file_handler_st* @X509Certificate_handler, %struct.file_handler_st* @X509CRL_handler, %struct.file_handler_st* @params_handler, %struct.file_handler_st* @PUBKEY_handler, %struct.file_handler_st* @PrivateKey_handler], align 16
@PKCS12_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_PKCS12, i32 (i8*)* @eof_PKCS12, void (i8**)* @destroy_ctx_PKCS12, i32 1 }, align 8
@PKCS8Encrypted_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_PKCS8Encrypted, i32 (i8*)* null, void (i8**)* null, i32 0 }, align 8
@X509Certificate_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_X509Certificate, i32 (i8*)* null, void (i8**)* null, i32 0 }, align 8
@X509CRL_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_X509CRL, i32 (i8*)* null, void (i8**)* null, i32 0 }, align 8
@params_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_params, i32 (i8*)* null, void (i8**)* null, i32 0 }, align 8
@PUBKEY_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_PUBKEY, i32 (i8*)* null, void (i8**)* null, i32 0 }, align 8
@PrivateKey_handler = internal global %struct.file_handler_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)* @try_decode_PrivateKey, i32 (i8*)* null, void (i8**)* null, i32 0 }, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"PKCS12\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"PKCS12 import\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"PKCS8Encrypted\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"ENCRYPTED PRIVATE KEY\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"PKCS8 decrypt pass phrase\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"PRIVATE KEY\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"X509Certificate\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"X509CRL\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"X509 CRL\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"PARAMETERS\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"PUBKEY\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"PUBLIC KEY\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"PrivateKey\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"'file:' loader\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"engines/e_loader_attic_err.c\00", align 1
@__func__.ERR_ATTIC_error = private unnamed_addr constant [16 x i8] c"ERR_ATTIC_error\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @v_check(i64 noundef %v) local_unnamed_addr #0 {
entry:
  %cmp.inv = icmp ult i64 %v, 196608
  %. = select i1 %cmp.inv, i64 0, i64 196608
  ret i64 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @bind_engine(%struct.engine_st* noundef %e, i8* noundef %id, %struct.st_dynamic_fns* nocapture noundef readonly %fns) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @ENGINE_get_static_state() #11
  %static_state = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 0
  %0 = load i8*, i8** %static_state, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, %0
  br i1 %cmp, label %skip_cbs, label %if.end

if.end:                                           ; preds = %entry
  %malloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 0
  %1 = load i8* (i64, i8*, i32)*, i8* (i64, i8*, i32)** %malloc_fn, align 8, !tbaa !10
  %realloc_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 1
  %2 = load i8* (i8*, i64, i8*, i32)*, i8* (i8*, i64, i8*, i32)** %realloc_fn, align 8, !tbaa !11
  %free_fn = getelementptr inbounds %struct.st_dynamic_fns, %struct.st_dynamic_fns* %fns, i64 0, i32 1, i32 2
  %3 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %free_fn, align 8, !tbaa !12
  %call3 = tail call i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef %1, i8* (i8*, i64, i8*, i32)* noundef %2, void (i8*, i8*, i32)* noundef %3) #11
  br label %skip_cbs

skip_cbs:                                         ; preds = %entry, %if.end
  %call4 = tail call fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef %id) #12
  %tobool.not = icmp ne i32 %call4, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare i8* @ENGINE_get_static_state() local_unnamed_addr #2

declare i32 @CRYPTO_set_mem_functions(i8* (i64, i8*, i32)* noundef, i8* (i8*, i64, i8*, i32)* noundef, void (i8*, i8*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_helper(%struct.engine_st* noundef %e, i8* noundef readonly %id) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i8* %id, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #13
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = tail call fastcc i32 @bind_loader_attic(%struct.engine_st* noundef %e) #12
  %tobool2.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bind_loader_attic(%struct.engine_st* noundef %e) unnamed_addr #1 {
entry:
  tail call fastcc void @ERR_load_ATTIC_strings() #12
  %call1 = tail call %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_new(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #11
  store %struct.ossl_store_loader_st* %call1, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %cmp = icmp eq %struct.ossl_store_loader_st* %call1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @OSSL_STORE_LOADER_set_open_ex(%struct.ossl_store_loader_st* noundef nonnull %call1, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @file_open_ex) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call4 = tail call i32 @OSSL_STORE_LOADER_set_open(%struct.ossl_store_loader_st* noundef %0, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @file_open) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %1 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call7 = tail call i32 @OSSL_STORE_LOADER_set_attach(%struct.ossl_store_loader_st* noundef %1, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* noundef nonnull @file_attach) #11
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %2 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call10 = tail call i32 @OSSL_STORE_LOADER_set_ctrl(%struct.ossl_store_loader_st* noundef %2, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)* noundef nonnull @file_ctrl) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %3 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call13 = tail call i32 @OSSL_STORE_LOADER_set_expect(%struct.ossl_store_loader_st* noundef %3, i32 (%struct.ossl_store_loader_ctx_st*, i32)* noundef nonnull @file_expect) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %4 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call16 = tail call i32 @OSSL_STORE_LOADER_set_find(%struct.ossl_store_loader_st* noundef %4, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)* noundef nonnull @file_find) #11
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %5 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call19 = tail call i32 @OSSL_STORE_LOADER_set_load(%struct.ossl_store_loader_st* noundef %5, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* noundef nonnull @file_load) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %6 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call22 = tail call i32 @OSSL_STORE_LOADER_set_eof(%struct.ossl_store_loader_st* noundef %6, i32 (%struct.ossl_store_loader_ctx_st*)* noundef nonnull @file_eof) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %7 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call25 = tail call i32 @OSSL_STORE_LOADER_set_error(%struct.ossl_store_loader_st* noundef %7, i32 (%struct.ossl_store_loader_ctx_st*)* noundef nonnull @file_error) #11
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %8 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call28 = tail call i32 @OSSL_STORE_LOADER_set_close(%struct.ossl_store_loader_st* noundef %8, i32 (%struct.ossl_store_loader_ctx_st*)* noundef nonnull @file_close) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %call31 = tail call i32 @ENGINE_set_id(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #11
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %call34 = tail call i32 @ENGINE_set_name(%struct.engine_st* noundef %e, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0)) #11
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %call37 = tail call i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @loader_attic_destroy) #11
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %call40 = tail call i32 @ENGINE_set_init_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @loader_attic_init) #11
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %call43 = tail call i32 @ENGINE_set_finish_function(%struct.engine_st* noundef %e, i32 (%struct.engine_st*)* noundef nonnull @loader_attic_finish) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %9 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  %call46 = tail call i32 @OSSL_STORE_register_loader(%struct.ossl_store_loader_st* noundef %9) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false39, %lor.lhs.false36, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %10 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %10) #11
  store %struct.ossl_store_loader_st* null, %struct.ossl_store_loader_st** @loader_attic, align 8, !tbaa !13
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 103, i32 noundef 1753) #12
  br label %return

return:                                           ; preds = %lor.lhs.false45, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false45 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_load_ATTIC_strings() unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #11
  store i32 %call, i32* @lib_code, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %call, %if.then ], [ %0, %entry ]
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @ERR_load_strings(i32 noundef %1, %struct.ERR_string_data_st* noundef getelementptr inbounds ([12 x %struct.ERR_string_data_st], [12 x %struct.ERR_string_data_st]* @ATTIC_str_reasons, i64 0, i64 0)) #11
  store i1 true, i1* @error_loaded, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  ret void
}

declare %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_new(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_LOADER_set_open_ex(%struct.ossl_store_loader_st* noundef, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_loader_ctx_st* @file_open_ex(%struct.ossl_store_loader_st* nocapture noundef readnone %loader, i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data) #1 {
entry:
  %st = alloca %struct.stat, align 8
  %path_data = alloca [2 x %struct.anon.1], align 16
  %0 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #14
  %1 = bitcast [2 x %struct.anon.1]* %path_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #14
  %check_absolute = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %path_data, i64 0, i64 0, i32 1
  store i8 0, i8* %check_absolute, align 8
  %path2 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %path_data, i64 0, i64 0, i32 0
  store i8* %uri, i8** %path2, align 16, !tbaa !16
  %call = tail call i32 @strncasecmp(i8* noundef %uri, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 noundef 5) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %arrayidx3 = getelementptr inbounds i8, i8* %uri, i64 5
  %call5 = tail call i32 @strncmp(i8* noundef nonnull %arrayidx3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2) #13
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %cleanup.thread

if.then7:                                         ; preds = %if.then
  %arrayidx8 = getelementptr inbounds i8, i8* %uri, i64 7
  %call9 = tail call i32 @strncasecmp(i8* noundef nonnull %arrayidx8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i64 noundef 10) #13
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %arrayidx12 = getelementptr inbounds i8, i8* %uri, i64 16
  br label %cleanup.thread

if.else:                                          ; preds = %if.then7
  %2 = load i8, i8* %arrayidx8, align 1, !tbaa !18
  %cmp14 = icmp eq i8 %2, 47
  br i1 %cmp14, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then, %if.then11, %if.else
  %path_data_n.0 = phi i64 [ 0, %if.then11 ], [ 1, %if.then ], [ 0, %if.else ]
  %p.0 = phi i8* [ %arrayidx12, %if.then11 ], [ %arrayidx3, %if.then ], [ %arrayidx8, %if.else ]
  %check_absolute22 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %path_data, i64 0, i64 %path_data_n.0, i32 1
  %bf.load23 = load i8, i8* %check_absolute22, align 8
  %bf.set25 = or i8 %bf.load23, 1
  store i8 %bf.set25, i8* %check_absolute22, align 8
  %inc26 = add nuw nsw i64 %path_data_n.0, 1
  %path28 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %path_data, i64 0, i64 %path_data_n.0, i32 0
  store i8* %p.0, i8** %path28, align 16, !tbaa !16
  br label %if.end29

cleanup:                                          ; preds = %if.else
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 110, i32 noundef 984) #12
  br label %cleanup133

if.end29:                                         ; preds = %cleanup.thread, %entry
  %path_data_n.2 = phi i64 [ 1, %entry ], [ %inc26, %cleanup.thread ]
  br label %for.body

for.body:                                         ; preds = %if.end29, %for.inc
  %i.0190 = phi i64 [ 0, %if.end29 ], [ %inc61, %for.inc ]
  %check_absolute35 = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %path_data, i64 0, i64 %i.0190, i32 1
  %bf.load36 = load i8, i8* %check_absolute35, align 8
  %bf.clear37 = and i8 %bf.load36, 1
  %tobool.not = icmp eq i8 %bf.clear37, 0
  %path49.phi.trans.insert = getelementptr inbounds [2 x %struct.anon.1], [2 x %struct.anon.1]* %path_data, i64 0, i64 %i.0190, i32 0
  %.pre = load i8*, i8** %path49.phi.trans.insert, align 16, !tbaa !16
  br i1 %tobool.not, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %3 = load i8, i8* %.pre, align 1, !tbaa !18
  %cmp42.not = icmp eq i8 %3, 47
  br i1 %cmp42.not, label %if.end47, label %if.then44

if.then44:                                        ; preds = %land.lhs.true
  call fastcc void @ERR_ATTIC_error(i32 noundef 105, i32 noundef 1012) #12
  call void (i32, ...) @ERR_add_error_data(i32 noundef 1, i8* noundef nonnull %.pre) #11
  br label %cleanup133

if.end47:                                         ; preds = %for.body, %land.lhs.true
  %call50 = call i32 @stat(i8* noundef %.pre, %struct.stat* noundef %st) #11
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %for.inc

if.then53:                                        ; preds = %if.end47
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1018, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.file_open_ex, i64 0, i64 0)) #11
  %call54 = tail call i32* @__errno_location() #15
  %4 = load i32, i32* %call54, align 4, !tbaa !14
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %.pre) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %if.then53
  %path.1 = phi i8* [ null, %if.then53 ], [ %.pre, %if.end47 ]
  %inc61 = add nuw nsw i64 %i.0190, 1
  %cmp30 = icmp eq i8* %path.1, null
  %cmp32 = icmp ult i64 %inc61, %path_data_n.2
  %5 = select i1 %cmp30, i1 %cmp32, i1 false
  br i1 %5, label %for.body, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %for.inc
  br i1 %cmp30, label %cleanup133, label %if.end65

if.end65:                                         ; preds = %for.end
  %call66 = call i8* @CRYPTO_zalloc(i64 noundef 88, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1031) #11
  %6 = bitcast i8* %call66 to %struct.ossl_store_loader_ctx_st*
  %cmp67 = icmp eq i8* %call66, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 1033) #12
  br label %cleanup133

if.end70:                                         ; preds = %if.end65
  %call71 = call i8* @CRYPTO_strdup(i8* noundef %uri, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1036) #11
  %uri72 = bitcast i8* %call66 to i8**
  store i8* %call71, i8** %uri72, align 8, !tbaa !21
  %cmp74 = icmp eq i8* %call71, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end70
  call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 1038) #12
  br label %err

if.end77:                                         ; preds = %if.end70
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3
  %7 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and = and i32 %7, 61440
  %cmp78 = icmp eq i32 %and, 16384
  br i1 %cmp78, label %if.then80, label %if.else107

if.then80:                                        ; preds = %if.end77
  %type = getelementptr inbounds i8, i8* %call66, i64 8
  %8 = bitcast i8* %type to i32*
  store i32 2, i32* %8, align 8, !tbaa !27
  %_ = getelementptr inbounds i8, i8* %call66, i64 24
  %ctx81 = bitcast i8* %_ to %struct.OPENSSL_dir_context_st**
  %call82 = call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx81, i8* noundef nonnull %path.1) #11
  %last_entry = getelementptr inbounds i8, i8* %call66, i64 48
  %9 = bitcast i8* %last_entry to i8**
  store i8* %call82, i8** %9, align 8, !tbaa !18
  %call85 = tail call i32* @__errno_location() #15
  %10 = load i32, i32* %call85, align 4, !tbaa !14
  %last_errno = getelementptr inbounds i8, i8* %call66, i64 56
  %11 = bitcast i8* %last_errno to i32*
  store i32 %10, i32* %11, align 8, !tbaa !18
  %cmp91 = icmp eq i8* %call82, null
  br i1 %cmp91, label %if.then93, label %if.end120

if.then93:                                        ; preds = %if.then80
  %cmp97.not = icmp eq i32 %10, 0
  br i1 %cmp97.not, label %if.end103, label %if.then99

if.then99:                                        ; preds = %if.then93
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1048, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.file_open_ex, i64 0, i64 0)) #11
  %12 = load i32, i32* %11, align 8, !tbaa !18
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %12, i8* noundef null) #11
  br label %err

if.end103:                                        ; preds = %if.then93
  %end_reached = getelementptr inbounds i8, i8* %call66, i64 32
  %13 = bitcast i8* %end_reached to i32*
  store i32 1, i32* %13, align 8, !tbaa !18
  br label %if.end120

if.else107:                                       ; preds = %if.end77
  %call108 = call %struct.bio_st* @BIO_new_file(i8* noundef nonnull %path.1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #11
  %_109 = getelementptr inbounds i8, i8* %call66, i64 24
  %file110 = bitcast i8* %_109 to %struct.bio_st**
  store %struct.bio_st* %call108, %struct.bio_st** %file110, align 8, !tbaa !18
  %cmp111 = icmp eq %struct.bio_st* %call108, null
  br i1 %cmp111, label %if.then115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else107
  %call113 = call fastcc i32 @file_find_type(%struct.ossl_store_loader_ctx_st* noundef nonnull %6) #12
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %lor.lhs.false.if.then115_crit_edge, label %if.end120

lor.lhs.false.if.then115_crit_edge:               ; preds = %lor.lhs.false
  %.pre191 = load %struct.bio_st*, %struct.bio_st** %file110, align 8, !tbaa !18
  br label %if.then115

if.then115:                                       ; preds = %lor.lhs.false.if.then115_crit_edge, %if.else107
  %14 = phi %struct.bio_st* [ %.pre191, %lor.lhs.false.if.then115_crit_edge ], [ null, %if.else107 ]
  call void @BIO_free_all(%struct.bio_st* noundef %14) #11
  br label %err

if.end120:                                        ; preds = %lor.lhs.false, %if.then80, %if.end103
  %cmp121.not = icmp eq i8* %propq, null
  br i1 %cmp121.not, label %if.end131, label %if.then123

if.then123:                                       ; preds = %if.end120
  %call124 = call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1059) #11
  %propq125 = getelementptr inbounds i8, i8* %call66, i64 80
  %15 = bitcast i8* %propq125 to i8**
  store i8* %call124, i8** %15, align 8, !tbaa !28
  %cmp127 = icmp eq i8* %call124, null
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.then123
  call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 1061) #12
  br label %err

if.end131:                                        ; preds = %if.then123, %if.end120
  %libctx132 = getelementptr inbounds i8, i8* %call66, i64 72
  %16 = bitcast i8* %libctx132 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %16, align 8, !tbaa !29
  br label %cleanup133

err:                                              ; preds = %if.then129, %if.then115, %if.then99, %if.then76
  call fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef nonnull %6) #12
  br label %cleanup133

cleanup133:                                       ; preds = %cleanup, %for.end, %err, %if.end131, %if.then69, %if.then44
  %retval.1 = phi %struct.ossl_store_loader_ctx_st* [ null, %if.then44 ], [ null, %if.then69 ], [ null, %err ], [ %6, %if.end131 ], [ null, %cleanup ], [ null, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #14
  ret %struct.ossl_store_loader_ctx_st* %retval.1
}

declare i32 @OSSL_STORE_LOADER_set_open(%struct.ossl_store_loader_st* noundef, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_loader_ctx_st* @file_open(%struct.ossl_store_loader_st* nocapture noundef readnone %loader, i8* noundef %uri, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data) #1 {
entry:
  %call = tail call %struct.ossl_store_loader_ctx_st* @file_open_ex(%struct.ossl_store_loader_st* noundef %loader, i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #12
  ret %struct.ossl_store_loader_ctx_st* %call
}

declare i32 @OSSL_STORE_LOADER_set_attach(%struct.ossl_store_loader_st* noundef, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_loader_ctx_st* @file_attach(%struct.ossl_store_loader_st* nocapture noundef readnone %loader, %struct.bio_st* noundef %bp, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 88, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1087) #11
  %0 = bitcast i8* %call to %struct.ossl_store_loader_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp1.not = icmp eq i8* %propq, null
  br i1 %cmp1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1088) #11
  %propq3 = getelementptr inbounds i8, i8* %call, i64 80
  %1 = bitcast i8* %propq3 to i8**
  store i8* %call2, i8** %1, align 8, !tbaa !28
  %cmp4 = icmp eq i8* %call2, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 1089) #12
  tail call fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef %0) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %libctx5 = getelementptr inbounds i8, i8* %call, i64 72
  %2 = bitcast i8* %libctx5 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !29
  %flags = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !30
  %or = or i32 %4, 2
  store i32 %or, i32* %3, align 8, !tbaa !30
  %_ = getelementptr inbounds i8, i8* %call, i64 24
  %file6 = bitcast i8* %_ to %struct.bio_st**
  store %struct.bio_st* %bp, %struct.bio_st** %file6, align 8, !tbaa !18
  %call7 = tail call fastcc i32 @file_find_type(%struct.ossl_store_loader_ctx_st* noundef nonnull %0) #12
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end
  store %struct.bio_st* null, %struct.bio_st** %file6, align 8, !tbaa !18
  tail call fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef nonnull %0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %if.then
  %retval.0 = phi %struct.ossl_store_loader_ctx_st* [ null, %if.then ], [ null, %if.then8 ], [ %0, %if.end ]
  ret %struct.ossl_store_loader_ctx_st* %retval.0
}

declare i32 @OSSL_STORE_LOADER_set_ctrl(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_ctrl(%struct.ossl_store_loader_ctx_st* nocapture noundef %ctx, i32 noundef %cmd, %struct.__va_list_tag* nocapture noundef %args) #1 {
entry:
  %cond = icmp eq i32 %cmd, 1
  br i1 %cond, label %sw.bb, label %sw.epilog5

sw.bb:                                            ; preds = %entry
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 8
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 3
  %reg_save_area = load i8*, i8** %0, align 8
  %1 = zext i32 %gp_offset to i64
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1
  %3 = add nuw nsw i32 %gp_offset, 8
  store i32 %3, i32* %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32**
  %4 = load i32*, i32** %vaarg.addr, align 8
  %5 = load i32, i32* %4, align 4, !tbaa !14
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %vaarg.end
  %flags = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 3
  %6 = load i32, i32* %flags, align 8, !tbaa !30
  %and = and i32 %6, -2
  store i32 %and, i32* %flags, align 8, !tbaa !30
  br label %sw.epilog5

sw.bb2:                                           ; preds = %vaarg.end
  %flags3 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 3
  %7 = load i32, i32* %flags3, align 8, !tbaa !30
  %or = or i32 %7, 1
  store i32 %or, i32* %flags3, align 8, !tbaa !30
  br label %sw.epilog5

sw.default:                                       ; preds = %vaarg.end
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 524550, i32 noundef 1124) #12
  br label %sw.epilog5

sw.epilog5:                                       ; preds = %sw.bb1, %sw.bb2, %sw.default, %entry
  %ret.1 = phi i32 [ 1, %entry ], [ 0, %sw.default ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ]
  ret i32 %ret.1
}

declare i32 @OSSL_STORE_LOADER_set_expect(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*, i32)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @file_expect(%struct.ossl_store_loader_ctx_st* nocapture noundef writeonly %ctx, i32 noundef %expected) #4 {
entry:
  %expected_type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 5
  store i32 %expected, i32* %expected_type, align 8, !tbaa !31
  ret i32 1
}

declare i32 @OSSL_STORE_LOADER_set_find(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_find(%struct.ossl_store_loader_ctx_st* noundef %ctx, %struct.ossl_store_search_st* noundef %search) #1 {
entry:
  %call = tail call i32 @OSSL_STORE_SEARCH_get_type(%struct.ossl_store_search_st* noundef %search) #11
  %cmp = icmp eq i32 %call, 1
  %cmp1 = icmp eq %struct.ossl_store_loader_ctx_st* %ctx, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %type, align 8, !tbaa !27
  %cmp3.not = icmp eq i32 %0, 2
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 106, i32 noundef 1158) #12
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.X509_name_st* @OSSL_STORE_SEARCH_get0_name(%struct.ossl_store_search_st* noundef %search) #11
  %call7 = tail call i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef %call6, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32* noundef null) #11
  %arraydecay = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 2, i64 0
  %call8 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay, i64 noundef 9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 noundef %call7) #11
  br label %return

if.end9:                                          ; preds = %entry
  br i1 %cmp1, label %return, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 109, i32 noundef 1170) #12
  br label %return

return:                                           ; preds = %if.end9, %if.then11, %if.then4, %if.end5, %if.then
  %retval.1 = phi i32 [ 0, %if.then4 ], [ 1, %if.end5 ], [ 1, %if.then ], [ 0, %if.then11 ], [ 0, %if.end9 ]
  ret i32 %retval.1
}

declare i32 @OSSL_STORE_LOADER_set_load(%struct.ossl_store_loader_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @file_load(%struct.ossl_store_loader_ctx_st* noundef %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #1 {
entry:
  %newname = alloca i8*, align 8
  %matchcount = alloca i32, align 4
  %pem_name = alloca i8*, align 8
  %pem_header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %errcnt = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 2
  store i32 0, i32* %errcnt, align 4, !tbaa !32
  %type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %type, align 8, !tbaa !27
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %do.body.preheader, label %if.else

do.body.preheader:                                ; preds = %entry
  %1 = bitcast i8** %newname to i8*
  %last_entry = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 3
  %ctx29 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 0
  %uri = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %last_errno37 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 4
  %end_reached52 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store i8* null, i8** %newname, align 8, !tbaa !13
  %2 = load i8*, i8** %last_entry, align 8, !tbaa !18
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %do.body
  %3 = load i32, i32* %end_reached52, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then5, label %cleanup.thread

if.then5:                                         ; preds = %if.then2
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1529, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.file_load, i64 0, i64 0)) #11
  %4 = load i32, i32* %last_errno37, align 8, !tbaa !18
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %4, i8* noundef null) #11
  %5 = load i32, i32* %errcnt, align 4, !tbaa !32
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %errcnt, align 4, !tbaa !32
  br label %cleanup.thread

if.end9:                                          ; preds = %do.body
  %6 = load i8, i8* %2, align 1, !tbaa !18
  %cmp13.not = icmp eq i8 %6, 46
  br i1 %cmp13.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %call = tail call fastcc i32 @file_name_check(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %2) #12
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end26, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true
  %call23 = call fastcc i32 @file_name_to_uri(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %2, i8** noundef nonnull %newname) #12
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.thread, label %if.end26

if.end26:                                         ; preds = %land.lhs.true19, %land.lhs.true, %if.end9
  %7 = load i8*, i8** %uri, align 8, !tbaa !21
  %call30 = tail call i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx29, i8* noundef %7) #11
  store i8* %call30, i8** %last_entry, align 8, !tbaa !18
  %call34 = tail call i32* @__errno_location() #15
  %8 = load i32, i32* %call34, align 4, !tbaa !14
  store i32 %8, i32* %last_errno37, align 8, !tbaa !18
  %cmp41 = icmp eq i8* %call30, null
  %cmp47 = icmp eq i32 %8, 0
  %or.cond = select i1 %cmp41, i1 %cmp47, i1 false
  br i1 %or.cond, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end26
  store i32 1, i32* %end_reached52, align 8, !tbaa !18
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end26
  %9 = load i8*, i8** %newname, align 8, !tbaa !13
  %cmp54.not = icmp eq i8* %9, null
  br i1 %cmp54.not, label %land.rhs, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end53
  %call57 = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_NAME(i8* noundef nonnull %9) #11
  %cmp58 = icmp eq %struct.ossl_store_info_st* %call57, null
  br i1 %cmp58, label %if.then60, label %do.cond

if.then60:                                        ; preds = %land.lhs.true56
  tail call void @CRYPTO_free(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1553) #11
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 524332, i32 noundef 1554) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true19, %if.then60, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  br label %cleanup200

do.cond:                                          ; preds = %land.lhs.true56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  br label %cleanup200

land.rhs:                                         ; preds = %if.end53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  %call64 = tail call i32 @file_eof(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx) #12
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %do.body, label %cleanup200, !llvm.loop !33

if.else:                                          ; preds = %entry
  %10 = bitcast i32* %matchcount to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #14
  %call66281 = call fastcc %struct.ossl_store_info_st* @file_load_try_repeat(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #12
  %cmp67.not282 = icmp eq %struct.ossl_store_info_st* %call66281, null
  br i1 %cmp67.not282, label %if.end70.lr.ph, label %cleanup196

if.end70.lr.ph:                                   ; preds = %if.else
  %11 = bitcast i8** %pem_name to i8*
  %12 = bitcast i8** %pem_header to i8*
  %13 = bitcast i8** %data to i8*
  %14 = bitcast i64* %len to i8*
  %_92 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4
  %file94 = bitcast %union.anon* %_92 to %struct.bio_st**
  %uri101 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %flags = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 3
  %expected_type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 5
  br label %if.end70

if.end70:                                         ; preds = %if.end70.lr.ph, %if.then194
  %call71 = call i32 @file_eof(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx) #12
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body75, label %cleanup196

do.body75:                                        ; preds = %if.end70, %land.rhs174
  %result.3 = phi %struct.ossl_store_info_st* [ %result.4, %land.rhs174 ], [ null, %if.end70 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #14
  store i8* null, i8** %pem_name, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #14
  store i8* null, i8** %pem_header, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #14
  store i8* null, i8** %data, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #14
  store i64 0, i64* %len, align 8, !tbaa !34
  store i32 -1, i32* %matchcount, align 4, !tbaa !14
  %15 = load i32, i32* %type, align 8, !tbaa !27
  %cmp77 = icmp eq i32 %15, 1
  %16 = load %struct.bio_st*, %struct.bio_st** %file94, align 8, !tbaa !18
  br i1 %cmp77, label %if.then79, label %if.else91

if.then79:                                        ; preds = %do.body75
  %17 = load i8*, i8** %uri101, align 8, !tbaa !21
  %18 = load i32, i32* %flags, align 8, !tbaa !30
  %and = and i32 %18, 1
  %call85 = call fastcc i32 @file_read_pem(%struct.bio_st* noundef %16, i8** noundef nonnull %pem_name, i8** noundef nonnull %pem_header, i8** noundef nonnull %data, i64* noundef nonnull %len, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %17, i32 noundef %and) #12
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %endloop.sink.split, label %if.end116

if.else91:                                        ; preds = %do.body75
  %call95 = call fastcc %struct.ossl_store_info_st* @file_try_read_msblob(%struct.bio_st* noundef %16, i32* noundef nonnull %matchcount) #12
  %cmp96.not = icmp eq %struct.ossl_store_info_st* %call95, null
  br i1 %cmp96.not, label %lor.lhs.false, label %endloop

lor.lhs.false:                                    ; preds = %if.else91
  %19 = load %struct.bio_st*, %struct.bio_st** %file94, align 8, !tbaa !18
  %20 = load i8*, i8** %uri101, align 8, !tbaa !21
  %call102 = call fastcc %struct.ossl_store_info_st* @file_try_read_PVK(%struct.bio_st* noundef %19, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %20, i32* noundef nonnull %matchcount) #12
  %cmp103.not = icmp eq %struct.ossl_store_info_st* %call102, null
  br i1 %cmp103.not, label %if.end106, label %endloop

if.end106:                                        ; preds = %lor.lhs.false
  %21 = load %struct.bio_st*, %struct.bio_st** %file94, align 8, !tbaa !18
  %call110 = call fastcc i32 @file_read_asn1(%struct.bio_st* noundef %21, i8** noundef nonnull %data, i64* noundef nonnull %len) #12
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %endloop.sink.split, label %if.end116

if.end116:                                        ; preds = %if.end106, %if.then79
  %22 = load i8*, i8** %pem_name, align 8, !tbaa !13
  %23 = load i8*, i8** %pem_header, align 8, !tbaa !13
  %24 = load i8*, i8** %data, align 8, !tbaa !13
  %25 = load i64, i64* %len, align 8, !tbaa !34
  %call117 = call fastcc %struct.ossl_store_info_st* @file_load_try_decode(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx, i8* noundef %22, i8* noundef %23, i8* noundef %24, i64 noundef %25, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i32* noundef nonnull %matchcount) #12
  %cmp118.not = icmp eq %struct.ossl_store_info_st* %call117, null
  br i1 %cmp118.not, label %if.end121, label %endloop

if.end121:                                        ; preds = %if.end116
  %26 = load i8*, i8** %pem_name, align 8, !tbaa !13
  %cmp122 = icmp eq i8* %26, null
  %27 = load i32, i32* %matchcount, align 4
  %cmp124 = icmp slt i32 %27, 2
  %28 = select i1 %cmp122, i1 true, i1 %cmp124
  br i1 %28, label %if.end131, label %endloop.sink.split

if.end131:                                        ; preds = %if.end121
  %cmp132 = icmp sgt i32 %27, 1
  br i1 %cmp132, label %if.then134, label %if.else135

if.then134:                                       ; preds = %if.end131
  call fastcc void @ERR_ATTIC_error(i32 noundef 100, i32 noundef 1613) #12
  br label %endloop.sink.split

if.else135:                                       ; preds = %if.end131
  %cmp136 = icmp eq i32 %27, 1
  br i1 %cmp136, label %if.then138, label %endloop

if.then138:                                       ; preds = %if.else135
  %call139 = call i64 @ERR_peek_error() #11
  %cmp140 = icmp eq i64 %call139, 0
  br i1 %cmp140, label %if.then142, label %endloop.sink.split

if.then142:                                       ; preds = %if.then138
  call fastcc void @ERR_ATTIC_error(i32 noundef 108, i32 noundef 1620) #12
  %29 = load i8*, i8** %pem_name, align 8, !tbaa !13
  %cmp143.not = icmp eq i8* %29, null
  br i1 %cmp143.not, label %endloop.sink.split, label %if.then145

if.then145:                                       ; preds = %if.then142
  call void (i32, ...) @ERR_add_error_data(i32 noundef 3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #11
  br label %endloop.sink.split

endloop.sink.split:                               ; preds = %if.then134, %if.then138, %if.then145, %if.then142, %if.end121, %if.end106, %if.then79
  %result.4.ph = phi %struct.ossl_store_info_st* [ %result.3, %if.then79 ], [ null, %if.end106 ], [ null, %if.end121 ], [ null, %if.then142 ], [ null, %if.then145 ], [ null, %if.then138 ], [ null, %if.then134 ]
  %30 = load i32, i32* %errcnt, align 4, !tbaa !32
  %inc154 = add nsw i32 %30, 1
  store i32 %inc154, i32* %errcnt, align 4, !tbaa !32
  br label %endloop

endloop:                                          ; preds = %endloop.sink.split, %if.else135, %if.end116, %if.else91, %lor.lhs.false
  %result.4 = phi %struct.ossl_store_info_st* [ %call117, %if.end116 ], [ %call95, %if.else91 ], [ %call102, %lor.lhs.false ], [ null, %if.else135 ], [ %result.4.ph, %endloop.sink.split ]
  %31 = load i8*, i8** %pem_name, align 8, !tbaa !13
  %32 = load i32, i32* %flags, align 8, !tbaa !30
  %and157 = and i32 %32, 1
  call fastcc void @pem_free_flag(i8* noundef %31, i32 noundef %and157, i64 noundef 0) #12
  %33 = load i8*, i8** %pem_header, align 8, !tbaa !13
  %34 = load i32, i32* %flags, align 8, !tbaa !30
  %and161 = and i32 %34, 1
  call fastcc void @pem_free_flag(i8* noundef %33, i32 noundef %and161, i64 noundef 0) #12
  %35 = load i8*, i8** %data, align 8, !tbaa !13
  %36 = load i32, i32* %flags, align 8, !tbaa !30
  %and165 = and i32 %36, 1
  %37 = load i64, i64* %len, align 8, !tbaa !34
  call fastcc void @pem_free_flag(i8* noundef %35, i32 noundef %and165, i64 noundef %37) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #14
  %38 = load i32, i32* %matchcount, align 4, !tbaa !14
  %cmp169 = icmp eq i32 %38, 0
  br i1 %cmp169, label %land.lhs.true171, label %do.end179

land.lhs.true171:                                 ; preds = %endloop
  %call172 = call i32 @file_eof(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx) #12
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %land.rhs174, label %if.end183

land.rhs174:                                      ; preds = %land.lhs.true171
  %call175 = call i32 @file_error(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx) #12
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %do.body75, label %if.end183, !llvm.loop !35

do.end179:                                        ; preds = %endloop
  %cmp180 = icmp sgt i32 %38, 1
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %do.end179
  call void @store_info_free(%struct.ossl_store_info_st* noundef %result.4) #12
  br label %cleanup196

if.end183:                                        ; preds = %land.rhs174, %land.lhs.true171, %do.end179
  %cmp184.not = icmp eq %struct.ossl_store_info_st* %result.4, null
  br i1 %cmp184.not, label %cleanup196.thread, label %land.lhs.true186

land.lhs.true186:                                 ; preds = %if.end183
  %39 = load i32, i32* %expected_type, align 8, !tbaa !31
  %cmp187.not = icmp eq i32 %39, 0
  br i1 %cmp187.not, label %cleanup196.thread, label %land.lhs.true189

land.lhs.true189:                                 ; preds = %land.lhs.true186
  %call191 = call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %result.4) #11
  %cmp192.not = icmp eq i32 %39, %call191
  br i1 %cmp192.not, label %cleanup196.thread, label %if.then194

if.then194:                                       ; preds = %land.lhs.true189
  call void @store_info_free(%struct.ossl_store_info_st* noundef nonnull %result.4) #12
  %call66 = call fastcc %struct.ossl_store_info_st* @file_load_try_repeat(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #12
  %cmp67.not = icmp eq %struct.ossl_store_info_st* %call66, null
  br i1 %cmp67.not, label %if.end70, label %cleanup196

cleanup196.thread:                                ; preds = %land.lhs.true189, %land.lhs.true186, %if.end183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #14
  br label %cleanup200

cleanup196:                                       ; preds = %if.then194, %if.end70, %if.else, %if.then182
  %retval.2 = phi %struct.ossl_store_info_st* [ null, %if.then182 ], [ %call66281, %if.else ], [ %call66, %if.then194 ], [ null, %if.end70 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #14
  br label %cleanup200

cleanup200:                                       ; preds = %land.rhs, %do.cond, %cleanup196.thread, %cleanup196, %cleanup.thread
  %retval.3 = phi %struct.ossl_store_info_st* [ %retval.2, %cleanup196 ], [ null, %cleanup.thread ], [ %call57, %do.cond ], [ %result.4, %cleanup196.thread ], [ null, %land.rhs ]
  ret %struct.ossl_store_info_st* %retval.3
}

declare i32 @OSSL_STORE_LOADER_set_eof(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_eof(%struct.ossl_store_loader_ctx_st* nocapture noundef readonly %ctx) #1 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %type, align 8, !tbaa !27
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %end_reached = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 1
  %1 = load i32, i32* %end_reached, align 8, !tbaa !18
  br label %return

if.end:                                           ; preds = %entry
  %_1 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4
  %last_handler = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 1
  %2 = bitcast i32* %last_handler to %struct.file_handler_st**
  %3 = load %struct.file_handler_st*, %struct.file_handler_st** %2, align 8, !tbaa !18
  %cmp2.not = icmp eq %struct.file_handler_st* %3, null
  br i1 %cmp2.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %eof = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %3, i64 0, i32 2
  %4 = load i32 (i8*)*, i32 (i8*)** %eof, align 8, !tbaa !36
  %last_handler_ctx = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 2, i64 4
  %5 = bitcast i8* %last_handler_ctx to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !18
  %call = tail call i32 %4(i8* noundef %6) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %file12 = bitcast %union.anon* %_1 to %struct.bio_st**
  %7 = load %struct.bio_st*, %struct.bio_st** %file12, align 8, !tbaa !18
  %call13 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %7, i32 noundef 2, i64 noundef 0, i8* noundef null) #11
  %conv = trunc i64 %call13 to i32
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end9, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %conv, %if.end9 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare i32 @OSSL_STORE_LOADER_set_error(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @file_error(%struct.ossl_store_loader_ctx_st* nocapture noundef readonly %ctx) #5 {
entry:
  %errcnt = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 2
  %0 = load i32, i32* %errcnt, align 4, !tbaa !32
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @OSSL_STORE_LOADER_set_close(%struct.ossl_store_loader_st* noundef, i32 (%struct.ossl_store_loader_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_close(%struct.ossl_store_loader_ctx_st* noundef %ctx) #1 {
entry:
  %flags = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 3
  %0 = load i32, i32* %flags, align 8, !tbaa !30
  %and = and i32 %0, 2
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %1 = load i32, i32* %type, align 8, !tbaa !27
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %ctx3 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 0
  %call = tail call i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef nonnull %ctx3) #11
  br label %if.end18

if.else:                                          ; preds = %if.then
  %_4 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4
  %file5 = bitcast %union.anon* %_4 to %struct.bio_st**
  %2 = load %struct.bio_st*, %struct.bio_st** %file5, align 8, !tbaa !18
  tail call void @BIO_free_all(%struct.bio_st* noundef %2) #11
  br label %if.end18

if.else6:                                         ; preds = %entry
  %_7 = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4
  %file9 = bitcast %union.anon* %_7 to %struct.bio_st**
  %3 = load %struct.bio_st*, %struct.bio_st** %file9, align 8, !tbaa !18
  %call13 = tail call %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %3) #11
  store %struct.bio_st* null, %struct.bio_st** %file9, align 8, !tbaa !18
  %call17 = tail call i32 @BIO_free(%struct.bio_st* noundef %3) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then2, %if.else, %if.else6
  tail call fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef nonnull %ctx) #12
  ret i32 1
}

declare i32 @ENGINE_set_id(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_name(%struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ENGINE_set_destroy_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_attic_destroy(%struct.engine_st* nocapture noundef readnone %e) #1 {
entry:
  %call = tail call %struct.ossl_store_loader_st* @OSSL_STORE_unregister_loader(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #11
  %cmp = icmp eq %struct.ossl_store_loader_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @ERR_unload_ATTIC_strings() #12
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @ENGINE_set_init_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @loader_attic_init(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

declare i32 @ENGINE_set_finish_function(%struct.engine_st* noundef, i32 (%struct.engine_st*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @loader_attic_finish(%struct.engine_st* nocapture noundef readnone %e) #0 {
entry:
  ret i32 1
}

declare i32 @OSSL_STORE_register_loader(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

declare void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_ATTIC_error(i32 noundef %reason, i32 noundef %line) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @lib_code, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ERR_get_next_error_library() #11
  store i32 %call, i32* @lib_code, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ERR_ATTIC_error, i64 0, i64 0)) #11
  %1 = load i32, i32* @lib_code, align 4, !tbaa !14
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef %1, i32 noundef %reason, i8* noundef null) #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %line, i8* noundef null) #11
  ret void
}

declare i32 @ERR_get_next_error_library() local_unnamed_addr #2

declare i32 @ERR_load_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
declare i32 @stat(i8* noundef nonnull, %struct.stat* noundef nonnull) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #7

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_DIR_read(%struct.OPENSSL_dir_context_st** noundef, i8* noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @file_find_type(%struct.ossl_store_loader_ctx_st* nocapture noundef %ctx) unnamed_addr #1 {
entry:
  %peekbuf = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %peekbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4096) %0, i8 0, i64 4096, i1 false)
  %call = tail call %struct.bio_method_st* @BIO_f_buffer() #11
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #11
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4
  %file2 = bitcast %union.anon* %_ to %struct.bio_st**
  %1 = load %struct.bio_st*, %struct.bio_st** %file2, align 8, !tbaa !18
  %call3 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call1, %struct.bio_st* noundef %1) #11
  store %struct.bio_st* %call3, %struct.bio_st** %file2, align 8, !tbaa !18
  %call10 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call3, i32 noundef 29, i64 noundef 4095, i8* noundef nonnull %0) #11
  %cmp11 = icmp sgt i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* %peekbuf, i64 0, i64 4095
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %call14 = call i8* @strstr(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0)) #13
  %cmp15.not = icmp eq i8* %call14, null
  br i1 %cmp15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.then12
  %type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  store i32 1, i32* %type, align 8, !tbaa !27
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then16, %if.then12, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then12 ], [ 1, %if.then16 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #14
  ret i32 %retval.0
}

declare void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @OSSL_STORE_LOADER_CTX_free(%struct.ossl_store_loader_ctx_st* noundef %ctx) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.ossl_store_loader_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %propq = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 7
  %0 = load i8*, i8** %propq, align 8, !tbaa !28
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 919) #11
  %uri = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %1 = load i8*, i8** %uri, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 920) #11
  %type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 1
  %2 = load i32, i32* %type, align 8, !tbaa !27
  %cmp1.not = icmp eq i32 %2, 2
  br i1 %cmp1.not, label %if.end17, label %if.then2

if.then2:                                         ; preds = %if.end
  %last_handler = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 1
  %3 = bitcast i32* %last_handler to %struct.file_handler_st**
  %4 = load %struct.file_handler_st*, %struct.file_handler_st** %3, align 8, !tbaa !18
  %cmp3.not = icmp eq %struct.file_handler_st* %4, null
  br i1 %cmp3.not, label %if.end17, label %if.then4

if.then4:                                         ; preds = %if.then2
  %destroy_ctx = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %4, i64 0, i32 3
  %5 = load void (i8**)*, void (i8**)** %destroy_ctx, align 8, !tbaa !38
  %last_handler_ctx = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 2, i64 4
  %6 = bitcast i8* %last_handler_ctx to i8**
  tail call void %5(i8** noundef nonnull %6) #11
  store i8* null, i8** %6, align 8, !tbaa !18
  store %struct.file_handler_st* null, %struct.file_handler_st** %3, align 8, !tbaa !18
  br label %if.end17

if.end17:                                         ; preds = %if.then2, %if.then4, %if.end
  %7 = bitcast %struct.ossl_store_loader_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 928) #11
  br label %return

return:                                           ; preds = %entry, %if.end17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #2

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_SEARCH_get_type(%struct.ossl_store_search_st* noundef) local_unnamed_addr #2

declare i64 @X509_NAME_hash_ex(%struct.X509_name_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.X509_name_st* @OSSL_STORE_SEARCH_get0_name(%struct.ossl_store_search_st* noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc i32 @file_name_check(%struct.ossl_store_loader_ctx_st* noundef %ctx, i8* noundef readonly %name) unnamed_addr #9 {
entry:
  %arraydecay = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 2, i64 0
  %call = tail call i64 @strlen(i8* noundef nonnull %arraydecay) #13
  %0 = load i8, i8* %arraydecay, align 4, !tbaa !18
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %expected_type = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %expected_type, align 8, !tbaa !31
  switch i32 %1, label %cleanup [
    i32 0, label %if.end15
    i32 5, label %if.end15
    i32 6, label %if.end15
  ]

if.end15:                                         ; preds = %if.end, %if.end, %if.end
  %call20 = tail call i32 @strncasecmp(i8* noundef %name, i8* noundef nonnull %arraydecay, i64 noundef %call) #13
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %arrayidx23 = getelementptr inbounds i8, i8* %name, i64 %call
  %2 = load i8, i8* %arrayidx23, align 1, !tbaa !18
  %cmp25.not = icmp eq i8 %2, 46
  br i1 %cmp25.not, label %if.end28, label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %add = add i64 %call, 1
  %arrayidx29 = getelementptr inbounds i8, i8* %name, i64 %add
  %3 = load i8, i8* %arrayidx29, align 1, !tbaa !18
  %cmp31 = icmp eq i8 %3, 114
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end28
  %incdec.ptr = getelementptr inbounds i8, i8* %arrayidx29, i64 1
  switch i32 %1, label %cleanup [
    i32 0, label %if.end48
    i32 6, label %if.end48
  ]

if.else:                                          ; preds = %if.end28
  %cmp44 = icmp eq i32 %1, 6
  br i1 %cmp44, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.then33, %if.then33, %if.else
  %p.0 = phi i8* [ %incdec.ptr, %if.then33 ], [ %arrayidx29, %if.else ], [ %incdec.ptr, %if.then33 ]
  %call49 = tail call i16** @__ctype_b_loc() #15
  %4 = load i16*, i16** %call49, align 8, !tbaa !13
  %5 = load i8, i8* %p.0, align 1, !tbaa !18
  %idxprom = sext i8 %5 to i64
  %arrayidx51 = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %6 = load i16, i16* %arrayidx51, align 2, !tbaa !39
  %7 = and i16 %6, 2048
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end48
  %8 = and i16 %6, 2048
  %tobool61.not88 = icmp eq i16 %8, 0
  br i1 %tobool61.not88, label %while.end, label %while.cond.while.cond_crit_edge, !llvm.loop !41

while.cond.while.cond_crit_edge:                  ; preds = %while.cond.preheader, %while.cond.while.cond_crit_edge
  %p.0.pn = phi i8* [ %incdec.ptr6290, %while.cond.while.cond_crit_edge ], [ %p.0, %while.cond.preheader ]
  %incdec.ptr6290 = getelementptr inbounds i8, i8* %p.0.pn, i64 1
  %.pre = load i8, i8* %incdec.ptr6290, align 1, !tbaa !18
  %idxprom57.phi.trans.insert = sext i8 %.pre to i64
  %arrayidx58.phi.trans.insert = getelementptr inbounds i16, i16* %4, i64 %idxprom57.phi.trans.insert
  %.pre87 = load i16, i16* %arrayidx58.phi.trans.insert, align 2, !tbaa !39
  %9 = and i16 %.pre87, 2048
  %tobool61.not = icmp eq i16 %9, 0
  br i1 %tobool61.not, label %while.end, label %while.cond.while.cond_crit_edge, !llvm.loop !41

while.end:                                        ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %.lcssa = phi i8 [ %5, %while.cond.preheader ], [ %.pre, %while.cond.while.cond_crit_edge ]
  %cmp64 = icmp eq i8 %.lcssa, 0
  %conv65 = zext i1 %cmp64 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.else, %if.then33, %if.end15, %lor.lhs.false, %if.end, %entry, %while.end
  %retval.0 = phi i32 [ %conv65, %while.end ], [ 1, %entry ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %if.end15 ], [ 0, %if.then33 ], [ 0, %if.else ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @file_name_to_uri(%struct.ossl_store_loader_ctx_st* nocapture noundef readonly %ctx, i8* noundef %name, i8** nocapture noundef %data) unnamed_addr #1 {
entry:
  %uri = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %0 = load i8*, i8** %uri, align 8, !tbaa !21
  %call = tail call fastcc i32 @ossl_ends_with_dirsep(i8* noundef %0) #12
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0)
  %call2 = tail call i64 @strlen(i8* noundef %0) #13
  %call3 = tail call i64 @strlen(i8* noundef %cond) #13
  %call4 = tail call i64 @strlen(i8* noundef %name) #13
  %add = add i64 %call2, 1
  %add5 = add i64 %add, %call3
  %add6 = add i64 %add5, %call4
  %call7 = tail call i8* @CRYPTO_zalloc(i64 noundef %add6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1438) #11
  store i8* %call7, i8** %data, align 8, !tbaa !13
  %cmp = icmp eq i8* %call7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 1440) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %uri, align 8, !tbaa !21
  %call9 = tail call i64 @OPENSSL_strlcat(i8* noundef nonnull %call7, i8* noundef %1, i64 noundef %add6) #11
  %2 = load i8*, i8** %data, align 8, !tbaa !13
  %call10 = tail call i64 @OPENSSL_strlcat(i8* noundef %2, i8* noundef %cond, i64 noundef %add6) #11
  %3 = load i8*, i8** %data, align 8, !tbaa !13
  %call11 = tail call i64 @OPENSSL_strlcat(i8* noundef %3, i8* noundef %name, i64 noundef %add6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %switch = xor i1 %cmp, true
  %spec.select = zext i1 %switch to i32
  ret i32 %spec.select
}

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_NAME(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @file_load_try_repeat(%struct.ossl_store_loader_ctx_st* noundef %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) unnamed_addr #1 {
entry:
  %try_matchcount = alloca i32, align 4
  %0 = bitcast i32* %try_matchcount to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %try_matchcount, align 4, !tbaa !14
  %last_handler = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 1
  %1 = bitcast i32* %last_handler to %struct.file_handler_st**
  %2 = load %struct.file_handler_st*, %struct.file_handler_st** %1, align 8, !tbaa !18
  %cmp.not = icmp eq %struct.file_handler_st* %2, null
  br i1 %cmp.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %try_decode = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %2, i64 0, i32 1
  %3 = load %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)*, %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)** %try_decode, align 8, !tbaa !42
  %last_handler_ctx = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 2, i64 4
  %4 = bitcast i8* %last_handler_ctx to i8**
  %uri = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %5 = load i8*, i8** %uri, align 8, !tbaa !21
  %libctx = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 6
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !29
  %propq = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 7
  %7 = load i8*, i8** %propq, align 8, !tbaa !28
  %call = call %struct.ossl_store_info_st* %3(i8* noundef null, i8* noundef null, i8* noundef null, i64 noundef 0, i8** noundef nonnull %4, i32* noundef nonnull %try_matchcount, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %5, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef %7) #11
  %cmp6 = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.then
  %8 = load %struct.file_handler_st*, %struct.file_handler_st** %1, align 8, !tbaa !18
  %destroy_ctx = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %8, i64 0, i32 3
  %9 = load void (i8**)*, void (i8**)** %destroy_ctx, align 8, !tbaa !38
  call void %9(i8** noundef nonnull %4) #11
  store i8* null, i8** %4, align 8, !tbaa !18
  store %struct.file_handler_st* null, %struct.file_handler_st** %1, align 8, !tbaa !18
  br label %if.end20

if.end20:                                         ; preds = %if.then, %if.then7, %entry
  %result.0 = phi %struct.ossl_store_info_st* [ null, %if.then7 ], [ %call, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret %struct.ossl_store_info_st* %result.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @file_read_pem(%struct.bio_st* noundef %bp, i8** noundef %pem_name, i8** noundef %pem_header, i8** noundef %data, i64* noundef %len, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %uri, i32 noundef %secure) unnamed_addr #1 {
entry:
  %cipher = alloca %struct.evp_cipher_info_st, align 8
  %pass_data = alloca %struct.pem_pass_data, align 8
  %tobool.not = icmp eq i32 %secure, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i32 @PEM_read_bio_ex(%struct.bio_st* noundef %bp, i8** noundef %pem_name, i8** noundef %pem_header, i8** noundef %data, i64* noundef %len, i32 noundef 3) #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call i32 @PEM_read_bio(%struct.bio_st* noundef %bp, i8** noundef %pem_name, i8** noundef %pem_header, i8** noundef %data, i64* noundef %len) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %cmp = icmp slt i32 %cond, 1
  br i1 %cmp, label %cleanup16, label %if.end

if.end:                                           ; preds = %cond.end
  %0 = load i8*, i8** %pem_header, align 8, !tbaa !13
  %call2 = tail call i64 @strlen(i8* noundef %0) #13
  %cmp3 = icmp ugt i64 %call2, 10
  br i1 %cmp3, label %if.then4, label %cleanup16

if.then4:                                         ; preds = %if.end
  %1 = bitcast %struct.evp_cipher_info_st* %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #14
  %2 = bitcast %struct.pem_pass_data* %pass_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #14
  %call5 = call i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef %0, %struct.evp_cipher_info_st* noundef nonnull %cipher) #11
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %call7 = call fastcc i32 @file_fill_pem_pass_data(%struct.pem_pass_data* noundef nonnull %pass_data, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* noundef %uri, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #12
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %3 = load i8*, i8** %data, align 8, !tbaa !13
  %call10 = call i32 @PEM_do_header(%struct.evp_cipher_info_st* noundef nonnull %cipher, i8* noundef %3, i64* noundef %len, i32 (i8*, i32, i32, i8*)* noundef nonnull @file_get_pem_pass, i8* noundef nonnull %2) #11
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.end15.critedge

cleanup:                                          ; preds = %if.then4, %lor.lhs.false, %lor.lhs.false9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #14
  br label %cleanup16

if.end15.critedge:                                ; preds = %lor.lhs.false9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #14
  br label %cleanup16

cleanup16:                                        ; preds = %if.end, %if.end15.critedge, %cleanup, %cond.end
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %cond.end ], [ 1, %if.end15.critedge ], [ 1, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @file_try_read_msblob(%struct.bio_st* noundef %bp, i32* nocapture noundef %matchcount) unnamed_addr #1 {
entry:
  %ispub = alloca i32, align 4
  %magic = alloca i32, align 4
  %bitlen = alloca i32, align 4
  %isdss = alloca i32, align 4
  %peekbuf = alloca [16 x i8], align 16
  %p = alloca i8*, align 8
  %0 = bitcast i32* %ispub to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 -1, i32* %ispub, align 4, !tbaa !14
  %1 = bitcast i32* %magic to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 0, i32* %magic, align 4, !tbaa !14
  %2 = bitcast i32* %bitlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  store i32 0, i32* %bitlen, align 4, !tbaa !14
  %3 = bitcast i32* %isdss to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  store i32 0, i32* %isdss, align 4, !tbaa !14
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %peekbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14
  store i8* %4, i8** %p, align 8, !tbaa !13
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 29, i64 noundef 16, i8* noundef nonnull %4) #11
  %cmp = icmp slt i64 %call, 1
  br i1 %cmp, label %cleanup20.critedge, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @ossl_do_blob_header(i8** noundef nonnull %p, i32 noundef 16, i32* noundef nonnull %magic, i32* noundef nonnull %bitlen, i32* noundef nonnull %isdss, i32* noundef nonnull %ispub) #11
  %tobool.not.not = icmp eq i32 %call2, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  br i1 %tobool.not.not, label %cleanup20, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end
  %6 = load i32, i32* %matchcount, align 4, !tbaa !14
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %matchcount, align 4, !tbaa !14
  %7 = load i32, i32* %ispub, align 4, !tbaa !14
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %cleanup.cont
  %call10 = call %struct.evp_pkey_st* @b2i_PublicKey_bio(%struct.bio_st* noundef %bp) #11
  br label %cond.end

cond.false:                                       ; preds = %cleanup.cont
  %call11 = call %struct.evp_pkey_st* @b2i_PrivateKey_bio(%struct.bio_st* noundef %bp) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.evp_pkey_st* [ %call10, %cond.true ], [ %call11, %cond.false ]
  %cmp12 = icmp eq %struct.evp_pkey_st* %cond, null
  br i1 %cmp12, label %cleanup17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %call13 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef nonnull %cond) #11
  %cmp14 = icmp eq %struct.ossl_store_info_st* %call13, null
  br i1 %cmp14, label %cleanup17, label %cleanup20

cleanup17:                                        ; preds = %cond.end, %lor.lhs.false
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %cond) #11
  br label %cleanup20

cleanup20.critedge:                               ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup17, %lor.lhs.false, %cleanup20.critedge, %if.end
  %retval.2 = phi %struct.ossl_store_info_st* [ null, %if.end ], [ null, %cleanup20.critedge ], [ null, %cleanup17 ], [ %call13, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  ret %struct.ossl_store_info_st* %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @file_try_read_PVK(%struct.bio_st* noundef %bp, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %uri, i32* nocapture noundef %matchcount) unnamed_addr #1 {
entry:
  %saltlen = alloca i32, align 4
  %keylen = alloca i32, align 4
  %peekbuf = alloca [24 x i8], align 16
  %p = alloca i8*, align 8
  %pass_data = alloca %struct.pem_pass_data, align 8
  %0 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  store i32 0, i32* %saltlen, align 4, !tbaa !14
  %1 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 0, i32* %keylen, align 4, !tbaa !14
  %2 = getelementptr inbounds [24 x i8], [24 x i8]* %peekbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store i8* %2, i8** %p, align 8, !tbaa !13
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %bp, i32 noundef 29, i64 noundef 24, i8* noundef nonnull %2) #11
  %cmp = icmp slt i64 %call, 1
  br i1 %cmp, label %cleanup21.critedge, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @ossl_do_PVK_header(i8** noundef nonnull %p, i32 noundef 24, i32 noundef 0, i32* noundef nonnull %saltlen, i32* noundef nonnull %keylen) #11
  %tobool.not.not = icmp eq i32 %call2, 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  br i1 %tobool.not.not, label %cleanup21, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end
  %4 = load i32, i32* %matchcount, align 4, !tbaa !14
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %matchcount, align 4, !tbaa !14
  %5 = bitcast %struct.pem_pass_data* %pass_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #14
  %call8 = call fastcc i32 @file_fill_pem_pass_data(%struct.pem_pass_data* noundef nonnull %pass_data, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8* noundef %uri, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.cont
  %call10 = call %struct.evp_pkey_st* @b2i_PVK_bio(%struct.bio_st* noundef %bp, i32 (i8*, i32, i32, i8*)* noundef nonnull @file_get_pem_pass, i8* noundef nonnull %5) #11
  %cmp11 = icmp eq %struct.evp_pkey_st* %call10, null
  br i1 %cmp11, label %cleanup17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef nonnull %call10) #11
  %cmp14 = icmp eq %struct.ossl_store_info_st* %call13, null
  br i1 %cmp14, label %cleanup17, label %6

cleanup17:                                        ; preds = %cleanup.cont, %lor.lhs.false, %lor.lhs.false12
  %tmp.0 = phi %struct.evp_pkey_st* [ null, %lor.lhs.false ], [ %call10, %lor.lhs.false12 ], [ null, %cleanup.cont ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %tmp.0) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #14
  br label %cleanup21

6:                                                ; preds = %lor.lhs.false12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #14
  br label %cleanup21

cleanup21.critedge:                               ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  br label %cleanup21

cleanup21:                                        ; preds = %6, %cleanup17, %cleanup21.critedge, %if.end
  %retval.2 = phi %struct.ossl_store_info_st* [ null, %if.end ], [ null, %cleanup21.critedge ], [ %call13, %6 ], [ null, %cleanup17 ]
  ret %struct.ossl_store_info_st* %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @file_read_asn1(%struct.bio_st* noundef %bp, i8** nocapture noundef writeonly %data, i64* nocapture noundef writeonly %len) unnamed_addr #1 {
entry:
  %mem = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast %struct.buf_mem_st** %mem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %mem, align 8, !tbaa !13
  %call = call i32 @asn1_d2i_read_bio(%struct.bio_st* noundef %bp, %struct.buf_mem_st** noundef nonnull %mem) #11
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem, align 8, !tbaa !13
  %data1 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %data1, align 8, !tbaa !43
  store i8* %2, i8** %data, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %1, i64 0, i32 0
  %3 = load i64, i64* %length, align 8, !tbaa !45
  store i64 %3, i64* %len, align 8, !tbaa !34
  %4 = bitcast %struct.buf_mem_st* %1 to i8*
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1423) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @file_load_try_decode(%struct.ossl_store_loader_ctx_st* nocapture noundef %ctx, i8* noundef %pem_name, i8* noundef %pem_header, i8* noundef %data, i64 noundef %len, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i32* nocapture noundef %matchcount) unnamed_addr #1 {
entry:
  %handler_ctx = alloca i8*, align 8
  %try_matchcount = alloca i32, align 4
  %tmp_handler_ctx = alloca i8*, align 8
  %0 = bitcast i8** %handler_ctx to i8*
  %1 = bitcast i32* %try_matchcount to i8*
  %2 = bitcast i8** %tmp_handler_ctx to i8*
  %uri = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 0
  %libctx = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 6
  %propq = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 7
  %last_handler = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 1
  %3 = bitcast i32* %last_handler to %struct.file_handler_st**
  %last_handler_ctx = getelementptr inbounds %struct.ossl_store_loader_ctx_st, %struct.ossl_store_loader_ctx_st* %ctx, i64 0, i32 4, i32 0, i32 2, i64 4
  %4 = bitcast i8* %last_handler_ctx to i8**
  br label %again

again:                                            ; preds = %if.then58, %entry
  %new_mem.0 = phi %struct.buf_mem_st* [ null, %entry ], [ %24, %if.then58 ]
  %new_pem_name.0 = phi i8* [ null, %entry ], [ %23, %if.then58 ]
  %len.addr.0 = phi i64 [ %len, %entry ], [ %26, %if.then58 ]
  %data.addr.0 = phi i8* [ %data, %entry ], [ %25, %if.then58 ]
  %pem_name.addr.0 = phi i8* [ %pem_name, %entry ], [ %23, %if.then58 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %handler_ctx, align 8, !tbaa !13
  %call = call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1192) #11
  %5 = bitcast i8* %call to %struct.file_handler_st**
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %again
  call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 1195) #12
  br label %err53

if.end:                                           ; preds = %again
  store i32 0, i32* %matchcount, align 4, !tbaa !14
  br label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %i.0124 = phi i64 [ 0, %if.end ], [ %inc, %for.inc ]
  %result.1123 = phi %struct.ossl_store_info_st* [ null, %if.end ], [ %result.4, %for.inc ]
  %arrayidx = getelementptr inbounds [7 x %struct.file_handler_st*], [7 x %struct.file_handler_st*]* @file_handlers, i64 0, i64 %i.0124
  %6 = load %struct.file_handler_st*, %struct.file_handler_st** %arrayidx, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  store i32 0, i32* %try_matchcount, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i8* null, i8** %tmp_handler_ctx, align 8, !tbaa !13
  %call2 = call i32 @ERR_set_mark() #11
  %try_decode = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %6, i64 0, i32 1
  %7 = load %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)*, %struct.ossl_store_info_st* (i8*, i8*, i8*, i64, i8**, i32*, %struct.ui_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8*)** %try_decode, align 8, !tbaa !42
  %8 = load i8*, i8** %uri, align 8, !tbaa !21
  %9 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !29
  %10 = load i8*, i8** %propq, align 8, !tbaa !28
  %call3 = call %struct.ossl_store_info_st* %7(i8* noundef %pem_name.addr.0, i8* noundef %pem_header, i8* noundef %data.addr.0, i64 noundef %len.addr.0, i8** noundef nonnull %tmp_handler_ctx, i32* noundef nonnull %try_matchcount, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %8, %struct.ossl_lib_ctx_st* noundef %9, i8* noundef %10) #11
  %call4 = call i64 @ERR_peek_last_error() #11
  %call5 = call fastcc i32 @ERR_GET_LIB(i64 noundef %call4) #12
  %cmp6 = icmp eq i32 %call5, 13
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %call7 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call4) #12
  %cmp8 = icmp eq i32 %call7, 524554
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %call10 = call i32 @ERR_pop_to_mark() #11
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true, %for.body
  %call11 = call i32 @ERR_clear_last_mark() #11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %11 = load i32, i32* %try_matchcount, align 4, !tbaa !14
  %cmp13 = icmp sgt i32 %11, 0
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %if.end12
  %12 = load i32, i32* %matchcount, align 4, !tbaa !14
  %idxprom = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds %struct.file_handler_st*, %struct.file_handler_st** %5, i64 %idxprom
  store %struct.file_handler_st* %6, %struct.file_handler_st** %arrayidx15, align 8, !tbaa !13
  %13 = load i8*, i8** %handler_ctx, align 8, !tbaa !13
  %tobool.not = icmp eq i8* %13, null
  br i1 %tobool.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then14
  %destroy_ctx = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %6, i64 0, i32 3
  %14 = load void (i8**)*, void (i8**)** %destroy_ctx, align 8, !tbaa !38
  call void %14(i8** noundef nonnull %handler_ctx) #11
  %.pre = load i32, i32* %try_matchcount, align 4, !tbaa !14
  %.pre125 = load i32, i32* %matchcount, align 4, !tbaa !14
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14
  %15 = phi i32 [ %.pre125, %if.then16 ], [ %12, %if.then14 ]
  %16 = phi i32 [ %.pre, %if.then16 ], [ %11, %if.then14 ]
  %17 = load i8*, i8** %tmp_handler_ctx, align 8, !tbaa !13
  store i8* %17, i8** %handler_ctx, align 8, !tbaa !13
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %matchcount, align 4, !tbaa !14
  %cmp18 = icmp sgt i32 %add, 1
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end17
  call void @store_info_free(%struct.ossl_store_info_st* noundef %result.1123) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef %call3) #12
  %destroy_ctx20 = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %6, i64 0, i32 3
  %18 = load void (i8**)*, void (i8**)** %destroy_ctx20, align 8, !tbaa !38
  %cmp21.not = icmp eq void (i8**)* %18, null
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.then19
  call void %18(i8** noundef nonnull %handler_ctx) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then19
  store i8* null, i8** %handler_ctx, align 8, !tbaa !13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end17
  %result.2 = phi %struct.ossl_store_info_st* [ null, %if.end24 ], [ %result.1123, %if.end17 ]
  %tmp_result.0 = phi %struct.ossl_store_info_st* [ null, %if.end24 ], [ %call3, %if.end17 ]
  %cmp26 = icmp eq %struct.ossl_store_info_st* %result.2, null
  %spec.select = select i1 %cmp26, %struct.ossl_store_info_st* %tmp_result.0, %struct.ossl_store_info_st* %result.2
  %cmp29 = icmp eq %struct.ossl_store_info_st* %spec.select, null
  br i1 %cmp29, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %if.end25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  br label %if.end47

for.inc:                                          ; preds = %if.end12, %if.end25
  %result.4 = phi %struct.ossl_store_info_st* [ %spec.select, %if.end25 ], [ %result.1123, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  %inc = add nuw nsw i64 %i.0124, 1
  %exitcond.not = icmp eq i64 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !46

for.end:                                          ; preds = %for.inc
  %cmp37.not = icmp eq %struct.ossl_store_info_st* %result.4, null
  br i1 %cmp37.not, label %if.end47, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %for.end
  %19 = load i32, i32* %matchcount, align 4, !tbaa !14
  %cmp39 = icmp eq i32 %19, 1
  br i1 %cmp39, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %20 = load %struct.file_handler_st*, %struct.file_handler_st** %5, align 8, !tbaa !13
  %repeatable = getelementptr inbounds %struct.file_handler_st, %struct.file_handler_st* %20, i64 0, i32 4
  %21 = load i32, i32* %repeatable, align 8, !tbaa !47
  %tobool42.not = icmp eq i32 %21, 0
  br i1 %tobool42.not, label %if.end47, label %if.then43

if.then43:                                        ; preds = %land.lhs.true40
  store %struct.file_handler_st* %20, %struct.file_handler_st** %3, align 8, !tbaa !18
  %22 = load i8*, i8** %handler_ctx, align 8, !tbaa !13
  store i8* %22, i8** %4, align 8, !tbaa !18
  br label %if.end47

if.end47:                                         ; preds = %for.end.thread, %if.then43, %land.lhs.true40, %land.lhs.true38, %for.end
  %result.6120 = phi %struct.ossl_store_info_st* [ null, %for.end.thread ], [ %result.4, %if.then43 ], [ %result.4, %land.lhs.true40 ], [ %result.4, %land.lhs.true38 ], [ null, %for.end ]
  call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1252) #11
  br label %err53

err53:                                            ; preds = %if.end47, %if.then
  %result.7 = phi %struct.ossl_store_info_st* [ null, %if.then ], [ %result.6120, %if.end47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  call void @CRYPTO_free(i8* noundef %new_pem_name.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1256) #11
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %new_mem.0) #11
  %cmp54.not = icmp eq %struct.ossl_store_info_st* %result.7, null
  br i1 %cmp54.not, label %cleanup66, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %err53
  %call56 = call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %result.7) #11
  %cmp57 = icmp eq i32 %call56, -1
  br i1 %cmp57, label %if.then58, label %cleanup66

if.then58:                                        ; preds = %land.lhs.true55
  %call59 = call fastcc %struct.embedded_st* @get0_EMBEDDED(%struct.ossl_store_info_st* noundef nonnull %result.7) #12
  %pem_name60 = getelementptr inbounds %struct.embedded_st, %struct.embedded_st* %call59, i64 0, i32 1
  %23 = load i8*, i8** %pem_name60, align 8, !tbaa !48
  %blob = getelementptr inbounds %struct.embedded_st, %struct.embedded_st* %call59, i64 0, i32 0
  %24 = load %struct.buf_mem_st*, %struct.buf_mem_st** %blob, align 8, !tbaa !50
  %data61 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %24, i64 0, i32 1
  %25 = load i8*, i8** %data61, align 8, !tbaa !43
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %24, i64 0, i32 0
  %26 = load i64, i64* %length, align 8, !tbaa !45
  store i8* null, i8** %pem_name60, align 8, !tbaa !48
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %blob, align 8, !tbaa !50
  call void @store_info_free(%struct.ossl_store_info_st* noundef nonnull %result.7) #12
  br label %again

cleanup66:                                        ; preds = %err53, %land.lhs.true55
  ret %struct.ossl_store_info_st* %result.7
}

declare i64 @ERR_peek_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @pem_free_flag(i8* noundef %pem_data, i32 noundef %secure, i64 noundef %num) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %secure, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_secure_clear_free(i8* noundef %pem_data, i64 noundef %num, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1306) #11
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef %pem_data, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1308) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @store_info_free(%struct.ossl_store_info_st* noundef %info) #1 {
entry:
  %cmp.not = icmp eq %struct.ossl_store_info_st* %info, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc %struct.embedded_st* @get0_EMBEDDED(%struct.ossl_store_info_st* noundef nonnull %info) #12
  %cmp1.not = icmp eq %struct.embedded_st* %call, null
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %blob = getelementptr inbounds %struct.embedded_st, %struct.embedded_st* %call, i64 0, i32 0
  %0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %blob, align 8, !tbaa !50
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %0) #11
  %pem_name = getelementptr inbounds %struct.embedded_st, %struct.embedded_st* %call, i64 0, i32 1
  %1 = load i8*, i8** %pem_name, align 8, !tbaa !48
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 186) #11
  %2 = bitcast %struct.embedded_st* %call to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 187) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  tail call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef %info) #11
  ret void
}

declare i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @ossl_ends_with_dirsep(i8* noundef %path) unnamed_addr #10 {
entry:
  %0 = load i8, i8* %path, align 1, !tbaa !18
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %path) #13
  %sub = add i64 %call, -1
  %add.ptr = getelementptr inbounds i8, i8* %path, i64 %sub
  %.pre = load i8, i8* %add.ptr, align 1, !tbaa !18
  %phi.cmp = icmp eq i8 %.pre, 47
  %phi.cast = zext i1 %phi.cmp to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry ]
  ret i32 %1
}

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PEM_read_bio_ex(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PEM_read_bio(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare i32 @PEM_get_EVP_CIPHER_INFO(i8* noundef, %struct.evp_cipher_info_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc i32 @file_fill_pem_pass_data(%struct.pem_pass_data* noundef writeonly %pass_data, i8* noundef %desc, i8* noundef %info, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.pem_pass_data* %pass_data, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ui_method1 = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %pass_data, i64 0, i32 0
  store %struct.ui_method_st* %ui_method, %struct.ui_method_st** %ui_method1, align 8, !tbaa !51
  %data = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %pass_data, i64 0, i32 1
  store i8* %ui_data, i8** %data, align 8, !tbaa !53
  %prompt_desc = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %pass_data, i64 0, i32 2
  store i8* %desc, i8** %prompt_desc, align 8, !tbaa !54
  %prompt_info = getelementptr inbounds %struct.pem_pass_data, %struct.pem_pass_data* %pass_data, i64 0, i32 3
  store i8* %info, i8** %prompt_info, align 8, !tbaa !55
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @PEM_do_header(%struct.evp_cipher_info_st* noundef, i8* noundef, i64* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @file_get_pem_pass(i8* noundef %buf, i32 noundef %num, i32 noundef %w, i8* nocapture noundef readonly %data) #1 {
entry:
  %ui_method = bitcast i8* %data to %struct.ui_method_st**
  %0 = load %struct.ui_method_st*, %struct.ui_method_st** %ui_method, align 8, !tbaa !51
  %conv = sext i32 %num to i64
  %prompt_desc = getelementptr inbounds i8, i8* %data, i64 16
  %1 = bitcast i8* %prompt_desc to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !54
  %prompt_info = getelementptr inbounds i8, i8* %data, i64 24
  %3 = bitcast i8* %prompt_info to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !55
  %data1 = getelementptr inbounds i8, i8* %data, i64 8
  %5 = bitcast i8* %data1 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !53
  %call = tail call fastcc i8* @file_get_pass(%struct.ui_method_st* noundef %0, i8* noundef %buf, i64 noundef %conv, i8* noundef %2, i8* noundef %4, i8* noundef %6) #12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %call3 = tail call i64 @strlen(i8* noundef nonnull %call) #13
  %phi.cast = trunc i64 %call3 to i32
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %phi.cast, %cond.false ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @file_get_pass(%struct.ui_method_st* noundef %ui_method, i8* noundef %pass, i64 noundef %maxsize, i8* noundef %desc, i8* noundef %info, i8* noundef %data) unnamed_addr #1 {
entry:
  %call = tail call %struct.ui_st* @UI_new() #11
  %cmp = icmp eq %struct.ui_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 67) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.ui_method_st* %ui_method, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.ui_method_st* @UI_set_method(%struct.ui_st* noundef nonnull %call, %struct.ui_method_st* noundef nonnull %ui_method) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = tail call i8* @UI_add_user_data(%struct.ui_st* noundef nonnull %call, i8* noundef %data) #11
  %call6 = tail call i8* @UI_construct_prompt(%struct.ui_st* noundef nonnull %call, i8* noundef %desc, i8* noundef %info) #11
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 76) #12
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %0 = trunc i64 %maxsize to i32
  %conv = add i32 %0, -1
  %call9 = tail call i32 @UI_add_input_string(%struct.ui_st* noundef nonnull %call, i8* noundef nonnull %call6, i32 noundef 2, i8* noundef %pass, i32 noundef 0, i32 noundef %conv) #11
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 524328, i32 noundef 80) #12
  br label %if.end15

if.else11:                                        ; preds = %if.else
  %call12 = tail call i32 @UI_process(%struct.ui_st* noundef nonnull %call) #11
  switch i32 %call12, label %if.end15 [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.else11
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 107, i32 noundef 85) #12
  br label %if.end15

sw.bb13:                                          ; preds = %if.else11
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 524328, i32 noundef 89) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else11, %sw.bb13, %sw.bb, %if.then8
  %pass.addr.0 = phi i8* [ null, %if.then8 ], [ %pass, %if.else11 ], [ null, %sw.bb13 ], [ null, %sw.bb ], [ null, %if.then10 ]
  tail call void @CRYPTO_free(i8* noundef %call6, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 97) #11
  tail call void @UI_free(%struct.ui_st* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %pass.addr.0, %if.end15 ]
  ret i8* %retval.0
}

declare %struct.ui_st* @UI_new() local_unnamed_addr #2

declare %struct.ui_method_st* @UI_set_method(%struct.ui_st* noundef, %struct.ui_method_st* noundef) local_unnamed_addr #2

declare i8* @UI_add_user_data(%struct.ui_st* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @UI_construct_prompt(%struct.ui_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @UI_add_input_string(%struct.ui_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @UI_process(%struct.ui_st* noundef) local_unnamed_addr #2

declare void @UI_free(%struct.ui_st* noundef) local_unnamed_addr #2

declare i32 @ossl_do_blob_header(i8** noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @b2i_PublicKey_bio(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @b2i_PrivateKey_bio(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @ossl_do_PVK_header(i8** noundef, i32 noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @b2i_PVK_bio(%struct.bio_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @asn1_d2i_read_bio(%struct.bio_st* noundef, %struct.buf_mem_st** noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.embedded_st* @get0_EMBEDDED(%struct.ossl_store_info_st* noundef %info) unnamed_addr #1 {
entry:
  %call = tail call i8* @OSSL_STORE_INFO_get0_data(i32 noundef -1, %struct.ossl_store_info_st* noundef %info) #11
  %0 = bitcast i8* %call to %struct.embedded_st*
  ret %struct.embedded_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_PKCS12(i8* noundef readnone %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef %pctx, i32* nocapture noundef writeonly %matchcount, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %uri, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  %tpass = alloca [1024 x i8], align 16
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %cert = alloca %struct.x509_st*, align 8
  %chain = alloca %struct.stack_st_X509*, align 8
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %0 = bitcast i8** %pctx to %struct.stack_st_OSSL_STORE_INFO**
  %1 = load %struct.stack_st_OSSL_STORE_INFO*, %struct.stack_st_OSSL_STORE_INFO** %0, align 8, !tbaa !13
  %cmp = icmp eq %struct.stack_st_OSSL_STORE_INFO* %1, null
  br i1 %cmp, label %if.then, label %if.end101

if.then:                                          ; preds = %entry
  %cmp1.not = icmp eq i8* %pem_name, null
  br i1 %cmp1.not, label %if.end, label %cleanup103

if.end:                                           ; preds = %if.then
  %call = call %struct.PKCS12_st* @d2i_PKCS12(%struct.PKCS12_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  %cmp3.not = icmp eq %struct.PKCS12_st* %call, null
  br i1 %cmp3.not, label %p12_end.thread, label %if.then4

p12_end.thread:                                   ; preds = %if.end
  call void @PKCS12_free(%struct.PKCS12_st* noundef null) #11
  br label %cleanup103

if.then4:                                         ; preds = %if.end
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tpass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #14
  %3 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  %4 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #14
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !13
  %5 = bitcast %struct.stack_st_X509** %chain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %call5 = call i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef nonnull %call) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %call6 = call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), i32 noundef 0) #11
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.end21

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %call, i8* noundef null, i32 noundef 0) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.end21

if.else:                                          ; preds = %lor.lhs.false8
  %call12 = call fastcc i8* @file_get_pass(%struct.ui_method_st* noundef %ui_method, i8* noundef nonnull %2, i64 noundef 1024, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* noundef %uri, i8* noundef %ui_data) #12
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  call fastcc void @ERR_ATTIC_error(i32 noundef 104, i32 noundef 336) #12
  br label %p12_end.thread149

if.end15:                                         ; preds = %if.else
  %call16 = call i64 @strlen(i8* noundef nonnull %call12) #13
  %conv = trunc i64 %call16 to i32
  %call17 = call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %call, i8* noundef nonnull %call12, i32 noundef %conv) #11
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call fastcc void @ERR_ATTIC_error(i32 noundef 102, i32 noundef 340) #12
  br label %p12_end.thread149

if.end21:                                         ; preds = %if.then4, %lor.lhs.false, %lor.lhs.false8, %if.end15
  %pass.0 = phi i8* [ %call12, %if.end15 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), %lor.lhs.false8 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i64 0, i64 0), %if.then4 ]
  %call22 = call i32 @PKCS12_parse(%struct.PKCS12_st* noundef nonnull %call, i8* noundef nonnull %pass.0, %struct.evp_pkey_st** noundef nonnull %pkey, %struct.x509_st** noundef nonnull %cert, %struct.stack_st_X509** noundef nonnull %chain) #11
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %p12_end.thread149, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call fastcc %struct.stack_st_OSSL_STORE_INFO* @sk_OSSL_STORE_INFO_new_null() #12
  %cmp26.not = icmp eq %struct.stack_st_OSSL_STORE_INFO* %call25, null
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  br i1 %cmp26.not, label %p12_end.thread168, label %if.then28

if.then28:                                        ; preds = %if.then24
  %cmp29.not = icmp eq %struct.evp_pkey_st* %6, null
  br i1 %cmp29.not, label %if.end42, label %if.then31

if.then31:                                        ; preds = %if.then28
  %call32 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef nonnull %6) #11
  %cmp33.not = icmp eq %struct.ossl_store_info_st* %call32, null
  br i1 %cmp33.not, label %p12_end.thread152.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  %call36 = call fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25, %struct.ossl_store_info_st* noundef nonnull %call32) #12
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %p12_end.thread152.critedge, label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %if.then28
  %7 = load %struct.x509_st*, %struct.x509_st** %cert, align 8
  %cmp45.not = icmp eq %struct.x509_st* %7, null
  br i1 %cmp45.not, label %land.rhs.preheader, label %if.then47

if.then47:                                        ; preds = %if.end42
  %call48 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef nonnull %7) #11
  %cmp49.not = icmp eq %struct.ossl_store_info_st* %call48, null
  br i1 %cmp49.not, label %p12_end.thread152.critedge, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.then47
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !13
  %call53 = call fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25, %struct.ossl_store_info_st* noundef nonnull %call48) #12
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %p12_end.thread152.critedge, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end42, %land.lhs.true51
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.lhs.true75
  %8 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  %call61 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %8) #12
  %call62 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call61) #11
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %while.body, label %p12_end

while.body:                                       ; preds = %land.rhs
  %9 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  %call65 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %9) #12
  %call66 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call65, i32 noundef 0) #11
  %10 = bitcast i8* %call66 to %struct.x509_st*
  %call67 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef %10) #11
  %cmp68.not = icmp eq %struct.ossl_store_info_st* %call67, null
  br i1 %cmp68.not, label %p12_end.thread152.critedge, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %while.body
  %11 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  %call71 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %11) #12
  %call72 = call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call71) #11
  %cmp73.not = icmp eq i8* %call72, null
  br i1 %cmp73.not, label %p12_end.thread152.critedge, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %call76 = call fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25, %struct.ossl_store_info_st* noundef nonnull %call67) #12
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %p12_end.thread152.critedge, label %land.rhs, !llvm.loop !56

p12_end.thread168:                                ; preds = %if.then24
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %6) #11
  %12 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  call void @X509_free(%struct.x509_st* noundef %12) #11
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  %call83 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %13) #12
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call83, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #11
  call void @store_info_free(%struct.ossl_store_info_st* noundef null) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef null) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef null) #12
  store %struct.stack_st_OSSL_STORE_INFO* %call25, %struct.stack_st_OSSL_STORE_INFO** %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14
  call void @PKCS12_free(%struct.PKCS12_st* noundef nonnull %call) #11
  br label %cleanup103

p12_end.thread152.critedge:                       ; preds = %land.lhs.true75, %land.lhs.true70, %while.body, %if.then47, %land.lhs.true51, %land.lhs.true, %if.then31
  %osi_cert.0164 = phi %struct.ossl_store_info_st* [ null, %land.lhs.true ], [ null, %if.then31 ], [ %call48, %land.lhs.true51 ], [ null, %if.then47 ], [ null, %while.body ], [ null, %land.lhs.true70 ], [ null, %land.lhs.true75 ]
  %osi_pkey.0143163 = phi %struct.ossl_store_info_st* [ %call32, %land.lhs.true ], [ null, %if.then31 ], [ null, %land.lhs.true51 ], [ null, %if.then47 ], [ null, %while.body ], [ null, %land.lhs.true70 ], [ null, %land.lhs.true75 ]
  %osi_ca.0.lcssa = phi %struct.ossl_store_info_st* [ null, %land.lhs.true ], [ null, %if.then31 ], [ null, %land.lhs.true51 ], [ null, %if.then47 ], [ %call67, %land.lhs.true75 ], [ %call67, %land.lhs.true70 ], [ null, %while.body ]
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %14) #11
  %15 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  call void @X509_free(%struct.x509_st* noundef %15) #11
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  %call83.c155 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %16) #12
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call83.c155, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #11
  call void @store_info_free(%struct.ossl_store_info_st* noundef %osi_pkey.0143163) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef %osi_cert.0164) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef %osi_ca.0.lcssa) #12
  call fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25) #12
  store %struct.stack_st_OSSL_STORE_INFO* null, %struct.stack_st_OSSL_STORE_INFO** %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14
  call void @PKCS12_free(%struct.PKCS12_st* noundef nonnull %call) #11
  br label %cleanup103

p12_end.thread149:                                ; preds = %if.then14, %if.then19, %if.end21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14
  call void @PKCS12_free(%struct.PKCS12_st* noundef nonnull %call) #11
  br label %cleanup103

p12_end:                                          ; preds = %land.rhs
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %17) #11
  %18 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  call void @X509_free(%struct.x509_st* noundef %18) #11
  %19 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !13
  %call83.c = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %19) #12
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call83.c, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #11
  call void @store_info_free(%struct.ossl_store_info_st* noundef null) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef null) #12
  call void @store_info_free(%struct.ossl_store_info_st* noundef null) #12
  store %struct.stack_st_OSSL_STORE_INFO* %call25, %struct.stack_st_OSSL_STORE_INFO** %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #14
  call void @PKCS12_free(%struct.PKCS12_st* noundef nonnull %call) #11
  br i1 %cmp26.not, label %cleanup103, label %if.end101

if.end101:                                        ; preds = %p12_end, %entry
  %ctx.5 = phi %struct.stack_st_OSSL_STORE_INFO* [ %1, %entry ], [ %call25, %p12_end ]
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %call102 = call fastcc %struct.ossl_store_info_st* @sk_OSSL_STORE_INFO_shift(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %ctx.5) #12
  br label %cleanup103

cleanup103:                                       ; preds = %p12_end.thread168, %p12_end, %p12_end.thread, %p12_end.thread149, %p12_end.thread152.critedge, %if.then, %if.end101
  %retval.1 = phi %struct.ossl_store_info_st* [ %call102, %if.end101 ], [ null, %if.then ], [ null, %p12_end.thread152.critedge ], [ null, %p12_end.thread149 ], [ null, %p12_end.thread ], [ null, %p12_end ], [ null, %p12_end.thread168 ]
  ret %struct.ossl_store_info_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @eof_PKCS12(i8* noundef %ctx_) #1 {
entry:
  %cmp = icmp eq i8* %ctx_, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %0 = bitcast i8* %ctx_ to %struct.stack_st_OSSL_STORE_INFO*
  %call = tail call fastcc i32 @sk_OSSL_STORE_INFO_num(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %0) #12
  %cmp1 = icmp eq i32 %call, 0
  %phi.cast = zext i1 %cmp1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @destroy_ctx_PKCS12(i8** nocapture noundef %pctx) #1 {
entry:
  %0 = bitcast i8** %pctx to %struct.stack_st_OSSL_STORE_INFO**
  %1 = load %struct.stack_st_OSSL_STORE_INFO*, %struct.stack_st_OSSL_STORE_INFO** %0, align 8, !tbaa !13
  tail call fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef %1) #12
  store i8* null, i8** %pctx, align 8, !tbaa !13
  ret void
}

declare %struct.PKCS12_st* @d2i_PKCS12(%struct.PKCS12_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PKCS12_mac_present(%struct.PKCS12_st* noundef) local_unnamed_addr #2

declare i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS12_parse(%struct.PKCS12_st* noundef, i8* noundef, %struct.evp_pkey_st** noundef, %struct.x509_st** noundef, %struct.stack_st_X509** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_STORE_INFO* @sk_OSSL_STORE_INFO_new_null() unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #11
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_STORE_INFO*
  ret %struct.stack_st_OSSL_STORE_INFO* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef %sk, %struct.ossl_store_info_st* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_store_info_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #11
  ret i32 %call
}

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @X509_free(%struct.x509_st* noundef) #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_store_info_st*)* @store_info_free to void (i8*)*)) #11
  ret void
}

declare void @PKCS12_free(%struct.PKCS12_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @sk_OSSL_STORE_INFO_shift(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %0) #11
  %1 = bitcast i8* %call to %struct.ossl_store_info_st*
  ret %struct.ossl_store_info_st* %1
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_STORE_INFO_num(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_PKCS8Encrypted(i8* noundef readonly %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef readnone %pctx, i32* nocapture noundef writeonly %matchcount, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, i8* noundef %uri, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  %kbuf = alloca [1024 x i8], align 16
  %dalg = alloca %struct.X509_algor_st*, align 8
  %doct = alloca %struct.asn1_string_st*, align 8
  %new_data = alloca i8*, align 8
  %new_data_len = alloca i32, align 4
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %kbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #14
  %1 = bitcast %struct.X509_algor_st** %dalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #14
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %dalg, align 8, !tbaa !13
  %2 = bitcast %struct.asn1_string_st** %doct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %doct, align 8, !tbaa !13
  %3 = bitcast i8** %new_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store i8* null, i8** %new_data, align 8, !tbaa !13
  %4 = bitcast i32* %new_data_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #14
  %cmp.not = icmp eq i8* %pem_name, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0)) #13
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  %cmp5 = icmp eq %struct.X509_sig_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %call8 = call %struct.buf_mem_st* @BUF_MEM_new() #11
  %cmp9 = icmp eq %struct.buf_mem_st* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 466) #12
  br label %nop8

if.end11:                                         ; preds = %if.end7
  %call12 = call fastcc i8* @file_get_pass(%struct.ui_method_st* noundef %ui_method, i8* noundef nonnull %0, i64 noundef 1024, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i8* noundef %uri, i8* noundef %ui_data) #12
  %cmp13 = icmp eq i8* %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call fastcc void @ERR_ATTIC_error(i32 noundef 101, i32 noundef 473) #12
  br label %nop8

if.end15:                                         ; preds = %if.end11
  call void @X509_SIG_get0(%struct.X509_sig_st* noundef nonnull %call4, %struct.X509_algor_st** noundef nonnull %dalg, %struct.asn1_string_st** noundef nonnull %doct) #11
  %5 = load %struct.X509_algor_st*, %struct.X509_algor_st** %dalg, align 8, !tbaa !13
  %call16 = call i64 @strlen(i8* noundef nonnull %call12) #13
  %conv = trunc i64 %call16 to i32
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %doct, align 8, !tbaa !13
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %data, align 8, !tbaa !57
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 0
  %8 = load i32, i32* %length, align 8, !tbaa !59
  %call17 = call i8* @PKCS12_pbe_crypt(%struct.X509_algor_st* noundef %5, i8* noundef nonnull %call12, i32 noundef %conv, i8* noundef %7, i32 noundef %8, i8** noundef nonnull %new_data, i32* noundef nonnull %new_data_len, i32 noundef 0) #11
  %tobool.not = icmp eq i8* %call17, null
  br i1 %tobool.not, label %nop8, label %if.end19

if.end19:                                         ; preds = %if.end15
  %9 = load i8*, i8** %new_data, align 8, !tbaa !13
  %data20 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call8, i64 0, i32 1
  store i8* %9, i8** %data20, align 8, !tbaa !43
  %10 = load i32, i32* %new_data_len, align 4, !tbaa !14
  %conv21 = sext i32 %10 to i64
  %length22 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call8, i64 0, i32 0
  store i64 %conv21, i64* %length22, align 8, !tbaa !45
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call8, i64 0, i32 2
  store i64 %conv21, i64* %max, align 8, !tbaa !60
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call4) #11
  %call23 = call fastcc %struct.ossl_store_info_st* @new_EMBEDDED(%struct.buf_mem_st* noundef nonnull %call8) #12
  %cmp24 = icmp eq %struct.ossl_store_info_st* %call23, null
  br i1 %cmp24, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.end19
  call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 489) #12
  br label %nop8

nop8:                                             ; preds = %if.end15, %if.then26, %if.then14, %if.then10
  %p8.0 = phi %struct.X509_sig_st* [ %call4, %if.then10 ], [ %call4, %if.then14 ], [ null, %if.then26 ], [ %call4, %if.end15 ]
  call void @X509_SIG_free(%struct.X509_sig_st* noundef %p8.0) #11
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %call8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end3, %if.then, %nop8
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %nop8 ], [ null, %if.then ], [ null, %if.end3 ], [ %call23, %if.end19 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #14
  ret %struct.ossl_store_info_st* %retval.0
}

declare %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #2

declare void @X509_SIG_get0(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare i8* @PKCS12_pbe_crypt(%struct.X509_algor_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8** noundef, i32* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @new_EMBEDDED(%struct.buf_mem_st* noundef %embedded) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 198) #11
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef -1, i8* noundef nonnull %call) #11
  %cmp2 = icmp eq %struct.ossl_store_info_st* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 200) #12
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 201) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %blob = bitcast i8* %call to %struct.buf_mem_st**
  store %struct.buf_mem_st* %embedded, %struct.buf_mem_st** %blob, align 8, !tbaa !50
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 207) #11
  %pem_name = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %pem_name to i8**
  store i8* %call4, i8** %0, align 8, !tbaa !48
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end
  tail call fastcc void @ERR_ATTIC_error(i32 noundef 786688, i32 noundef 210) #12
  tail call void @store_info_free(%struct.ossl_store_info_st* noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %if.then
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %if.then ], [ null, %if.then8 ], [ %call1, %if.end ]
  ret %struct.ossl_store_info_st* %retval.0
}

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_X509Certificate(i8* noundef readonly %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef readnone %pctx, i32* nocapture noundef writeonly %matchcount, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data, i8* nocapture noundef readnone %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  %cert = alloca %struct.x509_st*, align 8
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %0 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %cmp.not = icmp eq i8* %pem_name, null
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0)) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.end8, label %if.else

if.else:                                          ; preds = %if.then
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0)) #13
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call5 = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #13
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.then, %if.else, %land.lhs.true
  %ignore_trusted.0 = phi i32 [ 1, %land.lhs.true ], [ 1, %if.else ], [ 0, %if.then ]
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %ignore_trusted.1 = phi i32 [ %ignore_trusted.0, %if.end8 ], [ 1, %entry ]
  %call10 = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #11
  store %struct.x509_st* %call10, %struct.x509_st** %cert, align 8, !tbaa !13
  %cmp11 = icmp eq %struct.x509_st* %call10, null
  br i1 %cmp11, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  %cmp15.not = icmp eq %struct.x509_st* %call14, null
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end21

lor.lhs.false:                                    ; preds = %if.end13
  %tobool.not = icmp eq i32 %ignore_trusted.1, 0
  br i1 %tobool.not, label %if.then23, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %call17 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  %cmp18.not = icmp eq %struct.x509_st* %call17, null
  br i1 %cmp18.not, label %if.then23, label %if.end21

if.end21:                                         ; preds = %if.end13, %land.lhs.true16
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %1 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  %call20 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef %1) #11
  %cmp22 = icmp eq %struct.ossl_store_info_st* %call20, null
  br i1 %cmp22, label %if.then23, label %cleanup

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true16, %if.end21
  %2 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !13
  call void @X509_free(%struct.x509_st* noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then23, %if.end9, %land.lhs.true
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %land.lhs.true ], [ null, %if.end9 ], [ null, %if.then23 ], [ %call20, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret %struct.ossl_store_info_st* %retval.0
}

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_X509CRL(i8* noundef readonly %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef readnone %pctx, i32* nocapture noundef writeonly %matchcount, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data, i8* nocapture noundef readnone %uri, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %cmp.not = icmp eq i8* %pem_name, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0)) #13
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  %cmp5.not = icmp eq %struct.X509_crl_st* %call4, null
  br i1 %cmp5.not, label %if.then10, label %if.end8

if.end8:                                          ; preds = %if.end3
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %call7 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CRL(%struct.X509_crl_st* noundef nonnull %call4) #11
  %cmp9 = icmp eq %struct.ossl_store_info_st* %call7, null
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end3, %if.end8
  call void @X509_CRL_free(%struct.X509_crl_st* noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then10, %if.then
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %if.then ], [ null, %if.then10 ], [ %call7, %if.end8 ]
  ret %struct.ossl_store_info_st* %retval.0
}

declare %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CRL(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_params(i8* noundef %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef readnone %pctx, i32* nocapture noundef %matchcount, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data, i8* nocapture noundef readnone %uri, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  %pkey_id = alloca i32, align 4
  %tmp_blob = alloca i8*, align 8
  %pkey_id10 = alloca i32, align 4
  %pkey_flags = alloca i32, align 4
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %cmp.not = icmp eq i8* %pem_name, null
  br i1 %cmp.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %call868 = call i32 @EVP_PKEY_asn1_get_count() #11
  %cmp969 = icmp sgt i32 %call868, 0
  br i1 %cmp969, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast i8** %tmp_blob to i8*
  %1 = bitcast i32* %pkey_id10 to i8*
  %2 = bitcast i32* %pkey_flags to i8*
  br label %for.body

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %pkey_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #14
  %call = tail call fastcc i32 @check_suffix(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0)) #12
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef null, i8* noundef nonnull %pem_name, i32 noundef %call) #11
  %cmp3.not = icmp eq %struct.evp_pkey_asn1_method_st* %call2, null
  br i1 %cmp3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef nonnull %call2) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %4 = load i32, i32* %pkey_id, align 4, !tbaa !14
  %call7 = call %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef %4, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true4, %land.lhs.true, %if.then
  %pkey.0 = phi %struct.evp_pkey_st* [ %call7, %if.then6 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #14
  br label %if.end34

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %cleanup ]
  %pkey.170 = phi %struct.evp_pkey_st* [ null, %for.body.lr.ph ], [ %pkey.4, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* %blob, i8** %tmp_blob, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  %call11 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %i.071) #11
  %call12 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id10, i32* noundef null, i32* noundef nonnull %pkey_flags, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef %call11) #11
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %pkey_flags, align 4, !tbaa !14
  %and = and i32 %5, 1
  %cmp14.not = icmp eq i32 %and, 0
  br i1 %cmp14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = call i32 @ERR_set_mark() #11
  %6 = load i32, i32* %pkey_id10, align 4, !tbaa !14
  %call18 = call %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef %6, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %tmp_blob, i64 noundef %len) #11
  %cmp19.not = icmp eq %struct.evp_pkey_st* %call18, null
  br i1 %cmp19.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end16
  %cmp21.not = icmp eq %struct.evp_pkey_st* %pkey.170, null
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call18) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then22
  %pkey.2 = phi %struct.evp_pkey_st* [ %pkey.170, %if.then22 ], [ %call18, %if.then20 ]
  %7 = load i32, i32* %matchcount, align 4, !tbaa !14
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %matchcount, align 4, !tbaa !14
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end16
  %pkey.3 = phi %struct.evp_pkey_st* [ %pkey.2, %if.end24 ], [ %pkey.170, %if.end16 ]
  %call26 = call i32 @ERR_pop_to_mark() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body, %lor.lhs.false, %if.end25
  %pkey.4 = phi %struct.evp_pkey_st* [ %pkey.3, %if.end25 ], [ %pkey.170, %lor.lhs.false ], [ %pkey.170, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  %inc30 = add nuw nsw i32 %i.071, 1
  %call8 = call i32 @EVP_PKEY_asn1_get_count() #11
  %cmp9 = icmp slt i32 %inc30, %call8
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !61

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %pkey.1.lcssa = phi %struct.evp_pkey_st* [ null, %for.cond.preheader ], [ %pkey.4, %cleanup ]
  %8 = load i32, i32* %matchcount, align 4, !tbaa !14
  %cmp31 = icmp sgt i32 %8, 1
  br i1 %cmp31, label %if.end34.thread, label %if.end34

if.end34.thread:                                  ; preds = %for.end
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1.lcssa) #11
  br label %cleanup42

if.end34:                                         ; preds = %for.end, %if.end
  %pkey.6 = phi %struct.evp_pkey_st* [ %pkey.0, %if.end ], [ %pkey.1.lcssa, %for.end ]
  %cmp35 = icmp eq %struct.evp_pkey_st* %pkey.6, null
  br i1 %cmp35, label %cleanup42, label %if.end37

if.end37:                                         ; preds = %if.end34
  %call38 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PARAMS(%struct.evp_pkey_st* noundef nonnull %pkey.6) #11
  %cmp39 = icmp eq %struct.ossl_store_info_st* %call38, null
  br i1 %cmp39, label %if.then40, label %cleanup42

if.then40:                                        ; preds = %if.end37
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %pkey.6) #11
  br label %cleanup42

cleanup42:                                        ; preds = %if.end34.thread, %if.end37, %if.then40, %if.end34
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %if.end34 ], [ null, %if.then40 ], [ %call38, %if.end37 ], [ null, %if.end34.thread ]
  ret %struct.ossl_store_info_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @check_suffix(i8* noundef %str, i8* noundef %suffix) unnamed_addr #10 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #13
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @strlen(i8* noundef %suffix) #13
  %0 = trunc i64 %call1 to i32
  %conv2 = add i32 %0, 1
  %cmp.not = icmp slt i32 %conv2, %conv
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %str, i64 %idx.ext
  %idx.ext4 = sext i32 %conv2 to i64
  %idx.neg = sub nsw i64 0, %idx.ext4
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %1 = load i8, i8* %add.ptr5, align 1, !tbaa !18
  %cmp7.not = icmp eq i8 %1, 32
  br i1 %cmp7.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  %call10 = tail call i32 @strcmp(i8* noundef nonnull %add.ptr9, i8* noundef %suffix) #13
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %str to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv15 = trunc i64 %sub.ptr.sub to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end14
  %retval.0 = phi i32 [ %conv15, %if.end14 ], [ -1, %entry ], [ -1, %lor.lhs.false ], [ -1, %if.end ]
  ret i32 %retval.0
}

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_asn1_get0_info(i32* noundef, i32* noundef, i32* noundef, i8** noundef, i8** noundef, %struct.evp_pkey_asn1_method_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_asn1_get_count() local_unnamed_addr #2

declare %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PARAMS(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_PUBKEY(i8* noundef readonly %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef readnone %pctx, i32* nocapture noundef writeonly %matchcount, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data, i8* nocapture noundef readnone %uri, %struct.ossl_lib_ctx_st* nocapture noundef readnone %libctx, i8* nocapture noundef readnone %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %cmp.not = icmp eq i8* %pem_name, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0)) #13
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call %struct.evp_pkey_st* @d2i_PUBKEY(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  %cmp5.not = icmp eq %struct.evp_pkey_st* %call4, null
  br i1 %cmp5.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end3
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %call7 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PUBKEY(%struct.evp_pkey_st* noundef nonnull %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then6, %if.then
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %if.then ], [ %call7, %if.then6 ], [ null, %if.end3 ]
  ret %struct.ossl_store_info_st* %retval.0
}

declare %struct.evp_pkey_st* @d2i_PUBKEY(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PUBKEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.ossl_store_info_st* @try_decode_PrivateKey(i8* noundef %pem_name, i8* nocapture noundef readnone %pem_header, i8* noundef %blob, i64 noundef %len, i8** nocapture noundef readnone %pctx, i32* nocapture noundef %matchcount, %struct.ui_method_st* nocapture noundef readnone %ui_method, i8* nocapture noundef readnone %ui_data, i8* nocapture noundef readnone %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #1 {
entry:
  %blob.addr = alloca i8*, align 8
  %pkey_id = alloca i32, align 4
  %nids = alloca i32*, align 8
  %ameth2 = alloca %struct.evp_pkey_asn1_method_st*, align 8
  %tmp_blob = alloca i8*, align 8
  %pkey_id25 = alloca i32, align 4
  %pkey_flags = alloca i32, align 4
  %tmp_blob56 = alloca i8*, align 8
  %pkey_id57 = alloca i32, align 4
  %pkey_flags58 = alloca i32, align 4
  store i8* %blob, i8** %blob.addr, align 8, !tbaa !13
  %cmp.not = icmp eq i8* %pem_name, null
  br i1 %cmp.not, label %if.else17, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call3 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len) #11
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %cmp4.not = icmp eq %struct.pkcs8_priv_key_info_st* %call3, null
  br i1 %cmp4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then2
  %call6 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef nonnull %call3, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #11
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  %pkey.0 = phi %struct.evp_pkey_st* [ %call6, %if.then5 ], [ null, %if.then2 ]
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %call3) #11
  br label %if.end90

if.else:                                          ; preds = %if.then
  %0 = bitcast i32* %pkey_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #14
  %call7 = tail call fastcc i32 @check_suffix(i8* noundef nonnull %pem_name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #12
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.else
  %call9 = tail call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_find_str(%struct.engine_st** noundef null, i8* noundef nonnull %pem_name, i32 noundef %call7) #11
  %cmp10.not = icmp eq %struct.evp_pkey_asn1_method_st* %call9, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id, i32* noundef null, i32* noundef null, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef nonnull %call9) #11
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  store i32 1, i32* %matchcount, align 4, !tbaa !14
  %1 = load i32, i32* %pkey_id, align 4, !tbaa !14
  %call14 = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %1, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %blob.addr, i64 noundef %len, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11, %land.lhs.true, %if.else
  %pkey.1 = phi %struct.evp_pkey_st* [ %call14, %if.then13 ], [ null, %land.lhs.true11 ], [ null, %land.lhs.true ], [ null, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #14
  br label %if.end90

if.else17:                                        ; preds = %entry
  %call18 = tail call %struct.engine_st* @ENGINE_get_first() #11
  %cmp19.not157 = icmp eq %struct.engine_st* %call18, null
  br i1 %cmp19.not157, label %for.cond51.preheader, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else17
  %2 = bitcast i32** %nids to i8*
  %3 = bitcast %struct.evp_pkey_asn1_method_st** %ameth2 to i8*
  %4 = bitcast i8** %tmp_blob to i8*
  %5 = bitcast i32* %pkey_id25 to i8*
  %6 = bitcast i32* %pkey_flags to i8*
  br label %while.body

for.cond51.preheader:                             ; preds = %if.end49, %if.else17
  %pkey.2.lcssa = phi %struct.evp_pkey_st* [ null, %if.else17 ], [ %pkey.7, %if.end49 ]
  %call52163 = call i32 @EVP_PKEY_asn1_get_count() #11
  %cmp53164 = icmp sgt i32 %call52163, 0
  br i1 %cmp53164, label %for.body54.lr.ph, label %for.end86

for.body54.lr.ph:                                 ; preds = %for.cond51.preheader
  %7 = bitcast i8** %tmp_blob56 to i8*
  %8 = bitcast i32* %pkey_id57 to i8*
  %9 = bitcast i32* %pkey_flags58 to i8*
  br label %for.body54

while.body:                                       ; preds = %while.body.lr.ph, %if.end49
  %curengine.0159 = phi %struct.engine_st* [ %call18, %while.body.lr.ph ], [ %call50, %if.end49 ]
  %pkey.2158 = phi %struct.evp_pkey_st* [ null, %while.body.lr.ph ], [ %pkey.7, %if.end49 ]
  %call20 = call i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* @ENGINE_get_pkey_asn1_meths(%struct.engine_st* noundef nonnull %curengine.0159) #11
  %cmp21.not = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* %call20, null
  br i1 %cmp21.not, label %if.end49, label %if.then22

if.then22:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #14
  store i32* null, i32** %nids, align 8, !tbaa !13
  %call23 = call i32 %call20(%struct.engine_st* noundef nonnull %curengine.0159, %struct.evp_pkey_asn1_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #11
  %cmp24154 = icmp sgt i32 %call23, 0
  br i1 %cmp24154, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then22
  %wide.trip.count = zext i32 %call23 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %pkey.3155 = phi %struct.evp_pkey_st* [ %pkey.2158, %for.body.preheader ], [ %pkey.6, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store %struct.evp_pkey_asn1_method_st* null, %struct.evp_pkey_asn1_method_st** %ameth2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #14
  store i8* %blob, i8** %tmp_blob, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14
  %10 = load i32*, i32** %nids, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !14
  %call26 = call i32 %call20(%struct.engine_st* noundef nonnull %curengine.0159, %struct.evp_pkey_asn1_method_st** noundef nonnull %ameth2, i32** noundef null, i32 noundef %11) #11
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth2, align 8, !tbaa !13
  %call28 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id25, i32* noundef null, i32* noundef nonnull %pkey_flags, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef %12) #11
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %pkey_flags, align 4, !tbaa !14
  %and = and i32 %13, 1
  %cmp31.not = icmp eq i32 %and, 0
  br i1 %cmp31.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %lor.lhs.false30
  %call34 = call i32 @ERR_set_mark() #11
  %14 = load i32, i32* %pkey_id25, align 4, !tbaa !14
  %call35 = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %14, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %tmp_blob, i64 noundef %len, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #11
  %cmp36.not = icmp eq %struct.evp_pkey_st* %call35, null
  br i1 %cmp36.not, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.end33
  %cmp38.not = icmp eq %struct.evp_pkey_st* %pkey.3155, null
  br i1 %cmp38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then37
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call35) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.then39
  %pkey.4 = phi %struct.evp_pkey_st* [ %pkey.3155, %if.then39 ], [ %call35, %if.then37 ]
  %15 = load i32, i32* %matchcount, align 4, !tbaa !14
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %matchcount, align 4, !tbaa !14
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end33
  %pkey.5 = phi %struct.evp_pkey_st* [ %pkey.4, %if.end41 ], [ %pkey.3155, %if.end33 ]
  %call43 = call i32 @ERR_pop_to_mark() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body, %lor.lhs.false, %lor.lhs.false30, %if.end42
  %pkey.6 = phi %struct.evp_pkey_st* [ %pkey.5, %if.end42 ], [ %pkey.3155, %lor.lhs.false30 ], [ %pkey.3155, %lor.lhs.false ], [ %pkey.3155, %for.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !62

for.end:                                          ; preds = %cleanup, %if.then22
  %pkey.3.lcssa = phi %struct.evp_pkey_st* [ %pkey.2158, %if.then22 ], [ %pkey.6, %cleanup ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #14
  br label %if.end49

if.end49:                                         ; preds = %for.end, %while.body
  %pkey.7 = phi %struct.evp_pkey_st* [ %pkey.3.lcssa, %for.end ], [ %pkey.2158, %while.body ]
  %call50 = call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %curengine.0159) #11
  %cmp19.not = icmp eq %struct.engine_st* %call50, null
  br i1 %cmp19.not, label %for.cond51.preheader, label %while.body, !llvm.loop !63

for.body54:                                       ; preds = %for.body54.lr.ph, %cleanup78
  %i.1166 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc85, %cleanup78 ]
  %pkey.8165 = phi %struct.evp_pkey_st* [ %pkey.2.lcssa, %for.body54.lr.ph ], [ %pkey.11, %cleanup78 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #14
  store i8* %blob, i8** %tmp_blob56, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #14
  %call59 = call %struct.evp_pkey_asn1_method_st* @EVP_PKEY_asn1_get0(i32 noundef %i.1166) #11
  %call60 = call i32 @EVP_PKEY_asn1_get0_info(i32* noundef nonnull %pkey_id57, i32* noundef null, i32* noundef nonnull %pkey_flags58, i8** noundef null, i8** noundef null, %struct.evp_pkey_asn1_method_st* noundef %call59) #11
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup78, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %for.body54
  %16 = load i32, i32* %pkey_flags58, align 4, !tbaa !14
  %and63 = and i32 %16, 1
  %cmp64.not = icmp eq i32 %and63, 0
  br i1 %cmp64.not, label %if.end66, label %cleanup78

if.end66:                                         ; preds = %lor.lhs.false62
  %call67 = call i32 @ERR_set_mark() #11
  %17 = load i32, i32* %pkey_id57, align 4, !tbaa !14
  %call68 = call %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef %17, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %tmp_blob56, i64 noundef %len, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #11
  %cmp69.not = icmp eq %struct.evp_pkey_st* %call68, null
  br i1 %cmp69.not, label %if.end76, label %if.then70

if.then70:                                        ; preds = %if.end66
  %cmp71.not = icmp eq %struct.evp_pkey_st* %pkey.8165, null
  br i1 %cmp71.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.then70
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call68) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.then72
  %pkey.9 = phi %struct.evp_pkey_st* [ %pkey.8165, %if.then72 ], [ %call68, %if.then70 ]
  %18 = load i32, i32* %matchcount, align 4, !tbaa !14
  %inc75 = add nsw i32 %18, 1
  store i32 %inc75, i32* %matchcount, align 4, !tbaa !14
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %if.end66
  %pkey.10 = phi %struct.evp_pkey_st* [ %pkey.9, %if.end74 ], [ %pkey.8165, %if.end66 ]
  %call77 = call i32 @ERR_pop_to_mark() #11
  br label %cleanup78

cleanup78:                                        ; preds = %for.body54, %lor.lhs.false62, %if.end76
  %pkey.11 = phi %struct.evp_pkey_st* [ %pkey.10, %if.end76 ], [ %pkey.8165, %lor.lhs.false62 ], [ %pkey.8165, %for.body54 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #14
  %inc85 = add nuw nsw i32 %i.1166, 1
  %call52 = call i32 @EVP_PKEY_asn1_get_count() #11
  %cmp53 = icmp slt i32 %inc85, %call52
  br i1 %cmp53, label %for.body54, label %for.end86, !llvm.loop !64

for.end86:                                        ; preds = %cleanup78, %for.cond51.preheader
  %pkey.8.lcssa = phi %struct.evp_pkey_st* [ %pkey.2.lcssa, %for.cond51.preheader ], [ %pkey.11, %cleanup78 ]
  %19 = load i32, i32* %matchcount, align 4, !tbaa !14
  %cmp87 = icmp sgt i32 %19, 1
  br i1 %cmp87, label %if.end90.thread, label %if.end90

if.end90.thread:                                  ; preds = %for.end86
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.8.lcssa) #11
  br label %cleanup98

if.end90:                                         ; preds = %for.end86, %if.end, %if.end15
  %pkey.13 = phi %struct.evp_pkey_st* [ %pkey.0, %if.end ], [ %pkey.1, %if.end15 ], [ %pkey.8.lcssa, %for.end86 ]
  %cmp91 = icmp eq %struct.evp_pkey_st* %pkey.13, null
  br i1 %cmp91, label %cleanup98, label %if.end93

if.end93:                                         ; preds = %if.end90
  %call94 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef nonnull %pkey.13) #11
  %cmp95 = icmp eq %struct.ossl_store_info_st* %call94, null
  br i1 %cmp95, label %if.then96, label %cleanup98

if.then96:                                        ; preds = %if.end93
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %pkey.13) #11
  br label %cleanup98

cleanup98:                                        ; preds = %if.end90.thread, %if.end93, %if.then96, %if.end90
  %retval.0 = phi %struct.ossl_store_info_st* [ null, %if.end90 ], [ null, %if.then96 ], [ %call94, %if.end93 ], [ null, %if.end90.thread ]
  ret %struct.ossl_store_info_st* %retval.0
}

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @d2i_PrivateKey_ex(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #2

declare i32 (%struct.engine_st*, %struct.evp_pkey_asn1_method_st**, i32**, i32)* @ENGINE_get_pkey_asn1_meths(%struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #2

declare i8* @OSSL_STORE_INFO_get0_data(i32 noundef, %struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare i32 @OPENSSL_DIR_end(%struct.OPENSSL_dir_context_st** noundef) local_unnamed_addr #2

declare %struct.bio_st* @BIO_pop(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare %struct.ossl_store_loader_st* @OSSL_STORE_unregister_loader(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ERR_unload_ATTIC_strings() unnamed_addr #1 {
entry:
  %.b = load i1, i1* @error_loaded, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @lib_code, align 4, !tbaa !14
  %call = tail call i32 @ERR_unload_strings(i32 noundef %0, %struct.ERR_string_data_st* noundef getelementptr inbounds ([12 x %struct.ERR_string_data_st], [12 x %struct.ERR_string_data_st]* @ATTIC_str_reasons, i64 0, i64 0)) #11
  store i1 false, i1* @error_loaded, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @ERR_unload_strings(i32 noundef, %struct.ERR_string_data_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"st_dynamic_fns", !6, i64 0, !9, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"st_dynamic_MEM_fns", !6, i64 0, !6, i64 8, !6, i64 16}
!10 = !{!5, !6, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 24}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"", !6, i64 0, !15, i64 8}
!18 = !{!7, !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !6, i64 0}
!22 = !{!"ossl_store_loader_ctx_st", !6, i64 0, !7, i64 8, !15, i64 12, !15, i64 16, !7, i64 24, !15, i64 64, !6, i64 72, !6, i64 80}
!23 = !{!24, !15, i64 24}
!24 = !{!"stat", !25, i64 0, !25, i64 8, !25, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !26, i64 72, !26, i64 88, !26, i64 104, !7, i64 120}
!25 = !{!"long", !7, i64 0}
!26 = !{!"timespec", !25, i64 0, !25, i64 8}
!27 = !{!22, !7, i64 8}
!28 = !{!22, !6, i64 80}
!29 = !{!22, !6, i64 72}
!30 = !{!22, !15, i64 16}
!31 = !{!22, !15, i64 64}
!32 = !{!22, !15, i64 12}
!33 = distinct !{!33, !20}
!34 = !{!25, !25, i64 0}
!35 = distinct !{!35, !20}
!36 = !{!37, !6, i64 16}
!37 = !{!"file_handler_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32}
!38 = !{!37, !6, i64 24}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !7, i64 0}
!41 = distinct !{!41, !20}
!42 = !{!37, !6, i64 8}
!43 = !{!44, !6, i64 8}
!44 = !{!"buf_mem_st", !25, i64 0, !6, i64 8, !25, i64 16, !25, i64 24}
!45 = !{!44, !25, i64 0}
!46 = distinct !{!46, !20}
!47 = !{!37, !15, i64 32}
!48 = !{!49, !6, i64 8}
!49 = !{!"embedded_st", !6, i64 0, !6, i64 8}
!50 = !{!49, !6, i64 0}
!51 = !{!52, !6, i64 0}
!52 = !{!"pem_pass_data", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!53 = !{!52, !6, i64 8}
!54 = !{!52, !6, i64 16}
!55 = !{!52, !6, i64 24}
!56 = distinct !{!56, !20}
!57 = !{!58, !6, i64 8}
!58 = !{!"asn1_string_st", !15, i64 0, !15, i64 4, !6, i64 8, !25, i64 16}
!59 = !{!58, !15, i64 0}
!60 = !{!44, !25, i64 16}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
