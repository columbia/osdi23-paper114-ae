; ModuleID = 'apps/dsaparam.c'
source_filename = "apps/dsaparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.evp_cipher_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [numbits]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Use engine e, possibly a hardware device\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Input format - DER or PEM\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Output format - DER or PEM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Print as text\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"No output\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Verbose output\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"genkey\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Generate a DSA key\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"numbits\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"Number of bits if generating parameters (optional)\00", align 1
@dsaparam_options = dso_local constant [24 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 9, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.39 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@verbose = internal unnamed_addr global i1 false, align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"Error, DSA parameter generation context allocation failed\0A\00", align 1
@.str.42 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"Generating DSA parameters, %d bit long prime\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"This could take some time\0A\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"Error, DSA key generation paramgen init failed\0A\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"Error, DSA key generation setting bit length failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"DSA parameters\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Error, unable to write DSA parameters\0A\00", align 1
@.str.49 = private unnamed_addr constant [53 x i8] c"Error, DSA key generation context allocation failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"Error, unable to initialise for key generation\0A\00", align 1
@gendsa_cb.symbols = internal unnamed_addr constant [5 x i8] c".+*\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dsaparam_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %num = alloca i32, align 4
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 0, i32* %num, align 4, !tbaa !3
  %1 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  store i32 0, i32* %informat, align 4, !tbaa !3
  %2 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  store i32 32773, i32* %outformat, align 4, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([24 x %struct.options_st], [24 x %struct.options_st]* @dsaparam_options, i64 0, i64 0)) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %genkey.0 = phi i32 [ 0, %entry ], [ %genkey.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #4
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb29
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
    i32 3, label %sw.bb9
    i32 5, label %sw.bb15
    i32 9, label %sw.bb17
    i32 6, label %sw.bb20
    i32 8, label %sw.bb21
    i32 10, label %sw.bb35
    i32 7, label %sw.bb34
    i32 1501, label %sw.bb23
    i32 1502, label %sw.bb23
    i32 1603, label %sw.bb29
    i32 1602, label %sw.bb29
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb29, %sw.bb23, %sw.bb9, %sw.bb4, %sw.bb35, %sw.bb34, %sw.bb21, %sw.bb20, %sw.bb17, %sw.bb15, %sw.bb7
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb23 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb35 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %genkey.0.be = phi i32 [ %genkey.0, %sw.bb29 ], [ %genkey.0, %sw.bb23 ], [ %genkey.0, %sw.bb34 ], [ %genkey.0, %sw.bb35 ], [ 1, %sw.bb21 ], [ %genkey.0, %sw.bb20 ], [ %genkey.0, %sw.bb17 ], [ %genkey.0, %sw.bb15 ], [ %genkey.0, %sw.bb9 ], [ %genkey.0, %sw.bb7 ], [ %genkey.0, %sw.bb4 ], [ %genkey.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb29 ], [ %noout.0, %sw.bb23 ], [ 1, %sw.bb34 ], [ %noout.0, %sw.bb35 ], [ %noout.0, %sw.bb21 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb9 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb29 ], [ %text.0, %sw.bb23 ], [ %text.0, %sw.bb34 ], [ %text.0, %sw.bb35 ], [ %text.0, %sw.bb21 ], [ 1, %sw.bb20 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb23 ], [ %infile.0, %sw.bb34 ], [ %infile.0, %sw.bb35 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb23 ], [ %outfile.0, %sw.bb34 ], [ %outfile.0, %sw.bb35 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb9, %sw.bb4, %while.end, %if.then39
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i8* noundef %call) #4
  br label %if.then133

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([24 x %struct.options_st], [24 x %struct.options_st]* @dsaparam_options, i64 0, i64 0)) #4
  br label %if.end134

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #4
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 2, i32* noundef nonnull %informat) #4
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #4
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #4
  %call11 = call i32 @opt_format(i8* noundef %call10, i64 noundef 2, i32* noundef nonnull %outformat) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %opthelp, label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #4
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = call i8* @opt_arg() #4
  %call19 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call18, i32 noundef -1, i32 noundef 0) #4
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond, %while.cond
  %call24 = call i32 @opt_rand(i32 noundef %call1) #4
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then133, label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call30 = call i32 @opt_provider(i32 noundef %call1) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then133, label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  store i1 true, i1* @verbose, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call36 = call i32 @opt_num_rest() #4
  %call37 = call i8** @opt_rest() #4
  switch i32 %call36, label %opthelp [
    i32 1, label %if.then39
    i32 0, label %if.end48
  ]

if.then39:                                        ; preds = %while.end
  %4 = load i8*, i8** %call37, align 8, !tbaa !9
  %call40 = call i32 @opt_int(i8* noundef %4, i32* noundef nonnull %num) #4
  %tobool41 = icmp eq i32 %call40, 0
  %5 = load i32, i32* %num, align 4
  %cmp42 = icmp slt i32 %5, 0
  %or.cond = select i1 %tobool41, i1 true, i1 %cmp42
  br i1 %or.cond, label %opthelp, label %if.end48

if.end48:                                         ; preds = %while.end, %if.then39
  %call49 = call i32 @app_RAND_load() #4
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then133, label %if.end52

if.end52:                                         ; preds = %if.end48
  %6 = load i32, i32* %num, align 4, !tbaa !3
  %tobool53 = icmp ne i32 %genkey.0, 0
  %7 = load i32, i32* %outformat, align 4, !tbaa !3
  %call54 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %7, i32 noundef %genkey.0) #4
  %cmp55 = icmp eq %struct.bio_st* %call54, null
  br i1 %cmp55, label %if.then133, label %if.end57

if.end57:                                         ; preds = %if.end52
  %call58 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8* noundef null) #4
  %cmp59 = icmp eq %struct.evp_pkey_ctx_st* %call58, null
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end57
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call61 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i64 0, i64 0)) #4
  br label %if.then133

if.end62:                                         ; preds = %if.end57
  %cmp63 = icmp sgt i32 %6, 0
  br i1 %cmp63, label %if.then64, label %if.else85

if.then64:                                        ; preds = %if.end62
  %cmp65 = icmp ugt i32 %6, 10000
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then64
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([144 x i8], [144 x i8]* @.str.42, i64 0, i64 0), i32 noundef 10000, i32 noundef %6) #4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  call void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef nonnull %call58, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @gendsa_cb) #4
  %10 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !9
  call void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef nonnull %call58, i8* noundef %10) #4
  %.b186 = load i1, i1* @verbose, align 4
  br i1 %.b186, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end68
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %12 = load i32, i32* %num, align 4, !tbaa !3
  %call71 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i64 0, i64 0), i32 noundef %12) #4
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call72 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0)) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end68
  %call74 = call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call58) #4
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call77 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i64 0, i64 0)) #4
  br label %if.then133

if.end78:                                         ; preds = %if.end73
  %15 = load i32, i32* %num, align 4, !tbaa !3
  %call79 = call i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef nonnull %call58, i32 noundef %15) #4
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end78
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call82 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i64 0, i64 0)) #4
  br label %if.then133

if.end83:                                         ; preds = %if.end78
  %call84 = call %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef nonnull %call58, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #4
  br label %if.end87

if.else85:                                        ; preds = %if.end62
  %17 = load i32, i32* %informat, align 4, !tbaa !3
  %call86 = call %struct.evp_pkey_st* @load_keyparams(i8* noundef %infile.0, i32 noundef %17, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0)) #4
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %if.end83
  %params.0 = phi %struct.evp_pkey_st* [ %call84, %if.end83 ], [ %call86, %if.else85 ]
  %cmp88 = icmp eq %struct.evp_pkey_st* %params.0, null
  br i1 %cmp88, label %if.then133, label %if.end90

if.end90:                                         ; preds = %if.end87
  %tobool91.not = icmp eq i32 %text.0, 0
  br i1 %tobool91.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.end90
  %call93 = call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef nonnull %call54, %struct.evp_pkey_st* noundef nonnull %params.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90
  %18 = load i32, i32* %outformat, align 4, !tbaa !3
  %cmp95 = icmp eq i32 %18, 4
  %or.cond135 = select i1 %cmp95, i1 %tobool53, i1 false
  %tobool99.not203 = icmp eq i32 %noout.0, 0
  %not.or.cond135 = xor i1 %or.cond135, true
  %tobool99.not = select i1 %not.or.cond135, i1 %tobool99.not203, i1 false
  br i1 %tobool99.not, label %if.then100, label %if.end111

if.then100:                                       ; preds = %if.end94
  br i1 %cmp95, label %if.then102, label %if.else104

if.then102:                                       ; preds = %if.then100
  %call103 = call i32 @i2d_KeyParams_bio(%struct.bio_st* noundef nonnull %call54, %struct.evp_pkey_st* noundef nonnull %params.0) #4
  br label %if.end106

if.else104:                                       ; preds = %if.then100
  %call105 = call i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef nonnull %call54, %struct.evp_pkey_st* noundef nonnull %params.0) #4
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then102
  %i.0 = phi i32 [ %call103, %if.then102 ], [ %call105, %if.else104 ]
  %tobool107.not = icmp eq i32 %i.0, 0
  br i1 %tobool107.not, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end106
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call109 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0)) #4
  br label %if.then133

if.end111:                                        ; preds = %if.end106, %if.end94
  br i1 %tobool53, label %if.then113, label %if.end134

if.then113:                                       ; preds = %if.end111
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call58) #4
  %call114 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %params.0, %struct.engine_st* noundef null) #4
  %cmp115 = icmp eq %struct.evp_pkey_ctx_st* %call114, null
  br i1 %cmp115, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.then113
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call117 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.49, i64 0, i64 0)) #4
  br label %if.then133

if.end118:                                        ; preds = %if.then113
  %call119 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call114) #4
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end118
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call122 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i64 0, i64 0)) #4
  br label %if.then133

if.end123:                                        ; preds = %if.end118
  %.b = load i1, i1* @verbose, align 4
  %22 = zext i1 %.b to i32
  %call124 = call %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call114, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 noundef %6, i32 noundef %22) #4
  %23 = load i32, i32* %outformat, align 4, !tbaa !3
  %cmp125 = icmp eq i32 %23, 4
  br i1 %cmp125, label %if.then126, label %if.else128

if.then126:                                       ; preds = %if.end123
  %call127 = call i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef nonnull %call54, %struct.evp_pkey_st* noundef %call124) #4
  br label %if.end134

if.else128:                                       ; preds = %if.end123
  %call129 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call54, %struct.evp_pkey_st* noundef %call124, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #4
  br label %if.end134

if.then133:                                       ; preds = %sw.bb29, %sw.bb23, %opthelp, %if.end52, %if.then60, %if.then76, %if.end87, %if.then116, %if.then121, %if.then108, %if.then81, %if.end48
  %out.0.ph = phi %struct.bio_st* [ null, %if.end48 ], [ %call54, %if.then81 ], [ %call54, %if.then108 ], [ %call54, %if.then121 ], [ %call54, %if.then116 ], [ %call54, %if.end87 ], [ %call54, %if.then76 ], [ %call54, %if.then60 ], [ null, %if.end52 ], [ null, %opthelp ], [ null, %sw.bb23 ], [ null, %sw.bb29 ]
  %params.1.ph = phi %struct.evp_pkey_st* [ null, %if.end48 ], [ null, %if.then81 ], [ %params.0, %if.then108 ], [ %params.0, %if.then121 ], [ %params.0, %if.then116 ], [ null, %if.end87 ], [ null, %if.then76 ], [ null, %if.then60 ], [ null, %if.end52 ], [ null, %opthelp ], [ null, %sw.bb23 ], [ null, %sw.bb29 ]
  %ctx.1.ph = phi %struct.evp_pkey_ctx_st* [ null, %if.end48 ], [ %call58, %if.then81 ], [ %call58, %if.then108 ], [ %call114, %if.then121 ], [ null, %if.then116 ], [ %call58, %if.end87 ], [ %call58, %if.then76 ], [ null, %if.then60 ], [ null, %if.end52 ], [ null, %opthelp ], [ null, %sw.bb23 ], [ null, %sw.bb29 ]
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  call void @ERR_print_errors(%struct.bio_st* noundef %24) #4
  br label %if.end134

if.end134:                                        ; preds = %sw.bb3, %if.then126, %if.else128, %if.end111, %if.then133
  %ret.0202 = phi i32 [ 1, %if.then133 ], [ 0, %sw.bb3 ], [ 0, %if.then126 ], [ 0, %if.else128 ], [ 0, %if.end111 ]
  %ctx.1200 = phi %struct.evp_pkey_ctx_st* [ %ctx.1.ph, %if.then133 ], [ null, %sw.bb3 ], [ %call114, %if.then126 ], [ %call114, %if.else128 ], [ %call58, %if.end111 ]
  %pkey.1198 = phi %struct.evp_pkey_st* [ null, %if.then133 ], [ null, %sw.bb3 ], [ %call124, %if.then126 ], [ %call124, %if.else128 ], [ null, %if.end111 ]
  %params.1196 = phi %struct.evp_pkey_st* [ %params.1.ph, %if.then133 ], [ null, %sw.bb3 ], [ %params.0, %if.then126 ], [ %params.0, %if.else128 ], [ %params.0, %if.end111 ]
  %out.0194 = phi %struct.bio_st* [ %out.0.ph, %if.then133 ], [ null, %sw.bb3 ], [ %call54, %if.then126 ], [ %call54, %if.else128 ], [ %call54, %if.end111 ]
  call void @BIO_free_all(%struct.bio_st* noundef %out.0194) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1200) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1198) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %params.1196) #4
  call void @release_engine(%struct.engine_st* noundef %e.0) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %ret.0202
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @opt_int(i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @gendsa_cb(%struct.evp_pkey_ctx_st* noundef %ctx) #0 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #3
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.bio_st*
  %call1 = tail call i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #4
  %cmp2 = icmp ult i32 %call1, 4
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end
  %conv17 = zext i32 %call1 to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @gendsa_cb.symbols, i64 0, i64 %conv17
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i8 [ %1, %cond.true ], [ 63, %if.end ]
  store i8 %cond, i8* %c, align 1, !tbaa !11
  %call6 = call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef nonnull %c, i32 noundef 1) #4
  %call7 = call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #3
  ret i32 1
}

declare dso_local void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_keyparams(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_KeyParams_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_Parameters(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!5, !5, i64 0}
