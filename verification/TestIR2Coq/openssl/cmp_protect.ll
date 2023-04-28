; ModuleID = 'crypto/cmp/cmp_protect.c'
source_filename = "crypto/cmp/cmp_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_http_req_ctx_st = type opaque
%struct.bio_st = type opaque
%struct.x509_store_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st_GENERAL_NAME = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.stack_st_POLICYINFO = type opaque
%struct.X509_req_st = type { %struct.X509_req_info_st, %struct.X509_algor_st, %struct.asn1_string_st*, i32, i8*, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_req_info_st = type { %struct.ASN1_ENCODING_st, %struct.asn1_string_st*, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.stack_st_X509_ATTRIBUTE* }
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.stack_st_X509 = type opaque
%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.ossl_cmp_protectedpart_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st* }
%struct.ossl_crmf_pbmparameter_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [25 x i8] c"crypto/cmp/cmp_protect.c\00", align 1
@__func__.ossl_cmp_calc_protection = private unnamed_addr constant [25 x i8] c"ossl_cmp_calc_protection\00", align 1
@__func__.ossl_cmp_msg_add_extraCerts = private unnamed_addr constant [28 x i8] c"ossl_cmp_msg_add_extraCerts\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"trying to build chain for own CMP signer cert\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"success building chain for own CMP signer cert\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"WARN\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"could not build chain for own CMP signer cert\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"fallback: adding just own CMP signer cert\00", align 1
@__func__.ossl_cmp_msg_protect = private unnamed_addr constant [21 x i8] c"ossl_cmp_msg_protect\00", align 1
@__func__.set_sig_algor = private unnamed_addr constant [14 x i8] c"set_sig_algor\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef readonly %ctx, %struct.ossl_cmp_msg_st* noundef readonly %msg) local_unnamed_addr #0 {
entry:
  %prot_part = alloca %struct.ossl_cmp_protectedpart_st, align 8
  %algorOID = alloca %struct.asn1_object_st*, align 8
  %ppval = alloca i8*, align 8
  %pptype = alloca i32, align 4
  %prot_part_der = alloca i8*, align 8
  %sig_len = alloca i64, align 8
  %protection = alloca i8*, align 8
  %pbm_str_uc = alloca i8*, align 8
  %md_nid = alloca i32, align 4
  %0 = bitcast %struct.ossl_cmp_protectedpart_st* %prot_part to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #4
  %1 = bitcast %struct.asn1_object_st** %algorOID to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %algorOID, align 8, !tbaa !4
  %2 = bitcast i8** %ppval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store i8* null, i8** %ppval, align 8, !tbaa !4
  %3 = bitcast i32* %pptype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 0, i32* %pptype, align 4, !tbaa !8
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_msg_st* %msg, null
  %4 = and i1 %cmp, %cmp1
  br i1 %4, label %if.end, label %cleanup85

if.end:                                           ; preds = %entry
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %5 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %header3 = getelementptr inbounds %struct.ossl_cmp_protectedpart_st, %struct.ossl_cmp_protectedpart_st* %prot_part, i64 0, i32 0
  store %struct.ossl_cmp_pkiheader_st* %5, %struct.ossl_cmp_pkiheader_st** %header3, align 8, !tbaa !12
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 1
  %6 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !14
  %body4 = getelementptr inbounds %struct.ossl_cmp_protectedpart_st, %struct.ossl_cmp_protectedpart_st* %prot_part, i64 0, i32 1
  store %struct.ossl_cmp_pkibody_st* %6, %struct.ossl_cmp_pkibody_st** %body4, align 8, !tbaa !15
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %5, i64 0, i32 4
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !16
  %cmp6 = icmp eq %struct.X509_algor_st* %7, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 134, i8* noundef null) #5
  br label %cleanup85

if.end8:                                          ; preds = %if.end
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %algorOID, i32* noundef nonnull %pptype, i8** noundef nonnull %ppval, %struct.X509_algor_st* noundef nonnull %7) #5
  %8 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorOID, align 8, !tbaa !4
  %call = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %8) #5
  %cmp11 = icmp eq i32 %call, 782
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %9 = bitcast i8** %prot_part_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4
  store i8* null, i8** %prot_part_der, align 8, !tbaa !4
  %10 = bitcast i64* %sig_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4
  %11 = bitcast i8** %protection to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #4
  store i8* null, i8** %protection, align 8, !tbaa !4
  %12 = bitcast i8** %pbm_str_uc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #4
  store i8* null, i8** %pbm_str_uc, align 8, !tbaa !4
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !18
  %cmp13 = icmp eq %struct.asn1_string_st* %13, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 166, i8* noundef null) #5
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %14 = load i8*, i8** %ppval, align 8, !tbaa !4
  %cmp16 = icmp eq i8* %14, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 115, i8* noundef null) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %call19 = call i32 @i2d_OSSL_CMP_PROTECTEDPART(%struct.ossl_cmp_protectedpart_st* noundef nonnull %prot_part, i8** noundef nonnull %prot_part_der) #5
  %cmp20 = icmp slt i32 %call19, 0
  %15 = load i8*, i8** %prot_part_der, align 8
  %cmp21 = icmp eq i8* %15, null
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp21
  br i1 %or.cond, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 115, i8* noundef null) #5
  br label %end

if.end23:                                         ; preds = %if.end18
  %16 = bitcast i8** %ppval to %struct.asn1_string_st**
  %17 = load %struct.asn1_string_st*, %struct.asn1_string_st** %16, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %17, i64 0, i32 2
  %18 = load i8*, i8** %data, align 8, !tbaa !21
  store i8* %18, i8** %pbm_str_uc, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %17, i64 0, i32 0
  %19 = load i32, i32* %length, align 8, !tbaa !23
  %conv24 = sext i32 %19 to i64
  %call25 = call %struct.ossl_crmf_pbmparameter_st* @d2i_OSSL_CRMF_PBMPARAMETER(%struct.ossl_crmf_pbmparameter_st** noundef null, i8** noundef nonnull %pbm_str_uc, i64 noundef %conv24) #5
  %cmp26 = icmp eq %struct.ossl_crmf_pbmparameter_st* %call25, null
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 138, i8* noundef null) #5
  br label %end

if.end29:                                         ; preds = %if.end23
  %conv120 = zext i32 %call19 to i64
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %20 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !24
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %21 = load i8*, i8** %propq, align 8, !tbaa !25
  %22 = load i8*, i8** %prot_part_der, align 8, !tbaa !4
  %23 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !18
  %data31 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 2
  %24 = load i8*, i8** %data31, align 8, !tbaa !21
  %length33 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %23, i64 0, i32 0
  %25 = load i32, i32* %length33, align 8, !tbaa !23
  %conv34 = sext i32 %25 to i64
  %call35 = call i32 @OSSL_CRMF_pbm_new(%struct.ossl_lib_ctx_st* noundef %20, i8* noundef %21, %struct.ossl_crmf_pbmparameter_st* noundef nonnull %call25, i8* noundef %22, i64 noundef %conv120, i8* noundef %24, i64 noundef %conv34, i8** noundef nonnull %protection, i64* noundef nonnull %sig_len) #5
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %end, label %if.end37

if.end37:                                         ; preds = %if.end29
  %call38 = call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #5
  %cmp39 = icmp eq %struct.asn1_string_st* %call38, null
  br i1 %cmp39, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end37
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call38, i64 0, i32 3
  %26 = load i64, i64* %flags, align 8, !tbaa !26
  %and = and i64 %26, -16
  %or = or i64 %and, 8
  store i64 %or, i64* %flags, align 8, !tbaa !26
  %27 = load i8*, i8** %protection, align 8, !tbaa !4
  %28 = load i64, i64* %sig_len, align 8, !tbaa !27
  %conv44 = trunc i64 %28 to i32
  %call45 = call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef nonnull %call38, i8* noundef %27, i32 noundef %conv44) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %end

if.then47:                                        ; preds = %if.end42
  call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %call38) #5
  br label %end

end:                                              ; preds = %if.end42, %if.then47, %if.end29, %if.then28, %if.then22
  %prot.0 = phi %struct.asn1_string_st* [ null, %if.then22 ], [ null, %if.then28 ], [ %call38, %if.end42 ], [ null, %if.then47 ], [ null, %if.end29 ]
  %pbm.0 = phi %struct.ossl_crmf_pbmparameter_st* [ null, %if.then22 ], [ null, %if.then28 ], [ %call25, %if.end42 ], [ %call25, %if.then47 ], [ %call25, %if.end29 ]
  call void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef %pbm.0) #5
  %29 = load i8*, i8** %protection, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #5
  %30 = load i8*, i8** %prot_part_der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %30, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %end, %if.then17, %if.then14
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then14 ], [ null, %if.then17 ], [ %prot.0, %end ], [ null, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4
  br label %cleanup85

if.else:                                          ; preds = %if.end8
  %31 = bitcast i32* %md_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #4
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !28
  %cmp56 = icmp eq %struct.evp_pkey_st* %32, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.else
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 130, i8* noundef null) #5
  br label %cleanup83

if.end59:                                         ; preds = %if.else
  %33 = load %struct.asn1_object_st*, %struct.asn1_object_st** %algorOID, align 8, !tbaa !4
  %call60 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %33) #5
  %call61 = call i32 @OBJ_find_sigid_algs(i32 noundef %call60, i32* noundef nonnull %md_nid, i32* noundef null) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then68, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end59
  %34 = load i32, i32* %md_nid, align 4, !tbaa !8
  %call64 = call i8* @OBJ_nid2sn(i32 noundef %34) #5
  %call65 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %call64) #5
  %cmp66 = icmp eq %struct.evp_md_st* %call65, null
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false63, %if.end59
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_cmp_calc_protection, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 134, i8* noundef null) #5
  br label %cleanup83

if.end69:                                         ; preds = %lor.lhs.false63
  %call70 = call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #5
  %cmp71 = icmp eq %struct.asn1_string_st* %call70, null
  br i1 %cmp71, label %cleanup83, label %if.end74

if.end74:                                         ; preds = %if.end69
  %call75 = call %struct.ASN1_ITEM_st* @OSSL_CMP_PROTECTEDPART_it() #5
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !28
  %libctx77 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %36 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx77, align 8, !tbaa !24
  %propq78 = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %37 = load i8*, i8** %propq78, align 8, !tbaa !25
  %call79 = call i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef %call75, %struct.X509_algor_st* noundef null, %struct.X509_algor_st* noundef null, %struct.asn1_string_st* noundef nonnull %call70, i8* noundef nonnull %0, %struct.asn1_string_st* noundef null, %struct.evp_pkey_st* noundef %35, %struct.evp_md_st* noundef nonnull %call65, %struct.ossl_lib_ctx_st* noundef %36, i8* noundef %37) #5
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %cleanup83

if.end82:                                         ; preds = %if.end74
  call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef nonnull %call70) #5
  br label %cleanup83

cleanup83:                                        ; preds = %if.end74, %if.end69, %if.end82, %if.then68, %if.then58
  %retval.1 = phi %struct.asn1_string_st* [ null, %if.then58 ], [ null, %if.then68 ], [ null, %if.end82 ], [ null, %if.end69 ], [ %call70, %if.end74 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #4
  br label %cleanup85

cleanup85:                                        ; preds = %entry, %cleanup83, %cleanup, %if.then7
  %retval.2 = phi %struct.asn1_string_st* [ null, %if.then7 ], [ %retval.0, %cleanup ], [ %retval.1, %cleanup83 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #4
  ret %struct.asn1_string_st* %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #2

declare i32 @i2d_OSSL_CMP_PROTECTEDPART(%struct.ossl_cmp_protectedpart_st* noundef, i8** noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_pbmparameter_st* @d2i_OSSL_CRMF_PBMPARAMETER(%struct.ossl_crmf_pbmparameter_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OSSL_CRMF_pbm_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ossl_crmf_pbmparameter_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #2

declare i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_item_sign_ex(%struct.ASN1_ITEM_st* noundef, %struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef, %struct.asn1_string_st* noundef, i8* noundef, %struct.asn1_string_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @OSSL_CMP_PROTECTEDPART_it() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_msg_add_extraCerts(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_msg_st* %msg, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %unprotectedSend = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 26
  %1 = load i32, i32* %unprotectedSend, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !18
  %cmp3 = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp3, label %land.lhs.true4, label %if.end38

land.lhs.true4:                                   ; preds = %land.lhs.true
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %3 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !30
  %cmp5.not = icmp eq %struct.x509_st* %3, null
  br i1 %cmp5.not, label %if.end38, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !28
  %cmp7.not = icmp eq %struct.evp_pkey_st* %4, null
  br i1 %cmp7.not, label %if.end38, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  %chain = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 28
  %5 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !31
  %cmp9 = icmp eq %struct.stack_st_X509* %5, null
  br i1 %cmp9, label %if.then10, label %if.then23

if.then10:                                        ; preds = %if.then8
  %call = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_cmp_msg_add_extraCerts, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 146, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #5
  %6 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !30
  %untrusted = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 23
  %7 = load %struct.stack_st_X509*, %struct.stack_st_X509** %untrusted, align 8, !tbaa !32
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !24
  %propq = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 1
  %9 = load i8*, i8** %propq, align 8, !tbaa !25
  %call12 = tail call %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef %6, %struct.stack_st_X509* noundef %7, %struct.x509_store_st* noundef null, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %8, i8* noundef %9) #5
  store %struct.stack_st_X509* %call12, %struct.stack_st_X509** %chain, align 8, !tbaa !31
  %cmp15.not = icmp eq %struct.stack_st_X509* %call12, null
  br i1 %cmp15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then10
  %call17 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_cmp_msg_add_extraCerts, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0)) #5
  br label %if.end20

if.else:                                          ; preds = %if.then10
  tail call void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx) #5
  %call18 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 4, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_cmp_msg_add_extraCerts, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.else
  %.pr = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !31
  %cmp22.not = icmp eq %struct.stack_st_X509* %.pr, null
  br i1 %cmp22.not, label %if.else29, label %if.then23

if.then23:                                        ; preds = %if.then8, %if.end20
  %10 = phi %struct.stack_st_X509* [ %.pr, %if.end20 ], [ %5, %if.then8 ]
  %extraCerts = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 3
  %call25 = tail call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %extraCerts, %struct.stack_st_X509* noundef nonnull %10, i32 noundef 15) #5
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %return, label %if.end38

if.else29:                                        ; preds = %if.end20
  %extraCerts30 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 3
  %11 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !30
  %call32 = tail call i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef nonnull %extraCerts30, %struct.x509_st* noundef %11, i32 noundef 15) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %return, label %if.end35

if.end35:                                         ; preds = %if.else29
  %call36 = tail call i32 (i32, %struct.ossl_cmp_ctx_st*, i8*, i8*, i32, i8*, i8*, ...) @ossl_cmp_print_log(i32 noundef 7, %struct.ossl_cmp_ctx_st* noundef nonnull %ctx, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_cmp_msg_add_extraCerts, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %if.end35, %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %if.end
  %extraCerts39 = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 3
  %extraCertsOut = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 45
  %12 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCertsOut, align 8, !tbaa !33
  %call40 = tail call i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef nonnull %extraCerts39, %struct.stack_st_X509* noundef %12, i32 noundef 5) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %return, label %if.end43

if.end43:                                         ; preds = %if.end38
  %13 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts39, align 8, !tbaa !34
  %call45 = tail call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %13) #6
  %call46 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call45) #5
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %return

if.then48:                                        ; preds = %if.end43
  %14 = load %struct.stack_st_X509*, %struct.stack_st_X509** %extraCerts39, align 8, !tbaa !34
  %call50 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %14) #6
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call50) #5
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %extraCerts39, align 8, !tbaa !34
  br label %return

return:                                           ; preds = %if.else29, %if.then23, %if.end43, %if.then48, %if.end38, %entry
  %retval.1 = phi i32 [ 0, %entry ], [ 0, %if.end38 ], [ 1, %if.then48 ], [ 1, %if.end43 ], [ 0, %if.then23 ], [ 0, %if.else29 ]
  ret i32 %retval.1
}

declare i32 @ossl_cmp_print_log(i32 noundef, %struct.ossl_cmp_ctx_st* noundef, i8* noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.stack_st_X509* @X509_build_chain(%struct.x509_st* noundef, %struct.stack_st_X509* noundef, %struct.x509_store_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @OSSL_CMP_CTX_print_errors(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_x509_add_certs_new(%struct.stack_st_X509** noundef, %struct.stack_st_X509* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_x509_add_cert_new(%struct.stack_st_X509** noundef, %struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cmp_msg_protect(%struct.ossl_cmp_ctx_st* noundef %ctx, %struct.ossl_cmp_msg_st* noundef %msg) local_unnamed_addr #0 {
entry:
  %cmp = icmp ne %struct.ossl_cmp_ctx_st* %ctx, null
  %cmp1 = icmp ne %struct.ossl_cmp_msg_st* %msg, null
  %0 = and i1 %cmp, %cmp1
  br i1 %0, label %if.end, label %return

if.end:                                           ; preds = %entry
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %protectionAlg = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %1, i64 0, i32 4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %protectionAlg, align 8, !tbaa !16
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %2) #5
  %3 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %protectionAlg4 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %3, i64 0, i32 4
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %protectionAlg4, align 8, !tbaa !16
  %protection = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 2
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %protection, align 8, !tbaa !35
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %4) #5
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %protection, align 8, !tbaa !35
  %unprotectedSend = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 26
  %5 = load i32, i32* %unprotectedSend, align 8, !tbaa !29
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %call = tail call fastcc i32 @set_senderKID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, %struct.asn1_string_st* noundef null) #6
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %err, label %if.end47

if.else:                                          ; preds = %if.end
  %secretValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 31
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %secretValue, align 8, !tbaa !18
  %cmp10.not = icmp eq %struct.asn1_string_st* %6, null
  br i1 %cmp10.not, label %if.else22, label %if.then11

if.then11:                                        ; preds = %if.else
  %7 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %protectionAlg13 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %7, i64 0, i32 4
  %call14 = tail call fastcc i32 @set_pbmac_algor(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.X509_algor_st** noundef nonnull %protectionAlg13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.then11
  %call18 = tail call fastcc i32 @set_senderKID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, %struct.asn1_string_st* noundef null) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end47

if.else22:                                        ; preds = %if.else
  %cert = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 27
  %8 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !30
  %cmp23.not = icmp eq %struct.x509_st* %8, null
  br i1 %cmp23.not, label %err.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else22
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !28
  %cmp24.not = icmp eq %struct.evp_pkey_st* %9, null
  br i1 %cmp24.not, label %err.sink.split, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %call28 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %8, %struct.evp_pkey_st* noundef nonnull %9) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err.sink.split, label %if.end31

if.end31:                                         ; preds = %if.then25
  %10 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %protectionAlg33 = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %10, i64 0, i32 4
  %call34 = tail call fastcc i32 @set_sig_algor(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.X509_algor_st** noundef nonnull %protectionAlg33) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end31
  %11 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !30
  %call39 = tail call %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef %11) #5
  %call40 = tail call fastcc i32 @set_senderKID(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg, %struct.asn1_string_st* noundef %call39) #6
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end47

if.end47:                                         ; preds = %if.end17, %if.end37, %if.then6
  %12 = load i32, i32* %unprotectedSend, align 8, !tbaa !29
  %tobool49.not = icmp eq i32 %12, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %if.end55

land.lhs.true50:                                  ; preds = %if.end47
  %call51 = tail call %struct.asn1_string_st* @ossl_cmp_calc_protection(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #6
  store %struct.asn1_string_st* %call51, %struct.asn1_string_st** %protection, align 8, !tbaa !35
  %cmp53 = icmp eq %struct.asn1_string_st* %call51, null
  br i1 %cmp53, label %err, label %if.end55

if.end55:                                         ; preds = %land.lhs.true50, %if.end47
  %call56 = tail call i32 @ossl_cmp_msg_add_extraCerts(%struct.ossl_cmp_ctx_st* noundef nonnull %ctx, %struct.ossl_cmp_msg_st* noundef nonnull %msg) #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.end55
  %13 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %sender = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %13, i64 0, i32 1
  %14 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %sender, align 8, !tbaa !36
  %call61 = tail call i32 @ossl_cmp_general_name_is_NULL_DN(%struct.GENERAL_NAME_st* noundef %14) #5
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %return, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.end59
  %15 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %senderKID = getelementptr inbounds %struct.ossl_cmp_pkiheader_st, %struct.ossl_cmp_pkiheader_st* %15, i64 0, i32 5
  %16 = load %struct.asn1_string_st*, %struct.asn1_string_st** %senderKID, align 8, !tbaa !37
  %cmp65 = icmp eq %struct.asn1_string_st* %16, null
  br i1 %cmp65, label %err.sink.split, label %return

err.sink.split:                                   ; preds = %land.lhs.true63, %if.else22, %land.lhs.true, %if.then25
  %.sink98 = phi i32 [ 287, %if.then25 ], [ 303, %land.lhs.true ], [ 303, %if.else22 ], [ 327, %land.lhs.true63 ]
  %.sink = phi i32 [ 114, %if.then25 ], [ 130, %land.lhs.true ], [ 130, %if.else22 ], [ 111, %land.lhs.true63 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink98, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_msg_protect, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef %.sink, i8* noundef null) #5
  br label %err

err:                                              ; preds = %err.sink.split, %if.end55, %land.lhs.true50, %if.end37, %if.end31, %if.end17, %if.then11, %if.then6
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_cmp_msg_protect, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 127, i8* noundef null) #5
  br label %return

return:                                           ; preds = %if.end59, %land.lhs.true63, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 1, %land.lhs.true63 ], [ 1, %if.end59 ]
  ret i32 %retval.0
}

declare void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_senderKID(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_cmp_msg_st* nocapture noundef readonly %msg, %struct.asn1_string_st* noundef %id) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %id, null
  br i1 %cmp, label %if.end, label %lor.rhs

if.end:                                           ; preds = %entry
  %referenceValue = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 30
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %referenceValue, align 8, !tbaa !38
  %cmp1 = icmp eq %struct.asn1_string_st* %0, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry, %if.end
  %id.addr.06 = phi %struct.asn1_string_st* [ %0, %if.end ], [ %id, %entry ]
  %header = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %msg, i64 0, i32 0
  %1 = load %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkiheader_st** %header, align 8, !tbaa !10
  %call = tail call i32 @ossl_cmp_hdr_set1_senderKID(%struct.ossl_cmp_pkiheader_st* noundef %1, %struct.asn1_string_st* noundef nonnull %id.addr.06) #5
  %tobool = icmp ne i32 %call, 0
  %phi.cast = zext i1 %tobool to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %2 = phi i32 [ 1, %if.end ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_pbmac_algor(%struct.ossl_cmp_ctx_st* noundef readonly %ctx, %struct.X509_algor_st** nocapture noundef %alg) unnamed_addr #0 {
entry:
  %pbm_der = alloca i8*, align 8
  %0 = bitcast i8** %pbm_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* null, i8** %pbm_der, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ossl_cmp_ctx_st* %ctx, null
  br i1 %cmp.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 0
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !24
  %pbm_slen = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 32
  %2 = load i64, i64* %pbm_slen, align 8, !tbaa !39
  %pbm_owf = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 33
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %pbm_owf, align 8, !tbaa !40
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %3) #5
  %pbm_itercnt = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 34
  %4 = load i32, i32* %pbm_itercnt, align 8, !tbaa !41
  %conv3 = sext i32 %4 to i64
  %pbm_mac = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 35
  %5 = load i32, i32* %pbm_mac, align 4, !tbaa !42
  %call4 = tail call %struct.ossl_crmf_pbmparameter_st* @OSSL_CRMF_pbmp_new(%struct.ossl_lib_ctx_st* noundef %1, i64 noundef %2, i32 noundef %call, i64 noundef %conv3, i32 noundef %5) #5
  %call5 = tail call %struct.asn1_string_st* @ASN1_STRING_new() #5
  %cmp6 = icmp eq %struct.ossl_crmf_pbmparameter_st* %call4, null
  %cmp8 = icmp eq %struct.asn1_string_st* %call5, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  br i1 %or.cond, label %err, label %if.end11

if.end11:                                         ; preds = %if.end
  %call12 = call i32 @i2d_OSSL_CRMF_PBMPARAMETER(%struct.ossl_crmf_pbmparameter_st* noundef nonnull %call4, i8** noundef nonnull %pbm_der) #5
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %err, label %if.end16

if.end16:                                         ; preds = %if.end11
  %6 = load i8*, i8** %pbm_der, align 8, !tbaa !4
  %call17 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %call5, i8* noundef %6, i32 noundef %call12) #5
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %err, label %if.end19

if.end19:                                         ; preds = %if.end16
  %7 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %cmp20 = icmp eq %struct.X509_algor_st* %7, null
  br i1 %cmp20, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end19
  %call22 = call %struct.X509_algor_st* @X509_ALGOR_new() #5
  store %struct.X509_algor_st* %call22, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %cmp23 = icmp eq %struct.X509_algor_st* %call22, null
  br i1 %cmp23, label %err, label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %if.end19
  %8 = load i8*, i8** %pbm_der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 211) #5
  %9 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %call27 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 782) #5
  %10 = bitcast %struct.asn1_string_st* %call5 to i8*
  %call28 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %9, %struct.asn1_object_st* noundef %call27, i32 noundef 16, i8* noundef %10) #5
  call void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef nonnull %call4) #5
  br label %cleanup

err:                                              ; preds = %land.lhs.true, %if.end16, %if.end11, %if.end
  call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call5) #5
  %11 = load i8*, i8** %pbm_der, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 220) #5
  call void @OSSL_CRMF_PBMPARAMETER_free(%struct.ossl_crmf_pbmparameter_st* noundef %call4) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end26
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end26 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @set_sig_algor(%struct.ossl_cmp_ctx_st* nocapture noundef readonly %ctx, %struct.X509_algor_st** nocapture noundef %alg) unnamed_addr #0 {
entry:
  %nid = alloca i32, align 4
  %0 = bitcast i32* %nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  store i32 0, i32* %nid, align 4, !tbaa !8
  %digest = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 37
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !43
  %call = tail call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %1) #5
  %pkey = getelementptr inbounds %struct.ossl_cmp_ctx_st, %struct.ossl_cmp_ctx_st* %ctx, i64 0, i32 29
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !28
  %call1 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %2) #5
  %call2 = call i32 @OBJ_find_sigid_by_algs(i32* noundef nonnull %nid, i32 noundef %call, i32 noundef %call1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.set_sig_algor, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 137, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %nid, align 4, !tbaa !8
  %call3 = call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %3) #5
  %cmp = icmp eq %struct.asn1_object_st* %call3, null
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %cmp6 = icmp eq %struct.X509_algor_st* %4, null
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %call7 = call %struct.X509_algor_st* @X509_ALGOR_new() #5
  store %struct.X509_algor_st* %call7, %struct.X509_algor_st** %alg, align 8, !tbaa !4
  %cmp8 = icmp eq %struct.X509_algor_st* %call7, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %5 = phi %struct.X509_algor_st* [ %call7, %land.lhs.true ], [ %4, %if.end5 ]
  %call11 = call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef nonnull %5, %struct.asn1_object_st* noundef nonnull %call3, i32 noundef -1, i8* noundef null) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef nonnull %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true, %if.end, %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %if.then ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 1, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @X509_get0_subject_key_id(%struct.x509_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_general_name_is_NULL_DN(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare i32 @ossl_cmp_hdr_set1_senderKID(%struct.ossl_cmp_pkiheader_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare %struct.ossl_crmf_pbmparameter_st* @OSSL_CRMF_pbmp_new(%struct.ossl_lib_ctx_st* noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #2

declare i32 @i2d_OSSL_CRMF_PBMPARAMETER(%struct.ossl_crmf_pbmparameter_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #2

declare i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_find_sigid_by_algs(i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"ossl_cmp_msg_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!12 = !{!13, !5, i64 0}
!13 = !{!"ossl_cmp_protectedpart_st", !5, i64 0, !5, i64 8}
!14 = !{!11, !5, i64 8}
!15 = !{!13, !5, i64 8}
!16 = !{!17, !5, i64 32}
!17 = !{!"ossl_cmp_pkiheader_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!18 = !{!19, !5, i64 232}
!19 = !{!"ossl_cmp_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !5, i64 80, !5, i64 88, !9, i64 96, !9, i64 100, !9, i64 104, !20, i64 112, !5, i64 120, !5, i64 128, !9, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !20, i64 240, !5, i64 248, !9, i64 256, !9, i64 260, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !9, i64 320, !9, i64 324, !5, i64 328, !5, i64 336, !9, i64 344, !5, i64 352, !9, i64 360, !5, i64 368, !5, i64 376, !9, i64 384, !9, i64 388, !5, i64 392, !5, i64 400, !9, i64 408, !9, i64 412, !5, i64 416, !5, i64 424, !9, i64 432, !5, i64 440, !9, i64 448, !5, i64 456, !9, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !5, i64 8}
!22 = !{!"asn1_string_st", !9, i64 0, !9, i64 4, !5, i64 8, !20, i64 16}
!23 = !{!22, !9, i64 0}
!24 = !{!19, !5, i64 0}
!25 = !{!19, !5, i64 8}
!26 = !{!22, !20, i64 16}
!27 = !{!20, !20, i64 0}
!28 = !{!19, !5, i64 216}
!29 = !{!19, !9, i64 192}
!30 = !{!19, !5, i64 200}
!31 = !{!19, !5, i64 208}
!32 = !{!19, !5, i64 176}
!33 = !{!19, !5, i64 328}
!34 = !{!11, !5, i64 24}
!35 = !{!11, !5, i64 16}
!36 = !{!17, !5, i64 8}
!37 = !{!17, !5, i64 40}
!38 = !{!19, !5, i64 224}
!39 = !{!19, !20, i64 240}
!40 = !{!19, !5, i64 248}
!41 = !{!19, !9, i64 256}
!42 = !{!19, !9, i64 260}
!43 = !{!19, !5, i64 272}
