; ModuleID = 'test/algorithmid_test.c'
source_filename = "test/algorithmid_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.x509_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.asn1_object_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type opaque
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.6 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.6 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }

@test_get_options.test_options = internal constant [12 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [29 x i8] c"Usage: %s [options] file...\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [5 x i8] c"x509\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Test X.509 certificates.  Requires two files\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"spki\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"Test public keys in SubjectPublicKeyInfo form.  Requires one file\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"file...\09File(s) to run tests on.  All files must be PEM encoded.\0A\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"No test type given\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Only one test type may be given\0A\00", align 1
@pubkey_filename = internal unnamed_addr global i8* null, align 8
@eecert_filename = internal unnamed_addr global i8* null, align 8
@cacert_filename = internal unnamed_addr global i8* null, align 8
@.str.21 = private unnamed_addr constant [24 x i8] c"Missing -spki argument\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Missing -x509 argument(s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test_x509_files\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"test_spki_file\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"test/algorithmid_test.c\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Couldn't open '%s' for reading\0A\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"'%s' doesn't appear to be a X.509 certificate in PEM format\0A\00", align 1
@test_x509_sig_aid.algid_prov = internal global [256 x i8] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [13 x i8] c"algorithm-id\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"X509_ALGOR_cmp(alg, X509_get0_tbs_sigalg(eecert))\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"sig_nid = OBJ_obj2nid(sig_oid)\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"NID_undef\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"OBJ_find_sigid_algs(sig_nid, &dig_nid, &pkey_nid)\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"pkey = X509_get0_pubkey(cacert)\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"EVP_PKEY_is_a(pkey, OBJ_nid2sn(pkey_nid))\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"The '%s' pubkey can't be used to verify the '%s' signature\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"Signature algorithm is %s (pkey type %s, hash type %s)\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Pkey key type is %s\00", align 1
@.str.40 = private unnamed_addr constant [54 x i8] c"algid_legacy_len = i2d_X509_ALGOR(alg, &algid_legacy)\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"mdctx = EVP_MD_CTX_new()\00", align 1
@.str.42 = private unnamed_addr constant [83 x i8] c"EVP_DigestVerifyInit_ex(mdctx, &pctx, OBJ_nid2sn(dig_nid), NULL, NULL, pkey, NULL)\00", align 1
@.str.43 = private unnamed_addr constant [80 x i8] c"Couldn't initialize a DigestVerify operation with pkey type %s and hash type %s\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"gettable_params = EVP_PKEY_CTX_gettable_params(pctx)\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"OSSL_PARAM_locate_const(gettable_params, ALGORITHMID_NAME)\00", align 1
@.str.46 = private unnamed_addr constant [78 x i8] c"The %s provider keymgmt appears to lack support for algorithm-id  Skipping...\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_CTX_get_params(pctx, params)\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"algid_legacy\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"algid_prov\00", align 1
@test_spki_aid.algid_prov = internal global [256 x i8] zeroinitializer, align 16
@.str.50 = private unnamed_addr constant [55 x i8] c"X509_PUBKEY_get0_param(NULL, NULL, NULL, &alg, pubkey)\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"pkey = X509_PUBKEY_get0(pubkey)\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"OBJ_obj2txt(name, sizeof(name), oid, 0)\00", align 1
@.str.53 = private unnamed_addr constant [73 x i8] c"The public key found in '%s' doesn't have provider support.  Skipping...\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"EVP_KEYMGMT_is_a(keymgmt, name)\00", align 1
@.str.55 = private unnamed_addr constant [119 x i8] c"The AlgorithmID key type (%s) for the public key found in '%s' doesn't match the key type of the extracted public key.\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"gettable_params = EVP_KEYMGMT_gettable_params(keymgmt)\00", align 1
@.str.57 = private unnamed_addr constant [79 x i8] c"The %s provider keymgmt appears to lack support for algorithm-id.  Skipping...\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"evp_keymgmt_get_params(keymgmt, keydata, params)\00", align 1
@.str.59 = private unnamed_addr constant [64 x i8] c"'%s' doesn't appear to be a SubjectPublicKeyInfo in PEM format\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([12 x %struct.options_st], [12 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %x509.0 = phi i32 [ 0, %entry ], [ %x509.0.be, %while.cond.backedge ]
  %spki.0 = phi i32 [ 0, %entry ], [ %spki.0.be, %while.cond.backedge ]
  %call = tail call i32 @opt_next() #5
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb1, %sw.bb
  %x509.0.be = phi i32 [ %x509.0, %sw.bb1 ], [ 1, %sw.bb ], [ %x509.0, %while.cond ], [ %x509.0, %while.cond ], [ %x509.0, %while.cond ], [ %x509.0, %while.cond ], [ %x509.0, %while.cond ], [ %x509.0, %while.cond ]
  %spki.0.be = phi i32 [ 1, %sw.bb1 ], [ %spki.0, %sw.bb ], [ %spki.0, %while.cond ], [ %spki.0, %while.cond ], [ %spki.0, %while.cond ], [ %spki.0, %while.cond ], [ %spki.0, %while.cond ], [ %spki.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %add = add nuw nsw i32 %spki.0, %x509.0
  switch i32 %add, label %if.then7 [
    i32 0, label %if.then
    i32 1, label %if.end12
  ]

if.then:                                          ; preds = %while.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0)) #5
  br label %cleanup

if.then7:                                         ; preds = %while.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %cleanup

if.end12:                                         ; preds = %while.end
  %call13 = tail call i64 @test_get_argument_count() #5
  %conv = trunc i64 %call13 to i32
  %tobool = icmp ne i32 %spki.0, 0
  %cmp14 = icmp eq i32 %conv, 1
  %or.cond = select i1 %tobool, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.end27.sink.split, label %if.else18

if.else18:                                        ; preds = %if.end12
  %tobool19 = icmp ne i32 %x509.0, 0
  %cmp21 = icmp eq i32 %conv, 2
  %or.cond55 = select i1 %tobool19, i1 %cmp21, i1 false
  br i1 %or.cond55, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.else18
  %call24 = tail call i8* @test_get_argument(i64 noundef 0) #5
  store i8* %call24, i8** @eecert_filename, align 8, !tbaa !5
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.end12, %if.then23
  %.sink = phi i64 [ 1, %if.then23 ], [ 0, %if.end12 ]
  %cacert_filename.sink = phi i8** [ @cacert_filename, %if.then23 ], [ @pubkey_filename, %if.end12 ]
  %call25 = tail call i8* @test_get_argument(i64 noundef %.sink) #5
  store i8* %call25, i8** %cacert_filename.sink, align 8, !tbaa !5
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.else18
  %2 = load i8*, i8** @pubkey_filename, align 8
  %cmp30 = icmp eq i8* %2, null
  %or.cond56 = select i1 %tobool, i1 %cmp30, i1 false
  br i1 %or.cond56, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end27
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0)) #5
  br label %cleanup

if.else34:                                        ; preds = %if.end27
  %tobool35.not = icmp eq i32 %x509.0, 0
  br i1 %tobool35.not, label %if.end47, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.else34
  %4 = load i8*, i8** @eecert_filename, align 8, !tbaa !5
  %cmp37 = icmp eq i8* %4, null
  %5 = load i8*, i8** @cacert_filename, align 8
  %cmp39 = icmp eq i8* %5, null
  %or.cond57 = select i1 %cmp37, i1 true, i1 %cmp39
  br i1 %or.cond57, label %if.then41, label %if.then46

if.then41:                                        ; preds = %land.lhs.true36
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0)) #5
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true36
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_x509_files) #5
  br label %if.end47

if.end47:                                         ; preds = %if.else34, %if.then46
  br i1 %tobool, label %if.then49, label %cleanup

if.then49:                                        ; preds = %if.end47
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_spki_file) #5
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.then, %if.then7, %if.end47, %if.then49, %if.then41, %if.then32
  %retval.0 = phi i32 [ 0, %if.then32 ], [ 0, %if.then41 ], [ 1, %if.then49 ], [ 1, %if.end47 ], [ 0, %if.then7 ], [ 0, %if.then ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_files() #1 {
entry:
  %0 = load i8*, i8** @eecert_filename, align 8, !tbaa !5
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @eecert_filename, align 8, !tbaa !5
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i8* noundef %1) #5
  tail call void @test_openssl_errors() #5
  br label %end

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @cacert_filename, align 8, !tbaa !5
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp2 = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i8*, i8** @cacert_filename, align 8, !tbaa !5
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i8* noundef %3) #5
  tail call void @test_openssl_errors() #5
  br label %end

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp6 = icmp eq %struct.x509_st* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %4 = load i8*, i8** @eecert_filename, align 8, !tbaa !5
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i64 0, i64 0), i8* noundef %4) #5
  tail call void @test_openssl_errors() #5
  br label %end

if.end8:                                          ; preds = %if.end4
  %call9 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef nonnull %call1, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp10 = icmp eq %struct.x509_st* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %5 = load i8*, i8** @cacert_filename, align 8, !tbaa !5
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.28, i64 0, i64 0), i8* noundef %5) #5
  tail call void @test_openssl_errors() #5
  br label %end

if.end12:                                         ; preds = %if.end8
  %6 = load i8*, i8** @eecert_filename, align 8, !tbaa !5
  %7 = load i8*, i8** @cacert_filename, align 8, !tbaa !5
  %call13 = tail call fastcc i32 @test_x509_sig_aid(%struct.x509_st* noundef nonnull %call5, i8* noundef %6, %struct.x509_st* noundef nonnull %call9, i8* noundef %7) #6
  %8 = load i8*, i8** @eecert_filename, align 8, !tbaa !5
  %call14 = tail call fastcc i32 @test_x509_spki_aid(%struct.x509_st* noundef nonnull %call5, i8* noundef %8) #6
  %and = and i32 %call14, %call13
  %9 = load i8*, i8** @cacert_filename, align 8, !tbaa !5
  %call15 = tail call fastcc i32 @test_x509_spki_aid(%struct.x509_st* noundef nonnull %call9, i8* noundef %9) #6
  %and16 = and i32 %and, %call15
  br label %end

end:                                              ; preds = %if.end12, %if.then11, %if.then7, %if.then3, %if.then
  %eecert.0 = phi %struct.x509_st* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.then7 ], [ %call5, %if.then11 ], [ %call5, %if.end12 ]
  %cacert.0 = phi %struct.x509_st* [ null, %if.then ], [ null, %if.then3 ], [ null, %if.then7 ], [ null, %if.then11 ], [ %call9, %if.end12 ]
  %bca.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.then7 ], [ %call1, %if.then11 ], [ %call1, %if.end12 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then7 ], [ 0, %if.then11 ], [ %and16, %if.end12 ]
  %call17 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  %call18 = tail call i32 @BIO_free(%struct.bio_st* noundef %bca.0) #5
  tail call void @X509_free(%struct.x509_st* noundef %eecert.0) #5
  tail call void @X509_free(%struct.x509_st* noundef %cacert.0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_spki_file() #1 {
entry:
  %0 = load i8*, i8** @pubkey_filename, align 8, !tbaa !5
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @pubkey_filename, align 8, !tbaa !5
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0), i8* noundef %1) #5
  tail call void @test_openssl_errors() #5
  br label %end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_pubkey_st* @PEM_read_bio_X509_PUBKEY(%struct.bio_st* noundef nonnull %call, %struct.X509_pubkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  %cmp2 = icmp eq %struct.X509_pubkey_st* %call1, null
  %2 = load i8*, i8** @pubkey_filename, align 8, !tbaa !5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.59, i64 0, i64 0), i8* noundef %2) #5
  tail call void @test_openssl_errors() #5
  br label %end

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @test_spki_aid(%struct.X509_pubkey_st* noundef nonnull %call1, i8* noundef %2) #6
  br label %end

end:                                              ; preds = %if.end4, %if.then3, %if.then
  %pubkey.0 = phi %struct.X509_pubkey_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.end4 ]
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %call5, %if.end4 ]
  %call6 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  tail call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %pubkey.0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @test_openssl_errors() local_unnamed_addr #3

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_x509_sig_aid(%struct.x509_st* noundef %eecert, i8* noundef %ee_filename, %struct.x509_st* noundef %cacert, i8* noundef %ca_filename) unnamed_addr #1 {
entry:
  %sig_oid = alloca %struct.asn1_object_st*, align 8
  %alg = alloca %struct.X509_algor_st*, align 8
  %dig_nid = alloca i32, align 4
  %pkey_nid = alloca i32, align 4
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %algid_legacy = alloca i8*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.asn1_object_st** %sig_oid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.asn1_object_st* null, %struct.asn1_object_st** %sig_oid, align 8, !tbaa !5
  %1 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  %2 = bitcast i32* %dig_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %dig_nid, align 4, !tbaa !9
  %3 = bitcast i32* %pkey_nid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  store i32 0, i32* %pkey_nid, align 4, !tbaa !9
  %4 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  %5 = bitcast i8** %algid_legacy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  store i8* null, i8** %algid_legacy, align 8, !tbaa !5
  %6 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  %7 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8** %7, align 16
  %8 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 1
  store i32 5, i32* %8, align 8
  %9 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_x509_sig_aid.algid_prov, i64 0, i64 0), i8** %9, align 16
  %10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 3
  %11 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %12 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> <i64 256, i64 -1>, <2 x i64>* %12, align 8
  call void @X509_get0_signature(%struct.asn1_string_st** noundef null, %struct.X509_algor_st** noundef nonnull %alg, %struct.x509_st* noundef %eecert) #5
  %13 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %sig_oid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %13) #5
  %14 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  %call = call %struct.X509_algor_st* @X509_get0_tbs_sigalg(%struct.x509_st* noundef %eecert) #5
  %call1 = call i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef %14, %struct.X509_algor_st* noundef %call) #5
  %call2 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call1, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %15 = load %struct.asn1_object_st*, %struct.asn1_object_st** %sig_oid, align 8, !tbaa !5
  %call3 = call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %15) #5
  %call4 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call3, i32 noundef 0) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = call i32 @OBJ_find_sigid_algs(i32 noundef %call3, i32* noundef nonnull %dig_nid, i32* noundef nonnull %pkey_nid) #5
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = call %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef %cacert) #5
  %16 = bitcast %struct.evp_pkey_st* %call10 to i8*
  %call11 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i8* noundef %16) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %if.end14

if.end14:                                         ; preds = %lor.lhs.false9
  %17 = load i32, i32* %pkey_nid, align 4, !tbaa !9
  %call15 = call i8* @OBJ_nid2sn(i32 noundef %17) #5
  %call16 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %call10, i8* noundef %call15) #5
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i64 0, i64 0), i8* noundef %ca_filename, i8* noundef %ee_filename) #5
  %call22 = call i8* @OBJ_nid2sn(i32 noundef %call3) #5
  %18 = load i32, i32* %pkey_nid, align 4, !tbaa !9
  %call23 = call i8* @OBJ_nid2sn(i32 noundef %18) #5
  %19 = load i32, i32* %dig_nid, align 4, !tbaa !9
  %call24 = call i8* @OBJ_nid2sn(i32 noundef %19) #5
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i64 0, i64 0), i8* noundef %call22, i8* noundef %call23, i8* noundef %call24) #5
  %call25 = call i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef %call10) #5
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i8* noundef %call25) #5
  br label %end

if.end26:                                         ; preds = %if.end14
  %20 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  %call27 = call i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef %20, i8** noundef nonnull %algid_legacy) #5
  %call28 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call27, i32 noundef 0) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end, label %if.end31

if.end31:                                         ; preds = %if.end26
  %call32 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #5
  %21 = bitcast %struct.evp_md_ctx_st* %call32 to i8*
  %call33 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i8* noundef %21) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then42, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end31
  %22 = load i32, i32* %dig_nid, align 4, !tbaa !9
  %call36 = call i8* @OBJ_nid2sn(i32 noundef %22) #5
  %call37 = call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef %call32, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %call36, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.evp_pkey_st* noundef %call10, %struct.ossl_param_st* noundef null) #5
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.42, i64 0, i64 0), i32 noundef %conv39) #5
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end45

if.then42:                                        ; preds = %lor.lhs.false35, %if.end31
  %23 = load i32, i32* %pkey_nid, align 4, !tbaa !9
  %call43 = call i8* @OBJ_nid2sn(i32 noundef %23) #5
  %24 = load i32, i32* %dig_nid, align 4, !tbaa !9
  %call44 = call i8* @OBJ_nid2sn(i32 noundef %24) #5
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.43, i64 0, i64 0), i8* noundef %call43, i8* noundef %call44) #5
  br label %end

if.end45:                                         ; preds = %lor.lhs.false35
  %25 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  %call46 = call %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef %25) #5
  %26 = bitcast %struct.ossl_param_st* %call46 to i8*
  %call47 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0), i8* noundef %26) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then53, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end45
  %call50 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call46, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0)) #5
  %27 = bitcast %struct.ossl_param_st* %call50 to i8*
  %call51 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0), i8* noundef %27) #5
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %lor.lhs.false49, %if.end45
  %28 = load i32, i32* %pkey_nid, align 4, !tbaa !9
  %call54 = call i8* @OBJ_nid2sn(i32 noundef %28) #5
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call54) #5
  br label %end

if.end55:                                         ; preds = %lor.lhs.false49
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_x509_sig_aid.algid_prov, i64 0, i64 0), align 16, !tbaa !11
  %29 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call56 = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef %29, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv58) #5
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %end, label %if.end62

if.end62:                                         ; preds = %if.end55
  %30 = load i64, i64* %11, align 16, !tbaa !12
  %31 = load i8*, i8** %algid_legacy, align 8, !tbaa !5
  %conv63 = sext i32 %call27 to i64
  %call64 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* noundef %31, i64 noundef %conv63, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @test_x509_sig_aid.algid_prov, i64 0, i64 0), i64 noundef %30) #5
  %tobool65.not = icmp ne i32 %call64, 0
  %spec.select = zext i1 %tobool65.not to i32
  br label %end

end:                                              ; preds = %if.end62, %if.end55, %if.end26, %if.end, %lor.lhs.false, %lor.lhs.false9, %entry, %if.then53, %if.then42, %if.then21
  %mdctx.0 = phi %struct.evp_md_ctx_st* [ %call32, %if.end55 ], [ %call32, %if.then53 ], [ %call32, %if.then42 ], [ null, %if.end26 ], [ null, %if.then21 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call32, %if.end62 ]
  %ret.0 = phi i32 [ 0, %if.end55 ], [ 1, %if.then53 ], [ 0, %if.then42 ], [ 0, %if.end26 ], [ 0, %if.then21 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end62 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mdctx.0) #5
  %32 = load i8*, i8** %algid_legacy, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %32, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 184) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_x509_spki_aid(%struct.x509_st* noundef %cert, i8* noundef %filename) unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef %cert) #5
  %call1 = tail call fastcc i32 @test_spki_aid(%struct.X509_pubkey_st* noundef %call, i8* noundef %filename) #6
  ret i32 %call1
}

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @X509_get0_signature(%struct.asn1_string_st** noundef, %struct.X509_algor_st** noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @X509_ALGOR_cmp(%struct.X509_algor_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_algor_st* @X509_get0_tbs_sigalg(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_find_sigid_algs(i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @X509_get0_pubkey(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i8* @EVP_PKEY_get0_type_name(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef, i8** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare dso_local i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.X509_pubkey_st* @X509_get_X509_PUBKEY(%struct.x509_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_spki_aid(%struct.X509_pubkey_st* noundef %pubkey, i8* noundef %filename) unnamed_addr #1 {
entry:
  %oid = alloca %struct.asn1_object_st*, align 8
  %alg = alloca %struct.X509_algor_st*, align 8
  %keymgmt = alloca %struct.evp_keymgmt_st*, align 8
  %name = alloca [50 x i8], align 16
  %algid_legacy = alloca i8*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.asn1_object_st** %oid to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %1 = bitcast %struct.X509_algor_st** %alg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.X509_algor_st* null, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  %2 = bitcast %struct.evp_keymgmt_st** %keymgmt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !5
  %3 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %3) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(50) %3, i8 0, i64 50, i1 false)
  %4 = bitcast i8** %algid_legacy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7
  store i8* null, i8** %algid_legacy, align 8, !tbaa !5
  %5 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %6 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8** %6, align 16
  %7 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 1
  store i32 5, i32* %7, align 8
  %8 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_spki_aid.algid_prov, i64 0, i64 0), i8** %8, align 16
  %9 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 3
  %10 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0, i32 4
  %11 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> <i64 256, i64 -1>, <2 x i64>* %11, align 8
  %call = call i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef null, i8** noundef null, i32* noundef null, %struct.X509_algor_st** noundef nonnull %alg, %struct.X509_pubkey_st* noundef %pubkey) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %pubkey) #5
  %12 = bitcast %struct.evp_pkey_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i8* noundef %12) #5
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  %call5 = call i32 @i2d_X509_ALGOR(%struct.X509_algor_st* noundef %13, i8** noundef nonnull %algid_legacy) #5
  %call6 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %end, label %if.end9

if.end9:                                          ; preds = %if.end
  %14 = load %struct.X509_algor_st*, %struct.X509_algor_st** %alg, align 8, !tbaa !5
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %oid, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef %14) #5
  %15 = load %struct.asn1_object_st*, %struct.asn1_object_st** %oid, align 8, !tbaa !5
  %call10 = call i32 @OBJ_obj2txt(i8* noundef nonnull %3, i32 noundef 50, %struct.asn1_object_st* noundef %15, i32 noundef 0) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv12) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %if.end16

if.end16:                                         ; preds = %if.end9
  %call17 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %call2, %struct.ossl_lib_ctx_st* noundef null, %struct.evp_keymgmt_st** noundef nonnull %keymgmt, i8* noundef null) #5
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.53, i64 0, i64 0), i8* noundef %filename) #5
  br label %end

if.end21:                                         ; preds = %if.end16
  %16 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !5
  %call23 = call i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef %16, i8* noundef nonnull %3) #5
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv25) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end21
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %3, i8* noundef %filename) #5
  br label %end

if.end30:                                         ; preds = %if.end21
  %17 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !5
  %call31 = call %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* noundef %17) #5
  %18 = bitcast %struct.ossl_param_st* %call31 to i8*
  %call32 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.56, i64 0, i64 0), i8* noundef %18) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end30
  %call35 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call31, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0)) #5
  %19 = bitcast %struct.ossl_param_st* %call35 to i8*
  %call36 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0), i8* noundef %19) #5
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %lor.lhs.false34, %if.end30
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.57, i64 0, i64 0), i8* noundef nonnull %3) #5
  br label %end

if.end40:                                         ; preds = %lor.lhs.false34
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @test_spki_aid.algid_prov, i64 0, i64 0), align 16, !tbaa !11
  %20 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !5
  %arraydecay41 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call42 = call i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef %20, i8* noundef nonnull %call17, %struct.ossl_param_st* noundef nonnull %arraydecay41) #5
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv44) #5
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %end, label %if.end48

if.end48:                                         ; preds = %if.end40
  %21 = load i64, i64* %10, align 16, !tbaa !12
  %22 = load i8*, i8** %algid_legacy, align 8, !tbaa !5
  %conv49 = sext i32 %call5 to i64
  %call50 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8* noundef %22, i64 noundef %conv49, i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @test_spki_aid.algid_prov, i64 0, i64 0), i64 noundef %21) #5
  %tobool51.not = icmp ne i32 %call50, 0
  %spec.select = zext i1 %tobool51.not to i32
  br label %end

end:                                              ; preds = %if.end48, %if.end40, %if.end9, %if.end, %entry, %lor.lhs.false, %if.then38, %if.then28, %if.then20
  %ret.0 = phi i32 [ 1, %if.then20 ], [ 0, %if.end40 ], [ 1, %if.then38 ], [ 1, %if.then28 ], [ 0, %if.end9 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end48 ]
  %23 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !5
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %23) #5
  %24 = load i8*, i8** %algid_legacy, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 noundef 99) #5
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

declare dso_local i32 @X509_PUBKEY_get0_param(%struct.asn1_object_st** noundef, i8** noundef, i32* noundef, %struct.X509_algor_st** noundef, %struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KEYMGMT_is_a(%struct.evp_keymgmt_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_KEYMGMT_gettable_params(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local i32 @evp_keymgmt_get_params(%struct.evp_keymgmt_st* noundef, i8* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_pubkey_st* @PEM_read_bio_X509_PUBKEY(%struct.bio_st* noundef, %struct.X509_pubkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !14, i64 32}
!13 = !{!"ossl_param_st", !6, i64 0, !10, i64 8, !6, i64 16, !14, i64 24, !14, i64 32}
!14 = !{!"long", !7, i64 0}
