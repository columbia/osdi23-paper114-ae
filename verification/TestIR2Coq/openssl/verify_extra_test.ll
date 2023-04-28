; ModuleID = 'test/verify_extra_test.c'
source_filename = "test/verify_extra_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.x509_store_st = type opaque
%struct.x509_lookup_method_st = type opaque
%struct.x509_lookup_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.x509_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bio_st = type opaque
%struct.X509_req_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [53 x i8] c"Usage: %s [options] roots.pem untrusted.pem bad.pem\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [25 x i8] c"test/verify_extra_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"root_f = test_get_argument(0)\00", align 1
@root_f = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [31 x i8] c"roots_f = test_get_argument(1)\00", align 1
@roots_f = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [35 x i8] c"untrusted_f = test_get_argument(2)\00", align 1
@untrusted_f = internal unnamed_addr global i8* null, align 8
@.str.19 = private unnamed_addr constant [29 x i8] c"bad_f = test_get_argument(3)\00", align 1
@bad_f = internal unnamed_addr global i8* null, align 8
@.str.20 = private unnamed_addr constant [29 x i8] c"req_f = test_get_argument(4)\00", align 1
@req_f = internal unnamed_addr global i8* null, align 8
@.str.21 = private unnamed_addr constant [29 x i8] c"test_alt_chains_cert_forgery\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"test_store_ctx\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"test_distinguishing_id\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"test_req_distinguishing_id\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"test_self_signed_good\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"test_self_signed_bad\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"test_self_signed_error\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"X509_self_signed(cert, 1)\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"sk_X509_push(trusted, cert)\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"X509_STORE_CTX_init(ctx, NULL, cert, NULL)\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"X509_verify_cert(ctx)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"this is an ID\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"ASN1_OCTET_STRING_cmp(v, v2)\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"nonexistent file name\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #4
  store i8* %call1, i8** @root_f, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #4
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #4
  store i8* %call4, i8** @roots_f, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i8* @test_get_argument(i64 noundef 2) #4
  store i8* %call8, i8** @untrusted_f, align 8, !tbaa !3
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call8) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %call12 = tail call i8* @test_get_argument(i64 noundef 3) #4
  store i8* %call12, i8** @bad_f, align 8, !tbaa !3
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call12) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %return, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call16 = tail call i8* @test_get_argument(i64 noundef 4) #4
  store i8* %call16, i8** @req_f, align 8, !tbaa !3
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call16) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %return, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false15
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_alt_chains_cert_forgery) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 ()* noundef nonnull @test_store_ctx) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_distinguishing_id) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_req_distinguishing_id) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 ()* noundef nonnull @test_self_signed_good) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 ()* noundef nonnull @test_self_signed_bad) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_self_signed_error) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false11, %lor.lhs.false15, %if.end20, %if.then
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 0, %if.then ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_alt_chains_cert_forgery() #1 {
entry:
  %call = tail call %struct.x509_store_st* @X509_STORE_new() #4
  %cmp = icmp eq %struct.x509_store_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.x509_lookup_method_st* @X509_LOOKUP_file() #4
  %call2 = tail call %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef nonnull %call, %struct.x509_lookup_method_st* noundef %call1) #4
  %cmp3 = icmp eq %struct.x509_lookup_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %0 = load i8*, i8** @roots_f, align 8, !tbaa !3
  %call6 = tail call i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef nonnull %call2, i32 noundef 1, i8* noundef %0, i64 noundef 1, i8** noundef null) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %1 = load i8*, i8** @untrusted_f, align 8, !tbaa !3
  %call9 = tail call %struct.stack_st_X509* @load_certs_pem(i8* noundef %1) #4
  %2 = load i8*, i8** @bad_f, align 8, !tbaa !3
  %call10 = tail call %struct.x509_st* @load_cert_pem(i8* noundef %2, %struct.ossl_lib_ctx_st* noundef null) #4
  %cmp11 = icmp eq %struct.x509_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #4
  %cmp15 = icmp eq %struct.x509_store_ctx_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef nonnull %call14, %struct.x509_store_st* noundef nonnull %call, %struct.x509_st* noundef nonnull %call10, %struct.stack_st_X509* noundef %call9) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef nonnull %call14) #4
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %land.lhs.true, label %err

land.lhs.true:                                    ; preds = %if.end21
  %call24 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef nonnull %call14) #4
  %cmp25 = icmp eq i32 %call24, 79
  %spec.select = zext i1 %cmp25 to i32
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end21, %if.end17, %if.end13, %if.end8, %if.end5, %if.end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.end13 ], [ 0, %if.end21 ], [ 0, %if.end17 ], [ 0, %if.end5 ], [ %spec.select, %land.lhs.true ]
  %x.0 = phi %struct.x509_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end8 ], [ %call10, %if.end13 ], [ %call10, %if.end21 ], [ %call10, %if.end17 ], [ null, %if.end5 ], [ %call10, %land.lhs.true ]
  %untrusted.0 = phi %struct.stack_st_X509* [ null, %entry ], [ null, %if.end ], [ %call9, %if.end8 ], [ %call9, %if.end13 ], [ %call9, %if.end21 ], [ %call9, %if.end17 ], [ null, %if.end5 ], [ %call9, %land.lhs.true ]
  %sctx.0 = phi %struct.x509_store_ctx_st* [ null, %entry ], [ null, %if.end ], [ null, %if.end8 ], [ null, %if.end13 ], [ %call14, %if.end21 ], [ %call14, %if.end17 ], [ null, %if.end5 ], [ %call14, %land.lhs.true ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %sctx.0) #4
  tail call void @X509_free(%struct.x509_st* noundef %x.0) #4
  %call28 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %untrusted.0) #5
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call28, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #4
  tail call void @X509_STORE_free(%struct.x509_store_st* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_store_ctx() #1 {
entry:
  %0 = load i8*, i8** @bad_f, align 8, !tbaa !3
  %call = tail call fastcc i32 @test_self_signed(i8* noundef %0, i32 noundef 0, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_distinguishing_id() #1 {
entry:
  %0 = load i8*, i8** @bad_f, align 8, !tbaa !3
  %call = tail call %struct.x509_st* @load_cert_pem(i8* noundef %0, %struct.ossl_lib_ctx_st* noundef null) #4
  %cmp = icmp eq %struct.x509_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp2 = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)) #6
  %conv = trunc i64 %call5 to i32
  %call6 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call1) #4
  br label %err

if.end8:                                          ; preds = %if.end4
  tail call void @X509_set0_distinguishing_id(%struct.x509_st* noundef nonnull %call, %struct.asn1_string_st* noundef nonnull %call1) #4
  %call9 = tail call %struct.asn1_string_st* @X509_get0_distinguishing_id(%struct.x509_st* noundef nonnull %call) #4
  %1 = bitcast %struct.asn1_string_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* noundef %1) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %call12 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %call1, %struct.asn1_string_st* noundef %call9) #4
  %call13 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call12, i32 noundef 0) #4
  %tobool14.not = icmp ne i32 %call13, 0
  %spec.select = zext i1 %tobool14.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false, %if.end8, %if.end, %entry, %if.then7
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 0, %if.then7 ], [ %spec.select, %lor.lhs.false ]
  tail call void @X509_free(%struct.x509_st* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_req_distinguishing_id() #1 {
entry:
  %0 = load i8*, i8** @req_f, align 8, !tbaa !3
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef nonnull %call, %struct.X509_req_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  %cmp2 = icmp eq %struct.X509_req_st* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #4
  %cmp6 = icmp eq %struct.asn1_string_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)) #6
  %conv = trunc i64 %call9 to i32
  %call10 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef nonnull %call5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  tail call void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef nonnull %call5) #4
  br label %err

if.end12:                                         ; preds = %if.end8
  tail call void @X509_REQ_set0_distinguishing_id(%struct.X509_req_st* noundef nonnull %call1, %struct.asn1_string_st* noundef nonnull %call5) #4
  %call13 = tail call %struct.asn1_string_st* @X509_REQ_get0_distinguishing_id(%struct.X509_req_st* noundef nonnull %call1) #4
  %1 = bitcast %struct.asn1_string_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* noundef %1) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %call16 = tail call i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef nonnull %call5, %struct.asn1_string_st* noundef %call13) #4
  %call17 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #4
  %tobool18.not = icmp ne i32 %call17, 0
  %spec.select = zext i1 %tobool18.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false, %if.end12, %if.end4, %if.end, %entry, %if.then11
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end12 ], [ 0, %if.then11 ], [ %spec.select, %lor.lhs.false ]
  %x.0 = phi %struct.X509_req_st* [ null, %entry ], [ null, %if.end ], [ %call1, %if.end4 ], [ %call1, %if.end12 ], [ %call1, %if.then11 ], [ %call1, %lor.lhs.false ]
  tail call void @X509_REQ_free(%struct.X509_req_st* noundef %x.0) #4
  %call21 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_self_signed_good() #1 {
entry:
  %0 = load i8*, i8** @root_f, align 8, !tbaa !3
  %call = tail call fastcc i32 @test_self_signed(i8* noundef %0, i32 noundef 1, i32 noundef 1) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_self_signed_bad() #1 {
entry:
  %0 = load i8*, i8** @bad_f, align 8, !tbaa !3
  %call = tail call fastcc i32 @test_self_signed(i8* noundef %0, i32 noundef 1, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_self_signed_error() #1 {
entry:
  %call = tail call fastcc i32 @test_self_signed(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 noundef 1, i32 noundef -1) #5
  ret i32 %call
}

declare dso_local %struct.x509_store_st* @X509_STORE_new() local_unnamed_addr #2

declare dso_local %struct.x509_lookup_st* @X509_STORE_add_lookup(%struct.x509_store_st* noundef, %struct.x509_lookup_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_lookup_method_st* @X509_LOOKUP_file() local_unnamed_addr #2

declare dso_local i32 @X509_LOOKUP_ctrl(%struct.x509_lookup_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st_X509* @load_certs_pem(i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_STORE_free(%struct.x509_store_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_self_signed(i8* noundef %filename, i32 noundef %use_trusted, i32 noundef %expected) unnamed_addr #1 {
entry:
  %call = tail call %struct.x509_st* @load_cert_pem(i8* noundef %filename, %struct.ossl_lib_ctx_st* noundef null) #4
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #4
  %0 = bitcast %struct.stack_st* %call1 to %struct.stack_st_X509*
  %call2 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #4
  %call3 = tail call i32 @X509_self_signed(%struct.x509_st* noundef %call, i32 noundef 1) #4
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call3, i32 noundef %expected) #4
  %cmp.not = icmp eq %struct.x509_st* %call, null
  br i1 %cmp.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %use_trusted, 0
  br i1 %tobool.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %land.end27.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then5
  %call7 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #5
  %1 = bitcast %struct.x509_st* %call to i8*
  %call9 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call7, i8* noundef nonnull %1) #4
  %cmp10 = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp10 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv) #4
  %tobool12 = icmp ne i32 %call11, 0
  %phi.cast48 = zext i1 %tobool12 to i32
  br label %if.end

if.end:                                           ; preds = %land.rhs, %if.then
  %ret.0 = phi i32 [ %call4, %if.then ], [ %phi.cast48, %land.rhs ]
  %tobool13.not = icmp eq i32 %ret.0, 0
  br i1 %tobool13.not, label %land.end27.critedge, label %land.rhs14

land.rhs14:                                       ; preds = %if.end
  %call15 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef %call2, %struct.x509_store_st* noundef null, %struct.x509_st* noundef nonnull %call, %struct.stack_st_X509* noundef null) #4
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  tail call void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef %call2, %struct.stack_st_X509* noundef %0) #4
  br i1 %tobool19.not, label %if.end29, label %land.rhs23

land.rhs23:                                       ; preds = %land.rhs14
  %call24 = tail call i32 @X509_verify_cert(%struct.x509_store_ctx_st* noundef %call2) #4
  %call25 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call24, i32 noundef %expected) #4
  %tobool26 = icmp ne i32 %call25, 0
  %phi.cast = zext i1 %tobool26 to i32
  br label %if.end29

land.end27.critedge:                              ; preds = %if.then5, %if.end
  tail call void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef %call2, %struct.stack_st_X509* noundef %0) #4
  br label %if.end29

if.end29:                                         ; preds = %land.rhs14, %land.rhs23, %land.end27.critedge, %entry
  %ret.1 = phi i32 [ %call4, %entry ], [ 0, %land.rhs14 ], [ %phi.cast, %land.rhs23 ], [ 0, %land.end27.critedge ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call2) #4
  %call30 = tail call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %0) #5
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call30) #4
  tail call void @X509_free(%struct.x509_st* noundef %call) #4
  ret i32 %ret.1
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_self_signed(%struct.x509_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_set0_trusted_stack(%struct.x509_store_ctx_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local void @ASN1_OCTET_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_set0_distinguishing_id(%struct.x509_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_get0_distinguishing_id(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_OCTET_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_req_st* @PEM_read_bio_X509_REQ(%struct.bio_st* noundef, %struct.X509_req_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @X509_REQ_set0_distinguishing_id(%struct.X509_req_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @X509_REQ_get0_distinguishing_id(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_REQ_free(%struct.X509_req_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
