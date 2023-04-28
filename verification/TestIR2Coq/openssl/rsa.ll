; ModuleID = 'apps/rsa.c'
source_filename = "apps/rsa.c"
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
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.ui_method_st = type opaque
%struct.rsa_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Verify key consistency\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Input format (DER/PEM/P12/ENGINE\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Expect a public key in input file\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"RSAPublicKey_in\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Input is an RSAPublicKey\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Output format, one of DER PEM PVK\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Output a public key\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"RSAPublicKey_out\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Output is an RSAPublicKey\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"Don't print key out\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Print the key in text\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Print the RSA key modulus\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"Use traditional format for private keys\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"PVK options:\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"pvk-strong\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Enable 'Strong' PVK encoding level (default)\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"pvk-weak\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"Enable 'Weak' PVK encoding level\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"pvk-none\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Don't enforce PVK encoding\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@rsa_options = dso_local constant [30 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 19, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i32 20, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 10, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 6, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 3, i32 102, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 9, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 18, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 1605, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.53 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"Only private keys can be checked\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"Not an RSA key\0A\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Modulus=\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"RSA unable to create PKEY context\0A\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"RSA key ok\0A\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"RSA key not ok\0A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"writing RSA key\0A\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"MSBLOB\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"%s format not supported\0A\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"encrypt-level\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"invalid PVK encryption level\0A\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"unable to write key\0A\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"apps/rsa.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rsa_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %enc = alloca %struct.evp_cipher_st*, align 8
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %pvk_encr = alloca i32, align 4
  %n = alloca %struct.bignum_st*, align 8
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
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([30 x %struct.options_st], [30 x %struct.options_st]* @rsa_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %ciphername.0 = phi i8* [ null, %entry ], [ %ciphername.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %check.0 = phi i32 [ 0, %entry ], [ %check.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %modulus.0 = phi i32 [ 0, %entry ], [ %modulus.0.be, %while.cond.backedge ]
  %pubin.0 = phi i32 [ 0, %entry ], [ %pubin.0.be, %while.cond.backedge ]
  %pubout.0 = phi i32 [ 0, %entry ], [ %pubout.0.be, %while.cond.backedge ]
  %traditional.0 = phi i32 [ 0, %entry ], [ %traditional.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #6
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1602, label %sw.bb36
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 5, label %sw.bb7
    i32 3, label %sw.bb9
    i32 6, label %sw.bb15
    i32 10, label %sw.bb17
    i32 9, label %sw.bb19
    i32 4, label %sw.bb21
    i32 7, label %sw.bb24
    i32 8, label %sw.bb25
    i32 11, label %sw.bb26
    i32 12, label %sw.bb27
    i32 15, label %sw.bb28
    i32 14, label %sw.bb28
    i32 13, label %sw.bb28
    i32 16, label %sw.bb29
    i32 17, label %sw.bb30
    i32 18, label %sw.bb31
    i32 19, label %sw.bb32
    i32 20, label %sw.bb33
    i32 1605, label %sw.bb41
    i32 1603, label %sw.bb36
    i32 1601, label %sw.bb36
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb36, %sw.bb9, %sw.bb4, %sw.bb41, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb7
  %infile.0.be = phi i8* [ %infile.0, %sw.bb36 ], [ %infile.0, %sw.bb41 ], [ %infile.0, %sw.bb33 ], [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb31 ], [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb36 ], [ %outfile.0, %sw.bb41 ], [ %outfile.0, %sw.bb33 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb31 ], [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb36 ], [ %ciphername.0, %sw.bb41 ], [ %call34, %sw.bb33 ], [ %ciphername.0, %sw.bb32 ], [ %ciphername.0, %sw.bb31 ], [ %ciphername.0, %sw.bb30 ], [ %ciphername.0, %sw.bb29 ], [ %ciphername.0, %sw.bb28 ], [ %ciphername.0, %sw.bb27 ], [ %ciphername.0, %sw.bb26 ], [ %ciphername.0, %sw.bb25 ], [ %ciphername.0, %sw.bb24 ], [ %ciphername.0, %sw.bb21 ], [ %ciphername.0, %sw.bb19 ], [ %ciphername.0, %sw.bb17 ], [ %ciphername.0, %sw.bb15 ], [ %ciphername.0, %sw.bb9 ], [ %ciphername.0, %sw.bb7 ], [ %ciphername.0, %sw.bb4 ], [ %ciphername.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb36 ], [ %e.0, %sw.bb41 ], [ %e.0, %sw.bb33 ], [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb31 ], [ %e.0, %sw.bb30 ], [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb27 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb24 ], [ %call23, %sw.bb21 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb36 ], [ %passinarg.0, %sw.bb41 ], [ %passinarg.0, %sw.bb33 ], [ %passinarg.0, %sw.bb32 ], [ %passinarg.0, %sw.bb31 ], [ %passinarg.0, %sw.bb30 ], [ %passinarg.0, %sw.bb29 ], [ %passinarg.0, %sw.bb28 ], [ %passinarg.0, %sw.bb27 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb25 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb21 ], [ %passinarg.0, %sw.bb19 ], [ %call18, %sw.bb17 ], [ %passinarg.0, %sw.bb15 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb36 ], [ %passoutarg.0, %sw.bb41 ], [ %passoutarg.0, %sw.bb33 ], [ %passoutarg.0, %sw.bb32 ], [ %passoutarg.0, %sw.bb31 ], [ %passoutarg.0, %sw.bb30 ], [ %passoutarg.0, %sw.bb29 ], [ %passoutarg.0, %sw.bb28 ], [ %passoutarg.0, %sw.bb27 ], [ %passoutarg.0, %sw.bb26 ], [ %passoutarg.0, %sw.bb25 ], [ %passoutarg.0, %sw.bb24 ], [ %passoutarg.0, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %passoutarg.0, %sw.bb17 ], [ %passoutarg.0, %sw.bb15 ], [ %passoutarg.0, %sw.bb9 ], [ %passoutarg.0, %sw.bb7 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb36 ], [ %text.0, %sw.bb41 ], [ %text.0, %sw.bb33 ], [ %text.0, %sw.bb32 ], [ %text.0, %sw.bb31 ], [ 1, %sw.bb30 ], [ %text.0, %sw.bb29 ], [ %text.0, %sw.bb28 ], [ %text.0, %sw.bb27 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb25 ], [ %text.0, %sw.bb24 ], [ %text.0, %sw.bb21 ], [ %text.0, %sw.bb19 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb9 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %check.0.be = phi i32 [ %check.0, %sw.bb36 ], [ %check.0, %sw.bb41 ], [ %check.0, %sw.bb33 ], [ 1, %sw.bb32 ], [ %check.0, %sw.bb31 ], [ %check.0, %sw.bb30 ], [ %check.0, %sw.bb29 ], [ %check.0, %sw.bb28 ], [ %check.0, %sw.bb27 ], [ %check.0, %sw.bb26 ], [ %check.0, %sw.bb25 ], [ %check.0, %sw.bb24 ], [ %check.0, %sw.bb21 ], [ %check.0, %sw.bb19 ], [ %check.0, %sw.bb17 ], [ %check.0, %sw.bb15 ], [ %check.0, %sw.bb9 ], [ %check.0, %sw.bb7 ], [ %check.0, %sw.bb4 ], [ %check.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb36 ], [ %noout.0, %sw.bb41 ], [ %noout.0, %sw.bb33 ], [ %noout.0, %sw.bb32 ], [ %noout.0, %sw.bb31 ], [ %noout.0, %sw.bb30 ], [ 1, %sw.bb29 ], [ %noout.0, %sw.bb28 ], [ %noout.0, %sw.bb27 ], [ %noout.0, %sw.bb26 ], [ %noout.0, %sw.bb25 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb21 ], [ %noout.0, %sw.bb19 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb9 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %modulus.0.be = phi i32 [ %modulus.0, %sw.bb36 ], [ %modulus.0, %sw.bb41 ], [ %modulus.0, %sw.bb33 ], [ %modulus.0, %sw.bb32 ], [ 1, %sw.bb31 ], [ %modulus.0, %sw.bb30 ], [ %modulus.0, %sw.bb29 ], [ %modulus.0, %sw.bb28 ], [ %modulus.0, %sw.bb27 ], [ %modulus.0, %sw.bb26 ], [ %modulus.0, %sw.bb25 ], [ %modulus.0, %sw.bb24 ], [ %modulus.0, %sw.bb21 ], [ %modulus.0, %sw.bb19 ], [ %modulus.0, %sw.bb17 ], [ %modulus.0, %sw.bb15 ], [ %modulus.0, %sw.bb9 ], [ %modulus.0, %sw.bb7 ], [ %modulus.0, %sw.bb4 ], [ %modulus.0, %while.cond ]
  %pubin.0.be = phi i32 [ %pubin.0, %sw.bb36 ], [ %pubin.0, %sw.bb41 ], [ %pubin.0, %sw.bb33 ], [ %pubin.0, %sw.bb32 ], [ %pubin.0, %sw.bb31 ], [ %pubin.0, %sw.bb30 ], [ %pubin.0, %sw.bb29 ], [ %pubin.0, %sw.bb28 ], [ %pubin.0, %sw.bb27 ], [ 2, %sw.bb26 ], [ %pubin.0, %sw.bb25 ], [ 1, %sw.bb24 ], [ %pubin.0, %sw.bb21 ], [ %pubin.0, %sw.bb19 ], [ %pubin.0, %sw.bb17 ], [ %pubin.0, %sw.bb15 ], [ %pubin.0, %sw.bb9 ], [ %pubin.0, %sw.bb7 ], [ %pubin.0, %sw.bb4 ], [ %pubin.0, %while.cond ]
  %pubout.0.be = phi i32 [ %pubout.0, %sw.bb36 ], [ %pubout.0, %sw.bb41 ], [ %pubout.0, %sw.bb33 ], [ %pubout.0, %sw.bb32 ], [ %pubout.0, %sw.bb31 ], [ %pubout.0, %sw.bb30 ], [ %pubout.0, %sw.bb29 ], [ %pubout.0, %sw.bb28 ], [ 2, %sw.bb27 ], [ %pubout.0, %sw.bb26 ], [ 1, %sw.bb25 ], [ %pubout.0, %sw.bb24 ], [ %pubout.0, %sw.bb21 ], [ %pubout.0, %sw.bb19 ], [ %pubout.0, %sw.bb17 ], [ %pubout.0, %sw.bb15 ], [ %pubout.0, %sw.bb9 ], [ %pubout.0, %sw.bb7 ], [ %pubout.0, %sw.bb4 ], [ %pubout.0, %while.cond ]
  %traditional.0.be = phi i32 [ %traditional.0, %sw.bb36 ], [ 1, %sw.bb41 ], [ %traditional.0, %sw.bb33 ], [ %traditional.0, %sw.bb32 ], [ %traditional.0, %sw.bb31 ], [ %traditional.0, %sw.bb30 ], [ %traditional.0, %sw.bb29 ], [ %traditional.0, %sw.bb28 ], [ %traditional.0, %sw.bb27 ], [ %traditional.0, %sw.bb26 ], [ %traditional.0, %sw.bb25 ], [ %traditional.0, %sw.bb24 ], [ %traditional.0, %sw.bb21 ], [ %traditional.0, %sw.bb19 ], [ %traditional.0, %sw.bb17 ], [ %traditional.0, %sw.bb15 ], [ %traditional.0, %sw.bb9 ], [ %traditional.0, %sw.bb7 ], [ %traditional.0, %sw.bb4 ], [ %traditional.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb9, %sw.bb4, %if.then47, %while.end
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0), i8* noundef %call) #6
  br label %cleanup236

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([30 x %struct.options_st], [30 x %struct.options_st]* @rsa_options, i64 0, i64 0)) #6
  br label %cleanup236

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
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %while.cond
  %call20 = call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  %call22 = call i8* @opt_arg() #6
  %call23 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call22, i32 noundef -1, i32 noundef 0) #6
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond, %while.cond, %while.cond
  %sub = add nsw i32 %call1, -13
  store i32 %sub, i32* %pvk_encr, align 4, !tbaa !7
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  %call34 = call i8* @opt_unknown() #6
  br label %while.cond.backedge

sw.bb36:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call37 = call i32 @opt_provider(i32 noundef %call1) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %cleanup236, label %while.cond.backedge

sw.bb41:                                          ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call42 = call i32 @opt_num_rest() #6
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end45, label %opthelp

if.end45:                                         ; preds = %while.end
  %cmp46.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %if.end45
  %call48 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %enc) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %opthelp, label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end45
  %tobool53 = icmp eq i32 %text.0, 0
  %tobool54 = icmp ne i32 %pubin.0, 0
  %or.cond = select i1 %tobool53, i1 true, i1 %tobool54
  br i1 %or.cond, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end52
  %tobool55.not = icmp eq i32 %pubout.0, 0
  %tobool56.not = icmp eq i32 %noout.0, 0
  %7 = select i1 %tobool55.not, i1 %tobool56.not, i1 false
  br label %lor.end

lor.end:                                          ; preds = %if.end52, %lor.rhs
  %8 = phi i1 [ %7, %lor.rhs ], [ true, %if.end52 ]
  %cond = zext i1 %8 to i32
  %call57 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef %passoutarg.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #6
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end61

if.then59:                                        ; preds = %lor.end
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call60 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0)) #6
  br label %cleanup236

if.end61:                                         ; preds = %lor.end
  %tobool62 = icmp ne i32 %check.0, 0
  %or.cond266 = select i1 %tobool62, i1 %tobool54, i1 false
  br i1 %or.cond266, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end61
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call66 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i64 0, i64 0)) #6
  br label %cleanup236

if.end67:                                         ; preds = %if.end61
  br i1 %tobool54, label %if.then69, label %if.else81

if.then69:                                        ; preds = %if.end67
  %cmp70 = icmp eq i32 %pubin.0, 2
  %11 = load i32, i32* %informat, align 4, !tbaa !7
  %switch.selectcmp = icmp eq i32 %11, 4
  %switch.select = select i1 %switch.selectcmp, i32 10, i32 0
  %switch.selectcmp357 = icmp eq i32 %11, 32773
  %switch.select358 = select i1 %switch.selectcmp357, i32 32777, i32 %switch.select
  %tmpformat.0 = select i1 %cmp70, i32 %switch.select358, i32 %11
  %12 = load i8*, i8** %passin, align 8, !tbaa !3
  %call80 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef %infile.0, i32 noundef %tmpformat.0, i32 noundef 1, i8* noundef %12, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0)) #6
  br label %if.end83

if.else81:                                        ; preds = %if.end67
  %13 = load i32, i32* %informat, align 4, !tbaa !7
  %14 = load i8*, i8** %passin, align 8, !tbaa !3
  %call82 = call %struct.evp_pkey_st* @load_key(i8* noundef %infile.0, i32 noundef %13, i32 noundef 1, i8* noundef %14, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0)) #6
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then69
  %pkey.0 = phi %struct.evp_pkey_st* [ %call80, %if.then69 ], [ %call82, %if.else81 ]
  %cmp84 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end83
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %15) #6
  br label %cleanup236

if.end86:                                         ; preds = %if.end83
  %call87 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #6
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end86
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call90 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i64 0, i64 0)) #6
  br label %cleanup236

if.end91:                                         ; preds = %if.end86
  %17 = load i32, i32* %outformat, align 4, !tbaa !7
  %call92 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %17, i32 noundef %cond) #6
  %cmp93 = icmp eq %struct.bio_st* %call92, null
  br i1 %cmp93, label %cleanup236, label %if.end95

if.end95:                                         ; preds = %if.end91
  br i1 %tobool53, label %if.end108, label %if.then97

if.then97:                                        ; preds = %if.end95
  br i1 %tobool54, label %land.lhs.true99, label %land.lhs.true103

land.lhs.true99:                                  ; preds = %if.then97
  %call100 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef nonnull %call92, %struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  %cmp101 = icmp slt i32 %call100, 1
  br i1 %cmp101, label %if.then106, label %if.end108

land.lhs.true103:                                 ; preds = %if.then97
  %call104 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef nonnull %call92, %struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  %cmp105 = icmp slt i32 %call104, 1
  br i1 %cmp105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %land.lhs.true103, %land.lhs.true99
  call void @perror(i8* noundef %outfile.0) #6
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %18) #6
  br label %cleanup236

if.end108:                                        ; preds = %land.lhs.true99, %land.lhs.true103, %if.end95
  %tobool109.not = icmp eq i32 %modulus.0, 0
  br i1 %tobool109.not, label %if.end115, label %if.then110

if.then110:                                       ; preds = %if.end108
  %19 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #5
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !3
  %call111 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i64 0, i64 0), %struct.bignum_st** noundef nonnull %n) #6
  %call112 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call92, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0)) #6
  %20 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !3
  %call113 = call i32 @BN_print(%struct.bio_st* noundef nonnull %call92, %struct.bignum_st* noundef %20) #6
  %call114 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call92, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)) #6
  %21 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %21) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end108
  br i1 %tobool62, label %if.then117, label %if.end137

if.then117:                                       ; preds = %if.end115
  %call118 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef null) #6
  %cmp119 = icmp eq %struct.evp_pkey_ctx_st* %call118, null
  br i1 %cmp119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.then117
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call121 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i64 0, i64 0)) #6
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %23) #6
  br label %cleanup236

if.end122:                                        ; preds = %if.then117
  %call123 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef nonnull %call118) #6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef nonnull %call118) #6
  switch i32 %call123, label %if.end137 [
    i32 1, label %if.then125
    i32 0, label %if.then129
    i32 -1, label %if.then133
  ]

if.then125:                                       ; preds = %if.end122
  %call126 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call92, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %if.end137

if.then129:                                       ; preds = %if.end122
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call130 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i64 0, i64 0)) #6
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %25) #6
  br label %if.end137

if.then133:                                       ; preds = %if.end122
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %26) #6
  br label %cleanup236

if.end137:                                        ; preds = %if.then125, %if.then129, %if.end122, %if.end115
  %tobool138.not = icmp eq i32 %noout.0, 0
  br i1 %tobool138.not, label %if.end140, label %cleanup236

if.end140:                                        ; preds = %if.end137
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call141 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i64 0, i64 0)) #6
  %28 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %28, label %if.else157 [
    i32 4, label %if.then172
    i32 32773, label %if.then146
    i32 11, label %if.end162.thread
    i32 12, label %if.then152
  ]

if.then146:                                       ; preds = %if.end140
  br label %if.then172

if.then152:                                       ; preds = %if.end140
  br i1 %tobool54, label %if.then154, label %if.end162.thread

if.then154:                                       ; preds = %if.then152
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call155 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %29, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i64 0, i64 0)) #6
  br label %cleanup236

if.else157:                                       ; preds = %if.end140
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call158 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.72, i64 0, i64 0)) #6
  br label %cleanup236

if.end162.thread:                                 ; preds = %if.then152, %if.end140
  %output_type.0.ph = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), %if.then152 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), %if.end140 ]
  %tobool163361 = icmp ne i32 %pubout.0, 0
  %or.cond267362 = select i1 %tobool163361, i1 true, i1 %tobool54
  %.363 = select i1 %or.cond267362, i32 2, i32 135
  br label %if.end187

if.then172:                                       ; preds = %if.then146, %if.end140
  %output_type.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), %if.then146 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), %if.end140 ]
  %tobool163 = icmp ne i32 %pubout.0, 0
  %or.cond267 = select i1 %tobool163, i1 true, i1 %tobool54
  br i1 %or.cond267, label %if.then176, label %if.else181

if.then176:                                       ; preds = %if.then172
  %cmp177 = icmp eq i32 %pubout.0, 2
  %.355 = select i1 %cmp177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.74, i64 0, i64 0)
  br label %if.end187

if.else181:                                       ; preds = %if.then172
  %tobool182.not = icmp eq i32 %traditional.0, 0
  %.356 = select i1 %tobool182.not, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i64 0, i64 0)
  br label %if.end187

if.end187:                                        ; preds = %if.end162.thread, %if.else181, %if.then176
  %.366 = phi i32 [ 2, %if.then176 ], [ 135, %if.else181 ], [ %.363, %if.end162.thread ]
  %or.cond267365 = phi i1 [ true, %if.then176 ], [ false, %if.else181 ], [ %or.cond267362, %if.end162.thread ]
  %output_type.0364 = phi i8* [ %output_type.0, %if.then176 ], [ %output_type.0, %if.else181 ], [ %output_type.0.ph, %if.end162.thread ]
  %output_structure.0 = phi i8* [ %.355, %if.then176 ], [ %.356, %if.else181 ], [ null, %if.end162.thread ]
  %call188 = call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef %.366, i8* noundef %output_type.0364, i8* noundef %output_structure.0, i8* noundef null) #6
  %call189 = call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call188) #6
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %if.then191, label %if.end202

if.then191:                                       ; preds = %if.end187
  br i1 %or.cond267365, label %lor.lhs.false195, label %if.then198

lor.lhs.false195:                                 ; preds = %if.then191
  %31 = load i32, i32* %outformat, align 4, !tbaa !7
  %call196 = call fastcc i32 @try_legacy_encoding(%struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef %31, i32 noundef %pubout.0, %struct.bio_st* noundef nonnull %call92) #7
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then198, label %cleanup236

if.then198:                                       ; preds = %if.then191, %lor.lhs.false195
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call199 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.76, i64 0, i64 0), i8* noundef %output_type.0364) #6
  br label %cleanup236

if.end202:                                        ; preds = %if.end187
  %33 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %cmp203.not = icmp eq %struct.evp_cipher_st* %33, null
  br i1 %cmp203.not, label %if.end207, label %if.then204

if.then204:                                       ; preds = %if.end202
  %call205 = call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef nonnull %33) #6
  %call206 = call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call188, i8* noundef %call205, i8* noundef null) #6
  %.pre = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %phi.cmp = icmp ne %struct.evp_cipher_st* %.pre, null
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %if.end202
  %34 = phi i1 [ %phi.cmp, %if.then204 ], [ false, %if.end202 ]
  %35 = load i32, i32* %outformat, align 4
  %cmp210 = icmp eq i32 %35, 12
  %or.cond271 = select i1 %34, i1 true, i1 %cmp210
  br i1 %or.cond271, label %if.then211, label %if.end230

if.then211:                                       ; preds = %if.end207
  %call212 = call %struct.ui_method_st* @get_ui_method() #6
  %call213 = call i32 @OSSL_ENCODER_CTX_set_passphrase_ui(%struct.ossl_encoder_ctx_st* noundef %call188, %struct.ui_method_st* noundef %call212, i8* noundef null) #6
  %36 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp214.not = icmp eq i8* %36, null
  br i1 %cmp214.not, label %if.end219, label %if.then215

if.then215:                                       ; preds = %if.then211
  %call216 = call i64 @strlen(i8* noundef nonnull %36) #8
  %call217 = call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %call188, i8* noundef nonnull %36, i64 noundef %call216) #6
  br label %if.end219

if.end219:                                        ; preds = %if.then211, %if.then215
  %.pr = load i32, i32* %outformat, align 4, !tbaa !7
  %cmp220 = icmp eq i32 %.pr, 12
  br i1 %cmp220, label %if.then221, label %if.end230

if.then221:                                       ; preds = %if.end219
  %37 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %37) #5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %37, i8 0, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params453 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params453, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0), i32* noundef nonnull %pvk_encr) #6
  %call222 = call i32 @OSSL_ENCODER_CTX_set_params(%struct.ossl_encoder_ctx_st* noundef %call188, %struct.ossl_param_st* noundef nonnull %arrayidx) #6
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %cleanup227, label %cleanup227.thread

cleanup227.thread:                                ; preds = %if.then221
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %37) #5
  br label %if.end230

cleanup227:                                       ; preds = %if.then221
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call225 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %37) #5
  br label %cleanup236

if.end230:                                        ; preds = %if.end207, %cleanup227.thread, %if.end219
  %call231 = call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call188, %struct.bio_st* noundef nonnull %call92) #6
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.then233, label %cleanup236

if.then233:                                       ; preds = %if.end230
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call234 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0)) #6
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %40) #6
  br label %cleanup236

cleanup236:                                       ; preds = %sw.bb36, %opthelp, %sw.bb3, %if.then59, %if.then65, %if.then85, %if.then89, %if.then106, %if.then154, %if.else157, %if.then233, %if.end91, %if.then198, %if.end137, %lor.lhs.false195, %if.end230, %if.then133, %if.then120, %cleanup227
  %pkey.1 = phi %struct.evp_pkey_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then65 ], [ null, %if.then85 ], [ %pkey.0, %if.end91 ], [ %pkey.0, %if.then106 ], [ %pkey.0, %if.then198 ], [ %pkey.0, %cleanup227 ], [ %pkey.0, %if.then233 ], [ %pkey.0, %if.then154 ], [ %pkey.0, %if.else157 ], [ %pkey.0, %if.then89 ], [ null, %if.then59 ], [ %pkey.0, %if.end137 ], [ %pkey.0, %lor.lhs.false195 ], [ %pkey.0, %if.end230 ], [ %pkey.0, %if.then133 ], [ %pkey.0, %if.then120 ], [ null, %sw.bb36 ]
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then65 ], [ null, %if.then85 ], [ null, %if.end91 ], [ %call92, %if.then106 ], [ %call92, %if.then198 ], [ %call92, %cleanup227 ], [ %call92, %if.then233 ], [ %call92, %if.then154 ], [ %call92, %if.else157 ], [ null, %if.then89 ], [ null, %if.then59 ], [ %call92, %if.end137 ], [ %call92, %lor.lhs.false195 ], [ %call92, %if.end230 ], [ %call92, %if.then133 ], [ %call92, %if.then120 ], [ null, %sw.bb36 ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.then65 ], [ 1, %if.then85 ], [ 1, %if.end91 ], [ 1, %if.then106 ], [ 1, %if.then198 ], [ 1, %cleanup227 ], [ 1, %if.then233 ], [ 1, %if.then154 ], [ 1, %if.else157 ], [ 1, %if.then89 ], [ 1, %if.then59 ], [ 0, %if.end137 ], [ 0, %lor.lhs.false195 ], [ 0, %if.end230 ], [ 1, %if.then133 ], [ 1, %if.then120 ], [ 1, %sw.bb36 ]
  %ectx.0 = phi %struct.ossl_encoder_ctx_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then65 ], [ null, %if.then85 ], [ null, %if.end91 ], [ null, %if.then106 ], [ %call188, %if.then198 ], [ %call188, %cleanup227 ], [ %call188, %if.then233 ], [ null, %if.then154 ], [ null, %if.else157 ], [ null, %if.then89 ], [ null, %if.then59 ], [ null, %if.end137 ], [ %call188, %lor.lhs.false195 ], [ %call188, %if.end230 ], [ null, %if.then133 ], [ null, %if.then120 ], [ null, %sw.bb36 ]
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx.0) #6
  call void @release_engine(%struct.engine_st* noundef %e.0) #6
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #6
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #6
  %41 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %41) #6
  %42 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %42, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i64 0, i64 0), i32 noundef 412) #6
  %43 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %43, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i64 0, i64 0), i32 noundef 413) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @try_legacy_encoding(%struct.evp_pkey_st* noundef %pkey, i32 noundef %outformat, i32 noundef %pubout, %struct.bio_st* noundef %out) unnamed_addr #0 {
entry:
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %pkey) #6
  %cmp = icmp eq %struct.rsa_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %outformat, label %if.else26 [
    i32 4, label %if.then2
    i32 32773, label %if.then14
  ]

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i32 %pubout, 2
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %call5 = tail call i32 @i2d_RSAPublicKey_bio(%struct.bio_st* noundef %out, %struct.rsa_st* noundef nonnull %call) #6
  %cmp6 = icmp sgt i32 %call5, 0
  br label %if.end37

if.else:                                          ; preds = %if.then2
  %call7 = tail call i32 @i2d_RSA_PUBKEY_bio(%struct.bio_st* noundef %out, %struct.rsa_st* noundef nonnull %call) #6
  %cmp8 = icmp sgt i32 %call7, 0
  br label %if.end37

if.then14:                                        ; preds = %if.end
  %cmp15 = icmp eq i32 %pubout, 2
  br i1 %cmp15, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.then14
  %call18 = tail call i32 @PEM_write_bio_RSAPublicKey(%struct.bio_st* noundef %out, %struct.rsa_st* noundef nonnull %call) #6
  %cmp19 = icmp sgt i32 %call18, 0
  br label %if.end37

if.else21:                                        ; preds = %if.then14
  %call22 = tail call i32 @PEM_write_bio_RSA_PUBKEY(%struct.bio_st* noundef %out, %struct.rsa_st* noundef nonnull %call) #6
  %cmp23 = icmp sgt i32 %call22, 0
  br label %if.end37

if.else26:                                        ; preds = %if.end
  %0 = add i32 %outformat, -11
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.else26
  %call32 = tail call i32 @i2b_PublicKey_bio(%struct.bio_st* noundef %out, %struct.evp_pkey_st* noundef %pkey) #6
  %cmp33 = icmp sgt i32 %call32, 0
  br label %if.end37

if.end37:                                         ; preds = %if.else21, %if.then17, %if.else26, %if.then31, %if.then4, %if.else
  %ret.0.shrunk = phi i1 [ %cmp6, %if.then4 ], [ %cmp8, %if.else ], [ %cmp19, %if.then17 ], [ %cmp23, %if.else21 ], [ %cmp33, %if.then31 ], [ false, %if.else26 ]
  %ret.0 = zext i1 %ret.0.shrunk to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end37
  %retval.0 = phi i32 [ %ret.0, %if.end37 ], [ 0, %entry ]
  ret i32 %retval.0
}

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

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_RSAPublicKey_bio(%struct.bio_st* noundef, %struct.rsa_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_RSA_PUBKEY_bio(%struct.bio_st* noundef, %struct.rsa_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_RSAPublicKey(%struct.bio_st* noundef, %struct.rsa_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_RSA_PUBKEY(%struct.bio_st* noundef, %struct.rsa_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2b_PublicKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
