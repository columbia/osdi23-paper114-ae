; ModuleID = 'apps/dsa.c'
source_filename = "apps/dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.bignum_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.ui_method_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"pvk-strong\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Enable 'Strong' PVK encoding level (default)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pvk-weak\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Enable 'Weak' PVK encoding level\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pvk-none\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Don't enforce PVK encoding\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Use engine e, possibly a hardware device\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Input key\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Input format (DER/PEM/PVK); has no effect\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Expect a public key in input file\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Output format, DER PEM PVK\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Don't print key out\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Print the key in text\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Print the DSA public value\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Output public key, not private\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@dsa_options = dso_local constant [25 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 16, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 3, i32 102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 17, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.44 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"read DSA key\0A\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"unable to load Key\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"Not a DSA key\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Public Key=\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"writing DSA key\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"MSBLOB\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"%s format not supported\0A\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"encrypt-level\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"invalid PVK encryption level\0A\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"unable to write key\0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"apps/dsa.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dsa_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %enc = alloca %struct.evp_cipher_st*, align 8
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %pvk_encr = alloca i32, align 4
  %pub_key = alloca %struct.bignum_st*, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.evp_cipher_st** %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %1 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %passin, align 8, !tbaa !3
  %2 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* null, i8** %passout, align 8, !tbaa !3
  %3 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5
  store i32 0, i32* %informat, align 4, !tbaa !7
  %4 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #5
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %5 = bitcast i32* %pvk_encr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5
  store i32 2, i32* %pvk_encr, align 4, !tbaa !7
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([25 x %struct.options_st], [25 x %struct.options_st]* @dsa_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %modulus.0 = phi i32 [ 0, %entry ], [ %modulus.0.be, %while.cond.backedge ]
  %pubin.0 = phi i32 [ 0, %entry ], [ %pubin.0.be, %while.cond.backedge ]
  %pubout.0 = phi i32 [ 0, %entry ], [ %pubout.0.be, %while.cond.backedge ]
  %ciphername.0 = phi i8* [ null, %entry ], [ %ciphername.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #6
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb33
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
    i32 3, label %sw.bb9
    i32 5, label %sw.bb15
    i32 6, label %sw.bb17
    i32 16, label %sw.bb20
    i32 17, label %sw.bb22
    i32 9, label %sw.bb24
    i32 8, label %sw.bb24
    i32 7, label %sw.bb24
    i32 10, label %sw.bb25
    i32 11, label %sw.bb26
    i32 12, label %sw.bb27
    i32 13, label %sw.bb28
    i32 14, label %sw.bb29
    i32 15, label %sw.bb30
    i32 1603, label %sw.bb33
    i32 1602, label %sw.bb33
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb33, %sw.bb9, %sw.bb4, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb17, %sw.bb15, %sw.bb7
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb33 ], [ %e.0, %sw.bb30 ], [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb27 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb33 ], [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb33 ], [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb33 ], [ %passinarg.0, %sw.bb30 ], [ %passinarg.0, %sw.bb29 ], [ %passinarg.0, %sw.bb28 ], [ %passinarg.0, %sw.bb27 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb25 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %passinarg.0, %sw.bb17 ], [ %passinarg.0, %sw.bb15 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb33 ], [ %passoutarg.0, %sw.bb30 ], [ %passoutarg.0, %sw.bb29 ], [ %passoutarg.0, %sw.bb28 ], [ %passoutarg.0, %sw.bb27 ], [ %passoutarg.0, %sw.bb26 ], [ %passoutarg.0, %sw.bb25 ], [ %passoutarg.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %passoutarg.0, %sw.bb20 ], [ %passoutarg.0, %sw.bb17 ], [ %passoutarg.0, %sw.bb15 ], [ %passoutarg.0, %sw.bb9 ], [ %passoutarg.0, %sw.bb7 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb33 ], [ %text.0, %sw.bb30 ], [ %text.0, %sw.bb29 ], [ %text.0, %sw.bb28 ], [ %text.0, %sw.bb27 ], [ 1, %sw.bb26 ], [ %text.0, %sw.bb25 ], [ %text.0, %sw.bb24 ], [ %text.0, %sw.bb22 ], [ %text.0, %sw.bb20 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb33 ], [ %noout.0, %sw.bb30 ], [ %noout.0, %sw.bb29 ], [ %noout.0, %sw.bb28 ], [ %noout.0, %sw.bb27 ], [ %noout.0, %sw.bb26 ], [ 1, %sw.bb25 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb22 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb9 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %modulus.0.be = phi i32 [ %modulus.0, %sw.bb33 ], [ %modulus.0, %sw.bb30 ], [ %modulus.0, %sw.bb29 ], [ %modulus.0, %sw.bb28 ], [ 1, %sw.bb27 ], [ %modulus.0, %sw.bb26 ], [ %modulus.0, %sw.bb25 ], [ %modulus.0, %sw.bb24 ], [ %modulus.0, %sw.bb22 ], [ %modulus.0, %sw.bb20 ], [ %modulus.0, %sw.bb17 ], [ %modulus.0, %sw.bb15 ], [ %modulus.0, %sw.bb9 ], [ %modulus.0, %sw.bb7 ], [ %modulus.0, %sw.bb4 ], [ %modulus.0, %while.cond ]
  %pubin.0.be = phi i32 [ %pubin.0, %sw.bb33 ], [ %pubin.0, %sw.bb30 ], [ %pubin.0, %sw.bb29 ], [ 1, %sw.bb28 ], [ %pubin.0, %sw.bb27 ], [ %pubin.0, %sw.bb26 ], [ %pubin.0, %sw.bb25 ], [ %pubin.0, %sw.bb24 ], [ %pubin.0, %sw.bb22 ], [ %pubin.0, %sw.bb20 ], [ %pubin.0, %sw.bb17 ], [ %pubin.0, %sw.bb15 ], [ %pubin.0, %sw.bb9 ], [ %pubin.0, %sw.bb7 ], [ %pubin.0, %sw.bb4 ], [ %pubin.0, %while.cond ]
  %pubout.0.be = phi i32 [ %pubout.0, %sw.bb33 ], [ %pubout.0, %sw.bb30 ], [ 1, %sw.bb29 ], [ %pubout.0, %sw.bb28 ], [ %pubout.0, %sw.bb27 ], [ %pubout.0, %sw.bb26 ], [ %pubout.0, %sw.bb25 ], [ %pubout.0, %sw.bb24 ], [ %pubout.0, %sw.bb22 ], [ %pubout.0, %sw.bb20 ], [ %pubout.0, %sw.bb17 ], [ %pubout.0, %sw.bb15 ], [ %pubout.0, %sw.bb9 ], [ %pubout.0, %sw.bb7 ], [ %pubout.0, %sw.bb4 ], [ %pubout.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb33 ], [ %call31, %sw.bb30 ], [ %ciphername.0, %sw.bb29 ], [ %ciphername.0, %sw.bb28 ], [ %ciphername.0, %sw.bb27 ], [ %ciphername.0, %sw.bb26 ], [ %ciphername.0, %sw.bb25 ], [ %ciphername.0, %sw.bb24 ], [ %ciphername.0, %sw.bb22 ], [ %ciphername.0, %sw.bb20 ], [ %ciphername.0, %sw.bb17 ], [ %ciphername.0, %sw.bb15 ], [ %ciphername.0, %sw.bb9 ], [ %ciphername.0, %sw.bb7 ], [ %ciphername.0, %sw.bb4 ], [ %ciphername.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb9, %sw.bb4, %while.end
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i8* noundef %call) #6
  br label %cleanup186

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([25 x %struct.options_st], [25 x %struct.options_st]* @dsa_options, i64 0, i64 0)) #6
  br label %cleanup186

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #6
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 1982, i32* noundef nonnull %informat) #6
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #6
  %call11 = call i32 @opt_format(i8* noundef %call10, i64 noundef 1982, i32* noundef nonnull %outformat) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %opthelp, label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %while.cond
  %call18 = call i8* @opt_arg() #6
  %call19 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call18, i32 noundef -1, i32 noundef 0) #6
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond, %while.cond, %while.cond
  %sub = add nsw i32 %call1, -7
  store i32 %sub, i32* %pvk_encr, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %call31 = call i8* @opt_unknown() #6
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call34 = call i32 @opt_provider(i32 noundef %call1) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then184, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call38 = call i32 @opt_num_rest() #6
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end41, label %opthelp

if.end41:                                         ; preds = %while.end
  %cmp42.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp42.not, label %if.end48, label %if.then43

if.then43:                                        ; preds = %if.end41
  %call44 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %enc) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then184, label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end41
  %tobool49 = icmp ne i32 %pubin.0, 0
  %tobool50 = icmp ne i32 %pubout.0, 0
  %7 = select i1 %tobool49, i1 true, i1 %tobool50
  %tobool51 = icmp eq i32 %text.0, 0
  %or.cond = select i1 %tobool51, i1 true, i1 %tobool49
  %8 = select i1 %or.cond, i1 %7, i1 false
  %narrow = xor i1 %8, true
  %spec.store.select = zext i1 %narrow to i32
  %call55 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef %passoutarg.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #6
  %tobool56.not = icmp eq i32 %call55, 0
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %tobool56.not, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end48
  %call58 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0)) #6
  br label %if.then184

if.end59:                                         ; preds = %if.end48
  %call60 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0)) #6
  %10 = load i32, i32* %informat, align 4, !tbaa !7
  %11 = load i8*, i8** %passin, align 8, !tbaa !3
  br i1 %tobool49, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end59
  %call63 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef %infile.0, i32 noundef %10, i32 noundef 1, i8* noundef %11, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0)) #6
  br label %if.end65

if.else:                                          ; preds = %if.end59
  %call64 = call %struct.evp_pkey_st* @load_key(i8* noundef %infile.0, i32 noundef %10, i32 noundef 1, i8* noundef %11, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then62
  %pkey.0 = phi %struct.evp_pkey_st* [ %call63, %if.then62 ], [ %call64, %if.else ]
  %cmp66 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end65
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call68 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i64 0, i64 0)) #6
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %13) #6
  br label %if.then184

if.end69:                                         ; preds = %if.end65
  %call70 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #6
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end69
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call73 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %if.then184

if.end74:                                         ; preds = %if.end69
  %15 = load i32, i32* %outformat, align 4, !tbaa !7
  %call75 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %15, i32 noundef %spec.store.select) #6
  %cmp76 = icmp eq %struct.bio_st* %call75, null
  br i1 %cmp76, label %if.then184, label %if.end78

if.end78:                                         ; preds = %if.end74
  br i1 %tobool51, label %if.end91, label %if.then80

if.then80:                                        ; preds = %if.end78
  br i1 %tobool49, label %land.lhs.true82, label %land.lhs.true86

land.lhs.true82:                                  ; preds = %if.then80
  %call83 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef nonnull %call75, %struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  %cmp84 = icmp slt i32 %call83, 1
  br i1 %cmp84, label %if.then89, label %if.end91

land.lhs.true86:                                  ; preds = %if.then80
  %call87 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef nonnull %call75, %struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  %cmp88 = icmp slt i32 %call87, 1
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %land.lhs.true86, %land.lhs.true82
  call void @perror(i8* noundef %outfile.0) #6
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %16) #6
  br label %if.then184

if.end91:                                         ; preds = %land.lhs.true82, %land.lhs.true86, %if.end78
  %tobool92.not = icmp eq i32 %modulus.0, 0
  br i1 %tobool92.not, label %if.end101, label %if.then93

if.then93:                                        ; preds = %if.end91
  %17 = bitcast %struct.bignum_st** %pub_key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5
  store %struct.bignum_st* null, %struct.bignum_st** %pub_key, align 8, !tbaa !3
  %call94 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), %struct.bignum_st** noundef nonnull %pub_key) #6
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then93
  %call98 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call75, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0)) #6
  %18 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !3
  %call99 = call i32 @BN_print(%struct.bio_st* noundef nonnull %call75, %struct.bignum_st* noundef %18) #6
  %call100 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call75, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)) #6
  %19 = load %struct.bignum_st*, %struct.bignum_st** %pub_key, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %19) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5
  br label %if.end101

cleanup:                                          ; preds = %if.then93
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %20) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5
  br label %if.then184

if.end101:                                        ; preds = %cleanup.thread, %if.end91
  %tobool102.not = icmp eq i32 %noout.0, 0
  br i1 %tobool102.not, label %if.end104, label %cleanup186

if.end104:                                        ; preds = %if.end101
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call105 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %21, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0)) #6
  %22 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %22, label %if.else121 [
    i32 4, label %if.then130
    i32 32773, label %if.then110
    i32 11, label %if.end137
    i32 12, label %if.then116
  ]

if.then110:                                       ; preds = %if.end104
  br label %if.then130

if.then116:                                       ; preds = %if.end104
  br i1 %tobool49, label %if.then118, label %if.end137

if.then118:                                       ; preds = %if.then116
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call119 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0)) #6
  br label %if.then184

if.else121:                                       ; preds = %if.end104
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call122 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i64 0, i64 0)) #6
  br label %if.then184

if.then130:                                       ; preds = %if.then110, %if.end104
  %output_type.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), %if.then110 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), %if.end104 ]
  %or.cond214 = select i1 %tobool50, i1 true, i1 %tobool49
  %. = select i1 %or.cond214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0)
  br label %if.end137

if.end137:                                        ; preds = %if.end104, %if.then116, %if.then130
  %output_type.0283 = phi i8* [ %output_type.0, %if.then130 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), %if.then116 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), %if.end104 ]
  %output_structure.0 = phi i8* [ %., %if.then130 ], [ null, %if.then116 ], [ null, %if.end104 ]
  %or.cond215 = select i1 %tobool50, i1 true, i1 %tobool49
  %.280 = select i1 %or.cond215, i32 2, i32 135
  %call144 = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef %.280, i8* noundef %output_type.0283, i8* noundef %output_structure.0, i8* noundef null) #6
  %call145 = call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call144) #6
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end137
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call148 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0), i8* noundef %output_type.0283) #6
  br label %if.then184

if.end149:                                        ; preds = %if.end137
  %26 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %cmp150.not = icmp eq %struct.evp_cipher_st* %26, null
  br i1 %cmp150.not, label %if.end154, label %if.then151

if.then151:                                       ; preds = %if.end149
  %call152 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %26) #6
  %call153 = call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call144, i8* noundef %call152, i8* noundef null) #6
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %phi.cmp = icmp ne %struct.evp_cipher_st* %.pre, null
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end149
  %27 = phi i1 [ %phi.cmp, %if.then151 ], [ false, %if.end149 ]
  %28 = load i32, i32* %outformat, align 4
  %cmp157 = icmp eq i32 %28, 12
  %or.cond216 = select i1 %27, i1 true, i1 %cmp157
  br i1 %or.cond216, label %if.then158, label %if.end177

if.then158:                                       ; preds = %if.end154
  %call159 = call %struct.ui_method_st* @get_ui_method() #6
  %call160 = call i32 @OSSL_ENCODER_CTX_set_passphrase_ui(%struct.ossl_encoder_ctx_st* noundef %call144, %struct.ui_method_st* noundef %call159, i8* noundef null) #6
  %29 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp161.not = icmp eq i8* %29, null
  br i1 %cmp161.not, label %if.end166, label %if.then162

if.then162:                                       ; preds = %if.then158
  %call163 = call i64 @strlen(i8* noundef nonnull %29) #7
  %call164 = call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %call144, i8* noundef nonnull %29, i64 noundef %call163) #6
  br label %if.end166

if.end166:                                        ; preds = %if.then158, %if.then162
  %.pr = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp167 = icmp eq i32 %.pr, 12
  br i1 %cmp167, label %if.then168, label %if.end177

if.then168:                                       ; preds = %if.end166
  %30 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %30) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %30, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params372 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params372, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32* noundef nonnull %pvk_encr) #6
  %call169 = call i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef %call144, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %cleanup174, label %cleanup174.thread

cleanup174.thread:                                ; preds = %if.then168
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %30) #5
  br label %if.end177

cleanup174:                                       ; preds = %if.then168
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call172 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %31, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.66, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %30) #5
  br label %if.then184

if.end177:                                        ; preds = %if.end154, %cleanup174.thread, %if.end166
  %call178 = call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call144, %struct.bio_st* noundef nonnull %call75) #6
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.then180, label %cleanup186

if.then180:                                       ; preds = %if.end177
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call181 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0)) #6
  br label %if.then184

if.then184:                                       ; preds = %sw.bb33, %if.then67, %if.end74, %if.then89, %cleanup, %if.then147, %cleanup174, %if.then180, %if.then118, %if.else121, %if.then72, %if.then57, %if.then43
  %out.0.ph = phi %struct.bio_st* [ null, %if.then43 ], [ null, %if.then57 ], [ null, %if.then72 ], [ %call75, %if.else121 ], [ %call75, %if.then118 ], [ %call75, %if.then180 ], [ %call75, %cleanup174 ], [ %call75, %if.then147 ], [ %call75, %cleanup ], [ %call75, %if.then89 ], [ null, %if.end74 ], [ null, %if.then67 ], [ null, %sw.bb33 ]
  %pkey.1.ph = phi %struct.evp_pkey_st* [ null, %if.then43 ], [ null, %if.then57 ], [ %pkey.0, %if.then72 ], [ %pkey.0, %if.else121 ], [ %pkey.0, %if.then118 ], [ %pkey.0, %if.then180 ], [ %pkey.0, %cleanup174 ], [ %pkey.0, %if.then147 ], [ %pkey.0, %cleanup ], [ %pkey.0, %if.then89 ], [ %pkey.0, %if.end74 ], [ null, %if.then67 ], [ null, %sw.bb33 ]
  %ectx.0.ph = phi %struct.ossl_encoder_ctx_st* [ null, %if.then43 ], [ null, %if.then57 ], [ null, %if.then72 ], [ null, %if.else121 ], [ null, %if.then118 ], [ %call144, %if.then180 ], [ %call144, %cleanup174 ], [ %call144, %if.then147 ], [ null, %cleanup ], [ null, %if.then89 ], [ null, %if.end74 ], [ null, %if.then67 ], [ null, %sw.bb33 ]
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %33) #6
  br label %cleanup186

cleanup186:                                       ; preds = %if.then184, %if.end177, %if.end101, %sw.bb3, %opthelp
  %ectx.0298 = phi %struct.ossl_encoder_ctx_st* [ %ectx.0.ph, %if.then184 ], [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end101 ], [ %call144, %if.end177 ]
  %ret.0296 = phi i32 [ 1, %if.then184 ], [ 0, %opthelp ], [ 0, %sw.bb3 ], [ 0, %if.end101 ], [ 0, %if.end177 ]
  %pkey.1294 = phi %struct.evp_pkey_st* [ %pkey.1.ph, %if.then184 ], [ null, %opthelp ], [ null, %sw.bb3 ], [ %pkey.0, %if.end101 ], [ %pkey.0, %if.end177 ]
  %out.0292 = phi %struct.bio_st* [ %out.0.ph, %if.then184 ], [ null, %opthelp ], [ null, %sw.bb3 ], [ %call75, %if.end101 ], [ %call75, %if.end177 ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx.0298) #6
  call void @BIO_free_all(%struct.bio_st* noundef %out.0292) #6
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1294) #6
  %34 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %34) #6
  call void @release_engine(%struct.engine_st* noundef %e.0) #6
  %35 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %35, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32 noundef 308) #6
  %36 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %36, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32 noundef 309) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0296
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

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_pubkey(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local void @perror(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare dso_local i32 @BN_print(%struct.bio_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_passphrase_ui(%struct.ossl_encoder_ctx_st* noundef, %struct.ui_method_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ui_method_st* @get_ui_method() local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
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
