; ModuleID = 'apps/dhparam.c'
source_filename = "apps/dhparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [numbits]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Check the DH parameters\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dsaparam\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Read or generate DSA parameters, convert to DH\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Use engine e, possibly a hardware device\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Input format, DER or PEM\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Output format, DER or PEM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Print a text form of the DH parameters\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"Don't output any DH parameters\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"Generate parameters using 2 as the generator value\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"Generate parameters using 3 as the generator value\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Generate parameters using 5 as the generator value\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.37 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"numbits\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"Number of bits if generating parameters (optional)\00", align 1
@dhparam_options = dso_local constant [27 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.45 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.46 = private unnamed_addr constant [55 x i8] c"Error, generator may not be chosen for DSA parameters\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.49 = private unnamed_addr constant [54 x i8] c"Error, %s param generation context allocation failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"Generating %s parameters, %d bit long %sprime\0A\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"safe \00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"Error, unable to initialise %s parameters\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"Error, unable to set DSA prime length\0A\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"Error, unable to set DH prime length\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"Error, unable to set generator\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Error, unable to load parameters\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Error, unable to load DSA parameters\0A\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"Error, unable to load DH parameters\0A\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Error, failed to check DH parameters\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"Error, invalid parameters generated\0A\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"DH parameters appear to be ok.\0A\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"Error, unable to write DH parameters\0A\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"Error, failed to set DH parameters\0A\00", align 1
@gendh_cb.symbols = internal unnamed_addr constant [5 x i8] c".+*\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dhparam_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %tmppkey = alloca %struct.evp_pkey_st*, align 8
  %num = alloca i32, align 4
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %0 = bitcast %struct.evp_pkey_st** %tmppkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  %1 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 0, i32* %num, align 4, !tbaa !7
  %2 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 32773, i32* %informat, align 4, !tbaa !7
  %3 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([27 x %struct.options_st], [27 x %struct.options_st]* @dhparam_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %dsaparam.0 = phi i32 [ 0, %entry ], [ %dsaparam.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %g.0 = phi i32 [ 0, %entry ], [ %g.0.be, %while.cond.backedge ]
  %check.0 = phi i32 [ 0, %entry ], [ %check.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb34
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb13
    i32 5, label %sw.bb15
    i32 6, label %sw.bb17
    i32 7, label %sw.bb20
    i32 8, label %sw.bb21
    i32 10, label %sw.bb22
    i32 11, label %sw.bb23
    i32 12, label %sw.bb24
    i32 13, label %sw.bb25
    i32 9, label %sw.bb26
    i32 1603, label %sw.bb34
    i32 1602, label %sw.bb34
    i32 1501, label %sw.bb28
    i32 1502, label %sw.bb28
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb34, %sw.bb28, %sw.bb7, %sw.bb4, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb17, %sw.bb15, %sw.bb13
  %infile.0.be = phi i8* [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb34 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb23 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %infile.0, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb34 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb23 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb13 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb23 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb13 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %dsaparam.0.be = phi i32 [ %dsaparam.0, %sw.bb28 ], [ %dsaparam.0, %sw.bb34 ], [ %dsaparam.0, %sw.bb26 ], [ %dsaparam.0, %sw.bb25 ], [ %dsaparam.0, %sw.bb24 ], [ %dsaparam.0, %sw.bb23 ], [ 1, %sw.bb22 ], [ %dsaparam.0, %sw.bb21 ], [ %dsaparam.0, %sw.bb20 ], [ %dsaparam.0, %sw.bb17 ], [ %dsaparam.0, %sw.bb15 ], [ %dsaparam.0, %sw.bb13 ], [ %dsaparam.0, %sw.bb7 ], [ %dsaparam.0, %sw.bb4 ], [ %dsaparam.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb28 ], [ %text.0, %sw.bb34 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb25 ], [ %text.0, %sw.bb24 ], [ %text.0, %sw.bb23 ], [ %text.0, %sw.bb22 ], [ 1, %sw.bb21 ], [ %text.0, %sw.bb20 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb13 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %g.0.be = phi i32 [ %g.0, %sw.bb28 ], [ %g.0, %sw.bb34 ], [ %g.0, %sw.bb26 ], [ 5, %sw.bb25 ], [ 3, %sw.bb24 ], [ 2, %sw.bb23 ], [ %g.0, %sw.bb22 ], [ %g.0, %sw.bb21 ], [ %g.0, %sw.bb20 ], [ %g.0, %sw.bb17 ], [ %g.0, %sw.bb15 ], [ %g.0, %sw.bb13 ], [ %g.0, %sw.bb7 ], [ %g.0, %sw.bb4 ], [ %g.0, %while.cond ]
  %check.0.be = phi i32 [ %check.0, %sw.bb28 ], [ %check.0, %sw.bb34 ], [ %check.0, %sw.bb26 ], [ %check.0, %sw.bb25 ], [ %check.0, %sw.bb24 ], [ %check.0, %sw.bb23 ], [ %check.0, %sw.bb22 ], [ %check.0, %sw.bb21 ], [ 1, %sw.bb20 ], [ %check.0, %sw.bb17 ], [ %check.0, %sw.bb15 ], [ %check.0, %sw.bb13 ], [ %check.0, %sw.bb7 ], [ %check.0, %sw.bb4 ], [ %check.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb28 ], [ %noout.0, %sw.bb34 ], [ 1, %sw.bb26 ], [ %noout.0, %sw.bb25 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb23 ], [ %noout.0, %sw.bb22 ], [ %noout.0, %sw.bb21 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb13 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb7, %sw.bb4, %while.end, %if.then42
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call) #5
  br label %if.then218

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([27 x %struct.options_st], [27 x %struct.options_st]* @dhparam_options, i64 0, i64 0)) #5
  br label %cleanup221

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 2, i32* noundef nonnull %informat) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  %call9 = call i32 @opt_format(i8* noundef %call8, i64 noundef 2, i32* noundef nonnull %outformat) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %opthelp, label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  %call14 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = call i8* @opt_arg() #5
  %call19 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call18, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond, %while.cond
  %call29 = call i32 @opt_rand(i32 noundef %call1) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then218, label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call35 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then218, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call39 = call i32 @opt_num_rest() #5
  %call40 = call i8** @opt_rest() #5
  switch i32 %call39, label %opthelp [
    i32 1, label %if.then42
    i32 0, label %if.end51
  ]

if.then42:                                        ; preds = %while.end
  %5 = load i8*, i8** %call40, align 8, !tbaa !3
  %call43 = call i32 @opt_int(i8* noundef %5, i32* noundef nonnull %num) #5
  %tobool44 = icmp eq i32 %call43, 0
  %6 = load i32, i32* %num, align 4
  %cmp45 = icmp slt i32 %6, 1
  %or.cond = select i1 %tobool44, i1 true, i1 %cmp45
  br i1 %or.cond, label %opthelp, label %if.end51

if.end51:                                         ; preds = %while.end, %if.then42
  %call52 = call i32 @app_RAND_load() #5
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then218, label %if.end55

if.end55:                                         ; preds = %if.end51
  %tobool56 = icmp eq i32 %g.0, 0
  %7 = load i32, i32* %num, align 4
  %tobool57 = icmp ne i32 %7, 0
  %or.cond240 = select i1 %tobool56, i1 true, i1 %tobool57
  br i1 %or.cond240, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end55
  store i32 2048, i32* %num, align 4, !tbaa !7
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end55
  %tobool60 = icmp ne i32 %dsaparam.0, 0
  %tobool62 = icmp ne i32 %g.0, 0
  %or.cond241 = select i1 %tobool60, i1 %tobool62, i1 false
  br i1 %or.cond241, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call64 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.46, i64 0, i64 0)) #5
  br label %if.then218

if.end65:                                         ; preds = %if.end59
  %9 = load i32, i32* %outformat, align 4, !tbaa !7
  %call66 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %9) #5
  %cmp67 = icmp eq %struct.bio_st* %call66, null
  br i1 %cmp67, label %if.then218, label %if.end69

if.end69:                                         ; preds = %if.end65
  %10 = load i32, i32* %num, align 4, !tbaa !7
  %tobool70 = icmp eq i32 %10, 0
  %or.cond242 = select i1 %tobool70, i1 true, i1 %tobool62
  %spec.store.select = select i1 %or.cond242, i32 %g.0, i32 2
  br i1 %tobool70, label %if.else119, label %if.then76

if.then76:                                        ; preds = %if.end69
  %cond = select i1 %tobool60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0)
  %call78 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %cond, i8* noundef null) #5
  %cmp79 = icmp eq %struct.evp_pkey_ctx_st* %call78, null
  br i1 %cmp79, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.then76
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call81 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.49, i64 0, i64 0), i8* noundef %cond) #5
  br label %if.then218

if.end82:                                         ; preds = %if.then76
  call void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef nonnull %call78, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @gendh_cb) #5
  %12 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef nonnull %call78, i8* noundef %12) #5
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %14 = load i32, i32* %num, align 4, !tbaa !7
  %cond84 = select i1 %tobool60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0)
  %call85 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.50, i64 0, i64 0), i8* noundef %cond, i32 noundef %14, i8* noundef %cond84) #5
  %call86 = call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call78) #5
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end82
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call89 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.53, i64 0, i64 0), i8* noundef %cond) #5
  br label %if.then218

if.end90:                                         ; preds = %if.end82
  %16 = load i32, i32* %num, align 4, !tbaa !7
  br i1 %tobool60, label %if.then92, label %if.else98

if.then92:                                        ; preds = %if.end90
  %call93 = call i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef nonnull %call78, i32 noundef %16) #5
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end109

if.then95:                                        ; preds = %if.then92
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call96 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0)) #5
  br label %if.then218

if.else98:                                        ; preds = %if.end90
  %call99 = call i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.evp_pkey_ctx_st* noundef nonnull %call78, i32 noundef %16) #5
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.else98
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call102 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0)) #5
  br label %if.then218

if.end103:                                        ; preds = %if.else98
  %call104 = call i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.evp_pkey_ctx_st* noundef nonnull %call78, i32 noundef %spec.store.select) #5
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.end103
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call107 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0)) #5
  br label %if.then218

if.end109:                                        ; preds = %if.end103, %if.then92
  %call110 = call %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef nonnull %call78, i8* noundef %cond) #5
  store %struct.evp_pkey_st* %call110, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call78) #5
  br i1 %tobool60, label %if.then112, label %cleanup

if.then112:                                       ; preds = %if.end109
  %call113 = call fastcc %struct.evp_pkey_st* @dsa_to_dh(%struct.evp_pkey_st* noundef %call110) #6
  %cmp114 = icmp eq %struct.evp_pkey_st* %call113, null
  br i1 %cmp114, label %if.then218, label %if.end116

if.end116:                                        ; preds = %if.then112
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call110) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end116
  %pkey.0 = phi %struct.evp_pkey_st* [ %call113, %if.end116 ], [ %call110, %if.end109 ]
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  br label %if.end178

if.else119:                                       ; preds = %if.end69
  %20 = load i32, i32* %informat, align 4, !tbaa !7
  %call120 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef %20) #5
  %cmp121 = icmp eq %struct.bio_st* %call120, null
  br i1 %cmp121, label %if.then218, label %do.body

do.body:                                          ; preds = %if.else119, %if.end144
  %keytype.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), %if.end144 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), %if.else119 ]
  %21 = load i32, i32* %informat, align 4, !tbaa !7
  %cmp124 = icmp eq i32 %21, 4
  %cond125 = select i1 %cmp124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)
  %cond127 = select i1 %cmp124, i8* %keytype.0, i8* null
  %call128 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %tmppkey, i8* noundef %cond125, i8* noundef null, i8* noundef %cond127, i32 noundef 4, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  %cmp129.not = icmp eq %struct.ossl_decoder_ctx_st* %call128, null
  br i1 %cmp129.not, label %if.end144.thread, label %land.lhs.true130

land.lhs.true130:                                 ; preds = %do.body
  %call131 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef nonnull %call128, %struct.bio_st* noundef nonnull %call120) #5
  %tobool132 = icmp eq i32 %call131, 0
  %22 = load i32, i32* %informat, align 4
  %cmp134 = icmp eq i32 %22, 4
  %or.cond243 = select i1 %tobool132, i1 %cmp134, i1 false
  br i1 %or.cond243, label %land.lhs.true135, label %if.end144.thread

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %call136 = call i32 @strcmp(i8* noundef %keytype.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0)) #7
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.end144, label %if.end144.thread

if.end144.thread:                                 ; preds = %land.lhs.true135, %land.lhs.true130, %do.body
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %call128) #5
  br label %do.end

if.end144:                                        ; preds = %land.lhs.true135
  %call139 = call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call120, i32 noundef 1, i64 noundef 0, i8* noundef null) #5
  %conv = trunc i64 %call139 to i32
  %cmp140 = icmp eq i32 %conv, 0
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef nonnull %call128) #5
  br i1 %cmp140, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %if.end144, %if.end144.thread
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  %cmp146 = icmp eq %struct.evp_pkey_st* %23, null
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %do.end
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call149 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.then218

if.end150:                                        ; preds = %do.end
  br i1 %tobool60, label %if.then152, label %if.else163

if.then152:                                       ; preds = %if.end150
  %call153 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #5
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.then152
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call156 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.then218

if.end157:                                        ; preds = %if.then152
  %26 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  %call158 = call fastcc %struct.evp_pkey_st* @dsa_to_dh(%struct.evp_pkey_st* noundef %26) #6
  %cmp159 = icmp eq %struct.evp_pkey_st* %call158, null
  br i1 %cmp159, label %if.then218, label %if.end178

if.else163:                                       ; preds = %if.end150
  %call164 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0)) #5
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %land.lhs.true166, label %if.end171

land.lhs.true166:                                 ; preds = %if.else163
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  %call167 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #5
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.then169, label %if.end171

if.then169:                                       ; preds = %land.lhs.true166
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call170 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.then218

if.end171:                                        ; preds = %land.lhs.true166, %if.else163
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  br label %if.end178

if.end178:                                        ; preds = %if.end157, %if.end171, %cleanup
  %pkey.4 = phi %struct.evp_pkey_st* [ %pkey.0, %cleanup ], [ %call158, %if.end157 ], [ %29, %if.end171 ]
  %in.0 = phi %struct.bio_st* [ null, %cleanup ], [ %call120, %if.end157 ], [ %call120, %if.end171 ]
  %tobool179.not = icmp eq i32 %text.0, 0
  br i1 %tobool179.not, label %if.end182, label %if.then180

if.then180:                                       ; preds = %if.end178
  %call181 = call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef nonnull %call66, %struct.evp_pkey_st* noundef %pkey.4, i32 noundef 4, %struct.asn1_pctx_st* noundef null) #5
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end178
  %tobool183.not = icmp eq i32 %check.0, 0
  br i1 %tobool183.not, label %if.end197, label %if.then184

if.then184:                                       ; preds = %if.end182
  %call185 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %pkey.4, i8* noundef null) #5
  %cmp186 = icmp eq %struct.evp_pkey_ctx_st* %call185, null
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.then184
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call189 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %if.then218

if.end190:                                        ; preds = %if.then184
  %call191 = call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef nonnull %call185) #5
  %tobool192.not = icmp eq i32 %call191, 0
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %tobool192.not, label %if.then193, label %if.end195

if.then193:                                       ; preds = %if.end190
  %call194 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %31, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %if.then218

if.end195:                                        ; preds = %if.end190
  %call196 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %31, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i64 0, i64 0)) #5
  br label %if.end197

if.end197:                                        ; preds = %if.end195, %if.end182
  %ctx.2 = phi %struct.evp_pkey_ctx_st* [ %call185, %if.end195 ], [ null, %if.end182 ]
  %tobool198.not = icmp eq i32 %noout.0, 0
  br i1 %tobool198.not, label %if.then199, label %cleanup221

if.then199:                                       ; preds = %if.end197
  %32 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp200 = icmp eq i32 %32, 4
  %cond202 = select i1 %cmp200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)
  %call203 = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %pkey.4, i32 noundef 4, i8* noundef %cond202, i8* noundef null, i8* noundef null) #5
  %cmp204 = icmp eq %struct.ossl_encoder_ctx_st* %call203, null
  br i1 %cmp204, label %cleanup212, label %lor.lhs.false206

lor.lhs.false206:                                 ; preds = %if.then199
  %call207 = call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef nonnull %call203, %struct.bio_st* noundef nonnull %call66) #5
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %cleanup212, label %cleanup212.thread

cleanup212.thread:                                ; preds = %lor.lhs.false206
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef nonnull %call203) #5
  br label %cleanup221

cleanup212:                                       ; preds = %if.then199, %lor.lhs.false206
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call203) #5
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call210 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0)) #5
  br label %if.then218

if.then218:                                       ; preds = %sw.bb28, %sw.bb34, %if.end157, %if.else119, %if.then169, %if.then155, %if.then148, %if.then112, %if.then88, %if.then101, %if.then106, %if.then95, %if.then80, %opthelp, %if.then63, %if.end65, %if.then188, %cleanup212, %if.then193, %if.end51
  %out.0.ph = phi %struct.bio_st* [ null, %if.end51 ], [ %call66, %if.then193 ], [ %call66, %cleanup212 ], [ %call66, %if.then188 ], [ null, %if.end65 ], [ null, %if.then63 ], [ null, %opthelp ], [ %call66, %if.then80 ], [ %call66, %if.then95 ], [ %call66, %if.then106 ], [ %call66, %if.then101 ], [ %call66, %if.then88 ], [ %call66, %if.then112 ], [ %call66, %if.then148 ], [ %call66, %if.then155 ], [ %call66, %if.then169 ], [ %call66, %if.else119 ], [ %call66, %if.end157 ], [ null, %sw.bb34 ], [ null, %sw.bb28 ]
  %pkey.5.ph = phi %struct.evp_pkey_st* [ null, %if.end51 ], [ %pkey.4, %if.then193 ], [ %pkey.4, %cleanup212 ], [ %pkey.4, %if.then188 ], [ null, %if.end65 ], [ null, %if.then63 ], [ null, %opthelp ], [ null, %if.then80 ], [ null, %if.then95 ], [ null, %if.then106 ], [ null, %if.then101 ], [ null, %if.then88 ], [ null, %if.then112 ], [ null, %if.then148 ], [ null, %if.then155 ], [ null, %if.then169 ], [ null, %if.else119 ], [ null, %if.end157 ], [ null, %sw.bb34 ], [ null, %sw.bb28 ]
  %ctx.3.ph = phi %struct.evp_pkey_ctx_st* [ null, %if.end51 ], [ %call185, %if.then193 ], [ %ctx.2, %cleanup212 ], [ null, %if.then188 ], [ null, %if.end65 ], [ null, %if.then63 ], [ null, %opthelp ], [ null, %if.then80 ], [ %call78, %if.then95 ], [ %call78, %if.then106 ], [ %call78, %if.then101 ], [ %call78, %if.then88 ], [ null, %if.then112 ], [ null, %if.then148 ], [ null, %if.then155 ], [ null, %if.then169 ], [ null, %if.else119 ], [ null, %if.end157 ], [ null, %sw.bb34 ], [ null, %sw.bb28 ]
  %in.1.ph = phi %struct.bio_st* [ null, %if.end51 ], [ %in.0, %if.then193 ], [ %in.0, %cleanup212 ], [ %in.0, %if.then188 ], [ null, %if.end65 ], [ null, %if.then63 ], [ null, %opthelp ], [ null, %if.then80 ], [ null, %if.then95 ], [ null, %if.then106 ], [ null, %if.then101 ], [ null, %if.then88 ], [ null, %if.then112 ], [ %call120, %if.then148 ], [ %call120, %if.then155 ], [ %call120, %if.then169 ], [ null, %if.else119 ], [ %call120, %if.end157 ], [ null, %sw.bb34 ], [ null, %sw.bb28 ]
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %34) #5
  br label %cleanup221

cleanup221:                                       ; preds = %if.then218, %if.end197, %cleanup212.thread, %sw.bb3
  %ret.0335 = phi i32 [ 1, %if.then218 ], [ 0, %sw.bb3 ], [ 0, %cleanup212.thread ], [ 0, %if.end197 ]
  %in.1333 = phi %struct.bio_st* [ %in.1.ph, %if.then218 ], [ null, %sw.bb3 ], [ %in.0, %cleanup212.thread ], [ %in.0, %if.end197 ]
  %ctx.3331 = phi %struct.evp_pkey_ctx_st* [ %ctx.3.ph, %if.then218 ], [ null, %sw.bb3 ], [ %ctx.2, %cleanup212.thread ], [ %ctx.2, %if.end197 ]
  %pkey.5329 = phi %struct.evp_pkey_st* [ %pkey.5.ph, %if.then218 ], [ null, %sw.bb3 ], [ %pkey.4, %cleanup212.thread ], [ %pkey.4, %if.end197 ]
  %out.0327 = phi %struct.bio_st* [ %out.0.ph, %if.then218 ], [ null, %sw.bb3 ], [ %call66, %cleanup212.thread ], [ %call66, %if.end197 ]
  %call220 = call i32 @BIO_free(%struct.bio_st* noundef %in.1333) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0327) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.5329) #5
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %tmppkey, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %35) #5
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.3331) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0335
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

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @gendh_cb(%struct.evp_pkey_ctx_st* noundef %ctx) #0 {
entry:
  %c = alloca i8, align 1
  %call = tail call i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #5
  %call1 = tail call i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef %ctx) #5
  %0 = bitcast i8* %call1 to %struct.bio_st*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #4
  %cmp2 = icmp ult i32 %call, 4
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %conv15 = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [5 x i8], [5 x i8]* @gendh_cb.symbols, i64 0, i64 %conv15
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8 [ %1, %cond.true ], [ 63, %entry ]
  store i8 %cond, i8* %c, align 1, !tbaa !12
  %call6 = call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef nonnull %c, i32 noundef 1) #5
  %call7 = call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #5
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #4
  ret i32 1
}

declare dso_local void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_dsa_paramgen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_paramgen(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @dsa_to_dh(%struct.evp_pkey_st* noundef %dh) unnamed_addr #0 {
entry:
  %bn_p = alloca %struct.bignum_st*, align 8
  %bn_q = alloca %struct.bignum_st*, align 8
  %bn_g = alloca %struct.bignum_st*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn_p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_p, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %bn_q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_q, align 8, !tbaa !3
  %2 = bitcast %struct.bignum_st** %bn_g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn_g, align 8, !tbaa !3
  %3 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %call = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %dh, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct.bignum_st** noundef nonnull %bn_p) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %dh, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st** noundef nonnull %bn_q) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %err.sink.split, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %dh, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct.bignum_st** noundef nonnull %bn_g) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %call7 = call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #5
  %cmp = icmp eq %struct.ossl_param_bld_st* %call7, null
  br i1 %cmp, label %err.sink.split, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %4 = load %struct.bignum_st*, %struct.bignum_st** %bn_p, align 8, !tbaa !3
  %call9 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct.bignum_st* noundef %4) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err.sink.split, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %5 = load %struct.bignum_st*, %struct.bignum_st** %bn_q, align 8, !tbaa !3
  %call12 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0), %struct.bignum_st* noundef %5) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err.sink.split, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %6 = load %struct.bignum_st*, %struct.bignum_st** %bn_g, align 8, !tbaa !3
  %call15 = call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef nonnull %call7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct.bignum_st* noundef %6) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err.sink.split, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %call18 = call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef nonnull %call7) #5
  %cmp19 = icmp eq %struct.ossl_param_st* %call18, null
  br i1 %cmp19, label %err.sink.split, label %if.end22

if.end22:                                         ; preds = %lor.lhs.false17
  %call23 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* noundef null) #5
  %cmp24 = icmp eq %struct.evp_pkey_ctx_st* %call23, null
  br i1 %cmp24, label %err.sink.split, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end22
  %call26 = call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef nonnull %call23) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err.sink.split, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %call29 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef nonnull %call23, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 132, %struct.ossl_param_st* noundef nonnull %call18) #5
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end22, %lor.lhs.false25, %lor.lhs.false28, %if.end, %lor.lhs.false8, %lor.lhs.false11, %lor.lhs.false14, %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false3
  %tmpl.0.ph = phi %struct.ossl_param_bld_st* [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %lor.lhs.false17 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false11 ], [ %call7, %lor.lhs.false8 ], [ %call7, %if.end ], [ %call7, %lor.lhs.false28 ], [ %call7, %lor.lhs.false25 ], [ %call7, %if.end22 ]
  %params.1.ph = phi %struct.ossl_param_st* [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ %call18, %lor.lhs.false28 ], [ %call18, %lor.lhs.false25 ], [ %call18, %if.end22 ]
  %ctx.0.ph = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ %call23, %lor.lhs.false28 ], [ %call23, %lor.lhs.false25 ], [ %call23, %if.end22 ]
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call32 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i64 0, i64 0)) #5
  br label %err

err:                                              ; preds = %err.sink.split, %lor.lhs.false28
  %tmpl.0 = phi %struct.ossl_param_bld_st* [ %call7, %lor.lhs.false28 ], [ %tmpl.0.ph, %err.sink.split ]
  %params.1 = phi %struct.ossl_param_st* [ %call18, %lor.lhs.false28 ], [ %params.1.ph, %err.sink.split ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call23, %lor.lhs.false28 ], [ %ctx.0.ph, %err.sink.split ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #5
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.1) #5
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %tmpl.0) #5
  %8 = load %struct.bignum_st*, %struct.bignum_st** %bn_p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %8) #5
  %9 = load %struct.bignum_st*, %struct.bignum_st** %bn_q, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %9) #5
  %10 = load %struct.bignum_st*, %struct.bignum_st** %bn_g, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %10) #5
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.evp_pkey_st* %11
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #2

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
