; ModuleID = 'apps/spkac.c'
source_filename = "apps/spkac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.Netscape_spki_st = type { %struct.Netscape_spkac_st*, %struct.X509_algor_st, %struct.asn1_string_st* }
%struct.Netscape_spkac_st = type { %struct.X509_pubkey_st*, %struct.asn1_string_st* }
%struct.X509_pubkey_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"spksect\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Specify the name of an SPKAC-dedicated section of configuration\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Create SPKAC using private key\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Private key file format (ENGINE, other values ignored)\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Challenge string\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"spkac\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Alternative SPKAC name\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"Sign new SPKAC with the specified digest (default: MD5)\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Don't print SPKAC\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"pubkey\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Output public key\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Verify SPKAC signature\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@spkac_options = dso_local constant [22 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 5, i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 8, i32 60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 13, i32 102, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 10, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 9, i32 115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 6, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [6 x i8] c"SPKAC\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.41 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Error setting public key\0A\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Error signing SPKAC\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"apps/spkac.c\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"SPKAC=%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"Can't find SPKAC called \22%s\22\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Error loading SPKAC\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Signature OK\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"Signature Failure\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @spkac_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %passin = alloca i8*, align 8
  %md = alloca %struct.evp_md_st*, align 8
  %keyformat = alloca i32, align 4
  %0 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* null, i8** %passin, align 8, !tbaa !3
  %1 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.evp_md_st* null, %struct.evp_md_st** %md, align 8, !tbaa !3
  %2 = bitcast i32* %keyformat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 0, i32* %keyformat, align 4, !tbaa !7
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([22 x %struct.options_st], [22 x %struct.options_st]* @spkac_options, i64 0, i64 0)) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %challenge.0 = phi i8* [ null, %entry ], [ %challenge.0.be, %while.cond.backedge ]
  %keyfile.0 = phi i8* [ null, %entry ], [ %keyfile.0.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %spkac.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), %entry ], [ %spkac.0.be, %while.cond.backedge ]
  %spksect.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), %entry ], [ %spksect.0.be, %while.cond.backedge ]
  %digest.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), %entry ], [ %digest.0.be, %while.cond.backedge ]
  %verify.0 = phi i32 [ 0, %entry ], [ %verify.0.be, %while.cond.backedge ]
  %noout.0 = phi i32 [ 0, %entry ], [ %noout.0.be, %while.cond.backedge ]
  %pubkey.0 = phi i32 [ 0, %entry ], [ %pubkey.0.be, %while.cond.backedge ]
  %call1 = call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb30
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
    i32 4, label %sw.bb10
    i32 10, label %sw.bb11
    i32 8, label %sw.bb13
    i32 13, label %sw.bb15
    i32 9, label %sw.bb18
    i32 11, label %sw.bb20
    i32 12, label %sw.bb22
    i32 14, label %sw.bb24
    i32 7, label %sw.bb26
    i32 1603, label %sw.bb30
    i32 1602, label %sw.bb30
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb30, %sw.bb15, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb13, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb6, %sw.bb4
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb30 ], [ %call28, %sw.bb26 ], [ %e.0, %sw.bb24 ], [ %e.0, %sw.bb22 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb13 ], [ %e.0, %sw.bb11 ], [ %e.0, %sw.bb10 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb8 ], [ %e.0, %sw.bb6 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %challenge.0.be = phi i8* [ %challenge.0, %sw.bb30 ], [ %challenge.0, %sw.bb26 ], [ %challenge.0, %sw.bb24 ], [ %challenge.0, %sw.bb22 ], [ %challenge.0, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %challenge.0, %sw.bb15 ], [ %challenge.0, %sw.bb13 ], [ %challenge.0, %sw.bb11 ], [ %challenge.0, %sw.bb10 ], [ %challenge.0, %sw.bb9 ], [ %challenge.0, %sw.bb8 ], [ %challenge.0, %sw.bb6 ], [ %challenge.0, %sw.bb4 ], [ %challenge.0, %while.cond ]
  %keyfile.0.be = phi i8* [ %keyfile.0, %sw.bb30 ], [ %keyfile.0, %sw.bb26 ], [ %keyfile.0, %sw.bb24 ], [ %keyfile.0, %sw.bb22 ], [ %keyfile.0, %sw.bb20 ], [ %keyfile.0, %sw.bb18 ], [ %keyfile.0, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %keyfile.0, %sw.bb11 ], [ %keyfile.0, %sw.bb10 ], [ %keyfile.0, %sw.bb9 ], [ %keyfile.0, %sw.bb8 ], [ %keyfile.0, %sw.bb6 ], [ %keyfile.0, %sw.bb4 ], [ %keyfile.0, %while.cond ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb24 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb20 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb15 ], [ %infile.0, %sw.bb13 ], [ %infile.0, %sw.bb11 ], [ %infile.0, %sw.bb10 ], [ %infile.0, %sw.bb9 ], [ %infile.0, %sw.bb8 ], [ %infile.0, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %infile.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb24 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb18 ], [ %outfile.0, %sw.bb15 ], [ %outfile.0, %sw.bb13 ], [ %outfile.0, %sw.bb11 ], [ %outfile.0, %sw.bb10 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb30 ], [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb24 ], [ %passinarg.0, %sw.bb22 ], [ %passinarg.0, %sw.bb20 ], [ %passinarg.0, %sw.bb18 ], [ %passinarg.0, %sw.bb15 ], [ %passinarg.0, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %passinarg.0, %sw.bb10 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb8 ], [ %passinarg.0, %sw.bb6 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ]
  %spkac.0.be = phi i8* [ %spkac.0, %sw.bb30 ], [ %spkac.0, %sw.bb26 ], [ %spkac.0, %sw.bb24 ], [ %spkac.0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %spkac.0, %sw.bb18 ], [ %spkac.0, %sw.bb15 ], [ %spkac.0, %sw.bb13 ], [ %spkac.0, %sw.bb11 ], [ %spkac.0, %sw.bb10 ], [ %spkac.0, %sw.bb9 ], [ %spkac.0, %sw.bb8 ], [ %spkac.0, %sw.bb6 ], [ %spkac.0, %sw.bb4 ], [ %spkac.0, %while.cond ]
  %spksect.0.be = phi i8* [ %spksect.0, %sw.bb30 ], [ %spksect.0, %sw.bb26 ], [ %spksect.0, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %spksect.0, %sw.bb20 ], [ %spksect.0, %sw.bb18 ], [ %spksect.0, %sw.bb15 ], [ %spksect.0, %sw.bb13 ], [ %spksect.0, %sw.bb11 ], [ %spksect.0, %sw.bb10 ], [ %spksect.0, %sw.bb9 ], [ %spksect.0, %sw.bb8 ], [ %spksect.0, %sw.bb6 ], [ %spksect.0, %sw.bb4 ], [ %spksect.0, %while.cond ]
  %digest.0.be = phi i8* [ %digest.0, %sw.bb30 ], [ %digest.0, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %digest.0, %sw.bb22 ], [ %digest.0, %sw.bb20 ], [ %digest.0, %sw.bb18 ], [ %digest.0, %sw.bb15 ], [ %digest.0, %sw.bb13 ], [ %digest.0, %sw.bb11 ], [ %digest.0, %sw.bb10 ], [ %digest.0, %sw.bb9 ], [ %digest.0, %sw.bb8 ], [ %digest.0, %sw.bb6 ], [ %digest.0, %sw.bb4 ], [ %digest.0, %while.cond ]
  %verify.0.be = phi i32 [ %verify.0, %sw.bb30 ], [ %verify.0, %sw.bb26 ], [ %verify.0, %sw.bb24 ], [ %verify.0, %sw.bb22 ], [ %verify.0, %sw.bb20 ], [ %verify.0, %sw.bb18 ], [ %verify.0, %sw.bb15 ], [ %verify.0, %sw.bb13 ], [ %verify.0, %sw.bb11 ], [ 1, %sw.bb10 ], [ %verify.0, %sw.bb9 ], [ %verify.0, %sw.bb8 ], [ %verify.0, %sw.bb6 ], [ %verify.0, %sw.bb4 ], [ %verify.0, %while.cond ]
  %noout.0.be = phi i32 [ %noout.0, %sw.bb30 ], [ %noout.0, %sw.bb26 ], [ %noout.0, %sw.bb24 ], [ %noout.0, %sw.bb22 ], [ %noout.0, %sw.bb20 ], [ %noout.0, %sw.bb18 ], [ %noout.0, %sw.bb15 ], [ %noout.0, %sw.bb13 ], [ %noout.0, %sw.bb11 ], [ %noout.0, %sw.bb10 ], [ %noout.0, %sw.bb9 ], [ 1, %sw.bb8 ], [ %noout.0, %sw.bb6 ], [ %noout.0, %sw.bb4 ], [ %noout.0, %while.cond ]
  %pubkey.0.be = phi i32 [ %pubkey.0, %sw.bb30 ], [ %pubkey.0, %sw.bb26 ], [ %pubkey.0, %sw.bb24 ], [ %pubkey.0, %sw.bb22 ], [ %pubkey.0, %sw.bb20 ], [ %pubkey.0, %sw.bb18 ], [ %pubkey.0, %sw.bb15 ], [ %pubkey.0, %sw.bb13 ], [ %pubkey.0, %sw.bb11 ], [ %pubkey.0, %sw.bb10 ], [ 1, %sw.bb9 ], [ %pubkey.0, %sw.bb8 ], [ %pubkey.0, %sw.bb6 ], [ %pubkey.0, %sw.bb4 ], [ %pubkey.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %sw.bb15, %while.end
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0), i8* noundef %call) #5
  br label %end

sw.bb3:                                           ; preds = %while.cond
  call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([22 x %struct.options_st], [22 x %struct.options_st]* @spkac_options, i64 0, i64 0)) #5
  br label %end

sw.bb4:                                           ; preds = %while.cond
  %call5 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %call7 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  %call12 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  %call14 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %call16 = call i8* @opt_arg() #5
  %call17 = call i32 @opt_format(i8* noundef %call16, i64 noundef 1982, i32* noundef nonnull %keyformat) #5
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = call i8* @opt_arg() #5
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

sw.bb30:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call31 = call i32 @opt_provider(i32 noundef %call1) #5
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call35 = call i32 @opt_num_rest() #5
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end38, label %opthelp

if.end38:                                         ; preds = %while.end
  %call39 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef null, i8** noundef nonnull %passin, i8** noundef null) #5
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0)) #5
  br label %end

if.end43:                                         ; preds = %if.end38
  %cmp44.not = icmp eq i8* %keyfile.0, null
  br i1 %cmp44.not, label %if.end89, label %if.then45

if.then45:                                        ; preds = %if.end43
  %call46 = call i32 @opt_md(i8* noundef %digest.0, %struct.evp_md_st** noundef nonnull %md) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %if.end49

if.end49:                                         ; preds = %if.then45
  %call50 = call i32 @strcmp(i8* noundef nonnull %keyfile.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %cond = select i1 %tobool51.not, i8* null, i8* %keyfile.0
  %5 = load i32, i32* %keyformat, align 4, !tbaa !7
  %6 = load i8*, i8** %passin, align 8, !tbaa !3
  %call52 = call %struct.evp_pkey_st* @load_key(i8* noundef %cond, i32 noundef %5, i32 noundef 1, i8* noundef %6, %struct.engine_st* noundef %e.0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #5
  %cmp53 = icmp eq %struct.evp_pkey_st* %call52, null
  br i1 %cmp53, label %end, label %if.end55

if.end55:                                         ; preds = %if.end49
  %call56 = call %struct.Netscape_spki_st* @NETSCAPE_SPKI_new() #5
  %cmp57 = icmp eq %struct.Netscape_spki_st* %call56, null
  br i1 %cmp57, label %end, label %if.end59

if.end59:                                         ; preds = %if.end55
  %cmp60.not = icmp eq i8* %challenge.0, null
  br i1 %cmp60.not, label %if.end66, label %if.then61

if.then61:                                        ; preds = %if.end59
  %spkac62 = getelementptr inbounds %struct.Netscape_spki_st, %struct.Netscape_spki_st* %call56, i64 0, i32 0
  %7 = load %struct.Netscape_spkac_st*, %struct.Netscape_spkac_st** %spkac62, align 8, !tbaa !11
  %challenge63 = getelementptr inbounds %struct.Netscape_spkac_st, %struct.Netscape_spkac_st* %7, i64 0, i32 1
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %challenge63, align 8, !tbaa !14
  %call64 = call i64 @strlen(i8* noundef nonnull %challenge.0) #6
  %conv = trunc i64 %call64 to i32
  %call65 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %8, i8* noundef nonnull %challenge.0, i32 noundef %conv) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end59
  %call67 = call i32 @NETSCAPE_SPKI_set_pubkey(%struct.Netscape_spki_st* noundef nonnull %call56, %struct.evp_pkey_st* noundef nonnull %call52) #5
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call70 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0)) #5
  br label %end

if.end71:                                         ; preds = %if.end66
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  %call72 = call i32 @NETSCAPE_SPKI_sign(%struct.Netscape_spki_st* noundef nonnull %call56, %struct.evp_pkey_st* noundef nonnull %call52, %struct.evp_md_st* noundef %10) #5
  %cmp73 = icmp slt i32 %call72, 1
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end71
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call76 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0)) #5
  br label %end

if.end77:                                         ; preds = %if.end71
  %call78 = call i8* @NETSCAPE_SPKI_b64_encode(%struct.Netscape_spki_st* noundef nonnull %call56) #5
  %cmp79 = icmp eq i8* %call78, null
  br i1 %cmp79, label %end, label %if.end82

if.end82:                                         ; preds = %if.end77
  %call83 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef 32769) #5
  %cmp84 = icmp eq %struct.bio_st* %call83, null
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end82
  call void @CRYPTO_free(i8* noundef nonnull %call78, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i32 noundef 174) #5
  br label %end

if.end87:                                         ; preds = %if.end82
  %call88 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call83, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8* noundef nonnull %call78) #5
  call void @CRYPTO_free(i8* noundef nonnull %call78, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i32 noundef 178) #5
  br label %end

if.end89:                                         ; preds = %if.end43
  %call90 = call %struct.conf_st* @app_load_config_internal(i8* noundef %infile.0, i32 noundef 0) #5
  %cmp91 = icmp eq %struct.conf_st* %call90, null
  br i1 %cmp91, label %end, label %if.end94

if.end94:                                         ; preds = %if.end89
  %call95 = call i8* @NCONF_get_string(%struct.conf_st* noundef nonnull %call90, i8* noundef %spksect.0, i8* noundef %spkac.0) #5
  %cmp96 = icmp eq i8* %call95, null
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end94
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call99 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.49, i64 0, i64 0), i8* noundef %spkac.0) #5
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %13) #5
  br label %end

if.end100:                                        ; preds = %if.end94
  %call101 = call %struct.Netscape_spki_st* @NETSCAPE_SPKI_b64_decode(i8* noundef nonnull %call95, i32 noundef -1) #5
  %cmp102 = icmp eq %struct.Netscape_spki_st* %call101, null
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end100
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call105 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0)) #5
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %15) #5
  br label %end

if.end106:                                        ; preds = %if.end100
  %call107 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef 32769) #5
  %cmp108 = icmp eq %struct.bio_st* %call107, null
  br i1 %cmp108, label %end, label %if.end111

if.end111:                                        ; preds = %if.end106
  %tobool112.not = icmp eq i32 %noout.0, 0
  br i1 %tobool112.not, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end111
  %call114 = call i32 @NETSCAPE_SPKI_print(%struct.bio_st* noundef nonnull %call107, %struct.Netscape_spki_st* noundef nonnull %call101) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end111
  %call116 = call %struct.evp_pkey_st* @NETSCAPE_SPKI_get_pubkey(%struct.Netscape_spki_st* noundef nonnull %call101) #5
  %tobool117.not = icmp eq i32 %verify.0, 0
  br i1 %tobool117.not, label %if.end126, label %if.then118

if.then118:                                       ; preds = %if.end115
  %call119 = call i32 @NETSCAPE_SPKI_verify(%struct.Netscape_spki_st* noundef nonnull %call101, %struct.evp_pkey_st* noundef %call116) #5
  %cmp120 = icmp sgt i32 %call119, 0
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  br i1 %cmp120, label %if.then122, label %if.else

if.then122:                                       ; preds = %if.then118
  %call123 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0)) #5
  br label %if.end126

if.else:                                          ; preds = %if.then118
  %call124 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0)) #5
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %17) #5
  br label %end

if.end126:                                        ; preds = %if.then122, %if.end115
  %tobool127.not = icmp eq i32 %pubkey.0, 0
  br i1 %tobool127.not, label %end, label %if.then128

if.then128:                                       ; preds = %if.end126
  %call129 = call i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef nonnull %call107, %struct.evp_pkey_st* noundef %call116) #5
  br label %end

end:                                              ; preds = %sw.bb30, %if.end126, %if.then128, %if.end106, %if.end89, %if.end77, %if.end55, %if.end49, %if.then45, %if.else, %if.then104, %if.then98, %if.end87, %if.then86, %if.then75, %if.then69, %if.then41, %sw.bb3, %opthelp
  %conf.0 = phi %struct.conf_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end49 ], [ null, %if.end55 ], [ null, %if.then75 ], [ null, %if.end77 ], [ null, %if.then86 ], [ null, %if.end87 ], [ null, %if.then69 ], [ null, %if.then45 ], [ null, %if.end89 ], [ %call90, %if.then98 ], [ %call90, %if.then104 ], [ %call90, %if.end106 ], [ %call90, %if.else ], [ null, %if.then41 ], [ %call90, %if.then128 ], [ %call90, %if.end126 ], [ null, %sw.bb30 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end49 ], [ %call52, %if.end55 ], [ %call52, %if.then75 ], [ %call52, %if.end77 ], [ %call52, %if.then86 ], [ %call52, %if.end87 ], [ %call52, %if.then69 ], [ null, %if.then45 ], [ null, %if.end89 ], [ null, %if.then98 ], [ null, %if.then104 ], [ null, %if.end106 ], [ %call116, %if.else ], [ null, %if.then41 ], [ %call116, %if.then128 ], [ %call116, %if.end126 ], [ null, %sw.bb30 ]
  %spki.0 = phi %struct.Netscape_spki_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end49 ], [ null, %if.end55 ], [ %call56, %if.then75 ], [ %call56, %if.end77 ], [ %call56, %if.then86 ], [ %call56, %if.end87 ], [ %call56, %if.then69 ], [ null, %if.then45 ], [ null, %if.end89 ], [ null, %if.then98 ], [ null, %if.then104 ], [ %call101, %if.end106 ], [ %call101, %if.else ], [ null, %if.then41 ], [ %call101, %if.then128 ], [ %call101, %if.end126 ], [ null, %sw.bb30 ]
  %out.0 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.end49 ], [ null, %if.end55 ], [ null, %if.then75 ], [ null, %if.end77 ], [ null, %if.then86 ], [ %call83, %if.end87 ], [ null, %if.then69 ], [ null, %if.then45 ], [ null, %if.end89 ], [ null, %if.then98 ], [ null, %if.then104 ], [ null, %if.end106 ], [ %call107, %if.else ], [ null, %if.then41 ], [ %call107, %if.then128 ], [ %call107, %if.end126 ], [ null, %sw.bb30 ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.end49 ], [ 1, %if.end55 ], [ 1, %if.then75 ], [ 1, %if.end77 ], [ 1, %if.then86 ], [ 0, %if.end87 ], [ 1, %if.then69 ], [ 1, %if.then45 ], [ 1, %if.end89 ], [ 1, %if.then98 ], [ 1, %if.then104 ], [ 1, %if.end106 ], [ 1, %if.else ], [ 1, %if.then41 ], [ 0, %if.then128 ], [ 0, %if.end126 ], [ 1, %sw.bb30 ]
  %18 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !3
  call void @EVP_MD_free(%struct.evp_md_st* noundef %18) #5
  call void @NCONF_free(%struct.conf_st* noundef %conf.0) #5
  call void @NETSCAPE_SPKI_free(%struct.Netscape_spki_st* noundef %spki.0) #5
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #5
  call void @release_engine(%struct.engine_st* noundef %e.0) #5
  %19 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %19, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i32 noundef 231) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_format(i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local i32 @opt_md(i8* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_key(i8* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.engine_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.Netscape_spki_st* @NETSCAPE_SPKI_new() local_unnamed_addr #2

declare dso_local i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @NETSCAPE_SPKI_set_pubkey(%struct.Netscape_spki_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @NETSCAPE_SPKI_sign(%struct.Netscape_spki_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local i8* @NETSCAPE_SPKI_b64_encode(%struct.Netscape_spki_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_internal(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local %struct.Netscape_spki_st* @NETSCAPE_SPKI_b64_decode(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @NETSCAPE_SPKI_print(%struct.bio_st* noundef, %struct.Netscape_spki_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @NETSCAPE_SPKI_get_pubkey(%struct.Netscape_spki_st* noundef) local_unnamed_addr #2

declare dso_local i32 @NETSCAPE_SPKI_verify(%struct.Netscape_spki_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local void @NETSCAPE_SPKI_free(%struct.Netscape_spki_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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
!11 = !{!12, !4, i64 0}
!12 = !{!"Netscape_spki_st", !4, i64 0, !13, i64 8, !4, i64 24}
!13 = !{!"X509_algor_st", !4, i64 0, !4, i64 8}
!14 = !{!15, !4, i64 8}
!15 = !{!"Netscape_spkac_st", !4, i64 0, !4, i64 8}
