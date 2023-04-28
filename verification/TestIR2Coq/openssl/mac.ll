; ModuleID = 'apps/mac.c'
source_filename = "apps/mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_mac_st = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [options] mac_name\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"macopt\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"MAC algorithm parameters in n:v form\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Cipher\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"See 'PARAMETER NAMES' in the EVP_MAC_ docs\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Input file to MAC (default is stdin)\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Output to filename rather than stdout\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"Output in binary format (default is hexadecimal)\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.21 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"mac_name\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"MAC algorithm\00", align 1
@mac_options = dso_local constant [19 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [11 x i8] c"I/O buffer\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.30 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"apps/mac.c\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Invalid MAC name %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"MAC parameter error\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"EVP_MAC_Init failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Read Error in '%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"EVP_MAC_update failed\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"EVP_MAC_final failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"output len is too large\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"algorithm name\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mac_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %opts = alloca %struct.stack_st_OPENSSL_STRING*, align 8
  %len = alloca i64, align 8
  %0 = bitcast %struct.stack_st_OPENSSL_STRING** %opts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([19 x %struct.options_st], [19 x %struct.options_st]* @mac_options, i64 0, i64 0)) #6
  %call1 = tail call i8* @app_malloc(i64 noundef 8192, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0)) #6
  %2 = bitcast %struct.stack_st_OPENSSL_STRING** %opts to %struct.stack_st**
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %out_bin.0 = phi i32 [ 0, %entry ], [ %out_bin.0.be, %while.cond.backedge ]
  %digest.0 = phi i8* [ null, %entry ], [ %digest.0.be, %while.cond.backedge ]
  %cipher.0 = phi i8* [ null, %entry ], [ %cipher.0.be, %while.cond.backedge ]
  %call2 = tail call i32 @opt_next() #6
  switch i32 %call2, label %opthelp [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 2, label %sw.bb9
    i32 6, label %sw.bb19
    i32 7, label %sw.bb25
    i32 1600, label %while.cond.backedge
    i32 1604, label %while.cond.backedge
    i32 1601, label %sw.bb32
    i32 1602, label %sw.bb32
    i32 1603, label %sw.bb32
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %sw.bb32, %sw.bb25, %sw.bb19, %lor.lhs.false, %sw.bb7, %sw.bb5, %sw.bb4
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %lor.lhs.false ], [ %call8, %sw.bb7 ], [ %outfile.0, %sw.bb5 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ], [ %outfile.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %lor.lhs.false ], [ %infile.0, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ], [ %infile.0, %while.cond ]
  %out_bin.0.be = phi i32 [ %out_bin.0, %sw.bb32 ], [ %out_bin.0, %sw.bb25 ], [ %out_bin.0, %sw.bb19 ], [ %out_bin.0, %lor.lhs.false ], [ %out_bin.0, %sw.bb7 ], [ %out_bin.0, %sw.bb5 ], [ 1, %sw.bb4 ], [ %out_bin.0, %while.cond ], [ %out_bin.0, %while.cond ]
  %digest.0.be = phi i8* [ %digest.0, %sw.bb32 ], [ %call27, %sw.bb25 ], [ %digest.0, %sw.bb19 ], [ %digest.0, %lor.lhs.false ], [ %digest.0, %sw.bb7 ], [ %digest.0, %sw.bb5 ], [ %digest.0, %sw.bb4 ], [ %digest.0, %while.cond ], [ %digest.0, %while.cond ]
  %cipher.0.be = phi i8* [ %cipher.0, %sw.bb32 ], [ %cipher.0, %sw.bb25 ], [ %call21, %sw.bb19 ], [ %cipher.0, %lor.lhs.false ], [ %cipher.0, %sw.bb7 ], [ %cipher.0, %sw.bb5 ], [ %cipher.0, %sw.bb4 ], [ %cipher.0, %while.cond ], [ %cipher.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb25, %sw.bb19, %if.end, %lor.lhs.false, %while.end, %if.then46
  %digest.1 = phi i8* [ %digest.0, %while.end ], [ %digest.0, %if.then46 ], [ %digest.0, %while.cond ], [ %digest.0, %lor.lhs.false ], [ %digest.0, %if.end ], [ %digest.0, %sw.bb19 ], [ null, %sw.bb25 ]
  %cipher.1 = phi i8* [ %cipher.0, %while.end ], [ %cipher.0, %if.then46 ], [ %cipher.0, %while.cond ], [ %cipher.0, %lor.lhs.false ], [ %cipher.0, %if.end ], [ null, %sw.bb19 ], [ %cipher.0, %sw.bb25 ]
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call) #6
  br label %if.then147

sw.bb:                                            ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([19 x %struct.options_st], [19 x %struct.options_st]* @mac_options, i64 0, i64 0)) #6
  br label %cleanup152

sw.bb4:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  %call6 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %4 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %cmp10 = icmp eq %struct.stack_st_OPENSSL_STRING* %4, null
  br i1 %cmp10, label %if.end, label %lor.lhs.false

if.end:                                           ; preds = %sw.bb9
  %call11 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  store %struct.stack_st* %call11, %struct.stack_st** %2, align 8, !tbaa !3
  %5 = bitcast %struct.stack_st* %call11 to %struct.stack_st_OPENSSL_STRING*
  %cmp12 = icmp eq %struct.stack_st* %call11, null
  br i1 %cmp12, label %opthelp, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb9, %if.end
  %6 = phi %struct.stack_st_OPENSSL_STRING* [ %5, %if.end ], [ %4, %sw.bb9 ]
  %call13 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %6) #7
  %call14 = tail call i8* @opt_arg() #6
  %call16 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call13, i8* noundef %call14) #6
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  tail call void @CRYPTO_free(i8* noundef %cipher.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 121) #6
  %call20 = tail call i8* @opt_arg() #6
  %call21 = call fastcc i8* @alloc_mac_algorithm_name(%struct.stack_st_OPENSSL_STRING** noundef nonnull %opts, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call20) #7
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %opthelp, label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  tail call void @CRYPTO_free(i8* noundef %digest.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 127) #6
  %call26 = tail call i8* @opt_arg() #6
  %call27 = call fastcc i8* @alloc_mac_algorithm_name(%struct.stack_st_OPENSSL_STRING** noundef nonnull %opts, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call26) #7
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %opthelp, label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call33 = tail call i32 @opt_provider(i32 noundef %call2) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then147, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call37 = tail call i32 @opt_num_rest() #6
  %call38 = tail call i8** @opt_rest() #6
  %cmp39.not = icmp eq i32 %call37, 1
  br i1 %cmp39.not, label %if.end41, label %opthelp

if.end41:                                         ; preds = %while.end
  %call42 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #6
  %7 = load i8*, i8** %call38, align 8, !tbaa !3
  %call43 = tail call i8* @app_get0_propq() #6
  %call44 = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %call42, i8* noundef %7, i8* noundef %call43) #6
  %cmp45 = icmp eq %struct.evp_mac_st* %call44, null
  br i1 %cmp45, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end41
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %9 = load i8*, i8** %call38, align 8, !tbaa !3
  %call48 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* noundef %9) #6
  br label %opthelp

if.end49:                                         ; preds = %if.end41
  %call50 = tail call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef nonnull %call44) #6
  %cmp51 = icmp eq %struct.evp_mac_ctx_st* %call50, null
  br i1 %cmp51, label %if.then147, label %if.end53

if.end53:                                         ; preds = %if.end49
  %10 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %cmp54.not = icmp eq %struct.stack_st_OPENSSL_STRING* %10, null
  br i1 %cmp54.not, label %if.end69, label %if.then55

if.then55:                                        ; preds = %if.end53
  %call56 = tail call %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef nonnull %call44) #6
  %call57 = tail call %struct.ossl_param_st* @app_params_new_from_opts(%struct.stack_st_OPENSSL_STRING* noundef nonnull %10, %struct.ossl_param_st* noundef %call56) #6
  %cmp58 = icmp eq %struct.ossl_param_st* %call57, null
  br i1 %cmp58, label %if.then147, label %if.end60

if.end60:                                         ; preds = %if.then55
  %call61 = tail call i32 @EVP_MAC_CTX_set_params(%struct.evp_mac_ctx_st* noundef nonnull %call50, %struct.ossl_param_st* noundef nonnull %call57) #6
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %select.unfold, label %if.end65

if.end65:                                         ; preds = %if.end60
  tail call void @app_params_free(%struct.ossl_param_st* noundef nonnull %call57) #6
  br label %if.end69

select.unfold:                                    ; preds = %if.end60
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call64 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0)) #6
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %12) #6
  tail call void @app_params_free(%struct.ossl_param_st* noundef nonnull %call57) #6
  br label %if.then147

if.end69:                                         ; preds = %if.end65, %if.end53
  %cmp70 = icmp eq i8* %infile.0, null
  br i1 %cmp70, label %if.then74, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end69
  %call72 = tail call i32 @strcmp(i8* noundef nonnull %infile.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #8
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %lor.lhs.false71, %if.end69
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %lor.lhs.false71
  %inform.0 = phi i32 [ 32769, %if.then74 ], [ 2, %lor.lhs.false71 ]
  %call76 = tail call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef %inform.0) #6
  %cmp77 = icmp eq %struct.bio_st* %call76, null
  br i1 %cmp77, label %if.then147, label %if.end79

if.end79:                                         ; preds = %if.end75
  %tobool80.not = icmp eq i32 %out_bin.0, 0
  %cond = select i1 %tobool80.not, i32 32769, i32 2
  %call81 = tail call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %cond) #6
  %cmp82 = icmp eq %struct.bio_st* %call81, null
  br i1 %cmp82, label %if.then147, label %if.end84

if.end84:                                         ; preds = %if.end79
  %call85 = tail call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef nonnull %call50, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef null) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %while.cond90

if.then87:                                        ; preds = %if.end84
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call88 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0)) #6
  br label %if.then147

while.cond90:                                     ; preds = %if.end84, %if.end106
  %call91 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call76, i32 noundef 10, i64 noundef 0, i8* noundef null) #6
  %conv = trunc i64 %call91 to i32
  %tobool92.not = icmp eq i32 %conv, 0
  br i1 %tobool92.not, label %lor.rhs, label %while.body96

lor.rhs:                                          ; preds = %while.cond90
  %call93 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call76, i32 noundef 2, i64 noundef 0, i8* noundef null) #6
  %conv94 = trunc i64 %call93 to i32
  %tobool95.not = icmp eq i32 %conv94, 0
  br i1 %tobool95.not, label %while.body96, label %while.end113

while.body96:                                     ; preds = %while.cond90, %lor.rhs
  %call97 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call76, i8* noundef %call1, i32 noundef 8192) #6
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %while.body96
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call101 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* noundef %infile.0) #6
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %15) #6
  br label %if.then147

if.end102:                                        ; preds = %while.body96
  %cmp103 = icmp eq i32 %call97, 0
  br i1 %cmp103, label %while.end113, label %if.end106

if.end106:                                        ; preds = %if.end102
  %conv107255 = zext i32 %call97 to i64
  %call108 = tail call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call50, i8* noundef %call1, i64 noundef %conv107255) #6
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then110, label %while.cond90, !llvm.loop !9

if.then110:                                       ; preds = %if.end106
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call111 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0)) #6
  br label %if.then147

while.end113:                                     ; preds = %if.end102, %lor.rhs
  %call114 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call50, i8* noundef null, i64* noundef nonnull %len, i64 noundef 0) #6
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.then116, label %if.end118

if.then116:                                       ; preds = %while.end113
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call117 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %if.then147

if.end118:                                        ; preds = %while.end113
  %18 = load i64, i64* %len, align 8, !tbaa !10
  %cmp119 = icmp ugt i64 %18, 8192
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end118
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call122 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0)) #6
  br label %if.then147

if.end123:                                        ; preds = %if.end118
  %call124 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call50, i8* noundef %call1, i64* noundef nonnull %len, i64 noundef 8192) #6
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.end123
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call127 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %if.then147

if.end128:                                        ; preds = %if.end123
  %21 = load i64, i64* %len, align 8, !tbaa !10
  %conv133275 = trunc i64 %21 to i32
  br i1 %tobool80.not, label %for.cond.preheader, label %if.then130

for.cond.preheader:                               ; preds = %if.end128
  %cmp134276 = icmp sgt i32 %conv133275, 0
  br i1 %cmp134276, label %for.body, label %for.end

if.then130:                                       ; preds = %if.end128
  %call132 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call81, i8* noundef %call1, i32 noundef %conv133275) #6
  br label %cleanup152

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx136 = getelementptr inbounds i8, i8* %call1, i64 %indvars.iv
  %22 = load i8, i8* %arrayidx136, align 1, !tbaa !12
  %conv137 = zext i8 %22 to i32
  %call138 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call81, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv137) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %23 = load i64, i64* %len, align 8, !tbaa !10
  %sext = shl i64 %23, 32
  %24 = ashr exact i64 %sext, 32
  %cmp134 = icmp slt i64 %indvars.iv.next, %24
  br i1 %cmp134, label %for.body, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp139 = icmp eq i8* %outfile.0, null
  br i1 %cmp139, label %if.then141, label %cleanup152

if.then141:                                       ; preds = %for.end
  %call142 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call81, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %cleanup152

if.then147:                                       ; preds = %sw.bb32, %select.unfold, %if.then55, %if.end79, %if.end75, %if.end49, %if.then126, %if.then121, %if.then116, %if.then110, %if.then100, %if.then87, %opthelp
  %mac.1.ph = phi %struct.evp_mac_st* [ null, %opthelp ], [ %call44, %if.then87 ], [ %call44, %if.then100 ], [ %call44, %if.then110 ], [ %call44, %if.then116 ], [ %call44, %if.then121 ], [ %call44, %if.then126 ], [ %call44, %if.end49 ], [ %call44, %if.end75 ], [ %call44, %if.end79 ], [ %call44, %if.then55 ], [ %call44, %select.unfold ], [ null, %sw.bb32 ]
  %ctx.0.ph = phi %struct.evp_mac_ctx_st* [ null, %opthelp ], [ %call50, %if.then87 ], [ %call50, %if.then100 ], [ %call50, %if.then110 ], [ %call50, %if.then116 ], [ %call50, %if.then121 ], [ %call50, %if.then126 ], [ null, %if.end49 ], [ %call50, %if.end75 ], [ %call50, %if.end79 ], [ %call50, %if.then55 ], [ %call50, %select.unfold ], [ null, %sw.bb32 ]
  %in.0.ph = phi %struct.bio_st* [ null, %opthelp ], [ %call76, %if.then87 ], [ %call76, %if.then100 ], [ %call76, %if.then110 ], [ %call76, %if.then116 ], [ %call76, %if.then121 ], [ %call76, %if.then126 ], [ null, %if.end49 ], [ null, %if.end75 ], [ %call76, %if.end79 ], [ null, %if.then55 ], [ null, %select.unfold ], [ null, %sw.bb32 ]
  %out.0.ph = phi %struct.bio_st* [ null, %opthelp ], [ %call81, %if.then87 ], [ %call81, %if.then100 ], [ %call81, %if.then110 ], [ %call81, %if.then116 ], [ %call81, %if.then121 ], [ %call81, %if.then126 ], [ null, %if.end49 ], [ null, %if.end75 ], [ null, %if.end79 ], [ null, %if.then55 ], [ null, %select.unfold ], [ null, %sw.bb32 ]
  %digest.3.ph = phi i8* [ %digest.1, %opthelp ], [ %digest.0, %if.then87 ], [ %digest.0, %if.then100 ], [ %digest.0, %if.then110 ], [ %digest.0, %if.then116 ], [ %digest.0, %if.then121 ], [ %digest.0, %if.then126 ], [ %digest.0, %if.end49 ], [ %digest.0, %if.end75 ], [ %digest.0, %if.end79 ], [ %digest.0, %if.then55 ], [ %digest.0, %select.unfold ], [ %digest.0, %sw.bb32 ]
  %cipher.3.ph = phi i8* [ %cipher.1, %opthelp ], [ %cipher.0, %if.then87 ], [ %cipher.0, %if.then100 ], [ %cipher.0, %if.then110 ], [ %cipher.0, %if.then116 ], [ %cipher.0, %if.then121 ], [ %cipher.0, %if.then126 ], [ %cipher.0, %if.end49 ], [ %cipher.0, %if.end75 ], [ %cipher.0, %if.end79 ], [ %cipher.0, %if.then55 ], [ %cipher.0, %select.unfold ], [ %cipher.0, %sw.bb32 ]
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %25) #6
  br label %cleanup152

cleanup152:                                       ; preds = %if.then147, %if.then130, %if.then141, %for.end, %sw.bb
  %cipher.3254 = phi i8* [ %cipher.3.ph, %if.then147 ], [ %cipher.0, %sw.bb ], [ %cipher.0, %for.end ], [ %cipher.0, %if.then141 ], [ %cipher.0, %if.then130 ]
  %digest.3252 = phi i8* [ %digest.3.ph, %if.then147 ], [ %digest.0, %sw.bb ], [ %digest.0, %for.end ], [ %digest.0, %if.then141 ], [ %digest.0, %if.then130 ]
  %out.0250 = phi %struct.bio_st* [ %out.0.ph, %if.then147 ], [ null, %sw.bb ], [ %call81, %for.end ], [ %call81, %if.then141 ], [ %call81, %if.then130 ]
  %in.0248 = phi %struct.bio_st* [ %in.0.ph, %if.then147 ], [ null, %sw.bb ], [ %call76, %for.end ], [ %call76, %if.then141 ], [ %call76, %if.then130 ]
  %ctx.0246 = phi %struct.evp_mac_ctx_st* [ %ctx.0.ph, %if.then147 ], [ null, %sw.bb ], [ %call50, %for.end ], [ %call50, %if.then141 ], [ %call50, %if.then130 ]
  %mac.1244 = phi %struct.evp_mac_st* [ %mac.1.ph, %if.then147 ], [ null, %sw.bb ], [ %call44, %for.end ], [ %call44, %if.then141 ], [ %call44, %if.then130 ]
  %ret.0242 = phi i32 [ 1, %if.then147 ], [ 0, %sw.bb ], [ 0, %for.end ], [ 0, %if.then141 ], [ 0, %if.then130 ]
  call void @CRYPTO_clear_free(i8* noundef %call1, i64 noundef 8192, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 231) #6
  call void @CRYPTO_free(i8* noundef %cipher.3254, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 232) #6
  call void @CRYPTO_free(i8* noundef %digest.3252, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 233) #6
  %26 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %call149 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %26) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call149) #6
  %call150 = call i32 @BIO_free(%struct.bio_st* noundef %in.0248) #6
  %call151 = call i32 @BIO_free(%struct.bio_st* noundef %out.0250) #6
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx.0246) #6
  call void @EVP_MAC_free(%struct.evp_mac_st* noundef %mac.1244) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0242
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @alloc_mac_algorithm_name(%struct.stack_st_OPENSSL_STRING** nocapture noundef %optp, i8* noundef %name, i8* noundef %arg) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %name) #8
  %call1 = tail call i64 @strlen(i8* noundef %arg) #8
  %add = add i64 %call, 2
  %add2 = add i64 %add, %call1
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %optp, align 8, !tbaa !3
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %0, null
  br i1 %cmp, label %if.end, label %if.end6

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st_OPENSSL_STRING** %optp to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %1, align 8, !tbaa !3
  %cmp4 = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry, %if.end
  %call7 = tail call i8* @app_malloc(i64 noundef %add2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0)) #6
  %call8 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %call7, i64 noundef %add2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8* noundef %name, i8* noundef %arg) #6
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %optp, align 8, !tbaa !3
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #7
  %call11 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef %call7) #6
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @CRYPTO_free(i8* noundef %call7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 70) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.end13
  %retval.0 = phi i8* [ null, %if.end13 ], [ null, %if.end ], [ %call7, %if.end6 ]
  ret i8* %retval.0
}

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

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

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

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
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !8}
