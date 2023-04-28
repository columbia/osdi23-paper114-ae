; ModuleID = 'crypto/store/store_lib.c'
source_filename = "crypto/store/store_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_store_ctx_st = type { %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st*, %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)*, i8*, i32, i8*, i32, i32, %struct.stack_st_OSSL_STORE_INFO*, %struct.ossl_passphrase_data_st }
%struct.ossl_store_loader_st = type { i8*, %struct.engine_st*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32)*, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)*, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*, i8*)*, i8* (i8*, %struct.ossl_core_bio_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* }
%struct.engine_st = type opaque
%struct.bio_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_store_search_st = type { i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.evp_md_st*, i8*, i64 }
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_st = type opaque
%struct.ossl_store_info_st = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_core_bio_st = type opaque
%struct.ossl_store_loader_ctx_st = type opaque
%struct.stack_st_OSSL_STORE_INFO = type opaque
%struct.ossl_passphrase_data_st = type { i32, %union.anon.0, i8, i8*, i64 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i8*, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_param_bld_st = type opaque
%struct.bignum_st = type opaque
%struct.ossl_load_result_data_st = type { %struct.ossl_store_info_st*, %struct.ossl_store_ctx_st* }
%struct.stack_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"crypto/store/store_lib.c\00", align 1
@__func__.OSSL_STORE_open_ex = private unnamed_addr constant [19 x i8] c"OSSL_STORE_open_ex\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"use_secmem\00", align 1
@__func__.OSSL_STORE_expect = private unnamed_addr constant [18 x i8] c"OSSL_STORE_expect\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@__func__.OSSL_STORE_find = private unnamed_addr constant [16 x i8] c"OSSL_STORE_find\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@__func__.OSSL_STORE_INFO_new_NAME = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_new_NAME\00", align 1
@__func__.OSSL_STORE_INFO_set0_NAME_description = private unnamed_addr constant [38 x i8] c"OSSL_STORE_INFO_set0_NAME_description\00", align 1
@__func__.OSSL_STORE_INFO_new_PARAMS = private unnamed_addr constant [27 x i8] c"OSSL_STORE_INFO_new_PARAMS\00", align 1
@__func__.OSSL_STORE_INFO_new_PUBKEY = private unnamed_addr constant [27 x i8] c"OSSL_STORE_INFO_new_PUBKEY\00", align 1
@__func__.OSSL_STORE_INFO_new_PKEY = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_new_PKEY\00", align 1
@__func__.OSSL_STORE_INFO_new_CERT = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_new_CERT\00", align 1
@__func__.OSSL_STORE_INFO_new_CRL = private unnamed_addr constant [24 x i8] c"OSSL_STORE_INFO_new_CRL\00", align 1
@__func__.OSSL_STORE_INFO_get1_NAME = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_NAME\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.OSSL_STORE_INFO_get1_NAME_description = private unnamed_addr constant [38 x i8] c"OSSL_STORE_INFO_get1_NAME_description\00", align 1
@__func__.OSSL_STORE_INFO_get1_PARAMS = private unnamed_addr constant [28 x i8] c"OSSL_STORE_INFO_get1_PARAMS\00", align 1
@__func__.OSSL_STORE_INFO_get1_PUBKEY = private unnamed_addr constant [28 x i8] c"OSSL_STORE_INFO_get1_PUBKEY\00", align 1
@__func__.OSSL_STORE_INFO_get1_PKEY = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_PKEY\00", align 1
@__func__.OSSL_STORE_INFO_get1_CERT = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_CERT\00", align 1
@__func__.OSSL_STORE_INFO_get1_CRL = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_get1_CRL\00", align 1
@__func__.OSSL_STORE_SEARCH_by_name = private unnamed_addr constant [26 x i8] c"OSSL_STORE_SEARCH_by_name\00", align 1
@__func__.OSSL_STORE_SEARCH_by_issuer_serial = private unnamed_addr constant [35 x i8] c"OSSL_STORE_SEARCH_by_issuer_serial\00", align 1
@__func__.OSSL_STORE_SEARCH_by_key_fingerprint = private unnamed_addr constant [37 x i8] c"OSSL_STORE_SEARCH_by_key_fingerprint\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s size is %d, fingerprint size is %zu\00", align 1
@__func__.OSSL_STORE_SEARCH_by_alias = private unnamed_addr constant [27 x i8] c"OSSL_STORE_SEARCH_by_alias\00", align 1
@__func__.OSSL_STORE_attach = private unnamed_addr constant [18 x i8] c"OSSL_STORE_attach\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"properties\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, %struct.ossl_param_st* noundef %params, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef %post_process, i8* noundef %post_process_data) local_unnamed_addr #0 {
entry:
  %scheme_copy = alloca [256 x i8], align 16
  %schemes = alloca [2 x i8*], align 16
  %tmpctx = alloca %struct.ossl_store_ctx_st, align 8
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %scheme_copy, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #9
  %1 = bitcast [2 x i8*]* %schemes to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %schemes, i64 0, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %arrayidx, align 16, !tbaa !4
  %call = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %0, i8* noundef %uri, i64 noundef 256) #10
  %call2 = call i8* @strchr(i8* noundef nonnull %0, i32 noundef 58) #11
  %cmp.not = icmp eq i8* %call2, null
  br i1 %cmp.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %call2, align 1, !tbaa !8
  %call4 = call i32 @strcasecmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #11
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  %call7 = call i32 @strncmp(i8* noundef nonnull %incdec.ptr, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2) #11
  %cmp8 = icmp ne i32 %call7, 0
  %spec.select = zext i1 %cmp8 to i64
  %inc11 = select i1 %cmp8, i64 2, i64 1
  %arrayidx12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %schemes, i64 0, i64 %spec.select
  store i8* %0, i8** %arrayidx12, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.then, %if.then6, %entry
  %schemes_n.1 = phi i64 [ %inc11, %if.then6 ], [ 1, %if.then ], [ 1, %entry ]
  %call15 = call i32 @ERR_set_mark() #10
  br label %for.body

for.body:                                         ; preds = %if.end14, %for.inc
  %i.0166 = phi i64 [ 0, %if.end14 ], [ %inc45, %for.inc ]
  %no_loader_found.0165 = phi i32 [ 1, %if.end14 ], [ %no_loader_found.2, %for.inc ]
  %fetched_loader.0164 = phi %struct.ossl_store_loader_st* [ null, %if.end14 ], [ %fetched_loader.2, %for.inc ]
  %arrayidx18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %schemes, i64 0, i64 %i.0166
  %2 = load i8*, i8** %arrayidx18, align 8, !tbaa !4
  %call19 = call %struct.ossl_store_loader_st* @ossl_store_get0_loader_int(i8* noundef %2) #10
  %cmp20.not = icmp eq %struct.ossl_store_loader_st* %call19, null
  br i1 %cmp20.not, label %land.lhs.true, label %if.then21

if.then21:                                        ; preds = %for.body
  %open_ex = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call19, i64 0, i32 11
  %3 = load %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)** %open_ex, align 8, !tbaa !9
  %cmp22.not = icmp eq %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)* %3, null
  br i1 %cmp22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then21
  %call25 = call %struct.ossl_store_loader_ctx_st* %3(%struct.ossl_store_loader_st* noundef nonnull %call19, i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #10
  br label %for.inc

if.else:                                          ; preds = %if.then21
  %open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call19, i64 0, i32 2
  %4 = load %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)** %open, align 8, !tbaa !12
  %call26 = call %struct.ossl_store_loader_ctx_st* %4(%struct.ossl_store_loader_st* noundef nonnull %call19, i8* noundef %uri, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call30 = call %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %2, i8* noundef %propq) #10
  %cmp31.not = icmp eq %struct.ossl_store_loader_st* %call30, null
  br i1 %cmp31.not, label %for.inc, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %call33 = call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef nonnull %call30) #10
  %call34 = call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call33) #10
  %p_open = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call30, i64 0, i32 18
  %5 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %p_open, align 8, !tbaa !13
  %call35 = call i8* %5(i8* noundef %call34, i8* noundef %uri) #10
  %6 = bitcast i8* %call35 to %struct.ossl_store_loader_ctx_st*
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then32
  call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef nonnull %call30) #10
  br label %for.inc

if.else38:                                        ; preds = %if.then32
  %call39 = call fastcc i32 @loader_set_params(%struct.ossl_store_loader_st* noundef nonnull %call30, %struct.ossl_store_loader_ctx_st* noundef nonnull %6, %struct.ossl_param_st* noundef %params, i8* noundef %propq) #12
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.else38
  %p_close = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call30, i64 0, i32 24
  %7 = load i32 (i8*)*, i32 (i8*)** %p_close, align 8, !tbaa !14
  %call41 = call i32 %7(i8* noundef nonnull %call35) #10
  call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef nonnull %call30) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then23, %if.then37, %if.then40, %if.else38, %land.lhs.true
  %fetched_loader.2 = phi %struct.ossl_store_loader_st* [ null, %land.lhs.true ], [ null, %if.then37 ], [ %call30, %if.else38 ], [ null, %if.then40 ], [ %fetched_loader.0164, %if.then23 ], [ %fetched_loader.0164, %if.else ]
  %loader_ctx.2 = phi %struct.ossl_store_loader_ctx_st* [ null, %land.lhs.true ], [ %6, %if.then37 ], [ %6, %if.else38 ], [ %6, %if.then40 ], [ %call25, %if.then23 ], [ %call26, %if.else ]
  %no_loader_found.2 = phi i32 [ %no_loader_found.0165, %land.lhs.true ], [ 0, %if.then37 ], [ 0, %if.else38 ], [ 0, %if.then40 ], [ 0, %if.then23 ], [ 0, %if.else ]
  %loader.1 = phi %struct.ossl_store_loader_st* [ null, %land.lhs.true ], [ null, %if.then37 ], [ %call30, %if.else38 ], [ null, %if.then40 ], [ %call19, %if.then23 ], [ %call19, %if.else ]
  %inc45 = add nuw nsw i64 %i.0166, 1
  %cmp16 = icmp eq %struct.ossl_store_loader_ctx_st* %loader_ctx.2, null
  %cmp17 = icmp ult i64 %inc45, %schemes_n.1
  %8 = select i1 %cmp16, i1 %cmp17, i1 false
  br i1 %8, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %for.inc
  %tobool46 = icmp ne i32 %no_loader_found.2, 0
  %or.cond = select i1 %tobool46, i1 true, i1 %cmp16
  br i1 %or.cond, label %err, label %if.end51

if.end51:                                         ; preds = %for.end
  %cmp52.not = icmp eq i8* %propq, null
  br i1 %cmp52.not, label %lor.lhs.false, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %if.end51
  %call54 = call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 166) #10
  %cmp55 = icmp eq i8* %call54, null
  br i1 %cmp55, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true53, %if.end51
  %propq_copy.0 = phi i8* [ %call54, %land.lhs.true53 ], [ null, %if.end51 ]
  %call56 = call i8* @CRYPTO_zalloc(i64 noundef 120, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 167) #10
  %9 = bitcast i8* %call56 to %struct.ossl_store_ctx_st*
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %err.sink.split, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false
  %cmp60.not = icmp eq %struct.ui_method_st* %ui_method, null
  br i1 %cmp60.not, label %if.end69, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.end59
  %pwdata = getelementptr inbounds i8, i8* %call56, i64 72
  %10 = bitcast i8* %pwdata to %struct.ossl_passphrase_data_st*
  %call62 = call i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef nonnull %10, %struct.ui_method_st* noundef nonnull %ui_method, i8* noundef %ui_data) #10
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err.sink.split, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %land.lhs.true61
  %call66 = call i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* noundef nonnull %10) #10
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err.sink.split, label %if.end69

if.end69:                                         ; preds = %lor.lhs.false64, %if.end59
  %properties = getelementptr inbounds i8, i8* %call56, i64 48
  %11 = bitcast i8* %properties to i8**
  store i8* %propq_copy.0, i8** %11, align 8, !tbaa !17
  %fetched_loader70 = getelementptr inbounds i8, i8* %call56, i64 8
  %12 = bitcast i8* %fetched_loader70 to %struct.ossl_store_loader_st**
  store %struct.ossl_store_loader_st* %fetched_loader.2, %struct.ossl_store_loader_st** %12, align 8, !tbaa !21
  %loader71 = bitcast i8* %call56 to %struct.ossl_store_loader_st**
  store %struct.ossl_store_loader_st* %loader.1, %struct.ossl_store_loader_st** %loader71, align 8, !tbaa !22
  %loader_ctx72 = getelementptr inbounds i8, i8* %call56, i64 16
  %13 = bitcast i8* %loader_ctx72 to %struct.ossl_store_loader_ctx_st**
  store %struct.ossl_store_loader_ctx_st* %loader_ctx.2, %struct.ossl_store_loader_ctx_st** %13, align 8, !tbaa !23
  %post_process73 = getelementptr inbounds i8, i8* %call56, i64 24
  %14 = bitcast i8* %post_process73 to %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)**
  store %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* %post_process, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)** %14, align 8, !tbaa !24
  %post_process_data74 = getelementptr inbounds i8, i8* %call56, i64 32
  %15 = bitcast i8* %post_process_data74 to i8**
  store i8* %post_process_data, i8** %15, align 8, !tbaa !25
  %call75 = call i32 @ERR_pop_to_mark() #10
  br label %cleanup

err.sink.split:                                   ; preds = %land.lhs.true61, %lor.lhs.false64, %land.lhs.true53, %lor.lhs.false
  %.sink167 = phi i32 [ 168, %lor.lhs.false ], [ 168, %land.lhs.true53 ], [ 175, %lor.lhs.false64 ], [ 175, %land.lhs.true61 ]
  %.sink = phi i32 [ 786688, %lor.lhs.false ], [ 786688, %land.lhs.true53 ], [ 524303, %lor.lhs.false64 ], [ 524303, %land.lhs.true61 ]
  %.ph = phi i8* [ null, %lor.lhs.false ], [ null, %land.lhs.true53 ], [ %call56, %lor.lhs.false64 ], [ %call56, %land.lhs.true61 ]
  %propq_copy.2.ph = phi i8* [ %propq_copy.0, %lor.lhs.false ], [ null, %land.lhs.true53 ], [ %propq_copy.0, %lor.lhs.false64 ], [ %propq_copy.0, %land.lhs.true61 ]
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink167, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.OSSL_STORE_open_ex, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef %.sink, i8* noundef null) #10
  br label %err

err:                                              ; preds = %err.sink.split, %for.end
  %16 = phi i8* [ null, %for.end ], [ %.ph, %err.sink.split ]
  %propq_copy.2 = phi i8* [ null, %for.end ], [ %propq_copy.2.ph, %err.sink.split ]
  %call76 = call i32 @ERR_clear_last_mark() #10
  br i1 %cmp16, label %if.end83, label %if.then78

if.then78:                                        ; preds = %err
  %17 = bitcast %struct.ossl_store_ctx_st* %tmpctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %17) #9
  %18 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %tmpctx, i64 0, i32 3
  %19 = bitcast %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)** %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(120) %19, i8 0, i64 96, i1 false)
  %fetched_loader79 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %tmpctx, i64 0, i32 1
  store %struct.ossl_store_loader_st* %fetched_loader.2, %struct.ossl_store_loader_st** %fetched_loader79, align 8, !tbaa !21
  %loader80 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %tmpctx, i64 0, i32 0
  store %struct.ossl_store_loader_st* %loader.1, %struct.ossl_store_loader_st** %loader80, align 8, !tbaa !22
  %loader_ctx81 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %tmpctx, i64 0, i32 2
  store %struct.ossl_store_loader_ctx_st* %loader_ctx.2, %struct.ossl_store_loader_ctx_st** %loader_ctx81, align 8, !tbaa !23
  %call82 = call fastcc i32 @ossl_store_close_it(%struct.ossl_store_ctx_st* noundef nonnull %tmpctx) #12
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %17) #9
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %err
  call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %fetched_loader.2) #10
  call void @CRYPTO_free(i8* noundef %propq_copy.2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 215) #10
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 216) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end69
  %retval.0 = phi %struct.ossl_store_ctx_st* [ null, %if.end83 ], [ %9, %if.end69 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #9
  ret %struct.ossl_store_ctx_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare %struct.ossl_store_loader_st* @ossl_store_get0_loader_int(i8* noundef) local_unnamed_addr #2

declare %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

declare i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @loader_set_params(%struct.ossl_store_loader_st* nocapture noundef readonly %loader, %struct.ossl_store_loader_ctx_st* noundef %loader_ctx, %struct.ossl_param_st* noundef %params, i8* noundef %propq) unnamed_addr #0 {
entry:
  %propp = alloca [2 x %struct.ossl_param_st], align 16
  %tmp10 = alloca %struct.ossl_param_st, align 8
  %cmp.not = icmp eq %struct.ossl_param_st* %params, null
  br i1 %cmp.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %p_set_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 21
  %0 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params, align 8, !tbaa !26
  %1 = bitcast %struct.ossl_store_loader_ctx_st* %loader_ctx to i8*
  %call = tail call i32 %0(i8* noundef %1, %struct.ossl_param_st* noundef nonnull %params) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end2

if.end2:                                          ; preds = %if.then, %entry
  %cmp3.not = icmp eq i8* %propq, null
  br i1 %cmp3.not, label %if.end16, label %if.then4

if.then4:                                         ; preds = %if.end2
  %2 = bitcast [2 x %struct.ossl_param_st]* %propp to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #9
  %call5 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0)) #10
  %cmp6.not = icmp eq %struct.ossl_param_st* %call5, null
  br i1 %cmp6.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #9
  br label %return

cleanup:                                          ; preds = %if.then4
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %propp, i64 0, i64 0
  %propp26 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %propp, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %propp26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %propq, i64 noundef 0) #10
  %arrayidx9 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %propp, i64 0, i64 1
  %3 = bitcast %struct.ossl_param_st* %tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp10) #10
  %4 = bitcast %struct.ossl_param_st* %arrayidx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #9
  %p_set_ctx_params11 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %loader, i64 0, i32 21
  %5 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params11, align 8, !tbaa !26
  %6 = bitcast %struct.ossl_store_loader_ctx_st* %loader_ctx to i8*
  %call12 = call i32 %5(i8* noundef %6, %struct.ossl_param_st* noundef nonnull %arrayidx) #10
  %tobool13.not.not = icmp eq i32 %call12, 0
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #9
  br i1 %tobool13.not.not, label %return, label %if.end16

if.end16:                                         ; preds = %cleanup, %if.end2
  br label %return

return:                                           ; preds = %cleanup.thread, %cleanup, %if.then, %if.end16
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %if.end16 ], [ 0, %if.then ], [ 1, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_pw_enable_passphrase_caching(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_store_close_it(%struct.ossl_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ossl_store_ctx_st* %ctx, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp1.not = icmp eq %struct.ossl_store_loader_st* %0, null
  br i1 %cmp1.not, label %if.then6, label %if.end3

if.end3:                                          ; preds = %if.end
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %p_close = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %1, i64 0, i32 24
  %2 = load i32 (i8*)*, i32 (i8*)** %p_close, align 8, !tbaa !14
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %3 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !23
  %call = tail call i32 %2(i8* noundef %4) #10
  %.pr = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.ossl_store_loader_st* %.pr, null
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end, %if.end3
  %loader7 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %5 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader7, align 8, !tbaa !22
  %closefn = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %5, i64 0, i32 10
  %6 = load i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)** %closefn, align 8, !tbaa !30
  %loader_ctx8 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %7 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx8, align 8, !tbaa !23
  %call9 = tail call i32 %6(%struct.ossl_store_loader_ctx_st* noundef %7) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end3
  %ret.1 = phi i32 [ %call9, %if.then6 ], [ %call, %if.end3 ]
  %cached_info = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 9
  %8 = load %struct.stack_st_OSSL_STORE_INFO*, %struct.stack_st_OSSL_STORE_INFO** %cached_info, align 8, !tbaa !31
  tail call fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef %8) #12
  %9 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef %9) #10
  %properties = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 6
  %10 = load i8*, i8** %properties, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 522) #10
  %pwdata = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 10
  tail call void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i32 [ %ret.1, %if.end10 ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_ctx_st* @OSSL_STORE_open(i8* noundef %uri, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef %post_process, i8* noundef %post_process_data) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, %struct.ossl_param_st* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef %post_process, i8* noundef %post_process_data) #12
  ret %struct.ossl_store_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_ctrl(%struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %cmd, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %call = call i32 @OSSL_STORE_vctrl(%struct.ossl_store_ctx_st* noundef %ctx, i32 noundef %cmd, %struct.__va_list_tag* noundef nonnull %arraydecay) #12
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_vctrl(%struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %cmd, %struct.__va_list_tag* noundef %args) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %on = alloca i32, align 4
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %0, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %p_set_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %0, i64 0, i32 21
  %1 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params, align 8, !tbaa !26
  %cmp2.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %1, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.then
  %2 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %cond = icmp eq i32 %cmd, 1
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.then3
  %3 = bitcast i32* %on to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 8
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 3
  %reg_save_area = load i8*, i8** %4, align 8
  %5 = zext i32 %gp_offset to i64
  %6 = getelementptr i8, i8* %reg_save_area, i64 %5
  %7 = add nuw nsw i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32**
  %8 = load i32*, i32** %vaarg.addr, align 8
  %9 = load i32, i32* %8, align 4, !tbaa !28
  store i32 %9, i32* %on, align 4, !tbaa !28
  %params24 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %on) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  %.pre = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %p_set_ctx_params5.phi.trans.insert = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %.pre, i64 0, i32 21
  %.pre23 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params5.phi.trans.insert, align 8, !tbaa !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %vaarg.end
  %10 = phi i32 (i8*, %struct.ossl_param_st*)* [ %1, %if.then3 ], [ %.pre23, %vaarg.end ]
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %11 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !23
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = call i32 %10(i8* noundef %12, %struct.ossl_param_st* noundef nonnull %arraydecay) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #9
  br label %return

if.else:                                          ; preds = %entry
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %13 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %ctrl = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %13, i64 0, i32 4
  %14 = load i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)** %ctrl, align 8, !tbaa !32
  %cmp6.not = icmp eq i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)* %14, null
  br i1 %cmp6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.else
  %loader_ctx10 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %15 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx10, align 8, !tbaa !23
  %call11 = tail call i32 %14(%struct.ossl_store_loader_ctx_st* noundef %15, i32 noundef %cmd, %struct.__va_list_tag* noundef %args) #10
  br label %return

return:                                           ; preds = %if.then, %if.else, %if.then7, %sw.epilog
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ %call11, %if.then7 ], [ 1, %if.else ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_expect(%struct.ossl_store_ctx_st* noundef %ctx, i32 noundef %expected_type) local_unnamed_addr #0 {
entry:
  %expected_type.addr = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  store i32 %expected_type, i32* %expected_type.addr, align 4, !tbaa !28
  %cmp = icmp eq %struct.ossl_store_ctx_st* %ctx, null
  %0 = icmp ugt i32 %expected_type, 6
  %1 = or i1 %cmp, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_STORE_expect, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524550, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %loading = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 7
  %2 = load i32, i32* %loading, align 8, !tbaa !33
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_STORE_expect, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 117, i8* noundef null) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %expected_type6 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 5
  store i32 %expected_type, i32* %expected_type6, align 8, !tbaa !34
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %3 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp7.not = icmp eq %struct.ossl_store_loader_st* %3, null
  br i1 %cmp7.not, label %land.lhs.true16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %p_set_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %3, i64 0, i32 21
  %4 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params, align 8, !tbaa !26
  %cmp9.not = icmp eq i32 (i8*, %struct.ossl_param_st*)* %4, null
  br i1 %cmp9.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true
  %5 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params44 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params44, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %expected_type.addr) #10
  %6 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %p_set_ctx_params12 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %6, i64 0, i32 21
  %7 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params12, align 8, !tbaa !26
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %8 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !23
  %call = call i32 %7(i8* noundef %9, %struct.ossl_param_st* noundef nonnull %arrayidx) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #9
  %.pr.pre = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp15 = icmp eq %struct.ossl_store_loader_st* %.pr.pre, null
  br i1 %cmp15, label %land.lhs.true16, label %cleanup

land.lhs.true16:                                  ; preds = %if.end5, %if.end13
  %ret.039 = phi i32 [ %call, %if.end13 ], [ 1, %if.end5 ]
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %10 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %expect = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %10, i64 0, i32 5
  %11 = load i32 (%struct.ossl_store_loader_ctx_st*, i32)*, i32 (%struct.ossl_store_loader_ctx_st*, i32)** %expect, align 8, !tbaa !35
  %cmp17.not = icmp eq i32 (%struct.ossl_store_loader_ctx_st*, i32)* %11, null
  br i1 %cmp17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  %loader_ctx21 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %12 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx21, align 8, !tbaa !23
  %13 = load i32, i32* %expected_type.addr, align 4, !tbaa !28
  %call22 = call i32 %11(%struct.ossl_store_loader_ctx_st* noundef %12, i32 noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end13, %land.lhs.true16, %if.then18, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %call22, %if.then18 ], [ %ret.039, %land.lhs.true16 ], [ %call, %if.end13 ], [ 1, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_store_search_st* noundef %search) local_unnamed_addr #0 {
entry:
  %name_der = alloca i8*, align 8
  %loading = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 7
  %0 = load i32, i32* %loading, align 8, !tbaa !33
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.OSSL_STORE_find, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 117, i8* noundef null) #10
  br label %cleanup72

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.ossl_store_search_st* %search, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.OSSL_STORE_find, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786690, i8* noundef null) #10
  br label %cleanup72

if.end2:                                          ; preds = %if.end
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp3.not = icmp eq %struct.ossl_store_loader_st* %1, null
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  %2 = bitcast i8** %name_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %name_der, align 8, !tbaa !4
  %p_set_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %1, i64 0, i32 21
  %3 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params, align 8, !tbaa !26
  %cmp6 = icmp eq i32 (i8*, %struct.ossl_param_st*)* %3, null
  br i1 %cmp6, label %cleanup.thread, label %if.end8

if.end8:                                          ; preds = %if.then4
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #10
  %cmp9 = icmp eq %struct.ossl_param_bld_st* %call, null
  br i1 %cmp9, label %cleanup.thread, label %if.end11

if.end11:                                         ; preds = %if.end8
  %search_type = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 0
  %4 = load i32, i32* %search_type, align 8, !tbaa !36
  switch i32 %4, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
    i32 3, label %sw.bb36
    i32 4, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end11
  %name = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 1
  %5 = load %struct.X509_name_st*, %struct.X509_name_st** %name, align 8, !tbaa !38
  %call12 = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %5, i8** noundef nonnull %name_der) #10
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load i8*, i8** %name_der, align 8, !tbaa !4
  %conv115 = zext i32 %call12 to i64
  %call14 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6, i64 noundef %conv115) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.then53

sw.bb18:                                          ; preds = %if.end11
  %name19 = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 1
  %7 = load %struct.X509_name_st*, %struct.X509_name_st** %name19, align 8, !tbaa !38
  %call20 = call i32 @i2d_X509_NAME(%struct.X509_name_st* noundef %7, i8** noundef nonnull %name_der) #10
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true23, label %cleanup

land.lhs.true23:                                  ; preds = %sw.bb18
  %serial = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 2
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !39
  %call24 = call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %8, %struct.bignum_st* noundef null) #10
  %cmp25.not = icmp eq %struct.bignum_st* %call24, null
  br i1 %cmp25.not, label %cleanup, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %9 = load i8*, i8** %name_der, align 8, !tbaa !4
  %conv28116 = zext i32 %call20 to i64
  %call29 = call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef %9, i64 noundef %conv28116) #10
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %call32 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.bignum_st* noundef nonnull %call24) #10
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.then53

sw.bb36:                                          ; preds = %if.end11
  %digest = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 3
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !40
  %call37 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %10) #10
  %call38 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call37, i64 noundef 0) #10
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %sw.bb36
  %string = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 4
  %11 = load i8*, i8** %string, align 8, !tbaa !41
  %stringlength = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 5
  %12 = load i64, i64* %stringlength, align 8, !tbaa !42
  %call41 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef %11, i64 noundef %12) #10
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup, label %if.then53

sw.epilog:                                        ; preds = %if.end11
  %string46 = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 4
  %13 = load i8*, i8** %string46, align 8, !tbaa !41
  %stringlength47 = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %search, i64 0, i32 5
  %14 = load i64, i64* %stringlength47, align 8, !tbaa !42
  %call48 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef %13, i64 noundef %14) #10
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %if.then53

if.then53:                                        ; preds = %land.lhs.true40, %land.lhs.true31, %land.lhs.true, %sw.epilog
  %number.0112 = phi %struct.bignum_st* [ null, %land.lhs.true ], [ null, %sw.epilog ], [ %call24, %land.lhs.true31 ], [ null, %land.lhs.true40 ]
  %call54 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call) #10
  %15 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %p_set_ctx_params56 = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %15, i64 0, i32 21
  %16 = load i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)** %p_set_ctx_params56, align 8, !tbaa !26
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %17 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !23
  %call57 = call i32 %16(i8* noundef %18, %struct.ossl_param_st* noundef %call54) #10
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call54) #10
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end8, %if.then4
  %.sink117 = phi i32 [ 330, %if.then4 ], [ 335, %if.end8 ]
  %.sink = phi i32 [ 118, %if.then4 ], [ 786688, %if.end8 ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink117, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.OSSL_STORE_find, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef %.sink, i8* noundef null) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  br label %cleanup72

cleanup:                                          ; preds = %if.end11, %sw.bb, %land.lhs.true27, %land.lhs.true23, %sw.bb18, %sw.bb36, %sw.epilog, %if.then53, %land.lhs.true, %land.lhs.true31, %land.lhs.true40
  %number.0111 = phi %struct.bignum_st* [ %number.0112, %if.then53 ], [ null, %sw.epilog ], [ null, %land.lhs.true ], [ %call24, %land.lhs.true31 ], [ null, %land.lhs.true40 ], [ null, %if.end11 ], [ null, %sw.bb ], [ %call24, %land.lhs.true27 ], [ null, %land.lhs.true23 ], [ null, %sw.bb18 ], [ null, %sw.bb36 ]
  %ret.1 = phi i32 [ %call57, %if.then53 ], [ 0, %sw.epilog ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true31 ], [ 0, %land.lhs.true40 ], [ 0, %if.end11 ], [ 0, %sw.bb ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true23 ], [ 0, %sw.bb18 ], [ 0, %sw.bb36 ]
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef nonnull %call) #10
  %19 = load i8*, i8** %name_der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 385) #10
  call void @BN_free(%struct.bignum_st* noundef %number.0111) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  br label %cleanup72

if.else:                                          ; preds = %if.end2
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %20 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %find = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %20, i64 0, i32 6
  %21 = load i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)*, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)** %find, align 8, !tbaa !43
  %cmp63 = icmp eq i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)* %21, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.else
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.OSSL_STORE_find, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 118, i8* noundef null) #10
  br label %cleanup72

if.end66:                                         ; preds = %if.else
  %loader_ctx69 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %22 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx69, align 8, !tbaa !23
  %call70 = tail call i32 %21(%struct.ossl_store_loader_ctx_st* noundef %22, %struct.ossl_store_search_st* noundef nonnull %search) #10
  br label %cleanup72

cleanup72:                                        ; preds = %if.end66, %cleanup, %cleanup.thread, %if.then65, %if.then1, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then1 ], [ 0, %if.then65 ], [ 0, %cleanup.thread ], [ %ret.1, %cleanup ], [ %call70, %if.end66 ]
  ret i32 %retval.1
}

declare %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #2

declare i32 @i2d_X509_NAME(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %load_data = alloca %struct.ossl_load_result_data_st, align 8
  %loading = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 7
  store i32 1, i32* %loading, align 8, !tbaa !33
  %call132 = call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %ctx) #12
  %tobool.not133 = icmp eq i32 %call132, 0
  br i1 %tobool.not133, label %if.end.lr.ph, label %cleanup76

if.end.lr.ph:                                     ; preds = %entry
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %cached_info = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 9
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %0 = bitcast %struct.ossl_load_result_data_st* %load_data to i8*
  %v18 = getelementptr inbounds %struct.ossl_load_result_data_st, %struct.ossl_load_result_data_st* %load_data, i64 0, i32 0
  %ctx19 = getelementptr inbounds %struct.ossl_load_result_data_st, %struct.ossl_load_result_data_st* %load_data, i64 0, i32 1
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %1 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %pwdata = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 10
  %2 = bitcast %struct.ossl_passphrase_data_st* %pwdata to i8*
  %_ = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 10, i32 1
  %ui_method37 = bitcast %union.anon.0* %_ to %struct.ui_method_st**
  %ui_method_data = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 10, i32 1, i32 0, i32 1
  %3 = bitcast i64* %ui_method_data to i8**
  %post_process = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 3
  %post_process_data = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 4
  %expected_type = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 5
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %again.backedge
  %4 = load %struct.stack_st_OSSL_STORE_INFO*, %struct.stack_st_OSSL_STORE_INFO** %cached_info, align 8, !tbaa !31
  %cmp3.not = icmp eq %struct.stack_st_OSSL_STORE_INFO* %4, null
  br i1 %cmp3.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = call fastcc i32 @sk_OSSL_STORE_INFO_num(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %4) #12
  %cmp6 = icmp eq i32 %call5, 0
  %5 = load %struct.stack_st_OSSL_STORE_INFO*, %struct.stack_st_OSSL_STORE_INFO** %cached_info, align 8, !tbaa !31
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call fastcc void @sk_OSSL_STORE_INFO_free(%struct.stack_st_OSSL_STORE_INFO* noundef %5) #12
  store %struct.stack_st_OSSL_STORE_INFO* null, %struct.stack_st_OSSL_STORE_INFO** %cached_info, align 8, !tbaa !31
  br label %if.else

if.end10:                                         ; preds = %land.lhs.true
  %cmp12.not = icmp eq %struct.stack_st_OSSL_STORE_INFO* %5, null
  br i1 %cmp12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call15 = call fastcc %struct.ossl_store_info_st* @sk_OSSL_STORE_INFO_shift(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %5) #12
  br label %if.end43

if.else:                                          ; preds = %if.end, %if.then7, %if.end10
  %6 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp16.not = icmp eq %struct.ossl_store_loader_st* %6, null
  br i1 %cmp16.not, label %if.then33, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  store %struct.ossl_store_info_st* null, %struct.ossl_store_info_st** %v18, align 8, !tbaa !44
  store %struct.ossl_store_ctx_st* %ctx, %struct.ossl_store_ctx_st** %ctx19, align 8, !tbaa !46
  %p_load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %6, i64 0, i32 22
  %7 = load i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)** %p_load, align 8, !tbaa !47
  %8 = load i8*, i8** %1, align 8, !tbaa !23
  %call21 = call i32 %7(i8* noundef %8, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @ossl_store_handle_load_result, i8* noundef nonnull %0, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef nonnull @ossl_pw_passphrase_callback_dec, i8* noundef nonnull %2) #10
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.then17
  %call24 = call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %ctx) #12
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %cleanup.thread

if.then26:                                        ; preds = %if.then23
  %error_flag = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 8
  store i32 1, i32* %error_flag, align 4, !tbaa !48
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then23, %if.then26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  br label %cleanup76

if.end30:                                         ; preds = %if.then17
  %9 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v18, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  %.pr120 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp32 = icmp eq %struct.ossl_store_loader_st* %.pr120, null
  br i1 %cmp32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.else, %if.end30
  %10 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %load = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %10, i64 0, i32 7
  %11 = load %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)** %load, align 8, !tbaa !49
  %12 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx, align 8, !tbaa !23
  %13 = load %struct.ui_method_st*, %struct.ui_method_st** %ui_method37, align 8, !tbaa !8
  %14 = load i8*, i8** %3, align 8, !tbaa !8
  %call41 = call %struct.ossl_store_info_st* %11(%struct.ossl_store_loader_ctx_st* noundef %12, %struct.ui_method_st* noundef %13, i8* noundef %14) #10
  br label %if.end43

if.end43:                                         ; preds = %if.end30, %if.then33, %if.then13
  %v.3 = phi %struct.ossl_store_info_st* [ %call15, %if.then13 ], [ %call41, %if.then33 ], [ %9, %if.end30 ]
  %15 = load %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)*, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)** %post_process, align 8, !tbaa !24
  %cmp44 = icmp ne %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* %15, null
  %cmp46 = icmp ne %struct.ossl_store_info_st* %v.3, null
  %or.cond = select i1 %cmp44, i1 %cmp46, i1 false
  br i1 %or.cond, label %if.then47, label %if.end53

if.then47:                                        ; preds = %if.end43
  %16 = load i8*, i8** %post_process_data, align 8, !tbaa !25
  %call49 = call %struct.ossl_store_info_st* %15(%struct.ossl_store_info_st* noundef nonnull %v.3, i8* noundef %16) #10
  %cmp50 = icmp eq %struct.ossl_store_info_st* %call49, null
  br i1 %cmp50, label %again.backedge, label %if.end53.thread

again.backedge:                                   ; preds = %if.then47, %cleanup69
  %call = call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %ctx) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup76

if.end53.thread:                                  ; preds = %if.then47
  call void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #10
  br label %land.lhs.true56

if.end53:                                         ; preds = %if.end43
  call void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #10
  %cmp55.not = icmp eq %struct.ossl_store_info_st* %v.3, null
  br i1 %cmp55.not, label %cleanup76, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end53.thread, %if.end53
  %v.4126 = phi %struct.ossl_store_info_st* [ %call49, %if.end53.thread ], [ %v.3, %if.end53 ]
  %17 = load i32, i32* %expected_type, align 8, !tbaa !34
  %cmp57.not = icmp eq i32 %17, 0
  br i1 %cmp57.not, label %cleanup76, label %if.then58

if.then58:                                        ; preds = %land.lhs.true56
  %call59 = call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %v.4126) #12
  %.not = icmp ult i32 %call59, 2
  %cmp65.not = icmp eq i32 %17, %call59
  %or.cond131 = select i1 %.not, i1 true, i1 %cmp65.not
  br i1 %or.cond131, label %cleanup76, label %cleanup69

cleanup69:                                        ; preds = %if.then58
  call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %v.4126) #12
  br label %again.backedge

cleanup76:                                        ; preds = %again.backedge, %land.lhs.true56, %if.end53, %if.then58, %entry, %cleanup.thread
  %retval.4 = phi %struct.ossl_store_info_st* [ null, %cleanup.thread ], [ null, %entry ], [ null, %again.backedge ], [ %v.4126, %land.lhs.true56 ], [ null, %if.end53 ], [ %v.4126, %if.then58 ]
  ret %struct.ossl_store_info_st* %retval.4
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %0, null
  br i1 %cmp.not, label %if.then3, label %if.end

if.end:                                           ; preds = %entry
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %p_eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %1, i64 0, i32 23
  %2 = load i32 (i8*)*, i32 (i8*)** %p_eof, align 8, !tbaa !50
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %3 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !23
  %call = tail call i32 %2(i8* noundef %4) #10
  %.pr = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp2 = icmp eq %struct.ossl_store_loader_st* %.pr, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %entry, %if.end
  %loader4 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %5 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader4, align 8, !tbaa !22
  %eof = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %5, i64 0, i32 8
  %6 = load i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)** %eof, align 8, !tbaa !51
  %loader_ctx5 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %7 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx5, align 8, !tbaa !23
  %call6 = tail call i32 %6(%struct.ossl_store_loader_ctx_st* noundef %7) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %ret.1 = phi i32 [ %call6, %if.then3 ], [ %call, %if.end ]
  %cmp8 = icmp ne i32 %ret.1, 0
  %conv = zext i1 %cmp8 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_STORE_INFO_num(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_STORE_INFO_free(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @sk_OSSL_STORE_INFO_shift(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %0) #10
  %1 = bitcast i8* %call to %struct.ossl_store_info_st*
  ret %struct.ossl_store_info_st* %1
}

declare i32 @ossl_store_handle_load_result(%struct.ossl_param_st* noundef, i8* noundef) #2

declare i32 @ossl_pw_passphrase_callback_dec(i8* noundef, i64 noundef, i64* noundef, %struct.ossl_param_st* noundef, i8* noundef) #2

declare void @ossl_pw_clear_passphrase_cache(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef %info) #0 {
entry:
  %cmp.not = icmp eq %struct.ossl_store_info_st* %info, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 5, label %sw.bb10
    i32 6, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.then
  %name1 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 774) #10
  %desc = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 1
  %2 = load i8*, i8** %desc, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 775) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  %_5 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %params = bitcast %union.anon* %_5 to %struct.evp_pkey_st**
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %3) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  %_7 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %pubkey = bitcast %union.anon* %_7 to %struct.evp_pkey_st**
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubkey, align 8, !tbaa !8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  %_9 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %pkey = bitcast %union.anon* %_9 to %struct.evp_pkey_st**
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  %_11 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %x509 = bitcast %union.anon* %_11 to %struct.x509_st**
  %6 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !8
  tail call void @X509_free(%struct.x509_st* noundef %6) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then
  %_13 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %crl = bitcast %union.anon* %_13 to %struct.X509_crl_st**
  %7 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !8
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %7) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %8 = bitcast %struct.ossl_store_info_st* %info to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 793) #10
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_error(%struct.ossl_store_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #0 {
entry:
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %0, null
  br i1 %cmp.not, label %if.then3, label %if.end

if.end:                                           ; preds = %entry
  %error_flag = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 8
  %1 = load i32, i32* %error_flag, align 4, !tbaa !48
  br label %if.end4

if.then3:                                         ; preds = %entry
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %2 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %error = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %2, i64 0, i32 9
  %3 = load i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)** %error, align 8, !tbaa !54
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %4 = load %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_loader_ctx_st** %loader_ctx, align 8, !tbaa !23
  %call = tail call i32 %3(%struct.ossl_store_loader_ctx_st* noundef %4) #10
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %ret.1 = phi i32 [ %call, %if.then3 ], [ %1, %if.end ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ossl_store_close_it(%struct.ossl_store_ctx_st* noundef %ctx) #12
  %0 = bitcast %struct.ossl_store_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 531) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef %type, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 544) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_store_info_st*
  %type1 = bitcast i8* %call to i32*
  store i32 %type, i32* %type1, align 8, !tbaa !52
  %_ = getelementptr inbounds i8, i8* %call, i64 8
  %data2 = bitcast i8* %_ to i8**
  store i8* %data, i8** %data2, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_store_info_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_store_info_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_NAME(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef 1, i8* noundef null) #12
  %cmp = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 559, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_STORE_INFO_new_NAME, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %call, i64 0, i32 1, i32 0, i32 0
  store i8* %name, i8** %name2, align 8, !tbaa !8
  %desc = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %call, i64 0, i32 1, i32 0, i32 1
  store i8* null, i8** %desc, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret %struct.ossl_store_info_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_INFO_set0_NAME_description(%struct.ossl_store_info_st* nocapture noundef %info, i8* noundef %desc) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 572, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.OSSL_STORE_INFO_set0_NAME_description, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524550, i8* noundef null) #10
  br label %return

if.end:                                           ; preds = %entry
  %desc1 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 1
  store i8* %desc, i8** %desc1, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PARAMS(%struct.evp_pkey_st* noundef %params) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %params to i8*
  %call = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef 2, i8* noundef %0) #12
  %cmp = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_STORE_INFO_new_PARAMS, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.ossl_store_info_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PUBKEY(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef 3, i8* noundef %0) #12
  %cmp = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 594, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_STORE_INFO_new_PUBKEY, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.ossl_store_info_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef 4, i8* noundef %0) #12
  %cmp = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 603, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_STORE_INFO_new_PKEY, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.ossl_store_info_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef %x509) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x509_st* %x509 to i8*
  %call = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef 5, i8* noundef %0) #12
  %cmp = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 612, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_STORE_INFO_new_CERT, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.ossl_store_info_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CRL(%struct.X509_crl_st* noundef %crl) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.X509_crl_st* %crl to i8*
  %call = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new(i32 noundef 6, i8* noundef %0) #12
  %cmp = icmp eq %struct.ossl_store_info_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.OSSL_STORE_INFO_new_CRL, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.ossl_store_info_st* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_STORE_INFO_get0_data(i32 noundef %type, %struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type1 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type1, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, %type
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %name1 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_STORE_INFO_get1_NAME(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %return.sink.split

if.then:                                          ; preds = %entry
  %name1 = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8, !tbaa !8
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 650) #10
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %return.sink.split, label %return

return.sink.split:                                ; preds = %entry, %if.then
  %.sink8 = phi i32 [ 653, %if.then ], [ 656, %entry ]
  %.sink = phi i32 [ 786688, %if.then ], [ 103, %entry ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink8, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_STORE_INFO_get1_NAME, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef %.sink, i8* noundef null) #10
  br label %return

return:                                           ; preds = %return.sink.split, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %return.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_STORE_INFO_get0_NAME_description(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %desc = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 1
  %1 = load i8*, i8** %desc, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_STORE_INFO_get1_NAME_description(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %return.sink.split

if.then:                                          ; preds = %entry
  %desc = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1, i32 0, i32 1
  %1 = load i8*, i8** %desc, align 8, !tbaa !8
  %tobool.not = icmp eq i8* %1, null
  %spec.select = select i1 %tobool.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %1
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %spec.select, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 671) #10
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %return.sink.split, label %return

return.sink.split:                                ; preds = %entry, %if.then
  %.sink11 = phi i32 [ 674, %if.then ], [ 677, %entry ]
  %.sink = phi i32 [ 786688, %if.then ], [ 103, %entry ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink11, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.OSSL_STORE_INFO_get1_NAME_description, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef %.sink, i8* noundef null) #10
  br label %return

return:                                           ; preds = %return.sink.split, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %return.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PARAMS(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %params = bitcast %union.anon* %_ to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %1, %if.then ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PARAMS(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %params = bitcast %union.anon* %_ to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !8
  %call = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %1) #10
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_STORE_INFO_get1_PARAMS, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 104, i8* noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %2, %if.then ], [ null, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PUBKEY(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %pubkey = bitcast %union.anon* %_ to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubkey, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %1, %if.then ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PUBKEY(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %pubkey = bitcast %union.anon* %_ to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubkey, align 8, !tbaa !8
  %call = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %1) #10
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubkey, align 8, !tbaa !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 711, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.OSSL_STORE_INFO_get1_PUBKEY, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 122, i8* noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %2, %if.then ], [ null, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PKEY(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %pkey = bitcast %union.anon* %_ to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %1, %if.then ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @OSSL_STORE_INFO_get1_PKEY(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %pkey = bitcast %union.anon* %_ to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !8
  %call = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %1) #10
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 728, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_STORE_INFO_get1_PKEY, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 102, i8* noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %2, %if.then ], [ null, %if.end ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %x509 = bitcast %union.anon* %_ to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.x509_st* [ %1, %if.then ], [ null, %entry ]
  ret %struct.x509_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.x509_st* @OSSL_STORE_INFO_get1_CERT(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %x509 = bitcast %union.anon* %_ to %struct.x509_st**
  %1 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !8
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef %1) #10
  %2 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_STORE_INFO_get1_CERT, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 100, i8* noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.x509_st* [ %2, %if.then ], [ null, %if.end ]
  ret %struct.x509_st* %retval.0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_crl_st* @OSSL_STORE_INFO_get0_CRL(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 6
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %crl = bitcast %union.anon* %_ to %struct.X509_crl_st**
  %1 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.X509_crl_st* [ %1, %if.then ], [ null, %entry ]
  ret %struct.X509_crl_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.X509_crl_st* @OSSL_STORE_INFO_get1_CRL(%struct.ossl_store_info_st* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !52
  %cmp = icmp eq i32 %0, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_ = getelementptr inbounds %struct.ossl_store_info_st, %struct.ossl_store_info_st* %info, i64 0, i32 1
  %crl = bitcast %union.anon* %_ to %struct.X509_crl_st**
  %1 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !8
  %call = tail call i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef %1) #10
  %2 = load %struct.X509_crl_st*, %struct.X509_crl_st** %crl, align 8, !tbaa !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.OSSL_STORE_INFO_get1_CRL, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 101, i8* noundef null) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.X509_crl_st* [ %2, %if.then ], [ null, %if.end ]
  ret %struct.X509_crl_st* %retval.0
}

declare i32 @X509_CRL_up_ref(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_STORE_supports_search(%struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, i32 noundef %search_type) local_unnamed_addr #0 {
entry:
  %tmp_search = alloca %struct.ossl_store_search_st, align 8
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp.not = icmp eq %struct.ossl_store_loader_st* %0, null
  br i1 %cmp.not, label %if.then36, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef nonnull %0) #10
  %call2 = tail call i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef %call) #10
  %1 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %p_settable_ctx_params = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %1, i64 0, i32 20
  %2 = load %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*)** %p_settable_ctx_params, align 8, !tbaa !55
  %cmp4 = icmp eq %struct.ossl_param_st* (i8*)* %2, null
  br i1 %cmp4, label %cleanup49, label %if.end

if.end:                                           ; preds = %if.then
  %call8 = tail call %struct.ossl_param_st* %2(i8* noundef %call2) #10
  %call9 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10
  %call10 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #10
  %call11 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #10
  %call12 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)) #10
  %call13 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10
  switch i32 %search_type, label %if.end32 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb20
    i32 4, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  %cmp14 = icmp ne %struct.ossl_param_st* %call9, null
  br label %if.end32

sw.bb15:                                          ; preds = %if.end
  %cmp16 = icmp ne %struct.ossl_param_st* %call10, null
  %cmp18 = icmp ne %struct.ossl_param_st* %call11, null
  %3 = select i1 %cmp16, i1 %cmp18, i1 false
  br label %if.end32

sw.bb20:                                          ; preds = %if.end
  %cmp21 = icmp ne %struct.ossl_param_st* %call12, null
  br label %if.end32

sw.bb23:                                          ; preds = %if.end
  %cmp24 = icmp ne %struct.ossl_param_st* %call13, null
  br label %if.end32

if.end32:                                         ; preds = %if.end, %sw.bb23, %sw.bb20, %sw.bb15, %sw.bb
  %ret.0.shrunk = phi i1 [ false, %if.end ], [ %cmp24, %sw.bb23 ], [ %cmp21, %sw.bb20 ], [ %3, %sw.bb15 ], [ %cmp14, %sw.bb ]
  %ret.0 = zext i1 %ret.0.shrunk to i32
  %.pr = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !21
  %cmp34 = icmp eq %struct.ossl_store_loader_st* %.pr, null
  br i1 %cmp34, label %if.then36, label %cleanup49

if.then36:                                        ; preds = %entry, %if.end32
  %4 = bitcast %struct.ossl_store_search_st* %tmp_search to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #9
  %loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 0
  %5 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %loader, align 8, !tbaa !22
  %find = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %5, i64 0, i32 6
  %6 = load i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)*, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)** %find, align 8, !tbaa !43
  %cmp37 = icmp eq i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)* %6, null
  br i1 %cmp37, label %cleanup45.thread, label %cleanup45

cleanup45.thread:                                 ; preds = %if.then36
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #9
  br label %cleanup49

cleanup45:                                        ; preds = %if.then36
  %search_type41 = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %tmp_search, i64 0, i32 0
  store i32 %search_type, i32* %search_type41, align 8, !tbaa !36
  %call44 = call i32 %6(%struct.ossl_store_loader_ctx_st* noundef null, %struct.ossl_store_search_st* noundef nonnull %tmp_search) #10
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #9
  br label %cleanup49

cleanup49:                                        ; preds = %if.then, %if.end32, %cleanup45, %cleanup45.thread
  %retval.3 = phi i32 [ 0, %cleanup45.thread ], [ %call44, %cleanup45 ], [ %ret.0, %if.end32 ], [ 0, %if.then ]
  ret i32 %retval.3
}

declare i8* @ossl_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_name(%struct.X509_name_st* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 853) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 856, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_STORE_SEARCH_by_name, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_store_search_st*
  %search_type = bitcast i8* %call to i32*
  store i32 1, i32* %search_type, align 8, !tbaa !36
  %name1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %name1 to %struct.X509_name_st**
  store %struct.X509_name_st* %name, %struct.X509_name_st** %1, align 8, !tbaa !38
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_store_search_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_store_search_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_issuer_serial(%struct.X509_name_st* noundef %name, %struct.asn1_string_st* noundef %serial) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 868) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 871, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.OSSL_STORE_SEARCH_by_issuer_serial, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_store_search_st*
  %search_type = bitcast i8* %call to i32*
  store i32 2, i32* %search_type, align 8, !tbaa !36
  %name1 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %name1 to %struct.X509_name_st**
  store %struct.X509_name_st* %name, %struct.X509_name_st** %1, align 8, !tbaa !38
  %serial2 = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %serial2 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %serial, %struct.asn1_string_st** %2, align 8, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_store_search_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_store_search_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_key_fingerprint(%struct.evp_md_st* noundef %digest, i8* noundef %bytes, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 885) #10
  %0 = bitcast i8* %call to %struct.ossl_store_search_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 888, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.OSSL_STORE_SEARCH_by_key_fingerprint, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.evp_md_st* %digest, null
  br i1 %cmp1.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %digest) #10
  %conv = sext i32 %call2 to i64
  %cmp3.not = icmp eq i64 %conv, %len
  br i1 %cmp3.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 893, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.OSSL_STORE_SEARCH_by_key_fingerprint, i64 0, i64 0)) #10
  %call6 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %digest) #10
  %call7 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef nonnull %digest) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 121, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call6, i32 noundef %call7, i64 noundef %len) #10
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 897) #10
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %search_type = bitcast i8* %call to i32*
  store i32 3, i32* %search_type, align 8, !tbaa !36
  %digest9 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %digest9 to %struct.evp_md_st**
  store %struct.evp_md_st* %digest, %struct.evp_md_st** %1, align 8, !tbaa !40
  %string = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %string to i8**
  store i8* %bytes, i8** %2, align 8, !tbaa !41
  %stringlength = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %stringlength to i64*
  store i64 %len, i64* %3, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then
  %retval.0 = phi %struct.ossl_store_search_st* [ null, %if.then ], [ null, %if.then5 ], [ %0, %if.end8 ]
  ret %struct.ossl_store_search_st* %retval.0
}

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_alias(i8* noundef %alias) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 910) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 913, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.OSSL_STORE_SEARCH_by_alias, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.ossl_store_search_st*
  %search_type = bitcast i8* %call to i32*
  store i32 4, i32* %search_type, align 8, !tbaa !36
  %string = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %string to i8**
  store i8* %alias, i8** %1, align 8, !tbaa !41
  %call1 = tail call i64 @strlen(i8* noundef %alias) #11
  %stringlength = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %stringlength to i64*
  store i64 %call1, i64* %2, align 8, !tbaa !42
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_store_search_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_store_search_st* %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef %search) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ossl_store_search_st* %search to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 926) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OSSL_STORE_SEARCH_get_type(%struct.ossl_store_search_st* nocapture noundef readonly %criterion) local_unnamed_addr #7 {
entry:
  %search_type = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 0
  %0 = load i32, i32* %search_type, align 8, !tbaa !36
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.X509_name_st* @OSSL_STORE_SEARCH_get0_name(%struct.ossl_store_search_st* nocapture noundef readonly %criterion) local_unnamed_addr #7 {
entry:
  %name = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 1
  %0 = load %struct.X509_name_st*, %struct.X509_name_st** %name, align 8, !tbaa !38
  ret %struct.X509_name_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.asn1_string_st* @OSSL_STORE_SEARCH_get0_serial(%struct.ossl_store_search_st* nocapture noundef readonly %criterion) local_unnamed_addr #7 {
entry:
  %serial = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 2
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %serial, align 8, !tbaa !39
  ret %struct.asn1_string_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @OSSL_STORE_SEARCH_get0_bytes(%struct.ossl_store_search_st* nocapture noundef readonly %criterion, i64* nocapture noundef writeonly %length) local_unnamed_addr #8 {
entry:
  %stringlength = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 5
  %0 = load i64, i64* %stringlength, align 8, !tbaa !42
  store i64 %0, i64* %length, align 8, !tbaa !29
  %string = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 4
  %1 = load i8*, i8** %string, align 8, !tbaa !41
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OSSL_STORE_SEARCH_get0_string(%struct.ossl_store_search_st* nocapture noundef readonly %criterion) local_unnamed_addr #7 {
entry:
  %string = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 4
  %0 = load i8*, i8** %string, align 8, !tbaa !41
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.evp_md_st* @OSSL_STORE_SEARCH_get0_digest(%struct.ossl_store_search_st* nocapture noundef readonly %criterion) local_unnamed_addr #7 {
entry:
  %digest = getelementptr inbounds %struct.ossl_store_search_st, %struct.ossl_store_search_st* %criterion, i64 0, i32 3
  %0 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !40
  ret %struct.evp_md_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_store_ctx_st* @OSSL_STORE_attach(%struct.bio_st* noundef %bp, i8* noundef %scheme, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data, %struct.ossl_param_st* noundef %params, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef %post_process, i8* noundef %post_process_data) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %scheme, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %scheme
  %call = tail call i32 @ERR_set_mark() #10
  %call1 = tail call %struct.ossl_store_loader_st* @ossl_store_get0_loader_int(i8* noundef %spec.store.select) #10
  %cmp2.not = icmp eq %struct.ossl_store_loader_st* %call1, null
  br i1 %cmp2.not, label %land.lhs.true, label %if.end5

if.end5:                                          ; preds = %entry
  %attach = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call1, i64 0, i32 3
  %0 = load %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)** %attach, align 8, !tbaa !56
  %call4 = tail call %struct.ossl_store_loader_ctx_st* %0(%struct.ossl_store_loader_st* noundef nonnull %call1, %struct.bio_st* noundef %bp, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #10
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call %struct.ossl_store_loader_st* @OSSL_STORE_LOADER_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %spec.store.select, i8* noundef %propq) #10
  %cmp8.not = icmp eq %struct.ossl_store_loader_st* %call7, null
  br i1 %cmp8.not, label %if.then25, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef nonnull %call7) #10
  %call11 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call10) #10
  %call12 = tail call %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef %bp) #10
  %cmp13 = icmp eq %struct.ossl_core_bio_st* %call12, null
  br i1 %cmp13, label %if.end21.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %p_attach = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call7, i64 0, i32 19
  %1 = load i8* (i8*, %struct.ossl_core_bio_st*)*, i8* (i8*, %struct.ossl_core_bio_st*)** %p_attach, align 8, !tbaa !57
  %call14 = tail call i8* %1(i8* noundef %call11, %struct.ossl_core_bio_st* noundef nonnull %call12) #10
  %2 = bitcast i8* %call14 to %struct.ossl_store_loader_ctx_st*
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.end21.sink.split, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %call17 = tail call fastcc i32 @loader_set_params(%struct.ossl_store_loader_st* noundef nonnull %call7, %struct.ossl_store_loader_ctx_st* noundef nonnull %2, %struct.ossl_param_st* noundef %params, i8* noundef %propq) #12
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.else
  %p_close = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %call7, i64 0, i32 24
  %3 = load i32 (i8*)*, i32 (i8*)** %p_close, align 8, !tbaa !14
  %call19 = tail call i32 %3(i8* noundef nonnull %call14) #10
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then9, %lor.lhs.false, %if.then18
  %loader_ctx.2.ph = phi %struct.ossl_store_loader_ctx_st* [ %2, %if.then18 ], [ null, %lor.lhs.false ], [ null, %if.then9 ]
  tail call void @OSSL_STORE_LOADER_free(%struct.ossl_store_loader_st* noundef nonnull %call7) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else
  %fetched_loader.0 = phi %struct.ossl_store_loader_st* [ %call7, %if.else ], [ null, %if.end21.sink.split ]
  %loader_ctx.2 = phi %struct.ossl_store_loader_ctx_st* [ %2, %if.else ], [ %loader_ctx.2.ph, %if.end21.sink.split ]
  %call22 = tail call i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef %call12) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end5, %if.end21
  %fetched_loader.1 = phi %struct.ossl_store_loader_st* [ %fetched_loader.0, %if.end21 ], [ null, %if.end5 ]
  %loader_ctx.3 = phi %struct.ossl_store_loader_ctx_st* [ %loader_ctx.2, %if.end21 ], [ %call4, %if.end5 ]
  %loader.0 = phi %struct.ossl_store_loader_st* [ %fetched_loader.0, %if.end21 ], [ %call1, %if.end5 ]
  %cmp24 = icmp eq %struct.ossl_store_loader_ctx_st* %loader_ctx.3, null
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %land.lhs.true, %if.end23
  %call26 = tail call i32 @ERR_clear_last_mark() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i8* @CRYPTO_zalloc(i64 noundef 120, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1012) #10
  %4 = bitcast i8* %call28 to %struct.ossl_store_ctx_st*
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %call31 = tail call i32 @ERR_clear_last_mark() #10
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1014, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.OSSL_STORE_attach, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %cmp33.not = icmp eq %struct.ui_method_st* %ui_method, null
  br i1 %cmp33.not, label %if.end39, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end32
  %pwdata = getelementptr inbounds i8, i8* %call28, i64 72
  %5 = bitcast i8* %pwdata to %struct.ossl_passphrase_data_st*
  %call35 = tail call i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef nonnull %5, %struct.ui_method_st* noundef nonnull %ui_method, i8* noundef %ui_data) #10
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true34
  %call38 = tail call i32 @ERR_clear_last_mark() #10
  tail call void @CRYPTO_free(i8* noundef nonnull %call28, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1021) #10
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true34, %if.end32
  %fetched_loader40 = getelementptr inbounds i8, i8* %call28, i64 8
  %6 = bitcast i8* %fetched_loader40 to %struct.ossl_store_loader_st**
  store %struct.ossl_store_loader_st* %fetched_loader.1, %struct.ossl_store_loader_st** %6, align 8, !tbaa !21
  %loader41 = bitcast i8* %call28 to %struct.ossl_store_loader_st**
  store %struct.ossl_store_loader_st* %loader.0, %struct.ossl_store_loader_st** %loader41, align 8, !tbaa !22
  %loader_ctx42 = getelementptr inbounds i8, i8* %call28, i64 16
  %7 = bitcast i8* %loader_ctx42 to %struct.ossl_store_loader_ctx_st**
  store %struct.ossl_store_loader_ctx_st* %loader_ctx.3, %struct.ossl_store_loader_ctx_st** %7, align 8, !tbaa !23
  %post_process43 = getelementptr inbounds i8, i8* %call28, i64 24
  %8 = bitcast i8* %post_process43 to %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)**
  store %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* %post_process, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)** %8, align 8, !tbaa !24
  %post_process_data44 = getelementptr inbounds i8, i8* %call28, i64 32
  %9 = bitcast i8* %post_process_data44 to i8**
  store i8* %post_process_data, i8** %9, align 8, !tbaa !25
  %call45 = tail call i32 @ERR_pop_to_mark() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then37, %if.then30, %if.then25
  %retval.0 = phi %struct.ossl_store_ctx_st* [ null, %if.then25 ], [ null, %if.then30 ], [ %4, %if.end39 ], [ null, %if.then37 ]
  ret %struct.ossl_store_ctx_st* %retval.0
}

declare %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef) local_unnamed_addr #2

declare i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_store_info_st*)* @OSSL_STORE_INFO_free to void (i8*)*)) #10
  ret void
}

declare void @ossl_pw_clear_passphrase_data(%struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 88}
!10 = !{!"ossl_store_loader_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !11, i64 104, !5, i64 112, !5, i64 120, !6, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200}
!11 = !{!"int", !6, i64 0}
!12 = !{!10, !5, i64 16}
!13 = !{!10, !5, i64 144}
!14 = !{!10, !5, i64 192}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !5, i64 48}
!18 = !{!"ossl_store_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !11, i64 40, !5, i64 48, !11, i64 56, !11, i64 60, !5, i64 64, !19, i64 72}
!19 = !{!"ossl_passphrase_data_st", !6, i64 0, !6, i64 8, !11, i64 24, !5, i64 32, !20, i64 40}
!20 = !{!"long", !6, i64 0}
!21 = !{!18, !5, i64 8}
!22 = !{!18, !5, i64 0}
!23 = !{!18, !5, i64 16}
!24 = !{!18, !5, i64 24}
!25 = !{!18, !5, i64 32}
!26 = !{!10, !5, i64 168}
!27 = !{i64 0, i64 8, !4, i64 8, i64 4, !28, i64 16, i64 8, !4, i64 24, i64 8, !29, i64 32, i64 8, !29}
!28 = !{!11, !11, i64 0}
!29 = !{!20, !20, i64 0}
!30 = !{!10, !5, i64 80}
!31 = !{!18, !5, i64 64}
!32 = !{!10, !5, i64 32}
!33 = !{!18, !11, i64 56}
!34 = !{!18, !11, i64 40}
!35 = !{!10, !5, i64 40}
!36 = !{!37, !11, i64 0}
!37 = !{!"ossl_store_search_st", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !20, i64 40}
!38 = !{!37, !5, i64 8}
!39 = !{!37, !5, i64 16}
!40 = !{!37, !5, i64 24}
!41 = !{!37, !5, i64 32}
!42 = !{!37, !20, i64 40}
!43 = !{!10, !5, i64 48}
!44 = !{!45, !5, i64 0}
!45 = !{!"ossl_load_result_data_st", !5, i64 0, !5, i64 8}
!46 = !{!45, !5, i64 8}
!47 = !{!10, !5, i64 176}
!48 = !{!18, !11, i64 60}
!49 = !{!10, !5, i64 56}
!50 = !{!10, !5, i64 184}
!51 = !{!10, !5, i64 64}
!52 = !{!53, !11, i64 0}
!53 = !{!"ossl_store_info_st", !11, i64 0, !6, i64 8}
!54 = !{!10, !5, i64 72}
!55 = !{!10, !5, i64 160}
!56 = !{!10, !5, i64 24}
!57 = !{!10, !5, i64 152}
