; ModuleID = 'test/x509_check_cert_pkey_test.c'
source_filename = "test/x509_check_cert_pkey_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.stack_st_X509_INFO = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type opaque
%struct.X509_crl_st = type opaque
%struct.private_key_st = type { i32, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*, i32, i8*, i32, %struct.evp_cipher_info_st }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_pkey_st = type opaque
%struct.evp_cipher_info_st = type { %struct.evp_cipher_st*, [16 x i8] }
%struct.evp_cipher_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_info_st = type { %struct.x509_st*, %struct.X509_crl_st*, %struct.private_key_st*, %struct.evp_cipher_info_st, i32, i8* }

@test_get_options.test_options = internal constant [15 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [71 x i8] c"Usage: %s [options] cert key type expected\0A     or [options] file num\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [41 x i8] c"cert\09certificate or CSR filename in PEM\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"key\09private key filename in PEM\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"type\09\09value must be 'cert' or 'req'\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"expected\09the expected return value, either 'ok' or 'failed'\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"file\09PEM format file containing certs, keys, and/OR CRLs\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"num\09expected number of credentials to be loaded from file\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"test/x509_check_cert_pkey_test.c\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"file = test_get_argument(0)\00", align 1
@file = internal unnamed_addr global i8* null, align 8
@.str.23 = private unnamed_addr constant [27 x i8] c"num = test_get_argument(1)\00", align 1
@num = internal unnamed_addr global i8* null, align 8
@.str.24 = private unnamed_addr constant [28 x i8] c"test_PEM_X509_INFO_read_bio\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"c = test_get_argument(0)\00", align 1
@c = internal unnamed_addr global i8* null, align 8
@.str.26 = private unnamed_addr constant [25 x i8] c"k = test_get_argument(1)\00", align 1
@k = internal unnamed_addr global i8* null, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"t = test_get_argument(2)\00", align 1
@t = internal unnamed_addr global i8* null, align 8
@.str.28 = private unnamed_addr constant [25 x i8] c"e = test_get_argument(3)\00", align 1
@e = internal unnamed_addr global i8* null, align 8
@.str.29 = private unnamed_addr constant [26 x i8] c"test_x509_check_cert_pkey\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"(in = BIO_new_file(file, \22r\22))\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"invalid 'type'\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"invalid 'expected'\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"bio = BIO_new_file(k, \22r\22)\00", align 1
@.str.43 = private unnamed_addr constant [54 x i8] c"pkey = PEM_read_bio_PrivateKey(bio, NULL, NULL, NULL)\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"bio = BIO_new_file(c, \22r\22)\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"read PEM x509 failed\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"read PEM x509 req failed\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"check private key: expected: %d, got: %d\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0)) #6
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @test_get_argument_count() #6
  %cmp = icmp eq i64 %call1, 2
  %call3 = tail call i8* @test_get_argument(i64 noundef 0) #6
  br i1 %cmp, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  store i8* %call3, i8** @file, align 8, !tbaa !3
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* noundef %call3) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %call6 = tail call i8* @test_get_argument(i64 noundef 1) #6
  store i8* %call6, i8** @num, align 8, !tbaa !3
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* noundef %call6) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %return, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_PEM_X509_INFO_read_bio) #6
  br label %return

if.end11:                                         ; preds = %if.end
  store i8* %call3, i8** @c, align 8, !tbaa !3
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call3) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end11
  %call16 = tail call i8* @test_get_argument(i64 noundef 1) #6
  store i8* %call16, i8** @k, align 8, !tbaa !3
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* noundef %call16) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %return, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %call20 = tail call i8* @test_get_argument(i64 noundef 2) #6
  store i8* %call20, i8** @t, align 8, !tbaa !3
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 172, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i8* noundef %call20) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %return, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = tail call i8* @test_get_argument(i64 noundef 3) #6
  store i8* %call24, i8** @e, align 8, !tbaa !3
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call24) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %return, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false23
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_x509_check_cert_pkey) #6
  br label %return

return:                                           ; preds = %if.end11, %lor.lhs.false15, %lor.lhs.false19, %lor.lhs.false23, %if.then2, %lor.lhs.false, %if.end28, %if.end10, %if.then
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 1, %if.end28 ], [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.then2 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_PEM_X509_INFO_read_bio() #1 {
entry:
  %expected = alloca i32, align 4
  %0 = bitcast i32* %expected to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %expected, align 4, !tbaa !7
  %1 = load i8*, i8** @file, align 8, !tbaa !3
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #6
  %2 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i8* noundef %2) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef %call, %struct.stack_st_X509_INFO* noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)) #6
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #6
  %3 = load i8*, i8** @num, align 8, !tbaa !3
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i32* noundef nonnull %expected) #6
  %call5 = call fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %call2) #8
  %call644 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %cmp45 = icmp sgt i32 %call644, 0
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %count.047 = phi i32 [ %count.3, %for.body ], [ 0, %if.end ]
  %i.046 = phi i32 [ %inc20, %for.body ], [ 0, %if.end ]
  %call8 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call5, i32 noundef %i.046) #6
  %x509 = bitcast i8* %call8 to %struct.x509_st**
  %4 = load %struct.x509_st*, %struct.x509_st** %x509, align 8, !tbaa !9
  %cmp9.not = icmp ne %struct.x509_st* %4, null
  %inc = zext i1 %cmp9.not to i32
  %spec.select = add nsw i32 %count.047, %inc
  %crl = getelementptr inbounds i8, i8* %call8, i64 8
  %5 = bitcast i8* %crl to %struct.X509_crl_st**
  %6 = load %struct.X509_crl_st*, %struct.X509_crl_st** %5, align 8, !tbaa !12
  %cmp12.not = icmp ne %struct.X509_crl_st* %6, null
  %inc14 = zext i1 %cmp12.not to i32
  %count.2 = add nsw i32 %spec.select, %inc14
  %x_pkey = getelementptr inbounds i8, i8* %call8, i64 16
  %7 = bitcast i8* %x_pkey to %struct.private_key_st**
  %8 = load %struct.private_key_st*, %struct.private_key_st** %7, align 8, !tbaa !13
  %cmp16.not = icmp ne %struct.private_key_st* %8, null
  %inc18 = zext i1 %cmp16.not to i32
  %count.3 = add nsw i32 %count.2, %inc18
  %inc20 = add nuw nsw i32 %i.046, 1
  %call6 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5) #6
  %cmp = icmp slt i32 %inc20, %call6
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body, %if.end
  %count.0.lcssa = phi i32 [ 0, %if.end ], [ %count.3, %for.body ]
  %call21 = call fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef %call2) #8
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call21, void (i8*)* noundef bitcast (void (%struct.X509_info_st*)* @X509_INFO_free to void (i8*)*)) #6
  %9 = load i32, i32* %expected, align 4, !tbaa !7
  %call23 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 noundef %count.0.lcssa, i32 noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %call23, %for.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_check_cert_pkey() #1 {
entry:
  %0 = load i8*, i8** @t, align 8, !tbaa !3
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end5, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end5, label %if.else4

if.else4:                                         ; preds = %if.else
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %failed

if.end5:                                          ; preds = %if.else, %entry
  %type.0 = phi i32 [ 1, %entry ], [ 2, %if.else ]
  %1 = load i8*, i8** @e, align 8, !tbaa !3
  %call6 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0)) #9
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end15, label %if.else9

if.else9:                                         ; preds = %if.end5
  %call10 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #9
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end15, label %if.else13

if.else13:                                        ; preds = %if.else9
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %failed

if.end15:                                         ; preds = %if.else9, %if.end5
  %expected.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.else9 ]
  %2 = load i8*, i8** @k, align 8, !tbaa !3
  %call16 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #6
  %3 = bitcast %struct.bio_st* %call16 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %failed, label %if.end19

if.end19:                                         ; preds = %if.end15
  %call20 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef %call16, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %4 = bitcast %struct.evp_pkey_st* %call20 to i8*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.43, i64 0, i64 0), i8* noundef %4) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %failed, label %if.end24

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @BIO_free(%struct.bio_st* noundef %call16) #6
  %5 = load i8*, i8** @c, align 8, !tbaa !3
  %call26 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #6
  %6 = bitcast %struct.bio_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* noundef %6) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %failed, label %if.end30

if.end30:                                         ; preds = %if.end24
  switch i32 %type.0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end30
  %call31 = tail call %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef %call26, %struct.x509_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %cmp32 = icmp eq %struct.x509_st* %call31, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %sw.bb
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %failed

if.end34:                                         ; preds = %sw.bb
  %call35 = tail call i32 @X509_check_private_key(%struct.x509_st* noundef nonnull %call31, %struct.evp_pkey_st* noundef %call20) #6
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  %call37 = tail call %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef %call26, %struct.X509_req_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %cmp38 = icmp eq %struct.X509_req_st* %call37, null
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %sw.bb36
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0)) #6
  br label %failed

if.end40:                                         ; preds = %sw.bb36
  %call41 = tail call i32 @X509_REQ_check_private_key(%struct.X509_req_st* noundef nonnull %call37, %struct.evp_pkey_st* noundef %call20) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end30, %if.end40, %if.end34
  %x509.0 = phi %struct.x509_st* [ null, %if.end30 ], [ null, %if.end40 ], [ %call31, %if.end34 ]
  %x509_req.0 = phi %struct.X509_req_st* [ null, %if.end30 ], [ %call37, %if.end40 ], [ null, %if.end34 ]
  %result.0 = phi i32 [ 0, %if.end30 ], [ %call41, %if.end40 ], [ %call35, %if.end34 ]
  %call42 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 noundef %result.0, i32 noundef %expected.0) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %failed

if.then44:                                        ; preds = %sw.epilog
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 noundef %expected.0, i32 noundef %result.0) #6
  br label %failed

failed:                                           ; preds = %sw.epilog, %if.end24, %if.end19, %if.end15, %if.then44, %if.then39, %if.then33, %if.else13, %if.else4
  %bio.0 = phi %struct.bio_st* [ %call26, %if.then44 ], [ %call26, %if.then39 ], [ %call26, %if.then33 ], [ %call26, %if.end24 ], [ %call16, %if.end19 ], [ %call16, %if.end15 ], [ null, %if.else13 ], [ null, %if.else4 ], [ %call26, %sw.epilog ]
  %x509.1 = phi %struct.x509_st* [ %x509.0, %if.then44 ], [ null, %if.then39 ], [ null, %if.then33 ], [ null, %if.end24 ], [ null, %if.end19 ], [ null, %if.end15 ], [ null, %if.else13 ], [ null, %if.else4 ], [ %x509.0, %sw.epilog ]
  %x509_req.1 = phi %struct.X509_req_st* [ %x509_req.0, %if.then44 ], [ null, %if.then39 ], [ null, %if.then33 ], [ null, %if.end24 ], [ null, %if.end19 ], [ null, %if.end15 ], [ null, %if.else13 ], [ null, %if.else4 ], [ %x509_req.0, %sw.epilog ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call20, %if.then44 ], [ %call20, %if.then39 ], [ %call20, %if.then33 ], [ %call20, %if.end24 ], [ %call20, %if.end19 ], [ null, %if.end15 ], [ null, %if.else13 ], [ null, %if.else4 ], [ %call20, %sw.epilog ]
  %ret.0 = phi i32 [ 0, %if.then44 ], [ 0, %if.then39 ], [ 0, %if.then33 ], [ 0, %if.end24 ], [ 0, %if.end19 ], [ 0, %if.end15 ], [ 0, %if.else13 ], [ 0, %if.else4 ], [ 1, %sw.epilog ]
  %call46 = tail call i32 @BIO_free(%struct.bio_st* noundef %bio.0) #6
  tail call void @X509_free(%struct.x509_st* noundef %x509.1) #6
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %x509_req.1) #6
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509_INFO* @PEM_X509_INFO_read_bio(%struct.bio_st* noundef, %struct.stack_st_X509_INFO* noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_INFO_sk_type(%struct.stack_st_X509_INFO* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509_INFO* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_INFO_free(%struct.X509_info_st* noundef) #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @PEM_read_bio_X509(%struct.bio_st* noundef, %struct.x509_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_check_private_key(%struct.x509_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef, %struct.X509_req_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_REQ_check_private_key(%struct.X509_req_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !4, i64 0}
!10 = !{!"X509_info_st", !4, i64 0, !4, i64 8, !4, i64 16, !11, i64 24, !8, i64 48, !4, i64 56}
!11 = !{!"evp_cipher_info_st", !4, i64 0, !5, i64 8}
!12 = !{!10, !4, i64 8}
!13 = !{!10, !4, i64 16}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
