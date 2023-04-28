; ModuleID = 'apps/ec.c'
source_filename = "apps/ec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Input format (DER/PEM/P12/ENGINE)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Expect a public key in input file\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"check key consistency\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"param_enc\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Specifies the way the ec parameters are encoded\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"conv_form\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Specifies the point conversion form \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Output format - DER or PEM\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Don't print key out\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Print the key\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"param_out\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Print the elliptic curve parameters\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Output public key, not private\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"no_public\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"exclude public key from private key\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.41 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@ec_options = dso_local constant [26 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 18, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 15, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 6, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.46 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@point_format_options = internal global [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* null], align 16
@asn1_encoding_options = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* null], align 16
@.str.47 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"read EC key\0A\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"unable to load Key\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"unable to set point conversion format\0A\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"unable to set asn1 encoding format\0A\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"include-public\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"unable to disable public key encoding\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"unable to enable public key encoding\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"unable to print EC key\0A\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"unable to check EC key\0A\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"EC Key Invalid!\0A\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"EC Key valid.\0A\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"writing EC key\0A\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"unable to write EC key\0A\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"apps/ec.c\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ec_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %enc = alloca %struct.evp_cipher_st*, align 8
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %0 = bitcast %struct.evp_cipher_st** %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %1 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store i8* null, i8** %passin, align 8, !tbaa !3
  %2 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store i8* null, i8** %passout, align 8, !tbaa !3
  %3 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 0, i32* %informat, align 4, !tbaa !7
  %4 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([26 x %struct.options_st], [26 x %struct.options_st]* @ec_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %ciphername.0 = phi i8* [ null, %entry ], [ %ciphername.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %pubin.0 = phi i32 [ 0, %entry ], [ %pubin.0.be, %while.cond.backedge ]
  %pubout.0 = phi i32 [ 0, %entry ], [ %pubout.0.be, %while.cond.backedge ]
  %param_out.0 = phi i32 [ 0, %entry ], [ %param_out.0.be, %while.cond.backedge ]
  %check.0 = phi i32 [ 0, %entry ], [ %check.0.be, %while.cond.backedge ]
  %asn1_encoding.0 = phi i8* [ null, %entry ], [ %asn1_encoding.0.be, %while.cond.backedge ]
  %point_format.0 = phi i8* [ null, %entry ], [ %point_format.0.be, %while.cond.backedge ]
  %no_public.0 = phi i32 [ 0, %entry ], [ %no_public.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb46
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 5, label %sw.bb7
    i32 3, label %sw.bb9
    i32 6, label %sw.bb15
    i32 7, label %sw.bb17
    i32 8, label %sw.bb18
    i32 9, label %sw.bb19
    i32 10, label %sw.bb20
    i32 11, label %sw.bb21
    i32 12, label %sw.bb22
    i32 13, label %sw.bb24
    i32 4, label %sw.bb26
    i32 16, label %sw.bb29
    i32 15, label %sw.bb31
    i32 14, label %sw.bb37
    i32 17, label %sw.bb43
    i32 18, label %sw.bb44
    i32 1603, label %sw.bb46
    i32 1602, label %sw.bb46
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb46, %sw.bb37, %sw.bb31, %sw.bb9, %sw.bb4, %sw.bb44, %sw.bb43, %sw.bb29, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb15, %sw.bb7
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb46 ], [ %e.0, %sw.bb44 ], [ %e.0, %sw.bb43 ], [ %e.0, %sw.bb37 ], [ %e.0, %sw.bb31 ], [ %e.0, %sw.bb29 ], [ %call28, %sw.bb26 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb46 ], [ %infile.0, %sw.bb44 ], [ %infile.0, %sw.bb43 ], [ %infile.0, %sw.bb37 ], [ %infile.0, %sw.bb31 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb46 ], [ %outfile.0, %sw.bb44 ], [ %outfile.0, %sw.bb43 ], [ %outfile.0, %sw.bb37 ], [ %outfile.0, %sw.bb31 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb46 ], [ %ciphername.0, %sw.bb44 ], [ %ciphername.0, %sw.bb43 ], [ %ciphername.0, %sw.bb37 ], [ %ciphername.0, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %ciphername.0, %sw.bb26 ], [ %ciphername.0, %sw.bb24 ], [ %ciphername.0, %sw.bb22 ], [ %ciphername.0, %sw.bb21 ], [ %ciphername.0, %sw.bb20 ], [ %ciphername.0, %sw.bb19 ], [ %ciphername.0, %sw.bb18 ], [ %ciphername.0, %sw.bb17 ], [ %ciphername.0, %sw.bb15 ], [ %ciphername.0, %sw.bb9 ], [ %ciphername.0, %sw.bb7 ], [ %ciphername.0, %sw.bb4 ], [ %ciphername.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb46 ], [ %passinarg.0, %sw.bb44 ], [ %passinarg.0, %sw.bb43 ], [ %passinarg.0, %sw.bb37 ], [ %passinarg.0, %sw.bb31 ], [ %passinarg.0, %sw.bb29 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %passinarg.0, %sw.bb21 ], [ %passinarg.0, %sw.bb20 ], [ %passinarg.0, %sw.bb19 ], [ %passinarg.0, %sw.bb18 ], [ %passinarg.0, %sw.bb17 ], [ %passinarg.0, %sw.bb15 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb46 ], [ %passoutarg.0, %sw.bb44 ], [ %passoutarg.0, %sw.bb43 ], [ %passoutarg.0, %sw.bb37 ], [ %passoutarg.0, %sw.bb31 ], [ %passoutarg.0, %sw.bb29 ], [ %passoutarg.0, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %passoutarg.0, %sw.bb22 ], [ %passoutarg.0, %sw.bb21 ], [ %passoutarg.0, %sw.bb20 ], [ %passoutarg.0, %sw.bb19 ], [ %passoutarg.0, %sw.bb18 ], [ %passoutarg.0, %sw.bb17 ], [ %passoutarg.0, %sw.bb15 ], [ %passoutarg.0, %sw.bb9 ], [ %passoutarg.0, %sw.bb7 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb46 ], [ %text.0, %sw.bb44 ], [ %text.0, %sw.bb43 ], [ %text.0, %sw.bb37 ], [ %text.0, %sw.bb31 ], [ %text.0, %sw.bb29 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb24 ], [ %text.0, %sw.bb22 ], [ %text.0, %sw.bb21 ], [ %text.0, %sw.bb20 ], [ %text.0, %sw.bb19 ], [ 1, %sw.bb18 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb46 ], [ %noout.0, %sw.bb44 ], [ %noout.0, %sw.bb43 ], [ %noout.0, %sw.bb37 ], [ %noout.0, %sw.bb31 ], [ %noout.0, %sw.bb29 ], [ %noout.0, %sw.bb26 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb22 ], [ %noout.0, %sw.bb21 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb19 ], [ %noout.0, %sw.bb18 ], [ 1, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb9 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %pubin.0.be = phi i32 [ %pubin.0, %sw.bb46 ], [ %pubin.0, %sw.bb44 ], [ %pubin.0, %sw.bb43 ], [ %pubin.0, %sw.bb37 ], [ %pubin.0, %sw.bb31 ], [ %pubin.0, %sw.bb29 ], [ %pubin.0, %sw.bb26 ], [ %pubin.0, %sw.bb24 ], [ %pubin.0, %sw.bb22 ], [ %pubin.0, %sw.bb21 ], [ 1, %sw.bb20 ], [ %pubin.0, %sw.bb19 ], [ %pubin.0, %sw.bb18 ], [ %pubin.0, %sw.bb17 ], [ %pubin.0, %sw.bb15 ], [ %pubin.0, %sw.bb9 ], [ %pubin.0, %sw.bb7 ], [ %pubin.0, %sw.bb4 ], [ %pubin.0, %while.cond ]
  %pubout.0.be = phi i32 [ %pubout.0, %sw.bb46 ], [ %pubout.0, %sw.bb44 ], [ %pubout.0, %sw.bb43 ], [ %pubout.0, %sw.bb37 ], [ %pubout.0, %sw.bb31 ], [ %pubout.0, %sw.bb29 ], [ %pubout.0, %sw.bb26 ], [ %pubout.0, %sw.bb24 ], [ %pubout.0, %sw.bb22 ], [ 1, %sw.bb21 ], [ %pubout.0, %sw.bb20 ], [ %pubout.0, %sw.bb19 ], [ %pubout.0, %sw.bb18 ], [ %pubout.0, %sw.bb17 ], [ %pubout.0, %sw.bb15 ], [ %pubout.0, %sw.bb9 ], [ %pubout.0, %sw.bb7 ], [ %pubout.0, %sw.bb4 ], [ %pubout.0, %while.cond ]
  %param_out.0.be = phi i32 [ %param_out.0, %sw.bb46 ], [ %param_out.0, %sw.bb44 ], [ %param_out.0, %sw.bb43 ], [ %param_out.0, %sw.bb37 ], [ %param_out.0, %sw.bb31 ], [ %param_out.0, %sw.bb29 ], [ %param_out.0, %sw.bb26 ], [ %param_out.0, %sw.bb24 ], [ %param_out.0, %sw.bb22 ], [ %param_out.0, %sw.bb21 ], [ %param_out.0, %sw.bb20 ], [ 1, %sw.bb19 ], [ %param_out.0, %sw.bb18 ], [ %param_out.0, %sw.bb17 ], [ %param_out.0, %sw.bb15 ], [ %param_out.0, %sw.bb9 ], [ %param_out.0, %sw.bb7 ], [ %param_out.0, %sw.bb4 ], [ %param_out.0, %while.cond ]
  %check.0.be = phi i32 [ %check.0, %sw.bb46 ], [ 1, %sw.bb44 ], [ %check.0, %sw.bb43 ], [ %check.0, %sw.bb37 ], [ %check.0, %sw.bb31 ], [ %check.0, %sw.bb29 ], [ %check.0, %sw.bb26 ], [ %check.0, %sw.bb24 ], [ %check.0, %sw.bb22 ], [ %check.0, %sw.bb21 ], [ %check.0, %sw.bb20 ], [ %check.0, %sw.bb19 ], [ %check.0, %sw.bb18 ], [ %check.0, %sw.bb17 ], [ %check.0, %sw.bb15 ], [ %check.0, %sw.bb9 ], [ %check.0, %sw.bb7 ], [ %check.0, %sw.bb4 ], [ %check.0, %while.cond ]
  %asn1_encoding.0.be = phi i8* [ %asn1_encoding.0, %sw.bb46 ], [ %asn1_encoding.0, %sw.bb44 ], [ %asn1_encoding.0, %sw.bb43 ], [ %call38, %sw.bb37 ], [ %asn1_encoding.0, %sw.bb31 ], [ %asn1_encoding.0, %sw.bb29 ], [ %asn1_encoding.0, %sw.bb26 ], [ %asn1_encoding.0, %sw.bb24 ], [ %asn1_encoding.0, %sw.bb22 ], [ %asn1_encoding.0, %sw.bb21 ], [ %asn1_encoding.0, %sw.bb20 ], [ %asn1_encoding.0, %sw.bb19 ], [ %asn1_encoding.0, %sw.bb18 ], [ %asn1_encoding.0, %sw.bb17 ], [ %asn1_encoding.0, %sw.bb15 ], [ %asn1_encoding.0, %sw.bb9 ], [ %asn1_encoding.0, %sw.bb7 ], [ %asn1_encoding.0, %sw.bb4 ], [ %asn1_encoding.0, %while.cond ]
  %point_format.0.be = phi i8* [ %point_format.0, %sw.bb46 ], [ %point_format.0, %sw.bb44 ], [ %point_format.0, %sw.bb43 ], [ %point_format.0, %sw.bb37 ], [ %call32, %sw.bb31 ], [ %point_format.0, %sw.bb29 ], [ %point_format.0, %sw.bb26 ], [ %point_format.0, %sw.bb24 ], [ %point_format.0, %sw.bb22 ], [ %point_format.0, %sw.bb21 ], [ %point_format.0, %sw.bb20 ], [ %point_format.0, %sw.bb19 ], [ %point_format.0, %sw.bb18 ], [ %point_format.0, %sw.bb17 ], [ %point_format.0, %sw.bb15 ], [ %point_format.0, %sw.bb9 ], [ %point_format.0, %sw.bb7 ], [ %point_format.0, %sw.bb4 ], [ %point_format.0, %while.cond ]
  %no_public.0.be = phi i32 [ %no_public.0, %sw.bb46 ], [ %no_public.0, %sw.bb44 ], [ 1, %sw.bb43 ], [ %no_public.0, %sw.bb37 ], [ %no_public.0, %sw.bb31 ], [ %no_public.0, %sw.bb29 ], [ %no_public.0, %sw.bb26 ], [ %no_public.0, %sw.bb24 ], [ %no_public.0, %sw.bb22 ], [ %no_public.0, %sw.bb21 ], [ %no_public.0, %sw.bb20 ], [ %no_public.0, %sw.bb19 ], [ %no_public.0, %sw.bb18 ], [ %no_public.0, %sw.bb17 ], [ %no_public.0, %sw.bb15 ], [ %no_public.0, %sw.bb9 ], [ %no_public.0, %sw.bb7 ], [ %no_public.0, %sw.bb4 ], [ %no_public.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb37, %sw.bb31, %sw.bb9, %sw.bb4, %if.then56, %while.end
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call) #5
  br label %if.then183

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([26 x %struct.options_st], [26 x %struct.options_st]* @ec_options, i64 0, i64 0)) #5
  br label %if.end184

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 1982, i32* noundef nonnull %informat) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #5
  %call11 = call i32 @opt_format(i8* noundef %call10, i64 noundef 2, i32* noundef nonnull %outformat) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %opthelp, label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #5
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
  %call23 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  %call25 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  %call27 = call i8* @opt_arg() #5
  %call28 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call27, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  %call30 = call i8* @opt_unknown() #5
  br label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  %call32 = call i8* @opt_arg() #5
  %call33 = call i32 @opt_string(i8* noundef %call32, i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @point_format_options, i64 0, i64 0)) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %opthelp, label %while.cond.backedge

sw.bb37:                                          ; preds = %while.cond
  %call38 = call i8* @opt_arg() #5
  %call39 = call i32 @opt_string(i8* noundef %call38, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @asn1_encoding_options, i64 0, i64 0)) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %opthelp, label %while.cond.backedge

sw.bb43:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb44:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call47 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then183, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call51 = call i32 @opt_num_rest() #5
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end54, label %opthelp

if.end54:                                         ; preds = %while.end
  %cmp55.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp55.not, label %if.end61, label %if.then56

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %enc) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %opthelp, label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end54
  %tobool62 = icmp ne i32 %param_out.0, 0
  %tobool63 = icmp ne i32 %pubin.0, 0
  %or.cond = select i1 %tobool62, i1 true, i1 %tobool63
  %tobool64 = icmp ne i32 %pubout.0, 0
  %spec.select = select i1 %or.cond, i1 true, i1 %tobool64
  %tobool65 = icmp eq i32 %text.0, 0
  %or.cond222 = select i1 %tobool65, i1 true, i1 %tobool63
  %6 = select i1 %or.cond222, i1 %spec.select, i1 false
  %narrow = xor i1 %6, true
  %spec.store.select = zext i1 %narrow to i32
  %call69 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef %passoutarg.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #5
  %tobool70.not = icmp eq i32 %call69, 0
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %tobool70.not, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end61
  %call72 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0)) #5
  br label %if.then183

if.end73:                                         ; preds = %if.end61
  %call74 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0)) #5
  %8 = load i32, i32* %informat, align 4, !tbaa !7
  %9 = load i8*, i8** %passin, align 8, !tbaa !3
  br i1 %tobool63, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end73
  %call77 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef %infile.0, i32 noundef %8, i32 noundef 1, i8* noundef %9, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0)) #5
  br label %if.end79

if.else:                                          ; preds = %if.end73
  %call78 = call %struct.evp_pkey_st* @load_key(i8* noundef %infile.0, i32 noundef %8, i32 noundef 1, i8* noundef %9, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)) #5
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then76
  %eckey.0 = phi %struct.evp_pkey_st* [ %call77, %if.then76 ], [ %call78, %if.else ]
  %cmp80 = icmp eq %struct.evp_pkey_st* %eckey.0, null
  br i1 %cmp80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end79
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call82 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0)) #5
  br label %if.then183

if.end83:                                         ; preds = %if.end79
  %11 = load i32, i32* %outformat, align 4, !tbaa !7
  %call84 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %11, i32 noundef %spec.store.select) #5
  %cmp85 = icmp eq %struct.bio_st* %call84, null
  br i1 %cmp85, label %if.then183, label %if.end87

if.end87:                                         ; preds = %if.end83
  %tobool88.not = icmp eq i8* %point_format.0, null
  br i1 %tobool88.not, label %if.end94, label %land.lhs.true89

land.lhs.true89:                                  ; preds = %if.end87
  %call90 = call i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef nonnull %eckey.0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull %point_format.0) #5
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.end94

if.then92:                                        ; preds = %land.lhs.true89
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call93 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0)) #5
  br label %if.then183

if.end94:                                         ; preds = %land.lhs.true89, %if.end87
  %cmp95.not = icmp eq i8* %asn1_encoding.0, null
  br i1 %cmp95.not, label %if.end101, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %if.end94
  %call97 = call i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef nonnull %eckey.0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i8* noundef nonnull %asn1_encoding.0) #5
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end101

if.then99:                                        ; preds = %land.lhs.true96
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0)) #5
  br label %if.then183

if.end101:                                        ; preds = %land.lhs.true96, %if.end94
  %tobool102.not = icmp eq i32 %no_public.0, 0
  br i1 %tobool102.not, label %if.else109, label %if.then103

if.then103:                                       ; preds = %if.end101
  %call104 = call i32 @EVP_PKEY_set_int_param(%struct.evp_pkey_st* noundef nonnull %eckey.0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i32 noundef 0) #5
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then106, label %if.end115

if.then106:                                       ; preds = %if.then103
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call107 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0)) #5
  br label %if.then183

if.else109:                                       ; preds = %if.end101
  %call110 = call i32 @EVP_PKEY_set_int_param(%struct.evp_pkey_st* noundef nonnull %eckey.0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i32 noundef 1) #5
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.else109
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call113 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.58, i64 0, i64 0)) #5
  br label %if.then183

if.end115:                                        ; preds = %if.else109, %if.then103
  br i1 %tobool65, label %if.end130, label %if.then117

if.then117:                                       ; preds = %if.end115
  br i1 %tobool63, label %land.lhs.true119, label %land.lhs.true124

land.lhs.true119:                                 ; preds = %if.then117
  %call120 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef nonnull %call84, %struct.evp_pkey_st* noundef nonnull %eckey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  %cmp121 = icmp slt i32 %call120, 1
  br i1 %cmp121, label %if.then127, label %if.end130

land.lhs.true124:                                 ; preds = %if.then117
  %call125 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef nonnull %call84, %struct.evp_pkey_st* noundef nonnull %eckey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  %cmp126 = icmp slt i32 %call125, 1
  br i1 %cmp126, label %if.then127, label %if.end130

if.then127:                                       ; preds = %land.lhs.true124, %land.lhs.true119
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call128 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.then183

if.end130:                                        ; preds = %land.lhs.true119, %land.lhs.true124, %if.end115
  %tobool131.not = icmp eq i32 %check.0, 0
  br i1 %tobool131.not, label %if.end145, label %if.then132

if.then132:                                       ; preds = %if.end130
  %call133 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef nonnull %eckey.0, i8* noundef null) #5
  %cmp134 = icmp eq %struct.evp_pkey_ctx_st* %call133, null
  br i1 %cmp134, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then132
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call136 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0)) #5
  br label %if.then183

if.end137:                                        ; preds = %if.then132
  %call138 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef nonnull %call133) #5
  %tobool139.not = icmp eq i32 %call138, 0
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %.455 = select i1 %tobool139.not, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0)
  %call143 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef %.455) #5
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %19) #5
  br label %if.end145

if.end145:                                        ; preds = %if.end137, %if.end130
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ %call133, %if.end137 ], [ null, %if.end130 ]
  %tobool146.not = icmp eq i32 %noout.0, 0
  br i1 %tobool146.not, label %if.then147, label %if.end184

if.then147:                                       ; preds = %if.end145
  %20 = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp148 = icmp eq i32 %20, 4
  %cond149 = select i1 %cmp148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call150 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0)) #5
  %or.cond223 = select i1 %tobool63, i1 true, i1 %tobool64
  %. = select i1 %or.cond223, i32 6, i32 135
  %.292 = select i1 %or.cond223, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0)
  %selection.0 = select i1 %tobool62, i32 4, i32 %.
  %output_structure.0 = select i1 %tobool62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8* %.292
  %call161 = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef nonnull %eckey.0, i32 noundef %selection.0, i8* noundef %cond149, i8* noundef %output_structure.0, i8* noundef null) #5
  %22 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %cmp162.not = icmp eq %struct.evp_cipher_st* %22, null
  br i1 %cmp162.not, label %if.end173, label %if.then163

if.then163:                                       ; preds = %if.then147
  %call164 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %22) #5
  %call165 = call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call161, i8* noundef %call164, i8* noundef null) #5
  %call166 = call %struct.ui_method_st* @get_ui_method() #5
  %call167 = call i32 @OSSL_ENCODER_CTX_set_passphrase_ui(%struct.ossl_encoder_ctx_st* noundef %call161, %struct.ui_method_st* noundef %call166, i8* noundef null) #5
  %23 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp168.not = icmp eq i8* %23, null
  br i1 %cmp168.not, label %if.end173, label %if.then169

if.then169:                                       ; preds = %if.then163
  %call170 = call i64 @strlen(i8* noundef nonnull %23) #6
  %call171 = call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %call161, i8* noundef nonnull %23, i64 noundef %call170) #5
  br label %if.end173

if.end173:                                        ; preds = %if.then163, %if.then169, %if.then147
  %call174 = call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call161, %struct.bio_st* noundef nonnull %call84) #5
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %cleanup, label %if.end184

cleanup:                                          ; preds = %if.end173
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call177 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %if.then183

if.then183:                                       ; preds = %sw.bb46, %opthelp, %if.then81, %if.end83, %if.then127, %if.then135, %cleanup, %if.then106, %if.then112, %if.then99, %if.then92, %if.then71
  %pctx.1.ph = phi %struct.evp_pkey_ctx_st* [ null, %if.then71 ], [ null, %if.then92 ], [ null, %if.then99 ], [ null, %if.then112 ], [ null, %if.then106 ], [ %pctx.0, %cleanup ], [ null, %if.then135 ], [ null, %if.then127 ], [ null, %if.end83 ], [ null, %if.then81 ], [ null, %opthelp ], [ null, %sw.bb46 ]
  %eckey.1.ph = phi %struct.evp_pkey_st* [ null, %if.then71 ], [ %eckey.0, %if.then92 ], [ %eckey.0, %if.then99 ], [ %eckey.0, %if.then112 ], [ %eckey.0, %if.then106 ], [ %eckey.0, %cleanup ], [ %eckey.0, %if.then135 ], [ %eckey.0, %if.then127 ], [ %eckey.0, %if.end83 ], [ null, %if.then81 ], [ null, %opthelp ], [ null, %sw.bb46 ]
  %out.0.ph = phi %struct.bio_st* [ null, %if.then71 ], [ %call84, %if.then92 ], [ %call84, %if.then99 ], [ %call84, %if.then112 ], [ %call84, %if.then106 ], [ %call84, %cleanup ], [ %call84, %if.then135 ], [ %call84, %if.then127 ], [ null, %if.end83 ], [ null, %if.then81 ], [ null, %opthelp ], [ null, %sw.bb46 ]
  %ectx.1.ph = phi %struct.ossl_encoder_ctx_st* [ null, %if.then71 ], [ null, %if.then92 ], [ null, %if.then99 ], [ null, %if.then112 ], [ null, %if.then106 ], [ %call161, %cleanup ], [ null, %if.then135 ], [ null, %if.then127 ], [ null, %if.end83 ], [ null, %if.then81 ], [ null, %opthelp ], [ null, %sw.bb46 ]
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %25) #5
  br label %if.end184

if.end184:                                        ; preds = %if.end173, %sw.bb3, %if.end145, %if.then183
  %ret.0309 = phi i32 [ 1, %if.then183 ], [ 0, %sw.bb3 ], [ 0, %if.end145 ], [ 0, %if.end173 ]
  %ectx.1307 = phi %struct.ossl_encoder_ctx_st* [ %ectx.1.ph, %if.then183 ], [ null, %sw.bb3 ], [ null, %if.end145 ], [ %call161, %if.end173 ]
  %out.0305 = phi %struct.bio_st* [ %out.0.ph, %if.then183 ], [ null, %sw.bb3 ], [ %call84, %if.end145 ], [ %call84, %if.end173 ]
  %eckey.1303 = phi %struct.evp_pkey_st* [ %eckey.1.ph, %if.then183 ], [ null, %sw.bb3 ], [ %eckey.0, %if.end145 ], [ %eckey.0, %if.end173 ]
  %pctx.1301 = phi %struct.evp_pkey_ctx_st* [ %pctx.1.ph, %if.then183 ], [ null, %sw.bb3 ], [ %pctx.0, %if.end145 ], [ %pctx.0, %if.end173 ]
  call void @BIO_free_all(%struct.bio_st* noundef %out.0305) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %eckey.1303) #5
  %26 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %26) #5
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx.1307) #5
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef null) #5
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.1301) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  %27 = load i8*, i8** %passin, align 8, !tbaa !3
  %cmp185.not = icmp eq i8* %27, null
  br i1 %cmp185.not, label %if.end188, label %if.then186

if.then186:                                       ; preds = %if.end184
  %call187 = call i64 @strlen(i8* noundef nonnull %27) #6
  call void @CRYPTO_clear_free(i8* noundef nonnull %27, i64 noundef %call187, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i32 noundef 290) #5
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.end184
  %28 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp189.not = icmp eq i8* %28, null
  br i1 %cmp189.not, label %cleanup193, label %if.then190

if.then190:                                       ; preds = %if.end188
  %call191 = call i64 @strlen(i8* noundef nonnull %28) #6
  call void @CRYPTO_clear_free(i8* noundef nonnull %28, i64 noundef %call191, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i32 noundef 292) #5
  br label %cleanup193

cleanup193:                                       ; preds = %if.end188, %if.then190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0309
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

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_string(i8* noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_pubkey(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_set_utf8_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_set_int_param(%struct.evp_pkey_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_passphrase_ui(%struct.ossl_encoder_ctx_st* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ui_method_st* @get_ui_method() local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
