; ModuleID = 'apps/pkcs8.c'
source_filename = "apps/pkcs8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.evp_md_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.X509_sig_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Use PKCS#5 v1.5 and cipher\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"v2\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Use PKCS#5 v2.0 and cipher\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"v2prf\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Set the PRF algorithm to use with PKCS#5 v2.0\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Input format (DER or PEM)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"nocrypt\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Use or expect unencrypted private key\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Output format (DER or PEM)\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"topk8\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Output PKCS8 file\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"use traditional format private key\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Specify the iteration count\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"noiter\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Use 1 as iteration count\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Scrypt options:\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"scrypt\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Use scrypt algorithm\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"scrypt_N\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Set scrypt N parameter\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"scrypt_r\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"Set scrypt r parameter\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"scrypt_p\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Set scrypt p parameter\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.51 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@pkcs8_options = dso_local constant [32 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 15, i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 16, i32 115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 5, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 2, i32 70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 18, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 6, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 3, i32 70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 19, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 20, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 17, i32 112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.51, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.53, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.55, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.56 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"%s: Unknown PBE algorithm %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"%s: Unknown PRF algorithm %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"Error converting key\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Error setting PBE algorithm\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"Enter Encryption Password:\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Error encrypting key\0A\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Error reading key\0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Enter Password:\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Can't read Password\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"Error decrypting key\0A\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"apps/pkcs8.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pkcs8_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %cipher = alloca %struct.evp_cipher_st*, align 8
  %pass = alloca [1024 x i8], align 16
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %informat = alloca i32, align 4
  %outformat = alloca i32, align 4
  %scrypt_N = alloca i64, align 8
  %scrypt_r = alloca i64, align 8
  %scrypt_p = alloca i64, align 8
  %0 = bitcast %struct.evp_cipher_st** %cipher to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %1 = getelementptr inbounds [1024 x i8], [1024 x i8]* %pass, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %1) #4
  %2 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  store i8* null, i8** %passin, align 8, !tbaa !3
  %3 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store i8* null, i8** %passout, align 8, !tbaa !3
  %4 = bitcast i32* %informat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %informat, align 4, !tbaa !7
  %5 = bitcast i32* %outformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  store i32 32773, i32* %outformat, align 4, !tbaa !7
  %6 = bitcast i64* %scrypt_N to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  store i64 0, i64* %scrypt_N, align 8, !tbaa !9
  %7 = bitcast i64* %scrypt_r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  store i64 0, i64* %scrypt_r, align 8, !tbaa !9
  %8 = bitcast i64* %scrypt_p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  store i64 0, i64* %scrypt_p, align 8, !tbaa !9
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([32 x %struct.options_st], [32 x %struct.options_st]* @pkcs8_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %ciphername.0 = phi i8* [ null, %entry ], [ %ciphername.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %nocrypt.0 = phi i32 [ 0, %entry ], [ %nocrypt.0.be, %while.cond.backedge ]
  %iter.0 = phi i32 [ 2048, %entry ], [ %iter.0.be, %while.cond.backedge ]
  %topk8.0 = phi i32 [ 0, %entry ], [ %topk8.0.be, %while.cond.backedge ]
  %pbe_nid.0 = phi i32 [ -1, %entry ], [ %pbe_nid.0.be, %while.cond.backedge ]
  %traditional.0 = phi i32 [ 0, %entry ], [ %traditional.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 4, label %sw.bb62
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 5, label %sw.bb7
    i32 3, label %sw.bb9
    i32 6, label %sw.bb15
    i32 7, label %sw.bb17
    i32 8, label %sw.bb18
    i32 9, label %sw.bb19
    i32 13, label %sw.bb85
    i32 12, label %sw.bb77
    i32 1501, label %sw.bb21
    i32 1502, label %sw.bb21
    i32 11, label %sw.bb70
    i32 10, label %sw.bb65
    i32 1601, label %sw.bb27
    i32 1602, label %sw.bb27
    i32 1603, label %sw.bb27
    i32 20, label %sw.bb32
    i32 14, label %sw.bb33
    i32 15, label %sw.bb35
    i32 16, label %sw.bb43
    i32 17, label %sw.bb56
    i32 18, label %sw.bb58
    i32 19, label %sw.bb60
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb85, %sw.bb77, %sw.bb70, %sw.bb65, %if.then67, %if.end51, %if.then53, %sw.bb35, %sw.bb27, %sw.bb21, %sw.bb9, %sw.bb4, %sw.bb62, %sw.bb60, %sw.bb58, %sw.bb56, %sw.bb33, %sw.bb32, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb15, %sw.bb7
  %e.0.be = phi %struct.engine_st* [ %call64, %sw.bb62 ], [ %e.0, %sw.bb60 ], [ %e.0, %sw.bb58 ], [ %e.0, %sw.bb56 ], [ %e.0, %if.then53 ], [ %e.0, %if.end51 ], [ %e.0, %sw.bb35 ], [ %e.0, %sw.bb33 ], [ %e.0, %sw.bb32 ], [ %e.0, %sw.bb27 ], [ %e.0, %if.then67 ], [ %e.0, %sw.bb65 ], [ %e.0, %sw.bb70 ], [ %e.0, %sw.bb21 ], [ %e.0, %sw.bb77 ], [ %e.0, %sw.bb85 ], [ %e.0, %sw.bb19 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb17 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb62 ], [ %infile.0, %sw.bb60 ], [ %infile.0, %sw.bb58 ], [ %infile.0, %sw.bb56 ], [ %infile.0, %if.then53 ], [ %infile.0, %if.end51 ], [ %infile.0, %sw.bb35 ], [ %infile.0, %sw.bb33 ], [ %infile.0, %sw.bb32 ], [ %infile.0, %sw.bb27 ], [ %infile.0, %if.then67 ], [ %infile.0, %sw.bb65 ], [ %infile.0, %sw.bb70 ], [ %infile.0, %sw.bb21 ], [ %infile.0, %sw.bb77 ], [ %infile.0, %sw.bb85 ], [ %infile.0, %sw.bb19 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb17 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %infile.0, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb62 ], [ %outfile.0, %sw.bb60 ], [ %outfile.0, %sw.bb58 ], [ %outfile.0, %sw.bb56 ], [ %outfile.0, %if.then53 ], [ %outfile.0, %if.end51 ], [ %outfile.0, %sw.bb35 ], [ %outfile.0, %sw.bb33 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb27 ], [ %outfile.0, %if.then67 ], [ %outfile.0, %sw.bb65 ], [ %outfile.0, %sw.bb70 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb77 ], [ %outfile.0, %sw.bb85 ], [ %outfile.0, %sw.bb19 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb62 ], [ %ciphername.0, %sw.bb60 ], [ %ciphername.0, %sw.bb58 ], [ %ciphername.0, %sw.bb56 ], [ %ciphername.0, %if.then53 ], [ %ciphername.0, %if.end51 ], [ %ciphername.0, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %ciphername.0, %sw.bb32 ], [ %ciphername.0, %sw.bb27 ], [ %ciphername.0, %if.then67 ], [ %ciphername.0, %sw.bb65 ], [ %ciphername.0, %sw.bb70 ], [ %ciphername.0, %sw.bb21 ], [ %ciphername.0, %sw.bb77 ], [ %ciphername.0, %sw.bb85 ], [ %ciphername.0, %sw.bb19 ], [ %ciphername.0, %sw.bb18 ], [ %ciphername.0, %sw.bb17 ], [ %ciphername.0, %sw.bb15 ], [ %ciphername.0, %sw.bb9 ], [ %ciphername.0, %sw.bb7 ], [ %ciphername.0, %sw.bb4 ], [ %ciphername.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb62 ], [ %passinarg.0, %sw.bb60 ], [ %call59, %sw.bb58 ], [ %passinarg.0, %sw.bb56 ], [ %passinarg.0, %if.then53 ], [ %passinarg.0, %if.end51 ], [ %passinarg.0, %sw.bb35 ], [ %passinarg.0, %sw.bb33 ], [ %passinarg.0, %sw.bb32 ], [ %passinarg.0, %sw.bb27 ], [ %passinarg.0, %if.then67 ], [ %passinarg.0, %sw.bb65 ], [ %passinarg.0, %sw.bb70 ], [ %passinarg.0, %sw.bb21 ], [ %passinarg.0, %sw.bb77 ], [ %passinarg.0, %sw.bb85 ], [ %passinarg.0, %sw.bb19 ], [ %passinarg.0, %sw.bb18 ], [ %passinarg.0, %sw.bb17 ], [ %passinarg.0, %sw.bb15 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb62 ], [ %call61, %sw.bb60 ], [ %passoutarg.0, %sw.bb58 ], [ %passoutarg.0, %sw.bb56 ], [ %passoutarg.0, %if.then53 ], [ %passoutarg.0, %if.end51 ], [ %passoutarg.0, %sw.bb35 ], [ %passoutarg.0, %sw.bb33 ], [ %passoutarg.0, %sw.bb32 ], [ %passoutarg.0, %sw.bb27 ], [ %passoutarg.0, %if.then67 ], [ %passoutarg.0, %sw.bb65 ], [ %passoutarg.0, %sw.bb70 ], [ %passoutarg.0, %sw.bb21 ], [ %passoutarg.0, %sw.bb77 ], [ %passoutarg.0, %sw.bb85 ], [ %passoutarg.0, %sw.bb19 ], [ %passoutarg.0, %sw.bb18 ], [ %passoutarg.0, %sw.bb17 ], [ %passoutarg.0, %sw.bb15 ], [ %passoutarg.0, %sw.bb9 ], [ %passoutarg.0, %sw.bb7 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ]
  %nocrypt.0.be = phi i32 [ %nocrypt.0, %sw.bb62 ], [ %nocrypt.0, %sw.bb60 ], [ %nocrypt.0, %sw.bb58 ], [ %nocrypt.0, %sw.bb56 ], [ %nocrypt.0, %if.then53 ], [ %nocrypt.0, %if.end51 ], [ %nocrypt.0, %sw.bb35 ], [ %nocrypt.0, %sw.bb33 ], [ %nocrypt.0, %sw.bb32 ], [ %nocrypt.0, %sw.bb27 ], [ %nocrypt.0, %if.then67 ], [ %nocrypt.0, %sw.bb65 ], [ %nocrypt.0, %sw.bb70 ], [ %nocrypt.0, %sw.bb21 ], [ %nocrypt.0, %sw.bb77 ], [ %nocrypt.0, %sw.bb85 ], [ 1, %sw.bb19 ], [ %nocrypt.0, %sw.bb18 ], [ %nocrypt.0, %sw.bb17 ], [ %nocrypt.0, %sw.bb15 ], [ %nocrypt.0, %sw.bb9 ], [ %nocrypt.0, %sw.bb7 ], [ %nocrypt.0, %sw.bb4 ], [ %nocrypt.0, %while.cond ]
  %iter.0.be = phi i32 [ %iter.0, %sw.bb62 ], [ %iter.0, %sw.bb60 ], [ %iter.0, %sw.bb58 ], [ %call57, %sw.bb56 ], [ %iter.0, %if.then53 ], [ %iter.0, %if.end51 ], [ %iter.0, %sw.bb35 ], [ %iter.0, %sw.bb33 ], [ %iter.0, %sw.bb32 ], [ %iter.0, %sw.bb27 ], [ %iter.0, %if.then67 ], [ %iter.0, %sw.bb65 ], [ %iter.0, %sw.bb70 ], [ %iter.0, %sw.bb21 ], [ %iter.0, %sw.bb77 ], [ %iter.0, %sw.bb85 ], [ %iter.0, %sw.bb19 ], [ 1, %sw.bb18 ], [ %iter.0, %sw.bb17 ], [ %iter.0, %sw.bb15 ], [ %iter.0, %sw.bb9 ], [ %iter.0, %sw.bb7 ], [ %iter.0, %sw.bb4 ], [ %iter.0, %while.cond ]
  %topk8.0.be = phi i32 [ %topk8.0, %sw.bb62 ], [ %topk8.0, %sw.bb60 ], [ %topk8.0, %sw.bb58 ], [ %topk8.0, %sw.bb56 ], [ %topk8.0, %if.then53 ], [ %topk8.0, %if.end51 ], [ %topk8.0, %sw.bb35 ], [ %topk8.0, %sw.bb33 ], [ %topk8.0, %sw.bb32 ], [ %topk8.0, %sw.bb27 ], [ %topk8.0, %if.then67 ], [ %topk8.0, %sw.bb65 ], [ %topk8.0, %sw.bb70 ], [ %topk8.0, %sw.bb21 ], [ %topk8.0, %sw.bb77 ], [ %topk8.0, %sw.bb85 ], [ %topk8.0, %sw.bb19 ], [ %topk8.0, %sw.bb18 ], [ 1, %sw.bb17 ], [ %topk8.0, %sw.bb15 ], [ %topk8.0, %sw.bb9 ], [ %topk8.0, %sw.bb7 ], [ %topk8.0, %sw.bb4 ], [ %topk8.0, %while.cond ]
  %pbe_nid.0.be = phi i32 [ %pbe_nid.0, %sw.bb62 ], [ %pbe_nid.0, %sw.bb60 ], [ %pbe_nid.0, %sw.bb58 ], [ %pbe_nid.0, %sw.bb56 ], [ %call45, %if.then53 ], [ %call45, %if.end51 ], [ %call37, %sw.bb35 ], [ %pbe_nid.0, %sw.bb33 ], [ %pbe_nid.0, %sw.bb32 ], [ %pbe_nid.0, %sw.bb27 ], [ %pbe_nid.0, %if.then67 ], [ %pbe_nid.0, %sw.bb65 ], [ %pbe_nid.0, %sw.bb70 ], [ %pbe_nid.0, %sw.bb21 ], [ %pbe_nid.0, %sw.bb77 ], [ %pbe_nid.0, %sw.bb85 ], [ %pbe_nid.0, %sw.bb19 ], [ %pbe_nid.0, %sw.bb18 ], [ %pbe_nid.0, %sw.bb17 ], [ %pbe_nid.0, %sw.bb15 ], [ %pbe_nid.0, %sw.bb9 ], [ %pbe_nid.0, %sw.bb7 ], [ %pbe_nid.0, %sw.bb4 ], [ %pbe_nid.0, %while.cond ]
  %traditional.0.be = phi i32 [ %traditional.0, %sw.bb62 ], [ %traditional.0, %sw.bb60 ], [ %traditional.0, %sw.bb58 ], [ %traditional.0, %sw.bb56 ], [ %traditional.0, %if.then53 ], [ %traditional.0, %if.end51 ], [ %traditional.0, %sw.bb35 ], [ %traditional.0, %sw.bb33 ], [ 1, %sw.bb32 ], [ %traditional.0, %sw.bb27 ], [ %traditional.0, %if.then67 ], [ %traditional.0, %sw.bb65 ], [ %traditional.0, %sw.bb70 ], [ %traditional.0, %sw.bb21 ], [ %traditional.0, %sw.bb77 ], [ %traditional.0, %sw.bb85 ], [ %traditional.0, %sw.bb19 ], [ %traditional.0, %sw.bb18 ], [ %traditional.0, %sw.bb17 ], [ %traditional.0, %sw.bb15 ], [ %traditional.0, %sw.bb9 ], [ %traditional.0, %sw.bb7 ], [ %traditional.0, %sw.bb4 ], [ %traditional.0, %while.cond ]
  br label %while.cond, !llvm.loop !11

opthelp.sink.split:                               ; preds = %sw.bb43, %sw.bb35
  %.sink577 = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.57, i64 0, i64 0), %sw.bb35 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i64 0, i64 0), %sw.bb43 ]
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = call i8* @opt_arg() #5
  %call50 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef %.sink577, i8* noundef %call, i8* noundef %call49) #5
  br label %opthelp

opthelp:                                          ; preds = %while.cond, %sw.bb85, %sw.bb77, %sw.bb70, %sw.bb9, %sw.bb4, %opthelp.sink.split, %if.then102, %while.end
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup287

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([32 x %struct.options_st], [32 x %struct.options_st]* @pkcs8_options, i64 0, i64 0)) #5
  br label %cleanup287

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  %call6 = call i32 @opt_format(i8* noundef %call5, i64 noundef 2, i32* noundef nonnull %informat) #5
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

sw.bb21:                                          ; preds = %while.cond, %while.cond
  %call22 = call i32 @opt_rand(i32 noundef %call1) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup287, label %while.cond.backedge

sw.bb27:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call28 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup287, label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  %call34 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  %call36 = call i8* @opt_arg() #5
  %call37 = call i32 @OBJ_txt2nid(i8* noundef %call36) #5
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %opthelp.sink.split, label %while.cond.backedge

sw.bb43:                                          ; preds = %while.cond
  %call44 = call i8* @opt_arg() #5
  %call45 = call i32 @OBJ_txt2nid(i8* noundef %call44) #5
  %call46 = call i32 @EVP_PBE_find(i32 noundef 1, i32 noundef %call45, i32* noundef null, i32* noundef null, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef null) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %opthelp.sink.split, label %if.end51

if.end51:                                         ; preds = %sw.bb43
  %11 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %cmp52 = icmp eq %struct.evp_cipher_st* %11, null
  br i1 %cmp52, label %if.then53, label %while.cond.backedge

if.then53:                                        ; preds = %if.end51
  %call54 = call %struct.evp_cipher_st* @EVP_aes_256_cbc() #5
  store %struct.evp_cipher_st* %call54, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb56:                                          ; preds = %while.cond
  %call57 = call i32 @opt_int_arg() #5
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %while.cond
  %call59 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb60:                                          ; preds = %while.cond
  %call61 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb62:                                          ; preds = %while.cond
  %call63 = call i8* @opt_arg() #5
  %call64 = call %struct.engine_st* @setup_engine_methods(i8* noundef %call63, i32 noundef -1, i32 noundef 0) #5
  br label %while.cond.backedge

sw.bb65:                                          ; preds = %while.cond
  store i64 16384, i64* %scrypt_N, align 8, !tbaa !9
  store i64 8, i64* %scrypt_r, align 8, !tbaa !9
  store i64 1, i64* %scrypt_p, align 8, !tbaa !9
  %12 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %cmp66 = icmp eq %struct.evp_cipher_st* %12, null
  br i1 %cmp66, label %if.then67, label %while.cond.backedge

if.then67:                                        ; preds = %sw.bb65
  %call68 = call %struct.evp_cipher_st* @EVP_aes_256_cbc() #5
  store %struct.evp_cipher_st* %call68, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  br label %while.cond.backedge

sw.bb70:                                          ; preds = %while.cond
  %call71 = call i8* @opt_arg() #5
  %call72 = call i32 @opt_long(i8* noundef %call71, i64* noundef nonnull %scrypt_N) #5
  %tobool73 = icmp eq i32 %call72, 0
  %13 = load i64, i64* %scrypt_N, align 8
  %cmp74 = icmp slt i64 %13, 1
  %or.cond = select i1 %tobool73, i1 true, i1 %cmp74
  br i1 %or.cond, label %opthelp, label %while.cond.backedge

sw.bb77:                                          ; preds = %while.cond
  %call78 = call i8* @opt_arg() #5
  %call79 = call i32 @opt_long(i8* noundef %call78, i64* noundef nonnull %scrypt_r) #5
  %tobool80 = icmp eq i32 %call79, 0
  %14 = load i64, i64* %scrypt_r, align 8
  %cmp82 = icmp slt i64 %14, 1
  %or.cond317 = select i1 %tobool80, i1 true, i1 %cmp82
  br i1 %or.cond317, label %opthelp, label %while.cond.backedge

sw.bb85:                                          ; preds = %while.cond
  %call86 = call i8* @opt_arg() #5
  %call87 = call i32 @opt_long(i8* noundef %call86, i64* noundef nonnull %scrypt_p) #5
  %tobool88 = icmp eq i32 %call87, 0
  %15 = load i64, i64* %scrypt_p, align 8
  %cmp90 = icmp slt i64 %15, 1
  %or.cond318 = select i1 %tobool88, i1 true, i1 %cmp90
  br i1 %or.cond318, label %opthelp, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call93 = call i32 @opt_num_rest() #5
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %if.end96, label %opthelp

if.end96:                                         ; preds = %while.end
  %call97 = call i32 @app_RAND_load() #5
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %cleanup287, label %if.end100

if.end100:                                        ; preds = %if.end96
  %cmp101.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp101.not, label %if.end107, label %if.then102

if.then102:                                       ; preds = %if.end100
  %call103 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %cipher) #5
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %opthelp, label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end100
  %call108 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef %passoutarg.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #5
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end107
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call111 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i64 0, i64 0)) #5
  br label %cleanup287

if.end112:                                        ; preds = %if.end107
  %cmp113 = icmp eq i32 %pbe_nid.0, -1
  %17 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8
  %cmp114 = icmp eq %struct.evp_cipher_st* %17, null
  %or.cond319 = select i1 %cmp113, i1 %cmp114, i1 false
  br i1 %or.cond319, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end112
  %call116 = call %struct.evp_cipher_st* @EVP_aes_256_cbc() #5
  store %struct.evp_cipher_st* %call116, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112
  %18 = load i32, i32* %informat, align 4, !tbaa !7
  %cmp118 = icmp eq i32 %18, 0
  %cond = select i1 %cmp118, i32 32773, i32 %18
  %call119 = call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef %cond) #5
  %cmp120 = icmp eq %struct.bio_st* %call119, null
  br i1 %cmp120, label %cleanup287, label %if.end122

if.end122:                                        ; preds = %if.end117
  %19 = load i32, i32* %outformat, align 4, !tbaa !7
  %call123 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef %19, i32 noundef 1) #5
  %cmp124 = icmp eq %struct.bio_st* %call123, null
  br i1 %cmp124, label %cleanup287, label %if.end126

if.end126:                                        ; preds = %if.end122
  %tobool127.not = icmp eq i32 %topk8.0, 0
  br i1 %tobool127.not, label %if.end200, label %if.then128

if.then128:                                       ; preds = %if.end126
  %20 = load i32, i32* %informat, align 4, !tbaa !7
  %21 = load i8*, i8** %passin, align 8, !tbaa !3
  %call129 = call %struct.evp_pkey_st* @load_key(i8* noundef %infile.0, i32 noundef %20, i32 noundef 1, i8* noundef %21, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)) #5
  %cmp130 = icmp eq %struct.evp_pkey_st* %call129, null
  br i1 %cmp130, label %cleanup287, label %if.end132

if.end132:                                        ; preds = %if.then128
  %call133 = call %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef nonnull %call129) #5
  %cmp134 = icmp eq %struct.pkcs8_priv_key_info_st* %call133, null
  br i1 %cmp134, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end132
  %22 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call136 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %22, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0)) #5
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %23) #5
  br label %cleanup287

if.end137:                                        ; preds = %if.end132
  %tobool138.not = icmp eq i32 %nocrypt.0, 0
  br i1 %tobool138.not, label %if.else150, label %if.then139

if.then139:                                       ; preds = %if.end137
  %24 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %24, label %if.else146 [
    i32 32773, label %if.then141
    i32 4, label %if.then144
  ]

if.then141:                                       ; preds = %if.then139
  %call142 = call i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef nonnull %call123, %struct.pkcs8_priv_key_info_st* noundef nonnull %call133) #5
  br label %cleanup287

if.then144:                                       ; preds = %if.then139
  %call145 = call i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef nonnull %call123, %struct.pkcs8_priv_key_info_st* noundef nonnull %call133) #5
  br label %cleanup287

if.else146:                                       ; preds = %if.then139
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call147 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %cleanup287

if.else150:                                       ; preds = %if.end137
  %26 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  %tobool151.not = icmp eq %struct.evp_cipher_st* %26, null
  br i1 %tobool151.not, label %if.else163, label %if.then152

if.then152:                                       ; preds = %if.else150
  %27 = load i64, i64* %scrypt_N, align 8, !tbaa !9
  %tobool153 = icmp ne i64 %27, 0
  %28 = load i64, i64* %scrypt_r, align 8
  %tobool155 = icmp ne i64 %28, 0
  %or.cond320 = select i1 %tobool153, i1 %tobool155, i1 false
  %29 = load i64, i64* %scrypt_p, align 8
  %tobool157 = icmp ne i64 %29, 0
  %or.cond321 = select i1 %or.cond320, i1 %tobool157, i1 false
  br i1 %or.cond321, label %if.then158, label %if.else160

if.then158:                                       ; preds = %if.then152
  %call159 = call %struct.X509_algor_st* @PKCS5_pbe2_set_scrypt(%struct.evp_cipher_st* noundef nonnull %26, i8* noundef null, i32 noundef 0, i8* noundef null, i64 noundef %27, i64 noundef %28, i64 noundef %29) #5
  br label %if.end165

if.else160:                                       ; preds = %if.then152
  %call161 = call %struct.X509_algor_st* @PKCS5_pbe2_set_iv(%struct.evp_cipher_st* noundef nonnull %26, i32 noundef %iter.0, i8* noundef null, i32 noundef 0, i8* noundef null, i32 noundef %pbe_nid.0) #5
  br label %if.end165

if.else163:                                       ; preds = %if.else150
  %call164 = call %struct.X509_algor_st* @PKCS5_pbe_set(i32 noundef %pbe_nid.0, i32 noundef %iter.0, i8* noundef null, i32 noundef 0) #5
  br label %if.end165

if.end165:                                        ; preds = %if.then158, %if.else160, %if.else163
  %pbe.0 = phi %struct.X509_algor_st* [ %call159, %if.then158 ], [ %call161, %if.else160 ], [ %call164, %if.else163 ]
  %cmp166 = icmp eq %struct.X509_algor_st* %pbe.0, null
  br i1 %cmp166, label %if.then167, label %if.end169

if.then167:                                       ; preds = %if.end165
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call168 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i64 0, i64 0)) #5
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %31) #5
  br label %cleanup287

if.end169:                                        ; preds = %if.end165
  %32 = load i8*, i8** %passout, align 8, !tbaa !3
  %cmp170.not = icmp eq i8* %32, null
  br i1 %cmp170.not, label %if.else172, label %if.end178

if.else172:                                       ; preds = %if.end169
  %call174 = call i32 @EVP_read_pw_string(i8* noundef nonnull %1, i32 noundef 1024, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.64, i64 0, i64 0), i32 noundef 1) #5
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end178, label %if.then176

if.then176:                                       ; preds = %if.else172
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %pbe.0) #5
  br label %cleanup287

if.end178:                                        ; preds = %if.end169, %if.else172
  %p8pass.0 = phi i8* [ %1, %if.else172 ], [ %32, %if.end169 ]
  %call179 = call i64 @strlen(i8* noundef %p8pass.0) #6
  %conv = trunc i64 %call179 to i32
  %call180 = call %struct.X509_sig_st* @PKCS8_set0_pbe(i8* noundef %p8pass.0, i32 noundef %conv, %struct.pkcs8_priv_key_info_st* noundef nonnull %call133, %struct.X509_algor_st* noundef nonnull %pbe.0) #5
  %cmp181 = icmp eq %struct.X509_sig_st* %call180, null
  br i1 %cmp181, label %if.then183, label %if.end185

if.then183:                                       ; preds = %if.end178
  call void @X509_ALGOR_free(%struct.X509_algor_st* noundef nonnull %pbe.0) #5
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call184 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0)) #5
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %34) #5
  br label %cleanup287

if.end185:                                        ; preds = %if.end178
  %35 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %35, label %if.else195 [
    i32 32773, label %if.then188
    i32 4, label %if.then193
  ]

if.then188:                                       ; preds = %if.end185
  %call189 = call i32 @PEM_write_bio_PKCS8(%struct.bio_st* noundef nonnull %call123, %struct.X509_sig_st* noundef nonnull %call180) #5
  br label %cleanup287

if.then193:                                       ; preds = %if.end185
  %call194 = call i32 @i2d_PKCS8_bio(%struct.bio_st* noundef nonnull %call123, %struct.X509_sig_st* noundef nonnull %call180) #5
  br label %cleanup287

if.else195:                                       ; preds = %if.end185
  %36 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call196 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %36, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %cleanup287

if.end200:                                        ; preds = %if.end126
  %tobool201.not = icmp eq i32 %nocrypt.0, 0
  %37 = load i32, i32* %informat, align 4, !tbaa !7
  br i1 %tobool201.not, label %if.else219, label %if.then202

if.then202:                                       ; preds = %if.end200
  switch i32 %37, label %if.else215 [
    i32 32773, label %if.then208
    i32 0, label %if.then208
    i32 4, label %if.then213
  ]

if.then208:                                       ; preds = %if.then202, %if.then202
  %call209 = call %struct.pkcs8_priv_key_info_st* @PEM_read_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef nonnull %call119, %struct.pkcs8_priv_key_info_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %if.end256

if.then213:                                       ; preds = %if.then202
  %call214 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef nonnull %call119, %struct.pkcs8_priv_key_info_st** noundef null) #5
  br label %if.end256

if.else215:                                       ; preds = %if.then202
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call216 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %cleanup287

if.else219:                                       ; preds = %if.end200
  switch i32 %37, label %if.else232 [
    i32 32773, label %if.then225
    i32 0, label %if.then225
    i32 4, label %if.then230
  ]

if.then225:                                       ; preds = %if.else219, %if.else219
  %call226 = call %struct.X509_sig_st* @PEM_read_bio_PKCS8(%struct.bio_st* noundef nonnull %call119, %struct.X509_sig_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #5
  br label %if.end235

if.then230:                                       ; preds = %if.else219
  %call231 = call %struct.X509_sig_st* @d2i_PKCS8_bio(%struct.bio_st* noundef nonnull %call119, %struct.X509_sig_st** noundef null) #5
  br label %if.end235

if.else232:                                       ; preds = %if.else219
  %39 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call233 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %39, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %cleanup287

if.end235:                                        ; preds = %if.then230, %if.then225
  %p8.2 = phi %struct.X509_sig_st* [ %call226, %if.then225 ], [ %call231, %if.then230 ]
  %cmp236 = icmp eq %struct.X509_sig_st* %p8.2, null
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %if.end235
  %40 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call239 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %40, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0)) #5
  %41 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %41) #5
  br label %cleanup287

if.end240:                                        ; preds = %if.end235
  %42 = load i8*, i8** %passin, align 8, !tbaa !3
  %cmp241.not = icmp eq i8* %42, null
  br i1 %cmp241.not, label %if.else244, label %if.end252

if.else244:                                       ; preds = %if.end240
  %call247 = call i32 @EVP_read_pw_string(i8* noundef nonnull %1, i32 noundef 1024, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), i32 noundef 0) #5
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end252, label %if.then249

if.then249:                                       ; preds = %if.else244
  %43 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call250 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %43, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i64 0, i64 0)) #5
  br label %cleanup287

if.end252:                                        ; preds = %if.end240, %if.else244
  %p8pass.1 = phi i8* [ %1, %if.else244 ], [ %42, %if.end240 ]
  %call253 = call i64 @strlen(i8* noundef %p8pass.1) #6
  %conv254 = trunc i64 %call253 to i32
  %call255 = call %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef nonnull %p8.2, i8* noundef %p8pass.1, i32 noundef %conv254) #5
  br label %if.end256

if.end256:                                        ; preds = %if.then208, %if.then213, %if.end252
  %p8inf.0 = phi %struct.pkcs8_priv_key_info_st* [ %call209, %if.then208 ], [ %call214, %if.then213 ], [ %call255, %if.end252 ]
  %p8.3 = phi %struct.X509_sig_st* [ null, %if.then208 ], [ null, %if.then213 ], [ %p8.2, %if.end252 ]
  %cmp257 = icmp eq %struct.pkcs8_priv_key_info_st* %p8inf.0, null
  br i1 %cmp257, label %if.then259, label %if.end261

if.then259:                                       ; preds = %if.end256
  %44 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call260 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %44, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i64 0, i64 0)) #5
  %45 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %45) #5
  br label %cleanup287

if.end261:                                        ; preds = %if.end256
  %call262 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef nonnull %p8inf.0) #5
  %cmp263 = icmp eq %struct.evp_pkey_st* %call262, null
  br i1 %cmp263, label %if.then265, label %if.end267

if.then265:                                       ; preds = %if.end261
  %46 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call266 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %46, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0)) #5
  %47 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %47) #5
  br label %cleanup287

if.end267:                                        ; preds = %if.end261
  %48 = load i32, i32* %outformat, align 4, !tbaa !7
  switch i32 %48, label %if.else282 [
    i32 32773, label %if.then270
    i32 4, label %if.then280
  ]

if.then270:                                       ; preds = %if.end267
  %tobool271.not = icmp eq i32 %traditional.0, 0
  %49 = load i8*, i8** %passout, align 8, !tbaa !3
  br i1 %tobool271.not, label %if.else274, label %if.then272

if.then272:                                       ; preds = %if.then270
  %call273 = call i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef nonnull %call123, %struct.evp_pkey_st* noundef nonnull %call262, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %49) #5
  br label %cleanup287

if.else274:                                       ; preds = %if.then270
  %call275 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call123, %struct.evp_pkey_st* noundef nonnull %call262, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %49) #5
  br label %cleanup287

if.then280:                                       ; preds = %if.end267
  %call281 = call i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef nonnull %call123, %struct.evp_pkey_st* noundef nonnull %call262) #5
  br label %cleanup287

if.else282:                                       ; preds = %if.end267
  %50 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call283 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %50, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0)) #5
  br label %cleanup287

cleanup287:                                       ; preds = %sw.bb21, %sw.bb27, %if.then176, %if.else195, %if.then183, %if.then167, %opthelp, %sw.bb3, %if.then110, %if.then135, %if.else146, %if.else215, %if.else232, %if.then238, %if.then249, %if.then259, %if.then265, %if.else282, %if.end96, %if.end117, %if.end122, %if.then128, %if.then272, %if.else274, %if.then280, %if.then193, %if.then188, %if.then141, %if.then144
  %in.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end117 ], [ %call119, %if.end122 ], [ %call119, %if.then128 ], [ %call119, %if.then135 ], [ %call119, %if.else146 ], [ %call119, %if.then259 ], [ %call119, %if.then265 ], [ %call119, %if.else282 ], [ %call119, %if.else215 ], [ %call119, %if.then238 ], [ %call119, %if.then249 ], [ %call119, %if.else232 ], [ null, %if.then110 ], [ null, %if.end96 ], [ %call119, %if.then272 ], [ %call119, %if.else274 ], [ %call119, %if.then280 ], [ %call119, %if.then193 ], [ %call119, %if.then188 ], [ %call119, %if.then141 ], [ %call119, %if.then144 ], [ %call119, %if.then167 ], [ %call119, %if.then183 ], [ %call119, %if.else195 ], [ %call119, %if.then176 ], [ null, %sw.bb27 ], [ null, %sw.bb21 ]
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end117 ], [ null, %if.end122 ], [ %call123, %if.then128 ], [ %call123, %if.then135 ], [ %call123, %if.else146 ], [ %call123, %if.then259 ], [ %call123, %if.then265 ], [ %call123, %if.else282 ], [ %call123, %if.else215 ], [ %call123, %if.then238 ], [ %call123, %if.then249 ], [ %call123, %if.else232 ], [ null, %if.then110 ], [ null, %if.end96 ], [ %call123, %if.then272 ], [ %call123, %if.else274 ], [ %call123, %if.then280 ], [ %call123, %if.then193 ], [ %call123, %if.then188 ], [ %call123, %if.then141 ], [ %call123, %if.then144 ], [ %call123, %if.then167 ], [ %call123, %if.then183 ], [ %call123, %if.else195 ], [ %call123, %if.then176 ], [ null, %sw.bb27 ], [ null, %sw.bb21 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end117 ], [ null, %if.end122 ], [ null, %if.then128 ], [ %call129, %if.then135 ], [ %call129, %if.else146 ], [ null, %if.then259 ], [ null, %if.then265 ], [ %call262, %if.else282 ], [ null, %if.else215 ], [ null, %if.then238 ], [ null, %if.then249 ], [ null, %if.else232 ], [ null, %if.then110 ], [ null, %if.end96 ], [ %call262, %if.then272 ], [ %call262, %if.else274 ], [ %call262, %if.then280 ], [ %call129, %if.then193 ], [ %call129, %if.then188 ], [ %call129, %if.then141 ], [ %call129, %if.then144 ], [ %call129, %if.then167 ], [ %call129, %if.then183 ], [ %call129, %if.else195 ], [ %call129, %if.then176 ], [ null, %sw.bb27 ], [ null, %sw.bb21 ]
  %p8inf.1 = phi %struct.pkcs8_priv_key_info_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end117 ], [ null, %if.end122 ], [ null, %if.then128 ], [ null, %if.then135 ], [ %call133, %if.else146 ], [ null, %if.then259 ], [ %p8inf.0, %if.then265 ], [ %p8inf.0, %if.else282 ], [ null, %if.else215 ], [ null, %if.then238 ], [ null, %if.then249 ], [ null, %if.else232 ], [ null, %if.then110 ], [ null, %if.end96 ], [ %p8inf.0, %if.then272 ], [ %p8inf.0, %if.else274 ], [ %p8inf.0, %if.then280 ], [ %call133, %if.then193 ], [ %call133, %if.then188 ], [ %call133, %if.then141 ], [ %call133, %if.then144 ], [ %call133, %if.then167 ], [ %call133, %if.then183 ], [ %call133, %if.else195 ], [ %call133, %if.then176 ], [ null, %sw.bb27 ], [ null, %sw.bb21 ]
  %p8.4 = phi %struct.X509_sig_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end117 ], [ null, %if.end122 ], [ null, %if.then128 ], [ null, %if.then135 ], [ null, %if.else146 ], [ %p8.3, %if.then259 ], [ %p8.3, %if.then265 ], [ %p8.3, %if.else282 ], [ null, %if.else215 ], [ null, %if.then238 ], [ %p8.2, %if.then249 ], [ null, %if.else232 ], [ null, %if.then110 ], [ null, %if.end96 ], [ %p8.3, %if.then272 ], [ %p8.3, %if.else274 ], [ %p8.3, %if.then280 ], [ %call180, %if.then193 ], [ %call180, %if.then188 ], [ null, %if.then141 ], [ null, %if.then144 ], [ null, %if.then167 ], [ null, %if.then183 ], [ %call180, %if.else195 ], [ null, %if.then176 ], [ null, %sw.bb27 ], [ null, %sw.bb21 ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.end117 ], [ 1, %if.end122 ], [ 1, %if.then128 ], [ 1, %if.then135 ], [ 1, %if.else146 ], [ 1, %if.then259 ], [ 1, %if.then265 ], [ 1, %if.else282 ], [ 1, %if.else215 ], [ 1, %if.then238 ], [ 1, %if.then249 ], [ 1, %if.else232 ], [ 1, %if.then110 ], [ 1, %if.end96 ], [ 0, %if.then272 ], [ 0, %if.else274 ], [ 0, %if.then280 ], [ 0, %if.then193 ], [ 0, %if.then188 ], [ 0, %if.then141 ], [ 0, %if.then144 ], [ 1, %if.then167 ], [ 1, %if.then183 ], [ 1, %if.else195 ], [ 1, %if.then176 ], [ 1, %sw.bb27 ], [ 1, %sw.bb21 ]
  call void @X509_SIG_free(%struct.X509_sig_st* noundef %p8.4) #5
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %p8inf.1) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #5
  %51 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %51) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  %call286 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #5
  %52 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %52, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i32 noundef 377) #5
  %53 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %53, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i32 noundef 378) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
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

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PBE_find(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32 (%struct.evp_cipher_ctx_st*, i8*, i32, %struct.asn1_type_st*, %struct.evp_cipher_st*, %struct.evp_md_st*, i32)** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_cbc() local_unnamed_addr #2

declare dso_local i32 @opt_int_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_long(i8* noundef, i64* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs8_priv_key_info_st* @EVP_PKEY2PKCS8(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef, %struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_algor_st* @PKCS5_pbe2_set_scrypt(%struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.X509_algor_st* @PKCS5_pbe2_set_iv(%struct.evp_cipher_st* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.X509_algor_st* @PKCS5_pbe_set(i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_read_pw_string(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @X509_ALGOR_free(%struct.X509_algor_st* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_sig_st* @PKCS8_set0_pbe(i8* noundef, i32 noundef, %struct.pkcs8_priv_key_info_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @PEM_write_bio_PKCS8(%struct.bio_st* noundef, %struct.X509_sig_st* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PKCS8_bio(%struct.bio_st* noundef, %struct.X509_sig_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.pkcs8_priv_key_info_st* @PEM_read_bio_PKCS8_PRIV_KEY_INFO(%struct.bio_st* noundef, %struct.pkcs8_priv_key_info_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef, %struct.pkcs8_priv_key_info_st** noundef) local_unnamed_addr #2

declare dso_local %struct.X509_sig_st* @PEM_read_bio_PKCS8(%struct.bio_st* noundef, %struct.X509_sig_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.X509_sig_st* @d2i_PKCS8_bio(%struct.bio_st* noundef, %struct.X509_sig_st** noundef) local_unnamed_addr #2

declare dso_local %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @i2d_PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #2

declare dso_local void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
