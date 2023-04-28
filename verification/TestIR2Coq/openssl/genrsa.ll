; ModuleID = 'apps/genrsa.c'
source_filename = "apps/genrsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_pkey_ctx_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.bignum_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [29 x i8] c"Usage: %s [options] numbits\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"(deprecated) Use 3 for the E value\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Use the Fermat number F4 (0x10001) for the E value\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"f4\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Output the key to specified file\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Specify number of primes\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Verbose output\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Use traditional format for private keys\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Encrypt the output with any supported cipher\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"numbits\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Size of key in bits\00", align 1
@genrsa_options = dso_local constant [25 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 8, i32 112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 1605, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.40 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@verbose = internal unnamed_addr global i1 false, align 4
@.str.41 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for RSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"Extra arguments given.\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Error setting RSA length\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Error allocating RSA public exponent\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Error setting RSA public exponent\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Error setting number of primes\0A\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Error cannot access RSA e\0A\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"e is %s (0x%s)\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"apps/genrsa.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @genrsa_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %enc = alloca %struct.evp_cipher_st*, align 8
  %num = alloca i32, align 4
  %passout = alloca i8*, align 8
  %e = alloca %struct.bignum_st*, align 8
  %call = tail call %struct.bn_gencb_st* @BN_GENCB_new() #3
  %call1 = tail call %struct.bignum_st* @BN_new() #3
  %0 = bitcast %struct.evp_pkey_ctx_st** %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %1 = bitcast %struct.evp_cipher_st** %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %2 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  store i32 2048, i32* %num, align 4, !tbaa !7
  %3 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  store i8* null, i8** %passout, align 8, !tbaa !3
  %cmp = icmp eq %struct.bignum_st* %call1, null
  %cmp2 = icmp eq %struct.bn_gencb_st* %call, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %end, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([25 x %struct.options_st], [25 x %struct.options_st]* @genrsa_options, i64 0, i64 0)) #3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %primes.0 = phi i32 [ 2, %if.end ], [ %primes.0.be, %while.cond.backedge ]
  %f4.0 = phi i64 [ 65537, %if.end ], [ %f4.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %if.end ], [ %outfile.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %if.end ], [ %passoutarg.0.be, %while.cond.backedge ]
  %eng.0 = phi %struct.engine_st* [ null, %if.end ], [ %eng.0.be, %while.cond.backedge ]
  %ciphername.0 = phi i8* [ null, %if.end ], [ %ciphername.0.be, %while.cond.backedge ]
  %traditional.0 = phi i32 [ 0, %if.end ], [ %traditional.0.be, %while.cond.backedge ]
  %call4 = tail call i32 @opt_next() #3
  switch i32 %call4, label %while.cond.backedge [
    i32 0, label %while.end
    i32 6, label %sw.bb26
    i32 -1, label %opthelp
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
    i32 5, label %sw.bb10
    i32 4, label %sw.bb12
    i32 1605, label %sw.bb33
    i32 9, label %sw.bb32
    i32 1501, label %sw.bb16
    i32 1502, label %sw.bb16
    i32 8, label %sw.bb30
    i32 7, label %sw.bb28
    i32 1601, label %sw.bb21
    i32 1602, label %sw.bb21
    i32 1603, label %sw.bb21
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb21, %sw.bb16, %sw.bb33, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb8
  %primes.0.be = phi i32 [ %primes.0, %sw.bb26 ], [ %primes.0, %sw.bb21 ], [ %primes.0, %sw.bb28 ], [ %call31, %sw.bb30 ], [ %primes.0, %sw.bb16 ], [ %primes.0, %sw.bb32 ], [ %primes.0, %sw.bb33 ], [ %primes.0, %sw.bb12 ], [ %primes.0, %sw.bb10 ], [ %primes.0, %sw.bb9 ], [ %primes.0, %sw.bb8 ], [ %primes.0, %while.cond ]
  %f4.0.be = phi i64 [ %f4.0, %sw.bb26 ], [ %f4.0, %sw.bb21 ], [ %f4.0, %sw.bb28 ], [ %f4.0, %sw.bb30 ], [ %f4.0, %sw.bb16 ], [ %f4.0, %sw.bb32 ], [ %f4.0, %sw.bb33 ], [ %f4.0, %sw.bb12 ], [ %f4.0, %sw.bb10 ], [ 65537, %sw.bb9 ], [ 3, %sw.bb8 ], [ %f4.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb26 ], [ %outfile.0, %sw.bb21 ], [ %outfile.0, %sw.bb28 ], [ %outfile.0, %sw.bb30 ], [ %outfile.0, %sw.bb16 ], [ %outfile.0, %sw.bb32 ], [ %outfile.0, %sw.bb33 ], [ %outfile.0, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %outfile.0, %sw.bb9 ], [ %outfile.0, %sw.bb8 ], [ %outfile.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %call27, %sw.bb26 ], [ %passoutarg.0, %sw.bb21 ], [ %passoutarg.0, %sw.bb28 ], [ %passoutarg.0, %sw.bb30 ], [ %passoutarg.0, %sw.bb16 ], [ %passoutarg.0, %sw.bb32 ], [ %passoutarg.0, %sw.bb33 ], [ %passoutarg.0, %sw.bb12 ], [ %passoutarg.0, %sw.bb10 ], [ %passoutarg.0, %sw.bb9 ], [ %passoutarg.0, %sw.bb8 ], [ %passoutarg.0, %while.cond ]
  %eng.0.be = phi %struct.engine_st* [ %eng.0, %sw.bb26 ], [ %eng.0, %sw.bb21 ], [ %eng.0, %sw.bb28 ], [ %eng.0, %sw.bb30 ], [ %eng.0, %sw.bb16 ], [ %eng.0, %sw.bb32 ], [ %eng.0, %sw.bb33 ], [ %call14, %sw.bb12 ], [ %eng.0, %sw.bb10 ], [ %eng.0, %sw.bb9 ], [ %eng.0, %sw.bb8 ], [ %eng.0, %while.cond ]
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb26 ], [ %ciphername.0, %sw.bb21 ], [ %call29, %sw.bb28 ], [ %ciphername.0, %sw.bb30 ], [ %ciphername.0, %sw.bb16 ], [ %ciphername.0, %sw.bb32 ], [ %ciphername.0, %sw.bb33 ], [ %ciphername.0, %sw.bb12 ], [ %ciphername.0, %sw.bb10 ], [ %ciphername.0, %sw.bb9 ], [ %ciphername.0, %sw.bb8 ], [ %ciphername.0, %while.cond ]
  %traditional.0.be = phi i32 [ %traditional.0, %sw.bb26 ], [ %traditional.0, %sw.bb21 ], [ %traditional.0, %sw.bb28 ], [ %traditional.0, %sw.bb30 ], [ %traditional.0, %sw.bb16 ], [ %traditional.0, %sw.bb32 ], [ 1, %sw.bb33 ], [ %traditional.0, %sw.bb12 ], [ %traditional.0, %sw.bb10 ], [ %traditional.0, %sw.bb9 ], [ %traditional.0, %sw.bb8 ], [ %traditional.0, %while.cond ]
  br label %while.cond, !llvm.loop !9

opthelp:                                          ; preds = %while.cond, %if.then49
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call3) #3
  br label %end

sw.bb7:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([25 x %struct.options_st], [25 x %struct.options_st]* @genrsa_options, i64 0, i64 0)) #3
  br label %end

sw.bb8:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  %call11 = tail call i8* @opt_arg() #3
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  %call13 = tail call i8* @opt_arg() #3
  %call14 = tail call %struct.engine_st* @setup_engine_methods(i8* noundef %call13, i32 noundef -1, i32 noundef 0) #3
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond, %while.cond
  %call17 = tail call i32 @opt_rand(i32 noundef %call4) #3
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %end, label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call22 = tail call i32 @opt_provider(i32 noundef %call4) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond
  %call27 = tail call i8* @opt_arg() #3
  br label %while.cond.backedge

sw.bb28:                                          ; preds = %while.cond
  %call29 = tail call i8* @opt_unknown() #3
  br label %while.cond.backedge

sw.bb30:                                          ; preds = %while.cond
  %call31 = tail call i32 @opt_int_arg() #3
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  store i1 true, i1* @verbose, align 4
  br label %while.cond.backedge

sw.bb33:                                          ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call34 = tail call i32 @opt_num_rest() #3
  %call35 = tail call i8** @opt_rest() #3
  %cmp36 = icmp eq i32 %call34, 1
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %while.end
  %5 = load i8*, i8** %call35, align 8, !tbaa !3
  %call38 = call i32 @opt_int(i8* noundef %5, i32* noundef nonnull %num) #3
  %tobool39 = icmp eq i32 %call38, 0
  %6 = load i32, i32* %num, align 4
  %cmp41 = icmp slt i32 %6, 1
  %or.cond149 = select i1 %tobool39, i1 true, i1 %cmp41
  br i1 %or.cond149, label %end, label %if.end43

if.end43:                                         ; preds = %if.then37
  %cmp44 = icmp ugt i32 %6, 16384
  br i1 %cmp44, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end43
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call46 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([144 x i8], [144 x i8]* @.str.41, i64 0, i64 0), i32 noundef 16384, i32 noundef %6) #3
  br label %if.end52

if.else:                                          ; preds = %while.end
  %cmp48 = icmp sgt i32 %call34, 0
  br i1 %cmp48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.else
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call50 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0)) #3
  br label %opthelp

if.end52:                                         ; preds = %if.else, %if.end43, %if.then45
  %call53 = call i32 @app_RAND_load() #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %end, label %if.end56

if.end56:                                         ; preds = %if.end52
  %cmp57.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp57.not, label %if.end63, label %if.then58

if.then58:                                        ; preds = %if.end56
  %call59 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %enc) #3
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %end, label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end56
  %call64 = call i32 @app_passwd(i8* noundef null, i8* noundef %passoutarg.0, i8** noundef null, i8** noundef nonnull %passout) #3
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0)) #3
  br label %end

if.end68:                                         ; preds = %if.end63
  %call69 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef 32773, i32 noundef 1) #3
  %cmp70 = icmp eq %struct.bio_st* %call69, null
  br i1 %cmp70, label %end, label %if.end72

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef nonnull %ctx, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), %struct.engine_st* noundef %eng.0, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #3
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %end, label %if.end76

if.end76:                                         ; preds = %if.end72
  %10 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef %10, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @genrsa_cb) #3
  %11 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %12 = load i8*, i8** bitcast (%struct.bio_st** @bio_err to i8**), align 8, !tbaa !3
  call void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef %11, i8* noundef %12) #3
  %13 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %14 = load i32, i32* %num, align 4, !tbaa !7
  %call77 = call i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef %13, i32 noundef %14) #3
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call80 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0)) #3
  br label %end

if.end81:                                         ; preds = %if.end76
  %call82 = call i32 @BN_set_word(%struct.bignum_st* noundef %call1, i64 noundef %f4.0) #3
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call85 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i64 0, i64 0)) #3
  br label %end

if.end86:                                         ; preds = %if.end81
  %17 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %call87 = call i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef %17, %struct.bignum_st* noundef %call1) #3
  %cmp88 = icmp slt i32 %call87, 1
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end86
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call90 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0)) #3
  br label %end

if.end91:                                         ; preds = %if.end86
  %19 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %call92 = call i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef %19, i32 noundef %primes.0) #3
  %cmp93 = icmp slt i32 %call92, 1
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end91
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call95 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0)) #3
  br label %end

if.end96:                                         ; preds = %if.end91
  %21 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  %22 = load i32, i32* %num, align 4, !tbaa !7
  %.b191 = load i1, i1* @verbose, align 4
  %23 = zext i1 %.b191 to i32
  %call97 = call %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 noundef %22, i32 noundef %23) #3
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.then99, label %if.end112

if.then99:                                        ; preds = %if.end96
  %24 = bitcast %struct.bignum_st** %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #4
  store %struct.bignum_st* null, %struct.bignum_st** %e, align 8, !tbaa !3
  %call100 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call97, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), %struct.bignum_st** noundef nonnull %e) #3
  %25 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !3
  %cmp101 = icmp eq %struct.bignum_st* %25, null
  br i1 %cmp101, label %cleanup, label %if.end104

if.end104:                                        ; preds = %if.then99
  %call105 = call i8* @BN_bn2hex(%struct.bignum_st* noundef nonnull %25) #3
  %26 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !3
  %call106 = call i8* @BN_bn2dec(%struct.bignum_st* noundef %26) #3
  %tobool107 = icmp ne i8* %call105, null
  %tobool108 = icmp ne i8* %call106, null
  %or.cond150 = select i1 %tobool107, i1 %tobool108, i1 false
  br i1 %or.cond150, label %if.then109, label %cleanup.thread

if.then109:                                       ; preds = %if.end104
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call110 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i8* noundef nonnull %call106, i8* noundef nonnull %call105) #3
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end104, %if.then109
  call void @CRYPTO_free(i8* noundef %call105, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i32 noundef 220) #3
  call void @CRYPTO_free(i8* noundef %call106, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i32 noundef 221) #3
  %28 = load %struct.bignum_st*, %struct.bignum_st** %e, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %28) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #4
  br label %if.end112

cleanup:                                          ; preds = %if.then99
  %29 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call103 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %29, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0)) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #4
  br label %end

if.end112:                                        ; preds = %cleanup.thread, %if.end96
  %tobool113.not = icmp eq i32 %traditional.0, 0
  %30 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %31 = load i8*, i8** %passout, align 8, !tbaa !3
  br i1 %tobool113.not, label %if.else119, label %if.then114

if.then114:                                       ; preds = %if.end112
  %call115 = call i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef nonnull %call69, %struct.evp_pkey_st* noundef %call97, %struct.evp_cipher_st* noundef %30, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %31) #3
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %end, label %if.end124

if.else119:                                       ; preds = %if.end112
  %call120 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call69, %struct.evp_pkey_st* noundef %call97, %struct.evp_cipher_st* noundef %30, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %31) #3
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %end, label %if.end124

if.end124:                                        ; preds = %if.else119, %if.then114
  br label %end

end:                                              ; preds = %sw.bb21, %sw.bb16, %cleanup, %if.else119, %if.then114, %if.end72, %if.end68, %if.then58, %if.end52, %if.then37, %entry, %if.end124, %if.then94, %if.then89, %if.then84, %if.then79, %if.then66, %sw.bb7, %opthelp
  %out.0 = phi %struct.bio_st* [ null, %entry ], [ null, %sw.bb7 ], [ null, %opthelp ], [ null, %if.then37 ], [ null, %if.end68 ], [ %call69, %if.then79 ], [ %call69, %if.then89 ], [ %call69, %if.then94 ], [ %call69, %cleanup ], [ %call69, %if.end124 ], [ %call69, %if.then114 ], [ %call69, %if.else119 ], [ %call69, %if.then84 ], [ %call69, %if.end72 ], [ null, %if.then66 ], [ null, %if.then58 ], [ null, %if.end52 ], [ null, %sw.bb16 ], [ null, %sw.bb21 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %entry ], [ null, %sw.bb7 ], [ null, %opthelp ], [ null, %if.then37 ], [ null, %if.end68 ], [ null, %if.then79 ], [ null, %if.then89 ], [ null, %if.then94 ], [ %call97, %cleanup ], [ %call97, %if.end124 ], [ %call97, %if.then114 ], [ %call97, %if.else119 ], [ null, %if.then84 ], [ null, %if.end72 ], [ null, %if.then66 ], [ null, %if.then58 ], [ null, %if.end52 ], [ null, %sw.bb16 ], [ null, %sw.bb21 ]
  %cmp125.not = phi i1 [ false, %entry ], [ true, %sw.bb7 ], [ false, %opthelp ], [ false, %if.then37 ], [ false, %if.end68 ], [ false, %if.then79 ], [ false, %if.then89 ], [ false, %if.then94 ], [ false, %cleanup ], [ true, %if.end124 ], [ false, %if.then114 ], [ false, %if.else119 ], [ false, %if.then84 ], [ false, %if.end72 ], [ false, %if.then66 ], [ false, %if.then58 ], [ false, %if.end52 ], [ false, %sw.bb16 ], [ false, %sw.bb21 ]
  %ret.0 = phi i32 [ 1, %entry ], [ 0, %sw.bb7 ], [ 1, %opthelp ], [ 1, %if.then37 ], [ 1, %if.end68 ], [ 1, %if.then79 ], [ 1, %if.then89 ], [ 1, %if.then94 ], [ 1, %cleanup ], [ 0, %if.end124 ], [ 1, %if.then114 ], [ 1, %if.else119 ], [ 1, %if.then84 ], [ 1, %if.end72 ], [ 1, %if.then66 ], [ 1, %if.then58 ], [ 1, %if.end52 ], [ 1, %sw.bb16 ], [ 1, %sw.bb21 ]
  %eng.2 = phi %struct.engine_st* [ null, %entry ], [ %eng.0, %sw.bb7 ], [ %eng.0, %opthelp ], [ %eng.0, %if.then37 ], [ %eng.0, %if.end68 ], [ %eng.0, %if.then79 ], [ %eng.0, %if.then89 ], [ %eng.0, %if.then94 ], [ %eng.0, %cleanup ], [ %eng.0, %if.end124 ], [ %eng.0, %if.then114 ], [ %eng.0, %if.else119 ], [ %eng.0, %if.then84 ], [ %eng.0, %if.end72 ], [ %eng.0, %if.then66 ], [ %eng.0, %if.then58 ], [ %eng.0, %if.end52 ], [ %eng.0, %sw.bb16 ], [ %eng.0, %sw.bb21 ]
  call void @BN_free(%struct.bignum_st* noundef %call1) #3
  call void @BN_GENCB_free(%struct.bn_gencb_st* noundef %call) #3
  %32 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !3
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %32) #3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #3
  %33 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %33) #3
  call void @BIO_free_all(%struct.bio_st* noundef %out.0) #3
  call void @release_engine(%struct.engine_st* noundef %eng.2) #3
  %34 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %34, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i32 noundef 242) #3
  br i1 %cmp125.not, label %cleanup128, label %if.then126

if.then126:                                       ; preds = %end
  %35 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %35) #3
  br label %cleanup128

cleanup128:                                       ; preds = %end, %if.then126
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #2

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_int_arg() local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @opt_int(i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @init_gen_str(%struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.engine_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_set_cb(%struct.evp_pkey_ctx_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @genrsa_cb(%struct.evp_pkey_ctx_st* noundef %ctx) #0 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #4
  store i8 42, i8* %c, align 1, !tbaa !11
  %call = tail call i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.bio_st*
  %call1 = tail call i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 0) #3
  %.b = load i1, i1* @verbose, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %call1, label %if.end12 [
    i32 0, label %if.then2
    i32 1, label %if.then5
    i32 2, label %if.then8
    i32 3, label %if.then11
  ]

if.then2:                                         ; preds = %if.end
  store i8 46, i8* %c, align 1, !tbaa !11
  br label %if.end12

if.then5:                                         ; preds = %if.end
  store i8 43, i8* %c, align 1, !tbaa !11
  br label %if.end12

if.then8:                                         ; preds = %if.end
  store i8 42, i8* %c, align 1, !tbaa !11
  br label %if.end12

if.then11:                                        ; preds = %if.end
  store i8 10, i8* %c, align 1, !tbaa !11
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then5, %if.then2, %if.end, %if.then11
  %call13 = call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef nonnull %c, i32 noundef 1) #3
  %call14 = call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef 11, i64 noundef 0, i8* noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #4
  ret i32 1
}

declare dso_local void @EVP_PKEY_CTX_set_app_data(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set1_rsa_keygen_pubexp(%struct.evp_pkey_ctx_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_keygen_primes(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare dso_local i8* @BN_bn2hex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i8* @BN_bn2dec(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @BN_GENCB_free(%struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i8* @EVP_PKEY_CTX_get_app_data(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_CTX_get_keygen_info(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
!11 = !{!5, !5, i64 0}
