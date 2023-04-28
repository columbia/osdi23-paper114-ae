; ModuleID = 'apps/kdf.c'
source_filename = "apps/kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.stack_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [30 x i8] c"Usage: %s [options] kdf_name\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kdfopt\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"KDF algorithm control parameters in n:v form\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Cipher\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"See 'Supported Controls' in the EVP_KDF_ docs\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"keylen\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"The size of the output derived key\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Output to filename rather than stdout\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"Output in binary format (default is hexadecimal)\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"kdf_name\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Name of the KDF algorithm\00", align 1
@kdf_options = dso_local constant [19 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 7, i32 115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 8, i32 115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.30 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"apps/kdf.c\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Invalid KDF name %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"KDF parameter error\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Invalid derived key length.\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"out buffer\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"EVP_KDF_derive failed\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"algorithm name\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kdf_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %opts = alloca %struct.stack_st_OPENSSL_STRING*, align 8
  %0 = bitcast %struct.stack_st_OPENSSL_STRING** %opts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.stack_st_OPENSSL_STRING* null, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([19 x %struct.options_st], [19 x %struct.options_st]* @kdf_options, i64 0, i64 0)) #7
  %1 = bitcast %struct.stack_st_OPENSSL_STRING** %opts to %struct.stack_st**
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %out_bin.0 = phi i32 [ 0, %entry ], [ %out_bin.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %dkm_len.0 = phi i64 [ 0, %entry ], [ %dkm_len.0.be, %while.cond.backedge ]
  %digest.0 = phi i8* [ null, %entry ], [ %digest.0.be, %while.cond.backedge ]
  %cipher.0 = phi i8* [ null, %entry ], [ %cipher.0.be, %while.cond.backedge ]
  %mac.0 = phi i8* [ null, %entry ], [ %mac.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #7
  switch i32 %call1, label %opthelp [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb7
    i32 2, label %sw.bb9
    i32 6, label %sw.bb21
    i32 7, label %sw.bb28
    i32 8, label %sw.bb35
    i32 1600, label %while.cond.backedge
    i32 1604, label %while.cond.backedge
    i32 1601, label %sw.bb43
    i32 1602, label %sw.bb43
    i32 1603, label %sw.bb43
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %sw.bb43, %sw.bb35, %sw.bb28, %sw.bb21, %lor.lhs.false, %sw.bb7, %sw.bb4, %sw.bb3
  %out_bin.0.be = phi i32 [ %out_bin.0, %sw.bb43 ], [ %out_bin.0, %sw.bb35 ], [ %out_bin.0, %sw.bb28 ], [ %out_bin.0, %sw.bb21 ], [ %out_bin.0, %lor.lhs.false ], [ %out_bin.0, %sw.bb7 ], [ %out_bin.0, %sw.bb4 ], [ 1, %sw.bb3 ], [ %out_bin.0, %while.cond ], [ %out_bin.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb43 ], [ %outfile.0, %sw.bb35 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %lor.lhs.false ], [ %call8, %sw.bb7 ], [ %outfile.0, %sw.bb4 ], [ %outfile.0, %sw.bb3 ], [ %outfile.0, %while.cond ], [ %outfile.0, %while.cond ]
  %dkm_len.0.be = phi i64 [ %dkm_len.0, %sw.bb43 ], [ %dkm_len.0, %sw.bb35 ], [ %dkm_len.0, %sw.bb28 ], [ %dkm_len.0, %sw.bb21 ], [ %dkm_len.0, %lor.lhs.false ], [ %dkm_len.0, %sw.bb7 ], [ %conv, %sw.bb4 ], [ %dkm_len.0, %sw.bb3 ], [ %dkm_len.0, %while.cond ], [ %dkm_len.0, %while.cond ]
  %digest.0.be = phi i8* [ %digest.0, %sw.bb43 ], [ %digest.0, %sw.bb35 ], [ %call30, %sw.bb28 ], [ %digest.0, %sw.bb21 ], [ %digest.0, %lor.lhs.false ], [ %digest.0, %sw.bb7 ], [ %digest.0, %sw.bb4 ], [ %digest.0, %sw.bb3 ], [ %digest.0, %while.cond ], [ %digest.0, %while.cond ]
  %cipher.0.be = phi i8* [ %cipher.0, %sw.bb43 ], [ %cipher.0, %sw.bb35 ], [ %cipher.0, %sw.bb28 ], [ %call23, %sw.bb21 ], [ %cipher.0, %lor.lhs.false ], [ %cipher.0, %sw.bb7 ], [ %cipher.0, %sw.bb4 ], [ %cipher.0, %sw.bb3 ], [ %cipher.0, %while.cond ], [ %cipher.0, %while.cond ]
  %mac.0.be = phi i8* [ %mac.0, %sw.bb43 ], [ %call37, %sw.bb35 ], [ %mac.0, %sw.bb28 ], [ %mac.0, %sw.bb21 ], [ %mac.0, %lor.lhs.false ], [ %mac.0, %sw.bb7 ], [ %mac.0, %sw.bb4 ], [ %mac.0, %sw.bb3 ], [ %mac.0, %while.cond ], [ %mac.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %sw.bb35, %sw.bb28, %sw.bb21, %if.end, %lor.lhs.false, %while.end, %if.then59
  %digest.1 = phi i8* [ %digest.0, %while.end ], [ %digest.0, %if.then59 ], [ %digest.0, %lor.lhs.false ], [ %digest.0, %if.end ], [ %digest.0, %sw.bb21 ], [ null, %sw.bb28 ], [ %digest.0, %sw.bb35 ], [ %digest.0, %while.cond ]
  %cipher.1 = phi i8* [ %cipher.0, %while.end ], [ %cipher.0, %if.then59 ], [ %cipher.0, %lor.lhs.false ], [ %cipher.0, %if.end ], [ null, %sw.bb21 ], [ %cipher.0, %sw.bb28 ], [ %cipher.0, %sw.bb35 ], [ %cipher.0, %while.cond ]
  %mac.1 = phi i8* [ %mac.0, %while.end ], [ %mac.0, %if.then59 ], [ %mac.0, %lor.lhs.false ], [ %mac.0, %if.end ], [ %mac.0, %sw.bb21 ], [ %mac.0, %sw.bb28 ], [ null, %sw.bb35 ], [ %mac.0, %while.cond ]
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call) #7
  br label %if.then122

sw.bb:                                            ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([19 x %struct.options_st], [19 x %struct.options_st]* @kdf_options, i64 0, i64 0)) #7
  br label %cleanup126

sw.bb3:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb4:                                           ; preds = %while.cond
  %call5 = tail call i8* @opt_arg() #7
  %call6 = tail call i32 @atoi(i8* noundef %call5) #8
  %conv = sext i32 %call6 to i64
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = tail call i8* @opt_arg() #7
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %3 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %cmp10 = icmp eq %struct.stack_st_OPENSSL_STRING* %3, null
  br i1 %cmp10, label %if.end, label %lor.lhs.false

if.end:                                           ; preds = %sw.bb9
  %call12 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  store %struct.stack_st* %call12, %struct.stack_st** %1, align 8, !tbaa !3
  %4 = bitcast %struct.stack_st* %call12 to %struct.stack_st_OPENSSL_STRING*
  %cmp13 = icmp eq %struct.stack_st* %call12, null
  br i1 %cmp13, label %opthelp, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb9, %if.end
  %5 = phi %struct.stack_st_OPENSSL_STRING* [ %4, %if.end ], [ %3, %sw.bb9 ]
  %call15 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef nonnull %5) #9
  %call16 = tail call i8* @opt_arg() #7
  %call18 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call15, i8* noundef %call16) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %opthelp, label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  tail call void @CRYPTO_free(i8* noundef %cipher.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 111) #7
  %call22 = tail call i8* @opt_arg() #7
  %call23 = call fastcc i8* @alloc_kdf_algorithm_name(%struct.stack_st_OPENSSL_STRING** noundef nonnull %opts, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call22) #9
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %opthelp, label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  tail call void @CRYPTO_free(i8* noundef %digest.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 117) #7
  %call29 = tail call i8* @opt_arg() #7
  %call30 = call fastcc i8* @alloc_kdf_algorithm_name(%struct.stack_st_OPENSSL_STRING** noundef nonnull %opts, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* noundef %call29) #9
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %opthelp, label %while.cond.backedge

sw.bb35:                                          ; preds = %while.cond
  tail call void @CRYPTO_free(i8* noundef %mac.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 123) #7
  %call36 = tail call i8* @opt_arg() #7
  %call37 = call fastcc i8* @alloc_kdf_algorithm_name(%struct.stack_st_OPENSSL_STRING** noundef nonnull %opts, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call36) #9
  %cmp38 = icmp eq i8* %call37, null
  br i1 %cmp38, label %opthelp, label %while.cond.backedge

sw.bb43:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call44 = tail call i32 @opt_provider(i32 noundef %call1) #7
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then122, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call48 = tail call i32 @opt_num_rest() #7
  %call49 = tail call i8** @opt_rest() #7
  %cmp50.not = icmp eq i32 %call48, 1
  br i1 %cmp50.not, label %if.end53, label %opthelp

if.end53:                                         ; preds = %while.end
  %call54 = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #7
  %6 = load i8*, i8** %call49, align 8, !tbaa !3
  %call55 = tail call i8* @app_get0_propq() #7
  %call56 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %call54, i8* noundef %6, i8* noundef %call55) #7
  %cmp57 = icmp eq %struct.evp_kdf_st* %call56, null
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end53
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %8 = load i8*, i8** %call49, align 8, !tbaa !3
  %call61 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i8* noundef %8) #7
  br label %opthelp

if.end62:                                         ; preds = %if.end53
  %call63 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef nonnull %call56) #7
  %cmp64 = icmp eq %struct.evp_kdf_ctx_st* %call63, null
  br i1 %cmp64, label %if.then122, label %if.end67

if.end67:                                         ; preds = %if.end62
  %9 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %cmp68.not = icmp eq %struct.stack_st_OPENSSL_STRING* %9, null
  br i1 %cmp68.not, label %if.end86, label %if.then70

if.then70:                                        ; preds = %if.end67
  %call71 = tail call %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef nonnull %call56) #7
  %call72 = tail call %struct.ossl_param_st* @app_params_new_from_opts(%struct.stack_st_OPENSSL_STRING* noundef nonnull %9, %struct.ossl_param_st* noundef %call71) #7
  %cmp73 = icmp eq %struct.ossl_param_st* %call72, null
  br i1 %cmp73, label %if.then122, label %if.end76

if.end76:                                         ; preds = %if.then70
  %call77 = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef nonnull %call63, %struct.ossl_param_st* noundef nonnull %call72) #7
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %select.unfold, label %if.end81

if.end81:                                         ; preds = %if.end76
  tail call void @app_params_free(%struct.ossl_param_st* noundef nonnull %call72) #7
  br label %if.end86

select.unfold:                                    ; preds = %if.end76
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call80 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0)) #7
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %11) #7
  tail call void @app_params_free(%struct.ossl_param_st* noundef nonnull %call72) #7
  br label %if.then122

if.end86:                                         ; preds = %if.end81, %if.end67
  %tobool87.not = icmp eq i32 %out_bin.0, 0
  %cond = select i1 %tobool87.not, i32 32769, i32 2
  %call88 = tail call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0, i8 noundef signext 119, i32 noundef %cond) #7
  %cmp89 = icmp eq %struct.bio_st* %call88, null
  br i1 %cmp89, label %if.then122, label %if.end92

if.end92:                                         ; preds = %if.end86
  %cmp93 = icmp eq i64 %dkm_len.0, 0
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end92
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call96 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0)) #7
  br label %if.then122

if.end97:                                         ; preds = %if.end92
  %call98 = tail call i8* @app_malloc(i64 noundef %dkm_len.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #7
  %cmp99 = icmp eq i8* %call98, null
  br i1 %cmp99, label %if.then122, label %if.end102

if.end102:                                        ; preds = %if.end97
  %call103 = tail call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call63, i8* noundef nonnull %call98, i64 noundef %dkm_len.0, %struct.ossl_param_st* noundef null) #7
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then105, label %if.end107

if.then105:                                       ; preds = %if.end102
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call106 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0)) #7
  br label %if.then122

if.end107:                                        ; preds = %if.end102
  br i1 %tobool87.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %if.end107
  %conv110 = trunc i64 %dkm_len.0 to i32
  %call111 = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %call88, i8* noundef nonnull %call98, i32 noundef %conv110) #7
  br label %cleanup126

if.else:                                          ; preds = %if.end107
  %call112 = tail call i8* @OPENSSL_buf2hexstr(i8* noundef nonnull %call98, i64 noundef %dkm_len.0) #7
  %cmp113 = icmp eq i8* %call112, null
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.else
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call116 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0)) #7
  br label %if.then122

if.end117:                                        ; preds = %if.else
  %call118 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef nonnull %call88, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* noundef nonnull %call112) #7
  br label %cleanup126

if.then122:                                       ; preds = %sw.bb43, %select.unfold, %if.then70, %if.end97, %if.end86, %if.end62, %if.then115, %if.then105, %if.then95, %opthelp
  %dkm_len.0258 = phi i64 [ %dkm_len.0, %opthelp ], [ 0, %if.then95 ], [ %dkm_len.0, %if.then105 ], [ %dkm_len.0, %if.then115 ], [ %dkm_len.0, %if.end62 ], [ %dkm_len.0, %if.end86 ], [ %dkm_len.0, %if.end97 ], [ %dkm_len.0, %if.then70 ], [ %dkm_len.0, %select.unfold ], [ %dkm_len.0, %sw.bb43 ]
  %dkm_bytes.0.ph = phi i8* [ null, %opthelp ], [ null, %if.then95 ], [ %call98, %if.then105 ], [ %call98, %if.then115 ], [ null, %if.end62 ], [ null, %if.end86 ], [ null, %if.end97 ], [ null, %if.then70 ], [ null, %select.unfold ], [ null, %sw.bb43 ]
  %out.0.ph = phi %struct.bio_st* [ null, %opthelp ], [ %call88, %if.then95 ], [ %call88, %if.then105 ], [ %call88, %if.then115 ], [ null, %if.end62 ], [ null, %if.end86 ], [ %call88, %if.end97 ], [ null, %if.then70 ], [ null, %select.unfold ], [ null, %sw.bb43 ]
  %kdf.1.ph = phi %struct.evp_kdf_st* [ null, %opthelp ], [ %call56, %if.then95 ], [ %call56, %if.then105 ], [ %call56, %if.then115 ], [ %call56, %if.end62 ], [ %call56, %if.end86 ], [ %call56, %if.end97 ], [ %call56, %if.then70 ], [ %call56, %select.unfold ], [ null, %sw.bb43 ]
  %ctx.0.ph = phi %struct.evp_kdf_ctx_st* [ null, %opthelp ], [ %call63, %if.then95 ], [ %call63, %if.then105 ], [ %call63, %if.then115 ], [ null, %if.end62 ], [ %call63, %if.end86 ], [ %call63, %if.end97 ], [ %call63, %if.then70 ], [ %call63, %select.unfold ], [ null, %sw.bb43 ]
  %digest.3.ph = phi i8* [ %digest.1, %opthelp ], [ %digest.0, %if.then95 ], [ %digest.0, %if.then105 ], [ %digest.0, %if.then115 ], [ %digest.0, %if.end62 ], [ %digest.0, %if.end86 ], [ %digest.0, %if.end97 ], [ %digest.0, %if.then70 ], [ %digest.0, %select.unfold ], [ %digest.0, %sw.bb43 ]
  %cipher.3.ph = phi i8* [ %cipher.1, %opthelp ], [ %cipher.0, %if.then95 ], [ %cipher.0, %if.then105 ], [ %cipher.0, %if.then115 ], [ %cipher.0, %if.end62 ], [ %cipher.0, %if.end86 ], [ %cipher.0, %if.end97 ], [ %cipher.0, %if.then70 ], [ %cipher.0, %select.unfold ], [ %cipher.0, %sw.bb43 ]
  %mac.3.ph = phi i8* [ %mac.1, %opthelp ], [ %mac.0, %if.then95 ], [ %mac.0, %if.then105 ], [ %mac.0, %if.then115 ], [ %mac.0, %if.end62 ], [ %mac.0, %if.end86 ], [ %mac.0, %if.end97 ], [ %mac.0, %if.then70 ], [ %mac.0, %select.unfold ], [ %mac.0, %sw.bb43 ]
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %15) #7
  br label %cleanup126

cleanup126:                                       ; preds = %if.then122, %if.then109, %if.end117, %sw.bb
  %dkm_len.0257 = phi i64 [ %dkm_len.0258, %if.then122 ], [ %dkm_len.0, %sw.bb ], [ %dkm_len.0, %if.end117 ], [ %dkm_len.0, %if.then109 ]
  %mac.3220 = phi i8* [ %mac.3.ph, %if.then122 ], [ %mac.0, %sw.bb ], [ %mac.0, %if.end117 ], [ %mac.0, %if.then109 ]
  %cipher.3218 = phi i8* [ %cipher.3.ph, %if.then122 ], [ %cipher.0, %sw.bb ], [ %cipher.0, %if.end117 ], [ %cipher.0, %if.then109 ]
  %digest.3216 = phi i8* [ %digest.3.ph, %if.then122 ], [ %digest.0, %sw.bb ], [ %digest.0, %if.end117 ], [ %digest.0, %if.then109 ]
  %ctx.0214 = phi %struct.evp_kdf_ctx_st* [ %ctx.0.ph, %if.then122 ], [ null, %sw.bb ], [ %call63, %if.end117 ], [ %call63, %if.then109 ]
  %kdf.1212 = phi %struct.evp_kdf_st* [ %kdf.1.ph, %if.then122 ], [ null, %sw.bb ], [ %call56, %if.end117 ], [ %call56, %if.then109 ]
  %out.0210 = phi %struct.bio_st* [ %out.0.ph, %if.then122 ], [ null, %sw.bb ], [ %call88, %if.end117 ], [ %call88, %if.then109 ]
  %dkm_bytes.0208 = phi i8* [ %dkm_bytes.0.ph, %if.then122 ], [ null, %sw.bb ], [ %call98, %if.end117 ], [ %call98, %if.then109 ]
  %hexout.1206 = phi i8* [ null, %if.then122 ], [ null, %sw.bb ], [ %call112, %if.end117 ], [ null, %if.then109 ]
  %ret.0204 = phi i32 [ 1, %if.then122 ], [ 0, %sw.bb ], [ 0, %if.end117 ], [ 0, %if.then109 ]
  tail call void @CRYPTO_clear_free(i8* noundef %dkm_bytes.0208, i64 noundef %dkm_len.0257, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 201) #7
  %16 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %opts, align 8, !tbaa !3
  %call124 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %16) #9
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call124) #7
  tail call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %kdf.1212) #7
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %ctx.0214) #7
  %call125 = tail call i32 @BIO_free(%struct.bio_st* noundef %out.0210) #7
  tail call void @CRYPTO_free(i8* noundef %hexout.1206, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 206) #7
  tail call void @CRYPTO_free(i8* noundef %cipher.3218, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 207) #7
  tail call void @CRYPTO_free(i8* noundef %digest.3216, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 208) #7
  tail call void @CRYPTO_free(i8* noundef %mac.3220, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 209) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %ret.0204
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @alloc_kdf_algorithm_name(%struct.stack_st_OPENSSL_STRING** nocapture noundef %optp, i8* noundef %name, i8* noundef %arg) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %name) #8
  %call1 = tail call i64 @strlen(i8* noundef %arg) #8
  %add = add i64 %call, 2
  %add2 = add i64 %add, %call1
  %0 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %optp, align 8, !tbaa !3
  %cmp = icmp eq %struct.stack_st_OPENSSL_STRING* %0, null
  br i1 %cmp, label %if.end, label %if.end6

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #7
  %1 = bitcast %struct.stack_st_OPENSSL_STRING** %optp to %struct.stack_st**
  store %struct.stack_st* %call3, %struct.stack_st** %1, align 8, !tbaa !3
  %cmp4 = icmp eq %struct.stack_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry, %if.end
  %call7 = tail call i8* @app_malloc(i64 noundef %add2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0)) #7
  %call8 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef %call7, i64 noundef %add2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8* noundef %name, i8* noundef %arg) #7
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %optp, align 8, !tbaa !3
  %call9 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #9
  %call11 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call9, i8* noundef %call7) #7
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @CRYPTO_free(i8* noundef %call7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 noundef 66) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.end13
  %retval.0 = phi i8* [ null, %if.end13 ], [ null, %if.end ], [ %call7, %if.end6 ]
  ret i8* %retval.0
}

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local i8* @app_get0_propq() local_unnamed_addr #2

declare dso_local %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @app_params_new_from_opts(%struct.stack_st_OPENSSL_STRING* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @app_params_free(%struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_buf2hexstr(i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
