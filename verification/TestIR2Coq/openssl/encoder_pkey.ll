; ModuleID = 'crypto/encode_decode/encoder_pkey.c'
source_filename = "crypto/encode_decode/encoder_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_encoder_ctx_st = type { i32, i8*, i8*, %struct.stack_st_OSSL_ENCODER_INSTANCE*, i8* (%struct.ossl_encoder_instance_st*, i8*)*, void (i8*)*, i8*, %struct.ossl_passphrase_data_st }
%struct.stack_st_OSSL_ENCODER_INSTANCE = type opaque
%struct.ossl_encoder_instance_st = type { %struct.ossl_encoder_st*, i8*, i8*, i8* }
%struct.ossl_encoder_st = type { %struct.ossl_endecode_base_st, i8* (i8*)*, void (i8*)*, i32 (%struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, i32)*, i32 (i8*, %struct.ossl_core_bio_st*, i8*, %struct.ossl_param_st*, i32, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, void (i8*)* }
%struct.ossl_endecode_base_st = type { %struct.ossl_provider_st*, i32, i8*, %struct.ossl_algorithm_st*, %struct.ossl_property_list_st*, i32, i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_property_list_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_core_bio_st = type opaque
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
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.3 = type { i32, i32, i32 }
%struct.collected_encoder_st = type { %struct.stack_st_OPENSSL_CSTRING*, i8*, i8*, %struct.ossl_provider_st*, %struct.ossl_encoder_ctx_st*, i8, i32 }
%struct.stack_st_OPENSSL_CSTRING = type opaque
%struct.collected_names_st = type { %struct.stack_st_OPENSSL_CSTRING*, i8 }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"crypto/encode_decode/encoder_pkey.c\00", align 1
@__func__.OSSL_ENCODER_CTX_new_for_pkey = private unnamed_addr constant [30 x i8] c"OSSL_ENCODER_CTX_new_for_pkey\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"The passed EVP_PKEY must be assigned a key\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"save-parameters\00", align 1
@__func__.ossl_encoder_ctx_setup_for_pkey = private unnamed_addr constant [32 x i8] c"ossl_encoder_ctx_setup_for_pkey\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %ctx, i8* noundef %cipher_name, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params3 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %cipher_name, i64 noundef 0) #7
  %arrayidx1 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %1 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #6
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %propquery, i64 noundef 0) #7
  %2 = bitcast %struct.ossl_param_st* %arrayidx1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #6
  %call = call i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef nonnull %arrayidx) #7
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %ctx, i8* noundef %kstr, i64 noundef %klen) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_passphrase(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i8* noundef %kstr, i64 noundef %klen) #7
  ret i32 %call
}

declare i32 @ossl_pw_set_passphrase(%struct.ossl_passphrase_data_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_passphrase_ui(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, %struct.ui_method_st* noundef %ui_method, i8* noundef %ui_data) #7
  ret i32 %call
}

declare i32 @ossl_pw_set_ui_method(%struct.ossl_passphrase_data_st* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_pem_password_cb(%struct.ossl_encoder_ctx_st* noundef %ctx, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i32 (i8*, i32, i32, i8*)* noundef %cb, i8* noundef %cbarg) #7
  ret i32 %call
}

declare i32 @ossl_pw_set_pem_password_cb(%struct.ossl_passphrase_data_st* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_ENCODER_CTX_set_passphrase_cb(%struct.ossl_encoder_ctx_st* noundef %ctx, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) local_unnamed_addr #0 {
entry:
  %pwdata = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 7
  %call = tail call i32 @ossl_pw_set_ossl_passphrase_cb(%struct.ossl_passphrase_data_st* noundef nonnull %pwdata, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %cbarg) #7
  ret i32 %call
}

declare i32 @ossl_pw_set_ossl_passphrase_cb(%struct.ossl_passphrase_data_st* noundef, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %pkey, i32 noundef %selection, i8* noundef %output_type, i8* noundef %output_struct, i8* noundef %propquery) local_unnamed_addr #0 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %save_parameters = alloca i32, align 4
  %cmp = icmp eq %struct.evp_pkey_st* %pkey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_ENCODER_CTX_new_for_pkey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 5, i32 0
  %0 = load i8*, i8** %ptr, align 8, !tbaa !13
  %cmp2.not = icmp eq i8* %0, null
  br i1 %cmp2.not, label %lor.lhs.false, label %if.end5

lor.lhs.false:                                    ; preds = %if.end
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 14
  %1 = load i8*, i8** %keydata, align 8, !tbaa !14
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_ENCODER_CTX_new_for_pkey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 524550, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false, %if.end
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new() #7
  %cmp6 = icmp eq %struct.ossl_encoder_ctx_st* %call, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.OSSL_ENCODER_CTX_new_for_pkey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %2 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp9.not = icmp eq %struct.evp_keymgmt_st* %2, null
  br i1 %cmp9.not, label %do.body, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call12 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %2) #7
  %call13 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call12) #7
  br label %do.body

do.body:                                          ; preds = %if.end8, %if.then10
  %libctx.0 = phi %struct.ossl_lib_ctx_st* [ %call13, %if.then10 ], [ null, %if.end8 ]
  %call15 = tail call i32 @OSSL_ENCODER_CTX_set_output_type(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i8* noundef %output_type) #7
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end36, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %cmp16 = icmp eq i8* %output_struct, null
  br i1 %cmp16, label %land.lhs.true20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %land.lhs.true
  %call18 = tail call i32 @OSSL_ENCODER_CTX_set_output_structure(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i8* noundef nonnull %output_struct) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end36, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %lor.lhs.false17, %land.lhs.true
  %call21 = tail call i32 @OSSL_ENCODER_CTX_set_selection(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i32 noundef %selection) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end36, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %call24 = tail call fastcc i32 @ossl_encoder_ctx_setup_for_pkey(%struct.ossl_encoder_ctx_st* noundef nonnull %call, %struct.evp_pkey_st* noundef nonnull %pkey, i32 noundef %selection) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end36, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %call27 = tail call i32 @OSSL_ENCODER_CTX_add_extra(%struct.ossl_encoder_ctx_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %libctx.0, i8* noundef %propquery) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end36, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %3 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #6
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %4 = bitcast i32* %save_parameters to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %save_parameters30 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 10
  %5 = load i32, i32* %save_parameters30, align 8, !tbaa !19
  store i32 %5, i32* %save_parameters, align 4, !tbaa !9
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params59 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params59, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %save_parameters) #7
  %call31 = call i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef nonnull %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #6
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true26, %land.lhs.true23, %land.lhs.true20, %lor.lhs.false17, %do.body
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then29, %if.then7, %if.then4, %if.then
  %retval.0 = phi %struct.ossl_encoder_ctx_st* [ null, %if.then ], [ null, %if.then7 ], [ %call, %if.then29 ], [ null, %if.end36 ], [ null, %if.then4 ]
  ret %struct.ossl_encoder_ctx_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new() local_unnamed_addr #3

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_set_output_type(%struct.ossl_encoder_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_set_output_structure(%struct.ossl_encoder_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_set_selection(%struct.ossl_encoder_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_encoder_ctx_setup_for_pkey(%struct.ossl_encoder_ctx_st* noundef %ctx, %struct.evp_pkey_st* noundef %pkey, i32 noundef %selection) unnamed_addr #0 {
entry:
  %encoder_data = alloca %struct.collected_encoder_st, align 8
  %keymgmt_data = alloca %struct.collected_names_st, align 8
  %cmp.not = icmp eq %struct.ossl_encoder_ctx_st* %ctx, null
  %cmp3.not = icmp eq %struct.evp_pkey_st* %pkey, null
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_encoder_ctx_setup_for_pkey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup76

if.end:                                           ; preds = %entry
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %pkey, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp7.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp7.not, label %cleanup76, label %if.end12

if.end12:                                         ; preds = %if.end
  %call = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %0) #7
  %call11 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call) #7
  %.pr = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp14.not = icmp eq %struct.evp_keymgmt_st* %.pr, null
  br i1 %cmp14.not, label %cleanup76, label %if.then16

if.then16:                                        ; preds = %if.end12
  %1 = bitcast %struct.collected_encoder_st* %encoder_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #6
  %2 = bitcast %struct.collected_names_st* %keymgmt_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6
  %call17 = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 247) #7
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.then16
  %call22 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %names = getelementptr inbounds %struct.collected_names_st, %struct.collected_names_st* %keymgmt_data, i64 0, i32 0
  %3 = bitcast %struct.collected_names_st* %keymgmt_data to %struct.stack_st**
  store %struct.stack_st* %call22, %struct.stack_st** %3, align 8, !tbaa !20
  %error_occurred = getelementptr inbounds %struct.collected_names_st, %struct.collected_names_st* %keymgmt_data, i64 0, i32 1
  store i8 0, i8* %error_occurred, align 8
  %4 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %call24 = call i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef %4, void (i8*, i8*)* noundef nonnull @collect_name, i8* noundef nonnull %2) #7
  %bf.load26 = load i8, i8* %error_occurred, align 8
  %bf.clear27 = and i8 %bf.load26, 1
  %tobool.not = icmp eq i8 %bf.clear27, 0
  %5 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !20
  br i1 %tobool.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end21
  %call30 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %5) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #7
  br label %err.thread

if.end31:                                         ; preds = %if.end21
  %names33 = getelementptr inbounds %struct.collected_encoder_st, %struct.collected_encoder_st* %encoder_data, i64 0, i32 0
  store %struct.stack_st_OPENSSL_CSTRING* %5, %struct.stack_st_OPENSSL_CSTRING** %names33, align 8, !tbaa !22
  %output_type = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %ctx, i64 0, i32 1
  %6 = bitcast i8** %output_type to <2 x i8*>*
  %7 = load <2 x i8*>, <2 x i8*>* %6, align 8, !tbaa !5
  %output_structure35 = getelementptr inbounds %struct.collected_encoder_st, %struct.collected_encoder_st* %encoder_data, i64 0, i32 1
  %shuffle = shufflevector <2 x i8*> %7, <2 x i8*> poison, <2 x i32> <i32 1, i32 0>
  %8 = bitcast i8** %output_structure35 to <2 x i8*>*
  store <2 x i8*> %shuffle, <2 x i8*>* %8, align 8, !tbaa !5
  %error_occurred36 = getelementptr inbounds %struct.collected_encoder_st, %struct.collected_encoder_st* %encoder_data, i64 0, i32 6
  store i32 0, i32* %error_occurred36, align 4, !tbaa !24
  %keymgmt_prov = getelementptr inbounds %struct.collected_encoder_st, %struct.collected_encoder_st* %encoder_data, i64 0, i32 3
  store %struct.ossl_provider_st* %call, %struct.ossl_provider_st** %keymgmt_prov, align 8, !tbaa !25
  %ctx37 = getelementptr inbounds %struct.collected_encoder_st, %struct.collected_encoder_st* %encoder_data, i64 0, i32 4
  store %struct.ossl_encoder_ctx_st* %ctx, %struct.ossl_encoder_ctx_st** %ctx37, align 8, !tbaa !26
  %flag_find_same_provider = getelementptr inbounds %struct.collected_encoder_st, %struct.collected_encoder_st* %encoder_data, i64 0, i32 5
  store i8 0, i8* %flag_find_same_provider, align 8
  call void @OSSL_ENCODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call11, void (%struct.ossl_encoder_st*, i8*)* noundef nonnull @collect_encoder, i8* noundef nonnull %1) #7
  %bf.load42 = load i8, i8* %flag_find_same_provider, align 8
  %bf.set44 = or i8 %bf.load42, 1
  store i8 %bf.set44, i8* %flag_find_same_provider, align 8
  call void @OSSL_ENCODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef %call11, void (%struct.ossl_encoder_st*, i8*)* noundef nonnull @collect_encoder, i8* noundef nonnull %1) #7
  %9 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !20
  %call46 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %9) #8
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call46) #7
  %10 = load i32, i32* %error_occurred36, align 4, !tbaa !24
  %tobool48.not = icmp eq i32 %10, 0
  br i1 %tobool48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end31
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_encoder_ctx_setup_for_pkey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #7
  br label %err.thread

if.end52:                                         ; preds = %if.end31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #6
  %call55 = call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx) #7
  %cmp56.not = icmp eq i32 %call55, 0
  br i1 %cmp56.not, label %if.then73, label %if.then58

if.then58:                                        ; preds = %if.end52
  %call59 = call i32 @OSSL_ENCODER_CTX_set_construct(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx, i8* (%struct.ossl_encoder_instance_st*, i8*)* noundef nonnull @encoder_construct_pkey) #7
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then73, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.then58
  %call62 = call i32 @OSSL_ENCODER_CTX_set_construct_data(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx, i8* noundef nonnull %call17) #7
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then73, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %call65 = call i32 @OSSL_ENCODER_CTX_set_cleanup(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx, void (i8*)* noundef nonnull @encoder_destruct_pkey) #7
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then73, label %if.end68

if.end68:                                         ; preds = %lor.lhs.false64
  %pk = bitcast i8* %call17 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %pk, align 8, !tbaa !27
  %selection69 = getelementptr inbounds i8, i8* %call17, i64 8
  %11 = bitcast i8* %selection69 to i32*
  store i32 %selection, i32* %11, align 8, !tbaa !29
  br label %cleanup76

err.thread:                                       ; preds = %if.then28, %if.then49
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #6
  br label %if.then73

err:                                              ; preds = %if.then16
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.ossl_encoder_ctx_setup_for_pkey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 59, i32 noundef 786688, i8* noundef null) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #6
  br label %cleanup76

if.then73:                                        ; preds = %err.thread, %if.end52, %if.then58, %lor.lhs.false61, %lor.lhs.false64
  %ok.013 = phi i32 [ 1, %if.end52 ], [ 0, %if.then58 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false64 ], [ 0, %err.thread ]
  %call74 = call i32 @OSSL_ENCODER_CTX_set_construct_data(%struct.ossl_encoder_ctx_st* noundef nonnull %ctx, i8* noundef null) #7
  call void @CRYPTO_free(i8* noundef nonnull %call17, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef 308) #7
  br label %cleanup76

cleanup76:                                        ; preds = %err, %if.end, %if.end12, %if.end68, %if.then73, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ok.013, %if.then73 ], [ 0, %err ], [ 1, %if.end68 ], [ 1, %if.end12 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @OSSL_ENCODER_CTX_add_extra(%struct.ossl_encoder_ctx_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i32 @EVP_KEYMGMT_names_do_all(%struct.evp_keymgmt_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_name(i8* noundef %name, i8* nocapture noundef %arg) #0 {
entry:
  %0 = getelementptr inbounds i8, i8* %arg, i64 8
  %bf.load = load i8, i8* %0, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %0, align 8
  %names = bitcast i8* %arg to %struct.stack_st_OPENSSL_CSTRING**
  %1 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !20
  %call = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %1) #8
  %call5 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call, i8* noundef %name) #7
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %bf.load9 = load i8, i8* %0, align 8
  %bf.clear10 = and i8 %bf.load9, -2
  store i8 %bf.clear10, i8* %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  ret void
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OSSL_ENCODER_do_all_provided(%struct.ossl_lib_ctx_st* noundef, void (%struct.ossl_encoder_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @collect_encoder(%struct.ossl_encoder_st* noundef %encoder, i8* nocapture noundef %arg) #0 {
entry:
  %error_occurred = getelementptr inbounds i8, i8* %arg, i64 44
  %0 = bitcast i8* %error_occurred to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !24
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup44

if.end:                                           ; preds = %entry
  store i32 1, i32* %0, align 4, !tbaa !24
  %names = bitcast i8* %arg to %struct.stack_st_OPENSSL_CSTRING**
  %2 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !22
  %cmp = icmp eq %struct.stack_st_OPENSSL_CSTRING* %2, null
  br i1 %cmp, label %cleanup44, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef nonnull %2) #8
  %call5 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #7
  %conv = sext i32 %call5 to i64
  %cmp678.not = icmp eq i32 %call5, 0
  br i1 %cmp678.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end3
  %keymgmt_prov = getelementptr inbounds i8, i8* %arg, i64 24
  %3 = bitcast i8* %keymgmt_prov to %struct.ossl_provider_st**
  %4 = getelementptr inbounds i8, i8* %arg, i64 40
  %does_selection = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 7
  %ctx = getelementptr inbounds i8, i8* %arg, i64 32
  %5 = bitcast i8* %ctx to %struct.ossl_encoder_ctx_st**
  %import_object = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %encoder, i64 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph
  %i.079 = phi i64 [ 0, %for.body.lr.ph ], [ %i.079.be, %for.body.backedge ]
  %6 = load %struct.stack_st_OPENSSL_CSTRING*, %struct.stack_st_OPENSSL_CSTRING** %names, align 8, !tbaa !22
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %6) #8
  %conv10 = trunc i64 %i.079 to i32
  %call11 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call9, i32 noundef %conv10) #7
  %call12 = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef %encoder) #7
  %call13 = tail call i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %call12) #7
  %7 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %3, align 8, !tbaa !25
  %cmp14 = icmp ne %struct.ossl_provider_st* %7, %call12
  %bf.load = load i8, i8* %4, align 8
  %8 = and i8 %bf.load, 1
  %9 = icmp ne i8 %8, 0
  %cmp16.not = xor i1 %cmp14, %9
  br i1 %cmp16.not, label %if.end19, label %for.inc

if.end19:                                         ; preds = %for.body
  %call20 = tail call i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* noundef %encoder, i8* noundef %call11) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %10 = load i32 (i8*, i32)*, i32 (i8*, i32)** %does_selection, align 8, !tbaa !30
  %cmp22.not = icmp eq i32 (i8*, i32)* %10, null
  br i1 %cmp22.not, label %lor.lhs.false27, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %5, align 8, !tbaa !26
  %selection = getelementptr inbounds %struct.ossl_encoder_ctx_st, %struct.ossl_encoder_ctx_st* %11, i64 0, i32 0
  %12 = load i32, i32* %selection, align 8, !tbaa !33
  %call25 = tail call i32 %10(i8* noundef %call13, i32 noundef %12) #7
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.inc, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %13 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %3, align 8, !tbaa !25
  %cmp29.not = icmp eq %struct.ossl_provider_st* %13, %call12
  br i1 %cmp29.not, label %cleanup, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %lor.lhs.false27
  %14 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %import_object, align 8, !tbaa !36
  %cmp32 = icmp eq i8* (i8*, i32, %struct.ossl_param_st*)* %14, null
  br i1 %cmp32, label %for.inc, label %cleanup

cleanup:                                          ; preds = %lor.lhs.false27, %land.lhs.true31
  %15 = load %struct.ossl_encoder_ctx_st*, %struct.ossl_encoder_ctx_st** %5, align 8, !tbaa !26
  %call37 = tail call i32 @OSSL_ENCODER_CTX_add_encoder(%struct.ossl_encoder_ctx_st* noundef %15, %struct.ossl_encoder_st* noundef nonnull %encoder) #7
  %tobool38.not.not = icmp eq i32 %call37, 0
  %inc = add nuw i64 %i.079, 1
  %cmp6 = icmp ult i64 %inc, %conv
  %or.cond = select i1 %tobool38.not.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %for.body.backedge, label %for.end

for.inc:                                          ; preds = %if.end19, %land.lhs.true, %land.lhs.true31, %for.body
  %inc.old = add nuw i64 %i.079, 1
  %cmp6.old = icmp ult i64 %inc.old, %conv
  br i1 %cmp6.old, label %for.body.backedge, label %for.end

for.body.backedge:                                ; preds = %for.inc, %cleanup
  %i.079.be = phi i64 [ %inc.old, %for.inc ], [ %inc, %cleanup ]
  br label %for.body, !llvm.loop !37

for.end:                                          ; preds = %for.inc, %cleanup, %if.end3
  store i32 0, i32* %0, align 4, !tbaa !24
  br label %cleanup44

cleanup44:                                        ; preds = %if.end, %entry, %for.end
  ret void
}

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_set_construct(%struct.ossl_encoder_ctx_st* noundef, i8* (%struct.ossl_encoder_instance_st*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @encoder_construct_pkey(%struct.ossl_encoder_instance_st* noundef %encoder_inst, i8* noundef %arg) #0 {
entry:
  %obj = getelementptr inbounds i8, i8* %arg, i64 24
  %0 = bitcast i8* %obj to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !39
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %cleanup19

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef %encoder_inst) #7
  %pk1 = bitcast i8* %arg to %struct.evp_pkey_st**
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk1, align 8, !tbaa !27
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %2, i64 0, i32 13
  %3 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %call2 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef %3) #7
  %call3 = tail call %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef %call) #7
  %cmp4.not = icmp eq %struct.ossl_provider_st* %call2, %call3
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %encoder_inst6 = getelementptr inbounds i8, i8* %arg, i64 16
  %4 = bitcast i8* %encoder_inst6 to %struct.ossl_encoder_instance_st**
  store %struct.ossl_encoder_instance_st* %encoder_inst, %struct.ossl_encoder_instance_st** %4, align 8, !tbaa !40
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %keydata = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %2, i64 0, i32 14
  %6 = load i8*, i8** %keydata, align 8, !tbaa !14
  %selection = getelementptr inbounds i8, i8* %arg, i64 8
  %7 = bitcast i8* %selection to i32*
  %8 = load i32, i32* %7, align 8, !tbaa !29
  %call8 = tail call i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef %5, i8* noundef %6, i32 noundef %8, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @encoder_import_cb, i8* noundef nonnull %arg) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %cleanup19, label %if.end

if.end:                                           ; preds = %if.then5
  %constructed_obj = getelementptr inbounds i8, i8* %arg, i64 32
  %9 = bitcast i8* %constructed_obj to i8**
  br label %if.end13

if.else:                                          ; preds = %if.then
  %keydata11 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %2, i64 0, i32 14
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end
  %storemerge.in = phi i8** [ %keydata11, %if.else ], [ %9, %if.end ]
  %storemerge = load i8*, i8** %storemerge.in, align 8, !tbaa !5
  store i8* %storemerge, i8** %0, align 8, !tbaa !39
  br label %cleanup19

cleanup19:                                        ; preds = %entry, %if.end13, %if.then5
  %retval.1 = phi i8* [ null, %if.then5 ], [ %storemerge, %if.end13 ], [ %1, %entry ]
  ret i8* %retval.1
}

declare i32 @OSSL_ENCODER_CTX_set_construct_data(%struct.ossl_encoder_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_set_cleanup(%struct.ossl_encoder_ctx_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @encoder_destruct_pkey(i8* nocapture noundef %arg) #0 {
entry:
  %encoder_inst = getelementptr inbounds i8, i8* %arg, i64 16
  %0 = bitcast i8* %encoder_inst to %struct.ossl_encoder_instance_st**
  %1 = load %struct.ossl_encoder_instance_st*, %struct.ossl_encoder_instance_st** %0, align 8, !tbaa !40
  %cmp.not = icmp eq %struct.ossl_encoder_instance_st* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef nonnull %1) #7
  %free_object = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call, i64 0, i32 10
  %2 = load void (i8*)*, void (i8*)** %free_object, align 8, !tbaa !41
  %constructed_obj = getelementptr inbounds i8, i8* %arg, i64 32
  %3 = bitcast i8* %constructed_obj to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !42
  tail call void %2(i8* noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %constructed_obj2 = getelementptr inbounds i8, i8* %arg, i64 32
  %5 = bitcast i8* %constructed_obj2 to i8**
  store i8* null, i8** %5, align 8, !tbaa !42
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.ossl_provider_st* @OSSL_ENCODER_get0_provider(%struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_is_a(%struct.ossl_encoder_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @OSSL_ENCODER_CTX_add_encoder(%struct.ossl_encoder_ctx_st* noundef, %struct.ossl_encoder_st* noundef) local_unnamed_addr #3

declare %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef) local_unnamed_addr #3

declare i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @encoder_import_cb(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #0 {
entry:
  %encoder_inst1 = getelementptr inbounds i8, i8* %arg, i64 16
  %0 = bitcast i8* %encoder_inst1 to %struct.ossl_encoder_instance_st**
  %1 = load %struct.ossl_encoder_instance_st*, %struct.ossl_encoder_instance_st** %0, align 8, !tbaa !40
  %call = tail call %struct.ossl_encoder_st* @OSSL_ENCODER_INSTANCE_get_encoder(%struct.ossl_encoder_instance_st* noundef %1) #7
  %call2 = tail call i8* @OSSL_ENCODER_INSTANCE_get_encoder_ctx(%struct.ossl_encoder_instance_st* noundef %1) #7
  %import_object = getelementptr inbounds %struct.ossl_encoder_st, %struct.ossl_encoder_st* %call, i64 0, i32 9
  %2 = load i8* (i8*, i32, %struct.ossl_param_st*)*, i8* (i8*, i32, %struct.ossl_param_st*)** %import_object, align 8, !tbaa !36
  %selection = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %selection to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !29
  %call3 = tail call i8* %2(i8* noundef %call2, i32 noundef %4, %struct.ossl_param_st* noundef %params) #7
  %constructed_obj = getelementptr inbounds i8, i8* %arg, i64 32
  %5 = bitcast i8* %constructed_obj to i8**
  store i8* %call3, i8** %5, align 8, !tbaa !42
  %cmp = icmp ne i8* %call3, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @OSSL_ENCODER_INSTANCE_get_encoder_ctx(%struct.ossl_encoder_instance_st* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{i64 0, i64 8, !5, i64 8, i64 4, !9, i64 16, i64 8, !5, i64 24, i64 8, !11, i64 32, i64 8, !11}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !6, i64 104}
!15 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !10, i64 72, !10, i64 76, !16, i64 80, !6, i64 96, !6, i64 104, !12, i64 112, !6, i64 120, !12, i64 128, !17, i64 136}
!16 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!17 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!18 = !{!15, !6, i64 96}
!19 = !{!15, !10, i64 72}
!20 = !{!21, !6, i64 0}
!21 = !{!"collected_names_st", !6, i64 0, !10, i64 8}
!22 = !{!23, !6, i64 0}
!23 = !{!"collected_encoder_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44}
!24 = !{!23, !10, i64 44}
!25 = !{!23, !6, i64 24}
!26 = !{!23, !6, i64 32}
!27 = !{!28, !6, i64 0}
!28 = !{!"construct_data_st", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!29 = !{!28, !10, i64 8}
!30 = !{!31, !6, i64 104}
!31 = !{!"ossl_encoder_st", !32, i64 0, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128}
!32 = !{!"ossl_endecode_base_st", !6, i64 0, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !6, i64 48}
!33 = !{!34, !10, i64 0}
!34 = !{!"ossl_encoder_ctx_st", !10, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !35, i64 56}
!35 = !{!"ossl_passphrase_data_st", !7, i64 0, !7, i64 8, !10, i64 24, !6, i64 32, !12, i64 40}
!36 = !{!31, !6, i64 120}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!28, !6, i64 24}
!40 = !{!28, !6, i64 16}
!41 = !{!31, !6, i64 128}
!42 = !{!28, !6, i64 32}
