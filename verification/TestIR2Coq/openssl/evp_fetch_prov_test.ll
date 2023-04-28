; ModuleID = 'test/evp_fetch_prov_test.c'
source_filename = "test/evp_fetch_prov_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.evp_md_st = type opaque
%struct.asn1_object_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_cipher_ctx_st = type opaque

@test_get_options.test_options = internal constant [15 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 5, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [35 x i8] c"Usage: %s [options] [provname...]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"The configuration file to use for the libctx\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"The fetch type to test\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"The fetch property e.g. provider=fips\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"fetchfail\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"fetch is expected to fail\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"defaultctx\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Use the default context if this is set\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"file\09Provider names to explicitly load\0A\00", align 1
@config_file = internal unnamed_addr global i8* null, align 8
@alg = internal unnamed_addr global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), align 8
@fetch_property = internal unnamed_addr global i8* null, align 8
@expected_fetch_result = internal unnamed_addr global i1 false, align 4
@use_default_ctx = internal unnamed_addr global i1 false, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"test_implicit_EVP_MD_fetch\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"test_explicit_EVP_MD_fetch_by_name\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"test_explicit_EVP_MD_fetch_by_X509_ALGOR\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"test_implicit_EVP_CIPHER_fetch\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"test_explicit_EVP_CIPHER_fetch_by_name\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"test/evp_fetch_prov_test.c\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"OSSL_LIB_CTX_load_config(ctx, config_file)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"prov[i]\00", align 1
@__const.test_md.exptd = private unnamed_addr constant [32 x i8] c"'Q\8B\A9h0\11\F6\B3\96\07,\05\F6em\04\F5\FB\C3x|\F9$\90\EC`nP\92\E3&", align 16
@.str.36 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"EVP_MD_is_a(md, \22SHA256\22)\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"calculate_digest(md, testmsg, sizeof(testmsg), exptd)\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"EVP_MD_get_size(md)\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"SHA256_DIGEST_LENGTH\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"EVP_MD_get_block_size(md)\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"SHA256_CBLOCK\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"ctx = EVP_MD_CTX_new()\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"EVP_DigestInit_ex(ctx, md, NULL)\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"EVP_DigestUpdate(ctx, msg, len)\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"EVP_DigestFinal_ex(ctx, out, NULL)\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"exptd\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"md == EVP_MD_CTX_get0_md(ctx)\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"EVP_MD_up_ref(md)\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"OBJ_obj2txt(id, sizeof(id), obj, 0)\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"OBJ_obj2txt(id, sizeof(id), obj, 1)\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"algor = X509_ALGOR_new()\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"X509_ALGOR_set0(algor, OBJ_nid2obj(nid), V_ASN1_UNDEF, NULL)\00", align 1
@__const.test_cipher.testmsg = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"encrypt_decrypt(cipher, testmsg, sizeof(testmsg))\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"EVP_CipherInit_ex(ctx, cipher, NULL, key, NULL, 1)\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"EVP_CipherUpdate(ctx, ct, &ctlen, msg, len)\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"EVP_CipherFinal_ex(ctx, ct, &ctlen)\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"EVP_CipherInit_ex(ctx, cipher, NULL, key, NULL, 0)\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"EVP_CipherUpdate(ctx, pt, &ptlen, ct, ctlen)\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"EVP_CipherFinal_ex(ctx, pt, &ptlen)\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"EVP_CIPHER_up_ref(cipher)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #8
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 5, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb7, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %call1 = tail call i8* @opt_arg() #8
  store i8* %call1, i8** @config_file, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.cond
  %call3 = tail call i8* @opt_arg() #8
  store i8* %call3, i8** @alg, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb4:                                           ; preds = %while.cond
  %call5 = tail call i8* @opt_arg() #8
  store i8* %call5, i8** @fetch_property, align 8, !tbaa !5
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  store i1 true, i1* @expected_fetch_result, align 4
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  store i1 true, i1* @use_default_ctx, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %0 = load i8*, i8** @alg, align 8, !tbaa !5
  %call10 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #9
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_implicit_EVP_MD_fetch) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_explicit_EVP_MD_fetch_by_name) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i32 (i32)* noundef nonnull @test_explicit_EVP_MD_fetch_by_X509_ALGOR, i32 noundef 2, i32 noundef 0) #8
  br label %cleanup

if.else:                                          ; preds = %while.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_implicit_EVP_CIPHER_fetch) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 ()* noundef nonnull @test_explicit_EVP_CIPHER_fetch_by_name) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0), i32 (i32)* noundef nonnull @test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR, i32 noundef 2, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.then, %if.else
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %if.then ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_implicit_EVP_MD_fetch() #1 {
entry:
  %ctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %prov = alloca [2 x %struct.ossl_provider_st*], align 16
  %0 = bitcast %struct.ossl_lib_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !5
  %1 = bitcast [2 x %struct.ossl_provider_st*]* %prov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.b = load i1, i1* @use_default_ctx, align 4
  br i1 %.b, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  %call = call fastcc i32 @load_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %call1 = tail call %struct.evp_md_st* @EVP_sha256() #8
  %call2 = tail call fastcc i32 @test_md(%struct.evp_md_st* noundef %call1) #11
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %2 = phi i32 [ 0, %lor.lhs.false ], [ %phi.cast, %land.rhs ]
  %arraydecay4 = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  call fastcc void @unload_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay4) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_explicit_EVP_MD_fetch_by_name() #1 {
entry:
  %call = tail call fastcc i32 @test_explicit_EVP_MD_fetch(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #11
  ret i32 %call
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_explicit_EVP_MD_fetch_by_X509_ALGOR(i32 noundef %idx) #1 {
entry:
  %obj = alloca %struct.asn1_object_st*, align 8
  %id = alloca [50 x i8], align 16
  %call = tail call fastcc %struct.X509_algor_st* @make_algor(i32 noundef 672) #11
  %0 = bitcast %struct.asn1_object_st** %obj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = getelementptr inbounds [50 x i8], [50 x i8]* %id, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %1) #10
  %cmp = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %obj, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef nonnull %call) #8
  switch i32 %idx, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %obj, align 8, !tbaa !5
  %call1 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %2, i32 noundef 0) #8
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %obj, align 8, !tbaa !5
  %call8 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %3, i32 noundef 1) #8
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv10) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end
  %call16 = call fastcc i32 @test_explicit_EVP_MD_fetch(i8* noundef nonnull %1) #11
  br label %end

end:                                              ; preds = %sw.bb6, %sw.bb, %sw.epilog
  %ret.0 = phi i32 [ %call16, %sw.epilog ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_implicit_EVP_CIPHER_fetch() #1 {
entry:
  %ctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %prov = alloca [2 x %struct.ossl_provider_st*], align 16
  %0 = bitcast %struct.ossl_lib_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !5
  %1 = bitcast [2 x %struct.ossl_provider_st*]* %prov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.b = load i1, i1* @use_default_ctx, align 4
  br i1 %.b, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  %call = call fastcc i32 @load_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %call1 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #8
  %call2 = tail call fastcc i32 @test_cipher(%struct.evp_cipher_st* noundef %call1) #11
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %2 = phi i32 [ 0, %lor.lhs.false ], [ %phi.cast, %land.rhs ]
  %arraydecay4 = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  call fastcc void @unload_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay4) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_explicit_EVP_CIPHER_fetch_by_name() #1 {
entry:
  %call = tail call fastcc i32 @test_explicit_EVP_CIPHER_fetch(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0)) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_explicit_EVP_CIPHER_fetch_by_X509_ALGOR(i32 noundef %idx) #1 {
entry:
  %obj = alloca %struct.asn1_object_st*, align 8
  %id = alloca [50 x i8], align 16
  %call = tail call fastcc %struct.X509_algor_st* @make_algor(i32 noundef 419) #11
  %0 = bitcast %struct.asn1_object_st** %obj to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = getelementptr inbounds [50 x i8], [50 x i8]* %id, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %1) #10
  %cmp = icmp eq %struct.X509_algor_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @X509_ALGOR_get0(%struct.asn1_object_st** noundef nonnull %obj, i32* noundef null, i8** noundef null, %struct.X509_algor_st* noundef nonnull %call) #8
  switch i32 %idx, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load %struct.asn1_object_st*, %struct.asn1_object_st** %obj, align 8, !tbaa !5
  %call1 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %2, i32 noundef 0) #8
  %cmp2 = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp2 to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %obj, align 8, !tbaa !5
  %call8 = call i32 @OBJ_obj2txt(i8* noundef nonnull %1, i32 noundef 50, %struct.asn1_object_st* noundef %3, i32 noundef 1) #8
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv10) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end
  %call16 = call fastcc i32 @test_explicit_EVP_CIPHER_fetch(i8* noundef nonnull %1) #11
  br label %end

end:                                              ; preds = %sw.bb6, %sw.bb, %sw.epilog
  %ret.0 = phi i32 [ %call16, %sw.epilog ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load_providers(%struct.ossl_lib_ctx_st** nocapture noundef writeonly %libctx, %struct.ossl_provider_st** nocapture noundef writeonly %prov) unnamed_addr #1 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #8
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then24, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @config_file, align 8, !tbaa !5
  %call2 = tail call i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %1) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then24, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i64 @test_get_argument_count() #8
  %cmp8 = icmp ugt i64 %call7, 2
  br i1 %cmp8, label %if.then24, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %call1247 = tail call i64 @test_get_argument_count() #8
  %cmp1348.not = icmp eq i64 %call1247, 0
  br i1 %cmp1348.not, label %err, label %for.body

for.cond:                                         ; preds = %for.body
  %call12 = tail call i64 @test_get_argument_count() #8
  %cmp13 = icmp ult i64 %inc, %call12
  br i1 %cmp13, label %for.body, label %err, !llvm.loop !9

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.049 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call15 = tail call i8* @test_get_argument(i64 noundef %i.049) #8
  %call16 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call15) #8
  %arrayidx = getelementptr inbounds %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, i64 %i.049
  store %struct.ossl_provider_st* %call16, %struct.ossl_provider_st** %arrayidx, align 8, !tbaa !5
  %2 = bitcast %struct.ossl_provider_st* %call16 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* noundef %2) #8
  %tobool19.not = icmp eq i32 %call18, 0
  %inc = add nuw i64 %i.049, 1
  br i1 %tobool19.not, label %if.then24, label %for.cond

err:                                              ; preds = %for.cond, %for.cond.preheader
  store %struct.ossl_lib_ctx_st* %call, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  br label %cleanup26

if.then24:                                        ; preds = %for.body, %if.end6, %if.end, %entry
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #8
  br label %cleanup26

cleanup26:                                        ; preds = %err, %if.then24
  %ret.045 = phi i32 [ 1, %err ], [ 0, %if.then24 ]
  ret i32 %ret.045
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_md(%struct.evp_md_st* noundef %md) unnamed_addr #1 {
entry:
  %testmsg = alloca [12 x i8], align 1
  %exptd = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [12 x i8], [12 x i8]* %testmsg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %0, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_cipher.testmsg, i64 0, i64 0), i64 12, i1 false)
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %exptd, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %1, i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @__const.test_md.exptd, i64 0, i64 0), i64 32, i1 false)
  %2 = bitcast %struct.evp_md_st* %md to i8*
  %call = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %md, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #8
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call6 = call fastcc i32 @calculate_digest(%struct.evp_md_st* noundef %md, i8* noundef nonnull %0, i8* noundef nonnull %1) #11
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv8) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true4
  %call12 = call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %md) #8
  %call13 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call12, i32 noundef 32) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true11
  %call15 = call i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef %md) #8
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 noundef %call15, i32 noundef 64) #8
  %tobool17 = icmp ne i32 %call16, 0
  %phi.cast = zext i1 %tobool17 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11, %land.lhs.true4, %land.lhs.true, %entry
  %3 = phi i32 [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #10
  ret i32 %3
}

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @unload_providers(%struct.ossl_lib_ctx_st** noundef readonly %libctx, %struct.ossl_provider_st** nocapture noundef readonly %prov) unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef nonnull %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx2 = getelementptr inbounds %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov, i64 1
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %arrayidx2, align 8, !tbaa !5
  %cmp3.not = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef nonnull %1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %cmp8.not = icmp eq %struct.ossl_lib_ctx_st** %libctx, null
  br i1 %cmp8.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  %cmp9.not = icmp eq %struct.ossl_lib_ctx_st* %2, null
  br i1 %cmp9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  tail call void @OPENSSL_thread_stop_ex(%struct.ossl_lib_ctx_st* noundef nonnull %2) #8
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %3) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.end7
  ret void
}

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @calculate_digest(%struct.evp_md_st* noundef %md, i8* noundef %msg, i8* noundef %exptd) unnamed_addr #1 {
entry:
  %out = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #10
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %1 = bitcast %struct.evp_md_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef %md, %struct.engine_st* noundef null) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef %msg, i64 noundef 12) #8
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv8) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef null) #8
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call19 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 32, i8* noundef %exptd, i64 noundef 32) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %call) #8
  %cmp23 = icmp eq %struct.evp_md_st* %call22, %md
  %conv24 = zext i1 %cmp23 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv24) #8
  %tobool28.not = icmp ne i32 %call27, 0
  %spec.select = zext i1 %tobool28.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false21, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false11, %lor.lhs.false17
  %ret.0 = phi i32 [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false21 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_get_block_size(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_thread_stop_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_explicit_EVP_MD_fetch(i8* noundef %id) unnamed_addr #1 {
entry:
  %ctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %prov = alloca [2 x %struct.ossl_provider_st*], align 16
  %0 = bitcast %struct.ossl_lib_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !5
  %1 = bitcast [2 x %struct.ossl_provider_st*]* %prov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.b26 = load i1, i1* @use_default_ctx, align 4
  br i1 %.b26, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  %call = call fastcc i32 @load_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry
  %2 = phi %struct.ossl_lib_ctx_st* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ null, %entry ]
  %3 = load i8*, i8** @fetch_property, align 8, !tbaa !5
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %id, i8* noundef %3) #8
  %.b = load i1, i1* @expected_fetch_result, align 4
  br i1 %.b, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @test_md(%struct.evp_md_st* noundef %call1) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call8 = tail call i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef %call1) #8
  %cmp9 = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp9 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end7
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call1) #8
  br label %if.end18

if.else:                                          ; preds = %if.end
  %4 = bitcast %struct.evp_md_st* %call1 to i8*
  %call14 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* noundef %4) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.else, %if.end13
  br label %err

err:                                              ; preds = %if.else, %if.end7, %if.then3, %land.lhs.true, %if.end18
  %md.0 = phi %struct.evp_md_st* [ %call1, %if.end18 ], [ %call1, %if.end7 ], [ %call1, %if.then3 ], [ %call1, %if.else ], [ null, %land.lhs.true ]
  %ret.0 = phi i32 [ 1, %if.end18 ], [ 0, %if.end7 ], [ 0, %if.then3 ], [ 0, %if.else ], [ 0, %land.lhs.true ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0) #8
  %arraydecay19 = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  call fastcc void @unload_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay19) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_up_ref(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.X509_algor_st* @make_algor(i32 noundef %nid) unnamed_addr #1 {
entry:
  %call = tail call %struct.X509_algor_st* @X509_ALGOR_new() #8
  %0 = bitcast %struct.X509_algor_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %nid) #8
  %call3 = tail call i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef %call, %struct.asn1_object_st* noundef %call2, i32 noundef -1, i8* noundef null) #8
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @X509_ALGOR_free(%struct.X509_algor_st* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi %struct.X509_algor_st* [ null, %if.then ], [ %call, %lor.lhs.false ]
  ret %struct.X509_algor_st* %retval.0
}

declare dso_local void @X509_ALGOR_get0(%struct.asn1_object_st** noundef, i32* noundef, i8** noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_algor_st* @X509_ALGOR_new() local_unnamed_addr #3

declare dso_local i32 @X509_ALGOR_set0(%struct.X509_algor_st* noundef, %struct.asn1_object_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_cipher(%struct.evp_cipher_st* noundef %cipher) unnamed_addr #1 {
entry:
  %testmsg = alloca [12 x i8], align 1
  %0 = getelementptr inbounds [12 x i8], [12 x i8]* %testmsg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %0, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_cipher.testmsg, i64 0, i64 0), i64 12, i1 false)
  %1 = bitcast %struct.evp_cipher_st* %cipher to i8*
  %call = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @encrypt_decrypt(%struct.evp_cipher_st* noundef %cipher, i8* noundef nonnull %0) #11
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv) #8
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #10
  ret i32 %2
}

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @encrypt_decrypt(%struct.evp_cipher_st* noundef %cipher, i8* noundef %msg) unnamed_addr #1 {
entry:
  %ctlen = alloca i32, align 4
  %ptlen = alloca i32, align 4
  %key = alloca [16 x i8], align 16
  %ct = alloca [64 x i8], align 16
  %pt = alloca [64 x i8], align 16
  %0 = bitcast i32* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %1 = bitcast i32* %ptlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #10
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %ct, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #10
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %pt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #10
  %call = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 16) #8
  %call1 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %5 = bitcast %struct.evp_cipher_ctx_st* %call1 to i8*
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.58, i64 0, i64 0), i8* noundef %5) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call1, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef null, i8* noundef nonnull %2, i8* noundef null, i32 noundef 1) #8
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call10 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call1, i8* noundef nonnull %3, i32* noundef nonnull %ctlen, i8* noundef %msg, i32 noundef 12) #8
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv12) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false7
  %call17 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call1, i8* noundef nonnull %3, i32* noundef nonnull %ctlen) #8
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv19) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false15
  %call24 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call1, %struct.evp_cipher_st* noundef %cipher, %struct.engine_st* noundef null, i8* noundef nonnull %2, i8* noundef null, i32 noundef 0) #8
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv26) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false22
  %6 = load i32, i32* %ctlen, align 4, !tbaa !10
  %call32 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call1, i8* noundef nonnull %4, i32* noundef nonnull %ptlen, i8* noundef nonnull %3, i32 noundef %6) #8
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv34) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false29
  %call39 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call1, i8* noundef nonnull %4, i32* noundef nonnull %ptlen) #8
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv41) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false37
  %7 = load i32, i32* %ptlen, align 4, !tbaa !10
  %conv46 = sext i32 %7 to i64
  %call47 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %conv46, i8* noundef %msg, i64 noundef 12) #8
  %tobool48.not = icmp ne i32 %call47, 0
  %spec.select = zext i1 %tobool48.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false44, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false15, %lor.lhs.false22, %lor.lhs.false29, %lor.lhs.false37
  %ret.0 = phi i32 [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false44 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call1) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_explicit_EVP_CIPHER_fetch(i8* noundef %id) unnamed_addr #1 {
entry:
  %ctx = alloca %struct.ossl_lib_ctx_st*, align 8
  %prov = alloca [2 x %struct.ossl_provider_st*], align 16
  %0 = bitcast %struct.ossl_lib_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store %struct.ossl_lib_ctx_st* null, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !5
  %1 = bitcast [2 x %struct.ossl_provider_st*]* %prov to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.b26 = load i1, i1* @use_default_ctx, align 4
  br i1 %.b26, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  %call = call fastcc i32 @load_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry
  %2 = phi %struct.ossl_lib_ctx_st* [ %.pre, %land.lhs.true.if.end_crit_edge ], [ null, %entry ]
  %3 = load i8*, i8** @fetch_property, align 8, !tbaa !5
  %call1 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %id, i8* noundef %3) #8
  %.b = load i1, i1* @expected_fetch_result, align 4
  br i1 %.b, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @test_cipher(%struct.evp_cipher_st* noundef %call1) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %if.end7

if.end7:                                          ; preds = %if.then3
  %call8 = tail call i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef %call1) #8
  %cmp9 = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp9 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end7
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call1) #8
  br label %if.end18

if.else:                                          ; preds = %if.end
  %4 = bitcast %struct.evp_cipher_st* %call1 to i8*
  %call14 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* noundef %4) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.else, %if.end13
  br label %err

err:                                              ; preds = %if.else, %if.end7, %if.then3, %land.lhs.true, %if.end18
  %cipher.0 = phi %struct.evp_cipher_st* [ %call1, %if.end18 ], [ %call1, %if.end7 ], [ %call1, %if.then3 ], [ %call1, %if.else ], [ null, %land.lhs.true ]
  %ret.0 = phi i32 [ 1, %if.end18 ], [ 0, %if.end7 ], [ 0, %if.then3 ], [ 0, %if.else ], [ 0, %land.lhs.true ]
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.0) #8
  %arraydecay19 = getelementptr inbounds [2 x %struct.ossl_provider_st*], [2 x %struct.ossl_provider_st*]* %prov, i64 0, i64 0
  call fastcc void @unload_providers(%struct.ossl_lib_ctx_st** noundef nonnull %ctx, %struct.ossl_provider_st** noundef nonnull %arraydecay19) #11
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %ret.0
}

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_up_ref(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin "no-builtins" }

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
!9 = distinct !{!9, !4}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
