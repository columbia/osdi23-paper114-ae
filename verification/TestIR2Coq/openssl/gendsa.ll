; ModuleID = 'apps/gendsa.c'
source_filename = "apps/gendsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque
%struct.evp_pkey_ctx_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [35 x i8] c"Usage: %s [options] dsaparam-file\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Output the key to the specified file\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Encrypt the output with any supported cipher\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Verbose output\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"dsaparam-file\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"File containing DSA parameters\00", align 1
@gendsa_options = dso_local constant [19 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 3, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.30 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"DSA parameters\00", align 1
@.str.34 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"unable to create PKEY context\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"unable to set up for key generation\0A\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"unable to output generated key\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"apps/gendsa.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gendsa_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %enc = alloca %struct.evp_cipher_st*, align 8
  %passout = alloca i8*, align 8
  %0 = bitcast %struct.evp_cipher_st** %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store %struct.evp_cipher_st* null, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %1 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store i8* null, i8** %passout, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([19 x %struct.options_st], [19 x %struct.options_st]* @gendsa_options, i64 0, i64 0)) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %ciphername.0 = phi i8* [ null, %entry ], [ %ciphername.0.be, %while.cond.backedge ]
  %outfile.0 = phi i8* [ null, %entry ], [ %outfile.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %verbose.0 = phi i32 [ 0, %entry ], [ %verbose.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #4
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb15
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
    i32 6, label %sw.bb22
    i32 5, label %sw.bb20
    i32 1501, label %sw.bb12
    i32 1502, label %sw.bb12
    i32 1603, label %sw.bb15
    i32 1602, label %sw.bb15
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb15, %sw.bb12, %sw.bb22, %sw.bb20, %sw.bb8, %sw.bb6, %sw.bb4
  %ciphername.0.be = phi i8* [ %ciphername.0, %sw.bb15 ], [ %ciphername.0, %sw.bb12 ], [ %call21, %sw.bb20 ], [ %ciphername.0, %sw.bb22 ], [ %ciphername.0, %sw.bb8 ], [ %ciphername.0, %sw.bb6 ], [ %ciphername.0, %sw.bb4 ], [ %ciphername.0, %while.cond ]
  %outfile.0.be = phi i8* [ %outfile.0, %sw.bb15 ], [ %outfile.0, %sw.bb12 ], [ %outfile.0, %sw.bb20 ], [ %outfile.0, %sw.bb22 ], [ %outfile.0, %sw.bb8 ], [ %outfile.0, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %outfile.0, %while.cond ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb15 ], [ %passoutarg.0, %sw.bb12 ], [ %passoutarg.0, %sw.bb20 ], [ %passoutarg.0, %sw.bb22 ], [ %passoutarg.0, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb15 ], [ %e.0, %sw.bb12 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb22 ], [ %call10, %sw.bb8 ], [ %e.0, %sw.bb6 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ]
  %verbose.0.be = phi i32 [ %verbose.0, %sw.bb15 ], [ %verbose.0, %sw.bb12 ], [ %verbose.0, %sw.bb20 ], [ 1, %sw.bb22 ], [ %verbose.0, %sw.bb8 ], [ %verbose.0, %sw.bb6 ], [ %verbose.0, %sw.bb4 ], [ %verbose.0, %while.cond ]
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %while.end
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call) #4
  br label %if.then72

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([19 x %struct.options_st], [19 x %struct.options_st]* @gendsa_options, i64 0, i64 0)) #4
  br label %end2

sw.bb4:                                           ; preds = %while.cond
  %call5 = tail call i8* @opt_arg() #4
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %call7 = tail call i8* @opt_arg() #4
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  %call9 = tail call i8* @opt_arg() #4
  %call10 = tail call %struct.engine_st* @setup_engine_methods(i8* noundef %call9, i32 noundef -1, i32 noundef 0) #4
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond, %while.cond
  %call13 = tail call i32 @opt_rand(i32 noundef %call1) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then72, label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call16 = tail call i32 @opt_provider(i32 noundef %call1) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then72, label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = tail call i8* @opt_unknown() #4
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call23 = tail call i32 @opt_num_rest() #4
  %call24 = tail call i8** @opt_rest() #4
  %cmp25.not = icmp eq i32 %call23, 1
  br i1 %cmp25.not, label %if.end27, label %opthelp

if.end27:                                         ; preds = %while.end
  %3 = load i8*, i8** %call24, align 8, !tbaa !3
  %call28 = tail call i32 @app_RAND_load() #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then72, label %if.end31

if.end31:                                         ; preds = %if.end27
  %cmp32.not = icmp eq i8* %ciphername.0, null
  br i1 %cmp32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end31
  %call34 = call i32 @opt_cipher(i8* noundef nonnull %ciphername.0, %struct.evp_cipher_st** noundef nonnull %enc) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then72, label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end31
  %call39 = call i32 @app_passwd(i8* noundef null, i8* noundef %passoutarg.0, i8** noundef null, i8** noundef nonnull %passout) #4
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0)) #4
  br label %if.then72

if.end43:                                         ; preds = %if.end38
  %call44 = call %struct.evp_pkey_st* @load_keyparams(i8* noundef %3, i32 noundef 0, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0)) #4
  %call45 = call %struct.bio_st* @bio_open_owner(i8* noundef %outfile.0, i32 noundef 32773, i32 noundef 1) #4
  %cmp46 = icmp eq %struct.bio_st* %call45, null
  br i1 %cmp46, label %end2, label %if.end48

if.end48:                                         ; preds = %if.end43
  %call49 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %call44) #4
  %cmp50 = icmp sgt i32 %call49, 10000
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.end48
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call52 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %call44) #4
  %call53 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([144 x i8], [144 x i8]* @.str.34, i64 0, i64 0), i32 noundef 10000, i32 noundef %call52) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48
  %call55 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call44, %struct.engine_st* noundef null) #4
  %cmp56 = icmp eq %struct.evp_pkey_ctx_st* %call55, null
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call58 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0)) #4
  br label %if.then72

if.end59:                                         ; preds = %if.end54
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call44) #4
  %call60 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call55) #4
  %cmp61 = icmp slt i32 %call60, 1
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call63 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0)) #4
  br label %if.then72

if.end64:                                         ; preds = %if.end59
  %call65 = call %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %call55, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call49, i32 noundef %verbose.0) #4
  %8 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  %9 = load i8*, i8** %passout, align 8, !tbaa !3
  %call66 = call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef nonnull %call45, %struct.evp_pkey_st* noundef %call65, %struct.evp_cipher_st* noundef %8, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef %9) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %end2

if.then68:                                        ; preds = %if.end64
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call69 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #4
  br label %if.then72

if.then72:                                        ; preds = %sw.bb15, %sw.bb12, %opthelp, %if.then57, %if.then62, %if.then68, %if.then41, %if.then33, %if.end27
  %out.0.ph = phi %struct.bio_st* [ null, %if.end27 ], [ null, %if.then33 ], [ null, %if.then41 ], [ %call45, %if.then68 ], [ %call45, %if.then62 ], [ %call45, %if.then57 ], [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb15 ]
  %pkey.0.ph = phi %struct.evp_pkey_st* [ null, %if.end27 ], [ null, %if.then33 ], [ null, %if.then41 ], [ %call65, %if.then68 ], [ null, %if.then62 ], [ %call44, %if.then57 ], [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb15 ]
  %ctx.0.ph = phi %struct.evp_pkey_ctx_st* [ null, %if.end27 ], [ null, %if.then33 ], [ null, %if.then41 ], [ %call55, %if.then68 ], [ %call55, %if.then62 ], [ null, %if.then57 ], [ null, %opthelp ], [ null, %sw.bb12 ], [ null, %sw.bb15 ]
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %11) #4
  br label %end2

end2:                                             ; preds = %sw.bb3, %if.end64, %if.then72, %if.end43
  %out.1 = phi %struct.bio_st* [ %out.0.ph, %if.then72 ], [ null, %if.end43 ], [ null, %sw.bb3 ], [ %call45, %if.end64 ]
  %pkey.1 = phi %struct.evp_pkey_st* [ %pkey.0.ph, %if.then72 ], [ %call44, %if.end43 ], [ null, %sw.bb3 ], [ %call65, %if.end64 ]
  %ctx.1 = phi %struct.evp_pkey_ctx_st* [ %ctx.0.ph, %if.then72 ], [ null, %if.end43 ], [ null, %sw.bb3 ], [ %call55, %if.end64 ]
  %ret.1 = phi i32 [ 1, %if.then72 ], [ 1, %if.end43 ], [ 0, %sw.bb3 ], [ 0, %if.end64 ]
  %call74 = call i32 @BIO_free(%struct.bio_st* noundef null) #4
  call void @BIO_free_all(%struct.bio_st* noundef %out.1) #4
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #4
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1) #4
  %12 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %enc, align 8, !tbaa !3
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %12) #4
  call void @release_engine(%struct.engine_st* noundef %e.0) #4
  %13 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i32 noundef 166) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local %struct.engine_st* @setup_engine_methods(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i8* @opt_unknown() local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @opt_cipher(i8* noundef, %struct.evp_cipher_st** noundef) local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @load_keyparams(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_owner(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_pkey_st* @app_keygen(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #2

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
