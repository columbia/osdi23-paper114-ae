; ModuleID = 'test/ocspapitest.c'
source_filename = "test/ocspapitest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ocsp_basic_response_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.evp_md_st = type opaque
%struct.ACCESS_DESCRIPTION_st = type { %struct.asn1_object_st*, %struct.GENERAL_NAME_st* }
%struct.asn1_object_st = type opaque
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.X509_name_st = type opaque
%struct.X509_extension_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ocsp_cert_id_st = type opaque
%struct.ocsp_single_response_st = type opaque
%struct.bio_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s [options] certfile privkeyfile\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [19 x i8] c"test/ocspapitest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"certstr = test_get_argument(0)\00", align 1
@certstr = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"privkeystr = test_get_argument(1)\00", align 1
@privkeystr = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"test_resp_signer\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"test_access_description\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"test_ocsp_url_svcloc_new\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"extra_certs\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"get_cert_and_key(&signer, &key)\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"sk_X509_push(extra_certs, signer)\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"OCSP_basic_sign(bs, signer, key, EVP_sha1(), NULL, OCSP_NOCERTS)\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"OCSP_resp_get0_signer(bs, &tmp, extra_certs)\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"X509_cmp(tmp, signer)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"OCSP_basic_sign(bs, signer, key, EVP_sha1(), NULL, 0)\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"OCSP_resp_get0_signer(bs, &tmp, NULL)\00", align 1
@__const.make_dummy_resp.namestr = private unnamed_addr constant [20 x i8] c"openssl.example.com\00", align 16
@.str.31 = private unnamed_addr constant [8 x i8] c"thisupd\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"nextupd\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"cid\00", align 1
@.str.34 = private unnamed_addr constant [86 x i8] c"OCSP_basic_add1_status(bs, cid, V_OCSP_CERTSTATUS_UNKNOWN, 0, NULL, thisupd, nextupd)\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"certbio = BIO_new_file(certstr, \22r\22)\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"keybio = BIO_new_file(privkeystr, \22r\22)\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"ad->location\00", align 1
@test_ocsp_url_svcloc_new.urls = internal global [3 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i8* null], align 16
@.str.42 = private unnamed_addr constant [16 x i8] c"www.openssl.org\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"www.openssl.net\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"get_cert(&issuer)\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"ext\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #7
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #7
  store i8* %call1, i8** @certstr, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #7
  store i8* %call4, i8** @privkeystr, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_resp_signer) #7
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_access_description, i32 noundef 3, i32 noundef 1) #7
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_ocsp_url_svcloc_new) #7
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end8, %if.then
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_resp_signer() #1 {
entry:
  %signer = alloca %struct.x509_st*, align 8
  %tmp = alloca %struct.x509_st*, align 8
  %key = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.x509_st** %signer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.x509_st* null, %struct.x509_st** %signer, align 8, !tbaa !3
  %1 = bitcast %struct.x509_st** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast %struct.evp_pkey_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call = tail call fastcc %struct.ocsp_basic_response_st* @make_dummy_resp() #9
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %3 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509*
  %4 = bitcast %struct.ocsp_basic_response_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %4) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = bitcast %struct.stack_st* %call1 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* noundef %5) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call fastcc i32 @get_cert_and_key(%struct.x509_st** noundef nonnull %signer, %struct.evp_pkey_st** noundef nonnull %key) #9
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv) #7
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false5.err_crit_edge, label %lor.lhs.false9

lor.lhs.false5.err_crit_edge:                     ; preds = %lor.lhs.false5
  %.pre = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !3
  br label %err

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #9
  %6 = load %struct.x509_st*, %struct.x509_st** %signer, align 8, !tbaa !3
  %7 = bitcast %struct.x509_st* %6 to i8*
  %call12 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call10, i8* noundef %7) #7
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv14) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %call18 = tail call %struct.evp_md_st* @EVP_sha1() #7
  %call19 = tail call i32 @OCSP_basic_sign(%struct.ocsp_basic_response_st* noundef %call, %struct.x509_st* noundef %6, %struct.evp_pkey_st* noundef %8, %struct.evp_md_st* noundef %call18, %struct.stack_st_X509* noundef null, i64 noundef 1) #7
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv21) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false17
  %call24 = call i32 @OCSP_resp_get0_signer(%struct.ocsp_basic_response_st* noundef %call, %struct.x509_st** noundef nonnull %tmp, %struct.stack_st_X509* noundef %3) #7
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv26) #7
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end
  %9 = load %struct.x509_st*, %struct.x509_st** %tmp, align 8, !tbaa !3
  %call30 = call i32 @X509_cmp(%struct.x509_st* noundef %9, %struct.x509_st* noundef %6) #7
  %call31 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call30, i32 noundef 0) #7
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false29
  call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %call) #7
  %call35 = call fastcc %struct.ocsp_basic_response_st* @make_dummy_resp() #9
  store %struct.x509_st* null, %struct.x509_st** %tmp, align 8, !tbaa !3
  %10 = bitcast %struct.ocsp_basic_response_st* %call35 to i8*
  %call36 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %10) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.end34
  %call39 = call %struct.evp_md_st* @EVP_sha1() #7
  %call40 = call i32 @OCSP_basic_sign(%struct.ocsp_basic_response_st* noundef %call35, %struct.x509_st* noundef %6, %struct.evp_pkey_st* noundef %8, %struct.evp_md_st* noundef %call39, %struct.stack_st_X509* noundef null, i64 noundef 0) #7
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv42) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %lor.lhs.false38
  %call47 = call i32 @OCSP_resp_get0_signer(%struct.ocsp_basic_response_st* noundef %call35, %struct.x509_st** noundef nonnull %tmp, %struct.stack_st_X509* noundef null) #7
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 141, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv49) #7
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end46
  %11 = load %struct.x509_st*, %struct.x509_st** %tmp, align 8, !tbaa !3
  %call53 = call i32 @X509_cmp(%struct.x509_st* noundef %11, %struct.x509_st* noundef %6) #7
  %call54 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call53, i32 noundef 0) #7
  %tobool55.not = icmp ne i32 %call54, 0
  %spec.select = zext i1 %tobool55.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false5.err_crit_edge, %lor.lhs.false52, %if.end46, %if.end34, %lor.lhs.false38, %if.end, %lor.lhs.false29, %entry, %lor.lhs.false, %lor.lhs.false9, %lor.lhs.false17
  %12 = phi %struct.x509_st* [ %6, %if.end46 ], [ %6, %lor.lhs.false38 ], [ %6, %if.end34 ], [ %6, %lor.lhs.false29 ], [ %6, %if.end ], [ %6, %lor.lhs.false17 ], [ %6, %lor.lhs.false9 ], [ %.pre, %lor.lhs.false5.err_crit_edge ], [ null, %lor.lhs.false ], [ null, %entry ], [ %6, %lor.lhs.false52 ]
  %bs.0 = phi %struct.ocsp_basic_response_st* [ %call35, %if.end46 ], [ %call35, %lor.lhs.false38 ], [ %call35, %if.end34 ], [ %call, %lor.lhs.false29 ], [ %call, %if.end ], [ %call, %lor.lhs.false17 ], [ %call, %lor.lhs.false9 ], [ %call, %lor.lhs.false5.err_crit_edge ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ %call35, %lor.lhs.false52 ]
  %ret.0 = phi i32 [ 0, %if.end46 ], [ 0, %lor.lhs.false38 ], [ 0, %if.end34 ], [ 0, %lor.lhs.false29 ], [ 0, %if.end ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5.err_crit_edge ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false52 ]
  call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %bs.0) #7
  %call58 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %3) #9
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call58) #7
  call void @X509_free(%struct.x509_st* noundef %12) #7
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %13) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_access_description(i32 noundef %testcase) #1 {
entry:
  %call = tail call %struct.ACCESS_DESCRIPTION_st* @ACCESS_DESCRIPTION_new() #7
  %0 = bitcast %struct.ACCESS_DESCRIPTION_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %testcase, label %sw.epilog [
    i32 2, label %sw.bb8
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %location = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %call, i64 0, i32 1
  %1 = bitcast %struct.GENERAL_NAME_st** %location to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !7
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* noundef %2) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %sw.bb
  %3 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %location, align 8, !tbaa !7
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %3) #7
  store %struct.GENERAL_NAME_st* null, %struct.GENERAL_NAME_st** %location, align 8, !tbaa !7
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %location9 = getelementptr inbounds %struct.ACCESS_DESCRIPTION_st, %struct.ACCESS_DESCRIPTION_st* %call, i64 0, i32 1
  %4 = load %struct.GENERAL_NAME_st*, %struct.GENERAL_NAME_st** %location9, align 8, !tbaa !7
  tail call void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef %4) #7
  %call10 = tail call %struct.GENERAL_NAME_st* @GENERAL_NAME_new() #7
  store %struct.GENERAL_NAME_st* %call10, %struct.GENERAL_NAME_st** %location9, align 8, !tbaa !7
  %5 = bitcast %struct.GENERAL_NAME_st* %call10 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* noundef %5) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.end, %if.end5
  tail call void @ACCESS_DESCRIPTION_free(%struct.ACCESS_DESCRIPTION_st* noundef %call) #7
  br label %err

err:                                              ; preds = %sw.bb8, %sw.bb, %entry, %sw.epilog
  %ret.0 = phi i32 [ 1, %sw.epilog ], [ 0, %sw.bb ], [ 0, %sw.bb8 ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ocsp_url_svcloc_new() #1 {
entry:
  %issuer = alloca %struct.x509_st*, align 8
  %0 = bitcast %struct.x509_st** %issuer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.x509_st* null, %struct.x509_st** %issuer, align 8, !tbaa !3
  %call = call fastcc i32 @get_cert(%struct.x509_st** noundef nonnull %issuer) #9
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv) #7
  %tobool.not = icmp eq i32 %call1, 0
  %.pre = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !3
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef %.pre) #7
  %call3 = tail call %struct.X509_extension_st* @OCSP_url_svcloc_new(%struct.X509_name_st* noundef %call2, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @test_ocsp_url_svcloc_new.urls, i64 0, i64 0)) #7
  %1 = bitcast %struct.X509_extension_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %1) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  tail call void @X509_EXTENSION_free(%struct.X509_extension_st* noundef %call3) #7
  br label %err

err:                                              ; preds = %entry, %if.end, %if.end7
  %ret.0 = phi i32 [ 1, %if.end7 ], [ 0, %if.end ], [ 0, %entry ]
  tail call void @X509_free(%struct.x509_st* noundef %.pre) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ocsp_basic_response_st* @make_dummy_resp() unnamed_addr #1 {
entry:
  %namestr = alloca [20 x i8], align 16
  %keybytes = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %namestr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %0, i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @__const.make_dummy_resp.namestr, i64 0, i64 0), i64 20, i1 false)
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %keybytes, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  store i8 7, i8* %1, align 16
  %call = tail call %struct.ocsp_basic_response_st* @OCSP_BASICRESP_new() #7
  %call1 = tail call i64 @time(i64* noundef null) #7
  %call2 = tail call %struct.asn1_string_st* @ASN1_TIME_set(%struct.asn1_string_st* noundef null, i64 noundef %call1) #7
  %call3 = tail call i64 @time(i64* noundef null) #7
  %add = add nsw i64 %call3, 200
  %call4 = tail call %struct.asn1_string_st* @ASN1_TIME_set(%struct.asn1_string_st* noundef null, i64 noundef %add) #7
  %call5 = tail call %struct.X509_name_st* @X509_NAME_new() #7
  %call6 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #7
  %call7 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #7
  %call8 = call i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef %call5, i32 noundef 13, i32 noundef 4097, i8* noundef nonnull %0, i32 noundef -1, i32 noundef -1, i32 noundef 1) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call10 = call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef %call6, i8* noundef nonnull %1, i32 noundef 128) #7
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef %call7, i64 noundef 1) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false12
  %call15 = call %struct.evp_md_st* @EVP_sha256() #7
  %call16 = call %struct.ocsp_cert_id_st* @OCSP_cert_id_new(%struct.evp_md_st* noundef %call15, %struct.X509_name_st* noundef %call5, %struct.asn1_string_st* noundef %call6, %struct.asn1_string_st* noundef %call7) #7
  %2 = bitcast %struct.ocsp_basic_response_st* %call to i8*
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %2) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %3 = bitcast %struct.asn1_string_st* %call2 to i8*
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* noundef %3) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %4 = bitcast %struct.asn1_string_st* %call4 to i8*
  %call23 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* noundef %4) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %5 = bitcast %struct.ocsp_cert_id_st* %call16 to i8*
  %call26 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef %5) #7
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = call %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef %call, %struct.ocsp_cert_id_st* noundef %call16, i32 noundef 2, i32 noundef 0, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef %call2, %struct.asn1_string_st* noundef %call4) #7
  %cmp = icmp ne %struct.ocsp_single_response_st* %call29, null
  %conv = zext i1 %cmp to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv) #7
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, %struct.ocsp_basic_response_st* null, %struct.ocsp_basic_response_st* %call
  %spec.select57 = select i1 %tobool31.not, %struct.ocsp_basic_response_st* %call, %struct.ocsp_basic_response_st* null
  br label %err

err:                                              ; preds = %lor.lhs.false28, %if.end, %lor.lhs.false19, %lor.lhs.false22, %lor.lhs.false25, %entry, %lor.lhs.false, %lor.lhs.false12
  %cid.0 = phi %struct.ocsp_cert_id_st* [ %call16, %lor.lhs.false25 ], [ %call16, %lor.lhs.false22 ], [ %call16, %lor.lhs.false19 ], [ %call16, %if.end ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call16, %lor.lhs.false28 ]
  %bs_out.0 = phi %struct.ocsp_basic_response_st* [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false19 ], [ null, %if.end ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %spec.select, %lor.lhs.false28 ]
  %bs.0 = phi %struct.ocsp_basic_response_st* [ %call, %lor.lhs.false25 ], [ %call, %lor.lhs.false22 ], [ %call, %lor.lhs.false19 ], [ %call, %if.end ], [ %call, %lor.lhs.false12 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ %spec.select57, %lor.lhs.false28 ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call2) #7
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call4) #7
  call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %call6) #7
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %call7) #7
  call void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef %cid.0) #7
  call void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef %bs.0) #7
  call void @X509_NAME_free(%struct.X509_name_st* noundef %call5) #7
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #8
  ret %struct.ocsp_basic_response_st* %bs_out.0
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_cert_and_key(%struct.x509_st** nocapture noundef writeonly %cert_out, %struct.evp_pkey_st** nocapture noundef writeonly %key_out) unnamed_addr #1 {
entry:
  %0 = load i8*, i8** @certstr, align 8, !tbaa !3
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #7
  %1 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i8* noundef %1) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #7
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #7
  %2 = load i8*, i8** @privkeystr, align 8, !tbaa !3
  %call4 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #7
  %3 = bitcast %struct.bio_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* noundef %3) #7
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %call4, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #7
  %call10 = tail call i32 @BIO_free(%struct.bio_st* noundef %call4) #7
  %4 = bitcast %struct.x509_st* %call2 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* noundef %4) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %5 = bitcast %struct.evp_pkey_st* %call9 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* noundef %5) #7
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  store %struct.x509_st* %call2, %struct.x509_st** %cert_out, align 8, !tbaa !3
  store %struct.evp_pkey_st* %call9, %struct.evp_pkey_st** %key_out, align 8, !tbaa !3
  br label %cleanup

end:                                              ; preds = %if.end8, %lor.lhs.false, %if.end
  %key.0 = phi %struct.evp_pkey_st* [ %call9, %lor.lhs.false ], [ %call9, %if.end8 ], [ null, %if.end ]
  tail call void @X509_free(%struct.x509_st* noundef %call2) #7
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %key.0) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i32 @OCSP_basic_sign(%struct.ocsp_basic_response_st* noundef, %struct.x509_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef, %struct.stack_st_X509* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #2

declare dso_local i32 @OCSP_resp_get0_signer(%struct.ocsp_basic_response_st* noundef, %struct.x509_st** noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_BASICRESP_free(%struct.ocsp_basic_response_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local %struct.ocsp_basic_response_st* @OCSP_BASICRESP_new() local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_TIME_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #6

declare dso_local %struct.X509_name_st* @X509_NAME_new() local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #2

declare dso_local i32 @X509_NAME_add_entry_by_NID(%struct.X509_name_st* noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.ocsp_cert_id_st* @OCSP_cert_id_new(%struct.evp_md_st* noundef, %struct.X509_name_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #2

declare dso_local %struct.ocsp_single_response_st* @OCSP_basic_add1_status(%struct.ocsp_basic_response_st* noundef, %struct.ocsp_cert_id_st* noundef, i32 noundef, i32 noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @OCSP_CERTID_free(%struct.ocsp_cert_id_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ACCESS_DESCRIPTION_st* @ACCESS_DESCRIPTION_new() local_unnamed_addr #2

declare dso_local void @GENERAL_NAME_free(%struct.GENERAL_NAME_st* noundef) local_unnamed_addr #2

declare dso_local %struct.GENERAL_NAME_st* @GENERAL_NAME_new() local_unnamed_addr #2

declare dso_local void @ACCESS_DESCRIPTION_free(%struct.ACCESS_DESCRIPTION_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_cert(%struct.x509_st** nocapture noundef writeonly %cert_out) unnamed_addr #1 {
entry:
  %0 = load i8*, i8** @certstr, align 8, !tbaa !3
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #7
  %1 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i8* noundef %1) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #7
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #7
  %2 = bitcast %struct.x509_st* %call2 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* noundef %2) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %if.end7

if.end7:                                          ; preds = %if.end
  store %struct.x509_st* %call2, %struct.x509_st** %cert_out, align 8, !tbaa !3
  br label %cleanup

end:                                              ; preds = %if.end
  tail call void @X509_free(%struct.x509_st* noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %end, %if.end7
  %retval.0 = phi i32 [ 1, %if.end7 ], [ 0, %end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local %struct.X509_extension_st* @OCSP_url_svcloc_new(%struct.X509_name_st* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.X509_name_st* @X509_get_issuer_name(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_EXTENSION_free(%struct.X509_extension_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"ACCESS_DESCRIPTION_st", !4, i64 0, !4, i64 8}
