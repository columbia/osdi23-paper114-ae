; ModuleID = 'test/cmp_server_test.c'
source_filename = "test/cmp_server_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_cmp_msg_st = type { %struct.ossl_cmp_pkiheader_st*, %struct.ossl_cmp_pkibody_st*, %struct.asn1_string_st*, %struct.stack_st_X509*, %struct.ossl_lib_ctx_st*, i8* }
%struct.ossl_cmp_pkiheader_st = type { %struct.asn1_string_st*, %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st*, %struct.asn1_string_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.stack_st_OSSL_CMP_ITAV* }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st_OSSL_CMP_ITAV = type opaque
%struct.ossl_cmp_pkibody_st = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.stack_st_OSSL_CRMF_MSG* }
%struct.stack_st_OSSL_CRMF_MSG = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_X509 = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.options_st = type { i8*, i32, i32, i8* }
%struct.test_fixture = type { i8*, i32, %struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st* }
%struct.ossl_cmp_srv_ctx_st = type opaque
%struct.ossl_cmp_ctx_st = type { %struct.ossl_lib_ctx_st*, i8*, i32 (i8*, i8*, i32, i32, i8*)*, i32, %struct.ossl_cmp_msg_st* (%struct.ossl_cmp_ctx_st*, %struct.ossl_cmp_msg_st*)*, i8*, %struct.ossl_http_req_ctx_st*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i64, %struct.bio_st* (%struct.bio_st*, i8*, i32, i32)*, i8*, i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_name_st*, %struct.x509_store_st*, %struct.stack_st_X509*, i32, i32, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.evp_pkey_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, i64, %struct.evp_md_st*, i32, i32, %struct.X509_name_st*, %struct.evp_md_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.stack_st_OSSL_CMP_ITAV*, i32, i32, %struct.stack_st_X509*, %struct.evp_pkey_st*, i32, %struct.X509_name_st*, i32, %struct.X509_name_st*, %struct.stack_st_GENERAL_NAME*, i32, i32, %struct.stack_st_X509_EXTENSION*, %struct.stack_st_POLICYINFO*, i32, i32, %struct.x509_st*, %struct.X509_req_st*, i32, %struct.stack_st_OSSL_CMP_ITAV*, i32, %struct.stack_st_ASN1_UTF8STRING*, i32, %struct.x509_st*, %struct.stack_st_X509*, %struct.stack_st_X509*, %struct.stack_st_X509*, i32 (%struct.ossl_cmp_ctx_st*, %struct.x509_st*, i32, i8**)*, i8* }
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
%struct.ossl_cmp_pkisi_st = type { %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*, %struct.asn1_string_st* }
%struct.ossl_cmp_errormsgcontent_st = type { %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING* }
%struct.ossl_crmf_msg_st = type opaque

@request = internal unnamed_addr global %struct.ossl_cmp_msg_st* null, align 8
@default_null_provider = internal global %struct.ossl_provider_st* null, align 8
@provider = internal global %struct.ossl_provider_st* null, align 8
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [78 x i8] c"Usage: %s [options] CR_protected_PBM_1234.der module_name [module_conf_file]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"test/cmp_server_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"request_f = test_get_argument(0)\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"usage: cmp_server_test %s\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"CR_protected_PBM_1234.der module_name [module_conf_file]\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"request = load_pkimsg(request_f, libctx)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"test_handle_request\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"fixture->srv_ctx = OSSL_CMP_SRV_CTX_new(libctx, NULL)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"@test_dummy\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"client_ctx = OSSL_CMP_CTX_new(libctx, NULL)\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"OSSL_CMP_CTX_set_transfer_cb_arg(client_ctx, ctx)\00", align 1
@.str.26 = private unnamed_addr constant [97 x i8] c"OSSL_CMP_SRV_CTX_init(ctx, dummy_custom_ctx, process_cert_request, NULL, NULL, NULL, NULL, NULL)\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"custom_ctx = OSSL_CMP_SRV_CTX_get0_custom_ctx(ctx)\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"strcmp(custom_ctx, dummy_custom_ctx)\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"OSSL_CMP_SRV_CTX_set_send_unprotected_errors(ctx, 0)\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"OSSL_CMP_SRV_CTX_set_accept_unprotected(ctx, 0)\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"OSSL_CMP_SRV_CTX_set_accept_raverified(ctx, 1)\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(ctx, 1)\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"cmp_ctx = OSSL_CMP_SRV_CTX_get0_cmp_ctx(ctx)\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.37 = private unnamed_addr constant [60 x i8] c"rsp = OSSL_CMP_CTX_server_perform(client_ctx, fixture->req)\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"OSSL_CMP_MSG_get_bodytype(rsp)\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"OSSL_CMP_PKIBODY_ERROR\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"errorContent = rsp->body->value.error\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"ASN1_INTEGER_get(errorContent->errorCode)\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"ERR_PACK(ERR_LIB_CMP, 0, dummy_errorCode)\00", align 1
@__func__.process_cert_request = private unnamed_addr constant [21 x i8] c"process_cert_request\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @request, align 8, !tbaa !3
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %0) #4
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @default_null_provider, align 8, !tbaa !3
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #4
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @provider, align 8, !tbaa !3
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %2) #4
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %3) #4
  ret void
}

declare dso_local void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #2 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #4
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @default_null_provider, %struct.ossl_provider_st** noundef nonnull @provider, i32 noundef 1, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0)) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call10 = tail call %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef %call1, %struct.ossl_lib_ctx_st* noundef %0) #4
  store %struct.ossl_cmp_msg_st* %call10, %struct.ossl_cmp_msg_st** @request, align 8, !tbaa !3
  %1 = bitcast %struct.ossl_cmp_msg_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i8* noundef %1) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void @cleanup_tests() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_handle_request) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end14, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %if.then13 ], [ 0, %if.then4 ], [ 0, %if.then ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_arg_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, %struct.ossl_provider_st** noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @load_pkimsg(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_handle_request() #0 {
entry:
  %call = tail call fastcc %struct.test_fixture* @set_up() #5
  %cmp = icmp eq %struct.test_fixture* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** @request, align 8, !tbaa !3
  %req = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 3
  store %struct.ossl_cmp_msg_st* %0, %struct.ossl_cmp_msg_st** %req, align 8, !tbaa !7
  %expected = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %call, i64 0, i32 1
  store i32 1, i32* %expected, align 8, !tbaa !10
  %call3 = tail call fastcc i32 @execute_test_handle_request(%struct.test_fixture* noundef nonnull %call) #5
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.test_fixture* @set_up() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 35) #4
  %0 = bitcast i8* %call to %struct.test_fixture*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i8* noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %test_case_name2 = bitcast i8* %call to i8**
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8** %test_case_name2, align 8, !tbaa !11
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call3 = tail call %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #4
  %srv_ctx = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %srv_ctx to %struct.ossl_cmp_srv_ctx_st**
  store %struct.ossl_cmp_srv_ctx_st* %call3, %struct.ossl_cmp_srv_ctx_st** %2, align 8, !tbaa !12
  %3 = bitcast %struct.ossl_cmp_srv_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %cleanup

err:                                              ; preds = %if.end
  tail call fastcc void @tear_down(%struct.test_fixture* noundef nonnull %0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi %struct.test_fixture* [ null, %err ], [ null, %entry ], [ %0, %if.end ]
  ret %struct.test_fixture* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_test_handle_request(%struct.test_fixture* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %srv_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %0 = load %struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_srv_ctx_st** %srv_ctx, align 8, !tbaa !12
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !3
  %call = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #4
  %2 = bitcast %struct.ossl_cmp_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = bitcast %struct.ossl_cmp_srv_ctx_st* %0 to i8*
  %call2 = tail call i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef %call, i8* noundef %3) #4
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef nonnull @process_cert_request, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef null, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef null, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef null, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef null, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef null) #4
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv7) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = tail call i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %0) #4
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i8* noundef %call11) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call i32 @strcmp(i8* noundef %call11, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)) #6
  %call16 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call15, i32 noundef 0) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %end, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false14
  %call20 = tail call i32 @OSSL_CMP_SRV_CTX_set_send_unprotected_errors(%struct.ossl_cmp_srv_ctx_st* noundef %0, i32 noundef 0) #4
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv22) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end19
  %call26 = tail call i32 @OSSL_CMP_SRV_CTX_set_accept_unprotected(%struct.ossl_cmp_srv_ctx_st* noundef %0, i32 noundef 0) #4
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv28) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = tail call i32 @OSSL_CMP_SRV_CTX_set_accept_raverified(%struct.ossl_cmp_srv_ctx_st* noundef %0, i32 noundef 1) #4
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv34) #4
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %end, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = tail call i32 @OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(%struct.ossl_cmp_srv_ctx_st* noundef %0, i32 noundef 1) #4
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv40) #4
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %end, label %if.end44

if.end44:                                         ; preds = %lor.lhs.false37
  %call45 = tail call %struct.ossl_cmp_ctx_st* @OSSL_CMP_SRV_CTX_get0_cmp_ctx(%struct.ossl_cmp_srv_ctx_st* noundef %0) #4
  %4 = bitcast %struct.ossl_cmp_ctx_st* %call45 to i8*
  %call46 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i8* noundef %4) #4
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %call49 = tail call i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef %call45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 noundef 6) #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %end, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %call52 = tail call i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef %call45, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i32 noundef 4) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %end, label %if.end55

if.end55:                                         ; preds = %lor.lhs.false51
  %req = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 3
  %5 = load %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_msg_st** %req, align 8, !tbaa !7
  %call56 = tail call %struct.ossl_cmp_msg_st* @OSSL_CMP_CTX_server_perform(%struct.ossl_cmp_ctx_st* noundef %call, %struct.ossl_cmp_msg_st* noundef %5) #4
  %6 = bitcast %struct.ossl_cmp_msg_st* %call56 to i8*
  %call57 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.37, i64 0, i64 0), i8* noundef %6) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %end, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end55
  %call60 = tail call i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef %call56) #4
  %call61 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 noundef %call60, i32 noundef 23) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %end, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %body = getelementptr inbounds %struct.ossl_cmp_msg_st, %struct.ossl_cmp_msg_st* %call56, i64 0, i32 1
  %7 = load %struct.ossl_cmp_pkibody_st*, %struct.ossl_cmp_pkibody_st** %body, align 8, !tbaa !13
  %value = getelementptr inbounds %struct.ossl_cmp_pkibody_st, %struct.ossl_cmp_pkibody_st* %7, i64 0, i32 1
  %error = bitcast %union.anon.1* %value to %struct.ossl_cmp_errormsgcontent_st**
  %8 = load %struct.ossl_cmp_errormsgcontent_st*, %struct.ossl_cmp_errormsgcontent_st** %error, align 8, !tbaa !15
  %9 = bitcast %struct.ossl_cmp_errormsgcontent_st* %8 to i8*
  %call64 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i8* noundef %9) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %end, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %errorCode = getelementptr inbounds %struct.ossl_cmp_errormsgcontent_st, %struct.ossl_cmp_errormsgcontent_st* %8, i64 0, i32 1
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %errorCode, align 8, !tbaa !16
  %call67 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %10) #4
  %conv68 = trunc i64 %call67 to i32
  %call71 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv68, i32 noundef 486539366) #4
  %tobool72.not = icmp ne i32 %call71, 0
  %spec.select = zext i1 %tobool72.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false66, %if.end55, %lor.lhs.false59, %lor.lhs.false63, %if.end44, %lor.lhs.false48, %lor.lhs.false51, %if.end19, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false37, %if.end, %lor.lhs.false10, %lor.lhs.false14, %entry, %lor.lhs.false
  %rsp.0 = phi %struct.ossl_cmp_msg_st* [ %call56, %lor.lhs.false63 ], [ %call56, %lor.lhs.false59 ], [ %call56, %if.end55 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false48 ], [ null, %if.end44 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %if.end19 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call56, %lor.lhs.false66 ]
  %res.0 = phi i32 [ 0, %lor.lhs.false63 ], [ 0, %lor.lhs.false59 ], [ 0, %if.end55 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false48 ], [ 0, %if.end44 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %if.end19 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false66 ]
  tail call void @OSSL_CMP_MSG_free(%struct.ossl_cmp_msg_st* noundef %rsp.0) #4
  tail call void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef %call) #4
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.test_fixture* noundef %fixture) unnamed_addr #0 {
entry:
  %srv_ctx = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %fixture, i64 0, i32 2
  %0 = load %struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_srv_ctx_st** %srv_ctx, align 8, !tbaa !12
  tail call void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef %0) #4
  %1 = bitcast %struct.test_fixture* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 28) #4
  ret void
}

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_srv_ctx_st* @OSSL_CMP_SRV_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_CTX_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set_transfer_cb_arg(%struct.ossl_cmp_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_SRV_CTX_init(%struct.ossl_cmp_srv_ctx_st* noundef, i8* noundef, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_crmf_msg_st*, %struct.X509_req_st*, %struct.x509_st**, %struct.stack_st_X509**, %struct.stack_st_X509**)* noundef, %struct.ossl_cmp_pkisi_st* (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.X509_name_st*, %struct.asn1_string_st*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.stack_st_OSSL_CMP_ITAV*, %struct.stack_st_OSSL_CMP_ITAV**)* noundef, void (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, %struct.ossl_cmp_pkisi_st*, %struct.asn1_string_st*, %struct.stack_st_ASN1_UTF8STRING*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.asn1_string_st*, %struct.ossl_cmp_pkisi_st*)* noundef, i32 (%struct.ossl_cmp_srv_ctx_st*, %struct.ossl_cmp_msg_st*, i32, %struct.ossl_cmp_msg_st**, i64*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal noalias %struct.ossl_cmp_pkisi_st* @process_cert_request(%struct.ossl_cmp_srv_ctx_st* nocapture noundef readnone %srv_ctx, %struct.ossl_cmp_msg_st* nocapture noundef readnone %cert_req, i32 noundef %certReqId, %struct.ossl_crmf_msg_st* nocapture noundef readnone %crm, %struct.X509_req_st* nocapture noundef readnone %p10cr, %struct.x509_st** nocapture noundef readnone %certOut, %struct.stack_st_X509** nocapture noundef readnone %chainOut, %struct.stack_st_X509** nocapture noundef readnone %caPubs) #0 {
entry:
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.process_cert_request, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 58, i32 noundef 102, i8* noundef null) #4
  ret %struct.ossl_cmp_pkisi_st* null
}

declare dso_local i8* @OSSL_CMP_SRV_CTX_get0_custom_ctx(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_CMP_SRV_CTX_set_send_unprotected_errors(%struct.ossl_cmp_srv_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_SRV_CTX_set_accept_unprotected(%struct.ossl_cmp_srv_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_SRV_CTX_set_accept_raverified(%struct.ossl_cmp_srv_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_SRV_CTX_set_grant_implicit_confirm(%struct.ossl_cmp_srv_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_ctx_st* @OSSL_CMP_SRV_CTX_get0_cmp_ctx(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_referenceValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_CTX_set1_secretValue(%struct.ossl_cmp_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_cmp_msg_st* @OSSL_CMP_CTX_server_perform(%struct.ossl_cmp_ctx_st* noundef, %struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_CMP_MSG_get_bodytype(%struct.ossl_cmp_msg_st* noundef) local_unnamed_addr #1

declare dso_local i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_CTX_free(%struct.ossl_cmp_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @ERR_new() local_unnamed_addr #1

declare dso_local void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @OSSL_CMP_SRV_CTX_free(%struct.ossl_cmp_srv_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 24}
!8 = !{!"test_fixture", !4, i64 0, !9, i64 8, !4, i64 16, !4, i64 24}
!9 = !{!"int", !5, i64 0}
!10 = !{!8, !9, i64 8}
!11 = !{!8, !4, i64 0}
!12 = !{!8, !4, i64 16}
!13 = !{!14, !4, i64 8}
!14 = !{!"ossl_cmp_msg_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !4, i64 8}
!17 = !{!"ossl_cmp_errormsgcontent_st", !4, i64 0, !4, i64 8, !4, i64 16}
