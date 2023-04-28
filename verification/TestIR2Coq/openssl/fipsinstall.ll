; ModuleID = 'apps/fipsinstall.c'
source_filename = "apps/fipsinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_mac_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.bio_method_st = type opaque
%struct.ossl_provider_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Verify a config file instead of generating one\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"File name of the provider module\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"provider_name\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"FIPS provider name\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"section_name\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"FIPS Provider config section name (optional)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"no_conditional_errors\00", align 1
@.str.12 = private unnamed_addr constant [98 x i8] c"Disable the ability of the fips module to enter an error state if any conditional self tests fail\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"no_security_checks\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"Disable the run-time FIPS security checks in the module\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"self_test_onload\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Forces self tests to always run on module load\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Input config file, used when verifying\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Output config file, used when generating\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mac_name\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"MAC name\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"macopt\00", align 1
@.str.26 = private unnamed_addr constant [81 x i8] c"MAC algorithm parameters in n:v form. See 'PARAMETER NAMES' in the EVP_MAC_ docs\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Disable logging of self test events\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"corrupt_desc\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Corrupt a self test by description\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"corrupt_type\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Corrupt a self test by type\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"The parent config to verify\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"No messages, just exit status\00", align 1
@fipsinstall_options = dso_local constant [21 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 3, i32 62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 8, i32 115, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 14, i32 60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"fips_sect\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.40 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@quiet = internal unnamed_addr global i1 false, align 4
@self_test_log = internal unnamed_addr global i1 false, align 4
@self_test_corrupt_desc = internal unnamed_addr global i8* null, align 8
@self_test_corrupt_type = internal unnamed_addr global i8* null, align 8
@.str.41 = private unnamed_addr constant [8 x i8] c"hexkey:\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"digest:\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"FIPS provider is %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c" not available\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"apps/fipsinstall.c\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"digest:SHA256\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"hexkey:f4556650ac31d35461610bac4ed81b1a181b2d8a43ea2854cbae22ca74560813\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Failed to open module file\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"I/O buffer\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"Unable to get MAC of type %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Unable to create MAC CTX for module check\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"MAC parameter error\0A\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"Unable to create MAC CTX for install indicator\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"INSTALL_SELF_TEST_KATS_RUN\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Unable to create memory BIO\0A\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"VERIFY PASSED\0A\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"Failed to open file\0A\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"INSTALL PASSED\0A\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"%s FAILED\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"INSTALL\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"install-version\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"version not found\0A\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"module-mac\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"Module integrity MAC not found\0A\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"Module integrity mismatch\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"install-status\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"install status not found\0A\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"install-mac\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"Install indicator MAC not found\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"Install indicator status mismatch\0A\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"openssl_conf = openssl_init\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"[openssl_init]\0A\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"providers = provider_section\0A\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"[provider_section]\0A\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"%s = %s\0A\0A\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Failed to load FIPS module\0A\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"activate = 1\0A\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"conditional-errors\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"security-checks\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"st-phase\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"st-desc\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"st-type\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"%s : (%s) : \00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"Corrupt\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fipsinstall_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %module_mac = alloca [64 x i8], align 16
  %module_mac_len = alloca i64, align 8
  %install_mac = alloca [64 x i8], align 16
  %install_mac_len = alloca i64, align 8
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %module_mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  %1 = bitcast i64* %module_mac_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i64 64, i64* %module_mac_len, align 8, !tbaa !3
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %install_mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #5
  %3 = bitcast i64* %install_mac_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store i64 64, i64* %install_mac_len, align 8, !tbaa !3
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %4 = bitcast %struct.stack_st* %call to %struct.stack_st_OPENSSL_STRING*
  %cmp = icmp eq %struct.stack_st* %call, null
  br i1 %cmp, label %if.then215, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([21 x %struct.options_st], [21 x %struct.options_st]* @fipsinstall_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %gotkey.0 = phi i32 [ 0, %if.end ], [ %gotkey.0.be, %while.cond.backedge ]
  %gotdigest.0 = phi i32 [ 0, %if.end ], [ %gotdigest.0.be, %while.cond.backedge ]
  %self_test_onload.0 = phi i32 [ 0, %if.end ], [ %self_test_onload.0.be, %while.cond.backedge ]
  %enable_conditional_errors.0 = phi i32 [ 1, %if.end ], [ %enable_conditional_errors.0.be, %while.cond.backedge ]
  %enable_security_checks.0 = phi i32 [ 1, %if.end ], [ %enable_security_checks.0.be, %while.cond.backedge ]
  %section_name.0 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), %if.end ], [ %section_name.0.be, %while.cond.backedge ]
  %mac_name.0 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %if.end ], [ %mac_name.0.be, %while.cond.backedge ]
  %prov_name.0 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %if.end ], [ %prov_name.0.be, %while.cond.backedge ]
  %in_fname.0 = phi i8* [ null, %if.end ], [ %in_fname.0.be, %while.cond.backedge ]
  %out_fname.0 = phi i8* [ null, %if.end ], [ %out_fname.0.be, %while.cond.backedge ]
  %verify.0 = phi i32 [ 0, %if.end ], [ %verify.0.be, %while.cond.backedge ]
  %module_fname.0 = phi i8* [ null, %if.end ], [ %module_fname.0.be, %while.cond.backedge ]
  %parent_config.0 = phi i8* [ null, %if.end ], [ %parent_config.0.be, %while.cond.backedge ]
  %call2 = tail call i32 @opt_next() #6
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 17, label %sw.bb46
    i32 -1, label %opthelp
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 15, label %sw.bb10
    i32 16, label %sw.bb11
    i32 13, label %sw.bb12
    i32 10, label %sw.bb13
    i32 11, label %sw.bb14
    i32 12, label %sw.bb16
    i32 5, label %sw.bb18
    i32 4, label %sw.bb20
    i32 6, label %sw.bb22
    i32 7, label %sw.bb24
    i32 14, label %sw.bb26
    i32 8, label %sw.bb28
    i32 9, label %sw.bb45
  ]

opthelp:                                          ; preds = %while.cond, %sw.bb28, %if.end67, %while.end, %lor.lhs.false
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call1) #6
  br label %cleanup223

sw.bb5:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([21 x %struct.options_st], [21 x %struct.options_st]* @fipsinstall_options, i64 0, i64 0)) #6
  br label %cleanup223

sw.bb6:                                           ; preds = %while.cond
  %call7 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  %call9 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  store i1 true, i1* @quiet, align 4
  br label %sw.bb13

sw.bb13:                                          ; preds = %while.cond, %sw.bb12
  store i1 true, i1* @self_test_log, align 4
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = tail call i8* @opt_arg() #6
  store i8* %call15, i8** @self_test_corrupt_desc, align 8, !tbaa !7
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %call17 = tail call i8* @opt_arg() #6
  store i8* %call17, i8** @self_test_corrupt_type, align 8, !tbaa !7
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  %call25 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  %call27 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  %call29 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %4) #7
  %call30 = tail call i8* @opt_arg() #6
  %call32 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call29, i8* noundef %call30) #6
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %opthelp, label %if.end34

if.end34:                                         ; preds = %sw.bb28
  %call35 = tail call i8* @opt_arg() #6
  %call36 = tail call i32 @strncmp(i8* noundef %call35, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i64 noundef 7) #8
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %while.cond.backedge, label %if.else

if.else:                                          ; preds = %if.end34
  %call39 = tail call i8* @opt_arg() #6
  %call40 = tail call i32 @strncmp(i8* noundef %call39, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i64 noundef 7) #8
  %cmp41 = icmp eq i32 %call40, 0
  %spec.select = select i1 %cmp41, i32 1, i32 %gotdigest.0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.end34, %while.cond, %sw.bb46, %sw.bb45, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb13, %sw.bb11, %sw.bb10, %sw.bb8, %sw.bb6
  %gotkey.0.be = phi i32 [ %gotkey.0, %sw.bb46 ], [ %gotkey.0, %sw.bb45 ], [ %gotkey.0, %sw.bb26 ], [ %gotkey.0, %sw.bb24 ], [ %gotkey.0, %sw.bb22 ], [ %gotkey.0, %sw.bb20 ], [ %gotkey.0, %sw.bb18 ], [ %gotkey.0, %sw.bb16 ], [ %gotkey.0, %sw.bb14 ], [ %gotkey.0, %sw.bb13 ], [ %gotkey.0, %sw.bb11 ], [ %gotkey.0, %sw.bb10 ], [ %gotkey.0, %sw.bb8 ], [ %gotkey.0, %sw.bb6 ], [ %gotkey.0, %while.cond ], [ 1, %if.end34 ], [ %gotkey.0, %if.else ]
  %gotdigest.0.be = phi i32 [ %gotdigest.0, %sw.bb46 ], [ %gotdigest.0, %sw.bb45 ], [ %gotdigest.0, %sw.bb26 ], [ %gotdigest.0, %sw.bb24 ], [ %gotdigest.0, %sw.bb22 ], [ %gotdigest.0, %sw.bb20 ], [ %gotdigest.0, %sw.bb18 ], [ %gotdigest.0, %sw.bb16 ], [ %gotdigest.0, %sw.bb14 ], [ %gotdigest.0, %sw.bb13 ], [ %gotdigest.0, %sw.bb11 ], [ %gotdigest.0, %sw.bb10 ], [ %gotdigest.0, %sw.bb8 ], [ %gotdigest.0, %sw.bb6 ], [ %gotdigest.0, %while.cond ], [ %gotdigest.0, %if.end34 ], [ %spec.select, %if.else ]
  %self_test_onload.0.be = phi i32 [ 1, %sw.bb46 ], [ %self_test_onload.0, %sw.bb45 ], [ %self_test_onload.0, %sw.bb26 ], [ %self_test_onload.0, %sw.bb24 ], [ %self_test_onload.0, %sw.bb22 ], [ %self_test_onload.0, %sw.bb20 ], [ %self_test_onload.0, %sw.bb18 ], [ %self_test_onload.0, %sw.bb16 ], [ %self_test_onload.0, %sw.bb14 ], [ %self_test_onload.0, %sw.bb13 ], [ %self_test_onload.0, %sw.bb11 ], [ %self_test_onload.0, %sw.bb10 ], [ %self_test_onload.0, %sw.bb8 ], [ %self_test_onload.0, %sw.bb6 ], [ %self_test_onload.0, %while.cond ], [ %self_test_onload.0, %if.end34 ], [ %self_test_onload.0, %if.else ]
  %enable_conditional_errors.0.be = phi i32 [ %enable_conditional_errors.0, %sw.bb46 ], [ %enable_conditional_errors.0, %sw.bb45 ], [ %enable_conditional_errors.0, %sw.bb26 ], [ %enable_conditional_errors.0, %sw.bb24 ], [ %enable_conditional_errors.0, %sw.bb22 ], [ %enable_conditional_errors.0, %sw.bb20 ], [ %enable_conditional_errors.0, %sw.bb18 ], [ %enable_conditional_errors.0, %sw.bb16 ], [ %enable_conditional_errors.0, %sw.bb14 ], [ %enable_conditional_errors.0, %sw.bb13 ], [ %enable_conditional_errors.0, %sw.bb11 ], [ 0, %sw.bb10 ], [ %enable_conditional_errors.0, %sw.bb8 ], [ %enable_conditional_errors.0, %sw.bb6 ], [ %enable_conditional_errors.0, %while.cond ], [ %enable_conditional_errors.0, %if.end34 ], [ %enable_conditional_errors.0, %if.else ]
  %enable_security_checks.0.be = phi i32 [ %enable_security_checks.0, %sw.bb46 ], [ %enable_security_checks.0, %sw.bb45 ], [ %enable_security_checks.0, %sw.bb26 ], [ %enable_security_checks.0, %sw.bb24 ], [ %enable_security_checks.0, %sw.bb22 ], [ %enable_security_checks.0, %sw.bb20 ], [ %enable_security_checks.0, %sw.bb18 ], [ %enable_security_checks.0, %sw.bb16 ], [ %enable_security_checks.0, %sw.bb14 ], [ %enable_security_checks.0, %sw.bb13 ], [ 0, %sw.bb11 ], [ %enable_security_checks.0, %sw.bb10 ], [ %enable_security_checks.0, %sw.bb8 ], [ %enable_security_checks.0, %sw.bb6 ], [ %enable_security_checks.0, %while.cond ], [ %enable_security_checks.0, %if.end34 ], [ %enable_security_checks.0, %if.else ]
  %section_name.0.be = phi i8* [ %section_name.0, %sw.bb46 ], [ %section_name.0, %sw.bb45 ], [ %section_name.0, %sw.bb26 ], [ %section_name.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %section_name.0, %sw.bb20 ], [ %section_name.0, %sw.bb18 ], [ %section_name.0, %sw.bb16 ], [ %section_name.0, %sw.bb14 ], [ %section_name.0, %sw.bb13 ], [ %section_name.0, %sw.bb11 ], [ %section_name.0, %sw.bb10 ], [ %section_name.0, %sw.bb8 ], [ %section_name.0, %sw.bb6 ], [ %section_name.0, %while.cond ], [ %section_name.0, %if.end34 ], [ %section_name.0, %if.else ]
  %mac_name.0.be = phi i8* [ %mac_name.0, %sw.bb46 ], [ %mac_name.0, %sw.bb45 ], [ %mac_name.0, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %mac_name.0, %sw.bb22 ], [ %mac_name.0, %sw.bb20 ], [ %mac_name.0, %sw.bb18 ], [ %mac_name.0, %sw.bb16 ], [ %mac_name.0, %sw.bb14 ], [ %mac_name.0, %sw.bb13 ], [ %mac_name.0, %sw.bb11 ], [ %mac_name.0, %sw.bb10 ], [ %mac_name.0, %sw.bb8 ], [ %mac_name.0, %sw.bb6 ], [ %mac_name.0, %while.cond ], [ %mac_name.0, %if.end34 ], [ %mac_name.0, %if.else ]
  %prov_name.0.be = phi i8* [ %prov_name.0, %sw.bb46 ], [ %prov_name.0, %sw.bb45 ], [ %prov_name.0, %sw.bb26 ], [ %prov_name.0, %sw.bb24 ], [ %prov_name.0, %sw.bb22 ], [ %prov_name.0, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %prov_name.0, %sw.bb16 ], [ %prov_name.0, %sw.bb14 ], [ %prov_name.0, %sw.bb13 ], [ %prov_name.0, %sw.bb11 ], [ %prov_name.0, %sw.bb10 ], [ %prov_name.0, %sw.bb8 ], [ %prov_name.0, %sw.bb6 ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %if.end34 ], [ %prov_name.0, %if.else ]
  %in_fname.0.be = phi i8* [ %in_fname.0, %sw.bb46 ], [ %in_fname.0, %sw.bb45 ], [ %in_fname.0, %sw.bb26 ], [ %in_fname.0, %sw.bb24 ], [ %in_fname.0, %sw.bb22 ], [ %in_fname.0, %sw.bb20 ], [ %in_fname.0, %sw.bb18 ], [ %in_fname.0, %sw.bb16 ], [ %in_fname.0, %sw.bb14 ], [ %in_fname.0, %sw.bb13 ], [ %in_fname.0, %sw.bb11 ], [ %in_fname.0, %sw.bb10 ], [ %in_fname.0, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %in_fname.0, %while.cond ], [ %in_fname.0, %if.end34 ], [ %in_fname.0, %if.else ]
  %out_fname.0.be = phi i8* [ %out_fname.0, %sw.bb46 ], [ %out_fname.0, %sw.bb45 ], [ %out_fname.0, %sw.bb26 ], [ %out_fname.0, %sw.bb24 ], [ %out_fname.0, %sw.bb22 ], [ %out_fname.0, %sw.bb20 ], [ %out_fname.0, %sw.bb18 ], [ %out_fname.0, %sw.bb16 ], [ %out_fname.0, %sw.bb14 ], [ %out_fname.0, %sw.bb13 ], [ %out_fname.0, %sw.bb11 ], [ %out_fname.0, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %out_fname.0, %sw.bb6 ], [ %out_fname.0, %while.cond ], [ %out_fname.0, %if.end34 ], [ %out_fname.0, %if.else ]
  %verify.0.be = phi i32 [ %verify.0, %sw.bb46 ], [ 1, %sw.bb45 ], [ %verify.0, %sw.bb26 ], [ %verify.0, %sw.bb24 ], [ %verify.0, %sw.bb22 ], [ %verify.0, %sw.bb20 ], [ %verify.0, %sw.bb18 ], [ %verify.0, %sw.bb16 ], [ %verify.0, %sw.bb14 ], [ %verify.0, %sw.bb13 ], [ %verify.0, %sw.bb11 ], [ %verify.0, %sw.bb10 ], [ %verify.0, %sw.bb8 ], [ %verify.0, %sw.bb6 ], [ %verify.0, %while.cond ], [ %verify.0, %if.end34 ], [ %verify.0, %if.else ]
  %module_fname.0.be = phi i8* [ %module_fname.0, %sw.bb46 ], [ %module_fname.0, %sw.bb45 ], [ %module_fname.0, %sw.bb26 ], [ %module_fname.0, %sw.bb24 ], [ %module_fname.0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %module_fname.0, %sw.bb18 ], [ %module_fname.0, %sw.bb16 ], [ %module_fname.0, %sw.bb14 ], [ %module_fname.0, %sw.bb13 ], [ %module_fname.0, %sw.bb11 ], [ %module_fname.0, %sw.bb10 ], [ %module_fname.0, %sw.bb8 ], [ %module_fname.0, %sw.bb6 ], [ %module_fname.0, %while.cond ], [ %module_fname.0, %if.end34 ], [ %module_fname.0, %if.else ]
  %parent_config.0.be = phi i8* [ %parent_config.0, %sw.bb46 ], [ %parent_config.0, %sw.bb45 ], [ %call27, %sw.bb26 ], [ %parent_config.0, %sw.bb24 ], [ %parent_config.0, %sw.bb22 ], [ %parent_config.0, %sw.bb20 ], [ %parent_config.0, %sw.bb18 ], [ %parent_config.0, %sw.bb16 ], [ %parent_config.0, %sw.bb14 ], [ %parent_config.0, %sw.bb13 ], [ %parent_config.0, %sw.bb11 ], [ %parent_config.0, %sw.bb10 ], [ %parent_config.0, %sw.bb8 ], [ %parent_config.0, %sw.bb6 ], [ %parent_config.0, %while.cond ], [ %parent_config.0, %if.end34 ], [ %parent_config.0, %if.else ]
  br label %while.cond, !llvm.loop !9

sw.bb45:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call47 = tail call i32 @opt_num_rest() #6
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %lor.lhs.false, label %opthelp

lor.lhs.false:                                    ; preds = %while.end
  %tobool49 = icmp ne i32 %verify.0, 0
  %cmp50 = icmp eq i8* %in_fname.0, null
  %or.cond = select i1 %tobool49, i1 %cmp50, i1 false
  br i1 %or.cond, label %opthelp, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false
  %cmp53.not = icmp eq i8* %parent_config.0, null
  br i1 %cmp53.not, label %if.end67, label %if.then54

if.then54:                                        ; preds = %if.end52
  %call55 = tail call fastcc i32 @verify_module_load(i8* noundef nonnull %parent_config.0) #7
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then215, label %if.then57

if.then57:                                        ; preds = %if.then54
  %call58 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %prov_name.0) #6
  %tobool59.not = icmp eq i32 %call58, 0
  %.b341 = load i1, i1* @quiet, align 4
  br i1 %.b341, label %end, label %if.then61

if.then61:                                        ; preds = %if.then57
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %cond63 = select i1 %tobool59.not, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i64 0, i64 0)
  %call64 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0), i8* noundef %cond63) #6
  br i1 %tobool59.not, label %if.then215, label %cleanup223

if.end67:                                         ; preds = %if.end52
  %cmp68 = icmp eq i8* %module_fname.0, null
  br i1 %cmp68, label %opthelp, label %if.end70

if.end70:                                         ; preds = %if.end67
  %call71 = tail call i8* @opt_path_end(i8* noundef nonnull %module_fname.0) #6
  %cmp72.not = icmp eq i8* %call71, null
  br i1 %cmp72.not, label %if.end82, label %if.then73

if.then73:                                        ; preds = %if.end70
  %call74 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %module_fname.0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 noundef 405) #6
  %cmp75 = icmp eq i8* %call74, null
  br i1 %cmp75, label %if.then215, label %if.end77

if.end77:                                         ; preds = %if.then73
  %sub.ptr.lhs.cast = ptrtoint i8* %call71 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %module_fname.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx = getelementptr inbounds i8, i8* %call74, i64 %sub.ptr.sub
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %call78 = tail call i32 @OSSL_PROVIDER_set_default_search_path(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %call74) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then215, label %if.end82

if.end82:                                         ; preds = %if.end77, %if.end70
  %module_path.0 = phi i8* [ %call74, %if.end77 ], [ null, %if.end70 ]
  %.b342 = load i1, i1* @self_test_log, align 4
  %not..b342 = xor i1 %.b342, true
  %7 = load i8*, i8** @self_test_corrupt_desc, align 8
  %cmp85 = icmp ne i8* %7, null
  %or.cond259 = select i1 %not..b342, i1 true, i1 %cmp85
  %8 = load i8*, i8** @self_test_corrupt_type, align 8
  %cmp87 = icmp ne i8* %8, null
  %or.cond260 = select i1 %or.cond259, i1 true, i1 %cmp87
  br i1 %or.cond260, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end82
  tail call void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef null, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @self_test_events, i8* noundef null) #6
  br label %if.end89

if.end89:                                         ; preds = %if.end82, %if.then88
  %tobool90.not = icmp eq i32 %gotdigest.0, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %if.end97

land.lhs.true91:                                  ; preds = %if.end89
  %call92 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %4) #7
  %call94 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call92, i8* noundef nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0)) #6
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then215, label %if.end97

if.end97:                                         ; preds = %land.lhs.true91, %if.end89
  %tobool98.not = icmp eq i32 %gotkey.0, 0
  br i1 %tobool98.not, label %land.lhs.true99, label %if.end105

land.lhs.true99:                                  ; preds = %if.end97
  %call100 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %4) #7
  %call102 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call100, i8* noundef nonnull getelementptr inbounds ([72 x i8], [72 x i8]* @.str.48, i64 0, i64 0)) #6
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then215, label %if.end105

if.end105:                                        ; preds = %land.lhs.true99, %if.end97
  %call106 = tail call %struct.bio_st* @bio_open_default(i8* noundef nonnull %module_fname.0, i8 noundef signext 114, i32 noundef 2) #6
  %cmp107 = icmp eq %struct.bio_st* %call106, null
  br i1 %cmp107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end105
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call109 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %if.then215

if.end110:                                        ; preds = %if.end105
  %call111 = tail call i8* @app_malloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0)) #6
  %cmp112 = icmp eq i8* %call111, null
  br i1 %cmp112, label %if.then215, label %if.end114

if.end114:                                        ; preds = %if.end110
  %call115 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #6
  %call116 = tail call i8* @app_get0_propq() #6
  %call117 = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call115, i8* noundef %mac_name.0, i8* noundef %call116) #6
  %cmp118 = icmp eq %struct.evp_mac_st* %call117, null
  br i1 %cmp118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end114
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call120 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i8* noundef %mac_name.0) #6
  br label %if.then215

if.end121:                                        ; preds = %if.end114
  %call122 = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef nonnull %call117) #6
  %cmp123 = icmp eq %struct.evp_mac_ctx_st* %call122, null
  br i1 %cmp123, label %if.then124, label %if.then128

if.then124:                                       ; preds = %if.end121
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call125 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %if.then215

if.then128:                                       ; preds = %if.end121
  %call129 = tail call %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef nonnull %call117) #6
  %call130 = tail call %struct.ossl_param_st* @app_params_new_from_opts(%struct.stack_st_OPENSSL_STRING* noundef nonnull %4, %struct.ossl_param_st* noundef %call129) #6
  %cmp131 = icmp eq %struct.ossl_param_st* %call130, null
  br i1 %cmp131, label %if.then215, label %if.end133

if.end133:                                        ; preds = %if.then128
  %call134 = tail call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call122, %struct.ossl_param_st* noundef nonnull %call130) #6
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %select.unfold, label %if.end143

select.unfold:                                    ; preds = %if.end133
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call137 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0)) #6
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  tail call void @ERR_print_errors(%struct.bio_st* noundef %13) #6
  tail call void @app_params_free(%struct.ossl_param_st* noundef nonnull %call130) #6
  br label %if.then215

if.end143:                                        ; preds = %if.end133
  tail call void @app_params_free(%struct.ossl_param_st* noundef nonnull %call130) #6
  %call144 = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef nonnull %call122) #6
  %cmp145 = icmp eq %struct.evp_mac_ctx_st* %call144, null
  br i1 %cmp145, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end143
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call147 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.54, i64 0, i64 0)) #6
  br label %if.then215

if.end148:                                        ; preds = %if.end143
  %call149 = call fastcc i32 @do_mac(%struct.evp_mac_ctx_st* noundef nonnull %call122, i8* noundef nonnull %call111, %struct.bio_st* noundef nonnull %call106, i8* noundef nonnull %0, i64* noundef nonnull %module_mac_len) #7
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then215, label %if.end152

if.end152:                                        ; preds = %if.end148
  %cmp153 = icmp eq i32 %self_test_onload.0, 0
  br i1 %cmp153, label %if.then154, label %if.else167

if.then154:                                       ; preds = %if.end152
  %call155 = call i64 @strlen(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #8
  %conv = trunc i64 %call155 to i32
  %call156 = call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #6
  %cmp157 = icmp eq %struct.bio_st* %call156, null
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.then154
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call160 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0)) #6
  br label %if.then215

if.end161:                                        ; preds = %if.then154
  %call163 = call fastcc i32 @do_mac(%struct.evp_mac_ctx_st* noundef nonnull %call144, i8* noundef nonnull %call111, %struct.bio_st* noundef nonnull %call156, i8* noundef nonnull %2, i64* noundef nonnull %install_mac_len) #7
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then215, label %if.end168

if.else167:                                       ; preds = %if.end152
  store i64 0, i64* %install_mac_len, align 8, !tbaa !3
  br label %if.end168

if.end168:                                        ; preds = %if.end161, %if.else167
  %mem_bio.0 = phi %struct.bio_st* [ %call156, %if.end161 ], [ null, %if.else167 ]
  %16 = load i64, i64* %module_mac_len, align 8, !tbaa !3
  br i1 %tobool49, label %if.then170, label %if.else181

if.then170:                                       ; preds = %if.end168
  %17 = load i64, i64* %install_mac_len, align 8, !tbaa !3
  %call173 = call fastcc i32 @verify_config(i8* noundef %in_fname.0, i8* noundef %section_name.0, i8* noundef nonnull %0, i64 noundef %16, i8* noundef nonnull %2, i64 noundef %17) #7
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then215, label %if.end176

if.end176:                                        ; preds = %if.then170
  %.b340 = load i1, i1* @quiet, align 4
  br i1 %.b340, label %cleanup223, label %if.then178

if.then178:                                       ; preds = %if.end176
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call179 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0)) #6
  br label %cleanup223

if.else181:                                       ; preds = %if.end168
  %call183 = call fastcc %struct.conf_st* @generate_config_and_load(i8* noundef %prov_name.0, i8* noundef %section_name.0, i8* noundef nonnull %0, i64 noundef %16, i32 noundef %enable_conditional_errors.0, i32 noundef %enable_security_checks.0) #7
  %cmp184 = icmp eq %struct.conf_st* %call183, null
  br i1 %cmp184, label %if.then215, label %if.end187

if.end187:                                        ; preds = %if.else181
  %call188 = call fastcc i32 @load_fips_prov_and_run_self_test(i8* noundef %prov_name.0) #7
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.then215, label %if.end191

if.end191:                                        ; preds = %if.end187
  %cmp192 = icmp eq i8* %out_fname.0, null
  br i1 %cmp192, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end191
  %call194 = call %struct.bio_st* @dup_bio_out(i32 noundef 32769) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end191
  %call195 = call %struct.bio_st* @bio_open_default(i8* noundef nonnull %out_fname.0, i8 noundef signext 119, i32 noundef 32769) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond196 = phi %struct.bio_st* [ %call194, %cond.true ], [ %call195, %cond.false ]
  %cmp197 = icmp eq %struct.bio_st* %cond196, null
  br i1 %cmp197, label %if.then199, label %if.end201

if.then199:                                       ; preds = %cond.end
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call200 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %if.then215

if.end201:                                        ; preds = %cond.end
  %20 = load i64, i64* %module_mac_len, align 8, !tbaa !3
  %21 = load i64, i64* %install_mac_len, align 8, !tbaa !3
  %call204 = call fastcc i32 @write_config_fips_section(%struct.bio_st* noundef nonnull %cond196, i8* noundef %section_name.0, i8* noundef nonnull %0, i64 noundef %20, i32 noundef %enable_conditional_errors.0, i32 noundef %enable_security_checks.0, i8* noundef nonnull %2, i64 noundef %21) #7
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then215, label %if.end207

if.end207:                                        ; preds = %if.end201
  %.b339 = load i1, i1* @quiet, align 4
  br i1 %.b339, label %cleanup223, label %if.then209

if.then209:                                       ; preds = %if.end207
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call210 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #6
  br label %cleanup223

end:                                              ; preds = %if.then57
  br i1 %tobool59.not, label %if.then215, label %cleanup223

if.then215:                                       ; preds = %select.unfold, %if.then128, %if.end77, %land.lhs.true91, %land.lhs.true99, %if.end148, %if.end161, %if.end187, %if.end201, %if.then199, %if.else181, %if.then170, %if.then159, %if.then146, %if.then124, %if.then119, %if.end110, %if.then108, %if.then73, %if.then54, %entry, %if.then61, %end
  %conf.1366 = phi %struct.conf_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ null, %if.end148 ], [ null, %if.end161 ], [ %call183, %if.end187 ], [ %call183, %if.end201 ], [ %call183, %if.then199 ], [ null, %if.else181 ], [ null, %if.then170 ], [ null, %if.then159 ], [ null, %if.then146 ], [ null, %if.then124 ], [ null, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ null, %if.then128 ], [ null, %select.unfold ]
  %mac.0365 = phi %struct.evp_mac_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ %call117, %if.end148 ], [ %call117, %if.end161 ], [ %call117, %if.end187 ], [ %call117, %if.end201 ], [ %call117, %if.then199 ], [ %call117, %if.else181 ], [ %call117, %if.then170 ], [ %call117, %if.then159 ], [ %call117, %if.then146 ], [ %call117, %if.then124 ], [ null, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ %call117, %if.then128 ], [ %call117, %select.unfold ]
  %read_buffer.0364 = phi i8* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ %call111, %if.end148 ], [ %call111, %if.end161 ], [ %call111, %if.end187 ], [ %call111, %if.end201 ], [ %call111, %if.then199 ], [ %call111, %if.else181 ], [ %call111, %if.then170 ], [ %call111, %if.then159 ], [ %call111, %if.then146 ], [ %call111, %if.then124 ], [ %call111, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ %call111, %if.then128 ], [ %call111, %select.unfold ]
  %ctx2.0363 = phi %struct.evp_mac_ctx_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ %call144, %if.end148 ], [ %call144, %if.end161 ], [ %call144, %if.end187 ], [ %call144, %if.end201 ], [ %call144, %if.then199 ], [ %call144, %if.else181 ], [ %call144, %if.then170 ], [ %call144, %if.then159 ], [ null, %if.then146 ], [ null, %if.then124 ], [ null, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ null, %if.then128 ], [ null, %select.unfold ]
  %ctx.0362 = phi %struct.evp_mac_ctx_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ %call122, %if.end148 ], [ %call122, %if.end161 ], [ %call122, %if.end187 ], [ %call122, %if.end201 ], [ %call122, %if.then199 ], [ %call122, %if.else181 ], [ %call122, %if.then170 ], [ %call122, %if.then159 ], [ %call122, %if.then146 ], [ null, %if.then124 ], [ null, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ %call122, %if.then128 ], [ %call122, %select.unfold ]
  %module_path.1361 = phi i8* [ null, %end ], [ null, %if.then61 ], [ %call74, %if.end77 ], [ %module_path.0, %land.lhs.true91 ], [ %module_path.0, %land.lhs.true99 ], [ %module_path.0, %if.end148 ], [ %module_path.0, %if.end161 ], [ %module_path.0, %if.end187 ], [ %module_path.0, %if.end201 ], [ %module_path.0, %if.then199 ], [ %module_path.0, %if.else181 ], [ %module_path.0, %if.then170 ], [ %module_path.0, %if.then159 ], [ %module_path.0, %if.then146 ], [ %module_path.0, %if.then124 ], [ %module_path.0, %if.then119 ], [ %module_path.0, %if.end110 ], [ %module_path.0, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ %module_path.0, %if.then128 ], [ %module_path.0, %select.unfold ]
  %verify.2360 = phi i32 [ %verify.0, %end ], [ %verify.0, %if.then61 ], [ %verify.0, %if.end77 ], [ %verify.0, %land.lhs.true91 ], [ %verify.0, %land.lhs.true99 ], [ %verify.0, %if.end148 ], [ %verify.0, %if.end161 ], [ 0, %if.end187 ], [ 0, %if.end201 ], [ 0, %if.then199 ], [ 0, %if.else181 ], [ 1, %if.then170 ], [ %verify.0, %if.then159 ], [ %verify.0, %if.then146 ], [ %verify.0, %if.then124 ], [ %verify.0, %if.then119 ], [ %verify.0, %if.end110 ], [ %verify.0, %if.then108 ], [ %verify.0, %if.then73 ], [ %verify.0, %if.then54 ], [ 0, %entry ], [ %verify.0, %if.then128 ], [ %verify.0, %select.unfold ]
  %fout.1359 = phi %struct.bio_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ null, %if.end148 ], [ null, %if.end161 ], [ null, %if.end187 ], [ %cond196, %if.end201 ], [ null, %if.then199 ], [ null, %if.else181 ], [ null, %if.then170 ], [ null, %if.then159 ], [ null, %if.then146 ], [ null, %if.then124 ], [ null, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ null, %if.then128 ], [ null, %select.unfold ]
  %mem_bio.1358 = phi %struct.bio_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ null, %if.end148 ], [ %call156, %if.end161 ], [ %mem_bio.0, %if.end187 ], [ %mem_bio.0, %if.end201 ], [ %mem_bio.0, %if.then199 ], [ %mem_bio.0, %if.else181 ], [ %mem_bio.0, %if.then170 ], [ null, %if.then159 ], [ null, %if.then146 ], [ null, %if.then124 ], [ null, %if.then119 ], [ null, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ null, %if.then128 ], [ null, %select.unfold ]
  %module_bio.0357 = phi %struct.bio_st* [ null, %end ], [ null, %if.then61 ], [ null, %if.end77 ], [ null, %land.lhs.true91 ], [ null, %land.lhs.true99 ], [ %call106, %if.end148 ], [ %call106, %if.end161 ], [ %call106, %if.end187 ], [ %call106, %if.end201 ], [ %call106, %if.then199 ], [ %call106, %if.else181 ], [ %call106, %if.then170 ], [ %call106, %if.then159 ], [ %call106, %if.then146 ], [ %call106, %if.then124 ], [ %call106, %if.then119 ], [ %call106, %if.end110 ], [ null, %if.then108 ], [ null, %if.then73 ], [ null, %if.then54 ], [ null, %entry ], [ %call106, %if.then128 ], [ %call106, %select.unfold ]
  %.b = load i1, i1* @quiet, align 4
  br i1 %.b, label %if.end221, label %if.then217

if.then217:                                       ; preds = %if.then215
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %tobool218.not = icmp eq i32 %verify.2360, 0
  %cond219 = select i1 %tobool218.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0)
  %call220 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i8* noundef %cond219) #6
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.then215
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  call void @ERR_print_errors(%struct.bio_st* noundef %24) #6
  br label %cleanup223

cleanup223:                                       ; preds = %if.then178, %if.end176, %if.then209, %if.end207, %sw.bb5, %if.then61, %end, %if.end221, %opthelp
  %module_bio.1 = phi %struct.bio_st* [ %module_bio.0357, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %call106, %if.then178 ], [ %call106, %if.end176 ], [ %call106, %if.then209 ], [ %call106, %if.end207 ], [ null, %sw.bb5 ]
  %mem_bio.2 = phi %struct.bio_st* [ %mem_bio.1358, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %mem_bio.0, %if.then178 ], [ %mem_bio.0, %if.end176 ], [ %mem_bio.0, %if.then209 ], [ %mem_bio.0, %if.end207 ], [ null, %sw.bb5 ]
  %fout.2 = phi %struct.bio_st* [ %fout.1359, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ null, %if.then178 ], [ null, %if.end176 ], [ %cond196, %if.then209 ], [ %cond196, %if.end207 ], [ null, %sw.bb5 ]
  %module_path.2 = phi i8* [ %module_path.1361, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %module_path.0, %if.then178 ], [ %module_path.0, %if.end176 ], [ %module_path.0, %if.then209 ], [ %module_path.0, %if.end207 ], [ null, %sw.bb5 ]
  %ret.1 = phi i32 [ 1, %if.end221 ], [ 0, %end ], [ 1, %opthelp ], [ 0, %if.then61 ], [ 0, %if.then178 ], [ 0, %if.end176 ], [ 0, %if.then209 ], [ 0, %if.end207 ], [ 0, %sw.bb5 ]
  %ctx.1 = phi %struct.evp_mac_ctx_st* [ %ctx.0362, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %call122, %if.then178 ], [ %call122, %if.end176 ], [ %call122, %if.then209 ], [ %call122, %if.end207 ], [ null, %sw.bb5 ]
  %ctx2.1 = phi %struct.evp_mac_ctx_st* [ %ctx2.0363, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %call144, %if.then178 ], [ %call144, %if.end176 ], [ %call144, %if.then209 ], [ %call144, %if.end207 ], [ null, %sw.bb5 ]
  %read_buffer.1 = phi i8* [ %read_buffer.0364, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %call111, %if.then178 ], [ %call111, %if.end176 ], [ %call111, %if.then209 ], [ %call111, %if.end207 ], [ null, %sw.bb5 ]
  %mac.1 = phi %struct.evp_mac_st* [ %mac.0365, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ %call117, %if.then178 ], [ %call117, %if.end176 ], [ %call117, %if.then209 ], [ %call117, %if.end207 ], [ null, %sw.bb5 ]
  %conf.2 = phi %struct.conf_st* [ %conf.1366, %if.end221 ], [ null, %end ], [ null, %opthelp ], [ null, %if.then61 ], [ null, %if.then178 ], [ null, %if.end176 ], [ %call183, %if.then209 ], [ %call183, %if.end207 ], [ null, %sw.bb5 ]
  call void @CRYPTO_free(i8* noundef %module_path.2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 noundef 529) #6
  %call224 = call i32 @BIO_free(%struct.bio_st* noundef %fout.2) #6
  %call225 = call i32 @BIO_free(%struct.bio_st* noundef %mem_bio.2) #6
  %call226 = call i32 @BIO_free(%struct.bio_st* noundef %module_bio.1) #6
  %call227 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %4) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call227) #6
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %mac.1) #6
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx2.1) #6
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx.1) #6
  call void @CRYPTO_free(i8* noundef %read_buffer.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 noundef 537) #6
  call fastcc void @free_config_and_unload(%struct.conf_st* noundef %conf.2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_module_load(i8* noundef %parent_config_file) unnamed_addr #0 {
entry:
  %call = tail call i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %parent_config_file) #6
  ret i32 %call
}

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_path_end(i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_PROVIDER_set_default_search_path(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_SELF_TEST_set_callback(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @self_test_events(%struct.ossl_param_st* noundef %params, i8* nocapture noundef readnone %arg) #0 {
entry:
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i64 0, i64 0)) #6
  %cmp = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 1
  %0 = load i32, i32* %data_type, align 8, !tbaa !12
  %cmp1.not = icmp eq i32 %0, 4
  br i1 %cmp1.not, label %if.end, label %err

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !15
  %call2 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0)) #6
  %cmp3 = icmp eq %struct.ossl_param_st* %call2, null
  br i1 %cmp3, label %err, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %data_type5 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 1
  %2 = load i32, i32* %data_type5, align 8, !tbaa !12
  %cmp6.not = icmp eq i32 %2, 4
  br i1 %cmp6.not, label %if.end8, label %err

if.end8:                                          ; preds = %lor.lhs.false4
  %data9 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call2, i64 0, i32 2
  %3 = load i8*, i8** %data9, align 8, !tbaa !15
  %call10 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0)) #6
  %cmp11 = icmp eq %struct.ossl_param_st* %call10, null
  br i1 %cmp11, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end8
  %data_type13 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call10, i64 0, i32 1
  %4 = load i32, i32* %data_type13, align 8, !tbaa !12
  %cmp14.not = icmp eq i32 %4, 4
  br i1 %cmp14.not, label %if.end16, label %err

if.end16:                                         ; preds = %lor.lhs.false12
  %data17 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call10, i64 0, i32 2
  %5 = load i8*, i8** %data17, align 8, !tbaa !15
  %.b = load i1, i1* @self_test_log, align 4
  br i1 %.b, label %if.end32, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0)) #8
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call22 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i8* noundef %3, i8* noundef %5) #6
  br label %if.end32

if.else:                                          ; preds = %if.then18
  %call23 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0)) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else
  %call26 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0)) #8
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %lor.lhs.false25, %if.else
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call29 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i8* noundef %1) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.then28, %lor.lhs.false25, %if.end16
  %call33 = tail call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i64 0, i64 0)) #8
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %land.lhs.true, label %err

land.lhs.true:                                    ; preds = %if.end32
  %8 = load i8*, i8** @self_test_corrupt_desc, align 8, !tbaa !7
  %cmp35 = icmp ne i8* %8, null
  %9 = load i8*, i8** @self_test_corrupt_type, align 8
  %cmp37 = icmp ne i8* %9, null
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp37
  br i1 %or.cond, label %if.then38, label %err

if.then38:                                        ; preds = %land.lhs.true
  br i1 %cmp35, label %land.lhs.true40, label %if.end44

land.lhs.true40:                                  ; preds = %if.then38
  %call41 = tail call i32 @strcmp(i8* noundef nonnull %8, i8* noundef %3) #8
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end44, label %err

if.end44:                                         ; preds = %land.lhs.true40, %if.then38
  %cmp45.not = icmp eq i8* %9, null
  br i1 %cmp45.not, label %if.end50, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end44
  %call47 = tail call i32 @strcmp(i8* noundef nonnull %9, i8* noundef %5) #8
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end50, label %err

if.end50:                                         ; preds = %land.lhs.true46, %if.end44
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call51 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0), i8* noundef %1) #6
  br label %err

err:                                              ; preds = %land.lhs.true40, %land.lhs.true46, %land.lhs.true, %if.end32, %if.end8, %lor.lhs.false12, %if.end, %lor.lhs.false4, %entry, %lor.lhs.false, %if.end50
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %lor.lhs.false4 ], [ 0, %if.end8 ], [ 0, %lor.lhs.false12 ], [ 0, %if.end50 ], [ 1, %if.end32 ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true46 ], [ 1, %land.lhs.true40 ]
  ret i32 %ret.0
}

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @app_params_new_from_opts(%struct.stack_st_OPENSSL_STRING* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @app_params_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.evp_mac_ctx_st* @EVP_MAC_CTX_dup(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_mac(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef %tmp, %struct.bio_st* noundef %in, i8* noundef %out, i64* noundef %out_len) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %out_len, align 8, !tbaa !3
  %call = tail call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @EVP_MAC_CTX_get_mac_size(%struct.evp_mac_ctx_st* noundef %ctx) #6
  %cmp = icmp ugt i64 %call1, %0
  br i1 %cmp, label %end, label %while.cond

while.cond:                                       ; preds = %if.end, %lor.lhs.false
  %call4 = tail call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef %tmp, i32 noundef 4096) #6
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %end, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %conv25 = zext i32 %call4 to i64
  %call7 = tail call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef %tmp, i64 noundef %conv25) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %while.cond, !llvm.loop !16

end:                                              ; preds = %while.cond, %if.end
  %call11 = tail call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef nonnull %out_len, i64 noundef %0) #6
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %err

err:                                              ; preds = %while.body, %lor.lhs.false, %end, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %spec.select, %end ], [ 0, %lor.lhs.false ], [ 0, %while.body ]
  ret i32 %ret.0
}

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @verify_config(i8* noundef %infile, i8* noundef %section, i8* noundef readonly %module_mac, i64 noundef %module_mac_len, i8* noundef readonly %install_mac, i64 noundef %install_mac_len) unnamed_addr #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call %struct.conf_st* @app_load_config_internal(i8* noundef %infile, i32 noundef 0) #6
  %cmp = icmp eq %struct.conf_st* %call, null
  br i1 %cmp, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call, i8* noundef %section, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0)) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @strcmp(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #8
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i64 0, i64 0)) #6
  br label %end

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call, i8* noundef %section, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0)) #6
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call11 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i64 0, i64 0)) #6
  br label %end

if.end12:                                         ; preds = %if.end7
  %call13 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %call8, i64* noundef nonnull %len) #6
  %cmp14 = icmp ne i8* %call13, null
  %3 = load i64, i64* %len, align 8
  %cmp16.not = icmp eq i64 %3, %module_mac_len
  %or.cond78 = select i1 %cmp14, i1 %cmp16.not, i1 false
  br i1 %or.cond78, label %lor.lhs.false17, label %if.then20

lor.lhs.false17:                                  ; preds = %if.end12
  %call18 = call i32 @memcmp(i8* noundef %module_mac, i8* noundef nonnull %call13, i64 noundef %module_mac_len) #8
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17, %if.end12
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.68, i64 0, i64 0)) #6
  br label %end

if.end22:                                         ; preds = %lor.lhs.false17
  %cmp23 = icmp ne i8* %install_mac, null
  %cmp24 = icmp ne i64 %install_mac_len, 0
  %or.cond = and i1 %cmp23, %cmp24
  br i1 %or.cond, label %if.then25, label %end

if.then25:                                        ; preds = %if.end22
  %call26 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call, i8* noundef %section, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0)) #6
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.then25
  %call29 = call i32 @strcmp(i8* noundef nonnull %call26, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #8
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false28, %if.then25
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i64 0, i64 0)) #6
  br label %end

if.end33:                                         ; preds = %lor.lhs.false28
  %call34 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call, i8* noundef %section, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)) #6
  %cmp35 = icmp eq i8* %call34, null
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call37 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0)) #6
  br label %end

if.end38:                                         ; preds = %if.end33
  %call39 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %call34, i64* noundef nonnull %len) #6
  %cmp40 = icmp ne i8* %call39, null
  %7 = load i64, i64* %len, align 8
  %cmp42.not = icmp eq i64 %7, %install_mac_len
  %or.cond79 = select i1 %cmp40, i1 %cmp42.not, i1 false
  br i1 %or.cond79, label %lor.lhs.false43, label %if.then46

lor.lhs.false43:                                  ; preds = %if.end38
  %call44 = call i32 @memcmp(i8* noundef nonnull %install_mac, i8* noundef nonnull %call39, i64 noundef %install_mac_len) #8
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %end, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false43, %if.end38
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call47 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0)) #6
  br label %end

end:                                              ; preds = %if.end22, %lor.lhs.false43, %entry, %if.then46, %if.then36, %if.then31, %if.then20, %if.then10, %if.then5
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then5 ], [ 0, %if.then10 ], [ 0, %if.then20 ], [ 0, %if.then31 ], [ 0, %if.then36 ], [ 0, %if.then46 ], [ 1, %lor.lhs.false43 ], [ 1, %if.end22 ]
  %buf1.0 = phi i8* [ null, %entry ], [ null, %if.then5 ], [ null, %if.then10 ], [ %call13, %if.then20 ], [ %call13, %if.then31 ], [ %call13, %if.then36 ], [ %call13, %if.then46 ], [ %call13, %lor.lhs.false43 ], [ %call13, %if.end22 ]
  %buf2.1 = phi i8* [ null, %entry ], [ null, %if.then5 ], [ null, %if.then10 ], [ null, %if.then20 ], [ null, %if.then31 ], [ null, %if.then36 ], [ %call39, %if.then46 ], [ %call39, %lor.lhs.false43 ], [ null, %if.end22 ]
  call void @CRYPTO_free(i8* noundef %buf1.0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 noundef 286) #6
  call void @CRYPTO_free(i8* noundef %buf2.1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 noundef 287) #6
  call void @NCONF_free(%struct.conf_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.conf_st* @generate_config_and_load(i8* noundef %prov_name, i8* noundef %section, i8* noundef %module_mac, i64 noundef %module_mac_len, i32 noundef %conditional_errors, i32 noundef %security_checks) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @write_config_header(%struct.bio_st* noundef nonnull %call1, i8* noundef %prov_name, i8* noundef %section) #7
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call fastcc i32 @write_config_fips_section(%struct.bio_st* noundef nonnull %call1, i8* noundef %section, i8* noundef %module_mac, i64 noundef %module_mac_len, i32 noundef %conditional_errors, i32 noundef %security_checks, i8* noundef null, i64 noundef 0) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call %struct.conf_st* @app_load_config_bio(%struct.bio_st* noundef nonnull %call1, i8* noundef null) #6
  %cmp8 = icmp eq %struct.conf_st* %call7, null
  br i1 %cmp8, label %end, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @CONF_modules_load(%struct.conf_st* noundef nonnull %call7, i8* noundef null, i64 noundef 0) #6
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %end, label %cleanup.sink.split

end:                                              ; preds = %if.end10, %if.end6, %if.end, %lor.lhs.false
  %conf.0 = phi %struct.conf_st* [ null, %if.end6 ], [ %call7, %if.end10 ], [ null, %lor.lhs.false ], [ null, %if.end ]
  tail call void @NCONF_free(%struct.conf_st* noundef %conf.0) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %end
  %retval.0.ph = phi %struct.conf_st* [ null, %end ], [ %call7, %if.end10 ]
  %call16 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi %struct.conf_st* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret %struct.conf_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @load_fips_prov_and_run_self_test(i8* noundef %prov_name) unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %prov_name) #6
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %if.then, label %end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !7
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i64 0, i64 0)) #6
  br label %end

end:                                              ; preds = %entry, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  %call2 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %call) #6
  ret i32 %ret.0
}

declare dso_local %struct.bio_st* @dup_bio_out(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @write_config_fips_section(%struct.bio_st* noundef %out, i8* noundef %section, i8* noundef %module_mac, i64 noundef %module_mac_len, i32 noundef %conditional_errors, i32 noundef %security_checks, i8* noundef %install_mac, i64 noundef %install_mac_len) unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0), i8* noundef %section) #6
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.81, i64 0, i64 0)) #6
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)) #6
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %tobool.not = icmp eq i32 %conditional_errors, 0
  %cond = select i1 %tobool.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0), i8* noundef %cond) #6
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %tobool10.not = icmp eq i32 %security_checks, 0
  %cond11 = select i1 %tobool10.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0)
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i8* noundef %cond11) #6
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %call15 = tail call fastcc i32 @print_mac(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i8* noundef %module_mac, i64 noundef %module_mac_len) #7
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %cmp17 = icmp ne i8* %install_mac, null
  %cmp18 = icmp ne i64 %install_mac_len, 0
  %or.cond = and i1 %cmp17, %cmp18
  br i1 %or.cond, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end
  %call20 = tail call fastcc i32 @print_mac(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8* noundef nonnull %install_mac, i64 noundef %install_mac_len) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.then19
  %call23 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0)) #6
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %end, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false22, %if.end
  br label %end

end:                                              ; preds = %if.then19, %lor.lhs.false22, %entry, %lor.lhs.false, %lor.lhs.false3, %lor.lhs.false6, %lor.lhs.false9, %lor.lhs.false14, %if.end27
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false3 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false22 ], [ 1, %if.end27 ], [ 0, %if.then19 ], [ 0, %lor.lhs.false14 ]
  ret i32 %ret.0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_config_and_unload(%struct.conf_st* noundef %conf) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.conf_st* %conf, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @NCONF_free(%struct.conf_st* noundef nonnull %conf) #6
  tail call void @CONF_modules_unload(i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @OSSL_LIB_CTX_load_config(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i64 @EVP_MAC_CTX_get_mac_size(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_internal(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @write_config_header(%struct.bio_st* noundef %out, i8* noundef %prov_name, i8* noundef %section) unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0)) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i64 0, i64 0)) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i64 0, i64 0)) #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0)) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true6
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i64 0, i64 0), i8* noundef %prov_name, i8* noundef %section) #6
  %tobool10 = icmp ne i32 %call9, 0
  %phi.cast = zext i1 %tobool10 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare dso_local %struct.conf_st* @app_load_config_bio(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @CONF_modules_load(%struct.conf_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print_mac(%struct.bio_st* noundef %bio, i8* noundef %label, i8* noundef %mac, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call i8* @OPENSSL_buf2hexstr(i8* noundef %mac, i64 noundef %len) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* noundef %label, i8* noundef nonnull %call) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i32 noundef 126) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @CONF_modules_unload(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"ossl_param_st", !8, i64 0, !14, i64 8, !8, i64 16, !4, i64 24, !4, i64 32}
!14 = !{!"int", !5, i64 0}
!15 = !{!13, !8, i64 16}
!16 = distinct !{!16, !10}
