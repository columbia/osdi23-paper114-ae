; ModuleID = 'crypto/asn1/i2d_evp.c'
source_filename = "crypto/asn1/i2d_evp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_and_structure_st = type { i8*, i8* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, {}*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, {}*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
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
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.ossl_encoder_ctx_st = type opaque
%struct.rsa_st = type opaque
%struct.dsa_st = type opaque
%struct.ec_key_st = type opaque

@i2d_KeyParams.output_info = internal constant [2 x %struct.type_and_structure_st] [%struct.type_and_structure_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, %struct.type_and_structure_st zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"crypto/asn1/i2d_evp.c\00", align 1
@__func__.i2d_KeyParams = private unnamed_addr constant [14 x i8] c"i2d_KeyParams\00", align 1
@i2d_PrivateKey.output_info = internal constant [3 x %struct.type_and_structure_st] [%struct.type_and_structure_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, %struct.type_and_structure_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0) }, %struct.type_and_structure_st zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@__func__.i2d_PrivateKey = private unnamed_addr constant [15 x i8] c"i2d_PrivateKey\00", align 1
@i2d_PublicKey.output_info = internal constant [3 x %struct.type_and_structure_st] [%struct.type_and_structure_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0) }, %struct.type_and_structure_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null }, %struct.type_and_structure_st zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@__func__.i2d_PublicKey = private unnamed_addr constant [14 x i8] c"i2d_PublicKey\00", align 1
@__func__.i2d_provided = private unnamed_addr constant [13 x i8] c"i2d_provided\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_KeyParams(%struct.evp_pkey_st* noundef %a, i8** noundef %pp) #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @i2d_provided(%struct.evp_pkey_st* noundef nonnull %a, i32 noundef 132, %struct.type_and_structure_st* noundef getelementptr inbounds ([2 x %struct.type_and_structure_st], [2 x %struct.type_and_structure_st]* @i2d_KeyParams.output_info, i64 0, i64 0), i8** noundef %pp) #3
  br label %return

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp1.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp1.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %param_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 16
  %param_encode3 = bitcast {}** %param_encode to i32 (%struct.evp_pkey_st*, i8**)**
  %2 = load i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*, i8**)** %param_encode3, align 8, !tbaa !14
  %cmp4.not = icmp eq i32 (%struct.evp_pkey_st*, i8**)* %2, null
  br i1 %cmp4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %a, i8** noundef %pp) #4
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.i2d_KeyParams, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 196, i8* noundef null) #4
  br label %return

return:                                           ; preds = %if.end10, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call9, %if.then5 ], [ -1, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2d_provided(%struct.evp_pkey_st* noundef %a, i32 noundef %selection, %struct.type_and_structure_st* nocapture noundef readonly %output_info, i8** noundef %pp) unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  %cmp2 = icmp eq i8** %pp, null
  br label %land.rhs

land.rhs:                                         ; preds = %entry, %for.inc
  %output_info.addr.035 = phi %struct.type_and_structure_st* [ %output_info, %entry ], [ %incdec.ptr, %for.inc ]
  %output_type = getelementptr inbounds %struct.type_and_structure_st, %struct.type_and_structure_st* %output_info.addr.035, i64 0, i32 0
  %1 = load i8*, i8** %output_type, align 8, !tbaa !16
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %if.then16, label %for.body

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 2147483647, i64* %len, align 8, !tbaa !18
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %2 = load i8*, i8** %pp, align 8, !tbaa !19
  %cmp3 = icmp eq i8* %2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %3 = phi i1 [ true, %for.body ], [ %cmp3, %lor.rhs ]
  %output_structure = getelementptr inbounds %struct.type_and_structure_st, %struct.type_and_structure_st* %output_info.addr.035, i64 0, i32 1
  %4 = load i8*, i8** %output_structure, align 8, !tbaa !20
  %call = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %a, i32 noundef %selection, i8* noundef nonnull %1, i8* noundef %4, i8* noundef null) #4
  %cmp5 = icmp eq %struct.ossl_encoder_ctx_st* %call, null
  br i1 %cmp5, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %lor.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup18

if.end:                                           ; preds = %lor.end
  %call6 = call i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef nonnull %call, i8** noundef %pp, i64* noundef nonnull %len) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.end
  %5 = load i64, i64* %len, align 8, !tbaa !18
  %conv = trunc i64 %5 to i32
  br i1 %3, label %for.inc, label %for.inc.thread

for.inc.thread:                                   ; preds = %if.then7
  %conv.le = trunc i64 %5 to i32
  %sub = sub nsw i32 2147483647, %conv.le
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef nonnull %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  br label %cleanup18

for.inc:                                          ; preds = %if.then7, %if.end
  %ret.1 = phi i32 [ -1, %if.end ], [ %conv, %if.then7 ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef nonnull %call) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  %incdec.ptr = getelementptr inbounds %struct.type_and_structure_st, %struct.type_and_structure_st* %output_info.addr.035, i64 1
  %cmp = icmp eq i32 %ret.1, -1
  br i1 %cmp, label %land.rhs, label %cleanup18, !llvm.loop !21

if.then16:                                        ; preds = %land.rhs
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.i2d_provided, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 196, i8* noundef null) #4
  br label %cleanup18

cleanup18:                                        ; preds = %for.inc, %for.inc.thread, %cleanup.thread, %if.then16
  %retval.2 = phi i32 [ -1, %if.then16 ], [ -1, %cleanup.thread ], [ %sub, %for.inc.thread ], [ %ret.1, %for.inc ]
  ret i32 %retval.2
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_KeyParams_bio(%struct.bio_st* noundef %bp, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.evp_pkey_st*, i8**)* @i2d_KeyParams to i32 (i8*, i8**)*), %struct.bio_st* noundef %bp, i8* noundef %0) #4
  ret i32 %call
}

declare i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PrivateKey(%struct.evp_pkey_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @i2d_provided(%struct.evp_pkey_st* noundef nonnull %a, i32 noundef 135, %struct.type_and_structure_st* noundef getelementptr inbounds ([3 x %struct.type_and_structure_st], [3 x %struct.type_and_structure_st]* @i2d_PrivateKey.output_info, i64 0, i64 0), i8** noundef %pp) #3
  br label %return

if.end:                                           ; preds = %entry
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !13
  %cmp1.not = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp1.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %old_priv_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 25
  %old_priv_encode3 = bitcast {}** %old_priv_encode to i32 (%struct.evp_pkey_st*, i8**)**
  %2 = load i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*, i8**)** %old_priv_encode3, align 8, !tbaa !23
  %cmp4.not = icmp eq i32 (%struct.evp_pkey_st*, i8**)* %2, null
  br i1 %cmp4.not, label %land.lhs.true13, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %a, i8** noundef %pp) #4
  br label %return

land.lhs.true13:                                  ; preds = %land.lhs.true
  %priv_encode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 10
  %3 = load i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)** %priv_encode, align 8, !tbaa !24
  %cmp15.not = icmp eq i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)* %3, null
  br i1 %cmp15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %call17 = tail call %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef nonnull %a) #4
  %cmp18.not = icmp eq %struct.pkcs8_priv_key_info_st* %call17, null
  br i1 %cmp18.not, label %return, label %if.then19

if.then19:                                        ; preds = %if.then16
  %call20 = tail call i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef nonnull %call17, i8** noundef %pp) #4
  tail call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call17) #4
  br label %return

if.end22:                                         ; preds = %if.end, %land.lhs.true13
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.i2d_PrivateKey, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 167, i8* noundef null) #4
  br label %return

return:                                           ; preds = %if.then16, %if.then19, %if.end22, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call9, %if.then5 ], [ -1, %if.end22 ], [ %call20, %if.then19 ], [ 0, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @i2d_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st* noundef, i8** noundef) local_unnamed_addr #1

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PublicKey(%struct.evp_pkey_st* noundef %a, i8** noundef %pp) local_unnamed_addr #0 {
entry:
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %a, i64 0, i32 13
  %0 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.evp_keymgmt_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @i2d_provided(%struct.evp_pkey_st* noundef nonnull %a, i32 noundef 134, %struct.type_and_structure_st* noundef getelementptr inbounds ([3 x %struct.type_and_structure_st], [3 x %struct.type_and_structure_st]* @i2d_PublicKey.output_info, i64 0, i64 0), i8** noundef %pp) #3
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %a) #4
  switch i32 %call1, label %sw.default [
    i32 6, label %sw.bb
    i32 116, label %sw.bb4
    i32 408, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef nonnull %a) #4
  %call3 = tail call i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef %call2, i8** noundef %pp) #4
  br label %return

sw.bb4:                                           ; preds = %if.end
  %call5 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef nonnull %a) #4
  %call6 = tail call i32 @i2d_DSAPublicKey(%struct.dsa_st* noundef %call5, i8** noundef %pp) #4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef nonnull %a) #4
  %call9 = tail call i32 @i2o_ECPublicKey(%struct.ec_key_st* noundef %call8, i8** noundef %pp) #4
  br label %return

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.i2d_PublicKey, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 167, i8* noundef null) #4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb4, %sw.bb, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %sw.default ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @i2d_DSAPublicKey(%struct.dsa_st* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @i2o_ECPublicKey(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #1

declare void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 96}
!5 = !{!"evp_pkey_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !9, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !10, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !12, i64 136}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!13 = !{!5, !9, i64 8}
!14 = !{!15, !9, i64 120}
!15 = !{!"evp_pkey_asn1_method_st", !6, i64 0, !6, i64 4, !11, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312}
!16 = !{!17, !9, i64 0}
!17 = !{!"type_and_structure_st", !9, i64 0, !9, i64 8}
!18 = !{!11, !11, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!17, !9, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!15, !9, i64 192}
!24 = !{!15, !9, i64 72}
