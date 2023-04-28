; ModuleID = 'apps/pkey.c'
source_filename = "apps/pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.asn1_pctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Check key consistency\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pubcheck\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Check public key consistency\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Input key\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Key input format (ENGINE, other values ignored)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Key input pass phrase source\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Read only public components from key input\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Output file for encoded and/or text output\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"Output encoding format (DER or PEM)\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"Any supported cipher to be used for encryption\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Output PEM file pass phrase source\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"Use traditional format for private key PEM output\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Restrict encoded output to public components\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"Do not output the key in encoded form\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Output key components in plaintext\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"text_pub\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"Output only public key components in text form\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"ec_conv_form\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"Specifies the EC point conversion form in the encoding\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"Specifies the way the EC parameters are encoded\00", align 1
@pkey_options = dso_local constant [27 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 16, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 17, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 8, i32 62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i32 14, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 15, i32 45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.47, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@point_format_options = internal global [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* null], align 16
@asn1_encoding_options = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* null], align 16
@.str.49 = private unnamed_addr constant [53 x i8] c"Warning: The -text option is ignored with -text_pub\0A\00", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"Warning: The -traditional is ignored since there is no PEM output\0A\00", align 1
@.str.51 = private unnamed_addr constant [65 x i8] c"Warning: The -passout option is ignored without a cipher option\0A\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"Error: Cipher options are supported only for PEM output\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Key is valid\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Key is invalid\0A\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"Error: Text output cannot be combined with DER output\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"apps/pkey.c\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pkey_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %tmp132 = alloca %struct.ossl_param_st, align 8
  %tmp134 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
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
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([27 x %struct.options_st], [27 x %struct.options_st]* @pkey_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %ciphername.0 = phi i8* [ null, %entry ], [ %ciphername.0.be, %while.cond.backedge ]
  %pubin.0 = phi i32 [ 0, %entry ], [ %pubin.0.be, %while.cond.backedge ]
  %pubout.0 = phi i32 [ 0, %entry ], [ %pubout.0.be, %while.cond.backedge ]
  %text_pub.0 = phi i32 [ 0, %entry ], [ %text_pub.0.be, %while.cond.backedge ]
  %text.0 = phi i32 [ 0, %entry ], [ %text.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %traditional.0 = phi i32 [ 0, %entry ], [ %traditional.0.be, %while.cond.backedge ]
  %check.0 = phi i32 [ 0, %entry ], [ %check.0.be, %while.cond.backedge ]
  %pub_check.0 = phi i32 [ 0, %entry ], [ %pub_check.0.be, %while.cond.backedge ]
  %asn1_encoding.0 = phi i8* [ null, %entry ], [ %asn1_encoding.0.be, %while.cond.backedge ]
  %point_format.0 = phi i8* [ null, %entry ], [ %point_format.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb47
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
    i32 4, label %sw.bb13
    i32 5, label %sw.bb15
    i32 6, label %sw.bb17
    i32 7, label %sw.bb20
    i32 8, label %sw.bb22
    i32 9, label %sw.bb24
    i32 10, label %sw.bb25
    i32 11, label %sw.bb26
    i32 12, label %sw.bb27
    i32 13, label %sw.bb28
    i32 15, label %sw.bb29
    i32 16, label %sw.bb30
    i32 17, label %sw.bb31
    i32 14, label %sw.bb32
    i32 19, label %sw.bb34
    i32 18, label %sw.bb40
    i32 1603, label %sw.bb47
    i32 1602, label %sw.bb47
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb47, %sw.bb40, %sw.bb34, %sw.bb7, %sw.bb4, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb17, %sw.bb15, %sw.bb13
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb47 ], [ %e.0, %sw.bb40 ], [ %e.0, %sw.bb34 ], [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb31 ], [ %e.0, %sw.bb30 ], [ %e.0, %sw.bb29 ], [ %e.0, %sw.bb28 ], [ %e.0, %sw.bb27 ], [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb25 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb13 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb47 ], [ %infile.0, %sw.bb40 ], [ %infile.0, %sw.bb34 ], [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb31 ], [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb29 ], [ %infile.0, %sw.bb28 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb25 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb13 ], [ %infile.0, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb47 ], [ %outfile.0, %sw.bb40 ], [ %outfile.0, %sw.bb34 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb31 ], [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb29 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb25 ], [ %outfile.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb17 ], [ %outfile.0, %sw.bb15 ], [ %outfile.0, %sw.bb13 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb47 ], [ %passinarg.0, %sw.bb40 ], [ %passinarg.0, %sw.bb34 ], [ %passinarg.0, %sw.bb32 ], [ %passinarg.0, %sw.bb31 ], [ %passinarg.0, %sw.bb30 ], [ %passinarg.0, %sw.bb29 ], [ %passinarg.0, %sw.bb28 ], [ %passinarg.0, %sw.bb27 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb25 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb22 ], [ %passinarg.0, %sw.bb20 ], [ %passinarg.0, %sw.bb17 ], [ %passinarg.0, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb47 ], [ %passoutarg.0, %sw.bb40 ], [ %passoutarg.0, %sw.bb34 ], [ %passoutarg.0, %sw.bb32 ], [ %passoutarg.0, %sw.bb31 ], [ %passoutarg.0, %sw.bb30 ], [ %passoutarg.0, %sw.bb29 ], [ %passoutarg.0, %sw.bb28 ], [ %passoutarg.0, %sw.bb27 ], [ %passoutarg.0, %sw.bb26 ], [ %passoutarg.0, %sw.bb25 ], [ %passoutarg.0, %sw.bb24 ], [ %passoutarg.0, %sw.bb22 ], [ %passoutarg.0, %sw.bb20 ], [ %passoutarg.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %passoutarg.0, %sw.bb13 ], [ %passoutarg.0, %sw.bb7 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb47 ], [ %ciphername.0, %sw.bb40 ], [ %ciphername.0, %sw.bb34 ], [ %call33, %sw.bb32 ], [ %ciphername.0, %sw.bb31 ], [ %ciphername.0, %sw.bb30 ], [ %ciphername.0, %sw.bb29 ], [ %ciphername.0, %sw.bb28 ], [ %ciphername.0, %sw.bb27 ], [ %ciphername.0, %sw.bb26 ], [ %ciphername.0, %sw.bb25 ], [ %ciphername.0, %sw.bb24 ], [ %ciphername.0, %sw.bb22 ], [ %ciphername.0, %sw.bb20 ], [ %ciphername.0, %sw.bb17 ], [ %ciphername.0, %sw.bb15 ], [ %ciphername.0, %sw.bb13 ], [ %ciphername.0, %sw.bb7 ], [ %ciphername.0, %sw.bb4 ], [ %ciphername.0, %while.cond ]
  %pubin.0.be = phi i32 [ %pubin.0, %sw.bb47 ], [ %pubin.0, %sw.bb40 ], [ %pubin.0, %sw.bb34 ], [ %pubin.0, %sw.bb32 ], [ %pubin.0, %sw.bb31 ], [ %pubin.0, %sw.bb30 ], [ %pubin.0, %sw.bb29 ], [ %pubin.0, %sw.bb28 ], [ %pubin.0, %sw.bb27 ], [ %pubin.0, %sw.bb26 ], [ %pubin.0, %sw.bb25 ], [ 1, %sw.bb24 ], [ %pubin.0, %sw.bb22 ], [ %pubin.0, %sw.bb20 ], [ %pubin.0, %sw.bb17 ], [ %pubin.0, %sw.bb15 ], [ %pubin.0, %sw.bb13 ], [ %pubin.0, %sw.bb7 ], [ %pubin.0, %sw.bb4 ], [ %pubin.0, %while.cond ]
  %pubout.0.be = phi i32 [ %pubout.0, %sw.bb47 ], [ %pubout.0, %sw.bb40 ], [ %pubout.0, %sw.bb34 ], [ %pubout.0, %sw.bb32 ], [ %pubout.0, %sw.bb31 ], [ %pubout.0, %sw.bb30 ], [ %pubout.0, %sw.bb29 ], [ %pubout.0, %sw.bb28 ], [ %pubout.0, %sw.bb27 ], [ %pubout.0, %sw.bb26 ], [ 1, %sw.bb25 ], [ 1, %sw.bb24 ], [ %pubout.0, %sw.bb22 ], [ %pubout.0, %sw.bb20 ], [ %pubout.0, %sw.bb17 ], [ %pubout.0, %sw.bb15 ], [ %pubout.0, %sw.bb13 ], [ %pubout.0, %sw.bb7 ], [ %pubout.0, %sw.bb4 ], [ %pubout.0, %while.cond ]
  %text_pub.0.be = phi i32 [ %text_pub.0, %sw.bb47 ], [ %text_pub.0, %sw.bb40 ], [ %text_pub.0, %sw.bb34 ], [ %text_pub.0, %sw.bb32 ], [ %text_pub.0, %sw.bb31 ], [ %text_pub.0, %sw.bb30 ], [ %text_pub.0, %sw.bb29 ], [ %text_pub.0, %sw.bb28 ], [ %text_pub.0, %sw.bb27 ], [ 1, %sw.bb26 ], [ %text_pub.0, %sw.bb25 ], [ %text_pub.0, %sw.bb24 ], [ %text_pub.0, %sw.bb22 ], [ %text_pub.0, %sw.bb20 ], [ %text_pub.0, %sw.bb17 ], [ %text_pub.0, %sw.bb15 ], [ %text_pub.0, %sw.bb13 ], [ %text_pub.0, %sw.bb7 ], [ %text_pub.0, %sw.bb4 ], [ %text_pub.0, %while.cond ]
  %text.0.be = phi i32 [ %text.0, %sw.bb47 ], [ %text.0, %sw.bb40 ], [ %text.0, %sw.bb34 ], [ %text.0, %sw.bb32 ], [ %text.0, %sw.bb31 ], [ %text.0, %sw.bb30 ], [ %text.0, %sw.bb29 ], [ %text.0, %sw.bb28 ], [ 1, %sw.bb27 ], [ %text.0, %sw.bb26 ], [ %text.0, %sw.bb25 ], [ %text.0, %sw.bb24 ], [ %text.0, %sw.bb22 ], [ %text.0, %sw.bb20 ], [ %text.0, %sw.bb17 ], [ %text.0, %sw.bb15 ], [ %text.0, %sw.bb13 ], [ %text.0, %sw.bb7 ], [ %text.0, %sw.bb4 ], [ %text.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb47 ], [ %noout.0, %sw.bb40 ], [ %noout.0, %sw.bb34 ], [ %noout.0, %sw.bb32 ], [ %noout.0, %sw.bb31 ], [ %noout.0, %sw.bb30 ], [ %noout.0, %sw.bb29 ], [ 1, %sw.bb28 ], [ %noout.0, %sw.bb27 ], [ %noout.0, %sw.bb26 ], [ %noout.0, %sw.bb25 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb22 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb17 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb13 ], [ %noout.0, %sw.bb7 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %traditional.0.be = phi i32 [ %traditional.0, %sw.bb47 ], [ %traditional.0, %sw.bb40 ], [ %traditional.0, %sw.bb34 ], [ %traditional.0, %sw.bb32 ], [ %traditional.0, %sw.bb31 ], [ %traditional.0, %sw.bb30 ], [ 1, %sw.bb29 ], [ %traditional.0, %sw.bb28 ], [ %traditional.0, %sw.bb27 ], [ %traditional.0, %sw.bb26 ], [ %traditional.0, %sw.bb25 ], [ %traditional.0, %sw.bb24 ], [ %traditional.0, %sw.bb22 ], [ %traditional.0, %sw.bb20 ], [ %traditional.0, %sw.bb17 ], [ %traditional.0, %sw.bb15 ], [ %traditional.0, %sw.bb13 ], [ %traditional.0, %sw.bb7 ], [ %traditional.0, %sw.bb4 ], [ %traditional.0, %while.cond ]
  %check.0.be = phi i32 [ %check.0, %sw.bb47 ], [ %check.0, %sw.bb40 ], [ %check.0, %sw.bb34 ], [ %check.0, %sw.bb32 ], [ %check.0, %sw.bb31 ], [ 1, %sw.bb30 ], [ %check.0, %sw.bb29 ], [ %check.0, %sw.bb28 ], [ %check.0, %sw.bb27 ], [ %check.0, %sw.bb26 ], [ %check.0, %sw.bb25 ], [ %check.0, %sw.bb24 ], [ %check.0, %sw.bb22 ], [ %check.0, %sw.bb20 ], [ %check.0, %sw.bb17 ], [ %check.0, %sw.bb15 ], [ %check.0, %sw.bb13 ], [ %check.0, %sw.bb7 ], [ %check.0, %sw.bb4 ], [ %check.0, %while.cond ]
  %pub_check.0.be = phi i32 [ %pub_check.0, %sw.bb47 ], [ %pub_check.0, %sw.bb40 ], [ %pub_check.0, %sw.bb34 ], [ %pub_check.0, %sw.bb32 ], [ 1, %sw.bb31 ], [ %pub_check.0, %sw.bb30 ], [ %pub_check.0, %sw.bb29 ], [ %pub_check.0, %sw.bb28 ], [ %pub_check.0, %sw.bb27 ], [ %pub_check.0, %sw.bb26 ], [ %pub_check.0, %sw.bb25 ], [ %pub_check.0, %sw.bb24 ], [ %pub_check.0, %sw.bb22 ], [ %pub_check.0, %sw.bb20 ], [ %pub_check.0, %sw.bb17 ], [ %pub_check.0, %sw.bb15 ], [ %pub_check.0, %sw.bb13 ], [ %pub_check.0, %sw.bb7 ], [ %pub_check.0, %sw.bb4 ], [ %pub_check.0, %while.cond ]
  %asn1_encoding.0.be = phi i8* [ %asn1_encoding.0, %sw.bb47 ], [ %call41, %sw.bb40 ], [ %asn1_encoding.0, %sw.bb34 ], [ %asn1_encoding.0, %sw.bb32 ], [ %asn1_encoding.0, %sw.bb31 ], [ %asn1_encoding.0, %sw.bb30 ], [ %asn1_encoding.0, %sw.bb29 ], [ %asn1_encoding.0, %sw.bb28 ], [ %asn1_encoding.0, %sw.bb27 ], [ %asn1_encoding.0, %sw.bb26 ], [ %asn1_encoding.0, %sw.bb25 ], [ %asn1_encoding.0, %sw.bb24 ], [ %asn1_encoding.0, %sw.bb22 ], [ %asn1_encoding.0, %sw.bb20 ], [ %asn1_encoding.0, %sw.bb17 ], [ %asn1_encoding.0, %sw.bb15 ], [ %asn1_encoding.0, %sw.bb13 ], [ %asn1_encoding.0, %sw.bb7 ], [ %asn1_encoding.0, %sw.bb4 ], [ %asn1_encoding.0, %while.cond ]
  %point_format.0.be = phi i8* [ %point_format.0, %sw.bb47 ], [ %point_format.0, %sw.bb40 ], [ %call35, %sw.bb34 ], [ %point_format.0, %sw.bb32 ], [ %point_format.0, %sw.bb31 ], [ %point_format.0, %sw.bb30 ], [ %point_format.0, %sw.bb29 ], [ %point_format.0, %sw.bb28 ], [ %point_format.0, %sw.bb27 ], [ %point_format.0, %sw.bb26 ], [ %point_format.0, %sw.bb25 ], [ %point_format.0, %sw.bb24 ], [ %point_format.0, %sw.bb22 ], [ %point_format.0, %sw.bb20 ], [ %point_format.0, %sw.bb17 ], [ %point_format.0, %sw.bb15 ], [ %point_format.0, %sw.bb13 ], [ %point_format.0, %sw.bb7 ], [ %point_format.0, %sw.bb4 ], [ %point_format.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb40, %sw.bb34, %sw.bb7, %sw.bb4, %if.then81, %while.end
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i8* noundef %call) #5
  br label %if.then232

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([27 x %struct.options_st], [27 x %struct.options_st]* @pkey_options, i64 0, i64 0)) #5
  br label %cleanup234

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 1982, i32* noundef nonnull %informat) #5
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
  %call21 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
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
  br label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  %call33 = call i8* @opt_unknown() #5
  br label %while.cond.backedge

sw.bb34:                                          ; preds = %while.cond
  %call35 = call i8* @opt_arg() #5
  %call36 = call i32 @opt_string(i8* noundef %call35, i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @point_format_options, i64 0, i64 0)) #5
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %opthelp, label %while.cond.backedge

sw.bb40:                                          ; preds = %while.cond
  %call41 = call i8* @opt_arg() #5
  %call42 = call i32 @opt_string(i8* noundef %call41, i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @asn1_encoding_options, i64 0, i64 0)) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %opthelp, label %while.cond.backedge

sw.bb47:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call48 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then232, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call52 = call i32 @opt_num_rest() #5
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %if.end55, label %opthelp

if.end55:                                         ; preds = %while.end
  %tobool56 = icmp ne i32 %text.0, 0
  %tobool57 = icmp ne i32 %text_pub.0, 0
  %or.cond = select i1 %tobool56, i1 %tobool57, i1 false
  br i1 %or.cond, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call59 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.49, i64 0, i64 0)) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55
  %tobool61.not = icmp eq i32 %traditional.0, 0
  br i1 %tobool61.not, label %if.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end60
  %tobool63 = icmp ne i32 %noout.0, 0
  %7 = load i32, i32* %outformat, align 4
  %cmp64 = icmp ne i32 %7, 32773
  %or.cond262 = select i1 %tobool63, i1 true, i1 %cmp64
  br i1 %or.cond262, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true62
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call66 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.50, i64 0, i64 0)) #5
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true62, %if.then65, %if.end60
  %tobool68 = icmp eq i32 %text_pub.0, 0
  %tobool70 = icmp ne i32 %pubout.0, 0
  %or.cond263 = select i1 %tobool68, i1 %tobool70, i1 false
  %or.cond264 = select i1 %or.cond263, i1 %tobool56, i1 false
  %spec.select = select i1 %or.cond264, i32 1, i32 %text_pub.0
  %spec.select352 = select i1 %or.cond264, i32 0, i32 %text.0
  %tobool75 = icmp ne i32 %noout.0, 0
  %or.cond265 = select i1 %tobool75, i1 true, i1 %tobool70
  br i1 %or.cond265, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.end67
  %tobool78 = icmp ne i32 %spec.select352, 0
  %tobool79.not = icmp eq i32 %spec.select, 0
  %9 = select i1 %tobool78, i1 %tobool79.not, i1 false
  br label %lor.end

lor.end:                                          ; preds = %if.end67, %lor.rhs
  %10 = phi i1 [ %9, %lor.rhs ], [ true, %if.end67 ]
  %lor.ext = zext i1 %10 to i32
  %cmp80.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp80.not, label %if.end86, label %if.then81

if.then81:                                        ; preds = %lor.end
  %call82 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %cipher) #5
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %opthelp, label %if.end86

if.end86:                                         ; preds = %if.then81, %lor.end
  %11 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %cmp87 = icmp eq %struct.evp_cipher_st* %11, null
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.end86
  %cmp89.not = icmp eq i8* %passoutarg.0, null
  br i1 %cmp89.not, label %if.end99, label %if.then90

if.then90:                                        ; preds = %if.then88
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call91 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.51, i64 0, i64 0)) #5
  br label %if.end99

if.else:                                          ; preds = %if.end86
  %13 = load i32, i32* %outformat, align 4
  %cmp95 = icmp ne i32 %13, 32773
  %or.cond266 = select i1 %tobool75, i1 true, i1 %cmp95
  br i1 %or.cond266, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.else
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call97 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.52, i64 0, i64 0)) #5
  br label %if.then232

if.end99:                                         ; preds = %if.else, %if.then88, %if.then90
  %call100 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef %passoutarg.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #5
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end99
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call103 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i64 0, i64 0)) #5
  br label %if.then232

if.end104:                                        ; preds = %if.end99
  %16 = load i32, i32* %outformat, align 4, !tbaa !7
  %call105 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %16, i32 noundef %lor.ext) #5
  %cmp106 = icmp eq %struct.bio_st* %call105, null
  br i1 %cmp106, label %if.then232, label %if.end108

if.end108:                                        ; preds = %if.end104
  %tobool109.not = icmp eq i32 %pubin.0, 0
  %17 = load i32, i32* %informat, align 4, !tbaa !7
  %18 = load i8*, i8** %passin, align 8, !tbaa !3
  br i1 %tobool109.not, label %if.else112, label %if.then110

if.then110:                                       ; preds = %if.end108
  %call111 = call %struct.evp_pkey_st* @load_pubkey(i8* noundef %infile.0, i32 noundef %17, i32 noundef 1, i8* noundef %18, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0)) #5
  br label %if.end114

if.else112:                                       ; preds = %if.end108
  %call113 = call %struct.evp_pkey_st* @load_key(i8* noundef %infile.0, i32 noundef %17, i32 noundef 1, i8* noundef %18, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #5
  br label %if.end114

if.end114:                                        ; preds = %if.else112, %if.then110
  %pkey.0 = phi %struct.evp_pkey_st* [ %call111, %if.then110 ], [ %call113, %if.else112 ]
  %cmp115 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp115, label %if.then232, label %if.end117

if.end117:                                        ; preds = %if.end114
  %cmp118 = icmp ne i8* %asn1_encoding.0, null
  %cmp120 = icmp ne i8* %point_format.0, null
  %or.cond267 = select i1 %cmp118, i1 true, i1 %cmp120
  br i1 %or.cond267, label %if.then121, label %if.end141

if.then121:                                       ; preds = %if.end117
  %19 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %19) #4
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call122 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef nonnull %pkey.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #5
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %cleanup.thread, label %if.end125

if.end125:                                        ; preds = %if.then121
  br i1 %cmp118, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end125
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params475 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params475, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i8* noundef nonnull %asn1_encoding.0, i64 noundef 0) #5
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end125
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr, %if.then127 ], [ %arraydecay, %if.end125 ]
  br i1 %cmp120, label %if.then130, label %if.end133

if.then130:                                       ; preds = %if.end128
  %incdec.ptr131 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %20 = bitcast %struct.ossl_param_st* %tmp132 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #4
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp132, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* noundef nonnull %point_format.0, i64 noundef 0) #5
  %21 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %21, i8* noundef nonnull align 8 dereferenceable(40) %20, i64 40, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #4
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end128
  %p.1 = phi %struct.ossl_param_st* [ %incdec.ptr131, %if.then130 ], [ %p.0, %if.end128 ]
  %22 = bitcast %struct.ossl_param_st* %tmp134 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp134) #5
  %23 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %23, i8* noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #4
  %call136 = call i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef nonnull %pkey.0, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp137 = icmp slt i32 %call136, 1
  br i1 %cmp137, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then121, %if.end133
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %19) #4
  br label %if.then232

cleanup:                                          ; preds = %if.end133
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %19) #4
  br label %if.end141

if.end141:                                        ; preds = %cleanup, %if.end117
  %tobool142 = icmp ne i32 %check.0, 0
  %tobool144 = icmp ne i32 %pub_check.0, 0
  %or.cond268 = select i1 %tobool142, i1 true, i1 %tobool144
  br i1 %or.cond268, label %if.then145, label %if.end165

if.then145:                                       ; preds = %if.end141
  %call146 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %pkey.0, %struct.engine_st* noundef %e.0) #5
  %cmp147 = icmp eq %struct.evp_pkey_ctx_st* %call146, null
  br i1 %cmp147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.then145
  %24 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %24) #5
  br label %if.then232

if.end149:                                        ; preds = %if.then145
  br i1 %tobool142, label %if.then151, label %if.else153

if.then151:                                       ; preds = %if.end149
  %call152 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef nonnull %call146) #5
  br label %if.end155

if.else153:                                       ; preds = %if.end149
  %call154 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef nonnull %call146) #5
  br label %if.end155

if.end155:                                        ; preds = %if.else153, %if.then151
  %r.0 = phi i32 [ %call152, %if.then151 ], [ %call154, %if.else153 ]
  %cmp156 = icmp eq i32 %r.0, 1
  br i1 %cmp156, label %cleanup162, label %if.else159

if.else159:                                       ; preds = %if.end155
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call160 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0)) #5
  %26 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %26) #5
  br label %if.then232

cleanup162:                                       ; preds = %if.end155
  %call158 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call105, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %if.end165

if.end165:                                        ; preds = %cleanup162, %if.end141
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call146, %cleanup162 ], [ null, %if.end141 ]
  br i1 %tobool75, label %if.end215, label %if.then167

if.then167:                                       ; preds = %if.end165
  %27 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %27, label %if.else211 [
    i32 32773, label %if.then169
    i32 4, label %if.then192
  ]

if.then169:                                       ; preds = %if.then167
  br i1 %tobool70, label %if.then171, label %if.else176

if.then171:                                       ; preds = %if.then169
  %call172 = call i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0) #5
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then232, label %if.end215

if.else176:                                       ; preds = %if.then169
  %28 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %29 = load i8*, i8** %passout, align 8, !tbaa !3
  br i1 %tobool61.not, label %if.else183, label %if.then178

if.then178:                                       ; preds = %if.else176
  %call179 = call i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0, %struct.evp_cipher_st* noundef %28, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %29) #5
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then232, label %if.end215

if.else183:                                       ; preds = %if.else176
  %call184 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0, %struct.evp_cipher_st* noundef %28, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %29) #5
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then232, label %if.end215

if.then192:                                       ; preds = %if.then167
  %tobool193 = icmp ne i32 %spec.select352, 0
  %tobool195 = icmp ne i32 %spec.select, 0
  %or.cond269 = select i1 %tobool193, i1 true, i1 %tobool195
  br i1 %or.cond269, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.then192
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call197 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.61, i64 0, i64 0)) #5
  br label %if.then232

if.end198:                                        ; preds = %if.then192
  br i1 %tobool70, label %if.then200, label %if.else205

if.then200:                                       ; preds = %if.end198
  %call201 = call i32 @i2d_PUBKEY_bio(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0) #5
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.then232, label %cleanup234

if.else205:                                       ; preds = %if.end198
  %call206 = call i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0) #5
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then232, label %cleanup234

if.else211:                                       ; preds = %if.then167
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call212 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %31, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %if.then232

if.end215:                                        ; preds = %if.then178, %if.else183, %if.then171, %if.end165
  %tobool216.not = icmp eq i32 %spec.select, 0
  br i1 %tobool216.not, label %if.else222, label %if.then217

if.then217:                                       ; preds = %if.end215
  %call218 = call i32 @EVP_PKEY_print_public(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  %cmp219 = icmp slt i32 %call218, 1
  br i1 %cmp219, label %if.then232, label %cleanup234

if.else222:                                       ; preds = %if.end215
  %tobool223.not = icmp eq i32 %spec.select352, 0
  br i1 %tobool223.not, label %cleanup234, label %if.then224

if.then224:                                       ; preds = %if.else222
  %call225 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef nonnull %call105, %struct.evp_pkey_st* noundef nonnull %pkey.0, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #5
  %cmp226 = icmp slt i32 %call225, 1
  br i1 %cmp226, label %if.then232, label %cleanup234

if.then232:                                       ; preds = %sw.bb47, %if.else159, %if.then148, %opthelp, %if.end104, %if.end114, %if.then217, %if.then224, %if.then171, %if.then178, %if.else183, %if.then196, %if.then200, %if.else205, %if.else211, %if.then102, %if.then96, %cleanup.thread
  %out.0.ph = phi %struct.bio_st* [ %call105, %cleanup.thread ], [ null, %if.then96 ], [ null, %if.then102 ], [ %call105, %if.else211 ], [ %call105, %if.else205 ], [ %call105, %if.then200 ], [ %call105, %if.then196 ], [ %call105, %if.else183 ], [ %call105, %if.then178 ], [ %call105, %if.then171 ], [ %call105, %if.then224 ], [ %call105, %if.then217 ], [ %call105, %if.end114 ], [ null, %if.end104 ], [ null, %opthelp ], [ %call105, %if.then148 ], [ %call105, %if.else159 ], [ null, %sw.bb47 ]
  %pkey.1.ph = phi %struct.evp_pkey_st* [ %pkey.0, %cleanup.thread ], [ null, %if.then96 ], [ null, %if.then102 ], [ %pkey.0, %if.else211 ], [ %pkey.0, %if.else205 ], [ %pkey.0, %if.then200 ], [ %pkey.0, %if.then196 ], [ %pkey.0, %if.else183 ], [ %pkey.0, %if.then178 ], [ %pkey.0, %if.then171 ], [ %pkey.0, %if.then224 ], [ %pkey.0, %if.then217 ], [ null, %if.end114 ], [ null, %if.end104 ], [ null, %opthelp ], [ %pkey.0, %if.then148 ], [ %pkey.0, %if.else159 ], [ null, %sw.bb47 ]
  %ctx.1.ph = phi %struct.evp_pkey_ctx_st* [ null, %cleanup.thread ], [ null, %if.then96 ], [ null, %if.then102 ], [ %ctx.0, %if.else211 ], [ %ctx.0, %if.else205 ], [ %ctx.0, %if.then200 ], [ %ctx.0, %if.then196 ], [ %ctx.0, %if.else183 ], [ %ctx.0, %if.then178 ], [ %ctx.0, %if.then171 ], [ %ctx.0, %if.then224 ], [ %ctx.0, %if.then217 ], [ null, %if.end114 ], [ null, %if.end104 ], [ null, %opthelp ], [ null, %if.then148 ], [ %call146, %if.else159 ], [ null, %sw.bb47 ]
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %32) #5
  br label %cleanup234

cleanup234:                                       ; preds = %if.then217, %if.then224, %if.else222, %if.else205, %if.then200, %if.then232, %sw.bb3
  %ret.0369 = phi i32 [ 1, %if.then232 ], [ 0, %sw.bb3 ], [ 0, %if.then200 ], [ 0, %if.else205 ], [ 0, %if.else222 ], [ 0, %if.then224 ], [ 0, %if.then217 ]
  %ctx.1367 = phi %struct.evp_pkey_ctx_st* [ %ctx.1.ph, %if.then232 ], [ null, %sw.bb3 ], [ %ctx.0, %if.then200 ], [ %ctx.0, %if.else205 ], [ %ctx.0, %if.else222 ], [ %ctx.0, %if.then224 ], [ %ctx.0, %if.then217 ]
  %pkey.1365 = phi %struct.evp_pkey_st* [ %pkey.1.ph, %if.then232 ], [ null, %sw.bb3 ], [ %pkey.0, %if.then200 ], [ %pkey.0, %if.else205 ], [ %pkey.0, %if.else222 ], [ %pkey.0, %if.then224 ], [ %pkey.0, %if.then217 ]
  %out.0363 = phi %struct.bio_st* [ %out.0.ph, %if.then232 ], [ null, %sw.bb3 ], [ %call105, %if.then200 ], [ %call105, %if.else205 ], [ %call105, %if.else222 ], [ %call105, %if.then224 ], [ %call105, %if.then217 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1367) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1365) #5
  %33 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %33) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0363) #5
  %34 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %34, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 noundef 328) #5
  %35 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %35, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i32 noundef 329) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0369
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

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_pubkey(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_set_params(%struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PUBKEY_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
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
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 0, i64 8, !3, i64 8, i64 4, !7, i64 16, i64 8, !3, i64 24, i64 8, !12, i64 32, i64 8, !12}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !5, i64 0}
