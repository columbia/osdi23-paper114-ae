; ModuleID = 'apps/storeutl.c'
source_filename = "apps/storeutl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.anon = type { i32, i32 }
%struct.pw_cb_data = type { i8*, i8* }
%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.X509_name_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.v3_ext_method = type { i32, i32, %struct.ASN1_ITEM_st* ()*, i8* ()*, void (i8*)*, i8* (i8*, i8**, i64)*, i32 (i8*, i8**)*, i8* (%struct.v3_ext_method*, i8*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, %struct.stack_st_CONF_VALUE* (%struct.v3_ext_method*, i8*, %struct.stack_st_CONF_VALUE*)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, %struct.stack_st_CONF_VALUE*)*, i32 (%struct.v3_ext_method*, i8*, %struct.bio_st*, i32)*, i8* (%struct.v3_ext_method*, %struct.v3_ext_ctx*, i8*)*, i8* }
%struct.ASN1_ITEM_st = type opaque
%struct.stack_st_CONF_VALUE = type opaque
%struct.v3_ext_ctx = type { i32, %struct.x509_st*, %struct.x509_st*, %struct.X509_req_st*, %struct.X509_crl_st*, %struct.X509V3_CONF_METHOD_st*, i8*, %struct.evp_pkey_st* }
%struct.x509_st = type opaque
%struct.X509_req_st = type opaque
%struct.X509_crl_st = type opaque
%struct.X509V3_CONF_METHOD_st = type { i8* (i8*, i8*, i8*)*, %struct.stack_st_CONF_VALUE* (i8*, i8*)*, void (i8*, i8*)*, void (i8*, %struct.stack_st_CONF_VALUE*)* }
%struct.evp_pkey_st = type opaque
%struct.ossl_store_search_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_store_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_store_info_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [25 x i8] c"Usage: %s [options] uri\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Any supported digest\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Search options:\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"certs\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Search for certificates only\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Search for keys only\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"crls\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Search for CRLs only\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Search by subject\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"issuer\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Search by issuer and serial, issuer name\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Search by issuer and serial, serial number\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Search by public key fingerprint, given in hex\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Search by alias\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Recurse through names\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"Output file - default stdout\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Print a text form of the objects\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"No PEM output, just status\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"uri\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"URI of the store object\00", align 1
@storeutl_options = dso_local constant [28 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 15, i32 115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 3, i32 62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.47 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"%s: only one search type can be given.\0A\00", align 1
@storeutl_main.map = internal unnamed_addr constant [3 x %struct.anon] [%struct.anon { i32 8, i32 5 }, %struct.anon { i32 9, i32 4 }, %struct.anon { i32 10, i32 6 }], align 16
@.str.50 = private unnamed_addr constant [16 x i8] c"apps/storeutl.c\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"%s: criterion already given.\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"%s: subject already given.\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"%s: issuer already given.\0A\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"%s: serial number already given.\0A\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"%s: can't parse serial number argument.\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"%s: fingerprint already given.\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"%s: can't parse fingerprint argument.\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"%s: alias already given.\0A\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"%s: can't parse alias argument.\0A\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"%s: both -issuer and -serial must be given.\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"Couldn't open file or uri %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [65 x i8] c"%s: the store scheme doesn't support the given search criteria.\0A\00", align 1
@.str.64 = private unnamed_addr constant [73 x i8] c"ERROR: OSSL_STORE_load() returned NULL without eof or error indications\0A\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"       This is an error in the loader\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.66 = private unnamed_addr constant [12 x i8] c"%d: %s: %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"!!! Unknown code\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"Total found: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @storeutl_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %passin = alloca i8*, align 8
  %pw_cb_data = alloca %struct.pw_cb_data, align 8
  %digest = alloca %struct.evp_md_st*, align 8
  %tmplen = alloca i64, align 8
  %0 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* null, i8** %passin, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([28 x %struct.options_st], [28 x %struct.options_st]* @storeutl_options, i64 0, i64 0)) #5
  %1 = bitcast %struct.pw_cb_data* %pw_cb_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #4
  %2 = bitcast %struct.evp_md_st** %digest to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store %struct.evp_md_st* null, %struct.evp_md_st** %digest, align 8, !tbaa !3
  %call1 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #5
  %3 = bitcast i64* %tmplen to i8*
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %recursive.0 = phi i32 [ 0, %entry ], [ %recursive.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %expected.0 = phi i32 [ 0, %entry ], [ %expected.0.be, %while.cond.backedge ]
  %criterion.0 = phi i32 [ 0, %entry ], [ %criterion.0.be, %while.cond.backedge ]
  %subject.0 = phi %struct.X509_name_st* [ null, %entry ], [ %subject.0.be, %while.cond.backedge ]
  %issuer.0 = phi %struct.X509_name_st* [ null, %entry ], [ %issuer.0.be, %while.cond.backedge ]
  %serial.0 = phi %struct.asn1_string_st* [ null, %entry ], [ %serial.0.be, %while.cond.backedge ]
  %fingerprint.0 = phi i8* [ null, %entry ], [ %fingerprint.0.be, %while.cond.backedge ]
  %fingerprintlen.0 = phi i64 [ 0, %entry ], [ %fingerprintlen.0.be, %while.cond.backedge ]
  %alias.0 = phi i8* [ null, %entry ], [ %alias.0.be, %while.cond.backedge ]
  %digestname.0 = phi i8* [ null, %entry ], [ %digestname.0.be, %while.cond.backedge ]
  %call2 = call i32 @opt_next() #5
  switch i32 %call2, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb110
    i32 -1, label %opthelp
    i32 1, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb10
    i32 7, label %sw.bb11
    i32 8, label %sw.bb12
    i32 9, label %sw.bb12
    i32 10, label %sw.bb12
    i32 11, label %sw.bb21
    i32 12, label %sw.bb35
    i32 13, label %sw.bb51
    i32 14, label %sw.bb70
    i32 15, label %sw.bb89
    i32 2, label %sw.bb104
    i32 16, label %sw.bb107
    i32 1603, label %sw.bb110
    i32 1602, label %sw.bb110
  ]

opthelp:                                          ; preds = %while.cond, %if.then120, %while.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

sw.bb4:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([28 x %struct.options_st], [28 x %struct.options_st]* @storeutl_options, i64 0, i64 0)) #5
  br label %cleanup169

sw.bb5:                                           ; preds = %while.cond
  %call6 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond, %while.cond, %while.cond
  %cmp13.not = icmp eq i32 %expected.0, 0
  br i1 %cmp13.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %sw.bb12
  %switch.selectcmp = icmp eq i32 %call2, 9
  %switch.select = select i1 %switch.selectcmp, i64 1, i64 2
  %switch.selectcmp1108 = icmp eq i32 %call2, 8
  %switch.select1109 = select i1 %switch.selectcmp1108, i64 0, i64 %switch.select
  %type = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @storeutl_main.map, i64 0, i64 %switch.select1109, i32 1
  %5 = load i32, i32* %type, align 4, !tbaa !7
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.body.preheader, %cleanup.thread, %while.cond, %sw.bb110, %if.end97, %if.end63, %if.end45, %if.end29, %sw.bb107, %sw.bb104, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb7, %sw.bb5
  %noout.0.be = phi i32 [ %noout.0, %sw.bb110 ], [ %noout.0, %sw.bb107 ], [ %noout.0, %sw.bb104 ], [ %noout.0, %if.end97 ], [ %noout.0, %if.end63 ], [ %noout.0, %if.end45 ], [ %noout.0, %if.end29 ], [ %noout.0, %sw.bb11 ], [ %noout.0, %sw.bb10 ], [ 1, %sw.bb9 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb5 ], [ %noout.0, %while.cond ], [ %noout.0, %for.body.preheader ], [ %noout.0, %cleanup.thread ]
  %text.0.be = phi i32 [ %text.0, %sw.bb110 ], [ %text.0, %sw.bb107 ], [ %text.0, %sw.bb104 ], [ %text.0, %if.end97 ], [ %text.0, %if.end63 ], [ %text.0, %if.end45 ], [ %text.0, %if.end29 ], [ %text.0, %sw.bb11 ], [ 1, %sw.bb10 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb5 ], [ %text.0, %while.cond ], [ %text.0, %for.body.preheader ], [ %text.0, %cleanup.thread ]
  %recursive.0.be = phi i32 [ %recursive.0, %sw.bb110 ], [ %recursive.0, %sw.bb107 ], [ %recursive.0, %sw.bb104 ], [ %recursive.0, %if.end97 ], [ %recursive.0, %if.end63 ], [ %recursive.0, %if.end45 ], [ %recursive.0, %if.end29 ], [ 1, %sw.bb11 ], [ %recursive.0, %sw.bb10 ], [ %recursive.0, %sw.bb9 ], [ %recursive.0, %sw.bb7 ], [ %recursive.0, %sw.bb5 ], [ %recursive.0, %while.cond ], [ %recursive.0, %for.body.preheader ], [ %recursive.0, %cleanup.thread ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb110 ], [ %outfile.0, %sw.bb107 ], [ %outfile.0, %sw.bb104 ], [ %outfile.0, %if.end97 ], [ %outfile.0, %if.end63 ], [ %outfile.0, %if.end45 ], [ %outfile.0, %if.end29 ], [ %outfile.0, %sw.bb11 ], [ %outfile.0, %sw.bb10 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %outfile.0, %while.cond ], [ %outfile.0, %for.body.preheader ], [ %outfile.0, %cleanup.thread ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb110 ], [ %passinarg.0, %sw.bb107 ], [ %passinarg.0, %sw.bb104 ], [ %passinarg.0, %if.end97 ], [ %passinarg.0, %if.end63 ], [ %passinarg.0, %if.end45 ], [ %passinarg.0, %if.end29 ], [ %passinarg.0, %sw.bb11 ], [ %passinarg.0, %sw.bb10 ], [ %passinarg.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %passinarg.0, %sw.bb5 ], [ %passinarg.0, %while.cond ], [ %passinarg.0, %for.body.preheader ], [ %passinarg.0, %cleanup.thread ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb110 ], [ %e.0, %sw.bb107 ], [ %call106, %sw.bb104 ], [ %e.0, %if.end97 ], [ %e.0, %if.end63 ], [ %e.0, %if.end45 ], [ %e.0, %if.end29 ], [ %e.0, %sw.bb11 ], [ %e.0, %sw.bb10 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb5 ], [ %e.0, %while.cond ], [ %e.0, %for.body.preheader ], [ %e.0, %cleanup.thread ]
  %expected.0.be = phi i32 [ %expected.0, %sw.bb110 ], [ %expected.0, %sw.bb107 ], [ %expected.0, %sw.bb104 ], [ %expected.0, %if.end97 ], [ %expected.0, %if.end63 ], [ %expected.0, %if.end45 ], [ %expected.0, %if.end29 ], [ %expected.0, %sw.bb11 ], [ %expected.0, %sw.bb10 ], [ %expected.0, %sw.bb9 ], [ %expected.0, %sw.bb7 ], [ %expected.0, %sw.bb5 ], [ %expected.0, %while.cond ], [ %5, %for.body.preheader ], [ %expected.0, %cleanup.thread ]
  %criterion.0.be = phi i32 [ %criterion.0, %sw.bb110 ], [ %criterion.0, %sw.bb107 ], [ %criterion.0, %sw.bb104 ], [ 4, %if.end97 ], [ 2, %if.end63 ], [ 2, %if.end45 ], [ 1, %if.end29 ], [ %criterion.0, %sw.bb11 ], [ %criterion.0, %sw.bb10 ], [ %criterion.0, %sw.bb9 ], [ %criterion.0, %sw.bb7 ], [ %criterion.0, %sw.bb5 ], [ %criterion.0, %while.cond ], [ %criterion.0, %for.body.preheader ], [ 3, %cleanup.thread ]
  %subject.0.be = phi %struct.X509_name_st* [ %subject.0, %sw.bb110 ], [ %subject.0, %sw.bb107 ], [ %subject.0, %sw.bb104 ], [ %subject.0, %if.end97 ], [ %subject.0, %if.end63 ], [ %subject.0, %if.end45 ], [ %call31, %if.end29 ], [ %subject.0, %sw.bb11 ], [ %subject.0, %sw.bb10 ], [ %subject.0, %sw.bb9 ], [ %subject.0, %sw.bb7 ], [ %subject.0, %sw.bb5 ], [ %subject.0, %while.cond ], [ %subject.0, %for.body.preheader ], [ %subject.0, %cleanup.thread ]
  %issuer.0.be = phi %struct.X509_name_st* [ %issuer.0, %sw.bb110 ], [ %issuer.0, %sw.bb107 ], [ %issuer.0, %sw.bb104 ], [ %issuer.0, %if.end97 ], [ %issuer.0, %if.end63 ], [ %call47, %if.end45 ], [ %issuer.0, %if.end29 ], [ %issuer.0, %sw.bb11 ], [ %issuer.0, %sw.bb10 ], [ %issuer.0, %sw.bb9 ], [ %issuer.0, %sw.bb7 ], [ %issuer.0, %sw.bb5 ], [ %issuer.0, %while.cond ], [ %issuer.0, %for.body.preheader ], [ %issuer.0, %cleanup.thread ]
  %serial.0.be = phi %struct.asn1_string_st* [ %serial.0, %sw.bb110 ], [ %serial.0, %sw.bb107 ], [ %serial.0, %sw.bb104 ], [ %serial.0, %if.end97 ], [ %call65, %if.end63 ], [ %serial.0, %if.end45 ], [ %serial.0, %if.end29 ], [ %serial.0, %sw.bb11 ], [ %serial.0, %sw.bb10 ], [ %serial.0, %sw.bb9 ], [ %serial.0, %sw.bb7 ], [ %serial.0, %sw.bb5 ], [ %serial.0, %while.cond ], [ %serial.0, %for.body.preheader ], [ %serial.0, %cleanup.thread ]
  %fingerprint.0.be = phi i8* [ %fingerprint.0, %sw.bb110 ], [ %fingerprint.0, %sw.bb107 ], [ %fingerprint.0, %sw.bb104 ], [ %fingerprint.0, %if.end97 ], [ %fingerprint.0, %if.end63 ], [ %fingerprint.0, %if.end45 ], [ %fingerprint.0, %if.end29 ], [ %fingerprint.0, %sw.bb11 ], [ %fingerprint.0, %sw.bb10 ], [ %fingerprint.0, %sw.bb9 ], [ %fingerprint.0, %sw.bb7 ], [ %fingerprint.0, %sw.bb5 ], [ %fingerprint.0, %while.cond ], [ %fingerprint.0, %for.body.preheader ], [ %call84, %cleanup.thread ]
  %fingerprintlen.0.be = phi i64 [ %fingerprintlen.0, %sw.bb110 ], [ %fingerprintlen.0, %sw.bb107 ], [ %fingerprintlen.0, %sw.bb104 ], [ %fingerprintlen.0, %if.end97 ], [ %fingerprintlen.0, %if.end63 ], [ %fingerprintlen.0, %if.end45 ], [ %fingerprintlen.0, %if.end29 ], [ %fingerprintlen.0, %sw.bb11 ], [ %fingerprintlen.0, %sw.bb10 ], [ %fingerprintlen.0, %sw.bb9 ], [ %fingerprintlen.0, %sw.bb7 ], [ %fingerprintlen.0, %sw.bb5 ], [ %fingerprintlen.0, %while.cond ], [ %fingerprintlen.0, %for.body.preheader ], [ %16, %cleanup.thread ]
  %alias.0.be = phi i8* [ %alias.0, %sw.bb110 ], [ %alias.0, %sw.bb107 ], [ %alias.0, %sw.bb104 ], [ %call99, %if.end97 ], [ %alias.0, %if.end63 ], [ %alias.0, %if.end45 ], [ %alias.0, %if.end29 ], [ %alias.0, %sw.bb11 ], [ %alias.0, %sw.bb10 ], [ %alias.0, %sw.bb9 ], [ %alias.0, %sw.bb7 ], [ %alias.0, %sw.bb5 ], [ %alias.0, %while.cond ], [ %alias.0, %for.body.preheader ], [ %alias.0, %cleanup.thread ]
  %digestname.0.be = phi i8* [ %digestname.0, %sw.bb110 ], [ %call108, %sw.bb107 ], [ %digestname.0, %sw.bb104 ], [ %digestname.0, %if.end97 ], [ %digestname.0, %if.end63 ], [ %digestname.0, %if.end45 ], [ %digestname.0, %if.end29 ], [ %digestname.0, %sw.bb11 ], [ %digestname.0, %sw.bb10 ], [ %digestname.0, %sw.bb9 ], [ %digestname.0, %sw.bb7 ], [ %digestname.0, %sw.bb5 ], [ %digestname.0, %while.cond ], [ %digestname.0, %for.body.preheader ], [ %digestname.0, %cleanup.thread ]
  br label %while.cond, !llvm.loop !10

if.then:                                          ; preds = %sw.bb12
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

sw.bb21:                                          ; preds = %while.cond
  %cmp22.not = icmp eq i32 %criterion.0, 0
  br i1 %cmp22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %sw.bb21
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end25:                                         ; preds = %sw.bb21
  %cmp26.not = icmp eq %struct.X509_name_st* %subject.0, null
  br i1 %cmp26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end25
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end29:                                         ; preds = %if.end25
  %call30 = call i8* @opt_arg() #5
  %call31 = call %struct.X509_name_st* @parse_name(i8* noundef %call30, i32 noundef 4096, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0)) #5
  %cmp32 = icmp eq %struct.X509_name_st* %call31, null
  br i1 %cmp32, label %cleanup169, label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  %cmp36.not = icmp eq i32 %criterion.0, 0
  br i1 %cmp36.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %sw.bb35
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end41:                                         ; preds = %sw.bb35
  %cmp38.not = icmp eq %struct.X509_name_st* %issuer.0, null
  br i1 %cmp38.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end41
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call44 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end45:                                         ; preds = %if.end41
  %call46 = call i8* @opt_arg() #5
  %call47 = call %struct.X509_name_st* @parse_name(i8* noundef %call46, i32 noundef 4096, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #5
  %cmp48 = icmp eq %struct.X509_name_st* %call47, null
  br i1 %cmp48, label %cleanup169, label %while.cond.backedge

sw.bb51:                                          ; preds = %while.cond
  %cmp52.not = icmp eq i32 %criterion.0, 0
  br i1 %cmp52.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %sw.bb51
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call58 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end59:                                         ; preds = %sw.bb51
  %cmp56.not = icmp eq %struct.asn1_string_st* %serial.0, null
  br i1 %cmp56.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end59
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call62 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end63:                                         ; preds = %if.end59
  %call64 = call i8* @opt_arg() #5
  %call65 = call %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef null, i8* noundef %call64) #5
  %cmp66 = icmp eq %struct.asn1_string_st* %call65, null
  br i1 %cmp66, label %if.then67, label %while.cond.backedge

if.then67:                                        ; preds = %if.end63
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call68 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

sw.bb70:                                          ; preds = %while.cond
  %cmp71.not = icmp eq i32 %criterion.0, 0
  br i1 %cmp71.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %sw.bb70
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call77 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end78:                                         ; preds = %sw.bb70
  %cmp75.not = icmp eq i8* %fingerprint.0, null
  br i1 %cmp75.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end78
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call81 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end82:                                         ; preds = %if.end78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store i64 0, i64* %tmplen, align 8, !tbaa !12
  %call83 = call i8* @opt_arg() #5
  %call84 = call i8* @OPENSSL_hexstr2buf(i8* noundef %call83, i64* noundef nonnull %tmplen) #5
  %cmp85 = icmp eq i8* %call84, null
  br i1 %cmp85, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end82
  %16 = load i64, i64* %tmplen, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end82
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call87 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0), i8* noundef %call) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  br label %cleanup169

sw.bb89:                                          ; preds = %while.cond
  %cmp90.not = icmp eq i32 %criterion.0, 0
  br i1 %cmp90.not, label %if.end93, label %if.then91

if.then91:                                        ; preds = %sw.bb89
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call92 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end93:                                         ; preds = %sw.bb89
  %cmp94.not = icmp eq i8* %alias.0, null
  br i1 %cmp94.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.end93
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call96 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.58, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end97:                                         ; preds = %if.end93
  %call98 = call i8* @opt_arg() #5
  %call99 = call i8* @CRYPTO_strdup(i8* noundef %call98, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i32 noundef 241) #5
  %cmp100 = icmp eq i8* %call99, null
  br i1 %cmp100, label %if.then101, label %while.cond.backedge

if.then101:                                       ; preds = %if.end97
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call102 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

sw.bb104:                                         ; preds = %while.cond
  %call105 = call i8* @opt_arg() #5
  %call106 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call105, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb107:                                         ; preds = %while.cond
  %call108 = call i8* @opt_unknown() #5
  br label %while.cond.backedge

sw.bb110:                                         ; preds = %while.cond, %while.cond, %while.cond
  %call111 = call i32 @opt_provider(i32 noundef %call2) #5
  %tobool.not = icmp eq i32 %call111, 0
  br i1 %tobool.not, label %cleanup169, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call114 = call i32 @opt_num_rest() #5
  %call115 = call i8** @opt_rest() #5
  %cmp116.not = icmp eq i32 %call114, 1
  br i1 %cmp116.not, label %if.end118, label %opthelp

if.end118:                                        ; preds = %while.end
  %cmp119.not = icmp eq i8* %digestname.0, null
  br i1 %cmp119.not, label %if.end125, label %if.then120

if.then120:                                       ; preds = %if.end118
  %call121 = call i32 @opt_md(i8* noundef nonnull %digestname.0, %struct.evp_md_st** noundef nonnull %digest) #5
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %opthelp, label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end118
  switch i32 %criterion.0, label %if.end155 [
    i32 4, label %sw.bb149
    i32 1, label %sw.bb128
    i32 2, label %sw.bb133
    i32 3, label %sw.bb144
  ]

sw.bb128:                                         ; preds = %if.end125
  %call129 = call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_name(%struct.X509_name_st* noundef %subject.0) #5
  %cmp130 = icmp eq %struct.ossl_store_search_st* %call129, null
  br i1 %cmp130, label %if.then131, label %if.end155

if.then131:                                       ; preds = %sw.bb128
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %21) #5
  br label %cleanup169

sw.bb133:                                         ; preds = %if.end125
  %cmp134 = icmp eq %struct.X509_name_st* %issuer.0, null
  %cmp136 = icmp eq %struct.asn1_string_st* %serial.0, null
  %or.cond195 = select i1 %cmp134, i1 true, i1 %cmp136
  br i1 %or.cond195, label %if.then137, label %if.end139

if.then137:                                       ; preds = %sw.bb133
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call138 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup169

if.end139:                                        ; preds = %sw.bb133
  %call140 = call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_issuer_serial(%struct.X509_name_st* noundef nonnull %issuer.0, %struct.asn1_string_st* noundef nonnull %serial.0) #5
  %cmp141 = icmp eq %struct.ossl_store_search_st* %call140, null
  br i1 %cmp141, label %if.then142, label %if.end155

if.then142:                                       ; preds = %if.end139
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %23) #5
  br label %cleanup169

sw.bb144:                                         ; preds = %if.end125
  %24 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !3
  %call145 = call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_key_fingerprint(%struct.evp_md_st* noundef %24, i8* noundef %fingerprint.0, i64 noundef %fingerprintlen.0) #5
  %cmp146 = icmp eq %struct.ossl_store_search_st* %call145, null
  br i1 %cmp146, label %if.then147, label %if.end155

if.then147:                                       ; preds = %sw.bb144
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %25) #5
  br label %cleanup169

sw.bb149:                                         ; preds = %if.end125
  %call150 = call %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_alias(i8* noundef %alias.0) #5
  %cmp151 = icmp eq %struct.ossl_store_search_st* %call150, null
  br i1 %cmp151, label %if.then152, label %if.end155

if.then152:                                       ; preds = %sw.bb149
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %26) #5
  br label %cleanup169

if.end155:                                        ; preds = %if.end125, %sw.bb128, %if.end139, %sw.bb144, %sw.bb149
  %search.0 = phi %struct.ossl_store_search_st* [ %call150, %sw.bb149 ], [ %call145, %sw.bb144 ], [ %call140, %if.end139 ], [ %call129, %sw.bb128 ], [ null, %if.end125 ]
  %call156 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #5
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then158, label %if.end160

if.then158:                                       ; preds = %if.end155
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call159 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %cleanup169

if.end160:                                        ; preds = %if.end155
  %28 = load i8*, i8** %passin, align 8, !tbaa !3
  %password = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %pw_cb_data, i64 0, i32 0
  store i8* %28, i8** %password, align 8, !tbaa !14
  %29 = load i8*, i8** %call115, align 8, !tbaa !3
  %prompt_info = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %pw_cb_data, i64 0, i32 1
  store i8* %29, i8** %prompt_info, align 8, !tbaa !16
  %call162 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef 32769) #5
  %cmp163 = icmp eq %struct.bio_st* %call162, null
  br i1 %cmp163, label %cleanup169, label %if.end165

if.end165:                                        ; preds = %if.end160
  %30 = load i8*, i8** %call115, align 8, !tbaa !3
  %call167 = call %struct.ui_method_st* @get_ui_method() #5
  %call168 = call fastcc i32 @process(i8* noundef %30, %struct.ui_method_st* noundef %call167, %struct.pw_cb_data* noundef nonnull %pw_cb_data, i32 noundef %expected.0, i32 noundef %criterion.0, %struct.ossl_store_search_st* noundef %search.0, i32 noundef %text.0, i32 noundef %noout.0, i32 noundef %recursive.0, i32 noundef 0, %struct.bio_st* noundef nonnull %call162, i8* noundef %call, %struct.ossl_lib_ctx_st* noundef %call1) #6
  br label %cleanup169

cleanup169:                                       ; preds = %if.end29, %if.end45, %sw.bb110, %opthelp, %sw.bb4, %if.then, %if.then23, %if.then27, %if.then39, %if.then43, %if.then57, %if.then61, %if.then67, %if.then76, %if.then80, %if.then91, %if.then95, %if.then101, %if.then131, %if.then137, %if.then142, %if.then147, %if.then152, %if.then158, %if.end165, %if.end160, %cleanup
  %ret.0 = phi i32 [ 1, %if.then91 ], [ 1, %if.then95 ], [ 1, %if.then101 ], [ 1, %if.then76 ], [ 1, %if.then80 ], [ 1, %cleanup ], [ 1, %if.then57 ], [ 1, %if.then61 ], [ 1, %if.then67 ], [ 1, %if.then39 ], [ 1, %if.then43 ], [ 1, %if.then23 ], [ 1, %if.then27 ], [ 1, %if.then ], [ 0, %sw.bb4 ], [ 1, %opthelp ], [ 1, %if.end160 ], [ %call168, %if.end165 ], [ 1, %if.then158 ], [ 1, %if.then152 ], [ 1, %if.then147 ], [ 1, %if.then137 ], [ 1, %if.then142 ], [ 1, %if.then131 ], [ 1, %sw.bb110 ], [ 1, %if.end45 ], [ 1, %if.end29 ]
  %out.0 = phi %struct.bio_st* [ null, %if.then91 ], [ null, %if.then95 ], [ null, %if.then101 ], [ null, %if.then76 ], [ null, %if.then80 ], [ null, %cleanup ], [ null, %if.then57 ], [ null, %if.then61 ], [ null, %if.then67 ], [ null, %if.then39 ], [ null, %if.then43 ], [ null, %if.then23 ], [ null, %if.then27 ], [ null, %if.then ], [ null, %sw.bb4 ], [ null, %opthelp ], [ null, %if.end160 ], [ %call162, %if.end165 ], [ null, %if.then158 ], [ null, %if.then152 ], [ null, %if.then147 ], [ null, %if.then137 ], [ null, %if.then142 ], [ null, %if.then131 ], [ null, %sw.bb110 ], [ null, %if.end45 ], [ null, %if.end29 ]
  %subject.2 = phi %struct.X509_name_st* [ %subject.0, %if.then91 ], [ %subject.0, %if.then95 ], [ %subject.0, %if.then101 ], [ %subject.0, %if.then76 ], [ %subject.0, %if.then80 ], [ %subject.0, %cleanup ], [ %subject.0, %if.then57 ], [ %subject.0, %if.then61 ], [ %subject.0, %if.then67 ], [ %subject.0, %if.then39 ], [ %subject.0, %if.then43 ], [ %subject.0, %if.then23 ], [ %subject.0, %if.then27 ], [ %subject.0, %if.then ], [ %subject.0, %sw.bb4 ], [ %subject.0, %opthelp ], [ %subject.0, %if.end160 ], [ %subject.0, %if.end165 ], [ %subject.0, %if.then158 ], [ %subject.0, %if.then152 ], [ %subject.0, %if.then147 ], [ %subject.0, %if.then137 ], [ %subject.0, %if.then142 ], [ %subject.0, %if.then131 ], [ null, %if.end29 ], [ %subject.0, %if.end45 ], [ %subject.0, %sw.bb110 ]
  %issuer.2 = phi %struct.X509_name_st* [ %issuer.0, %if.then91 ], [ %issuer.0, %if.then95 ], [ %issuer.0, %if.then101 ], [ %issuer.0, %if.then76 ], [ %issuer.0, %if.then80 ], [ %issuer.0, %cleanup ], [ %issuer.0, %if.then57 ], [ %issuer.0, %if.then61 ], [ %issuer.0, %if.then67 ], [ %issuer.0, %if.then39 ], [ %issuer.0, %if.then43 ], [ %issuer.0, %if.then23 ], [ %issuer.0, %if.then27 ], [ %issuer.0, %if.then ], [ %issuer.0, %sw.bb4 ], [ %issuer.0, %opthelp ], [ %issuer.0, %if.end160 ], [ %issuer.0, %if.end165 ], [ %issuer.0, %if.then158 ], [ %issuer.0, %if.then152 ], [ %issuer.0, %if.then147 ], [ %issuer.0, %if.then137 ], [ %issuer.0, %if.then142 ], [ %issuer.0, %if.then131 ], [ %issuer.0, %if.end29 ], [ null, %if.end45 ], [ %issuer.0, %sw.bb110 ]
  %serial.2 = phi %struct.asn1_string_st* [ %serial.0, %if.then91 ], [ %serial.0, %if.then95 ], [ %serial.0, %if.then101 ], [ %serial.0, %if.then76 ], [ %serial.0, %if.then80 ], [ %serial.0, %cleanup ], [ %serial.0, %if.then57 ], [ %serial.0, %if.then61 ], [ null, %if.then67 ], [ %serial.0, %if.then39 ], [ %serial.0, %if.then43 ], [ %serial.0, %if.then23 ], [ %serial.0, %if.then27 ], [ %serial.0, %if.then ], [ %serial.0, %sw.bb4 ], [ %serial.0, %opthelp ], [ %serial.0, %if.end160 ], [ %serial.0, %if.end165 ], [ %serial.0, %if.then158 ], [ %serial.0, %if.then152 ], [ %serial.0, %if.then147 ], [ %serial.0, %if.then137 ], [ %serial.0, %if.then142 ], [ %serial.0, %if.then131 ], [ %serial.0, %sw.bb110 ], [ %serial.0, %if.end45 ], [ %serial.0, %if.end29 ]
  %fingerprint.2 = phi i8* [ %fingerprint.0, %if.then91 ], [ %fingerprint.0, %if.then95 ], [ %fingerprint.0, %if.then101 ], [ %fingerprint.0, %if.then76 ], [ %fingerprint.0, %if.then80 ], [ null, %cleanup ], [ %fingerprint.0, %if.then57 ], [ %fingerprint.0, %if.then61 ], [ %fingerprint.0, %if.then67 ], [ %fingerprint.0, %if.then39 ], [ %fingerprint.0, %if.then43 ], [ %fingerprint.0, %if.then23 ], [ %fingerprint.0, %if.then27 ], [ %fingerprint.0, %if.then ], [ %fingerprint.0, %sw.bb4 ], [ %fingerprint.0, %opthelp ], [ %fingerprint.0, %if.end160 ], [ %fingerprint.0, %if.end165 ], [ %fingerprint.0, %if.then158 ], [ %fingerprint.0, %if.then152 ], [ %fingerprint.0, %if.then147 ], [ %fingerprint.0, %if.then137 ], [ %fingerprint.0, %if.then142 ], [ %fingerprint.0, %if.then131 ], [ %fingerprint.0, %sw.bb110 ], [ %fingerprint.0, %if.end45 ], [ %fingerprint.0, %if.end29 ]
  %alias.2 = phi i8* [ %alias.0, %if.then91 ], [ %alias.0, %if.then95 ], [ null, %if.then101 ], [ %alias.0, %if.then76 ], [ %alias.0, %if.then80 ], [ %alias.0, %cleanup ], [ %alias.0, %if.then57 ], [ %alias.0, %if.then61 ], [ %alias.0, %if.then67 ], [ %alias.0, %if.then39 ], [ %alias.0, %if.then43 ], [ %alias.0, %if.then23 ], [ %alias.0, %if.then27 ], [ %alias.0, %if.then ], [ %alias.0, %sw.bb4 ], [ %alias.0, %opthelp ], [ %alias.0, %if.end160 ], [ %alias.0, %if.end165 ], [ %alias.0, %if.then158 ], [ %alias.0, %if.then152 ], [ %alias.0, %if.then147 ], [ %alias.0, %if.then137 ], [ %alias.0, %if.then142 ], [ %alias.0, %if.then131 ], [ %alias.0, %sw.bb110 ], [ %alias.0, %if.end45 ], [ %alias.0, %if.end29 ]
  %search.1 = phi %struct.ossl_store_search_st* [ null, %if.then91 ], [ null, %if.then95 ], [ null, %if.then101 ], [ null, %if.then76 ], [ null, %if.then80 ], [ null, %cleanup ], [ null, %if.then57 ], [ null, %if.then61 ], [ null, %if.then67 ], [ null, %if.then39 ], [ null, %if.then43 ], [ null, %if.then23 ], [ null, %if.then27 ], [ null, %if.then ], [ null, %sw.bb4 ], [ null, %opthelp ], [ %search.0, %if.end160 ], [ %search.0, %if.end165 ], [ %search.0, %if.then158 ], [ null, %if.then152 ], [ null, %if.then147 ], [ null, %if.then137 ], [ null, %if.then142 ], [ null, %if.then131 ], [ null, %sw.bb110 ], [ null, %if.end45 ], [ null, %if.end29 ]
  %31 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %31) #5
  call void @CRYPTO_free(i8* noundef %fingerprint.2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i32 noundef 327) #5
  call void @CRYPTO_free(i8* noundef %alias.2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i32 noundef 328) #5
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %serial.2) #5
  call void @X509_NAME_free(%struct.X509_name_st* noundef %subject.2) #5
  call void @X509_NAME_free(%struct.X509_name_st* noundef %issuer.2) #5
  call void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef %search.1) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  %32 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %32, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i32 noundef 334) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.X509_name_st* @parse_name(i8* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @s2i_ASN1_INTEGER(%struct.v3_ext_method* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_name(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_issuer_serial(%struct.X509_name_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_key_fingerprint(%struct.evp_md_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_store_search_st* @OSSL_STORE_SEARCH_by_alias(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @process(i8* noundef %uri, %struct.ui_method_st* noundef %uimeth, %struct.pw_cb_data* noundef %uidata, i32 noundef %expected, i32 noundef %criterion, %struct.ossl_store_search_st* noundef %search, i32 noundef %text, i32 noundef %noout, i32 noundef %recursive, i32 noundef %indent, %struct.bio_st* noundef %out, i8* noundef %prog, %struct.ossl_lib_ctx_st* noundef %libctx) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_get0_propq() #5
  %0 = bitcast %struct.pw_cb_data* %uidata to i8*
  %call1 = tail call %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef %uri, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call, %struct.ui_method_st* noundef %uimeth, i8* noundef %0, %struct.ossl_param_st* noundef null, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef null, i8* noundef null) #5
  %cmp = icmp eq %struct.ossl_store_ctx_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0), i8* noundef %uri) #5
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %2) #5
  br label %cleanup135

if.end:                                           ; preds = %entry
  %cmp3.not = icmp eq i32 %expected, 0
  br i1 %cmp3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @OSSL_STORE_expect(%struct.ossl_store_ctx_st* noundef nonnull %call1, i32 noundef %expected) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #5
  br label %end2

if.end8:                                          ; preds = %if.then4, %if.end
  %cmp9.not = icmp eq i32 %criterion, 0
  br i1 %cmp9.not, label %if.end20, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @OSSL_STORE_supports_search(%struct.ossl_store_ctx_st* noundef nonnull %call1, i32 noundef %criterion) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.63, i64 0, i64 0), i8* noundef %prog) #5
  br label %end2

if.end15:                                         ; preds = %if.then10
  %call16 = tail call i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef nonnull %call1, %struct.ossl_store_search_st* noundef %search) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %5) #5
  br label %end2

if.end20:                                         ; preds = %if.end15, %if.end8
  %tobool103.not = icmp eq i32 %text, 0
  %tobool108.not = icmp eq i32 %noout, 0
  %tobool63.not = icmp eq i32 %recursive, 0
  %add = add nsw i32 %indent, 2
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %sw.epilog, %if.end20
  %items.0.ph = phi i32 [ %inc126, %sw.epilog ], [ 0, %if.end20 ]
  %ret.0.ph = phi i32 [ %ret.1, %sw.epilog ], [ 0, %if.end20 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end37
  %ret.0 = phi i32 [ %spec.select221, %if.end37 ], [ %ret.0.ph, %for.cond.outer ]
  %call21 = tail call %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef nonnull %call1) #5
  %cmp22 = icmp eq %struct.ossl_store_info_st* %call21, null
  br i1 %cmp22, label %if.then31, label %if.end50

if.then31:                                        ; preds = %for.cond
  %call32 = tail call i32 @OSSL_STORE_error(%struct.ossl_store_ctx_st* noundef nonnull %call1) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end42, label %if.then34

if.then34:                                        ; preds = %if.then31
  br i1 %tobool63.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then34
  tail call void @ERR_clear_error() #5
  br label %if.end37

if.else:                                          ; preds = %if.then34
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %6) #5
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  %call38 = tail call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %call1) #5
  %tobool39.not = icmp eq i32 %call38, 0
  %inc = zext i1 %tobool39.not to i32
  %spec.select221 = add nsw i32 %ret.0, %inc
  br i1 %tobool39.not, label %for.cond, label %for.end

if.end42:                                         ; preds = %if.then31
  %call43 = tail call i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef nonnull %call1) #5
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %for.end

if.end46:                                         ; preds = %if.end42
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call47 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.64, i64 0, i64 0)) #5
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call48 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i64 0, i64 0)) #5
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %9) #5
  %inc49 = add nsw i32 %ret.0, 1
  br label %for.end

if.end50:                                         ; preds = %for.cond
  %call23 = tail call i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call27 = tail call i8* @OSSL_STORE_INFO_type_string(i32 noundef %call23) #5
  %cmp51 = icmp eq i32 %call23, 1
  br i1 %cmp51, label %if.then52, label %if.end62

if.then52:                                        ; preds = %if.end50
  %call53 = tail call i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call54 = tail call i8* @OSSL_STORE_INFO_get0_NAME_description(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  tail call void (i32, %struct.bio_st*, i8*, ...) @indent_printf(i32 noundef %indent, %struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 noundef %items.0.ph, i8* noundef %call27, i8* noundef %call53) #6
  %cmp56.not = icmp eq i8* %call54, null
  br i1 %cmp56.not, label %sw.bb, label %if.then57

if.then57:                                        ; preds = %if.then52
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  tail call void (i32, %struct.bio_st*, i8*, ...) @indent_printf(i32 noundef %indent, %struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* noundef nonnull %call54) #6
  br label %sw.bb

if.end62:                                         ; preds = %if.end50
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  tail call void (i32, %struct.bio_st*, i8*, ...) @indent_printf(i32 noundef %indent, %struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i32 noundef %items.0.ph, i8* noundef %call27) #6
  switch i32 %call23, label %sw.default [
    i32 6, label %sw.bb113
    i32 2, label %sw.bb69
    i32 3, label %sw.bb80
    i32 4, label %sw.bb91
    i32 5, label %sw.bb102
  ]

sw.bb:                                            ; preds = %if.then57, %if.then52
  br i1 %tobool63.not, label %sw.epilog, label %if.then64

if.then64:                                        ; preds = %sw.bb
  %call65 = tail call i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call66 = tail call fastcc i32 @process(i8* noundef %call65, %struct.ui_method_st* noundef %uimeth, %struct.pw_cb_data* noundef %uidata, i32 noundef %expected, i32 noundef %criterion, %struct.ossl_store_search_st* noundef %search, i32 noundef %text, i32 noundef %noout, i32 noundef 1, i32 noundef %add, %struct.bio_st* noundef %out, i8* noundef %prog, %struct.ossl_lib_ctx_st* noundef %libctx) #6
  %add67 = add nsw i32 %call66, %ret.0
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end62
  br i1 %tobool103.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %sw.bb69
  %call72 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PARAMS(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call73 = tail call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %call72, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %sw.bb69
  br i1 %tobool108.not, label %if.then76, label %sw.epilog

if.then76:                                        ; preds = %if.end74
  %call77 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PARAMS(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call78 = tail call i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %call77) #5
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end62
  br i1 %tobool103.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %sw.bb80
  %call83 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PUBKEY(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call84 = tail call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %call83, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %sw.bb80
  br i1 %tobool108.not, label %if.then87, label %sw.epilog

if.then87:                                        ; preds = %if.end85
  %call88 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PUBKEY(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call89 = tail call i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %call88) #5
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end62
  br i1 %tobool103.not, label %if.end96, label %if.then93

if.then93:                                        ; preds = %sw.bb91
  %call94 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PKEY(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call95 = tail call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %call94, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %sw.bb91
  br i1 %tobool108.not, label %if.then98, label %sw.epilog

if.then98:                                        ; preds = %if.end96
  %call99 = tail call %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PKEY(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call100 = tail call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %call99, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end62
  br i1 %tobool103.not, label %if.end107, label %if.then104

if.then104:                                       ; preds = %sw.bb102
  %call105 = tail call %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call106 = tail call i32 @X509_print(%struct.bio_st* noundef %out, %struct.x509_st* noundef %call105) #5
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %sw.bb102
  br i1 %tobool108.not, label %if.then109, label %sw.epilog

if.then109:                                       ; preds = %if.end107
  %call110 = tail call %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call111 = tail call i32 @PEM_write_bio_X509(%struct.bio_st* noundef %out, %struct.x509_st* noundef %call110) #5
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end62
  br i1 %tobool103.not, label %if.end118, label %if.then115

if.then115:                                       ; preds = %sw.bb113
  %call116 = tail call %struct.X509_crl_st* @OSSL_STORE_INFO_get0_CRL(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call117 = tail call i32 @X509_CRL_print(%struct.bio_st* noundef %out, %struct.X509_crl_st* noundef %call116) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %sw.bb113
  br i1 %tobool108.not, label %if.then120, label %sw.epilog

if.then120:                                       ; preds = %if.end118
  %call121 = tail call %struct.X509_crl_st* @OSSL_STORE_INFO_get0_CRL(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  %call122 = tail call i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef %out, %struct.X509_crl_st* noundef %call121) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end62
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call124 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #5
  %inc125 = add nsw i32 %ret.0, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end118, %if.then120, %if.end107, %if.then109, %if.end96, %if.then98, %if.end85, %if.then87, %if.end74, %if.then76, %sw.bb, %if.then64, %sw.default
  %ret.1 = phi i32 [ %inc125, %sw.default ], [ %ret.0, %if.end118 ], [ %ret.0, %if.then120 ], [ %ret.0, %if.end107 ], [ %ret.0, %if.then109 ], [ %ret.0, %if.end96 ], [ %ret.0, %if.then98 ], [ %ret.0, %if.end85 ], [ %ret.0, %if.then87 ], [ %ret.0, %if.end74 ], [ %ret.0, %if.then76 ], [ %add67, %if.then64 ], [ %ret.0, %sw.bb ]
  %inc126 = add nuw nsw i32 %items.0.ph, 1
  tail call void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef nonnull %call21) #5
  br label %for.cond.outer

for.end:                                          ; preds = %if.end37, %if.end42, %if.end46
  %ret.2232 = phi i32 [ %ret.0, %if.end42 ], [ %inc49, %if.end46 ], [ %spec.select221, %if.end37 ]
  tail call void (i32, %struct.bio_st*, i8*, ...) @indent_printf(i32 noundef %indent, %struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 noundef %items.0.ph) #6
  br label %end2

end2:                                             ; preds = %for.end, %if.then18, %if.then13, %if.then6
  %ret.3 = phi i32 [ %ret.2232, %for.end ], [ 1, %if.then18 ], [ 1, %if.then13 ], [ 1, %if.then6 ]
  %call130 = tail call i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef nonnull %call1) #5
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then132, label %cleanup135

if.then132:                                       ; preds = %end2
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %14) #5
  %inc133 = add nsw i32 %ret.3, 1
  br label %cleanup135

cleanup135:                                       ; preds = %end2, %if.then132, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.3, %end2 ], [ %inc133, %if.then132 ]
  ret i32 %retval.0
}

declare dso_local %struct.ui_method_st* @get_ui_method() local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_NAME_free(%struct.X509_name_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_STORE_SEARCH_free(%struct.ossl_store_search_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_store_ctx_st* @OSSL_STORE_open_ex(i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ui_method_st* noundef, i8* noundef, %struct.ossl_param_st* noundef, %struct.ossl_store_info_st* (%struct.ossl_store_info_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_expect(%struct.ossl_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_supports_search(%struct.ossl_store_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_find(%struct.ossl_store_ctx_st* noundef, %struct.ossl_store_search_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_store_info_st* @OSSL_STORE_load(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_INFO_get_type(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OSSL_STORE_INFO_type_string(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_error(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_eof(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OSSL_STORE_INFO_get0_NAME(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OSSL_STORE_INFO_get0_NAME_description(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @indent_printf(i32 noundef %indent, %struct.bio_st* noundef %bio, i8* noundef %format, ...) unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %call = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %bio, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)) #5
  %call3 = call i32 @BIO_vprintf(%struct.bio_st* noundef %bio, i8* noundef %format, %struct.__va_list_tag* noundef nonnull %arraydecay) #5
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #4
  ret void
}

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PARAMS(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PUBKEY(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @OSSL_STORE_INFO_get0_PKEY(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_print(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @OSSL_STORE_INFO_get0_CERT(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509(%struct.bio_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local i32 @X509_CRL_print(%struct.bio_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_crl_st* @OSSL_STORE_INFO_get0_CRL(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_X509_CRL(%struct.bio_st* noundef, %struct.X509_crl_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_STORE_INFO_free(%struct.ossl_store_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_close(%struct.ossl_store_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

declare dso_local i32 @BIO_vprintf(%struct.bio_st* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 4}
!8 = !{!"", !5, i64 0, !9, i64 4}
!9 = !{!"int", !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!15, !4, i64 0}
!15 = !{!"pw_cb_data", !4, i64 0, !4, i64 8}
!16 = !{!15, !4, i64 8}
