; ModuleID = 'crypto/encode_decode/decoder_pkey.c'
source_filename = "crypto/encode_decode/decoder_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_decoder_ctx_st = type { i8*, i8*, i32, %struct.stack_st_OSSL_DECODER_INSTANCE*, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)*, void (i8*)*, i8*, %struct.ossl_passphrase_data_st }
%struct.stack_st_OSSL_DECODER_INSTANCE = type opaque
%struct.ossl_decoder_instance_st = type { %struct.ossl_decoder_st*, i8*, i8*, i8*, i8 }
%struct.ossl_decoder_st = type { %struct.ossl_endecode_base_st, i8* (i8*)*, void (i8*)*, i32 (%struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, i32)*, i32 (i8*, %struct.ossl_core_bio_st*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* }
%struct.ossl_endecode_base_st = type { %struct.ossl_provider_st*, i32, i8*, %struct.ossl_algorithm_st*, %struct.ossl_property_list_st*, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_property_list_st = type opaque
%struct.ossl_core_bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_passphrase_data_st = type { i32, %union.anon, i8, i8*, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i64 }
%struct.ui_method_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.3 }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.3 = type { i32, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.collect_decoder_data_st = type { %struct.stack_st_OPENSSL_CSTRING*, %struct.ossl_decoder_ctx_st*, i32, i8 }
%struct.stack_st_OPENSSL_CSTRING = type opaque
%struct.stack_st_EVP_KEYMGMT = type opaque
%struct.stack_st = type opaque
%struct.evp_keymgmt_util_try_import_data_st = type { %struct.evp_keymgmt_st*, i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"id-ecPublicKey\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"1.2.840.10045.2.1\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"crypto/encode_decode/decoder_pkey.c\00", align 1
@__func__.ossl_decoder_ctx_setup_for_pkey = private unnamed_addr constant [32 x i8] c"ossl_decoder_ctx_setup_for_pkey\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SM2\00", align 1
@__func__.OSSL_DECODER_CTX_new_for_pkey = private unnamed_addr constant [30 x i8] c"OSSL_DECODER_CTX_new_for_pkey\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"reference\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_passphrase(%struct.ossl_decoder_ctx_st* noundef %ctx, i8* noundef %kstr, i64 noundef %klen) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_passphrase(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i8* noundef %kstr, i64 noundef %klen) #5
  ret i32 %call
}

declare i32 @ossl_pw_set_passphrase(%struct.ossl_passphrase_data_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_passphrase_ui(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #5
  ret i32 %call
}

declare i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_pem_password_cb(%struct.ossl_decoder_ctx_st* noundef %ctx, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %cbarg) #5
  ret i32 %call
}

declare i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_DECODER_CTX_set_passphrase_cb(%struct.ossl_decoder_ctx_st* noundef %ctx, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_ossl_passphrase_cb(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) #5
  ret i32 %call
}

declare i32 @ossl_pw_set_ossl_passphrase_cb(%struct.ossl_passphrase_data_st* noundef, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_decoder_ctx_setup_for_pkey(%struct.ossl_decoder_ctx_st* noundef %ctx, %struct.evp_pkey_st** noundef %pkey, i8* noundef %keytype, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %collect_decoder_data = alloca %struct.collect_decoder_data_st, align 8
  %cmp.not = icmp eq i8* %keytype, null
  br i1 %cmp.not, label %do.body, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %keytype, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %keytype, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %do.body

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %entry, %lor.lhs.false, %if.then
  %tobool32.not = phi i1 [ true, %entry ], [ true, %lor.lhs.false ], [ false, %if.then ]
  %call5 = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 333) #5
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then18, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %do.body
  %cmp8.not = icmp eq i8* %propquery, null
  br i1 %cmp8.not, label %lor.lhs.false12, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %lor.lhs.false7
  %call10 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propquery, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 335) #5
  %propq = getelementptr inbounds i8, i8* %call5, i64 8
  %0 = bitcast i8* %propq to i8**
  store i8* %call10, i8** %0, align 8, !tbaa !4
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true9, %lor.lhs.false7
  %call13 = tail call fastcc %struct.stack_st_EVP_KEYMGMT* @sk_EVP_KEYMGMT_new_null() #7
  %keymgmts = getelementptr inbounds i8, i8* %call5, i64 24
  %1 = bitcast i8* %keymgmts to %struct.stack_st_EVP_KEYMGMT**
  store %struct.stack_st_EVP_KEYMGMT* %call13, %struct.stack_st_EVP_KEYMGMT** %1, align 8, !tbaa !10
  %cmp14 = icmp eq %struct.stack_st_EVP_KEYMGMT* %call13, null
  br i1 %cmp14, label %if.then18, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %2 = bitcast %struct.stack_st* %call16 to %struct.stack_st_OPENSSL_CSTRING*
  %cmp17 = icmp eq %struct.stack_st* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false15, %lor.lhs.false12, %land.lhs.true9, %do.body
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_decoder_ctx_setup_for_pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786688, i8* noundef null) #5
  br label %err

if.end19:                                         ; preds = %lor.lhs.false15
  %object = getelementptr inbounds i8, i8* %call5, i64 40
  %3 = bitcast i8* %object to %struct.evp_pkey_st***
  store %struct.evp_pkey_st** %pkey, %struct.evp_pkey_st*** %3, align 8, !tbaa !11
  %libctx20 = bitcast i8* %call5 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx20, align 8, !tbaa !12
  %selection = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %ctx, i64 0, i32 2
  %4 = load i32, i32* %selection, align 8, !tbaa !13
  %selection21 = getelementptr inbounds i8, i8* %call5, i64 16
  %5 = bitcast i8* %selection21 to i32*
  store i32 %4, i32* %5, align 8, !tbaa !17
  %6 = bitcast i8* %keymgmts to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !10
  tail call void @EVP_KEYMGMT_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.evp_keymgmt_st*, i8*)* noundef nonnull @collect_keymgmt, i8* noundef %7) #5
  %8 = load %struct.stack_st_EVP_KEYMGMT*, %struct.stack_st_EVP_KEYMGMT** %1, align 8, !tbaa !10
  %call24 = tail call fastcc i32 @sk_EVP_KEYMGMT_num(%struct.stack_st_EVP_KEYMGMT* noundef %8) #7
  %cmp25129 = icmp sgt i32 %call24, 0
  br i1 %cmp25129, label %for.body.lr.ph, label %do.body42

for.body.lr.ph:                                   ; preds = %if.end19
  %9 = bitcast %struct.stack_st* %call16 to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %10 = load %struct.stack_st_EVP_KEYMGMT*, %struct.stack_st_EVP_KEYMGMT** %1, align 8, !tbaa !10
  %call27 = tail call fastcc %struct.evp_keymgmt_st* @sk_EVP_KEYMGMT_value(%struct.stack_st_EVP_KEYMGMT* noundef %10, i32 noundef %i.0130) #7
  br i1 %cmp.not, label %if.then36, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %for.body
  %call30 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %call27, i8* noundef nonnull %keytype) #5
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %lor.lhs.false31, label %if.then36

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  br i1 %tobool32.not, label %for.inc, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %lor.lhs.false31
  %call34 = tail call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %call27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.inc, label %if.then36

if.then36:                                        ; preds = %land.lhs.true33, %lor.lhs.false29, %for.body
  %call37 = tail call i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef %call27, void (i8*, i8*)* noundef nonnull @collect_name, i8* noundef nonnull %9) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %if.then36
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_decoder_ctx_setup_for_pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786691, i8* noundef null) #5
  br label %err

for.inc:                                          ; preds = %if.then36, %land.lhs.true33, %lor.lhs.false31
  %inc = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, %call24
  br i1 %exitcond.not, label %do.body42, label %for.body, !llvm.loop !18

do.body42:                                        ; preds = %for.inc, %if.end19
  %11 = bitcast %struct.collect_decoder_data_st* %collect_decoder_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8
  %12 = getelementptr inbounds %struct.collect_decoder_data_st, %struct.collect_decoder_data_st* %collect_decoder_data, i64 0, i32 2
  %13 = bitcast i32* %12 to i64*
  store i64 0, i64* %13, align 8
  %14 = bitcast %struct.collect_decoder_data_st* %collect_decoder_data to %struct.stack_st**
  store %struct.stack_st* %call16, %struct.stack_st** %14, align 8, !tbaa !20
  %ctx47 = getelementptr inbounds %struct.collect_decoder_data_st, %struct.collect_decoder_data_st* %collect_decoder_data, i64 0, i32 1
  store %struct.ossl_decoder_ctx_st* %ctx, %struct.ossl_decoder_ctx_st** %ctx47, align 8, !tbaa !22
  call void @OSSL_DECODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %libctx, void (%struct.ossl_decoder_st*, i8*)* noundef nonnull @collect_decoder, i8* noundef nonnull %11) #5
  %call48 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call48) #5
  %error_occurred = getelementptr inbounds %struct.collect_decoder_data_st, %struct.collect_decoder_data_st* %collect_decoder_data, i64 0, i32 3
  %bf.load = load i8, i8* %error_occurred, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool49.not = icmp eq i8 %bf.clear, 0
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8
  br i1 %tobool49.not, label %cleanup.cont58, label %err

cleanup.cont58:                                   ; preds = %do.body42
  %call59 = call i32 @OSSL_DECODER_CTX_get_num_decoders(%struct.ossl_decoder_ctx_st* noundef %ctx) #5
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end72, label %if.then61

if.then61:                                        ; preds = %cleanup.cont58
  %call62 = call i32 @OSSL_DECODER_CTX_set_construct(%struct.ossl_decoder_ctx_st* noundef %ctx, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* noundef nonnull @decoder_construct_pkey) #5
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.then61
  %call65 = call i32 @OSSL_DECODER_CTX_set_construct_data(%struct.ossl_decoder_ctx_st* noundef %ctx, i8* noundef nonnull %call5) #5
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %call68 = call i32 @OSSL_DECODER_CTX_set_cleanup(%struct.ossl_decoder_ctx_st* noundef %ctx, void (i8*)* noundef nonnull @decoder_clean_pkey_construct_arg) #5
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false67, %cleanup.cont58
  %15 = phi i8* [ %call5, %cleanup.cont58 ], [ null, %lor.lhs.false67 ]
  br label %err

err:                                              ; preds = %cleanup, %do.body42, %if.then61, %lor.lhs.false64, %lor.lhs.false67, %if.end72, %if.then18
  %ok.0 = phi i32 [ 0, %if.then18 ], [ 0, %cleanup ], [ 0, %do.body42 ], [ 1, %if.end72 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false64 ], [ 0, %if.then61 ]
  %names.1 = phi %struct.stack_st_OPENSSL_CSTRING* [ null, %if.then18 ], [ %2, %cleanup ], [ null, %do.body42 ], [ null, %if.end72 ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false64 ], [ null, %if.then61 ]
  %16 = phi i8* [ %call5, %if.then18 ], [ %call5, %cleanup ], [ %call5, %do.body42 ], [ %15, %if.end72 ], [ %call5, %lor.lhs.false67 ], [ %call5, %lor.lhs.false64 ], [ %call5, %if.then61 ]
  call void @decoder_clean_pkey_construct_arg(i8* noundef %16) #7
  %call73 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %names.1) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call73) #5
  ret i32 %ok.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_KEYMGMT* @sk_EVP_KEYMGMT_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_KEYMGMT*
  ret %struct.stack_st_EVP_KEYMGMT* %0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @EVP_KEYMGMT_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.evp_keymgmt_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @collect_keymgmt(%struct.evp_keymgmt_st* noundef %keymgmt, i8* noundef %arg) #0 {
entry:
  %call = tail call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %keymgmt) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %arg to %struct.stack_st_EVP_KEYMGMT*
  %call1 = tail call fastcc i32 @sk_EVP_KEYMGMT_push(%struct.stack_st_EVP_KEYMGMT* noundef %0, %struct.evp_keymgmt_st* noundef %keymgmt) #7
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  tail call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %keymgmt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEYMGMT_num(%struct.stack_st_EVP_KEYMGMT* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_keymgmt_st* @sk_EVP_KEYMGMT_value(%struct.stack_st_EVP_KEYMGMT* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to %struct.evp_keymgmt_st*
  ret %struct.evp_keymgmt_st* %1
}

declare i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @collect_name(i8* noundef %name, i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.stack_st_OPENSSL_CSTRING*
  %call = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %0) #7
  %call2 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef %name) #5
  ret void
}

declare void @OSSL_DECODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.ossl_decoder_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @collect_decoder(%struct.ossl_decoder_st* noundef %decoder, i8* nocapture noundef %arg) #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef %decoder) #5
  %call1 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call) #5
  %0 = getelementptr inbounds i8, i8* %arg, i64 20
  %bf.load = load i8, i8* %0, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %cleanup64

if.end:                                           ; preds = %entry
  %names = bitcast i8* %arg to %struct.stack_st_OPENSSL_CSTRING**
  %1 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !20
  %cmp = icmp eq %struct.stack_st_OPENSSL_CSTRING* %1, null
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %0, align 4
  br label %cleanup64

if.end6:                                          ; preds = %if.end
  %does_selection = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 7
  %2 = load i32 (i8*, i32)*, i32 (i8*, i32)** %does_selection, align 8, !tbaa !23
  %cmp7.not = icmp eq i32 (i8*, i32)* %2, null
  br i1 %cmp7.not, label %do.body, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %ctx = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %ctx to %struct.ossl_decoder_ctx_st**
  %4 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %3, align 8, !tbaa !22
  %selection = getelementptr inbounds %struct.ossl_decoder_ctx_st, %struct.ossl_decoder_ctx_st* %4, i64 0, i32 2
  %5 = load i32, i32* %selection, align 8, !tbaa !13
  %call9 = tail call i32 %2(i8* noundef %call1, i32 noundef %5) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup64, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !20
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end6
  %6 = phi %struct.stack_st_OPENSSL_CSTRING* [ %.pre, %land.lhs.true.do.body_crit_edge ], [ %1, %if.end6 ]
  %call14 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %6) #7
  %call15 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call14) #5
  %cmp16103.not = icmp eq i32 %call15, 0
  br i1 %cmp16103.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body
  %umax = sext i32 %call15 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc59, %umax
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !26

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.0104 = phi i64 [ %inc59, %for.cond ], [ 0, %for.body.preheader ]
  %7 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !20
  %call19 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %7) #7
  %conv20 = trunc i64 %i.0104 to i32
  %call21 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call19, i32 noundef %conv20) #5
  %call22 = tail call i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef %decoder, i8* noundef %call21) #5
  %tobool23.not = icmp eq i32 %call22, 0
  %inc59 = add nuw i64 %i.0104, 1
  br i1 %tobool23.not, label %for.cond, label %if.then24

if.then24:                                        ; preds = %for.body
  %newctx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 1
  %8 = load i8* (i8*)*, i8* (i8*)** %newctx, align 8, !tbaa !27
  %call25 = tail call i8* %8(i8* noundef %call1) #5
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.then24
  %bf.load30 = load i8, i8* %0, align 4
  %bf.set32 = or i8 %bf.load30, 1
  store i8 %bf.set32, i8* %0, align 4
  br label %cleanup64

if.end33:                                         ; preds = %if.then24
  %call34 = tail call %struct.ossl_decoder_instance_st* @ossl_decoder_instance_new(%struct.ossl_decoder_st* noundef nonnull %decoder, i8* noundef nonnull %call25) #5
  %cmp35 = icmp eq %struct.ossl_decoder_instance_st* %call34, null
  br i1 %cmp35, label %if.then37, label %do.body43

if.then37:                                        ; preds = %if.end33
  %freectx = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %decoder, i64 0, i32 2
  %9 = load void (i8*)*, void (i8*)** %freectx, align 8, !tbaa !28
  tail call void %9(i8* noundef nonnull %call25) #5
  %bf.load39 = load i8, i8* %0, align 4
  %bf.set41 = or i8 %bf.load39, 1
  store i8 %bf.set41, i8* %0, align 4
  br label %cleanup64

do.body43:                                        ; preds = %if.end33
  %ctx47 = getelementptr inbounds i8, i8* %arg, i64 8
  %10 = bitcast i8* %ctx47 to %struct.ossl_decoder_ctx_st**
  %11 = load %struct.ossl_decoder_ctx_st*, %struct.ossl_decoder_ctx_st** %10, align 8, !tbaa !22
  %call48 = tail call i32 @ossl_decoder_ctx_add_decoder_inst(%struct.ossl_decoder_ctx_st* noundef %11, %struct.ossl_decoder_instance_st* noundef nonnull %call34) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end55

if.then50:                                        ; preds = %do.body43
  tail call void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef nonnull %call34) #5
  %bf.load52 = load i8, i8* %0, align 4
  %bf.set54 = or i8 %bf.load52, 1
  store i8 %bf.set54, i8* %0, align 4
  br label %cleanup64

if.end55:                                         ; preds = %do.body43
  %total = getelementptr inbounds i8, i8* %arg, i64 16
  %12 = bitcast i8* %total to i32*
  %13 = load i32, i32* %12, align 8, !tbaa !29
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %12, align 8, !tbaa !29
  br label %cleanup64

for.end:                                          ; preds = %for.cond, %do.body
  %bf.load61 = load i8, i8* %0, align 4
  %bf.clear62 = and i8 %bf.load61, -2
  store i8 %bf.clear62, i8* %0, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %if.end55, %if.then50, %if.then37, %if.then28, %land.lhs.true, %entry, %for.end, %if.then2
  ret void
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OSSL_DECODER_CTX_get_num_decoders(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_DECODER_CTX_set_construct(%struct.ossl_decoder_ctx_st* noundef, i32 (%struct.ossl_decoder_instance_st*, %struct.ossl_param_st*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @decoder_construct_pkey(%struct.ossl_decoder_instance_st* noundef %decoder_inst, %struct.ossl_param_st* noundef %params, i8* nocapture noundef %construct_data) #0 {
entry:
  %object_type = alloca i8*, align 8
  %import_data = alloca %struct.evp_keymgmt_util_try_import_data_st, align 8
  %call = tail call %struct.ossl_decoder_st* @OSSL_DECODER_INSTANCE_get_decoder(%struct.ossl_decoder_instance_st* noundef %decoder_inst) #5
  %call1 = tail call i8* @OSSL_DECODER_INSTANCE_get_decoder_ctx(%struct.ossl_decoder_instance_st* noundef %decoder_inst) #5
  %call2 = tail call %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef %call) #5
  %call3 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #5
  %cmp.not = icmp eq %struct.ossl_param_st* %call3, null
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast i8** %object_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %object_type, align 8, !tbaa !30
  %call4 = call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef nonnull %call3, i8** noundef nonnull %object_type, i64 noundef 0) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup64.critedge, label %if.end

if.end:                                           ; preds = %if.then
  %object_type6 = getelementptr inbounds i8, i8* %construct_data, i64 32
  %1 = bitcast i8* %object_type6 to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !31
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 96) #5
  %3 = load i8*, i8** %object_type, align 8, !tbaa !30
  store i8* %3, i8** %1, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %call9 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)) #5
  %cmp10 = icmp eq %struct.ossl_param_st* %call9, null
  br i1 %cmp10, label %cleanup64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 1
  %4 = load i32, i32* %data_type, align 8, !tbaa !32
  %cmp11.not = icmp eq i32 %4, 5
  br i1 %cmp11.not, label %if.end13, label %cleanup64

if.end13:                                         ; preds = %lor.lhs.false
  %data14 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 2
  %5 = load i8*, i8** %data14, align 8, !tbaa !34
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call9, i64 0, i32 3
  %6 = load i64, i64* %data_size, align 8, !tbaa !35
  %keymgmts = getelementptr inbounds i8, i8* %construct_data, i64 24
  %7 = bitcast i8* %keymgmts to %struct.stack_st_EVP_KEYMGMT**
  %8 = load %struct.stack_st_EVP_KEYMGMT*, %struct.stack_st_EVP_KEYMGMT** %7, align 8, !tbaa !10
  %call15 = call fastcc i32 @sk_EVP_KEYMGMT_num(%struct.stack_st_EVP_KEYMGMT* noundef %8) #7
  %cmp16140 = icmp sgt i32 %call15, 0
  br i1 %cmp16140, label %for.body.lr.ph, label %if.else

for.body.lr.ph:                                   ; preds = %if.end13
  %object_type24 = getelementptr inbounds i8, i8* %construct_data, i64 32
  %9 = bitcast i8* %object_type24 to i8**
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %10 = load %struct.stack_st_EVP_KEYMGMT*, %struct.stack_st_EVP_KEYMGMT** %7, align 8, !tbaa !10
  %call18 = call fastcc %struct.evp_keymgmt_st* @sk_EVP_KEYMGMT_value(%struct.stack_st_EVP_KEYMGMT* noundef %10, i32 noundef %i.0141) #7
  %call19 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %call18) #5
  %cmp20 = icmp eq %struct.ossl_provider_st* %call19, %call2
  br i1 %cmp20, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call21 = call i32 @evp_keymgmt_has_load(%struct.evp_keymgmt_st* noundef %call18) #5
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** %9, align 8, !tbaa !31
  %call25 = call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %call18, i8* noundef %11) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %if.then30

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true23
  %inc = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc, %call15
  br i1 %exitcond.not, label %if.else, label %for.body, !llvm.loop !36

if.then30:                                        ; preds = %land.lhs.true23
  %call31 = call i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef %call18) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup64, label %if.end41

if.else:                                          ; preds = %for.inc, %if.end13
  %libctx = bitcast i8* %construct_data to %struct.ossl_lib_ctx_st**
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !12
  %object_type35 = getelementptr inbounds i8, i8* %construct_data, i64 32
  %13 = bitcast i8* %object_type35 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !31
  %propq = getelementptr inbounds i8, i8* %construct_data, i64 8
  %15 = bitcast i8* %propq to i8**
  %16 = load i8*, i8** %15, align 8, !tbaa !4
  %call36 = call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %12, i8* noundef %14, i8* noundef %16) #5
  %cmp37.not = icmp eq %struct.evp_keymgmt_st* %call36, null
  br i1 %cmp37.not, label %if.end61, label %if.then43

if.end41:                                         ; preds = %if.then30
  %cmp42.not = icmp eq %struct.evp_keymgmt_st* %call18, null
  br i1 %cmp42.not, label %if.end61, label %if.then45

if.then43:                                        ; preds = %if.else
  %call39 = call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %call36) #5
  %cmp44 = icmp eq %struct.ossl_provider_st* %call39, %call2
  br i1 %cmp44, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end41, %if.then43
  %keymgmt.2138147 = phi %struct.evp_keymgmt_st* [ %call36, %if.then43 ], [ %call18, %if.end41 ]
  %call46 = call i8* @evp_keymgmt_load(%struct.evp_keymgmt_st* noundef nonnull %keymgmt.2138147, i8* noundef %5, i64 noundef %6) #5
  br label %if.end54

if.else47:                                        ; preds = %if.then43
  %17 = bitcast %struct.evp_keymgmt_util_try_import_data_st* %import_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #8
  %keymgmt48 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 0
  store %struct.evp_keymgmt_st* %call36, %struct.evp_keymgmt_st** %keymgmt48, align 8, !tbaa !37
  %keydata49 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 1
  store i8* null, i8** %keydata49, align 8, !tbaa !39
  %selection = getelementptr inbounds i8, i8* %construct_data, i64 16
  %18 = bitcast i8* %selection to i32*
  %19 = load i32, i32* %18, align 8, !tbaa !17
  %selection50 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 2
  store i32 %19, i32* %selection50, align 8, !tbaa !40
  %export_object = getelementptr inbounds %struct.ossl_decoder_st, %struct.ossl_decoder_st* %call, i64 0, i32 9
  %20 = load i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %export_object, align 8, !tbaa !41
  %call51 = call i32 %20(i8* noundef %call1, i8* noundef %5, i64 noundef %6, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @evp_keymgmt_util_try_import, i8* noundef nonnull %17) #5
  %21 = load i8*, i8** %keydata49, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #8
  br label %if.end54

if.end54:                                         ; preds = %if.else47, %if.then45
  %keymgmt.2138148 = phi %struct.evp_keymgmt_st* [ %keymgmt.2138147, %if.then45 ], [ %call36, %if.else47 ]
  %keydata.0 = phi i8* [ %call46, %if.then45 ], [ %21, %if.else47 ]
  %cmp55.not = icmp eq i8* %keydata.0, null
  br i1 %cmp55.not, label %if.end60, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end54
  %call57 = call %struct.evp_pkey_st* @evp_keymgmt_util_make_pkey(%struct.evp_keymgmt_st* noundef nonnull %keymgmt.2138148, i8* noundef nonnull %keydata.0) #5
  %cmp58 = icmp eq %struct.evp_pkey_st* %call57, null
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %land.lhs.true56
  call void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef nonnull %keymgmt.2138148, i8* noundef nonnull %keydata.0) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %land.lhs.true56, %if.end54
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %if.then59 ], [ %call57, %land.lhs.true56 ], [ null, %if.end54 ]
  %object = getelementptr inbounds i8, i8* %construct_data, i64 40
  %22 = bitcast i8* %object to %struct.evp_pkey_st***
  %23 = load %struct.evp_pkey_st**, %struct.evp_pkey_st*** %22, align 8, !tbaa !11
  store %struct.evp_pkey_st* %pkey.0, %struct.evp_pkey_st** %23, align 8, !tbaa !30
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef nonnull %keymgmt.2138148) #5
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.end60, %if.end41
  %object62 = getelementptr inbounds i8, i8* %construct_data, i64 40
  %24 = bitcast i8* %object62 to i8***
  %25 = load i8**, i8*** %24, align 8, !tbaa !11
  %26 = load i8*, i8** %25, align 8, !tbaa !30
  %cmp63 = icmp ne i8* %26, null
  %conv = zext i1 %cmp63 to i32
  br label %cleanup64

cleanup64.critedge:                               ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  br label %cleanup64

cleanup64:                                        ; preds = %if.then30, %if.end8, %lor.lhs.false, %cleanup64.critedge, %if.end61
  %retval.1 = phi i32 [ %conv, %if.end61 ], [ 0, %cleanup64.critedge ], [ 0, %lor.lhs.false ], [ 0, %if.end8 ], [ 0, %if.then30 ]
  ret i32 %retval.1
}

declare i32 @OSSL_DECODER_CTX_set_construct_data(%struct.ossl_decoder_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_DECODER_CTX_set_cleanup(%struct.ossl_decoder_ctx_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @decoder_clean_pkey_construct_arg(i8* noundef %construct_data) #0 {
entry:
  %cmp.not = icmp eq i8* %construct_data, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %keymgmts = getelementptr inbounds i8, i8* %construct_data, i64 24
  %0 = bitcast i8* %keymgmts to %struct.stack_st_EVP_KEYMGMT**
  %1 = load %struct.stack_st_EVP_KEYMGMT*, %struct.stack_st_EVP_KEYMGMT** %0, align 8, !tbaa !10
  tail call fastcc void @sk_EVP_KEYMGMT_pop_free(%struct.stack_st_EVP_KEYMGMT* noundef %1) #7
  %propq = getelementptr inbounds i8, i8* %construct_data, i64 8
  %2 = bitcast i8* %propq to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 193) #5
  %object_type = getelementptr inbounds i8, i8* %construct_data, i64 32
  %4 = bitcast i8* %object_type to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !31
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 194) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %construct_data, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 195) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef %pkey, i8* noundef %input_type, i8* noundef %input_structure, i8* noundef %keytype, i32 noundef %selection, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new() #5
  %cmp = icmp eq %struct.ossl_decoder_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_DECODER_CTX_new_for_pkey, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 60, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @OSSL_DECODER_CTX_set_input_type(%struct.ossl_decoder_ctx_st* noundef nonnull %call, i8* noundef %input_type) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @OSSL_DECODER_CTX_set_input_structure(%struct.ossl_decoder_ctx_st* noundef nonnull %call, i8* noundef %input_structure) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end18, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @OSSL_DECODER_CTX_set_selection(%struct.ossl_decoder_ctx_st* noundef nonnull %call, i32 noundef %selection) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end18, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %call8 = tail call i32 @ossl_decoder_ctx_setup_for_pkey(%struct.ossl_decoder_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef %pkey, i8* noundef %keytype, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propquery) #7
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end18, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %call11 = tail call i32 @OSSL_DECODER_CTX_add_extra(%struct.ossl_decoder_ctx_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propquery) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %land.lhs.true10, %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %do.body
  tail call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true10, %if.end18, %if.then
  %retval.0 = phi %struct.ossl_decoder_ctx_st* [ null, %if.then ], [ null, %if.end18 ], [ %call, %land.lhs.true10 ]
  ret %struct.ossl_decoder_ctx_st* %retval.0
}

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new() local_unnamed_addr #1

declare i32 @OSSL_DECODER_CTX_set_input_type(%struct.ossl_decoder_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_DECODER_CTX_set_input_structure(%struct.ossl_decoder_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_DECODER_CTX_set_selection(%struct.ossl_decoder_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OSSL_DECODER_CTX_add_extra(%struct.ossl_decoder_ctx_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_KEYMGMT_up_ref(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_KEYMGMT_push(%struct.stack_st_EVP_KEYMGMT* noundef %sk, %struct.evp_keymgmt_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_keymgmt_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @OSSL_DECODER_get0_provider(%struct.ossl_decoder_st* noundef) local_unnamed_addr #1

declare i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i32 @OSSL_DECODER_is_a(%struct.ossl_decoder_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.ossl_decoder_instance_st* @ossl_decoder_instance_new(%struct.ossl_decoder_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @ossl_decoder_ctx_add_decoder_inst(%struct.ossl_decoder_ctx_st* noundef, %struct.ossl_decoder_instance_st* noundef) local_unnamed_addr #1

declare void @ossl_decoder_instance_free(%struct.ossl_decoder_instance_st* noundef) local_unnamed_addr #1

declare %struct.ossl_decoder_st* @OSSL_DECODER_INSTANCE_get_decoder(%struct.ossl_decoder_instance_st* noundef) local_unnamed_addr #1

declare i8* @OSSL_DECODER_INSTANCE_get_decoder_ctx(%struct.ossl_decoder_instance_st* noundef) local_unnamed_addr #1

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

declare i32 @evp_keymgmt_has_load(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

declare %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i8* @evp_keymgmt_load(%struct.evp_keymgmt_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @evp_keymgmt_util_try_import(%struct.ossl_param_st* noundef, i8* noundef) #1

declare %struct.evp_pkey_st* @evp_keymgmt_util_make_pkey(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @evp_keymgmt_freedata(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_KEYMGMT_pop_free(%struct.stack_st_EVP_KEYMGMT* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_EVP_KEYMGMT* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_keymgmt_st*)* @EVP_KEYMGMT_free to void (i8*)*)) #5
  ret void
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"decoder_pkey_data_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 24}
!11 = !{!5, !6, i64 40}
!12 = !{!5, !6, i64 0}
!13 = !{!14, !9, i64 16}
!14 = !{!"ossl_decoder_ctx_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !15, i64 56}
!15 = !{!"ossl_passphrase_data_st", !7, i64 0, !7, i64 8, !9, i64 24, !6, i64 32, !16, i64 40}
!16 = !{!"long", !7, i64 0}
!17 = !{!5, !9, i64 16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !6, i64 0}
!21 = !{!"collect_decoder_data_st", !6, i64 0, !6, i64 8, !9, i64 16, !9, i64 20}
!22 = !{!21, !6, i64 8}
!23 = !{!24, !6, i64 104}
!24 = !{!"ossl_decoder_st", !25, i64 0, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120}
!25 = !{!"ossl_endecode_base_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !6, i64 48}
!26 = distinct !{!26, !19}
!27 = !{!24, !6, i64 56}
!28 = !{!24, !6, i64 64}
!29 = !{!21, !9, i64 16}
!30 = !{!6, !6, i64 0}
!31 = !{!5, !6, i64 32}
!32 = !{!33, !9, i64 8}
!33 = !{!"ossl_param_st", !6, i64 0, !9, i64 8, !6, i64 16, !16, i64 24, !16, i64 32}
!34 = !{!33, !6, i64 16}
!35 = !{!33, !16, i64 24}
!36 = distinct !{!36, !19}
!37 = !{!38, !6, i64 0}
!38 = !{!"evp_keymgmt_util_try_import_data_st", !6, i64 0, !6, i64 8, !9, i64 16}
!39 = !{!38, !6, i64 8}
!40 = !{!38, !9, i64 16}
!41 = !{!24, !6, i64 120}
