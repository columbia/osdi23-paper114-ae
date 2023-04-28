; ModuleID = 'test/danetest.c'
source_filename = "test/danetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.tlsa_field = type { i8*, i8*, i64 (i8*, i8*)* }
%struct.bio_st = type opaque
%struct.ssl_method_st = type opaque
%struct.ssl_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.ssl_st = type opaque
%struct.stack_st_X509 = type opaque
%struct.stack_st = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_store_ctx_st = type opaque
%struct.x509_store_st = type opaque
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.ssl_dane_st = type { %struct.dane_ctx_st*, %struct.stack_st_danetls_record*, %struct.stack_st_X509*, %struct.danetls_record_st*, %struct.x509_st*, i32, i32, i32, i64 }
%struct.dane_ctx_st = type { %struct.evp_md_st**, i8*, i8, i64 }
%struct.stack_st_danetls_record = type opaque
%struct.danetls_record_st = type { i8, i8, i8, i8*, i64, %struct.evp_pkey_st* }

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [48 x i8] c"Usage: %s [options] basedomain CAfile tlsafile\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [16 x i8] c"test/danetest.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"basedomain = test_get_argument(0)\00", align 1
@basedomain = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [30 x i8] c"CAfile = test_get_argument(1)\00", align 1
@CAfile = internal unnamed_addr global i8* null, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"tlsafile = test_get_argument(2)\00", align 1
@tlsafile = internal unnamed_addr global i8* null, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"run_tlsatest\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"f = BIO_new_file(tlsafile, \22r\22)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"ctx = SSL_CTX_new(TLS_client_method())\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"SSL_CTX_dane_enable(ctx)\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"SSL_CTX_load_verify_file(ctx, CAfile)\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"SSL_CTX_dane_mtype_set(ctx, EVP_sha512(), 2, 1)\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"SSL_CTX_dane_mtype_set(ctx, EVP_sha256(), 1, 2)\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"test_tlsafile(ctx, basedomain, f, tlsafile)\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"%d %d %d %d %d%n\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Malformed line for test %d\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"ssl = SSL_new(ctx)\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"chain = load_chain(f, ncert)\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"want\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Verification failure in test %d: %d=%s\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Unexpected error in test %d\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"want == 0 && ok == 0\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Verification failure in test %d: ok=0\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"mdpth\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"want_depth\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"In test test %d\00", align 1
@read_to_eol.buf = internal global [1024 x i8] zeroinitializer, align 16
@.str.42 = private unnamed_addr constant [15 x i8] c"input too long\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"EOF before newline\00", align 1
@tlsa_import_rr.usage = internal global i8 0, align 1
@tlsa_import_rr.selector = internal global i8 0, align 1
@tlsa_import_rr.mtype = internal global i8 0, align 1
@tlsa_import_rr.data = internal global i8* null, align 8
@tlsa_import_rr.tlsa_fields = internal unnamed_addr constant [5 x %struct.tlsa_field] [%struct.tlsa_field { i8* @tlsa_import_rr.usage, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i64 (i8*, i8*)* @checked_uint8 }, %struct.tlsa_field { i8* @tlsa_import_rr.selector, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i64 (i8*, i8*)* @checked_uint8 }, %struct.tlsa_field { i8* @tlsa_import_rr.mtype, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i64 (i8*, i8*)* @checked_uint8 }, %struct.tlsa_field { i8* bitcast (i8** @tlsa_import_rr.data to i8*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i64 (i8*, i8*)* @hexdecode }, %struct.tlsa_field zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"bad TLSA %s field in: %s\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"unusable TLSA rrdata: %s\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"error loading TLSA rrdata: %s\00", align 1
@saved_errno = internal unnamed_addr global i32 0, align 4
@.str.51 = private unnamed_addr constant [37 x i8] c"ret = OPENSSL_malloc(strlen(in) / 2)\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"chain = sk_X509_new_null()\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"cert = d(0, &p, len)\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"p - data\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"Certificate parsing error\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"sk_X509_push(chain, cert)\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"Unknown chain file object %s\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"store_ctx = X509_STORE_CTX_new()\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"ssl_ctx = SSL_get_SSL_CTX(ssl)\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"store = SSL_CTX_get_cert_store(ssl_ctx)\00", align 1
@.str.65 = private unnamed_addr constant [51 x i8] c"X509_STORE_CTX_init(store_ctx, store, NULL, chain)\00", align 1
@.str.66 = private unnamed_addr constant [58 x i8] c"X509_STORE_CTX_set_ex_data(store_ctx, store_ctx_idx, ssl)\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"ssl_client\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"ssl_server\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"ret = X509_STORE_CTX_verify(store_ctx)\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #9
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #9
  store i8* %call1, i8** @basedomain, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call1) #9
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #9
  store i8* %call4, i8** @CAfile, align 8, !tbaa !3
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i8* @test_get_argument(i64 noundef 2) #9
  store i8* %call8, i8** @tlsafile, align 8, !tbaa !3
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call8) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %return, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false7
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 ()* noundef nonnull @run_tlsatest) #9
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %lor.lhs.false7, %if.end12, %if.then
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %if.then ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #2

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #2

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_tlsatest() #1 {
entry:
  %0 = load i8*, i8** @tlsafile, align 8, !tbaa !3
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #9
  %1 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ssl_method_st* @TLS_client_method() #9
  %call3 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call2) #9
  %2 = bitcast %struct.ssl_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @SSL_CTX_dane_enable(%struct.ssl_ctx_st* noundef %call3) #9
  %call8 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %3 = load i8*, i8** @CAfile, align 8, !tbaa !3
  %call11 = tail call i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef %call3, i8* noundef %3) #9
  %cmp = icmp ne i32 %call11, 0
  %conv = zext i1 %cmp to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call %struct.evp_md_st* @EVP_sha512() #9
  %call16 = tail call i32 @SSL_CTX_dane_mtype_set(%struct.ssl_ctx_st* noundef %call3, %struct.evp_md_st* noundef %call15, i8 noundef zeroext 2, i8 noundef zeroext 1) #9
  %call17 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call16, i32 noundef 0) #9
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false14
  %call20 = tail call %struct.evp_md_st* @EVP_sha256() #9
  %call21 = tail call i32 @SSL_CTX_dane_mtype_set(%struct.ssl_ctx_st* noundef %call3, %struct.evp_md_st* noundef %call20, i8 noundef zeroext 1, i8 noundef zeroext 2) #9
  %call22 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call21, i32 noundef 0) #9
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %4 = load i8*, i8** @basedomain, align 8, !tbaa !3
  %call25 = tail call fastcc i32 @test_tlsafile(%struct.ssl_ctx_st* noundef %call3, i8* noundef %4, %struct.bio_st* noundef %call) #10
  %call26 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call25, i32 noundef 0) #9
  %tobool27.not = icmp ne i32 %call26, 0
  %spec.select = zext i1 %tobool27.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false24, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false19
  %ctx.0 = phi %struct.ssl_ctx_st* [ %call3, %lor.lhs.false19 ], [ %call3, %lor.lhs.false14 ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ], [ %call3, %lor.lhs.false24 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false24 ]
  %call28 = tail call i32 @BIO_free(%struct.bio_st* noundef %call) #9
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %ctx.0) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_method_st* @TLS_client_method() local_unnamed_addr #2

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_dane_enable(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_load_verify_file(%struct.ssl_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_CTX_dane_mtype_set(%struct.ssl_ctx_st* noundef, %struct.evp_md_st* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha512() local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_tlsafile(%struct.ssl_ctx_st* noundef %ctx, i8* noundef %base_name, %struct.bio_st* noundef %f) unnamed_addr #1 {
entry:
  %ntlsa = alloca i32, align 4
  %ncert = alloca i32, align 4
  %noncheck = alloca i32, align 4
  %want = alloca i32, align 4
  %want_depth = alloca i32, align 4
  %off = alloca i32, align 4
  %0 = bitcast i32* %ntlsa to i8*
  %1 = bitcast i32* %ncert to i8*
  %2 = bitcast i32* %noncheck to i8*
  %3 = bitcast i32* %want to i8*
  %4 = bitcast i32* %want_depth to i8*
  %5 = bitcast i32* %off to i8*
  %call94 = call fastcc i8* @read_to_eol(%struct.bio_st* noundef %f) #10
  %cmp1.not95 = icmp eq i8* %call94, null
  br i1 %cmp1.not95, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %call97 = phi i8* [ %call, %cleanup ], [ %call94, %entry ]
  %testno.04896 = phi i32 [ %testno.1, %cleanup ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #11
  %6 = load i8, i8* %call97, align 1, !tbaa !7
  switch i8 %6, label %if.end [
    i8 0, label %cleanup
    i8 35, label %cleanup
  ], !llvm.loop !8

if.end:                                           ; preds = %while.body
  %inc = add nsw i32 %testno.04896, 1
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %call97, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32* noundef nonnull %ntlsa, i32* noundef nonnull %ncert, i32* noundef nonnull %noncheck, i32* noundef nonnull %want, i32* noundef nonnull %want_depth, i32* noundef nonnull %off) #9
  %cmp8.not = icmp eq i32 %call7, 5
  br i1 %cmp8.not, label %lor.lhs.false10, label %if.then12

lor.lhs.false10:                                  ; preds = %if.end
  %7 = load i32, i32* %off, align 4, !tbaa !10
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call97, i64 %idx.ext
  %call11 = call fastcc i32 @allws(i8* noundef nonnull %add.ptr) #10
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false10, %if.end
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i32 noundef %inc) #9
  br label %cleanup.thread

if.end13:                                         ; preds = %lor.lhs.false10
  %call14 = call %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef %ctx) #9
  %8 = bitcast %struct.ssl_st* %call14 to i8*
  %call15 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8* noundef %8) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.thread, label %if.end18

if.end18:                                         ; preds = %if.end13
  call void @SSL_set_connect_state(%struct.ssl_st* noundef %call14) #9
  %call19 = call i32 @SSL_dane_enable(%struct.ssl_st* noundef %call14, i8* noundef %base_name) #9
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @SSL_free(%struct.ssl_st* noundef %call14) #9
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end18
  %9 = load i32, i32* %noncheck, align 4, !tbaa !10
  %tobool24.not = icmp eq i32 %9, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call26 = call i64 @SSL_dane_set_flags(%struct.ssl_st* noundef %call14, i64 noundef 1) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23
  %10 = load i32, i32* %ntlsa, align 4, !tbaa !10
  %cmp2845 = icmp sgt i32 %10, 0
  br i1 %cmp2845, label %for.body, label %for.end

for.cond:                                         ; preds = %lor.lhs.false33
  %11 = load i32, i32* %ntlsa, align 4, !tbaa !10
  %cmp28 = icmp slt i32 %inc38, %11
  br i1 %cmp28, label %for.body, label %for.end, !llvm.loop !12

for.body:                                         ; preds = %if.end27, %for.cond
  %i.046 = phi i32 [ %inc38, %for.cond ], [ 0, %if.end27 ]
  %call30 = call fastcc i8* @read_to_eol(%struct.bio_st* noundef %f) #10
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %if.then36, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %for.body
  %call34 = call fastcc i32 @tlsa_import_rr(%struct.ssl_st* noundef %call14, i8* noundef nonnull %call30) #10
  %tobool35.not = icmp eq i32 %call34, 0
  %inc38 = add nuw nsw i32 %i.046, 1
  br i1 %tobool35.not, label %if.then36, label %for.cond

if.then36:                                        ; preds = %lor.lhs.false33, %for.body
  call void @SSL_free(%struct.ssl_st* noundef %call14) #9
  br label %cleanup.thread

for.end:                                          ; preds = %for.cond, %if.end27
  call void @ERR_clear_error() #9
  %12 = load i32, i32* %ncert, align 4, !tbaa !10
  %call39 = call fastcc %struct.stack_st_X509* @load_chain(%struct.bio_st* noundef %f, i32 noundef %12) #10
  %13 = bitcast %struct.stack_st_X509* %call39 to i8*
  %call40 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i8* noundef %13) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.end
  call void @SSL_free(%struct.ssl_st* noundef %call14) #9
  br label %cleanup.thread

if.end43:                                         ; preds = %for.end
  %call44 = call fastcc i32 @verify_chain(%struct.ssl_st* noundef %call14, %struct.stack_st_X509* noundef %call39) #10
  %call45 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %call39) #10
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call45, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  %call47 = call i64 @SSL_get_verify_result(%struct.ssl_st* noundef %call14) #9
  %conv48 = trunc i64 %call47 to i32
  call void @SSL_set_verify_result(%struct.ssl_st* noundef %call14, i64 noundef 0) #9
  %call49 = call i32 @SSL_get0_dane_authority(%struct.ssl_st* noundef %call14, %struct.x509_st** noundef null, %struct.evp_pkey_st** noundef null) #9
  %sext = shl i64 %call47, 32
  %conv50 = ashr exact i64 %sext, 32
  call void @SSL_set_verify_result(%struct.ssl_st* noundef %call14, i64 noundef %conv50) #9
  call void @SSL_free(%struct.ssl_st* noundef %call14) #9
  %14 = load i32, i32* %want, align 4, !tbaa !10
  %call51 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv48, i32 noundef %14) #9
  %tobool52.not = icmp eq i32 %call51, 0
  %15 = load i32, i32* %want, align 4, !tbaa !10
  %cmp54 = icmp eq i32 %15, 0
  br i1 %tobool52.not, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end43
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then53
  %conv48.le = trunc i64 %call47 to i32
  %call58 = call i8* @X509_verify_cert_error_string(i64 noundef %conv50) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i32 noundef %inc, i32 noundef %conv48.le, i8* noundef %call58) #9
  br label %cleanup.thread56, !llvm.loop !8

if.else:                                          ; preds = %if.then53
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 noundef %inc) #9
  br label %cleanup.thread56, !llvm.loop !8

if.end60:                                         ; preds = %if.end43
  %cmp64 = icmp eq i32 %call44, 0
  %16 = select i1 %cmp54, i1 %cmp64, i1 false
  %land.ext = zext i1 %16 to i32
  %call69 = call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i32 noundef %land.ext) #9
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end60
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), i32 noundef %inc) #9
  br label %cleanup.thread56, !llvm.loop !8

if.end72:                                         ; preds = %if.end60
  %17 = load i32, i32* %want_depth, align 4, !tbaa !10
  %call73 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 374, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call49, i32 noundef %17) #9
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %cleanup

if.then75:                                        ; preds = %if.end72
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i32 noundef %inc) #9
  br label %cleanup.thread56

cleanup.thread:                                   ; preds = %if.end13, %if.then12, %if.then22, %if.then36, %if.then42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  br label %cleanup87

cleanup.thread56:                                 ; preds = %if.then75, %if.then56, %if.else, %if.then71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  br label %while.end

cleanup:                                          ; preds = %if.end72, %while.body, %while.body
  %testno.1 = phi i32 [ %inc, %if.end72 ], [ %testno.04896, %while.body ], [ %testno.04896, %while.body ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  %call = call fastcc i8* @read_to_eol(%struct.bio_st* noundef %f) #10
  %cmp1.not = icmp eq i8* %call, null
  br i1 %cmp1.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %entry, %cleanup.thread56
  %ret.0.lcssa = phi i32 [ 0, %cleanup.thread56 ], [ 1, %entry ], [ 1, %cleanup ]
  call void @ERR_clear_error() #9
  br label %cleanup87

cleanup87:                                        ; preds = %cleanup.thread, %while.end
  %retval.2 = phi i32 [ %ret.0.lcssa, %while.end ], [ 0, %cleanup.thread ]
  ret i32 %retval.2
}

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @read_to_eol(%struct.bio_st* noundef %f) unnamed_addr #1 {
entry:
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef %f, i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0), i32 noundef 1024) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0)) #12
  %sub = shl i64 %call1, 32
  %sext = add i64 %sub, -4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %cmp.not = icmp eq i8 %0, 10
  br i1 %cmp.not, label %while.cond.preheader, label %if.then4

while.cond.preheader:                             ; preds = %if.end
  %conv = trunc i64 %call1 to i32
  %cmp1130 = icmp sgt i32 %conv, 0
  br i1 %cmp1130, label %land.rhs.lr.ph, label %cleanup

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %call13 = tail call i16** @__ctype_b_loc() #13
  %1 = and i64 %call1, 4294967295
  br label %land.rhs

if.then4:                                         ; preds = %if.end
  %add.mask = and i64 %call1, 4294967295
  %cmp6 = icmp eq i64 %add.mask, 1023
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0)) #9
  br label %cleanup

if.else:                                          ; preds = %if.then4
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0)) #9
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %1, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %2 = load i16*, i16** %call13, align 8, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %3 = and i64 %indvars.iv.next, 4294967295
  %arrayidx16 = getelementptr inbounds [1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %5 = zext i8 %4 to i64
  %arrayidx19 = getelementptr inbounds i16, i16* %2, i64 %5
  %6 = load i16, i16* %arrayidx19, align 2, !tbaa !13
  %7 = and i16 %6, 8192
  %tobool21.not = icmp eq i16 %7, 0
  br i1 %tobool21.not, label %cleanup, label %while.body

while.body:                                       ; preds = %land.rhs
  store i8 0, i8* %arrayidx16, align 1, !tbaa !7
  %cmp11 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp11, label %land.rhs, label %cleanup, !llvm.loop !15

cleanup:                                          ; preds = %while.body, %land.rhs, %while.cond.preheader, %if.then8, %if.else, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.else ], [ null, %if.then8 ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0), %while.cond.preheader ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0), %land.rhs ], [ getelementptr inbounds ([1024 x i8], [1024 x i8]* @read_to_eol.buf, i64 0, i64 0), %while.body ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define internal fastcc i32 @allws(i8* nocapture noundef readonly %cp) unnamed_addr #5 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %cp.addr.0 = phi i8* [ %cp, %entry ], [ %incdec.ptr, %while.body ]
  %0 = load i8, i8* %cp.addr.0, align 1, !tbaa !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %call = tail call i16** @__ctype_b_loc() #13
  %1 = load i16*, i16** %call, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.addr.0, i64 1
  %2 = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %2
  %3 = load i16, i16* %arrayidx, align 2, !tbaa !13
  %4 = and i16 %3, 8192
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %return, label %while.cond, !llvm.loop !16

return:                                           ; preds = %while.cond, %while.body
  %retval.0 = phi i32 [ 0, %while.body ], [ 1, %while.cond ]
  ret i32 %retval.0
}

declare dso_local %struct.ssl_st* @SSL_new(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_connect_state(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_dane_enable(%struct.ssl_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @SSL_free(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i64 @SSL_dane_set_flags(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @tlsa_import_rr(%struct.ssl_st* noundef %ssl, i8* noundef %rrdata) unnamed_addr #1 {
entry:
  %call = tail call i64 @checked_uint8(i8* noundef %rrdata, i8* noundef nonnull @tlsa_import_rr.usage) #9
  %cmp = icmp slt i64 %call, 1
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.inc.2, %for.inc.1, %for.inc, %entry
  %f.028.lcssa = phi %struct.tlsa_field* [ getelementptr inbounds ([5 x %struct.tlsa_field], [5 x %struct.tlsa_field]* @tlsa_import_rr.tlsa_fields, i64 0, i64 0), %entry ], [ getelementptr inbounds ([5 x %struct.tlsa_field], [5 x %struct.tlsa_field]* @tlsa_import_rr.tlsa_fields, i64 0, i64 1), %for.inc ], [ getelementptr inbounds ([5 x %struct.tlsa_field], [5 x %struct.tlsa_field]* @tlsa_import_rr.tlsa_fields, i64 0, i64 2), %for.inc.1 ], [ getelementptr inbounds ([5 x %struct.tlsa_field], [5 x %struct.tlsa_field]* @tlsa_import_rr.tlsa_fields, i64 0, i64 3), %for.inc.2 ]
  %name = getelementptr inbounds %struct.tlsa_field, %struct.tlsa_field* %f.028.lcssa, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !17
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i64 0, i64 0), i8* noundef %0, i8* noundef %rrdata) #9
  br label %cleanup

for.inc:                                          ; preds = %entry
  %add.ptr.1 = getelementptr inbounds i8, i8* %rrdata, i64 %call
  %call.1 = tail call i64 @checked_uint8(i8* noundef nonnull %add.ptr.1, i8* noundef nonnull @tlsa_import_rr.selector) #9
  %cmp.1 = icmp slt i64 %call.1, 1
  br i1 %cmp.1, label %if.then, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %add.ptr.2 = getelementptr inbounds i8, i8* %add.ptr.1, i64 %call.1
  %call.2 = tail call i64 @checked_uint8(i8* noundef nonnull %add.ptr.2, i8* noundef nonnull @tlsa_import_rr.mtype) #9
  %cmp.2 = icmp slt i64 %call.2, 1
  br i1 %cmp.2, label %if.then, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %add.ptr.3 = getelementptr inbounds i8, i8* %add.ptr.2, i64 %call.2
  %call.3 = tail call i64 @hexdecode(i8* noundef nonnull %add.ptr.3, i8* noundef nonnull bitcast (i8** @tlsa_import_rr.data to i8*)) #9
  %cmp.3 = icmp slt i64 %call.3, 1
  br i1 %cmp.3, label %if.then, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %1 = load i8, i8* @tlsa_import_rr.usage, align 1, !tbaa !7
  %2 = load i8, i8* @tlsa_import_rr.selector, align 1, !tbaa !7
  %3 = load i8, i8* @tlsa_import_rr.mtype, align 1, !tbaa !7
  %4 = load i8*, i8** @tlsa_import_rr.data, align 8, !tbaa !3
  %call2 = tail call i32 @SSL_dane_tlsa_add(%struct.ssl_st* noundef %ssl, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8* noundef %4, i64 noundef %call.3) #9
  %5 = load i8*, i8** @tlsa_import_rr.data, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 269) #9
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.inc.3
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0), i8* noundef %rrdata) #9
  br label %cleanup

if.end5:                                          ; preds = %for.inc.3
  %cmp6 = icmp slt i32 %call2, 0
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end5
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0), i8* noundef %rrdata) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then7, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then7 ], [ %call2, %if.end5 ]
  ret i32 %retval.0
}

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_X509* @load_chain(%struct.bio_st* noundef %fp, i32 noundef %nelem) unnamed_addr #1 {
entry:
  %name = alloca i8*, align 8
  %header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %name, align 8, !tbaa !3
  %1 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  store i8* null, i8** %header, align 8, !tbaa !3
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11
  store i8* null, i8** %data, align 8, !tbaa !3
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #9
  %4 = bitcast %struct.stack_st* %call to %struct.stack_st_X509*
  %5 = bitcast %struct.stack_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0), i8* noundef %5) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp67 = icmp sgt i32 %nelem, 0
  br i1 %cmp67, label %land.rhs.lr.ph, label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = bitcast i8** %p to i8*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end33
  %count.068 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end33 ]
  %call3 = call i32 @PEM_read_bio(%struct.bio_st* noundef %fp, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len) #9
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %land.rhs
  %7 = load i8*, i8** %name, align 8, !tbaa !3
  %call5 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0)) #12
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call7 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0)) #12
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0)) #12
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %for.body
  %call13 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0)) #12
  %cmp14.not = icmp eq i32 %call13, 0
  %cond = select i1 %cmp14.not, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509_AUX
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #11
  %8 = load i8*, i8** %data, align 8, !tbaa !3
  store i8* %8, i8** %p, align 8, !tbaa !3
  %9 = load i64, i64* %len, align 8, !tbaa !19
  %call15 = call %struct.x509_st* %cond(%struct.x509_st** noundef null, i8** noundef nonnull %p, i64 noundef %9) #9, !callees !21
  %10 = bitcast %struct.x509_st* %call15 to i8*
  %call16 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* noundef %10) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.then12
  %11 = load i8*, i8** %p, align 8, !tbaa !3
  %12 = load i8*, i8** %data, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = load i64, i64* %len, align 8, !tbaa !19
  %call19 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 noundef %sub.ptr.sub, i64 noundef %13) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false18, %if.then12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i64 0, i64 0)) #9
  br label %cleanup.thread

if.end22:                                         ; preds = %lor.lhs.false18
  %call23 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #10
  %call25 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call23, i8* noundef %10) #9
  %cmp26 = icmp ne i32 %call25, 0
  %conv = zext i1 %cmp26 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup.thread, label %if.end33

cleanup.thread:                                   ; preds = %if.end22, %if.then21
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  br label %err

if.else:                                          ; preds = %lor.lhs.false9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i8* noundef %7) #9
  br label %err

if.end33:                                         ; preds = %if.end22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #11
  %14 = load i8*, i8** %name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 130) #9
  %15 = load i8*, i8** %header, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 131) #9
  %16 = load i8*, i8** %data, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 132) #9
  store i8* null, i8** %header, align 8, !tbaa !3
  store i8* null, i8** %name, align 8, !tbaa !3
  store i8* null, i8** %data, align 8, !tbaa !3
  %inc = add nuw nsw i32 %count.068, 1
  %exitcond.not = icmp eq i32 %inc, %nelem
  br i1 %exitcond.not, label %if.then36, label %land.rhs, !llvm.loop !22

for.end:                                          ; preds = %land.rhs, %for.cond.preheader
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %count.068, %land.rhs ]
  %cmp34 = icmp eq i32 %count.0.lcssa, %nelem
  br i1 %cmp34, label %if.then36, label %err

if.then36:                                        ; preds = %if.end33, %for.end
  call void @ERR_clear_error() #9
  br label %cleanup40

err:                                              ; preds = %cleanup.thread, %for.end, %entry, %if.else
  %17 = load i8*, i8** %name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 143) #9
  %18 = load i8*, i8** %header, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 144) #9
  %19 = load i8*, i8** %data, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 145) #9
  %call38 = call fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef %4) #10
  call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call38, void (i8*)* noundef bitcast (void (%struct.x509_st*)* @X509_free to void (i8*)*)) #9
  br label %cleanup40

cleanup40:                                        ; preds = %err, %if.then36
  %retval.0 = phi %struct.stack_st_X509* [ null, %err ], [ %4, %if.then36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret %struct.stack_st_X509* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_chain(%struct.ssl_st* noundef %ssl, %struct.stack_st_X509* noundef %chain) unnamed_addr #1 {
entry:
  %call = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #9
  %call1 = tail call %struct.x509_store_ctx_st* @X509_STORE_CTX_new() #9
  %0 = bitcast %struct.x509_store_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i64 0, i64 0), i8* noundef %0) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef %ssl) #9
  %1 = bitcast %struct.ssl_ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i64 0, i64 0), i8* noundef %1) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* noundef %call3) #9
  %2 = bitcast %struct.x509_store_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i64 0, i64 0), i8* noundef %2) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef %call1, %struct.x509_store_st* noundef %call7, %struct.x509_st* noundef null, %struct.stack_st_X509* noundef %chain) #9
  %cmp = icmp ne i32 %call11, 0
  %conv = zext i1 %cmp to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %3 = bitcast %struct.ssl_st* %ssl to i8*
  %call15 = tail call i32 @X509_STORE_CTX_set_ex_data(%struct.x509_store_ctx_st* noundef %call1, i32 noundef %call, i8* noundef %3) #9
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv17) #9
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %call20 = tail call i32 @SSL_is_server(%struct.ssl_st* noundef %ssl) #9
  %tobool21.not = icmp eq i32 %call20, 0
  %cond = select i1 %tobool21.not, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i64 0, i64 0)
  %call22 = tail call i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef %call1, i8* noundef %cond) #9
  %call23 = tail call %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* noundef %call1) #9
  %call24 = tail call %struct.X509_VERIFY_PARAM_st* @SSL_get0_param(%struct.ssl_st* noundef %ssl) #9
  %call25 = tail call i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef %call23, %struct.X509_VERIFY_PARAM_st* noundef %call24) #9
  tail call fastcc void @store_ctx_dane_init(%struct.x509_store_ctx_st* noundef %call1, %struct.ssl_st* noundef %ssl) #10
  %call26 = tail call i32 (i32, %struct.x509_store_ctx_st*)* @SSL_get_verify_callback(%struct.ssl_st* noundef %ssl) #9
  %cmp27.not = icmp eq i32 (i32, %struct.x509_store_ctx_st*)* %call26, null
  br i1 %cmp27.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end
  %call30 = tail call i32 (i32, %struct.x509_store_ctx_st*)* @SSL_get_verify_callback(%struct.ssl_st* noundef %ssl) #9
  tail call void @X509_STORE_CTX_set_verify_cb(%struct.x509_store_ctx_st* noundef %call1, i32 (i32, %struct.x509_store_ctx_st*)* noundef %call30) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end
  %call32 = tail call i32 @X509_STORE_CTX_verify(%struct.x509_store_ctx_st* noundef %call1) #9
  %call33 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call32, i32 noundef 0) #9
  %tobool34.not = icmp eq i32 %call33, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 %call32
  %call37 = tail call i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef %call1) #9
  %conv38 = sext i32 %call37 to i64
  tail call void @SSL_set_verify_result(%struct.ssl_st* noundef %ssl, i64 noundef %conv38) #9
  br label %end

end:                                              ; preds = %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %if.end31
  %ret.1 = phi i32 [ %spec.select, %if.end31 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  tail call void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef %call1) #9
  ret i32 %ret.1
}

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_X509_sk_type(%struct.stack_st_X509* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_X509* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @X509_free(%struct.x509_st* noundef) #2

declare dso_local i64 @SSL_get_verify_result(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @SSL_set_verify_result(%struct.ssl_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get0_dane_authority(%struct.ssl_st* noundef, %struct.x509_st** noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i8* @X509_verify_cert_error_string(i64 noundef) local_unnamed_addr #2

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal i64 @checked_uint8(i8* noundef %in, i8* nocapture noundef writeonly %out) #1 {
entry:
  %endp = alloca i8*, align 8
  %0 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  tail call fastcc void @save_errno() #10
  %call = call i64 @strtol(i8* noundef %in, i8** noundef nonnull %endp, i32 noundef 10) #9
  %call1 = call fastcc i32 @restore_errno() #10
  %1 = add i64 %call, -9223372036854775807
  %2 = icmp ult i64 %1, 2
  %cmp3 = icmp eq i32 %call1, 34
  %or.cond25 = select i1 %2, i1 %cmp3, i1 false
  br i1 %or.cond25, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %3 = load i8*, i8** %endp, align 8, !tbaa !3
  %cmp5 = icmp eq i8* %3, %in
  br i1 %cmp5, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %call7 = tail call i16** @__ctype_b_loc() #13
  %4 = load i16*, i16** %call7, align 8, !tbaa !3
  %5 = load i8, i8* %3, align 1, !tbaa !7
  %6 = zext i8 %5 to i64
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %6
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !13
  %8 = and i16 %7, 8192
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %conv10 = trunc i64 %call to i8
  store i8 %conv10, i8* %out, align 1, !tbaa !7
  %9 = icmp ult i64 %call, 256
  br i1 %9, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false9
  %10 = load i16*, i16** %call7, align 8, !tbaa !3
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %cp.0 = phi i8* [ %incdec.ptr, %for.cond ], [ %3, %for.cond.preheader ]
  %11 = load i8, i8* %cp.0, align 1, !tbaa !7
  %12 = zext i8 %11 to i64
  %arrayidx17 = getelementptr inbounds i16, i16* %10, i64 %12
  %13 = load i16, i16* %arrayidx17, align 2, !tbaa !13
  %14 = and i16 %13, 8192
  %tobool20.not = icmp eq i16 %14, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.0, i64 1
  br i1 %tobool20.not, label %for.end, label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %cp.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %in to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false4, %lor.lhs.false6, %lor.lhs.false9, %entry, %for.end
  %retval.0 = phi i64 [ %sub.ptr.sub, %for.end ], [ -1, %entry ], [ -1, %lor.lhs.false9 ], [ -1, %lor.lhs.false6 ], [ -1, %lor.lhs.false4 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @hexdecode(i8* noundef %in, i8* nocapture noundef writeonly %result) #1 {
entry:
  %0 = bitcast i8* %result to i8**
  %call = tail call i64 @strlen(i8* noundef %in) #12
  %div = lshr i64 %call, 1
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %div, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 185) #9
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call1) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i8, i8* %in, align 1, !tbaa !7
  %tobool3.not59 = icmp eq i8 %1, 0
  br i1 %tobool3.not59, label %if.end27, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %call4 = tail call i16** @__ctype_b_loc() #13
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %2 = phi i8 [ %1, %for.body.lr.ph ], [ %8, %for.inc ]
  %nibble.063 = phi i32 [ 0, %for.body.lr.ph ], [ %nibble.1.ph, %for.inc ]
  %byte.062 = phi i8 [ 0, %for.body.lr.ph ], [ %byte.2.ph, %for.inc ]
  %cp.061 = phi i8* [ %call1, %for.body.lr.ph ], [ %cp.2.ph, %for.inc ]
  %in.addr.060 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr23, %for.inc ]
  %3 = load i16*, i16** %call4, align 8, !tbaa !3
  %4 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %4
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !13
  %6 = and i16 %5, 8192
  %tobool6.not = icmp eq i16 %6, 0
  br i1 %tobool6.not, label %if.end8, label %for.inc

if.end8:                                          ; preds = %for.body
  %call9 = tail call i32 @OPENSSL_hexchar2int(i8 noundef zeroext %2) #9
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %7 = trunc i32 %call9 to i8
  %conv16 = or i8 %byte.062, %7
  %xor = xor i32 %nibble.063, 1
  %cmp17 = icmp eq i32 %xor, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end12
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.061, i64 1
  store i8 %conv16, i8* %cp.061, align 1, !tbaa !7
  br label %for.inc

if.else:                                          ; preds = %if.end12
  %shl = shl i8 %conv16, 4
  br label %for.inc

cleanup:                                          ; preds = %if.end8
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 196) #9
  br label %cleanup28

for.inc:                                          ; preds = %for.body, %if.else, %if.then19
  %cp.2.ph = phi i8* [ %cp.061, %if.else ], [ %incdec.ptr, %if.then19 ], [ %cp.061, %for.body ]
  %byte.2.ph = phi i8 [ %shl, %if.else ], [ 0, %if.then19 ], [ %byte.062, %for.body ]
  %nibble.1.ph = phi i32 [ %xor, %if.else ], [ 0, %if.then19 ], [ %nibble.063, %for.body ]
  %incdec.ptr23 = getelementptr inbounds i8, i8* %in.addr.060, i64 1
  %8 = load i8, i8* %incdec.ptr23, align 1, !tbaa !7
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %for.end, label %for.body, !llvm.loop !24

for.end:                                          ; preds = %for.inc
  %cmp24.not = icmp eq i32 %nibble.1.ph, 0
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %for.end
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 208) #9
  br label %cleanup28

if.end27:                                         ; preds = %for.cond.preheader, %for.end
  %cp.0.lcssa68 = phi i8* [ %cp.2.ph, %for.end ], [ %call1, %for.cond.preheader ]
  store i8* %call1, i8** %0, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %cp.0.lcssa68 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup, %entry, %if.end27, %if.then26
  %retval.2 = phi i64 [ 0, %cleanup ], [ 0, %if.then26 ], [ %sub.ptr.sub, %if.end27 ], [ -1, %entry ]
  ret i64 %retval.2
}

declare dso_local i32 @SSL_dane_tlsa_add(%struct.ssl_st* noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc void @save_errno() unnamed_addr #8 {
entry:
  %call = tail call i32* @__errno_location() #13
  %0 = load i32, i32* %call, align 4, !tbaa !10
  store i32 %0, i32* @saved_errno, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i32 @restore_errno() unnamed_addr #8 {
entry:
  %call = tail call i32* @__errno_location() #13
  %0 = load i32, i32* %call, align 4, !tbaa !10
  %1 = load i32, i32* @saved_errno, align 4, !tbaa !10
  store i32 %1, i32* %call, align 4, !tbaa !10
  ret i32 %0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #7

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_hexchar2int(i8 noundef zeroext) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @PEM_read_bio(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #2

declare dso_local %struct.x509_store_ctx_st* @X509_STORE_CTX_new() local_unnamed_addr #2

declare dso_local %struct.ssl_ctx_st* @SSL_get_SSL_CTX(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_store_st* @SSL_CTX_get_cert_store(%struct.ssl_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_init(%struct.x509_store_ctx_st* noundef, %struct.x509_store_st* noundef, %struct.x509_st* noundef, %struct.stack_st_X509* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_set_ex_data(%struct.x509_store_ctx_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_set_default(%struct.x509_store_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @SSL_is_server(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_VERIFY_PARAM_set1(%struct.X509_VERIFY_PARAM_st* noundef, %struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_STORE_CTX_get0_param(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @SSL_get0_param(%struct.ssl_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @store_ctx_dane_init(%struct.x509_store_ctx_st* noundef %store_ctx, %struct.ssl_st* noundef %ssl) unnamed_addr #1 {
entry:
  %call = tail call %struct.ssl_dane_st* @SSL_get0_dane(%struct.ssl_st* noundef %ssl) #9
  tail call void @X509_STORE_CTX_set0_dane(%struct.x509_store_ctx_st* noundef %store_ctx, %struct.ssl_dane_st* noundef %call) #9
  ret void
}

declare dso_local i32 (i32, %struct.x509_store_ctx_st*)* @SSL_get_verify_callback(%struct.ssl_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_set_verify_cb(%struct.x509_store_ctx_st* noundef, i32 (i32, %struct.x509_store_ctx_st*)* noundef) local_unnamed_addr #2

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_verify(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_STORE_CTX_get_error(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_free(%struct.x509_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_STORE_CTX_set0_dane(%struct.x509_store_ctx_st* noundef, %struct.ssl_dane_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ssl_dane_st* @SSL_get0_dane(%struct.ssl_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !5, i64 0}
!12 = distinct !{!12, !9}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = !{!18, !4, i64 8}
!18 = !{!"tlsa_field", !4, i64 0, !4, i64 8, !4, i64 16}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{%struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509_AUX}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
