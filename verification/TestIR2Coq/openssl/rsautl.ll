; ModuleID = 'apps/rsautl.c'
source_filename = "apps/rsautl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.x509_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Sign with private key\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Verify with public key\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Encrypt with public key\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Decrypt with private key\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"inkey\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Input key\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"Private key format (ENGINE, other values ignored)\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Input is an RSA public\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"certin\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Input is a cert carrying an RSA public key\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Reverse the order of the input buffer\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Use no padding\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"pkcs\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Use PKCS#1 v1.5 padding (default)\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"x931\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Use ANSI X9.31 padding\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"oaep\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"Use PKCS#1 OAEP\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"asn1parse\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"Run output through asn1parse; useful with -verify\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"hexdump\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Hex dump output\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@rsautl_options = dso_local constant [31 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 3, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 20, i32 69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 4, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.50, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.55 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"A private key is needed for this operation\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"hold rsa key\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"output rsa key\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"Error reading input Data\0A\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"RSA operation error\0A\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"apps/rsautl.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rsautl_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %passin = alloca i8*, align 8
  %rsa_outlen = alloca i64, align 8
  %keyformat = alloca i32, align 4
  %0 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* null, i8** %passin, align 8, !tbaa !3
  %1 = bitcast i64* %rsa_outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store i64 0, i64* %rsa_outlen, align 8, !tbaa !7
  %2 = bitcast i32* %keyformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 0, i32* %keyformat, align 4, !tbaa !9
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([31 x %struct.options_st], [31 x %struct.options_st]* @rsautl_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %keyfile.0 = phi i8* [ null, %entry ], [ %keyfile.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %rsa_mode.0 = phi i8 [ 2, %entry ], [ %rsa_mode.0.be, %while.cond.backedge ]
  %key_type.0 = phi i8 [ 1, %entry ], [ %key_type.0.be, %while.cond.backedge ]
  %pad.0 = phi i8 [ 1, %entry ], [ %pad.0.be, %while.cond.backedge ]
  %hexdump.0 = phi i32 [ 0, %entry ], [ %hexdump.0.be, %while.cond.backedge ]
  %asn1parse.0 = phi i32 [ 0, %entry ], [ %asn1parse.0.be, %while.cond.backedge ]
  %need_priv.0 = phi i32 [ 0, %entry ], [ %need_priv.0.be, %while.cond.backedge ]
  %rev.0 = phi i32 [ 0, %entry ], [ %rev.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb38
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 20, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb9
    i32 2, label %sw.bb11
    i32 5, label %sw.bb14
    i32 6, label %sw.bb15
    i32 7, label %sw.bb16
    i32 8, label %sw.bb17
    i32 9, label %sw.bb18
    i32 10, label %sw.bb19
    i32 11, label %sw.bb20
    i32 12, label %sw.bb21
    i32 13, label %sw.bb22
    i32 14, label %sw.bb23
    i32 15, label %sw.bb24
    i32 16, label %sw.bb25
    i32 17, label %sw.bb26
    i32 18, label %sw.bb27
    i32 19, label %sw.bb29
    i32 1603, label %sw.bb38
    i32 1602, label %sw.bb38
    i32 1501, label %sw.bb32
    i32 1502, label %sw.bb32
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb38, %sw.bb32, %sw.bb4, %sw.bb29, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb11, %sw.bb9, %sw.bb7
  %infile.0.be = phi i8* [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb38 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb23 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb16 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb14 ], [ %infile.0, %sw.bb11 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb38 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb23 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb17 ], [ %outfile.0, %sw.bb16 ], [ %outfile.0, %sw.bb15 ], [ %outfile.0, %sw.bb14 ], [ %outfile.0, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %keyfile.0.be = phi i8* [ %keyfile.0, %sw.bb32 ], [ %keyfile.0, %sw.bb38 ], [ %keyfile.0, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %keyfile.0, %sw.bb26 ], [ %keyfile.0, %sw.bb25 ], [ %keyfile.0, %sw.bb24 ], [ %keyfile.0, %sw.bb23 ], [ %keyfile.0, %sw.bb22 ], [ %keyfile.0, %sw.bb21 ], [ %keyfile.0, %sw.bb20 ], [ %keyfile.0, %sw.bb19 ], [ %keyfile.0, %sw.bb18 ], [ %keyfile.0, %sw.bb17 ], [ %keyfile.0, %sw.bb16 ], [ %keyfile.0, %sw.bb15 ], [ %keyfile.0, %sw.bb14 ], [ %keyfile.0, %sw.bb11 ], [ %keyfile.0, %sw.bb9 ], [ %keyfile.0, %sw.bb7 ], [ %keyfile.0, %sw.bb4 ], [ %keyfile.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb32 ], [ %passinarg.0, %sw.bb38 ], [ %call30, %sw.bb29 ], [ %passinarg.0, %sw.bb27 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb25 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb23 ], [ %passinarg.0, %sw.bb22 ], [ %passinarg.0, %sw.bb21 ], [ %passinarg.0, %sw.bb20 ], [ %passinarg.0, %sw.bb19 ], [ %passinarg.0, %sw.bb18 ], [ %passinarg.0, %sw.bb17 ], [ %passinarg.0, %sw.bb16 ], [ %passinarg.0, %sw.bb15 ], [ %passinarg.0, %sw.bb14 ], [ %passinarg.0, %sw.bb11 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb38 ], [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb27 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb23 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb16 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb14 ], [ %call13, %sw.bb11 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %rsa_mode.0.be = phi i8 [ %rsa_mode.0, %sw.bb32 ], [ %rsa_mode.0, %sw.bb38 ], [ %rsa_mode.0, %sw.bb29 ], [ %rsa_mode.0, %sw.bb27 ], [ %rsa_mode.0, %sw.bb26 ], [ %rsa_mode.0, %sw.bb25 ], [ 4, %sw.bb24 ], [ 3, %sw.bb23 ], [ %rsa_mode.0, %sw.bb22 ], [ 2, %sw.bb21 ], [ 1, %sw.bb20 ], [ %rsa_mode.0, %sw.bb19 ], [ %rsa_mode.0, %sw.bb18 ], [ %rsa_mode.0, %sw.bb17 ], [ %rsa_mode.0, %sw.bb16 ], [ %rsa_mode.0, %sw.bb15 ], [ %rsa_mode.0, %sw.bb14 ], [ %rsa_mode.0, %sw.bb11 ], [ %rsa_mode.0, %sw.bb9 ], [ %rsa_mode.0, %sw.bb7 ], [ %rsa_mode.0, %sw.bb4 ], [ %rsa_mode.0, %while.cond ]
  %key_type.0.be = phi i8 [ %key_type.0, %sw.bb32 ], [ %key_type.0, %sw.bb38 ], [ %key_type.0, %sw.bb29 ], [ %key_type.0, %sw.bb27 ], [ 3, %sw.bb26 ], [ 2, %sw.bb25 ], [ %key_type.0, %sw.bb24 ], [ %key_type.0, %sw.bb23 ], [ %key_type.0, %sw.bb22 ], [ %key_type.0, %sw.bb21 ], [ %key_type.0, %sw.bb20 ], [ %key_type.0, %sw.bb19 ], [ %key_type.0, %sw.bb18 ], [ %key_type.0, %sw.bb17 ], [ %key_type.0, %sw.bb16 ], [ %key_type.0, %sw.bb15 ], [ %key_type.0, %sw.bb14 ], [ %key_type.0, %sw.bb11 ], [ %key_type.0, %sw.bb9 ], [ %key_type.0, %sw.bb7 ], [ %key_type.0, %sw.bb4 ], [ %key_type.0, %while.cond ]
  %pad.0.be = phi i8 [ %pad.0, %sw.bb32 ], [ %pad.0, %sw.bb38 ], [ %pad.0, %sw.bb29 ], [ %pad.0, %sw.bb27 ], [ %pad.0, %sw.bb26 ], [ %pad.0, %sw.bb25 ], [ %pad.0, %sw.bb24 ], [ %pad.0, %sw.bb23 ], [ %pad.0, %sw.bb22 ], [ %pad.0, %sw.bb21 ], [ %pad.0, %sw.bb20 ], [ 5, %sw.bb19 ], [ 1, %sw.bb18 ], [ 4, %sw.bb17 ], [ 3, %sw.bb16 ], [ %pad.0, %sw.bb15 ], [ %pad.0, %sw.bb14 ], [ %pad.0, %sw.bb11 ], [ %pad.0, %sw.bb9 ], [ %pad.0, %sw.bb7 ], [ %pad.0, %sw.bb4 ], [ %pad.0, %while.cond ]
  %hexdump.0.be = phi i32 [ %hexdump.0, %sw.bb32 ], [ %hexdump.0, %sw.bb38 ], [ %hexdump.0, %sw.bb29 ], [ %hexdump.0, %sw.bb27 ], [ %hexdump.0, %sw.bb26 ], [ %hexdump.0, %sw.bb25 ], [ %hexdump.0, %sw.bb24 ], [ %hexdump.0, %sw.bb23 ], [ %hexdump.0, %sw.bb22 ], [ %hexdump.0, %sw.bb21 ], [ %hexdump.0, %sw.bb20 ], [ %hexdump.0, %sw.bb19 ], [ %hexdump.0, %sw.bb18 ], [ %hexdump.0, %sw.bb17 ], [ %hexdump.0, %sw.bb16 ], [ 1, %sw.bb15 ], [ %hexdump.0, %sw.bb14 ], [ %hexdump.0, %sw.bb11 ], [ %hexdump.0, %sw.bb9 ], [ %hexdump.0, %sw.bb7 ], [ %hexdump.0, %sw.bb4 ], [ %hexdump.0, %while.cond ]
  %asn1parse.0.be = phi i32 [ %asn1parse.0, %sw.bb32 ], [ %asn1parse.0, %sw.bb38 ], [ %asn1parse.0, %sw.bb29 ], [ %asn1parse.0, %sw.bb27 ], [ %asn1parse.0, %sw.bb26 ], [ %asn1parse.0, %sw.bb25 ], [ %asn1parse.0, %sw.bb24 ], [ %asn1parse.0, %sw.bb23 ], [ %asn1parse.0, %sw.bb22 ], [ %asn1parse.0, %sw.bb21 ], [ %asn1parse.0, %sw.bb20 ], [ %asn1parse.0, %sw.bb19 ], [ %asn1parse.0, %sw.bb18 ], [ %asn1parse.0, %sw.bb17 ], [ %asn1parse.0, %sw.bb16 ], [ %asn1parse.0, %sw.bb15 ], [ 1, %sw.bb14 ], [ %asn1parse.0, %sw.bb11 ], [ %asn1parse.0, %sw.bb9 ], [ %asn1parse.0, %sw.bb7 ], [ %asn1parse.0, %sw.bb4 ], [ %asn1parse.0, %while.cond ]
  %need_priv.0.be = phi i32 [ %need_priv.0, %sw.bb32 ], [ %need_priv.0, %sw.bb38 ], [ %need_priv.0, %sw.bb29 ], [ %need_priv.0, %sw.bb27 ], [ %need_priv.0, %sw.bb26 ], [ %need_priv.0, %sw.bb25 ], [ 1, %sw.bb24 ], [ %need_priv.0, %sw.bb23 ], [ %need_priv.0, %sw.bb22 ], [ %need_priv.0, %sw.bb21 ], [ 1, %sw.bb20 ], [ %need_priv.0, %sw.bb19 ], [ %need_priv.0, %sw.bb18 ], [ %need_priv.0, %sw.bb17 ], [ %need_priv.0, %sw.bb16 ], [ %need_priv.0, %sw.bb15 ], [ %need_priv.0, %sw.bb14 ], [ %need_priv.0, %sw.bb11 ], [ %need_priv.0, %sw.bb9 ], [ %need_priv.0, %sw.bb7 ], [ %need_priv.0, %sw.bb4 ], [ %need_priv.0, %while.cond ]
  %rev.0.be = phi i32 [ %rev.0, %sw.bb32 ], [ %rev.0, %sw.bb38 ], [ %rev.0, %sw.bb29 ], [ %rev.0, %sw.bb27 ], [ %rev.0, %sw.bb26 ], [ %rev.0, %sw.bb25 ], [ %rev.0, %sw.bb24 ], [ %rev.0, %sw.bb23 ], [ 1, %sw.bb22 ], [ %rev.0, %sw.bb21 ], [ %rev.0, %sw.bb20 ], [ %rev.0, %sw.bb19 ], [ %rev.0, %sw.bb18 ], [ %rev.0, %sw.bb17 ], [ %rev.0, %sw.bb16 ], [ %rev.0, %sw.bb15 ], [ %rev.0, %sw.bb14 ], [ %rev.0, %sw.bb11 ], [ %rev.0, %sw.bb9 ], [ %rev.0, %sw.bb7 ], [ %rev.0, %sw.bb4 ], [ %rev.0, %while.cond ]
  br label %while.cond, !llvm.loop !11

opthelp:                                          ; preds = %while.cond, %sw.bb4, %while.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i8* noundef %call) #5
  br label %end

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([31 x %struct.options_st], [31 x %struct.options_st]* @rsautl_options, i64 0, i64 0)) #5
  br label %end

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 1982, i32* noundef nonnull %keyformat) #5
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  %call12 = call i8* @opt_arg() #5
  %call13 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call12, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
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
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb25:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond
  %call28 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.cond
  %call30 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond, %while.cond
  %call33 = call i32 @opt_rand(i32 noundef %call1) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %while.cond.backedge

sw.bb38:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call39 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call43 = call i32 @opt_num_rest() #5
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end46, label %opthelp

if.end46:                                         ; preds = %while.end
  %call47 = call i32 @app_RAND_load() #5
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %end, label %if.end50

if.end50:                                         ; preds = %if.end46
  %tobool51 = icmp ne i32 %need_priv.0, 0
  %cmp52 = icmp ne i8 %key_type.0, 1
  %or.cond = select i1 %tobool51, i1 %cmp52, i1 false
  br i1 %or.cond, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end50
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call55 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.56, i64 0, i64 0)) #5
  br label %end

if.end56:                                         ; preds = %if.end50
  %call57 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #5
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call60 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0)) #5
  br label %end

if.end61:                                         ; preds = %if.end56
  switch i8 %key_type.0, label %cleanup [
    i8 1, label %sw.bb63
    i8 2, label %sw.bb65
    i8 3, label %sw.bb67
  ]

sw.bb63:                                          ; preds = %if.end61
  %6 = load i32, i32* %keyformat, align 4, !tbaa !9
  %7 = load i8*, i8** %passin, align 8, !tbaa !3
  %call64 = call %struct.evp_pkey_st* @load_key(i8* noundef %keyfile.0, i32 noundef %6, i32 noundef 0, i8* noundef %7, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0)) #5
  br label %sw.epilog73

sw.bb65:                                          ; preds = %if.end61
  %8 = load i32, i32* %keyformat, align 4, !tbaa !9
  %call66 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef %keyfile.0, i32 noundef %8, i32 noundef 0, i8* noundef null, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %sw.epilog73

sw.bb67:                                          ; preds = %if.end61
  %call68 = call %struct.x509_st* @load_cert_pass(i8* noundef %keyfile.0, i32 noundef 0, i32 noundef 1, i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0)) #5
  %tobool69.not = icmp eq %struct.x509_st* %call68, null
  br i1 %tobool69.not, label %cleanup, label %if.then70

if.then70:                                        ; preds = %sw.bb67
  %call71 = call %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef nonnull %call68) #5
  call void @X509_free(%struct.x509_st* noundef nonnull %call68) #5
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %if.then70, %sw.bb65, %sw.bb63
  %pkey.0 = phi %struct.evp_pkey_st* [ %call71, %if.then70 ], [ %call66, %sw.bb65 ], [ %call64, %sw.bb63 ]
  %cmp74 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp74, label %cleanup, label %if.end77

if.end77:                                         ; preds = %sw.epilog73
  %call78 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef 2) #5
  %cmp79 = icmp eq %struct.bio_st* %call78, null
  br i1 %cmp79, label %end, label %if.end82

if.end82:                                         ; preds = %if.end77
  %call83 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef 2) #5
  %cmp84 = icmp eq %struct.bio_st* %call83, null
  br i1 %cmp84, label %end, label %if.end87

if.end87:                                         ; preds = %if.end82
  %call88 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef nonnull %pkey.0) #5
  %mul = shl nsw i32 %call88, 1
  %conv89 = sext i32 %mul to i64
  %call90 = call i8* @app_malloc(i64 noundef %conv89, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0)) #5
  %conv91 = sext i32 %call88 to i64
  %call92 = call i8* @app_malloc(i64 noundef %conv91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0)) #5
  store i64 %conv91, i64* %rsa_outlen, align 8, !tbaa !7
  %call95 = call i32 @BIO_read(%struct.bio_st* noundef nonnull %call78, i8* noundef %call90, i32 noundef %mul) #5
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end87
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call99 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %end

if.end100:                                        ; preds = %if.end87
  %conv101308 = zext i32 %call95 to i64
  %tobool102.not = icmp eq i32 %rev.0, 0
  %cmp104348.not = icmp ult i32 %call95, 2
  %or.cond426 = select i1 %tobool102.not, i1 true, i1 %cmp104348.not
  br i1 %or.cond426, label %if.end112, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end100
  %div = lshr i64 %conv101308, 1
  %umax = call i64 @llvm.umax.i64(i64 %div, i64 1)
  %xtraiter = and i64 %umax, 1
  %10 = icmp ult i32 %call95, 4
  br i1 %10, label %if.end112.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %umax, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %i.0349 = phi i64 [ 0, %for.body.preheader.new ], [ %inc.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %call90, i64 %i.0349
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !13
  %12 = xor i64 %i.0349, -1
  %sub106 = add nsw i64 %12, %conv101308
  %arrayidx107 = getelementptr inbounds i8, i8* %call90, i64 %sub106
  %13 = load i8, i8* %arrayidx107, align 1, !tbaa !13
  store i8 %13, i8* %arrayidx, align 1, !tbaa !13
  store i8 %11, i8* %arrayidx107, align 1, !tbaa !13
  %inc = or i64 %i.0349, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %call90, i64 %inc
  %14 = load i8, i8* %arrayidx.1, align 1, !tbaa !13
  %15 = sub nuw nsw i64 -2, %i.0349
  %sub106.1 = add nsw i64 %15, %conv101308
  %arrayidx107.1 = getelementptr inbounds i8, i8* %call90, i64 %sub106.1
  %16 = load i8, i8* %arrayidx107.1, align 1, !tbaa !13
  store i8 %16, i8* %arrayidx.1, align 1, !tbaa !13
  store i8 %14, i8* %arrayidx107.1, align 1, !tbaa !13
  %inc.1 = add nuw nsw i64 %i.0349, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end112.loopexit.unr-lcssa, label %for.body, !llvm.loop !14

if.end112.loopexit.unr-lcssa:                     ; preds = %for.body, %for.body.preheader
  %i.0349.unr = phi i64 [ 0, %for.body.preheader ], [ %inc.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end112, label %for.body.epil

for.body.epil:                                    ; preds = %if.end112.loopexit.unr-lcssa
  %arrayidx.epil = getelementptr inbounds i8, i8* %call90, i64 %i.0349.unr
  %17 = load i8, i8* %arrayidx.epil, align 1, !tbaa !13
  %18 = xor i64 %i.0349.unr, -1
  %sub106.epil = add nsw i64 %18, %conv101308
  %arrayidx107.epil = getelementptr inbounds i8, i8* %call90, i64 %sub106.epil
  %19 = load i8, i8* %arrayidx107.epil, align 1, !tbaa !13
  store i8 %19, i8* %arrayidx.epil, align 1, !tbaa !13
  store i8 %17, i8* %arrayidx107.epil, align 1, !tbaa !13
  br label %if.end112

if.end112:                                        ; preds = %for.body.epil, %if.end112.loopexit.unr-lcssa, %if.end100
  %call113 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef null) #5
  %cmp114 = icmp eq %struct.evp_pkey_ctx_st* %call113, null
  br i1 %cmp114, label %end, label %if.end117

if.end117:                                        ; preds = %if.end112
  switch i8 %rsa_mode.0, label %sw.epilog164 [
    i8 2, label %sw.bb119
    i8 1, label %sw.bb128
    i8 3, label %sw.bb140
    i8 4, label %sw.bb152
  ]

sw.bb119:                                         ; preds = %if.end117
  %call120 = call i32 @EVP_PKEY_verify_recover_init(%struct.evp_pkey_ctx_st* noundef nonnull %call113) #5
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then166, label %land.lhs.true122

land.lhs.true122:                                 ; preds = %sw.bb119
  %conv123 = zext i8 %pad.0 to i32
  %call124 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i32 noundef %conv123) #5
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then166, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true122
  %call126 = call i32 @EVP_PKEY_verify_recover(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i8* noundef %call92, i64* noundef nonnull %rsa_outlen, i8* noundef %call90, i64 noundef %conv101308) #5
  %tobool127 = icmp ne i32 %call126, 0
  %phi.cast303 = zext i1 %tobool127 to i32
  br label %sw.epilog164

sw.bb128:                                         ; preds = %if.end117
  %call129 = call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef nonnull %call113) #5
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then166, label %land.lhs.true131

land.lhs.true131:                                 ; preds = %sw.bb128
  %conv132 = zext i8 %pad.0 to i32
  %call133 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i32 noundef %conv132) #5
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then166, label %land.rhs135

land.rhs135:                                      ; preds = %land.lhs.true131
  %call136 = call i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i8* noundef %call92, i64* noundef nonnull %rsa_outlen, i8* noundef %call90, i64 noundef %conv101308) #5
  %tobool137 = icmp ne i32 %call136, 0
  %phi.cast302 = zext i1 %tobool137 to i32
  br label %sw.epilog164

sw.bb140:                                         ; preds = %if.end117
  %call141 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call113) #5
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then166, label %land.lhs.true143

land.lhs.true143:                                 ; preds = %sw.bb140
  %conv144 = zext i8 %pad.0 to i32
  %call145 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i32 noundef %conv144) #5
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then166, label %land.rhs147

land.rhs147:                                      ; preds = %land.lhs.true143
  %call148 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i8* noundef %call92, i64* noundef nonnull %rsa_outlen, i8* noundef %call90, i64 noundef %conv101308) #5
  %tobool149 = icmp ne i32 %call148, 0
  %phi.cast301 = zext i1 %tobool149 to i32
  br label %sw.epilog164

sw.bb152:                                         ; preds = %if.end117
  %call153 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef nonnull %call113) #5
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then166, label %land.lhs.true155

land.lhs.true155:                                 ; preds = %sw.bb152
  %conv156 = zext i8 %pad.0 to i32
  %call157 = call i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i32 noundef %conv156) #5
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then166, label %land.rhs159

land.rhs159:                                      ; preds = %land.lhs.true155
  %call160 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef nonnull %call113, i8* noundef %call92, i64* noundef nonnull %rsa_outlen, i8* noundef %call90, i64 noundef %conv101308) #5
  %tobool161 = icmp ne i32 %call160, 0
  %phi.cast = zext i1 %tobool161 to i32
  br label %sw.epilog164

sw.epilog164:                                     ; preds = %land.rhs159, %land.rhs147, %land.rhs135, %land.rhs, %if.end117
  %rv.0 = phi i32 [ %call95, %if.end117 ], [ %phi.cast303, %land.rhs ], [ %phi.cast302, %land.rhs135 ], [ %phi.cast301, %land.rhs147 ], [ %phi.cast, %land.rhs159 ]
  %tobool165.not = icmp eq i32 %rv.0, 0
  br i1 %tobool165.not, label %if.then166, label %if.end168

if.then166:                                       ; preds = %sw.bb152, %land.lhs.true155, %sw.bb140, %land.lhs.true143, %sw.bb128, %land.lhs.true131, %sw.bb119, %land.lhs.true122, %sw.epilog164
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call167 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i64 0, i64 0)) #5
  %21 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %21) #5
  br label %end

if.end168:                                        ; preds = %sw.epilog164
  %tobool169.not = icmp eq i32 %asn1parse.0, 0
  br i1 %tobool169.not, label %if.else, label %if.then170

if.then170:                                       ; preds = %if.end168
  %22 = load i64, i64* %rsa_outlen, align 8, !tbaa !7
  %call171 = call i32 @ASN1_parse_dump(%struct.bio_st* noundef nonnull %call83, i8* noundef %call92, i64 noundef %22, i32 noundef 1, i32 noundef -1) #5
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.then173, label %end

if.then173:                                       ; preds = %if.then170
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %23) #5
  br label %end

if.else:                                          ; preds = %if.end168
  %tobool175.not = icmp eq i32 %hexdump.0, 0
  %24 = load i64, i64* %rsa_outlen, align 8, !tbaa !7
  %conv180 = trunc i64 %24 to i32
  br i1 %tobool175.not, label %if.else179, label %if.then176

if.then176:                                       ; preds = %if.else
  %call178 = call i32 @BIO_dump(%struct.bio_st* noundef nonnull %call83, i8* noundef %call92, i32 noundef %conv180) #5
  br label %end

if.else179:                                       ; preds = %if.else
  %call181 = call i32 @BIO_write(%struct.bio_st* noundef nonnull %call83, i8* noundef %call92, i32 noundef %conv180) #5
  br label %end

end:                                              ; preds = %sw.bb38, %sw.bb32, %if.then173, %if.then170, %if.else179, %if.then176, %if.end112, %if.end82, %if.end77, %if.end46, %if.then166, %if.then98, %if.then59, %if.then54, %sw.bb3, %opthelp
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then54 ], [ null, %if.end77 ], [ null, %if.end82 ], [ null, %if.then98 ], [ null, %if.end112 ], [ %call113, %if.then170 ], [ %call113, %if.then173 ], [ %call113, %if.then176 ], [ %call113, %if.else179 ], [ %call113, %if.then166 ], [ null, %if.then59 ], [ null, %if.end46 ], [ null, %sw.bb32 ], [ null, %sw.bb38 ]
  %pkey.1 = phi %struct.evp_pkey_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then54 ], [ %pkey.0, %if.end77 ], [ %pkey.0, %if.end82 ], [ %pkey.0, %if.then98 ], [ %pkey.0, %if.end112 ], [ %pkey.0, %if.then170 ], [ %pkey.0, %if.then173 ], [ %pkey.0, %if.then176 ], [ %pkey.0, %if.else179 ], [ %pkey.0, %if.then166 ], [ null, %if.then59 ], [ null, %if.end46 ], [ null, %sw.bb32 ], [ null, %sw.bb38 ]
  %rsa_in.0 = phi i8* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then54 ], [ null, %if.end77 ], [ null, %if.end82 ], [ %call90, %if.then98 ], [ %call90, %if.end112 ], [ %call90, %if.then170 ], [ %call90, %if.then173 ], [ %call90, %if.then176 ], [ %call90, %if.else179 ], [ %call90, %if.then166 ], [ null, %if.then59 ], [ null, %if.end46 ], [ null, %sw.bb32 ], [ null, %sw.bb38 ]
  %rsa_out.0 = phi i8* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then54 ], [ null, %if.end77 ], [ null, %if.end82 ], [ %call92, %if.then98 ], [ %call92, %if.end112 ], [ %call92, %if.then170 ], [ %call92, %if.then173 ], [ %call92, %if.then176 ], [ %call92, %if.else179 ], [ %call92, %if.then166 ], [ null, %if.then59 ], [ null, %if.end46 ], [ null, %sw.bb32 ], [ null, %sw.bb38 ]
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then54 ], [ null, %if.end77 ], [ null, %if.end82 ], [ %call83, %if.then98 ], [ %call83, %if.end112 ], [ %call83, %if.then170 ], [ %call83, %if.then173 ], [ %call83, %if.then176 ], [ %call83, %if.else179 ], [ %call83, %if.then166 ], [ null, %if.then59 ], [ null, %if.end46 ], [ null, %sw.bb32 ], [ null, %sw.bb38 ]
  %in.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then54 ], [ null, %if.end77 ], [ %call78, %if.end82 ], [ %call78, %if.then98 ], [ %call78, %if.end112 ], [ %call78, %if.then170 ], [ %call78, %if.then173 ], [ %call78, %if.then176 ], [ %call78, %if.else179 ], [ %call78, %if.then166 ], [ null, %if.then59 ], [ null, %if.end46 ], [ null, %sw.bb32 ], [ null, %sw.bb38 ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.then54 ], [ 1, %if.end77 ], [ 1, %if.end82 ], [ 1, %if.then98 ], [ 1, %if.end112 ], [ 0, %if.then170 ], [ 0, %if.then173 ], [ 0, %if.then176 ], [ 0, %if.else179 ], [ 1, %if.then166 ], [ 1, %if.then59 ], [ 1, %if.end46 ], [ 1, %sw.bb32 ], [ 1, %sw.bb38 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  %call184 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  call void @CRYPTO_free(i8* noundef %rsa_in.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32 noundef 289) #5
  call void @CRYPTO_free(i8* noundef %rsa_out.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32 noundef 290) #5
  %25 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32 noundef 291) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb67, %if.end61, %sw.epilog73, %end
  %retval.0 = phi i32 [ %ret.0, %end ], [ 1, %sw.epilog73 ], [ 1, %if.end61 ], [ 1, %sw.bb67 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %retval.0
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

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_pubkey(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.x509_st* @load_cert_pass(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @X509_get_pubkey(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_verify_recover_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_padding(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_verify_recover(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ASN1_parse_dump(%struct.bio_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_dump(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !12}
