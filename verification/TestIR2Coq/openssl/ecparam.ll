; ModuleID = 'apps/ecparam.c'
source_filename = "apps/ecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.EC_builtin_curve = type { i32, i8* }

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"list_curves\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Prints a list of all curve 'short names'\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"genkey\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Generate ec key\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Input file  - default stdin\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Input format - default PEM (DER or PEM)\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Output file - default stdout\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Output format - default PEM\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Print the ec parameters in text form\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Do not print the ec parameter\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"param_enc\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"Specifies the way the ec parameters are encoded\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Parameter options:\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Validate the ec parameters\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"check_named\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"Check that named EC curve parameters have not been modified\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"no_seed\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"If 'explicit' parameters are chosen do not use the seed\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"Use the ec parameters with specified 'short name'\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"conv_form\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Specifies the point conversion form \00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.46 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@ecparam_options = dso_local constant [27 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 15, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.47 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@point_format_options = internal global [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* null], align 16
@asn1_encoding_options = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* null], align 16
@.str.48 = private unnamed_addr constant [10 x i8] c"secp192r1\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"using curve name prime192v1 instead of secp192r1\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"prime192v1\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"secp256r1\00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"using curve name prime256v1 instead of secp256r1\0A\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"prime256v1\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"SM2\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"unable to generate key\0A\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"EC parameters\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"unable to set point conversion format\0A\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"unable to set asn1 encoding format\0A\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"unable to clear seed\0A\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"unable to print params\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"checking elliptic curve parameters: \00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"group-check\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"unable to set check_type\0A\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"unable to write elliptic curve parameters\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"list curves\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"CURVE DESCRIPTION NOT AVAILABLE\00", align 1
@.str.84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"  %-10s: \00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"apps/ecparam.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ecparam_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %params_key = alloca %struct.evp_pkey_st*, align 8
  %key = alloca %struct.evp_pkey_st*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %params = alloca [4 x %struct.ossl_param_st], align 16
  %tmp88 = alloca %struct.ossl_param_st, align 8
  %tmp93 = alloca %struct.ossl_param_st, align 8
  %tmp95 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.evp_pkey_st** %params_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %1 = bitcast %struct.evp_pkey_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %2 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 32773, i32* %informat, align 4, !tbaa !7
  %3 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([27 x %struct.options_st], [27 x %struct.options_st]* @ecparam_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %curve_name.0 = phi i8* [ null, %entry ], [ %curve_name.0.be, %while.cond.backedge ]
  %asn1_encoding.0 = phi i8* [ null, %entry ], [ %asn1_encoding.0.be, %while.cond.backedge ]
  %point_format.0 = phi i8* [ null, %entry ], [ %point_format.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %no_seed.0 = phi i32 [ 0, %entry ], [ %no_seed.0.be, %while.cond.backedge ]
  %check.0 = phi i32 [ 0, %entry ], [ %check.0.be, %while.cond.backedge ]
  %check_named.0 = phi i32 [ 0, %entry ], [ %check_named.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %genkey.0 = phi i32 [ 0, %entry ], [ %genkey.0.be, %while.cond.backedge ]
  %list_curves.0 = phi i32 [ 0, %entry ], [ %list_curves.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #6
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb45
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
    i32 3, label %sw.bb9
    i32 5, label %sw.bb15
    i32 6, label %sw.bb17
    i32 7, label %sw.bb18
    i32 16, label %sw.bb19
    i32 8, label %sw.bb20
    i32 9, label %sw.bb21
    i32 10, label %sw.bb22
    i32 11, label %sw.bb23
    i32 12, label %sw.bb25
    i32 13, label %sw.bb31
    i32 14, label %sw.bb37
    i32 15, label %sw.bb50
    i32 1603, label %sw.bb45
    i32 1501, label %sw.bb39
    i32 1502, label %sw.bb39
    i32 1602, label %sw.bb45
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb45, %sw.bb39, %sw.bb31, %sw.bb25, %sw.bb9, %sw.bb4, %sw.bb50, %sw.bb37, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb15, %sw.bb7
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb39 ], [ %e.0, %sw.bb45 ], [ %call52, %sw.bb50 ], [ %e.0, %sw.bb37 ], [ %e.0, %sw.bb31 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb23 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %curve_name.0.be = phi i8* [ %curve_name.0, %sw.bb39 ], [ %curve_name.0, %sw.bb45 ], [ %curve_name.0, %sw.bb50 ], [ %curve_name.0, %sw.bb37 ], [ %curve_name.0, %sw.bb31 ], [ %curve_name.0, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %curve_name.0, %sw.bb22 ], [ %curve_name.0, %sw.bb21 ], [ %curve_name.0, %sw.bb20 ], [ %curve_name.0, %sw.bb19 ], [ %curve_name.0, %sw.bb18 ], [ %curve_name.0, %sw.bb17 ], [ %curve_name.0, %sw.bb15 ], [ %curve_name.0, %sw.bb9 ], [ %curve_name.0, %sw.bb7 ], [ %curve_name.0, %sw.bb4 ], [ %curve_name.0, %while.cond ]
  %asn1_encoding.0.be = phi i8* [ %asn1_encoding.0, %sw.bb39 ], [ %asn1_encoding.0, %sw.bb45 ], [ %asn1_encoding.0, %sw.bb50 ], [ %asn1_encoding.0, %sw.bb37 ], [ %call32, %sw.bb31 ], [ %asn1_encoding.0, %sw.bb25 ], [ %asn1_encoding.0, %sw.bb23 ], [ %asn1_encoding.0, %sw.bb22 ], [ %asn1_encoding.0, %sw.bb21 ], [ %asn1_encoding.0, %sw.bb20 ], [ %asn1_encoding.0, %sw.bb19 ], [ %asn1_encoding.0, %sw.bb18 ], [ %asn1_encoding.0, %sw.bb17 ], [ %asn1_encoding.0, %sw.bb15 ], [ %asn1_encoding.0, %sw.bb9 ], [ %asn1_encoding.0, %sw.bb7 ], [ %asn1_encoding.0, %sw.bb4 ], [ %asn1_encoding.0, %while.cond ]
  %point_format.0.be = phi i8* [ %point_format.0, %sw.bb39 ], [ %point_format.0, %sw.bb45 ], [ %point_format.0, %sw.bb50 ], [ %point_format.0, %sw.bb37 ], [ %point_format.0, %sw.bb31 ], [ %call26, %sw.bb25 ], [ %point_format.0, %sw.bb23 ], [ %point_format.0, %sw.bb22 ], [ %point_format.0, %sw.bb21 ], [ %point_format.0, %sw.bb20 ], [ %point_format.0, %sw.bb19 ], [ %point_format.0, %sw.bb18 ], [ %point_format.0, %sw.bb17 ], [ %point_format.0, %sw.bb15 ], [ %point_format.0, %sw.bb9 ], [ %point_format.0, %sw.bb7 ], [ %point_format.0, %sw.bb4 ], [ %point_format.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb39 ], [ %infile.0, %sw.bb45 ], [ %infile.0, %sw.bb50 ], [ %infile.0, %sw.bb37 ], [ %infile.0, %sw.bb31 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb23 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb39 ], [ %outfile.0, %sw.bb45 ], [ %outfile.0, %sw.bb50 ], [ %outfile.0, %sw.bb37 ], [ %outfile.0, %sw.bb31 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb23 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb39 ], [ %noout.0, %sw.bb45 ], [ %noout.0, %sw.bb50 ], [ %noout.0, %sw.bb37 ], [ %noout.0, %sw.bb31 ], [ %noout.0, %sw.bb25 ], [ %noout.0, %sw.bb23 ], [ 1, %sw.bb22 ], [ %noout.0, %sw.bb21 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb19 ], [ %noout.0, %sw.bb18 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb9 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %no_seed.0.be = phi i32 [ %no_seed.0, %sw.bb39 ], [ %no_seed.0, %sw.bb45 ], [ %no_seed.0, %sw.bb50 ], [ %no_seed.0, %sw.bb37 ], [ %no_seed.0, %sw.bb31 ], [ %no_seed.0, %sw.bb25 ], [ %no_seed.0, %sw.bb23 ], [ %no_seed.0, %sw.bb22 ], [ 1, %sw.bb21 ], [ %no_seed.0, %sw.bb20 ], [ %no_seed.0, %sw.bb19 ], [ %no_seed.0, %sw.bb18 ], [ %no_seed.0, %sw.bb17 ], [ %no_seed.0, %sw.bb15 ], [ %no_seed.0, %sw.bb9 ], [ %no_seed.0, %sw.bb7 ], [ %no_seed.0, %sw.bb4 ], [ %no_seed.0, %while.cond ]
  %check.0.be = phi i32 [ %check.0, %sw.bb39 ], [ %check.0, %sw.bb45 ], [ %check.0, %sw.bb50 ], [ %check.0, %sw.bb37 ], [ %check.0, %sw.bb31 ], [ %check.0, %sw.bb25 ], [ %check.0, %sw.bb23 ], [ %check.0, %sw.bb22 ], [ %check.0, %sw.bb21 ], [ %check.0, %sw.bb20 ], [ %check.0, %sw.bb19 ], [ 1, %sw.bb18 ], [ %check.0, %sw.bb17 ], [ %check.0, %sw.bb15 ], [ %check.0, %sw.bb9 ], [ %check.0, %sw.bb7 ], [ %check.0, %sw.bb4 ], [ %check.0, %while.cond ]
  %check_named.0.be = phi i32 [ %check_named.0, %sw.bb39 ], [ %check_named.0, %sw.bb45 ], [ %check_named.0, %sw.bb50 ], [ %check_named.0, %sw.bb37 ], [ %check_named.0, %sw.bb31 ], [ %check_named.0, %sw.bb25 ], [ %check_named.0, %sw.bb23 ], [ %check_named.0, %sw.bb22 ], [ %check_named.0, %sw.bb21 ], [ %check_named.0, %sw.bb20 ], [ 1, %sw.bb19 ], [ %check_named.0, %sw.bb18 ], [ %check_named.0, %sw.bb17 ], [ %check_named.0, %sw.bb15 ], [ %check_named.0, %sw.bb9 ], [ %check_named.0, %sw.bb7 ], [ %check_named.0, %sw.bb4 ], [ %check_named.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb39 ], [ %text.0, %sw.bb45 ], [ %text.0, %sw.bb50 ], [ %text.0, %sw.bb37 ], [ %text.0, %sw.bb31 ], [ %text.0, %sw.bb25 ], [ %text.0, %sw.bb23 ], [ %text.0, %sw.bb22 ], [ %text.0, %sw.bb21 ], [ %text.0, %sw.bb20 ], [ %text.0, %sw.bb19 ], [ %text.0, %sw.bb18 ], [ 1, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %genkey.0.be = phi i32 [ %genkey.0, %sw.bb39 ], [ %genkey.0, %sw.bb45 ], [ %genkey.0, %sw.bb50 ], [ 1, %sw.bb37 ], [ %genkey.0, %sw.bb31 ], [ %genkey.0, %sw.bb25 ], [ %genkey.0, %sw.bb23 ], [ %genkey.0, %sw.bb22 ], [ %genkey.0, %sw.bb21 ], [ %genkey.0, %sw.bb20 ], [ %genkey.0, %sw.bb19 ], [ %genkey.0, %sw.bb18 ], [ %genkey.0, %sw.bb17 ], [ %genkey.0, %sw.bb15 ], [ %genkey.0, %sw.bb9 ], [ %genkey.0, %sw.bb7 ], [ %genkey.0, %sw.bb4 ], [ %genkey.0, %while.cond ]
  %list_curves.0.be = phi i32 [ %list_curves.0, %sw.bb39 ], [ %list_curves.0, %sw.bb45 ], [ %list_curves.0, %sw.bb50 ], [ %list_curves.0, %sw.bb37 ], [ %list_curves.0, %sw.bb31 ], [ %list_curves.0, %sw.bb25 ], [ %list_curves.0, %sw.bb23 ], [ %list_curves.0, %sw.bb22 ], [ %list_curves.0, %sw.bb21 ], [ 1, %sw.bb20 ], [ %list_curves.0, %sw.bb19 ], [ %list_curves.0, %sw.bb18 ], [ %list_curves.0, %sw.bb17 ], [ %list_curves.0, %sw.bb15 ], [ %list_curves.0, %sw.bb9 ], [ %list_curves.0, %sw.bb7 ], [ %list_curves.0, %sw.bb4 ], [ %list_curves.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb31, %sw.bb25, %sw.bb9, %sw.bb4, %while.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef %call) #6
  br label %if.then212

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([27 x %struct.options_st], [27 x %struct.options_st]* @ecparam_options, i64 0, i64 0)) #6
  br label %cleanup214

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #6
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 2, i32* noundef nonnull %informat) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #6
  %call11 = call i32 @opt_format(i8* noundef %call10, i64 noundef 2, i32* noundef nonnull %outformat) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %opthelp, label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond
  %call24 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  %call26 = call i8* @opt_arg() #6
  %call27 = call i32 @opt_string(i8* noundef %call26, i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @point_format_options, i64 0, i64 0)) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %opthelp, label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  %call32 = call i8* @opt_arg() #6
  %call33 = call i32 @opt_string(i8* noundef %call32, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @asn1_encoding_options, i64 0, i64 0)) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %opthelp, label %while.cond.backedge

sw.bb37:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb39:                                          ; preds = %while.cond, %while.cond
  %call40 = call i32 @opt_rand(i32 noundef %call1) #6
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then212, label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call46 = call i32 @opt_provider(i32 noundef %call1) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then212, label %while.cond.backedge

sw.bb50:                                          ; preds = %while.cond
  %call51 = call i8* @opt_arg() #6
  %call52 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call51, i32 noundef -1, i32 noundef 0) #6
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call53 = call i32 @opt_num_rest() #6
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end56, label %opthelp

if.end56:                                         ; preds = %while.end
  %call57 = call i32 @app_RAND_load() #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then212, label %if.end60

if.end60:                                         ; preds = %if.end56
  %tobool61 = icmp ne i32 %genkey.0, 0
  %5 = load i32, i32* %outformat, align 4, !tbaa !7
  %call62 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %5, i32 noundef %genkey.0) #6
  %cmp63 = icmp eq %struct.bio_st* %call62, null
  br i1 %cmp63, label %if.then212, label %if.end65

if.end65:                                         ; preds = %if.end60
  %tobool66.not = icmp eq i32 %list_curves.0, 0
  br i1 %tobool66.not, label %if.end72, label %end

if.end72:                                         ; preds = %if.end65
  %cmp73.not = icmp eq i8* %curve_name.0, null
  br i1 %cmp73.not, label %if.else117, label %if.then74

if.then74:                                        ; preds = %if.end72
  %6 = bitcast [4 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %6) #5
  %arraydecay = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call75 = call i32 @strcmp(i8* noundef nonnull %curve_name.0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0)) #7
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.end84.sink.split, label %if.else

if.else:                                          ; preds = %if.then74
  %call79 = call i32 @strcmp(i8* noundef nonnull %curve_name.0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0)) #7
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.end84.sink.split, label %if.end84

if.end84.sink.split:                              ; preds = %if.else, %if.then74
  %.sink474 = phi i8* [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.49, i64 0, i64 0), %if.then74 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.52, i64 0, i64 0), %if.else ]
  %curve_name.2.ph = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), %if.then74 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), %if.else ]
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call82 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef %.sink474) #6
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.else
  %curve_name.2 = phi i8* [ %curve_name.0, %if.else ], [ %curve_name.2.ph, %if.end84.sink.split ]
  %incdec.ptr = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params431 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params431, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0), i8* noundef nonnull %curve_name.2, i64 noundef 0) #6
  %cmp85.not = icmp eq i8* %asn1_encoding.0, null
  br i1 %cmp85.not, label %if.end89, label %if.then86

if.then86:                                        ; preds = %if.end84
  %incdec.ptr87 = getelementptr inbounds [4 x %struct.ossl_param_st], [4 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %8 = bitcast %struct.ossl_param_st* %tmp88 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #5
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp88, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %asn1_encoding.0, i64 noundef 0) #6
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #5
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end84
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr87, %if.then86 ], [ %incdec.ptr, %if.end84 ]
  %cmp90.not = icmp eq i8* %point_format.0, null
  br i1 %cmp90.not, label %if.end94, label %if.then91

if.then91:                                        ; preds = %if.end89
  %incdec.ptr92 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %10 = bitcast %struct.ossl_param_st* %tmp93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #5
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp93, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef nonnull %point_format.0, i64 noundef 0) #6
  %11 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end89
  %p.1 = phi %struct.ossl_param_st* [ %incdec.ptr92, %if.then91 ], [ %p.0, %if.end89 ]
  %12 = bitcast %struct.ossl_param_st* %tmp95 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #5
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp95) #6
  %13 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #5
  %call96 = call i32 @strcasecmp(i8* noundef %curve_name.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #7
  %cmp97 = icmp eq i32 %call96, 0
  %. = select i1 %cmp97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0)
  %call101 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %., i8* noundef null) #6
  %cmp103 = icmp eq %struct.evp_pkey_ctx_st* %call101, null
  br i1 %cmp103, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end94
  %call104 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call101) #6
  %cmp105 = icmp slt i32 %call104, 1
  br i1 %cmp105, label %cleanup, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false
  %call108 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %call101, %struct.ossl_param_st* noundef nonnull %arraydecay) #6
  %cmp109 = icmp slt i32 %call108, 1
  br i1 %cmp109, label %cleanup, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false106
  %call111 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call101, %struct.evp_pkey_st** noundef nonnull %params_key) #6
  %cmp112 = icmp slt i32 %call111, 1
  br i1 %cmp112, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false110
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %6) #5
  br label %if.end138

cleanup:                                          ; preds = %if.end94, %lor.lhs.false, %lor.lhs.false106, %lor.lhs.false110
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call114 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %6) #5
  br label %if.then212

if.else117:                                       ; preds = %if.end72
  %15 = load i32, i32* %informat, align 4, !tbaa !7
  %call118 = call %struct.evp_pkey_st* @load_keyparams(i8* noundef %infile.0, i32 noundef %15, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0)) #6
  store %struct.evp_pkey_st* %call118, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %cmp119 = icmp eq %struct.evp_pkey_st* %call118, null
  br i1 %cmp119, label %if.then212, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.else117
  %call121 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %call118, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #6
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then212, label %if.end124

if.end124:                                        ; preds = %lor.lhs.false120
  %tobool125.not = icmp eq i8* %point_format.0, null
  br i1 %tobool125.not, label %if.end130, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end124
  %call126 = call i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef nonnull %call118, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* noundef nonnull %point_format.0) #6
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.then128, label %if.end130

if.then128:                                       ; preds = %land.lhs.true
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call129 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.63, i64 0, i64 0)) #6
  br label %if.then212

if.end130:                                        ; preds = %land.lhs.true, %if.end124
  %cmp131.not = icmp eq i8* %asn1_encoding.0, null
  br i1 %cmp131.not, label %if.end138, label %land.lhs.true132

land.lhs.true132:                                 ; preds = %if.end130
  %call133 = call i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef nonnull %call118, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* noundef nonnull %asn1_encoding.0) #6
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end138

if.then135:                                       ; preds = %land.lhs.true132
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call136 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %if.then212

if.end138:                                        ; preds = %cleanup.thread, %if.end130, %land.lhs.true132
  %gctx_params.1 = phi %struct.evp_pkey_ctx_st* [ null, %land.lhs.true132 ], [ null, %if.end130 ], [ %call101, %cleanup.thread ]
  %tobool139.not = icmp eq i32 %no_seed.0, 0
  br i1 %tobool139.not, label %if.end145, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %if.end138
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %call141 = call i32 @EVP_PKEY_set_octet_string_param(%struct.evp_pkey_st* noundef %18, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i8* noundef null, i64 noundef 0) #6
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then143, label %if.end145

if.then143:                                       ; preds = %land.lhs.true140
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call144 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0)) #6
  br label %if.then212

if.end145:                                        ; preds = %land.lhs.true140, %if.end138
  %tobool146.not = icmp eq i32 %text.0, 0
  br i1 %tobool146.not, label %if.end152, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %if.end145
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %call148 = call i32 @EVP_PKEY_print_params(%struct.bio_st* noundef nonnull %call62, %struct.evp_pkey_st* noundef %20, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then150, label %if.end152

if.then150:                                       ; preds = %land.lhs.true147
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call151 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0)) #6
  br label %if.then212

if.end152:                                        ; preds = %land.lhs.true147, %if.end145
  %tobool153 = icmp ne i32 %check.0, 0
  %tobool155 = icmp ne i32 %check_named.0, 0
  %or.cond = select i1 %tobool153, i1 true, i1 %tobool155
  br i1 %or.cond, label %if.then156, label %if.end174

if.then156:                                       ; preds = %if.end152
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call157 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i64 0, i64 0)) #6
  br i1 %tobool155, label %land.lhs.true159, label %if.end164

land.lhs.true159:                                 ; preds = %if.then156
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %call160 = call i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef %23, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #6
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then162, label %if.end164

if.then162:                                       ; preds = %land.lhs.true159
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call163 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0)) #6
  br label %if.then212

if.end164:                                        ; preds = %land.lhs.true159, %if.then156
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %call165 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %25, i8* noundef null) #6
  %cmp166 = icmp eq %struct.evp_pkey_ctx_st* %call165, null
  br i1 %cmp166, label %if.then170, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.end164
  %call168 = call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef nonnull %call165) #6
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %if.end172

if.then170:                                       ; preds = %lor.lhs.false167, %if.end164
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call171 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %26, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0)) #6
  br label %if.then212

if.end172:                                        ; preds = %lor.lhs.false167
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call173 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0)) #6
  br label %if.end174

if.end174:                                        ; preds = %if.end152, %if.end172
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ %call165, %if.end172 ], [ null, %if.end152 ]
  %28 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp175 = icmp eq i32 %28, 4
  %or.cond242 = select i1 %cmp175, i1 %tobool61, i1 false
  %tobool180.not346 = icmp eq i32 %noout.0, 0
  %not.or.cond242 = xor i1 %or.cond242, true
  %tobool180.not = select i1 %not.or.cond242, i1 %tobool180.not346, i1 false
  br i1 %tobool180.not, label %if.then181, label %if.end190

if.then181:                                       ; preds = %if.end174
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %cond183 = select i1 %cmp175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)
  %call184 = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %29, i32 noundef 4, i8* noundef %cond183, i8* noundef null, i8* noundef null) #6
  %call185 = call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call184, %struct.bio_st* noundef nonnull %call62) #6
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.then187, label %if.end190

if.then187:                                       ; preds = %if.then181
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call188 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0)) #6
  br label %if.then212

if.end190:                                        ; preds = %if.then181, %if.end174
  %ectx_params.0 = phi %struct.ossl_encoder_ctx_st* [ null, %if.end174 ], [ %call184, %if.then181 ]
  br i1 %tobool61, label %if.then192, label %cleanup214

if.then192:                                       ; preds = %if.end190
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  %call193 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %31, i8* noundef null) #6
  %call194 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call193) #6
  %cmp195 = icmp slt i32 %call194, 1
  br i1 %cmp195, label %if.then199, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %if.then192
  %call197 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call193, %struct.evp_pkey_st** noundef nonnull %key) #6
  %cmp198 = icmp slt i32 %call197, 1
  br i1 %cmp198, label %if.then199, label %if.end201

if.then199:                                       ; preds = %lor.lhs.false196, %if.then192
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call200 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0)) #6
  br label %if.then212

if.end201:                                        ; preds = %lor.lhs.false196
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  %34 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp202 = icmp eq i32 %34, 4
  %cond203 = select i1 %cmp202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)
  %call204 = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %33, i32 noundef 135, i8* noundef %cond203, i8* noundef null, i8* noundef null) #6
  %call205 = call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call204, %struct.bio_st* noundef nonnull %call62) #6
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then207, label %cleanup214

if.then207:                                       ; preds = %if.end201
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call208 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %35, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.76, i64 0, i64 0)) #6
  br label %if.then212

end:                                              ; preds = %if.end65
  %call68 = call fastcc i32 @list_builtin_curves(%struct.bio_st* noundef nonnull %call62) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then212, label %cleanup214

if.then212:                                       ; preds = %sw.bb45, %sw.bb39, %if.end56, %lor.lhs.false120, %if.then128, %if.then135, %if.else117, %if.then143, %if.then150, %if.then162, %if.then187, %if.then207, %if.then199, %if.then170, %cleanup, %if.end60, %opthelp, %end
  %out.0326 = phi %struct.bio_st* [ %call62, %end ], [ null, %opthelp ], [ null, %if.end60 ], [ %call62, %cleanup ], [ %call62, %if.then170 ], [ %call62, %if.then199 ], [ %call62, %if.then207 ], [ %call62, %if.then187 ], [ %call62, %if.then162 ], [ %call62, %if.then150 ], [ %call62, %if.then143 ], [ %call62, %if.else117 ], [ %call62, %if.then135 ], [ %call62, %if.then128 ], [ %call62, %lor.lhs.false120 ], [ null, %if.end56 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ]
  %gctx_params.2324 = phi %struct.evp_pkey_ctx_st* [ null, %end ], [ null, %opthelp ], [ null, %if.end60 ], [ %call101, %cleanup ], [ %gctx_params.1, %if.then170 ], [ %gctx_params.1, %if.then199 ], [ %gctx_params.1, %if.then207 ], [ %gctx_params.1, %if.then187 ], [ %gctx_params.1, %if.then162 ], [ %gctx_params.1, %if.then150 ], [ %gctx_params.1, %if.then143 ], [ null, %if.else117 ], [ null, %if.then135 ], [ null, %if.then128 ], [ null, %lor.lhs.false120 ], [ null, %if.end56 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ]
  %ectx_params.1322 = phi %struct.ossl_encoder_ctx_st* [ null, %end ], [ null, %opthelp ], [ null, %if.end60 ], [ null, %cleanup ], [ null, %if.then170 ], [ %ectx_params.0, %if.then199 ], [ %ectx_params.0, %if.then207 ], [ %call184, %if.then187 ], [ null, %if.then162 ], [ null, %if.then150 ], [ null, %if.then143 ], [ null, %if.else117 ], [ null, %if.then135 ], [ null, %if.then128 ], [ null, %lor.lhs.false120 ], [ null, %if.end56 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ]
  %ectx_key.1320 = phi %struct.ossl_encoder_ctx_st* [ null, %end ], [ null, %opthelp ], [ null, %if.end60 ], [ null, %cleanup ], [ null, %if.then170 ], [ null, %if.then199 ], [ %call204, %if.then207 ], [ null, %if.then187 ], [ null, %if.then162 ], [ null, %if.then150 ], [ null, %if.then143 ], [ null, %if.else117 ], [ null, %if.then135 ], [ null, %if.then128 ], [ null, %lor.lhs.false120 ], [ null, %if.end56 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ]
  %pctx.1318 = phi %struct.evp_pkey_ctx_st* [ null, %end ], [ null, %opthelp ], [ null, %if.end60 ], [ null, %cleanup ], [ %call165, %if.then170 ], [ %pctx.0, %if.then199 ], [ %pctx.0, %if.then207 ], [ %pctx.0, %if.then187 ], [ null, %if.then162 ], [ null, %if.then150 ], [ null, %if.then143 ], [ null, %if.else117 ], [ null, %if.then135 ], [ null, %if.then128 ], [ null, %lor.lhs.false120 ], [ null, %if.end56 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ]
  %gctx_key.1316 = phi %struct.evp_pkey_ctx_st* [ null, %end ], [ null, %opthelp ], [ null, %if.end60 ], [ null, %cleanup ], [ null, %if.then170 ], [ %call193, %if.then199 ], [ %call193, %if.then207 ], [ null, %if.then187 ], [ null, %if.then162 ], [ null, %if.then150 ], [ null, %if.then143 ], [ null, %if.else117 ], [ null, %if.then135 ], [ null, %if.then128 ], [ null, %lor.lhs.false120 ], [ null, %if.end56 ], [ null, %sw.bb39 ], [ null, %sw.bb45 ]
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %36) #6
  br label %cleanup214

cleanup214:                                       ; preds = %if.end190, %if.end201, %sw.bb3, %end, %if.then212
  %ret.0329 = phi i32 [ 1, %if.then212 ], [ 0, %end ], [ 0, %sw.bb3 ], [ 0, %if.end201 ], [ 0, %if.end190 ]
  %out.0327 = phi %struct.bio_st* [ %out.0326, %if.then212 ], [ %call62, %end ], [ null, %sw.bb3 ], [ %call62, %if.end201 ], [ %call62, %if.end190 ]
  %gctx_params.2325 = phi %struct.evp_pkey_ctx_st* [ %gctx_params.2324, %if.then212 ], [ null, %end ], [ null, %sw.bb3 ], [ %gctx_params.1, %if.end201 ], [ %gctx_params.1, %if.end190 ]
  %ectx_params.1323 = phi %struct.ossl_encoder_ctx_st* [ %ectx_params.1322, %if.then212 ], [ null, %end ], [ null, %sw.bb3 ], [ %ectx_params.0, %if.end201 ], [ %ectx_params.0, %if.end190 ]
  %ectx_key.1321 = phi %struct.ossl_encoder_ctx_st* [ %ectx_key.1320, %if.then212 ], [ null, %end ], [ null, %sw.bb3 ], [ %call204, %if.end201 ], [ null, %if.end190 ]
  %pctx.1319 = phi %struct.evp_pkey_ctx_st* [ %pctx.1318, %if.then212 ], [ null, %end ], [ null, %sw.bb3 ], [ %pctx.0, %if.end201 ], [ %pctx.0, %if.end190 ]
  %gctx_key.1317 = phi %struct.evp_pkey_ctx_st* [ %gctx_key.1316, %if.then212 ], [ null, %end ], [ null, %sw.bb3 ], [ %call193, %if.end201 ], [ null, %if.end190 ]
  call void @release_engine(%struct.engine_st* noundef %e.0) #6
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params_key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %37) #6
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %38) #6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.1319) #6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %gctx_params.2325) #6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %gctx_key.1317) #6
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef null) #6
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx_params.1323) #6
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx_key.1321) #6
  call void @BIO_free_all(%struct.bio_st* noundef %out.0327) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0329
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_string(i8* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @list_builtin_curves(%struct.bio_st* noundef %out) unnamed_addr #0 {
entry:
  %call = tail call i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef null, i64 noundef 0) #6
  %mul = shl i64 %call, 4
  %call1 = tail call i8* @app_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0)) #6
  %0 = bitcast i8* %call1 to %struct.EC_builtin_curve*
  %call2 = tail call i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef %0, i64 noundef %call) #6
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp32.not = icmp eq i64 %call, 0
  br i1 %cmp32.not, label %end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %n.033 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %comment3 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %n.033, i32 1
  %1 = load i8*, i8** %comment3, align 8, !tbaa !14
  %nid = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %n.033, i32 0
  %2 = load i32, i32* %nid, align 8, !tbaa !16
  %call5 = tail call i8* @OBJ_nid2sn(i32 noundef %2) #6
  %cmp6 = icmp eq i8* %1, null
  %spec.store.select = select i1 %cmp6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i64 0, i64 0), i8* %1
  %cmp9 = icmp eq i8* %call5, null
  %spec.store.select14 = select i1 %cmp9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.84, i64 0, i64 0), i8* %call5
  %call12 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i64 0, i64 0), i8* noundef %spec.store.select14) #6
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0), i8* noundef %spec.store.select) #6
  %inc = add nuw i64 %n.033, 1
  %exitcond.not = icmp eq i64 %inc, %call
  br i1 %exitcond.not, label %end, label %for.body, !llvm.loop !17

end:                                              ; preds = %for.body, %for.cond.preheader, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.body ]
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i64 0, i64 0), i32 noundef 92) #6
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_keyparams(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_set_octet_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

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
!11 = !{i64 0, i64 8, !3, i64 8, i64 4, !7, i64 16, i64 8, !3, i64 24, i64 8, !12, i64 32, i64 8, !12}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!15, !4, i64 8}
!15 = !{!"", !8, i64 0, !4, i64 8}
!16 = !{!15, !8, i64 0}
!17 = distinct !{!17, !10}
