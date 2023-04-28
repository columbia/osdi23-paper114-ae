; ModuleID = 'crypto/store/store_result.c'
source_filename = "crypto/store/store_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.extracted_param_data_st = type { i32, i8*, i8*, i8*, i8*, i64, i8*, i64, i8* }
%struct.ossl_store_info_st = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }
%struct.ossl_store_ctx_st = type { %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st*, %struct.ossl_store_loader_ctx_st*, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)*, i8*, i32, i8*, i32, i32, %struct.stack_st_OSSL_STORE_INFO*, %struct.ossl_passphrase_data_st }
%struct.ossl_store_loader_st = type { i8*, %struct.engine_st*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, %struct.bio_st*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32, %struct.__va_list_tag*)*, i32 (%struct.ossl_store_loader_ctx_st*, i32)*, i32 (%struct.ossl_store_loader_ctx_st*, %struct.ossl_store_search_st*)*, %struct.ossl_store_info_st* (%struct.ossl_store_loader_ctx_st*, %struct.ui_method_st*, i8*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, i32 (%struct.ossl_store_loader_ctx_st*)*, %struct.ossl_store_loader_ctx_st* (%struct.ossl_store_loader_st*, i8*, %struct.ossl_lib_ctx_st*, i8*, %struct.ui_method_st*, i8*)*, %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*, i8*)*, i8* (i8*, %struct.ossl_core_bio_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* }
%struct.engine_st = type opaque
%struct.ui_method_st = type opaque
%struct.bio_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ossl_store_search_st = type { i32, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.evp_md_st*, i8*, i64 }
%struct.X509_name_st = type { %struct.stack_st_X509_NAME_ENTRY*, i32, %struct.buf_mem_st*, i8*, i32 }
%struct.stack_st_X509_NAME_ENTRY = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_core_bio_st = type opaque
%struct.ossl_store_loader_ctx_st = type opaque
%struct.stack_st_OSSL_STORE_INFO = type opaque
%struct.ossl_passphrase_data_st = type { i32, %union.anon.4, i8, i8*, i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i8*, i64 }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.0 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.0 = type { i32, i32, i32 }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, %struct.asn1_string_st*, %struct.AUTHORITY_KEYID_st*, %struct.X509_POLICY_CACHE_st*, %struct.stack_st_DIST_POINT*, %struct.stack_st_GENERAL_NAME*, %struct.NAME_CONSTRAINTS_st*, %struct.stack_st_IPAddressFamily*, %struct.ASIdentifiers_st*, [20 x i8], %struct.x509_cert_aux_st*, i8*, i32, %struct.asn1_string_st*, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_cinf_st = type { %struct.asn1_string_st*, %struct.asn1_string_st, %struct.X509_algor_st, %struct.X509_name_st*, %struct.X509_val_st, %struct.X509_name_st*, %struct.X509_pubkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.stack_st_X509_EXTENSION = type opaque
%struct.ASN1_ENCODING_st = type { i8*, i64, i32 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.AUTHORITY_KEYID_st = type { %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAME*, %struct.asn1_string_st* }
%struct.X509_POLICY_CACHE_st = type opaque
%struct.stack_st_DIST_POINT = type opaque
%struct.stack_st_GENERAL_NAME = type opaque
%struct.NAME_CONSTRAINTS_st = type { %struct.stack_st_GENERAL_SUBTREE*, %struct.stack_st_GENERAL_SUBTREE* }
%struct.stack_st_GENERAL_SUBTREE = type opaque
%struct.stack_st_IPAddressFamily = type opaque
%struct.ASIdentifiers_st = type { %struct.ASIdentifierChoice_st*, %struct.ASIdentifierChoice_st* }
%struct.ASIdentifierChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { i32* }
%struct.x509_cert_aux_st = type { %struct.stack_st_ASN1_OBJECT*, %struct.stack_st_ASN1_OBJECT*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ALGOR* }
%struct.stack_st_ASN1_OBJECT = type opaque
%struct.stack_st_X509_ALGOR = type opaque
%struct.X509_crl_st = type { %struct.X509_crl_info_st, %struct.X509_algor_st, %struct.asn1_string_st, i32, i32, %struct.AUTHORITY_KEYID_st*, %struct.ISSUING_DIST_POINT_st*, i32, i32, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_GENERAL_NAMES*, [20 x i8], %struct.x509_crl_method_st*, i8*, i8*, %struct.ossl_lib_ctx_st*, i8* }
%struct.X509_crl_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st, %struct.X509_name_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_X509_REVOKED*, %struct.stack_st_X509_EXTENSION*, %struct.ASN1_ENCODING_st }
%struct.stack_st_X509_REVOKED = type opaque
%struct.ISSUING_DIST_POINT_st = type { %struct.DIST_POINT_NAME_st*, i32, i32, %struct.asn1_string_st*, i32, i32 }
%struct.DIST_POINT_NAME_st = type { i32, %union.anon.3, %struct.X509_name_st* }
%union.anon.3 = type { %struct.stack_st_GENERAL_NAME* }
%struct.stack_st_GENERAL_NAMES = type opaque
%struct.x509_crl_method_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.PKCS12_st = type opaque
%struct.stack_st = type opaque
%struct.evp_keymgmt_util_try_import_data_st = type { %struct.evp_keymgmt_st*, i8*, i32 }
%struct.ossl_decoder_ctx_st = type opaque
%struct.X509_sig_st = type { %struct.X509_algor_st*, %struct.asn1_string_st* }
%struct.pkcs8_priv_key_info_st = type { %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.stack_st_X509_ATTRIBUTE* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"data-structure\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"crypto/store/store_result.c\00", align 1
@__func__.ossl_store_handle_load_result = private unnamed_addr constant [30 x i8] c"ossl_store_handle_load_result\00", align 1
@__func__.try_key_value_legacy = private unnamed_addr constant [21 x i8] c"try_key_value_legacy\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@try_pkcs12.prompt_info = internal global [26 x i8] c"PKCS12 import pass phrase\00", align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@__func__.try_pkcs12 = private unnamed_addr constant [11 x i8] c"try_pkcs12\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"empty password\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"maybe wrong password\00", align 1
@switch.table.try_key_value = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 132, i32 134, i32 135], align 4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_store_handle_load_result(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) local_unnamed_addr #0 {
entry:
  %helper_data = alloca %struct.extracted_param_data_st, align 8
  %v1 = bitcast i8* %arg to %struct.ossl_store_info_st**
  %ctx2 = getelementptr inbounds i8, i8* %arg, i64 8
  %0 = bitcast i8* %ctx2 to %struct.ossl_store_ctx_st**
  %1 = load %struct.ossl_store_ctx_st*, %struct.ossl_store_ctx_st** %0, align 8, !tbaa !4
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %1, i64 0, i32 1
  %2 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !9
  %call = tail call %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef %2) #7
  %call3 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call) #7
  %properties = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %1, i64 0, i32 6
  %3 = load i8*, i8** %properties, align 8, !tbaa !14
  %4 = bitcast %struct.extracted_param_data_st* %helper_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %4) #8
  %call4 = call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 72) #7
  %object_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 0
  store i32 0, i32* %object_type, align 8, !tbaa !15
  %call5 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #7
  %cmp.not = icmp eq %struct.ossl_param_st* %call5, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call7 = call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %call5, i32* noundef nonnull %object_type) #7
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call8 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #7
  %cmp9.not = icmp eq %struct.ossl_param_st* %call8, null
  br i1 %cmp9.not, label %if.end14, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end
  %data_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 1
  %call11 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef nonnull %call8, i8** noundef nonnull %data_type) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %land.lhs.true10, %if.end
  %call15 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7
  %cmp16.not = icmp eq %struct.ossl_param_st* %call15, null
  br i1 %cmp16.not, label %if.end24, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end14
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 4
  %octet_data_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 5
  %call18 = call i32 @OSSL_PARAM_get_octet_string_ptr(%struct.ossl_param_st* noundef nonnull %call15, i8** noundef nonnull %octet_data, i64* noundef nonnull %octet_data_size) #7
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %utf8_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 3
  %call21 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef nonnull %call15, i8** noundef nonnull %utf8_data) #7
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %cleanup, label %if.end24

if.end24:                                         ; preds = %land.lhs.true20, %land.lhs.true17, %if.end14
  %call25 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #7
  %cmp26.not = icmp eq %struct.ossl_param_st* %call25, null
  br i1 %cmp26.not, label %if.end31, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end24
  %data_structure = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 2
  %call28 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef nonnull %call25, i8** noundef nonnull %data_structure) #7
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %land.lhs.true27, %if.end24
  %call32 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #7
  %cmp33.not = icmp eq %struct.ossl_param_st* %call32, null
  br i1 %cmp33.not, label %if.end38, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end31
  %ref = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 6
  %ref_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 7
  %call35 = call i32 @OSSL_PARAM_get_octet_string_ptr(%struct.ossl_param_st* noundef nonnull %call32, i8** noundef nonnull %ref, i64* noundef nonnull %ref_size) #7
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %land.lhs.true34, %if.end31
  %call39 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #7
  %cmp40.not = icmp eq %struct.ossl_param_st* %call39, null
  br i1 %cmp40.not, label %if.end45, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %if.end38
  %desc = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %helper_data, i64 0, i32 8
  %call42 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef nonnull %call39, i8** noundef nonnull %desc) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %land.lhs.true41, %if.end38
  %call46 = call i32 @ERR_set_mark() #7
  %5 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  %cmp47 = icmp eq %struct.ossl_store_info_st* %5, null
  br i1 %cmp47, label %land.lhs.true48, label %if.end52

land.lhs.true48:                                  ; preds = %if.end45
  %call49 = call fastcc i32 @try_name(%struct.extracted_param_data_st* noundef nonnull %helper_data, %struct.ossl_store_info_st** noundef nonnull %v1) #9
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %land.lhs.true48, %if.end45
  %call53 = call i32 @ERR_pop_to_mark() #7
  %call54 = call i32 @ERR_set_mark() #7
  %6 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  %cmp55 = icmp eq %struct.ossl_store_info_st* %6, null
  br i1 %cmp55, label %land.lhs.true56, label %if.end60

land.lhs.true56:                                  ; preds = %if.end52
  %call57 = call fastcc i32 @try_key(%struct.extracted_param_data_st* noundef nonnull %helper_data, %struct.ossl_store_info_st** noundef nonnull %v1, %struct.ossl_store_ctx_st* noundef nonnull %1, %struct.ossl_provider_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %call3, i8* noundef %3) #9
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %if.end60

if.end60:                                         ; preds = %land.lhs.true56, %if.end52
  %call61 = call i32 @ERR_pop_to_mark() #7
  %call62 = call i32 @ERR_set_mark() #7
  %7 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  %cmp63 = icmp eq %struct.ossl_store_info_st* %7, null
  br i1 %cmp63, label %land.lhs.true64, label %if.end68

land.lhs.true64:                                  ; preds = %if.end60
  %call65 = call fastcc i32 @try_cert(%struct.extracted_param_data_st* noundef nonnull %helper_data, %struct.ossl_store_info_st** noundef nonnull %v1, %struct.ossl_lib_ctx_st* noundef %call3, i8* noundef %3) #9
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %if.end68

if.end68:                                         ; preds = %land.lhs.true64, %if.end60
  %call69 = call i32 @ERR_pop_to_mark() #7
  %call70 = call i32 @ERR_set_mark() #7
  %8 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  %cmp71 = icmp eq %struct.ossl_store_info_st* %8, null
  br i1 %cmp71, label %land.lhs.true72, label %if.end76

land.lhs.true72:                                  ; preds = %if.end68
  call fastcc void @try_crl(%struct.extracted_param_data_st* noundef nonnull %helper_data, %struct.ossl_store_info_st** noundef nonnull %v1, %struct.ossl_lib_ctx_st* noundef %call3, i8* noundef %3) #9
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true72, %if.end68
  %call77 = call i32 @ERR_pop_to_mark() #7
  %call78 = call i32 @ERR_set_mark() #7
  %9 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  %cmp79 = icmp eq %struct.ossl_store_info_st* %9, null
  br i1 %cmp79, label %land.lhs.true80, label %if.end84

land.lhs.true80:                                  ; preds = %if.end76
  %call81 = call fastcc i32 @try_pkcs12(%struct.extracted_param_data_st* noundef nonnull %helper_data, %struct.ossl_store_info_st** noundef nonnull %v1, %struct.ossl_store_ctx_st* noundef nonnull %1) #9
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end84

if.end84:                                         ; preds = %land.lhs.true80, %if.end76
  %call85 = call i32 @ERR_pop_to_mark() #7
  %10 = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  %cmp86 = icmp eq %struct.ossl_store_info_st* %10, null
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_store_handle_load_result, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524556, i8* noundef null) #7
  %.pre = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v1, align 8, !tbaa !17
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84
  %11 = phi %struct.ossl_store_info_st* [ %.pre, %if.then87 ], [ %10, %if.end84 ]
  %cmp89 = icmp ne %struct.ossl_store_info_st* %11, null
  %conv = zext i1 %cmp89 to i32
  br label %cleanup

err:                                              ; preds = %land.lhs.true80, %land.lhs.true64, %land.lhs.true56, %land.lhs.true48
  %call90 = call i32 @ERR_clear_last_mark() #7
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true41, %land.lhs.true34, %land.lhs.true27, %land.lhs.true20, %land.lhs.true10, %land.lhs.true, %err, %if.end88
  %retval.0 = phi i32 [ %conv, %if.end88 ], [ 0, %err ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true20 ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true41 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %4) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_provider_st* @OSSL_STORE_LOADER_get0_provider(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_octet_string_ptr(%struct.ossl_param_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @try_name(%struct.extracted_param_data_st* nocapture noundef readonly %data, %struct.ossl_store_info_st** nocapture noundef writeonly %v) unnamed_addr #0 {
entry:
  %object_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 0
  %0 = load i32, i32* %object_type, align 8, !tbaa !15
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %utf8_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 3
  %1 = load i8*, i8** %utf8_data, align 8, !tbaa !18
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 166) #7
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %desc = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 8
  %2 = load i8*, i8** %desc, align 8, !tbaa !19
  %cmp5.not = icmp eq i8* %2, null
  br i1 %cmp5.not, label %lor.lhs.false9, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 168) #7
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %newdesc.0 = phi i8* [ %call7, %land.lhs.true ], [ null, %lor.lhs.false ]
  %call10 = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_NAME(i8* noundef nonnull %call) #7
  store %struct.ossl_store_info_st* %call10, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  %cmp11 = icmp eq %struct.ossl_store_info_st* %call10, null
  br i1 %cmp11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %lor.lhs.false9, %land.lhs.true, %if.end
  %newdesc.1 = phi i8* [ null, %if.end ], [ null, %land.lhs.true ], [ %newdesc.0, %lor.lhs.false9 ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 170) #7
  tail call void @CRYPTO_free(i8* noundef %newdesc.1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 171) #7
  br label %return

cleanup:                                          ; preds = %lor.lhs.false9
  %call14 = tail call i32 @OSSL_STORE_INFO_set0_NAME_description(%struct.ossl_store_info_st* noundef nonnull %call10, i8* noundef %newdesc.0) #7
  br label %return

return:                                           ; preds = %if.then, %if.then12, %entry, %cleanup
  %retval.1 = phi i32 [ 1, %cleanup ], [ 1, %entry ], [ 0, %if.then12 ], [ 0, %if.then ]
  ret i32 %retval.1
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @try_key(%struct.extracted_param_data_st* nocapture noundef %data, %struct.ossl_store_info_st** nocapture noundef %v, %struct.ossl_store_ctx_st* noundef %ctx, %struct.ossl_provider_st* noundef %provider, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %store_info_new = alloca %struct.ossl_store_info_st* (%struct.evp_pkey_st*)*, align 8
  %0 = bitcast %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** %store_info_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* null, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** %store_info_new, align 8, !tbaa !17
  %object_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 0
  %1 = load i32, i32* %object_type, align 8, !tbaa !15
  switch i32 %1, label %cleanup39 [
    i32 2, label %land.lhs.true
    i32 0, label %if.else
  ]

land.lhs.true:                                    ; preds = %entry
  %ref = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 6
  %2 = load i8*, i8** %ref, align 8, !tbaa !20
  %cmp5.not = icmp eq i8* %2, null
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %call = tail call fastcc %struct.evp_pkey_st* @try_key_ref(%struct.extracted_param_data_st* noundef nonnull %data, %struct.ossl_store_ctx_st* noundef %ctx, %struct.ossl_provider_st* noundef %provider, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %cmp7 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp7, label %cleanup39, label %if.then19.thread

if.else:                                          ; preds = %entry, %land.lhs.true
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %3 = load i8*, i8** %octet_data, align 8, !tbaa !21
  %cmp9.not = icmp eq i8* %3, null
  br i1 %cmp9.not, label %if.end34thread-pre-split, label %if.then10

if.then10:                                        ; preds = %if.else
  %pwdata = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 10
  %4 = bitcast %struct.ossl_passphrase_data_st* %pwdata to i8*
  %call11 = tail call fastcc %struct.evp_pkey_st* @try_key_value(%struct.extracted_param_data_st* noundef nonnull %data, %struct.ossl_store_ctx_st* noundef %ctx, i8* noundef nonnull %4, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %cmp12 = icmp eq %struct.evp_pkey_st* %call11, null
  br i1 %cmp12, label %if.end17, label %if.then19.thread

if.end17:                                         ; preds = %if.then10
  %call14 = call fastcc %struct.evp_pkey_st* @try_key_value_legacy(%struct.extracted_param_data_st* noundef nonnull %data, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** noundef nonnull %store_info_new, %struct.ossl_store_ctx_st* noundef %ctx, i8* noundef nonnull %4, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %cmp18.not = icmp eq %struct.evp_pkey_st* %call14, null
  br i1 %cmp18.not, label %if.end34thread-pre-split, label %if.then19

if.then19.thread:                                 ; preds = %if.then10, %if.then6
  %pk.169.ph = phi %struct.evp_pkey_st* [ %call, %if.then6 ], [ %call11, %if.then10 ]
  store i32 2, i32* %object_type, align 8, !tbaa !15
  br label %if.then22

if.then19:                                        ; preds = %if.end17
  %.pre = load %struct.ossl_store_info_st* (%struct.evp_pkey_st*)*, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** %store_info_new, align 8, !tbaa !17
  store i32 2, i32* %object_type, align 8, !tbaa !15
  %cmp21 = icmp eq %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* %.pre, null
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.then19.thread, %if.then19
  %pk.16977 = phi %struct.evp_pkey_st* [ %pk.169.ph, %if.then19.thread ], [ %call14, %if.then19 ]
  %call23 = tail call i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef nonnull %pk.16977, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.then22
  store %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* @OSSL_STORE_INFO_new_PKEY, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** %store_info_new, align 8, !tbaa !17
  br label %if.end32

if.else25:                                        ; preds = %if.then22
  %call26 = tail call i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef nonnull %pk.16977, i32 noundef 2) #7
  %tobool27.not = icmp eq i32 %call26, 0
  %OSSL_STORE_INFO_new_PARAMS.OSSL_STORE_INFO_new_PUBKEY = select i1 %tobool27.not, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* @OSSL_STORE_INFO_new_PARAMS, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* @OSSL_STORE_INFO_new_PUBKEY
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %if.then24, %if.then19
  %pk.16976 = phi %struct.evp_pkey_st* [ %pk.16977, %if.then24 ], [ %call14, %if.then19 ], [ %pk.16977, %if.else25 ]
  %5 = phi %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* [ @OSSL_STORE_INFO_new_PKEY, %if.then24 ], [ %.pre, %if.then19 ], [ %OSSL_STORE_INFO_new_PARAMS.OSSL_STORE_INFO_new_PUBKEY, %if.else25 ]
  %call33 = tail call %struct.ossl_store_info_st* %5(%struct.evp_pkey_st* noundef nonnull %pk.16976) #7
  store %struct.ossl_store_info_st* %call33, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  br label %if.end34

if.end34thread-pre-split:                         ; preds = %if.else, %if.end17
  %.pr = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  br label %if.end34

if.end34:                                         ; preds = %if.end34thread-pre-split, %if.end32
  %6 = phi %struct.ossl_store_info_st* [ %.pr, %if.end34thread-pre-split ], [ %call33, %if.end32 ]
  %pk.170 = phi %struct.evp_pkey_st* [ null, %if.end34thread-pre-split ], [ %pk.16976, %if.end32 ]
  %cmp35 = icmp eq %struct.ossl_store_info_st* %6, null
  br i1 %cmp35, label %if.then36, label %cleanup39

if.then36:                                        ; preds = %if.end34
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pk.170) #7
  br label %cleanup39

cleanup39:                                        ; preds = %entry, %if.then6, %if.end34, %if.then36
  %retval.1 = phi i32 [ 1, %if.then36 ], [ 1, %if.end34 ], [ 1, %entry ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @try_cert(%struct.extracted_param_data_st* noundef %data, %struct.ossl_store_info_st** nocapture noundef writeonly %v, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %cert = alloca %struct.x509_st*, align 8
  %object_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 0
  %0 = load i32, i32* %object_type, align 8, !tbaa !15
  switch i32 %0, label %return [
    i32 0, label %if.then
    i32 3, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  %1 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %call = tail call %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  store %struct.x509_st* %call, %struct.x509_st** %cert, align 8, !tbaa !17
  %cmp3 = icmp eq %struct.x509_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %data_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 1
  %2 = load i8*, i8** %data_type, align 8, !tbaa !22
  %cmp5.not = icmp eq i8* %2, null
  br i1 %cmp5.not, label %if.end10.thread, label %if.end10

if.end10:                                         ; preds = %if.end
  %call7 = tail call i32 @strcasecmp(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0)) #10
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %octet_data_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 5
  %3 = load i64, i64* %octet_data_size, align 8, !tbaa !23
  %call11 = call %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %octet_data, i64 noundef %3) #7
  %cmp12 = icmp eq %struct.x509_st* %call11, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end20

if.end10.thread:                                  ; preds = %if.end
  %octet_data43 = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %octet_data_size44 = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 5
  %4 = load i64, i64* %octet_data_size44, align 8, !tbaa !23
  %call1145 = call %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %octet_data43, i64 noundef %4) #7
  %cmp1246 = icmp eq %struct.x509_st* %call1145, null
  br i1 %cmp1246, label %lor.lhs.false14, label %if.end20

land.lhs.true13:                                  ; preds = %if.end10
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %cleanup.thread.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end10.thread, %land.lhs.true13
  %octet_data4854 = phi i8** [ %octet_data, %land.lhs.true13 ], [ %octet_data43, %if.end10.thread ]
  %octet_data_size4953 = phi i64* [ %octet_data_size, %land.lhs.true13 ], [ %octet_data_size44, %if.end10.thread ]
  %5 = load i64, i64* %octet_data_size4953, align 8, !tbaa !23
  %call17 = call %struct.x509_st* @d2i_X509(%struct.x509_st** noundef nonnull %cert, i8** noundef nonnull %octet_data4854, i64 noundef %5) #7
  %cmp18 = icmp eq %struct.x509_st* %call17, null
  br i1 %cmp18, label %cleanup.thread.sink.split, label %if.end20

if.end20:                                         ; preds = %if.end10.thread, %lor.lhs.false14, %if.end10
  %.pr = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !17
  %cmp21.not = icmp eq %struct.x509_st* %.pr, null
  br i1 %cmp21.not, label %cleanup.thread, label %if.then22

if.then22:                                        ; preds = %if.end20
  store i32 3, i32* %object_type, align 8, !tbaa !15
  %call24 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef nonnull %.pr) #7
  store %struct.ossl_store_info_st* %call24, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  %cmp25 = icmp eq %struct.ossl_store_info_st* %call24, null
  br i1 %cmp25, label %cleanup.thread.sink.split, label %cleanup.thread

cleanup.thread.sink.split:                        ; preds = %if.then22, %lor.lhs.false14, %land.lhs.true13
  %.sink = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !17
  call void @X509_free(%struct.x509_st* noundef %.sink) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end20, %if.then22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  br label %return

cleanup:                                          ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %cleanup.thread ], [ 1, %entry ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @try_crl(%struct.extracted_param_data_st* noundef %data, %struct.ossl_store_info_st** nocapture noundef %v, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %object_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 0
  %0 = load i32, i32* %object_type, align 8, !tbaa !15
  switch i32 %0, label %if.end17 [
    i32 0, label %if.then
    i32 4, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %octet_data_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 5
  %1 = load i64, i64* %octet_data_size, align 8, !tbaa !23
  %call = tail call %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef null, i8** noundef nonnull %octet_data, i64 noundef %1) #7
  %cmp3.not = icmp eq %struct.X509_crl_st* %call, null
  br i1 %cmp3.not, label %if.end9.thread, label %if.then4

if.then4:                                         ; preds = %if.then
  store i32 4, i32* %object_type, align 8, !tbaa !15
  %call7 = tail call i32 @ossl_x509_crl_set0_libctx(%struct.X509_crl_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.then11

if.then8:                                         ; preds = %if.then4
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef nonnull %call) #7
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.then8, %if.then
  %.pr = load %struct.ossl_store_info_st*, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  br label %if.end13

if.then11:                                        ; preds = %if.then4
  %call12 = tail call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CRL(%struct.X509_crl_st* noundef nonnull %call) #7
  store %struct.ossl_store_info_st* %call12, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  br label %if.end13

if.end13:                                         ; preds = %if.end9.thread, %if.then11
  %2 = phi %struct.ossl_store_info_st* [ %.pr, %if.end9.thread ], [ %call12, %if.then11 ]
  %crl.03 = phi %struct.X509_crl_st* [ null, %if.end9.thread ], [ %call, %if.then11 ]
  %cmp14 = icmp eq %struct.ossl_store_info_st* %2, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  tail call void @X509_CRL_free(%struct.X509_crl_st* noundef %crl.03) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %if.then15, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @try_pkcs12(%struct.extracted_param_data_st* noundef %data, %struct.ossl_store_info_st** nocapture noundef writeonly %v, %struct.ossl_store_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %tpass = alloca [1024 x i8], align 16
  %tpass_len = alloca i64, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %cert = alloca %struct.x509_st*, align 8
  %chain = alloca %struct.stack_st_X509*, align 8
  %pw_params = alloca [2 x %struct.ossl_param_st], align 16
  %object_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 0
  %0 = load i32, i32* %object_type, align 8, !tbaa !15
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end100

if.then:                                          ; preds = %entry
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %octet_data_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 5
  %1 = load i64, i64* %octet_data_size, align 8, !tbaa !23
  %call = tail call %struct.PKCS12_st* @d2i_PKCS12(%struct.PKCS12_st** noundef null, i8** noundef nonnull %octet_data, i64 noundef %1) #7
  %cmp1.not = icmp eq %struct.PKCS12_st* %call, null
  br i1 %cmp1.not, label %p12_end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %tpass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #8
  %3 = bitcast i64* %tpass_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %4 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !17
  %5 = bitcast %struct.x509_st** %cert to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !17
  %6 = bitcast %struct.stack_st_X509** %chain to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8
  store %struct.stack_st_X509* null, %struct.stack_st_X509** %chain, align 8, !tbaa !17
  store i32 -1, i32* %object_type, align 8, !tbaa !15
  %call4 = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %call, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end21

lor.lhs.false:                                    ; preds = %if.then2
  %call5 = tail call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %call, i8* noundef null, i32 noundef 0) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else, label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  %7 = bitcast [2 x %struct.ossl_param_st]* %pw_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %7, i8 0, i64 80, i1 false)
  %8 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pw_params, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 16
  %9 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pw_params, i64 0, i64 0, i32 1
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pw_params, i64 0, i64 0, i32 2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @try_pkcs12.prompt_info, i64 0, i64 0), i8** %10, align 16
  %11 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pw_params, i64 0, i64 0, i32 3
  %12 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> <i64 25, i64 -1>, <2 x i64>* %12, align 8
  %arraydecay8 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %pw_params, i64 0, i64 0
  %pwdata = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 10
  %call9 = call i32 @ossl_pw_get_passphrase(i8* noundef nonnull %2, i64 noundef 1024, i64* noundef nonnull %tpass_len, %struct.ossl_param_st* noundef nonnull %arraydecay8, i32 noundef 0, %struct.ossl_passphrase_data_st* noundef nonnull %pwdata) #7
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 553, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.try_pkcs12, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 114, i8* noundef null) #7
  br label %cleanup.thread

if.end:                                           ; preds = %if.else
  %call13 = call i64 @strlen(i8* noundef nonnull %2) #10
  %conv = trunc i64 %call13 to i32
  %call14 = call i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef nonnull %call, i8* noundef nonnull %2, i32 noundef %conv) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.try_pkcs12, i64 0, i64 0)) #7
  %call17 = call i64 @strlen(i8* noundef nonnull %2) #10
  %cmp18 = icmp eq i64 %call17, 0
  %cond = select i1 %cmp18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0)
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 113, i8* noundef %cond) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then16, %if.then11
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #8
  br label %cleanup89

cleanup:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #8
  br label %if.end21

if.end21:                                         ; preds = %cleanup, %if.then2, %lor.lhs.false
  %pass.1 = phi i8* [ %2, %cleanup ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %if.then2 ]
  %call22 = call i32 @PKCS12_parse(%struct.PKCS12_st* noundef nonnull %call, i8* noundef nonnull %pass.1, %struct.evp_pkey_st** noundef nonnull %pkey, %struct.x509_st** noundef nonnull %cert, %struct.stack_st_X509** noundef nonnull %chain) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup89, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call fastcc %struct.stack_st_OSSL_STORE_INFO* @sk_OSSL_STORE_INFO_new_null() #9
  %cmp26.not = icmp eq %struct.stack_st_OSSL_STORE_INFO* %call25, null
  br i1 %cmp26.not, label %if.end82, label %if.then28

if.then28:                                        ; preds = %if.then24
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !17
  %cmp29.not = icmp eq %struct.evp_pkey_st* %13, null
  br i1 %cmp29.not, label %if.end42, label %if.then31

if.then31:                                        ; preds = %if.then28
  %call32 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef nonnull %13) #7
  %cmp33.not = icmp eq %struct.ossl_store_info_st* %call32, null
  br i1 %cmp33.not, label %if.end82, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !17
  %call36 = call fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25, %struct.ossl_store_info_st* noundef nonnull %call32) #9
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end82, label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %if.then28
  %14 = load %struct.x509_st*, %struct.x509_st** %cert, align 8
  %cmp45.not = icmp eq %struct.x509_st* %14, null
  br i1 %cmp45.not, label %land.rhs.preheader, label %if.then47

if.then47:                                        ; preds = %if.end42
  %call48 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef nonnull %14) #7
  %cmp49.not = icmp eq %struct.ossl_store_info_st* %call48, null
  br i1 %cmp49.not, label %if.end82, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %if.then47
  store %struct.x509_st* null, %struct.x509_st** %cert, align 8, !tbaa !17
  %call53 = call fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25, %struct.ossl_store_info_st* noundef nonnull %call48) #9
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end82, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end42, %land.lhs.true51
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.lhs.true75
  %15 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !17
  %call61 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %15) #9
  %call62 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call61) #7
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %while.body, label %if.end82

while.body:                                       ; preds = %land.rhs
  %16 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !17
  %call65 = call fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef %16) #9
  %call66 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call65, i32 noundef 0) #7
  %17 = bitcast i8* %call66 to %struct.x509_st*
  %call67 = call %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef %17) #7
  %cmp68.not = icmp eq %struct.ossl_store_info_st* %call67, null
  br i1 %cmp68.not, label %if.end82, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %while.body
  %18 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !17
  %call71 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %18) #9
  %call72 = call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %call71) #7
  %cmp73.not = icmp eq i8* %call72, null
  br i1 %cmp73.not, label %if.end82, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %call76 = call fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef nonnull %call25, %struct.ossl_store_info_st* noundef nonnull %call67) #9
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %if.end82, label %land.rhs, !llvm.loop !24

if.end82:                                         ; preds = %land.lhs.true75, %land.lhs.true70, %while.body, %land.rhs, %if.then47, %land.lhs.true51, %land.lhs.true, %if.then31, %if.then24
  %osi_pkey.1 = phi %struct.ossl_store_info_st* [ null, %if.then24 ], [ %call32, %land.lhs.true ], [ null, %if.then31 ], [ null, %land.lhs.true51 ], [ null, %if.then47 ], [ null, %land.rhs ], [ null, %while.body ], [ null, %land.lhs.true70 ], [ null, %land.lhs.true75 ]
  %osi_cert.1 = phi %struct.ossl_store_info_st* [ null, %if.then24 ], [ null, %land.lhs.true ], [ null, %if.then31 ], [ %call48, %land.lhs.true51 ], [ null, %if.then47 ], [ null, %land.rhs ], [ null, %while.body ], [ null, %land.lhs.true70 ], [ null, %land.lhs.true75 ]
  %osi_ca.2 = phi %struct.ossl_store_info_st* [ null, %if.then24 ], [ null, %land.lhs.true ], [ null, %if.then31 ], [ null, %land.lhs.true51 ], [ null, %if.then47 ], [ %call67, %land.lhs.true75 ], [ %call67, %land.lhs.true70 ], [ null, %while.body ], [ null, %land.rhs ]
  %tobool85.not = phi i1 [ false, %if.then24 ], [ true, %land.lhs.true ], [ true, %if.then31 ], [ true, %land.lhs.true51 ], [ true, %if.then47 ], [ true, %land.lhs.true75 ], [ true, %land.lhs.true70 ], [ true, %while.body ], [ false, %land.rhs ]
  %ok.4 = phi i32 [ 1, %if.then24 ], [ 0, %land.lhs.true ], [ 0, %if.then31 ], [ 0, %land.lhs.true51 ], [ 0, %if.then47 ], [ 0, %land.lhs.true75 ], [ 0, %land.lhs.true70 ], [ 0, %while.body ], [ 1, %land.rhs ]
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !17
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %19) #7
  %20 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !17
  call void @X509_free(%struct.x509_st* noundef %20) #7
  %21 = load %struct.stack_st_X509*, %struct.stack_st_X509** %chain, align 8, !tbaa !17
  %call83 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %21) #9
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call83, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #7
  call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef %osi_pkey.1) #7
  call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef %osi_cert.1) #7
  call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef %osi_ca.2) #7
  br i1 %tobool85.not, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  call fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef %call25) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end82
  %infos.0 = phi %struct.stack_st_OSSL_STORE_INFO* [ %call25, %if.end82 ], [ null, %if.then86 ]
  %cached_info = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 9
  store %struct.stack_st_OSSL_STORE_INFO* %infos.0, %struct.stack_st_OSSL_STORE_INFO** %cached_info, align 8, !tbaa !26
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup.thread, %if.end21, %if.end87
  %ok.6 = phi i32 [ %ok.4, %if.end87 ], [ 0, %if.end21 ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #8
  br label %p12_end

p12_end:                                          ; preds = %cleanup89, %if.then
  %ok.7 = phi i32 [ %ok.6, %cleanup89 ], [ 1, %if.then ]
  call void @PKCS12_free(%struct.PKCS12_st* noundef %call) #7
  %cached_info98 = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 9
  %22 = load %struct.stack_st_OSSL_STORE_INFO*, %struct.stack_st_OSSL_STORE_INFO** %cached_info98, align 8, !tbaa !26
  %call99 = call fastcc %struct.ossl_store_info_st* @sk_OSSL_STORE_INFO_shift(%struct.stack_st_OSSL_STORE_INFO* noundef %22) #9
  store %struct.ossl_store_info_st* %call99, %struct.ossl_store_info_st** %v, align 8, !tbaa !17
  br label %if.end100

if.end100:                                        ; preds = %p12_end, %entry
  %ok.8 = phi i32 [ %ok.7, %p12_end ], [ 1, %entry ]
  ret i32 %ok.8
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_NAME(i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OSSL_STORE_INFO_set0_NAME_description(%struct.ossl_store_info_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @try_key_ref(%struct.extracted_param_data_st* nocapture noundef readonly %data, %struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, %struct.ossl_provider_st* noundef readnone %provider, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %import_data = alloca %struct.evp_keymgmt_util_try_import_data_st, align 8
  %data_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 1
  %0 = load i8*, i8** %data_type, align 8, !tbaa !22
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef nonnull %0, i8* noundef %propq) #7
  %cmp2.not = icmp eq %struct.evp_keymgmt_st* %call, null
  br i1 %cmp2.not, label %if.end22, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef nonnull %call) #7
  %cmp5 = icmp eq %struct.ossl_provider_st* %call4, %provider
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %ref = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 6
  %1 = load i8*, i8** %ref, align 8, !tbaa !20
  %ref_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 7
  %2 = load i64, i64* %ref_size, align 8, !tbaa !27
  %call7 = tail call i8* @evp_keymgmt_load(%struct.evp_keymgmt_st* noundef nonnull %call, i8* noundef %1, i64 noundef %2) #7
  br label %if.end18

if.else:                                          ; preds = %if.then3
  %3 = bitcast %struct.evp_keymgmt_util_try_import_data_st* %import_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8
  %fetched_loader = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 1
  %4 = load %struct.ossl_store_loader_st*, %struct.ossl_store_loader_st** %fetched_loader, align 8, !tbaa !9
  %p_export_object = getelementptr inbounds %struct.ossl_store_loader_st, %struct.ossl_store_loader_st* %4, i64 0, i32 25
  %5 = load i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)** %p_export_object, align 8, !tbaa !28
  %keymgmt8 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 0
  store %struct.evp_keymgmt_st* %call, %struct.evp_keymgmt_st** %keymgmt8, align 8, !tbaa !30
  %keydata9 = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 1
  store i8* null, i8** %keydata9, align 8, !tbaa !32
  %selection = getelementptr inbounds %struct.evp_keymgmt_util_try_import_data_st, %struct.evp_keymgmt_util_try_import_data_st* %import_data, i64 0, i32 2
  store i32 135, i32* %selection, align 8, !tbaa !33
  %cmp10.not = icmp eq i32 (i8*, i8*, i64, i32 (%struct.ossl_param_st*, i8*)*, i8*)* %5, null
  br i1 %cmp10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.else
  %loader_ctx = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 2
  %6 = bitcast %struct.ossl_store_loader_ctx_st** %loader_ctx to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !34
  %ref12 = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 6
  %8 = load i8*, i8** %ref12, align 8, !tbaa !20
  %ref_size13 = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 7
  %9 = load i64, i64* %ref_size13, align 8, !tbaa !27
  %call14 = call i32 %5(i8* noundef %7, i8* noundef %8, i64 noundef %9, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @evp_keymgmt_util_try_import, i8* noundef nonnull %3) #7
  %.pre = load i8*, i8** %keydata9, align 8, !tbaa !32
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else
  %10 = phi i8* [ %.pre, %if.then11 ], [ null, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then6, %if.end15
  %keydata.0 = phi i8* [ %call7, %if.then6 ], [ %10, %if.end15 ]
  %cmp19.not = icmp eq i8* %keydata.0, null
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call21 = call %struct.evp_pkey_st* @evp_keymgmt_util_make_pkey(%struct.evp_keymgmt_st* noundef nonnull %call, i8* noundef nonnull %keydata.0) #7
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then20, %if.end18
  %pk.0 = phi %struct.evp_pkey_st* [ %call21, %if.then20 ], [ null, %if.end18 ], [ null, %if.end ]
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end22
  %retval.0 = phi %struct.evp_pkey_st* [ %pk.0, %if.end22 ], [ null, %entry ]
  ret %struct.evp_pkey_st* %retval.0
}

declare i32 @ossl_pw_passphrase_callback_dec(i8* noundef, i64 noundef, i64* noundef, %struct.ossl_param_st* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @try_key_value(%struct.extracted_param_data_st* nocapture noundef readonly %data, %struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, i8* noundef %cbarg, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %pdata = alloca i8*, align 8
  %pdatalen = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !17
  %1 = bitcast i8** %pdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %2 = load i8*, i8** %octet_data, align 8, !tbaa !21
  store i8* %2, i8** %pdata, align 8, !tbaa !17
  %3 = bitcast i64* %pdatalen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %octet_data_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 5
  %4 = load i64, i64* %octet_data_size, align 8, !tbaa !23
  store i64 %4, i64* %pdatalen, align 8, !tbaa !35
  %expected_type = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 5
  %5 = load i32, i32* %expected_type, align 8, !tbaa !36
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %switch.hole_check, label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %5 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %cleanup, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %8 = sext i32 %5 to i64
  %switch.gep = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.try_key_value, i64 0, i64 %8
  %switch.load = load i32, i32* %switch.gep, align 4
  %data_structure = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 2
  %9 = load i8*, i8** %data_structure, align 8, !tbaa !37
  %data_type = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 1
  %10 = load i8*, i8** %data_type, align 8, !tbaa !22
  %call = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pk, i8* noundef null, i8* noundef %9, i8* noundef %10, i32 noundef %switch.load, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %call3 = call i32 @OSSL_DECODER_CTX_set_passphrase_cb(%struct.ossl_decoder_ctx_st* noundef %call, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef nonnull @ossl_pw_passphrase_callback_dec, i8* noundef %cbarg) #7
  %call4 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef %call, i8** noundef nonnull %pdata, i64* noundef nonnull %pdatalen) #7
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %call) #7
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check, %entry, %switch.lookup
  %retval.0 = phi %struct.evp_pkey_st* [ %11, %switch.lookup ], [ null, %entry ], [ null, %switch.hole_check ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @try_key_value_legacy(%struct.extracted_param_data_st* nocapture noundef readonly %data, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** nocapture noundef writeonly %store_info_new, %struct.ossl_store_ctx_st* nocapture noundef readonly %ctx, i8* noundef %cbarg, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %derp = alloca i8*, align 8
  %new_der = alloca i8*, align 8
  %pbuf = alloca [1024 x i8], align 16
  %plen = alloca i64, align 8
  %alg = alloca %struct.X509_algor_st*, align 8
  %oct = alloca %struct.asn1_string_st*, align 8
  %len = alloca i32, align 4
  %octet_data = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 4
  %0 = load i8*, i8** %octet_data, align 8, !tbaa !21
  %1 = bitcast i8** %derp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %octet_data_size = getelementptr inbounds %struct.extracted_param_data_st, %struct.extracted_param_data_st* %data, i64 0, i32 5
  %2 = load i64, i64* %octet_data_size, align 8, !tbaa !23
  %expected_type = getelementptr inbounds %struct.ossl_store_ctx_st, %struct.ossl_store_ctx_st* %ctx, i64 0, i32 5
  %3 = load i32, i32* %expected_type, align 8, !tbaa !36
  switch i32 %3, label %land.lhs.true [
    i32 0, label %if.then
    i32 3, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  store i8* %0, i8** %derp, align 8, !tbaa !17
  %call = call %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %derp, i64 noundef %2, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  %cmp3.not = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp3.not, label %land.lhs.truethread-pre-split, label %if.end5

if.end5:                                          ; preds = %if.then
  store %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* @OSSL_STORE_INFO_new_PUBKEY, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** %store_info_new, align 8, !tbaa !17
  br label %if.end38

land.lhs.truethread-pre-split:                    ; preds = %if.then
  %.pr = load i32, i32* %expected_type, align 8, !tbaa !36
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.truethread-pre-split, %entry
  %4 = phi i32 [ %.pr, %land.lhs.truethread-pre-split ], [ %3, %entry ]
  switch i32 %4, label %if.end38 [
    i32 0, label %if.then12
    i32 4, label %if.then12
  ]

if.then12:                                        ; preds = %land.lhs.true, %land.lhs.true
  %5 = bitcast i8** %new_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8
  store i8* null, i8** %new_der, align 8, !tbaa !17
  store i8* %0, i8** %derp, align 8, !tbaa !17
  %call13 = call %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef null, i8** noundef nonnull %derp, i64 noundef %2) #7
  %cmp14.not = icmp eq %struct.X509_sig_st* %call13, null
  br i1 %cmp14.not, label %if.end23, label %if.then15

if.then15:                                        ; preds = %if.then12
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %pbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #8
  %7 = bitcast i64* %plen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8
  store i64 0, i64* %plen, align 8, !tbaa !35
  %call16 = call i32 @ossl_pw_passphrase_callback_dec(i8* noundef nonnull %6, i64 noundef 1024, i64* noundef nonnull %plen, %struct.ossl_param_st* noundef null, i8* noundef %cbarg) #7
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.try_key_value_legacy, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 44, i32 noundef 115, i8* noundef null) #7
  br label %if.end22

if.else:                                          ; preds = %if.then15
  %8 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %alg, align 8, !tbaa !17
  %9 = bitcast %struct.asn1_string_st** %oct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %oct, align 8, !tbaa !17
  %10 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8
  store i32 0, i32* %len, align 4, !tbaa !38
  call void @X509_SIG_get0(%struct.X509_sig_st* noundef nonnull %call13, %struct.X509_algor_st** noundef nonnull %alg, %struct.asn1_string_st** noundef nonnull %oct) #7
  %11 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !17
  %12 = load i64, i64* %plen, align 8, !tbaa !35
  %conv = trunc i64 %12 to i32
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %oct, align 8, !tbaa !17
  %data19 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 2
  %14 = load i8*, i8** %data19, align 8, !tbaa !39
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 0
  %15 = load i32, i32* %length, align 8, !tbaa !41
  %call20 = call i8* @PKCS12_pbe_crypt(%struct.X509_algor_st* noundef %11, i8* noundef nonnull %6, i32 noundef %conv, i8* noundef %14, i32 noundef %15, i8** noundef nonnull %new_der, i32* noundef nonnull %len, i32 noundef 0) #7
  %16 = load i32, i32* %len, align 4, !tbaa !38
  %conv21 = sext i32 %16 to i64
  %17 = load i8*, i8** %new_der, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  %der.0 = phi i8* [ %17, %if.else ], [ %0, %if.then17 ]
  %der_len.0 = phi i64 [ %conv21, %if.else ], [ %2, %if.then17 ]
  call void @X509_SIG_free(%struct.X509_sig_st* noundef nonnull %call13) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then12
  %der.1 = phi i8* [ %der.0, %if.end22 ], [ %0, %if.then12 ]
  %der_len.1 = phi i64 [ %der_len.0, %if.end22 ], [ %2, %if.then12 ]
  %cmp24.not = icmp eq i8* %der.1, null
  br i1 %cmp24.not, label %if.end37, label %if.then26

if.then26:                                        ; preds = %if.end23
  store i8* %der.1, i8** %derp, align 8, !tbaa !17
  %call27 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %derp, i64 noundef %der_len.1) #7
  %cmp28.not = icmp eq %struct.pkcs8_priv_key_info_st* %call27, null
  br i1 %cmp28.not, label %if.end37, label %if.end33

if.end33:                                         ; preds = %if.then26
  %call31 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef nonnull %call27, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #7
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef nonnull %call27) #7
  %cmp34.not = icmp eq %struct.evp_pkey_st* %call31, null
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  store %struct.ossl_store_info_st* (%struct.evp_pkey_st*)* @OSSL_STORE_INFO_new_PKEY, %struct.ossl_store_info_st* (%struct.evp_pkey_st*)** %store_info_new, align 8, !tbaa !17
  br label %if.end37

if.end37:                                         ; preds = %if.end23, %if.then26, %if.then36, %if.end33
  %pk.15 = phi %struct.evp_pkey_st* [ %call31, %if.then36 ], [ null, %if.end33 ], [ null, %if.then26 ], [ null, %if.end23 ]
  %18 = load i8*, i8** %new_der, align 8, !tbaa !17
  call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 noundef 362) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end5, %land.lhs.true, %if.end37
  %pk.2 = phi %struct.evp_pkey_st* [ %pk.15, %if.end37 ], [ %call, %if.end5 ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  ret %struct.evp_pkey_st* %pk.2
}

declare i32 @evp_keymgmt_util_has(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PKEY(%struct.evp_pkey_st* noundef) #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PUBKEY(%struct.evp_pkey_st* noundef) #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_PARAMS(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_KEYMGMT_get0_provider(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare i8* @evp_keymgmt_load(%struct.evp_keymgmt_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @evp_keymgmt_util_try_import(%struct.ossl_param_st* noundef, i8* noundef) #2

declare %struct.evp_pkey_st* @evp_keymgmt_util_make_pkey(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #2

declare %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_CTX_set_passphrase_cb(%struct.ossl_decoder_ctx_st* noundef, i32 (i8*, i64, i64*, %struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

declare void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @X509_SIG_get0(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare i8* @PKCS12_pbe_crypt(%struct.X509_algor_st* noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i8** noundef, i32* noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #2

declare %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare %struct.x509_st* @X509_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @X509_free(%struct.x509_st* noundef) #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CERT(%struct.x509_st* noundef) local_unnamed_addr #2

declare %struct.X509_crl_st* @d2i_X509_CRL(%struct.X509_crl_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_x509_crl_set0_libctx(%struct.X509_crl_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @X509_CRL_free(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.ossl_store_info_st* @OSSL_STORE_INFO_new_CRL(%struct.X509_crl_st* noundef) local_unnamed_addr #2

declare %struct.PKCS12_st* @d2i_PKCS12(%struct.PKCS12_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PKCS12_verify_mac(%struct.PKCS12_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @ossl_pw_get_passphrase(i8* noundef, i64 noundef, i64* noundef, %struct.ossl_param_st* noundef, i32 noundef, %struct.ossl_passphrase_data_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @PKCS12_parse(%struct.PKCS12_st* noundef, i8* noundef, %struct.evp_pkey_st** noundef, %struct.x509_st** noundef, %struct.stack_st_X509** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_STORE_INFO* @sk_OSSL_STORE_INFO_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_STORE_INFO*
  ret %struct.stack_st_OSSL_STORE_INFO* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_STORE_INFO_push(%struct.stack_st_OSSL_STORE_INFO* noundef %sk, %struct.ossl_store_info_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_store_info_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #7
  ret i32 %call
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @OPENSSL_sk_shift(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

declare void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_STORE_INFO_pop_free(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_store_info_st*)* @OSSL_STORE_INFO_free to void (i8*)*)) #7
  ret void
}

declare void @PKCS12_free(%struct.PKCS12_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_store_info_st* @sk_OSSL_STORE_INFO_shift(%struct.stack_st_OSSL_STORE_INFO* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_STORE_INFO* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %0) #7
  %1 = bitcast i8* %call to %struct.ossl_store_info_st*
  ret %struct.ossl_store_info_st* %1
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"ossl_load_result_data_st", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"ossl_store_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !6, i64 48, !11, i64 56, !11, i64 60, !6, i64 64, !12, i64 72}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ossl_passphrase_data_st", !7, i64 0, !7, i64 8, !11, i64 24, !6, i64 32, !13, i64 40}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !6, i64 48}
!15 = !{!16, !11, i64 0}
!16 = !{!"extracted_param_data_st", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !6, i64 48, !13, i64 56, !6, i64 64}
!17 = !{!6, !6, i64 0}
!18 = !{!16, !6, i64 24}
!19 = !{!16, !6, i64 64}
!20 = !{!16, !6, i64 48}
!21 = !{!16, !6, i64 32}
!22 = !{!16, !6, i64 8}
!23 = !{!16, !13, i64 40}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!10, !6, i64 64}
!27 = !{!16, !13, i64 56}
!28 = !{!29, !6, i64 200}
!29 = !{!"ossl_store_loader_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !6, i64 112, !6, i64 120, !7, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200}
!30 = !{!31, !6, i64 0}
!31 = !{!"evp_keymgmt_util_try_import_data_st", !6, i64 0, !6, i64 8, !11, i64 16}
!32 = !{!31, !6, i64 8}
!33 = !{!31, !11, i64 16}
!34 = !{!10, !6, i64 16}
!35 = !{!13, !13, i64 0}
!36 = !{!10, !11, i64 40}
!37 = !{!16, !6, i64 16}
!38 = !{!11, !11, i64 0}
!39 = !{!40, !6, i64 8}
!40 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !6, i64 8, !13, i64 16}
!41 = !{!40, !11, i64 0}
