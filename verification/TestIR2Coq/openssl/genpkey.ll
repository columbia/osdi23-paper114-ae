; ModuleID = 'apps/genpkey.c'
source_filename = "apps/genpkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.engine_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"paramfile\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Parameters file\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"The public key algorithm\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Do not output status while generating keys\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pkeyopt\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Set the public key algorithm option as opt:value\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Load a configuration file (this may load modules)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"output format (DER or PEM)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"genparam\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Generate parameters, not key\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Print the in text\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Cipher to use to encrypt the key\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"Order of options may be important!  See the documentation.\0A\00", align 1
@genpkey_options = dso_local constant [21 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 6, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 8, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 13, i32 60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 4, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.36 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@quiet = internal unnamed_addr global i1 false, align 4
@.str.37 = private unnamed_addr constant [33 x i8] c"%s: Error setting %s parameter:\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Error writing key\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"Error printing key\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"apps/genpkey.c\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Algorithm already set!\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Error initializing %s context\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Parameters already set!\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Can't open parameter file %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"Error reading parameter file %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Error initializing context\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @genpkey_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %pass = alloca i8*, align 8
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %outformat = alloca i32, align 4
  %0 = bitcast %struct.evp_pkey_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %1 = bitcast i8** %pass to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store i8* null, i8** %pass, align 8, !tbaa !3
  %2 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %3 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #5
  %call1 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([21 x %struct.options_st], [21 x %struct.options_st]* @genpkey_options, i64 0, i64 0)) #5
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %4 = bitcast %struct.stack_st* %call2 to %struct.stack_st_OPENSSL_STRING*
  %cmp = icmp eq %struct.stack_st* %call2, null
  br i1 %cmp, label %end, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond.backedge
  %outfile.0 = phi i8* [ %outfile.0.be, %while.cond.backedge ], [ null, %entry ]
  %passarg.0 = phi i8* [ %passarg.0.be, %while.cond.backedge ], [ null, %entry ]
  %e.0 = phi %struct.engine_st* [ %e.0.be, %while.cond.backedge ], [ null, %entry ]
  %ciphername.0 = phi i8* [ %ciphername.0.be, %while.cond.backedge ], [ null, %entry ]
  %paramfile.0 = phi i8* [ %paramfile.0.be, %while.cond.backedge ], [ null, %entry ]
  %algname.0 = phi i8* [ %algname.0.be, %while.cond.backedge ], [ null, %entry ]
  %conf.0 = phi %struct.conf_st* [ %conf.0.be, %while.cond.backedge ], [ null, %entry ]
  %text.0 = phi i32 [ %text.0.be, %while.cond.backedge ], [ 0, %entry ]
  %do_param.0 = phi i32 [ %do_param.0.be, %while.cond.backedge ], [ 0, %entry ]
  %call3 = call i32 @opt_next() #5
  switch i32 %call3, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb46
    i32 -1, label %opthelp
    i32 1, label %sw.bb6
    i32 3, label %sw.bb7
    i32 4, label %sw.bb12
    i32 5, label %sw.bb14
    i32 2, label %sw.bb16
    i32 6, label %sw.bb19
    i32 7, label %sw.bb24
    i32 8, label %sw.bb26
    i32 12, label %sw.bb34
    i32 9, label %sw.bb35
    i32 10, label %sw.bb36
    i32 11, label %sw.bb37
    i32 13, label %sw.bb39
    i32 1603, label %sw.bb46
    i32 1602, label %sw.bb46
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb46, %sw.bb39, %sw.bb26, %sw.bb7, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb24, %if.end22, %sw.bb16, %sw.bb14, %sw.bb12
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb46 ], [ %outfile.0, %sw.bb39 ], [ %outfile.0, %sw.bb37 ], [ %outfile.0, %sw.bb36 ], [ %outfile.0, %sw.bb35 ], [ %outfile.0, %sw.bb34 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %if.end22 ], [ %outfile.0, %sw.bb16 ], [ %outfile.0, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %while.cond ]
  %passarg.0.be = phi i8* [ %passarg.0, %sw.bb46 ], [ %passarg.0, %sw.bb39 ], [ %passarg.0, %sw.bb37 ], [ %passarg.0, %sw.bb36 ], [ %passarg.0, %sw.bb35 ], [ %passarg.0, %sw.bb34 ], [ %passarg.0, %sw.bb26 ], [ %passarg.0, %sw.bb24 ], [ %passarg.0, %if.end22 ], [ %passarg.0, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %passarg.0, %sw.bb12 ], [ %passarg.0, %sw.bb7 ], [ %passarg.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb46 ], [ %e.0, %sw.bb39 ], [ %e.0, %sw.bb37 ], [ %e.0, %sw.bb36 ], [ %e.0, %sw.bb35 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb24 ], [ %e.0, %if.end22 ], [ %call18, %sw.bb16 ], [ %e.0, %sw.bb14 ], [ %e.0, %sw.bb12 ], [ %e.0, %sw.bb7 ], [ %e.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb46 ], [ %ciphername.0, %sw.bb39 ], [ %call38, %sw.bb37 ], [ %ciphername.0, %sw.bb36 ], [ %ciphername.0, %sw.bb35 ], [ %ciphername.0, %sw.bb34 ], [ %ciphername.0, %sw.bb26 ], [ %ciphername.0, %sw.bb24 ], [ %ciphername.0, %if.end22 ], [ %ciphername.0, %sw.bb16 ], [ %ciphername.0, %sw.bb14 ], [ %ciphername.0, %sw.bb12 ], [ %ciphername.0, %sw.bb7 ], [ %ciphername.0, %while.cond ]
  %paramfile.0.be = phi i8* [ %paramfile.0, %sw.bb46 ], [ %paramfile.0, %sw.bb39 ], [ %paramfile.0, %sw.bb37 ], [ %paramfile.0, %sw.bb36 ], [ %paramfile.0, %sw.bb35 ], [ %paramfile.0, %sw.bb34 ], [ %paramfile.0, %sw.bb26 ], [ %paramfile.0, %sw.bb24 ], [ %call23, %if.end22 ], [ %paramfile.0, %sw.bb16 ], [ %paramfile.0, %sw.bb14 ], [ %paramfile.0, %sw.bb12 ], [ %paramfile.0, %sw.bb7 ], [ %paramfile.0, %while.cond ]
  %algname.0.be = phi i8* [ %algname.0, %sw.bb46 ], [ %algname.0, %sw.bb39 ], [ %algname.0, %sw.bb37 ], [ %algname.0, %sw.bb36 ], [ %algname.0, %sw.bb35 ], [ %algname.0, %sw.bb34 ], [ %algname.0, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %algname.0, %if.end22 ], [ %algname.0, %sw.bb16 ], [ %algname.0, %sw.bb14 ], [ %algname.0, %sw.bb12 ], [ %algname.0, %sw.bb7 ], [ %algname.0, %while.cond ]
  %conf.0.be = phi %struct.conf_st* [ %conf.0, %sw.bb46 ], [ %call41, %sw.bb39 ], [ %conf.0, %sw.bb37 ], [ %conf.0, %sw.bb36 ], [ %conf.0, %sw.bb35 ], [ %conf.0, %sw.bb34 ], [ %conf.0, %sw.bb26 ], [ %conf.0, %sw.bb24 ], [ %conf.0, %if.end22 ], [ %conf.0, %sw.bb16 ], [ %conf.0, %sw.bb14 ], [ %conf.0, %sw.bb12 ], [ %conf.0, %sw.bb7 ], [ %conf.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb46 ], [ %text.0, %sw.bb39 ], [ %text.0, %sw.bb37 ], [ 1, %sw.bb36 ], [ %text.0, %sw.bb35 ], [ %text.0, %sw.bb34 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb24 ], [ %text.0, %if.end22 ], [ %text.0, %sw.bb16 ], [ %text.0, %sw.bb14 ], [ %text.0, %sw.bb12 ], [ %text.0, %sw.bb7 ], [ %text.0, %while.cond ]
  %do_param.0.be = phi i32 [ %do_param.0, %sw.bb46 ], [ %do_param.0, %sw.bb39 ], [ %do_param.0, %sw.bb37 ], [ %do_param.0, %sw.bb36 ], [ 1, %sw.bb35 ], [ %do_param.0, %sw.bb34 ], [ %do_param.0, %sw.bb26 ], [ %do_param.0, %sw.bb24 ], [ 0, %if.end22 ], [ %do_param.0, %sw.bb16 ], [ %do_param.0, %sw.bb14 ], [ %do_param.0, %sw.bb12 ], [ %do_param.0, %sw.bb7 ], [ %do_param.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb19, %sw.bb7, %if.then85, %if.end70, %while.end
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call5 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i8* noundef %call1) #5
  br label %end

sw.bb6:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([21 x %struct.options_st], [21 x %struct.options_st]* @genpkey_options, i64 0, i64 0)) #5
  br label %end

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  %call9 = call i32 @opt_format(i8* noundef %call8, i64 noundef 2, i32* noundef nonnull %outformat) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  %call13 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  %call15 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %call17 = call i8* @opt_arg() #5
  %call18 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call17, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  %cmp20 = icmp eq i32 %do_param.0, 1
  br i1 %cmp20, label %opthelp, label %if.end22

if.end22:                                         ; preds = %sw.bb19
  %call23 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  %call25 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  %call27 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %4) #6
  %call28 = call i8* @opt_arg() #5
  %call30 = call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call27, i8* noundef %call28) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %end, label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  store i1 true, i1* @quiet, align 4
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb37:                                          ; preds = %while.cond
  %call38 = call i8* @opt_unknown() #5
  br label %while.cond.backedge

sw.bb39:                                          ; preds = %while.cond
  %call40 = call i8* @opt_arg() #5
  %call41 = call %struct.conf_st* @app_load_config_modules(i8* noundef %call40) #5
  %cmp42 = icmp eq %struct.conf_st* %call41, null
  br i1 %cmp42, label %end, label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call47 = call i32 @opt_provider(i32 noundef %call3) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call51 = call i32 @opt_num_rest() #5
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end54, label %opthelp

if.end54:                                         ; preds = %while.end
  %cmp55.not = icmp eq i8* %paramfile.0, null
  br i1 %cmp55.not, label %if.end62, label %if.then56

if.then56:                                        ; preds = %if.end54
  %call57 = call i8* @app_get0_propq() #5
  %call58 = call fastcc i32 @init_keygen_file(%struct.evp_pkey_ctx_st** noundef nonnull %ctx, i8* noundef nonnull %paramfile.0, %struct.engine_st* noundef %e.0, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call57) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %end, label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end54
  %cmp63.not = icmp eq i8* %algname.0, null
  br i1 %cmp63.not, label %if.end70, label %if.then64

if.then64:                                        ; preds = %if.end62
  %call65 = call i8* @app_get0_propq() #5
  %call66 = call i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef nonnull %ctx, i8* noundef nonnull %algname.0, %struct.engine_st* noundef %e.0, i32 noundef %do_param.0, %struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call65) #6
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %if.end70

if.end70:                                         ; preds = %if.then64, %if.end62
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %cmp71 = icmp eq %struct.evp_pkey_ctx_st* %6, null
  br i1 %cmp71, label %opthelp, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end70
  %call74 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %4) #6
  %call75242 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call74) #5
  %cmp76243 = icmp sgt i32 %call75242, 0
  br i1 %cmp76243, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %call75 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call74) #5
  %cmp76 = icmp slt i32 %inc, %call75
  br i1 %cmp76, label %for.body, label %for.end, !llvm.loop !11

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0244 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call78 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call74, i32 noundef %i.0244) #5
  %call79 = call i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef nonnull %6, i8* noundef %call78) #5
  %cmp80 = icmp slt i32 %call79, 1
  %inc = add nuw nsw i32 %i.0244, 1
  br i1 %cmp80, label %if.then81, label %for.cond

if.then81:                                        ; preds = %for.body
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call82 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0), i8* noundef %call1, i8* noundef %call78) #5
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %8) #5
  br label %end

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %cmp84.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp84.not, label %if.end91, label %if.then85

if.then85:                                        ; preds = %for.end
  %call86 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %cipher) #5
  %tobool87 = icmp eq i32 %call86, 0
  %cmp88 = icmp eq i32 %do_param.0, 1
  %or.cond = select i1 %tobool87, i1 true, i1 %cmp88
  br i1 %or.cond, label %opthelp, label %if.end91

if.end91:                                         ; preds = %if.then85, %for.end
  %tobool92.not = icmp eq i32 %do_param.0, 0
  %call93 = call i32 @app_passwd(i8* noundef %passarg.0, i8* noundef null, i8** noundef nonnull %pass, i8** noundef null) #5
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end91
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call96 = call i32 @BIO_puts(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0)) #5
  br label %end

if.end97:                                         ; preds = %if.end91
  %10 = xor i32 %do_param.0, 1
  %11 = load i32, i32* %outformat, align 4, !tbaa !7
  %call98 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %11, i32 noundef %10) #5
  %cmp99 = icmp eq %struct.bio_st* %call98, null
  br i1 %cmp99, label %end, label %if.end101

if.end101:                                        ; preds = %if.end97
  call void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef nonnull %6, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @genpkey_cb) #5
  %12 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef nonnull %6, i8* noundef %12) #5
  br i1 %tobool92.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %if.end101
  %call103 = call %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef nonnull %6, i8* noundef %algname.0) #5
  %call108 = call i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef nonnull %call98, %struct.evp_pkey_st* noundef %call103) #5
  br label %if.end120

if.else:                                          ; preds = %if.end101
  %call104 = call %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %6, i8* noundef %algname.0, i32 noundef 0, i32 noundef 0) #5
  %13 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %13, label %if.else116 [
    i32 32773, label %if.then110
    i32 4, label %if.then114
  ]

if.then110:                                       ; preds = %if.else
  %14 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %15 = load i8*, i8** %pass, align 8, !tbaa !3
  %call111 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call98, %struct.evp_pkey_st* noundef %call104, %struct.evp_cipher_st* noundef %14, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %15) #5
  br label %if.end120

if.then114:                                       ; preds = %if.else
  %call115 = call i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef nonnull %call98, %struct.evp_pkey_st* noundef %call104) #5
  br label %if.end120

if.else116:                                       ; preds = %if.else
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call117 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0)) #5
  br label %end

if.end120:                                        ; preds = %if.then110, %if.then114, %if.then107
  %cond105203 = phi %struct.evp_pkey_st* [ %call103, %if.then107 ], [ %call104, %if.then110 ], [ %call104, %if.then114 ]
  %rv.0 = phi i32 [ %call108, %if.then107 ], [ %call111, %if.then110 ], [ %call115, %if.then114 ]
  %cmp121 = icmp slt i32 %rv.0, 1
  br i1 %cmp121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.end120
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call123 = call i32 @BIO_puts(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0)) #5
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end120
  %ret.0 = phi i32 [ 1, %if.then122 ], [ 0, %if.end120 ]
  %tobool125.not = icmp eq i32 %text.0, 0
  br i1 %tobool125.not, label %end, label %if.then126

if.then126:                                       ; preds = %if.end124
  br i1 %tobool92.not, label %if.else130, label %if.then128

if.then128:                                       ; preds = %if.then126
  %call129 = call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef nonnull %call98, %struct.evp_pkey_st* noundef %cond105203, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end132

if.else130:                                       ; preds = %if.then126
  %call131 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef nonnull %call98, %struct.evp_pkey_st* noundef %cond105203, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end132

if.end132:                                        ; preds = %if.else130, %if.then128
  %rv.1 = phi i32 [ %call129, %if.then128 ], [ %call131, %if.else130 ]
  %cmp133 = icmp slt i32 %rv.1, 1
  br i1 %cmp133, label %if.then134, label %end

if.then134:                                       ; preds = %if.end132
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call135 = call i32 @BIO_puts(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #5
  br label %end

end:                                              ; preds = %sw.bb46, %sw.bb39, %sw.bb26, %if.end124, %if.then134, %if.end132, %if.end97, %if.then64, %if.then56, %entry, %if.else116, %if.then95, %if.then81, %sw.bb6, %opthelp
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %if.then81 ], [ null, %if.end97 ], [ %cond105203, %if.then134 ], [ %cond105203, %if.end132 ], [ %cond105203, %if.end124 ], [ %call104, %if.else116 ], [ null, %if.then95 ], [ null, %if.then64 ], [ null, %if.then56 ], [ null, %sw.bb26 ], [ null, %sw.bb39 ], [ null, %sw.bb46 ]
  %e.2 = phi %struct.engine_st* [ null, %entry ], [ %e.0, %opthelp ], [ %e.0, %sw.bb6 ], [ %e.0, %if.then81 ], [ %e.0, %if.end97 ], [ %e.0, %if.then134 ], [ %e.0, %if.end132 ], [ %e.0, %if.end124 ], [ %e.0, %if.else116 ], [ %e.0, %if.then95 ], [ %e.0, %if.then64 ], [ %e.0, %if.then56 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb39 ], [ %e.0, %sw.bb46 ]
  %out.0 = phi %struct.bio_st* [ null, %entry ], [ null, %opthelp ], [ null, %sw.bb6 ], [ null, %if.then81 ], [ null, %if.end97 ], [ %call98, %if.then134 ], [ %call98, %if.end132 ], [ %call98, %if.end124 ], [ %call98, %if.else116 ], [ null, %if.then95 ], [ null, %if.then64 ], [ null, %if.then56 ], [ null, %sw.bb26 ], [ null, %sw.bb39 ], [ null, %sw.bb46 ]
  %conf.2 = phi %struct.conf_st* [ null, %entry ], [ %conf.0, %opthelp ], [ %conf.0, %sw.bb6 ], [ %conf.0, %if.then81 ], [ %conf.0, %if.end97 ], [ %conf.0, %if.then134 ], [ %conf.0, %if.end132 ], [ %conf.0, %if.end124 ], [ %conf.0, %if.else116 ], [ %conf.0, %if.then95 ], [ %conf.0, %if.then64 ], [ %conf.0, %if.then56 ], [ %conf.0, %sw.bb46 ], [ null, %sw.bb39 ], [ %conf.0, %sw.bb26 ]
  %ret.1 = phi i32 [ 1, %entry ], [ 1, %opthelp ], [ 0, %sw.bb6 ], [ 1, %if.then81 ], [ 1, %if.end97 ], [ 1, %if.then134 ], [ %ret.0, %if.end132 ], [ %ret.0, %if.end124 ], [ 1, %if.else116 ], [ 1, %if.then95 ], [ 1, %if.then64 ], [ 1, %if.then56 ], [ 1, %sw.bb26 ], [ 1, %sw.bb39 ], [ 1, %sw.bb46 ]
  %call138 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %4) #6
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call138) #5
  %cmp139.not = icmp eq i32 %ret.1, 0
  br i1 %cmp139.not, label %if.end141, label %if.then140

if.then140:                                       ; preds = %end
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %19) #5
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %end
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #5
  %20 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %20) #5
  %21 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %21) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  %call142 = call i32 @BIO_free(%struct.bio_st* noundef null) #5
  call void @release_engine(%struct.engine_st* noundef %e.2) #5
  %22 = load i8*, i8** %pass, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 noundef 229) #5
  call void @NCONF_free(%struct.conf_st* noundef %conf.2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_modules(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @init_keygen_file(%struct.evp_pkey_ctx_st** nocapture noundef %pctx, i8* noundef %file, %struct.engine_st* noundef %e, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !3
  %tobool.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %file, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #5
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i8* noundef %file) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.evp_pkey_st* @PEM_read_bio_Parameters_ex(%struct.bio_st* noundef nonnull %call1, %struct.evp_pkey_st** noundef null, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %call6 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #5
  %cmp7 = icmp eq %struct.evp_pkey_st* %call5, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call9 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0), i8* noundef %file) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %cmp11.not = icmp eq %struct.engine_st* %e, null
  br i1 %cmp11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call13 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %call5, %struct.engine_st* noundef nonnull %e) #5
  br label %if.end15

if.else:                                          ; preds = %if.end10
  %call14 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.evp_pkey_st* noundef nonnull %call5, i8* noundef %propq) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call13, %if.then12 ], [ %call14, %if.else ]
  %cmp16 = icmp eq %struct.evp_pkey_ctx_st* %ctx.0, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end15
  %call19 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.0) #5
  %cmp20 = icmp slt i32 %call19, 1
  br i1 %cmp20, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call5) #5
  store %struct.evp_pkey_ctx_st* %ctx.0, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !3
  br label %cleanup

err:                                              ; preds = %if.end18, %if.end15
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call23 = tail call i32 @BIO_puts(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0)) #5
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %5) #5
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end22, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then8 ], [ 0, %err ], [ 1, %if.end22 ]
  ret i32 %retval.0
}

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @init_gen_str(%struct.evp_pkey_ctx_st** nocapture noundef %pctx, i8* noundef %algname, %struct.engine_st* noundef %e, i32 noundef %do_param, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %0 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !3
  %tobool.not = icmp eq %struct.evp_pkey_ctx_st* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_legacy_pkey_id(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %algname, %struct.engine_st* noundef %e) #5
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef %call1, %struct.engine_st* noundef %e) #5
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %algname, i8* noundef %propq) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call3, %if.then2 ], [ %call4, %if.else ]
  %cmp6 = icmp eq %struct.evp_pkey_ctx_st* %ctx.0, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end5
  %tobool9.not = icmp eq i32 %do_param, 0
  br i1 %tobool9.not, label %if.else15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.0) #5
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %err, label %if.end20

if.else15:                                        ; preds = %if.end8
  %call16 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %ctx.0) #5
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %err, label %if.end20

if.end20:                                         ; preds = %if.else15, %if.then10
  store %struct.evp_pkey_ctx_st* %ctx.0, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !3
  br label %cleanup

err:                                              ; preds = %if.else15, %if.then10, %if.end5
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i8* noundef %algname) #5
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #5
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end20, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %err ], [ 1, %if.end20 ]
  ret i32 %retval.0
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @pkey_ctrl_string(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @genpkey_cb(%struct.evp_pkey_ctx_st* noundef %ctx) #0 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #4
  store i8 42, i8* %c, align 1, !tbaa !12
  %call = tail call i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %0 = bitcast i8* %call to %struct.bio_st*
  %.b = load i1, i1* @quiet, align 4
  br i1 %.b, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #5
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  store i8 46, i8* %c, align 1, !tbaa !12
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store i8 43, i8* %c, align 1, !tbaa !12
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store i8 10, i8* %c, align 1, !tbaa !12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2, %sw.bb
  %call4 = call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef nonnull %c, i32 noundef 1) #5
  %call5 = call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #4
  ret i32 1
}

declare dso_local void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @get_legacy_pkey_id(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_Parameters_ex(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!5, !5, i64 0}
