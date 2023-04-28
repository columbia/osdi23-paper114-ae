; ModuleID = 'apps/passwd.c'
source_filename = "apps/passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [32 x i8] c"Usage: %s [options] [password]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Read passwords from file\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"noverify\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Never verify when reading password from terminal\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Read passwords from stdin\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"No warnings\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Format output as table\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Switch table columns\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Cryptographic options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Use provided salt\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"SHA512-based password algorithm\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"SHA256-based password algorithm\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"apr1\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"MD5-based password algorithm, Apache variant\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"MD5-based password algorithm\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"aixmd5\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"AIX MD5-based password algorithm\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Password text to digest (optional)\00", align 1
@passwd_options = dso_local constant [28 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2, i32 60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 13, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.38, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.42, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.46 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"%s: Can't combine -in and -stdin\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"password buffer\00", align 1
@passwd_main.passwds_static = internal unnamed_addr global [2 x i8*] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.50 = private unnamed_addr constant [14 x i8] c"apps/passwd.c\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"salt buffer\00", align 1
@cov_2char = internal unnamed_addr constant [64 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", align 16
@.str.52 = private unnamed_addr constant [47 x i8] c"Warning: truncating password to %u characters\0A\00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@md5crypt.out_buf = internal global [41 x i8] zeroinitializer, align 16
@ascii_dollar = internal constant [2 x i8] c"$\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@shacrypt.rounds_prefix = internal constant [8 x i8] c"rounds=\00", align 1
@shacrypt.out_buf = internal global [124 x i8] zeroinitializer, align 16
@.str.57 = private unnamed_addr constant [10 x i8] c"rounds=%u\00", align 1
@switch.table.do_passwd = private unnamed_addr constant [5 x i64] [i64 8, i64 8, i64 0, i64 0, i64 8], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @passwd_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %salt = alloca i8*, align 8
  %salt_malloc = alloca i8*, align 8
  %trash = alloca [8192 x i8], align 16
  %0 = bitcast i8** %salt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %1 = bitcast i8** %salt_malloc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %salt_malloc, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([28 x %struct.options_st], [28 x %struct.options_st]* @passwd_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call31287 = phi i8* [ null, %entry ], [ %call31287.be, %while.cond.backedge ]
  %infile.0 = phi i8* [ null, %entry ], [ %infile.0.be, %while.cond.backedge ]
  %in_stdin.0 = phi i32 [ 0, %entry ], [ %in_stdin.0.be, %while.cond.backedge ]
  %pw_source_defined.0 = phi i32 [ 0, %entry ], [ %pw_source_defined.0.be, %while.cond.backedge ]
  %in_noverify.0 = phi i32 [ 0, %entry ], [ %in_noverify.0.be, %while.cond.backedge ]
  %passed_salt.0 = phi i32 [ 0, %entry ], [ %passed_salt.0.be, %while.cond.backedge ]
  %quiet.0 = phi i32 [ 0, %entry ], [ %quiet.0.be, %while.cond.backedge ]
  %table.0 = phi i32 [ 0, %entry ], [ %table.0.be, %while.cond.backedge ]
  %reverse.0 = phi i32 [ 0, %entry ], [ %reverse.0.be, %while.cond.backedge ]
  %mode.0 = phi i32 [ 0, %entry ], [ %mode.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #6
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb43
    i32 -1, label %opthelp.loopexit
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 8, label %sw.bb10
    i32 9, label %sw.bb14
    i32 10, label %sw.bb18
    i32 7, label %sw.bb22
    i32 11, label %sw.bb26
    i32 12, label %sw.bb30
    i32 13, label %sw.bb32
    i32 1603, label %sw.bb43
    i32 1602, label %sw.bb43
    i32 1501, label %sw.bb37
    i32 1502, label %sw.bb37
  ]

opthelp.loopexit:                                 ; preds = %sw.bb4, %sw.bb10, %sw.bb14, %sw.bb18, %sw.bb22, %sw.bb26, %sw.bb32, %while.cond
  store i8* %call31287, i8** %salt, align 8, !tbaa !3
  br label %opthelp

opthelp:                                          ; preds = %opthelp.loopexit, %if.then51
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i8* noundef %call) #6
  br label %end

sw.bb3:                                           ; preds = %while.cond
  store i8* %call31287, i8** %salt, align 8, !tbaa !3
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([28 x %struct.options_st], [28 x %struct.options_st]* @passwd_options, i64 0, i64 0)) #6
  br label %end

sw.bb4:                                           ; preds = %while.cond
  %tobool.not = icmp eq i32 %pw_source_defined.0, 0
  br i1 %tobool.not, label %if.end, label %opthelp.loopexit

if.end:                                           ; preds = %sw.bb4
  %call5 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb8:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb10:                                          ; preds = %while.cond
  %cmp11.not = icmp eq i32 %mode.0, 0
  br i1 %cmp11.not, label %while.cond.backedge, label %opthelp.loopexit

sw.bb14:                                          ; preds = %while.cond
  %cmp15.not = icmp eq i32 %mode.0, 0
  br i1 %cmp15.not, label %while.cond.backedge, label %opthelp.loopexit

sw.bb18:                                          ; preds = %while.cond
  %cmp19.not = icmp eq i32 %mode.0, 0
  br i1 %cmp19.not, label %while.cond.backedge, label %opthelp.loopexit

sw.bb22:                                          ; preds = %while.cond
  %cmp23.not = icmp eq i32 %mode.0, 0
  br i1 %cmp23.not, label %while.cond.backedge, label %opthelp.loopexit

sw.bb26:                                          ; preds = %while.cond
  %cmp27.not = icmp eq i32 %mode.0, 0
  br i1 %cmp27.not, label %while.cond.backedge, label %opthelp.loopexit

sw.bb30:                                          ; preds = %while.cond
  %call31 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb32:                                          ; preds = %while.cond
  %tobool33.not = icmp eq i32 %pw_source_defined.0, 0
  br i1 %tobool33.not, label %while.cond.backedge, label %opthelp.loopexit

while.cond.backedge:                              ; preds = %sw.bb32, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %while.cond, %sw.bb43, %sw.bb37, %sw.bb30, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %if.end
  %call31287.be = phi i8* [ %call31287, %sw.bb37 ], [ %call31287, %sw.bb43 ], [ %call31, %sw.bb30 ], [ %call31287, %sw.bb9 ], [ %call31287, %sw.bb8 ], [ %call31287, %sw.bb7 ], [ %call31287, %sw.bb6 ], [ %call31287, %if.end ], [ %call31287, %while.cond ], [ %call31287, %sw.bb10 ], [ %call31287, %sw.bb14 ], [ %call31287, %sw.bb18 ], [ %call31287, %sw.bb22 ], [ %call31287, %sw.bb26 ], [ %call31287, %sw.bb32 ]
  %infile.0.be = phi i8* [ %infile.0, %sw.bb37 ], [ %infile.0, %sw.bb43 ], [ %infile.0, %sw.bb30 ], [ %infile.0, %sw.bb9 ], [ %infile.0, %sw.bb8 ], [ %infile.0, %sw.bb7 ], [ %infile.0, %sw.bb6 ], [ %call5, %if.end ], [ %infile.0, %while.cond ], [ %infile.0, %sw.bb10 ], [ %infile.0, %sw.bb14 ], [ %infile.0, %sw.bb18 ], [ %infile.0, %sw.bb22 ], [ %infile.0, %sw.bb26 ], [ %infile.0, %sw.bb32 ]
  %in_stdin.0.be = phi i32 [ %in_stdin.0, %sw.bb37 ], [ %in_stdin.0, %sw.bb43 ], [ %in_stdin.0, %sw.bb30 ], [ %in_stdin.0, %sw.bb9 ], [ %in_stdin.0, %sw.bb8 ], [ %in_stdin.0, %sw.bb7 ], [ %in_stdin.0, %sw.bb6 ], [ %in_stdin.0, %if.end ], [ %in_stdin.0, %while.cond ], [ %in_stdin.0, %sw.bb10 ], [ %in_stdin.0, %sw.bb14 ], [ %in_stdin.0, %sw.bb18 ], [ %in_stdin.0, %sw.bb22 ], [ %in_stdin.0, %sw.bb26 ], [ 1, %sw.bb32 ]
  %pw_source_defined.0.be = phi i32 [ %pw_source_defined.0, %sw.bb37 ], [ %pw_source_defined.0, %sw.bb43 ], [ %pw_source_defined.0, %sw.bb30 ], [ %pw_source_defined.0, %sw.bb9 ], [ %pw_source_defined.0, %sw.bb8 ], [ %pw_source_defined.0, %sw.bb7 ], [ %pw_source_defined.0, %sw.bb6 ], [ 1, %if.end ], [ %pw_source_defined.0, %while.cond ], [ %pw_source_defined.0, %sw.bb10 ], [ %pw_source_defined.0, %sw.bb14 ], [ %pw_source_defined.0, %sw.bb18 ], [ %pw_source_defined.0, %sw.bb22 ], [ %pw_source_defined.0, %sw.bb26 ], [ 1, %sw.bb32 ]
  %in_noverify.0.be = phi i32 [ %in_noverify.0, %sw.bb37 ], [ %in_noverify.0, %sw.bb43 ], [ %in_noverify.0, %sw.bb30 ], [ %in_noverify.0, %sw.bb9 ], [ %in_noverify.0, %sw.bb8 ], [ %in_noverify.0, %sw.bb7 ], [ 1, %sw.bb6 ], [ %in_noverify.0, %if.end ], [ %in_noverify.0, %while.cond ], [ %in_noverify.0, %sw.bb10 ], [ %in_noverify.0, %sw.bb14 ], [ %in_noverify.0, %sw.bb18 ], [ %in_noverify.0, %sw.bb22 ], [ %in_noverify.0, %sw.bb26 ], [ %in_noverify.0, %sw.bb32 ]
  %passed_salt.0.be = phi i32 [ %passed_salt.0, %sw.bb37 ], [ %passed_salt.0, %sw.bb43 ], [ 1, %sw.bb30 ], [ %passed_salt.0, %sw.bb9 ], [ %passed_salt.0, %sw.bb8 ], [ %passed_salt.0, %sw.bb7 ], [ %passed_salt.0, %sw.bb6 ], [ %passed_salt.0, %if.end ], [ %passed_salt.0, %while.cond ], [ %passed_salt.0, %sw.bb10 ], [ %passed_salt.0, %sw.bb14 ], [ %passed_salt.0, %sw.bb18 ], [ %passed_salt.0, %sw.bb22 ], [ %passed_salt.0, %sw.bb26 ], [ %passed_salt.0, %sw.bb32 ]
  %quiet.0.be = phi i32 [ %quiet.0, %sw.bb37 ], [ %quiet.0, %sw.bb43 ], [ %quiet.0, %sw.bb30 ], [ %quiet.0, %sw.bb9 ], [ %quiet.0, %sw.bb8 ], [ 1, %sw.bb7 ], [ %quiet.0, %sw.bb6 ], [ %quiet.0, %if.end ], [ %quiet.0, %while.cond ], [ %quiet.0, %sw.bb10 ], [ %quiet.0, %sw.bb14 ], [ %quiet.0, %sw.bb18 ], [ %quiet.0, %sw.bb22 ], [ %quiet.0, %sw.bb26 ], [ %quiet.0, %sw.bb32 ]
  %table.0.be = phi i32 [ %table.0, %sw.bb37 ], [ %table.0, %sw.bb43 ], [ %table.0, %sw.bb30 ], [ %table.0, %sw.bb9 ], [ 1, %sw.bb8 ], [ %table.0, %sw.bb7 ], [ %table.0, %sw.bb6 ], [ %table.0, %if.end ], [ %table.0, %while.cond ], [ %table.0, %sw.bb10 ], [ %table.0, %sw.bb14 ], [ %table.0, %sw.bb18 ], [ %table.0, %sw.bb22 ], [ %table.0, %sw.bb26 ], [ %table.0, %sw.bb32 ]
  %reverse.0.be = phi i32 [ %reverse.0, %sw.bb37 ], [ %reverse.0, %sw.bb43 ], [ %reverse.0, %sw.bb30 ], [ 1, %sw.bb9 ], [ %reverse.0, %sw.bb8 ], [ %reverse.0, %sw.bb7 ], [ %reverse.0, %sw.bb6 ], [ %reverse.0, %if.end ], [ %reverse.0, %while.cond ], [ %reverse.0, %sw.bb10 ], [ %reverse.0, %sw.bb14 ], [ %reverse.0, %sw.bb18 ], [ %reverse.0, %sw.bb22 ], [ %reverse.0, %sw.bb26 ], [ %reverse.0, %sw.bb32 ]
  %mode.0.be = phi i32 [ %mode.0, %sw.bb37 ], [ %mode.0, %sw.bb43 ], [ %mode.0, %sw.bb30 ], [ %mode.0, %sw.bb9 ], [ %mode.0, %sw.bb8 ], [ %mode.0, %sw.bb7 ], [ %mode.0, %sw.bb6 ], [ %mode.0, %if.end ], [ %mode.0, %while.cond ], [ 1, %sw.bb10 ], [ 3, %sw.bb14 ], [ 4, %sw.bb18 ], [ 2, %sw.bb22 ], [ 5, %sw.bb26 ], [ %mode.0, %sw.bb32 ]
  br label %while.cond, !llvm.loop !7

sw.bb37:                                          ; preds = %while.cond, %while.cond
  %call38 = tail call i32 @opt_rand(i32 noundef %call1) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %end.loopexit254, label %while.cond.backedge

sw.bb43:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call44 = tail call i32 @opt_provider(i32 noundef %call1) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %end.loopexit254, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  store i8* %call31287, i8** %salt, align 8, !tbaa !3
  %call48 = tail call i32 @opt_num_rest() #6
  %call49 = tail call i8** @opt_rest() #6
  %3 = load i8*, i8** %call49, align 8, !tbaa !3
  %cmp50.not = icmp eq i8* %3, null
  br i1 %cmp50.not, label %if.end55, label %if.then51

if.then51:                                        ; preds = %while.end
  %tobool52.not = icmp eq i32 %pw_source_defined.0, 0
  br i1 %tobool52.not, label %if.end55, label %opthelp

if.end55:                                         ; preds = %if.then51, %while.end
  %passwds.0 = phi i8** [ null, %while.end ], [ %call49, %if.then51 ]
  %call56 = tail call i32 @app_RAND_load() #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %end, label %if.end59

if.end59:                                         ; preds = %if.end55
  %cmp60 = icmp eq i32 %mode.0, 0
  %spec.store.select = select i1 %cmp60, i32 1, i32 %mode.0
  %cmp63 = icmp ne i8* %infile.0, null
  %tobool64 = icmp ne i32 %in_stdin.0, 0
  %or.cond = select i1 %cmp63, i1 %tobool64, i1 false
  br i1 %or.cond, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end59
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call66 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0), i8* noundef %call) #6
  br label %end

if.end67:                                         ; preds = %if.end59
  %or.cond169 = select i1 %cmp63, i1 true, i1 %tobool64
  br i1 %or.cond169, label %if.then70, label %if.end75.thread

if.then70:                                        ; preds = %if.end67
  %call71 = tail call %struct.bio_st* @bio_open_default(i8* noundef %infile.0, i8 noundef signext 114, i32 noundef 32769) #6
  %cmp72 = icmp eq %struct.bio_st* %call71, null
  br i1 %cmp72, label %end, label %if.end75

if.end75:                                         ; preds = %if.then70
  %cmp76 = icmp eq i8** %passwds.0, null
  br i1 %cmp76, label %if.end94, label %do.body104.preheader

if.end75.thread:                                  ; preds = %if.end67
  %cmp76329 = icmp eq i8** %passwds.0, null
  br i1 %cmp76329, label %if.then85, label %if.end79.thread.do.body.preheader_crit_edge

if.end79.thread.do.body.preheader_crit_edge:      ; preds = %if.end75.thread
  %.pre.pre = load i8*, i8** %passwds.0, align 8, !tbaa !3
  br label %do.body.preheader

if.then85:                                        ; preds = %if.end75.thread
  %call78340 = tail call i8* @app_malloc(i64 noundef 258, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0)) #6
  %tobool86 = icmp eq i32 %passed_salt.0, 0
  %tobool87 = icmp eq i32 %in_noverify.0, 0
  %5 = select i1 %tobool86, i1 %tobool87, i1 false
  %lnot.ext = zext i1 %5 to i32
  %call88 = tail call i32 @EVP_read_pw_string(i8* noundef %call78340, i32 noundef 258, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i32 noundef %lnot.ext) #6
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.end93, label %end

if.end93:                                         ; preds = %if.then85
  store i8* %call78340, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @passwd_main.passwds_static, i64 0, i64 0), align 16, !tbaa !3
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end79.thread.do.body.preheader_crit_edge, %if.end93
  %.pre = phi i8* [ %.pre.pre, %if.end79.thread.do.body.preheader_crit_edge ], [ %call78340, %if.end93 ]
  %passwd_malloc.0242246.ph = phi i8* [ null, %if.end79.thread.do.body.preheader_crit_edge ], [ %call78340, %if.end93 ]
  %passwds.2.ph = phi i8** [ %passwds.0, %if.end79.thread.do.body.preheader_crit_edge ], [ getelementptr inbounds ([2 x i8*], [2 x i8*]* @passwd_main.passwds_static, i64 0, i64 0), %if.end93 ]
  br label %do.body

if.end94:                                         ; preds = %if.end75
  %call78 = tail call i8* @app_malloc(i64 noundef 258, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0)) #6
  br label %do.body104.preheader

do.body104.preheader:                             ; preds = %if.end75, %if.end94
  %passwd_malloc.0242245.ph = phi i8* [ %call78, %if.end94 ], [ null, %if.end75 ]
  %6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %trash, i64 0, i64 0
  br label %do.body104

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %7 = phi i8* [ %9, %do.cond ], [ %.pre, %do.body.preheader ]
  %passwds.2 = phi i8** [ %incdec.ptr, %do.cond ], [ %passwds.2.ph, %do.body.preheader ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %passwds.2, i64 1
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call98 = call fastcc i32 @do_passwd(i32 noundef %passed_salt.0, i8** noundef nonnull %salt, i8** noundef nonnull %salt_malloc, i8* noundef %7, %struct.bio_st* noundef %8, i32 noundef %quiet.0, i32 noundef %table.0, i32 noundef %reverse.0, i32 noundef %spec.store.select) #7
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %end, label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i8*, i8** %incdec.ptr, align 8, !tbaa !3
  %cmp102.not = icmp eq i8* %9, null
  br i1 %cmp102.not, label %end, label %do.body, !llvm.loop !9

do.body104:                                       ; preds = %do.body104.preheader, %cleanup135.thread
  %call107 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %call71, i8* noundef %passwd_malloc.0242245.ph, i32 noundef 257) #6
  %cmp108 = icmp sgt i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %end

if.then110:                                       ; preds = %do.body104
  %call111 = call i8* @strchr(i8* noundef %passwd_malloc.0242245.ph, i32 noundef 10) #8
  %cmp112.not = icmp eq i8* %call111, null
  br i1 %cmp112.not, label %if.else115, label %if.then114

if.then114:                                       ; preds = %if.then110
  store i8 0, i8* %call111, align 1, !tbaa !10
  br label %if.end127

if.else115:                                       ; preds = %if.then110
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %6) #5
  br label %do.body116

do.body116:                                       ; preds = %land.rhs, %if.else115
  %call117 = call i32 @BIO_gets(%struct.bio_st* noundef nonnull %call71, i8* noundef nonnull %6, i32 noundef 8192) #6
  %cmp119 = icmp sgt i32 %call117, 0
  br i1 %cmp119, label %land.rhs, label %do.end126

land.rhs:                                         ; preds = %do.body116
  %call122 = call i8* @strchr(i8* noundef nonnull %6, i32 noundef 10) #8
  %tobool123.not = icmp eq i8* %call122, null
  br i1 %tobool123.not, label %do.body116, label %do.end126, !llvm.loop !11

do.end126:                                        ; preds = %do.body116, %land.rhs
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %6) #5
  br label %if.end127

if.end127:                                        ; preds = %do.end126, %if.then114
  %r.0 = phi i32 [ %call107, %if.then114 ], [ %call117, %do.end126 ]
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call128 = call fastcc i32 @do_passwd(i32 noundef %passed_salt.0, i8** noundef nonnull %salt, i8** noundef nonnull %salt_malloc, i8* noundef %passwd_malloc.0242245.ph, %struct.bio_st* noundef %10, i32 noundef %quiet.0, i32 noundef %table.0, i32 noundef %reverse.0, i32 noundef %spec.store.select) #7
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %end, label %cleanup135.thread

cleanup135.thread:                                ; preds = %if.end127
  %cmp133 = icmp sgt i32 %r.0, 0
  br i1 %cmp133, label %do.body104, label %end, !llvm.loop !12

end.loopexit254:                                  ; preds = %sw.bb37, %sw.bb43
  store i8* %call31287, i8** %salt, align 8, !tbaa !3
  br label %end

end:                                              ; preds = %do.cond, %do.body, %do.body104, %cleanup135.thread, %if.end127, %end.loopexit254, %if.then85, %if.then70, %if.end55, %if.then65, %sw.bb3, %opthelp
  %passwd_malloc.1 = phi i8* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then65 ], [ null, %if.then70 ], [ %call78340, %if.then85 ], [ null, %if.end55 ], [ null, %end.loopexit254 ], [ %passwd_malloc.0242245.ph, %if.end127 ], [ %passwd_malloc.0242245.ph, %cleanup135.thread ], [ %passwd_malloc.0242245.ph, %do.body104 ], [ %passwd_malloc.0242246.ph, %do.body ], [ %passwd_malloc.0242246.ph, %do.cond ]
  %in.1 = phi %struct.bio_st* [ null, %opthelp ], [ null, %sw.bb3 ], [ null, %if.then65 ], [ null, %if.then70 ], [ null, %if.then85 ], [ null, %if.end55 ], [ null, %end.loopexit254 ], [ %call71, %if.end127 ], [ %call71, %cleanup135.thread ], [ %call71, %do.body104 ], [ null, %do.body ], [ null, %do.cond ]
  %ret.0 = phi i32 [ 1, %opthelp ], [ 0, %sw.bb3 ], [ 1, %if.then65 ], [ 1, %if.then70 ], [ 1, %if.then85 ], [ 1, %if.end55 ], [ 1, %end.loopexit254 ], [ 0, %do.body104 ], [ 0, %cleanup135.thread ], [ 1, %if.end127 ], [ 0, %do.cond ], [ 1, %do.body ]
  %11 = load i8*, i8** %salt_malloc, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 299) #6
  call void @CRYPTO_free(i8* noundef %passwd_malloc.1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 300) #6
  %call147 = call i32 @BIO_free(%struct.bio_st* noundef %in.1) #6
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

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_read_pw_string(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_passwd(i32 noundef %passed_salt, i8** nocapture noundef %salt_p, i8** nocapture noundef %salt_malloc_p, i8* noundef %passwd, %struct.bio_st* noundef %out, i32 noundef %quiet, i32 noundef %table, i32 noundef %reverse, i32 noundef %mode) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %passed_salt, 0
  br i1 %tobool.not, label %if.then, label %if.end25

if.then:                                          ; preds = %entry
  %switch.tableidx = add i32 %mode, -1
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %if.end

switch.lookup:                                    ; preds = %if.then
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [5 x i64], [5 x i64]* @switch.table.do_passwd, i64 0, i64 %1
  %switch.load = load i64, i64* %switch.gep, align 8
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then
  %saltlen.0 = phi i64 [ 0, %if.then ], [ %switch.load, %switch.lookup ]
  %2 = add i32 %mode, -3
  %3 = icmp ult i32 %2, 2
  %spec.select = select i1 %3, i64 16, i64 %saltlen.0
  %4 = load i8*, i8** %salt_malloc_p, align 8, !tbaa !3
  %cmp10 = icmp eq i8* %4, null
  br i1 %cmp10, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  %.pre = load i8*, i8** %salt_p, align 8, !tbaa !3
  br label %if.end12

if.then11:                                        ; preds = %if.end
  %add = or i64 %spec.select, 1
  %call = tail call i8* @app_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #6
  store i8* %call, i8** %salt_malloc_p, align 8, !tbaa !3
  store i8* %call, i8** %salt_p, align 8, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.then11
  %5 = phi i8* [ %.pre, %if.end.if.end12_crit_edge ], [ %call, %if.then11 ]
  %conv = trunc i64 %spec.select to i32
  %call13 = tail call i32 @RAND_bytes(i8* noundef %5, i32 noundef %conv) #6
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %cleanup76, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %cmp188.not = icmp eq i64 %spec.select, 0
  br i1 %cmp188.not, label %cleanup.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %xtraiter = and i64 %spec.select, 1
  %6 = icmp eq i64 %spec.select, 1
  br i1 %6, label %cleanup.thread.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %spec.select, -2
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %i.09 = phi i64 [ 0, %for.body.preheader.new ], [ %inc.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %7 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %i.09
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %9 = and i8 %8, 63
  %10 = zext i8 %9 to i64
  %arrayidx21 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %10
  %11 = load i8, i8* %arrayidx21, align 1, !tbaa !10
  store i8 %11, i8* %arrayidx, align 1, !tbaa !10
  %inc = or i64 %i.09, 1
  %12 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i8, i8* %12, i64 %inc
  %13 = load i8, i8* %arrayidx.1, align 1, !tbaa !10
  %14 = and i8 %13, 63
  %15 = zext i8 %14 to i64
  %arrayidx21.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %15
  %16 = load i8, i8* %arrayidx21.1, align 1, !tbaa !10
  store i8 %16, i8* %arrayidx.1, align 1, !tbaa !10
  %inc.1 = add nuw nsw i64 %i.09, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %cleanup.thread.loopexit.unr-lcssa, label %for.body, !llvm.loop !13

cleanup.thread.loopexit.unr-lcssa:                ; preds = %for.body, %for.body.preheader
  %i.09.unr = phi i64 [ 0, %for.body.preheader ], [ %inc.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cleanup.thread, label %for.body.epil

for.body.epil:                                    ; preds = %cleanup.thread.loopexit.unr-lcssa
  %17 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %arrayidx.epil = getelementptr inbounds i8, i8* %17, i64 %i.09.unr
  %18 = load i8, i8* %arrayidx.epil, align 1, !tbaa !10
  %19 = and i8 %18, 63
  %20 = zext i8 %19 to i64
  %arrayidx21.epil = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %20
  %21 = load i8, i8* %arrayidx21.epil, align 1, !tbaa !10
  store i8 %21, i8* %arrayidx.epil, align 1, !tbaa !10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body.epil, %cleanup.thread.loopexit.unr-lcssa, %for.cond.preheader
  %22 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %spec.select
  store i8 0, i8* %arrayidx23, align 1, !tbaa !10
  br label %if.end25

if.end25:                                         ; preds = %cleanup.thread, %entry
  %call26 = tail call i64 @strlen(i8* noundef %passwd) #8
  %cmp27 = icmp ugt i64 %call26, 256
  br i1 %cmp27, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end25
  %tobool30.not = icmp eq i32 %quiet, 0
  br i1 %tobool30.not, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.then29
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call33 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i64 0, i64 0), i32 noundef 256) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then29
  %arrayidx35 = getelementptr inbounds i8, i8* %passwd, i64 256
  store i8 0, i8* %arrayidx35, align 1, !tbaa !10
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end25
  %24 = add i32 %mode, -1
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %if.end46.thread, label %if.end46

if.end46.thread:                                  ; preds = %if.end36
  %cmp37 = icmp eq i32 %mode, 1
  %cond = select i1 %cmp37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  %26 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %call45 = tail call fastcc i8* @md5crypt(i8* noundef %passwd, i8* noundef %cond, i8* noundef %26) #7
  br label %if.end62

if.end46:                                         ; preds = %if.end36
  %cmp47 = icmp eq i32 %mode, 5
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  %27 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %call50 = tail call fastcc i8* @md5crypt(i8* noundef %passwd, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i64 0, i64 0), i8* noundef %27) #7
  br label %if.end62

if.end51:                                         ; preds = %if.end46
  %28 = add i32 %mode, -3
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end51
  %cmp52 = icmp eq i32 %mode, 3
  %cond60 = select i1 %cmp52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)
  %30 = load i8*, i8** %salt_p, align 8, !tbaa !3
  %call61 = tail call fastcc i8* @shacrypt(i8* noundef %passwd, i8* noundef %cond60, i8* noundef %30) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then49, %if.end46.thread, %if.end51, %if.then57
  %hash.2 = phi i8* [ %call61, %if.then57 ], [ null, %if.end51 ], [ %call45, %if.end46.thread ], [ %call50, %if.then49 ]
  %tobool63 = icmp eq i32 %table, 0
  %tobool64 = icmp ne i32 %reverse, 0
  %or.cond81 = or i1 %tobool63, %tobool64
  br i1 %or.cond81, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end62
  %call66 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %passwd, i8* noundef %hash.2) #6
  br label %cleanup76

if.else:                                          ; preds = %if.end62
  %tobool67 = icmp ne i32 %table, 0
  %or.cond82 = and i1 %tobool67, %tobool64
  br i1 %or.cond82, label %if.then70, label %if.else72

if.then70:                                        ; preds = %if.else
  %call71 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* noundef %hash.2, i8* noundef %passwd) #6
  br label %cleanup76

if.else72:                                        ; preds = %if.else
  %call73 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* noundef %hash.2) #6
  br label %cleanup76

cleanup76:                                        ; preds = %if.end12, %if.then65, %if.else72, %if.then70
  %retval.0 = phi i32 [ 1, %if.then70 ], [ 1, %if.else72 ], [ 1, %if.then65 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @md5crypt(i8* noundef %passwd, i8* noundef %magic, i8* noundef %salt) unnamed_addr #0 {
entry:
  %buf = alloca [16 x i8], align 16
  %ascii_magic = alloca [5 x i8], align 1
  %ascii_salt = alloca [9 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #5
  %1 = getelementptr inbounds [5 x i8], [5 x i8]* %ascii_magic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %1) #5
  %2 = getelementptr inbounds [9 x i8], [9 x i8]* %ascii_salt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %2) #5
  %call = tail call i64 @strlen(i8* noundef %passwd) #8
  store i8 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), align 16, !tbaa !10
  %call1 = tail call i64 @strlen(i8* noundef %magic) #8
  %call2 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %1, i8* noundef %magic, i64 noundef 5) #6
  %call4 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %2, i8* noundef %salt, i64 noundef 9) #6
  %call6 = call i64 @strlen(i8* noundef nonnull %2) #8
  %cmp.not = icmp eq i64 %call1, 0
  br i1 %cmp.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %call7 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 41) #6
  %cmp8 = icmp ugt i64 %call1, 4
  br i1 %cmp8, label %err, label %if.end

if.end:                                           ; preds = %if.then
  %call11 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 41) #6
  %call12 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 41) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %call15 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 41) #6
  %call16 = call i64 @strlen(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0)) #8
  %cmp17 = icmp ugt i64 %call16, 14
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end13
  %add = add nuw nsw i64 %call1, 2
  %add.ptr = getelementptr inbounds [41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 %add
  %salt_out.0 = select i1 %cmp.not, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), i8* %add.ptr
  %cmp23 = icmp ugt i64 %call6, 8
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end19
  %call26 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  %cmp27 = icmp eq %struct.evp_md_ctx_st* %call26, null
  br i1 %cmp27, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %call28 = call %struct.evp_md_st* @EVP_md5() #6
  %call29 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call26, %struct.evp_md_st* noundef %call28, %struct.engine_st* noundef null) #6
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %call31 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call26, i8* noundef %passwd, i64 noundef %call) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false30
  br i1 %cmp.not, label %if.end48, label %if.then36

if.then36:                                        ; preds = %if.end34
  %call37 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 1) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.then36
  %call41 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call26, i8* noundef nonnull %1, i64 noundef %call1) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false39
  %call44 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 1) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false43, %if.end34
  %call50 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call26, i8* noundef nonnull %2, i64 noundef %call6) #6
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %if.end48
  %call54 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  %cmp55 = icmp eq %struct.evp_md_ctx_st* %call54, null
  br i1 %cmp55, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end53
  %call57 = call %struct.evp_md_st* @EVP_md5() #6
  %call58 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call54, %struct.evp_md_st* noundef %call57, %struct.engine_st* noundef null) #6
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %call61 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call54, i8* noundef %passwd, i64 noundef %call) #6
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %call65 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call54, i8* noundef nonnull %2, i64 noundef %call6) #6
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %call68 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call54, i8* noundef %passwd, i64 noundef %call) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %call72 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call54, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false70
  %conv = trunc i64 %call to i32
  %conv76361 = and i64 %call, 4294967295
  %cmp77362 = icmp ugt i64 %conv76361, 16
  br i1 %cmp77362, label %for.body, label %for.end

for.body:                                         ; preds = %if.end75, %for.inc
  %conv76363 = phi i64 [ %conv76, %for.inc ], [ %conv76361, %if.end75 ]
  %call80 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call26, i8* noundef nonnull %0, i64 noundef 16) #6
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body
  %sub = add nuw nsw i64 %conv76363, 4294967280
  %conv76 = and i64 %sub, 4294967295
  %cmp77 = icmp ugt i64 %conv76, 16
  br i1 %cmp77, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.inc, %if.end75
  %conv76.lcssa = phi i64 [ %conv76361, %if.end75 ], [ %conv76, %for.inc ]
  %call88 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call26, i8* noundef nonnull %0, i64 noundef %conv76.lcssa) #6
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end
  %tobool93.not364 = icmp eq i32 %conv, 0
  br i1 %tobool93.not364, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %shr = ashr i32 %n.0365, 1
  %tobool93.not = icmp ult i32 %n.0365, 2
  br i1 %tobool93.not, label %while.end, label %while.body, !llvm.loop !15

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %n.0365 = phi i32 [ %shr, %while.cond ], [ %conv, %while.cond.preheader ]
  %and = and i32 %n.0365, 1
  %tobool94.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool94.not, i8* %passwd, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0)
  %call95 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call26, i8* noundef %cond, i64 noundef 1) #6
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond.preheader
  %call100 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call26, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %cleanup, label %for.body107

for.cond104:                                      ; preds = %if.end162
  %inc = add nuw nsw i32 %i.1366, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end169, label %for.body107, !llvm.loop !16

for.body107:                                      ; preds = %while.end, %for.cond104
  %i.1366 = phi i32 [ %inc, %for.cond104 ], [ 0, %while.end ]
  %call108 = call %struct.evp_md_st* @EVP_md5() #6
  %call109 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call54, %struct.evp_md_st* noundef %call108, %struct.engine_st* noundef null) #6
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %err, label %if.end112

if.end112:                                        ; preds = %for.body107
  %and113 = and i32 %i.1366, 1
  %tobool114.not = icmp eq i32 %and113, 0
  %cond119 = select i1 %tobool114.not, i8* %0, i8* %passwd
  %cond125 = select i1 %tobool114.not, i64 16, i64 %call
  %call126 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call54, i8* noundef %cond119, i64 noundef %cond125) #6
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %if.end129

if.end129:                                        ; preds = %if.end112
  %rem.lhs.trunc = trunc i32 %i.1366 to i16
  %rem356 = urem i16 %rem.lhs.trunc, 3
  %tobool130.not = icmp eq i16 %rem356, 0
  br i1 %tobool130.not, label %if.end137, label %if.then131

if.then131:                                       ; preds = %if.end129
  %call133 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call54, i8* noundef nonnull %2, i64 noundef %call6) #6
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %if.end137

if.end137:                                        ; preds = %if.then131, %if.end129
  %rem138357 = urem i16 %rem.lhs.trunc, 7
  %tobool139.not = icmp eq i16 %rem138357, 0
  br i1 %tobool139.not, label %if.end145, label %if.then140

if.then140:                                       ; preds = %if.end137
  %call141 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call54, i8* noundef %passwd, i64 noundef %call) #6
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err, label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end137
  %cond152 = select i1 %tobool114.not, i8* %passwd, i8* %0
  %cond158 = select i1 %tobool114.not, i64 %call, i64 16
  %call159 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call54, i8* noundef %cond152, i64 noundef %cond158) #6
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %if.end162

if.end162:                                        ; preds = %if.end145
  %call164 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call54, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %err, label %for.cond104

for.end169:                                       ; preds = %for.cond104
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call54) #6
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call26) #6
  %3 = load i8, i8* %0, align 16, !tbaa !10
  %arrayidx.1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 6
  %4 = load i8, i8* %arrayidx.1, align 2, !tbaa !10
  %arrayidx.2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 12
  %5 = load i8, i8* %arrayidx.2, align 4, !tbaa !10
  %arrayidx.3 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 1
  %6 = load i8, i8* %arrayidx.3, align 1, !tbaa !10
  %arrayidx.4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 7
  %7 = load i8, i8* %arrayidx.4, align 1, !tbaa !10
  %arrayidx.5 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 13
  %8 = load i8, i8* %arrayidx.5, align 1, !tbaa !10
  %arrayidx.6 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 2
  %9 = load i8, i8* %arrayidx.6, align 2, !tbaa !10
  %arrayidx.7 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 8
  %10 = load i8, i8* %arrayidx.7, align 8, !tbaa !10
  %arrayidx.8 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 14
  %11 = load i8, i8* %arrayidx.8, align 2, !tbaa !10
  %arrayidx.9 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 3
  %12 = load i8, i8* %arrayidx.9, align 1, !tbaa !10
  %arrayidx.10 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 9
  %13 = load i8, i8* %arrayidx.10, align 1, !tbaa !10
  %arrayidx.11 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 15
  %14 = load i8, i8* %arrayidx.11, align 1, !tbaa !10
  %arrayidx.12 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 4
  %15 = load i8, i8* %arrayidx.12, align 4, !tbaa !10
  %arrayidx.13 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 10
  %16 = load i8, i8* %arrayidx.13, align 2, !tbaa !10
  %arrayidx181 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 5
  %17 = load i8, i8* %arrayidx181, align 1, !tbaa !10
  %arrayidx183 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 11
  %18 = load i8, i8* %arrayidx183, align 1, !tbaa !10
  %add.ptr185 = getelementptr inbounds i8, i8* %salt_out.0, i64 %call6
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr185, i64 1
  store i8 36, i8* %add.ptr185, align 1, !tbaa !10
  %19 = and i8 %5, 63
  %20 = zext i8 %19 to i64
  %arrayidx196 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %20
  %21 = load i8, i8* %arrayidx196, align 1, !tbaa !10
  %incdec.ptr197 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 %21, i8* %incdec.ptr, align 1, !tbaa !10
  %22 = shl i8 %4, 2
  %23 = and i8 %22, 60
  %24 = lshr i8 %5, 6
  %or354 = or i8 %23, %24
  %idxprom208 = zext i8 %or354 to i64
  %arrayidx209 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom208
  %25 = load i8, i8* %arrayidx209, align 1, !tbaa !10
  %incdec.ptr210 = getelementptr inbounds i8, i8* %incdec.ptr, i64 2
  store i8 %25, i8* %incdec.ptr197, align 1, !tbaa !10
  %26 = shl i8 %3, 4
  %27 = and i8 %26, 48
  %28 = lshr i8 %4, 4
  %or221355 = or i8 %27, %28
  %idxprom222 = zext i8 %or221355 to i64
  %arrayidx223 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom222
  %29 = load i8, i8* %arrayidx223, align 1, !tbaa !10
  %incdec.ptr224 = getelementptr inbounds i8, i8* %incdec.ptr, i64 3
  store i8 %29, i8* %incdec.ptr210, align 1, !tbaa !10
  %30 = lshr i8 %3, 2
  %31 = zext i8 %30 to i64
  %arrayidx230 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %31
  %32 = load i8, i8* %arrayidx230, align 1, !tbaa !10
  %incdec.ptr231 = getelementptr inbounds i8, i8* %incdec.ptr, i64 4
  store i8 %32, i8* %incdec.ptr224, align 1, !tbaa !10
  %33 = and i8 %8, 63
  %34 = zext i8 %33 to i64
  %arrayidx196.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %34
  %35 = load i8, i8* %arrayidx196.1, align 1, !tbaa !10
  %incdec.ptr197.1 = getelementptr inbounds i8, i8* %incdec.ptr231, i64 1
  store i8 %35, i8* %incdec.ptr231, align 1, !tbaa !10
  %36 = shl i8 %7, 2
  %37 = and i8 %36, 60
  %38 = lshr i8 %8, 6
  %or354.1 = or i8 %37, %38
  %idxprom208.1 = zext i8 %or354.1 to i64
  %arrayidx209.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom208.1
  %39 = load i8, i8* %arrayidx209.1, align 1, !tbaa !10
  %incdec.ptr210.1 = getelementptr inbounds i8, i8* %incdec.ptr231, i64 2
  store i8 %39, i8* %incdec.ptr197.1, align 1, !tbaa !10
  %40 = shl i8 %6, 4
  %41 = and i8 %40, 48
  %42 = lshr i8 %7, 4
  %or221355.1 = or i8 %41, %42
  %idxprom222.1 = zext i8 %or221355.1 to i64
  %arrayidx223.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom222.1
  %43 = load i8, i8* %arrayidx223.1, align 1, !tbaa !10
  %incdec.ptr224.1 = getelementptr inbounds i8, i8* %incdec.ptr231, i64 3
  store i8 %43, i8* %incdec.ptr210.1, align 1, !tbaa !10
  %44 = lshr i8 %6, 2
  %45 = zext i8 %44 to i64
  %arrayidx230.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %45
  %46 = load i8, i8* %arrayidx230.1, align 1, !tbaa !10
  %incdec.ptr231.1 = getelementptr inbounds i8, i8* %incdec.ptr231, i64 4
  store i8 %46, i8* %incdec.ptr224.1, align 1, !tbaa !10
  %47 = and i8 %11, 63
  %48 = zext i8 %47 to i64
  %arrayidx196.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %48
  %49 = load i8, i8* %arrayidx196.2, align 1, !tbaa !10
  %incdec.ptr197.2 = getelementptr inbounds i8, i8* %incdec.ptr231.1, i64 1
  store i8 %49, i8* %incdec.ptr231.1, align 1, !tbaa !10
  %50 = shl i8 %10, 2
  %51 = and i8 %50, 60
  %52 = lshr i8 %11, 6
  %or354.2 = or i8 %51, %52
  %idxprom208.2 = zext i8 %or354.2 to i64
  %arrayidx209.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom208.2
  %53 = load i8, i8* %arrayidx209.2, align 1, !tbaa !10
  %incdec.ptr210.2 = getelementptr inbounds i8, i8* %incdec.ptr231.1, i64 2
  store i8 %53, i8* %incdec.ptr197.2, align 1, !tbaa !10
  %54 = shl i8 %9, 4
  %55 = and i8 %54, 48
  %56 = lshr i8 %10, 4
  %or221355.2 = or i8 %55, %56
  %idxprom222.2 = zext i8 %or221355.2 to i64
  %arrayidx223.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom222.2
  %57 = load i8, i8* %arrayidx223.2, align 1, !tbaa !10
  %incdec.ptr224.2 = getelementptr inbounds i8, i8* %incdec.ptr231.1, i64 3
  store i8 %57, i8* %incdec.ptr210.2, align 1, !tbaa !10
  %58 = lshr i8 %9, 2
  %59 = zext i8 %58 to i64
  %arrayidx230.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %59
  %60 = load i8, i8* %arrayidx230.2, align 1, !tbaa !10
  %incdec.ptr231.2 = getelementptr inbounds i8, i8* %incdec.ptr231.1, i64 4
  store i8 %60, i8* %incdec.ptr224.2, align 1, !tbaa !10
  %61 = and i8 %14, 63
  %62 = zext i8 %61 to i64
  %arrayidx196.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %62
  %63 = load i8, i8* %arrayidx196.3, align 1, !tbaa !10
  %incdec.ptr197.3 = getelementptr inbounds i8, i8* %incdec.ptr231.2, i64 1
  store i8 %63, i8* %incdec.ptr231.2, align 1, !tbaa !10
  %64 = shl i8 %13, 2
  %65 = and i8 %64, 60
  %66 = lshr i8 %14, 6
  %or354.3 = or i8 %65, %66
  %idxprom208.3 = zext i8 %or354.3 to i64
  %arrayidx209.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom208.3
  %67 = load i8, i8* %arrayidx209.3, align 1, !tbaa !10
  %incdec.ptr210.3 = getelementptr inbounds i8, i8* %incdec.ptr231.2, i64 2
  store i8 %67, i8* %incdec.ptr197.3, align 1, !tbaa !10
  %68 = shl i8 %12, 4
  %69 = and i8 %68, 48
  %70 = lshr i8 %13, 4
  %or221355.3 = or i8 %69, %70
  %idxprom222.3 = zext i8 %or221355.3 to i64
  %arrayidx223.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom222.3
  %71 = load i8, i8* %arrayidx223.3, align 1, !tbaa !10
  %incdec.ptr224.3 = getelementptr inbounds i8, i8* %incdec.ptr231.2, i64 3
  store i8 %71, i8* %incdec.ptr210.3, align 1, !tbaa !10
  %72 = lshr i8 %12, 2
  %73 = zext i8 %72 to i64
  %arrayidx230.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %73
  %74 = load i8, i8* %arrayidx230.3, align 1, !tbaa !10
  %incdec.ptr231.3 = getelementptr inbounds i8, i8* %incdec.ptr231.2, i64 4
  store i8 %74, i8* %incdec.ptr224.3, align 1, !tbaa !10
  %75 = and i8 %17, 63
  %76 = zext i8 %75 to i64
  %arrayidx196.4 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %76
  %77 = load i8, i8* %arrayidx196.4, align 1, !tbaa !10
  %incdec.ptr197.4 = getelementptr inbounds i8, i8* %incdec.ptr231.3, i64 1
  store i8 %77, i8* %incdec.ptr231.3, align 1, !tbaa !10
  %78 = shl i8 %16, 2
  %79 = and i8 %78, 60
  %80 = lshr i8 %17, 6
  %or354.4 = or i8 %79, %80
  %idxprom208.4 = zext i8 %or354.4 to i64
  %arrayidx209.4 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom208.4
  %81 = load i8, i8* %arrayidx209.4, align 1, !tbaa !10
  %incdec.ptr210.4 = getelementptr inbounds i8, i8* %incdec.ptr231.3, i64 2
  store i8 %81, i8* %incdec.ptr197.4, align 1, !tbaa !10
  %82 = shl i8 %15, 4
  %83 = and i8 %82, 48
  %84 = lshr i8 %16, 4
  %or221355.4 = or i8 %83, %84
  %idxprom222.4 = zext i8 %or221355.4 to i64
  %arrayidx223.4 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom222.4
  %85 = load i8, i8* %arrayidx223.4, align 1, !tbaa !10
  %incdec.ptr224.4 = getelementptr inbounds i8, i8* %incdec.ptr231.3, i64 3
  store i8 %85, i8* %incdec.ptr210.4, align 1, !tbaa !10
  %86 = lshr i8 %15, 2
  %87 = zext i8 %86 to i64
  %arrayidx230.4 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %87
  %88 = load i8, i8* %arrayidx230.4, align 1, !tbaa !10
  %incdec.ptr231.4 = getelementptr inbounds i8, i8* %incdec.ptr231.3, i64 4
  store i8 %88, i8* %incdec.ptr224.4, align 1, !tbaa !10
  %89 = and i8 %18, 63
  %90 = zext i8 %89 to i64
  %arrayidx240 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %90
  %91 = load i8, i8* %arrayidx240, align 1, !tbaa !10
  %incdec.ptr241 = getelementptr inbounds i8, i8* %incdec.ptr231.3, i64 5
  store i8 %91, i8* %incdec.ptr231.4, align 1, !tbaa !10
  %92 = lshr i8 %18, 6
  %93 = zext i8 %92 to i64
  %arrayidx247 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %93
  %94 = load i8, i8* %arrayidx247, align 1, !tbaa !10
  %incdec.ptr248 = getelementptr inbounds i8, i8* %incdec.ptr231.3, i64 6
  store i8 %94, i8* %incdec.ptr241, align 1, !tbaa !10
  store i8 0, i8* %incdec.ptr248, align 1, !tbaa !10
  br label %cleanup

err:                                              ; preds = %for.body, %while.body, %if.end162, %if.end145, %if.then140, %if.then131, %if.end112, %for.body107, %for.end, %if.end53, %lor.lhs.false56, %lor.lhs.false60, %lor.lhs.false63, %lor.lhs.false67, %lor.lhs.false70, %if.end48, %if.then36, %lor.lhs.false39, %lor.lhs.false43, %if.end25, %lor.lhs.false, %lor.lhs.false30, %if.end19, %if.end13, %if.then
  %md.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ null, %if.end13 ], [ null, %if.end19 ], [ null, %if.end25 ], [ %call26, %if.end53 ], [ %call26, %for.end ], [ %call26, %lor.lhs.false70 ], [ %call26, %lor.lhs.false67 ], [ %call26, %lor.lhs.false63 ], [ %call26, %lor.lhs.false60 ], [ %call26, %lor.lhs.false56 ], [ %call26, %if.end48 ], [ %call26, %lor.lhs.false43 ], [ %call26, %lor.lhs.false39 ], [ %call26, %if.then36 ], [ %call26, %lor.lhs.false30 ], [ %call26, %lor.lhs.false ], [ %call26, %for.body107 ], [ %call26, %if.end112 ], [ %call26, %if.then131 ], [ %call26, %if.then140 ], [ %call26, %if.end145 ], [ %call26, %if.end162 ], [ %call26, %while.body ], [ %call26, %for.body ]
  %md2.0 = phi %struct.evp_md_ctx_st* [ null, %if.then ], [ null, %if.end13 ], [ null, %if.end19 ], [ null, %if.end25 ], [ null, %if.end53 ], [ %call54, %for.end ], [ %call54, %lor.lhs.false70 ], [ %call54, %lor.lhs.false67 ], [ %call54, %lor.lhs.false63 ], [ %call54, %lor.lhs.false60 ], [ %call54, %lor.lhs.false56 ], [ null, %if.end48 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false39 ], [ null, %if.then36 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false ], [ %call54, %for.body107 ], [ %call54, %if.end112 ], [ %call54, %if.then131 ], [ %call54, %if.then140 ], [ %call54, %if.end145 ], [ %call54, %if.end162 ], [ %call54, %while.body ], [ %call54, %for.body ]
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 485) #6
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md2.0) #6
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md.0) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %err, %for.end169
  %retval.0 = phi i8* [ null, %err ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @md5crypt.out_buf, i64 0, i64 0), %for.end169 ], [ null, %while.end ]
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #5
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @shacrypt(i8* noundef %passwd, i8* noundef %magic, i8* noundef %salt) unnamed_addr #0 {
entry:
  %buf = alloca [64 x i8], align 16
  %temp_buf = alloca [64 x i8], align 16
  %ascii_magic = alloca [2 x i8], align 1
  %ascii_salt = alloca [17 x i8], align 16
  %endp = alloca i8*, align 8
  %tmp_buf = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %temp_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #5
  %2 = getelementptr inbounds [2 x i8], [2 x i8]* %ascii_magic, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #5
  %3 = getelementptr inbounds [17 x i8], [17 x i8]* %ascii_salt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 17, i8* nonnull %3) #5
  %call = tail call i64 @strlen(i8* noundef %passwd) #8
  %call1 = tail call i64 @strlen(i8* noundef %magic) #8
  %cmp.not = icmp eq i64 %call1, 1
  br i1 %cmp.not, label %if.end, label %cleanup1114

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %magic, align 1, !tbaa !10
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %cleanup1114 [
    i32 53, label %sw.bb
    i32 54, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = tail call %struct.evp_md_st* @EVP_sha256() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %call4 = tail call %struct.evp_md_st* @EVP_sha512() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %sha.0 = phi %struct.evp_md_st* [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  %buf_size.0 = phi i64 [ 64, %sw.bb3 ], [ 32, %sw.bb ]
  %call5 = tail call i32 @strncmp(i8* noundef %salt, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @shacrypt.rounds_prefix, i64 0, i64 0), i64 noundef 7) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end30

if.then8:                                         ; preds = %sw.epilog
  %add.ptr9 = getelementptr inbounds i8, i8* %salt, i64 7
  %5 = bitcast i8** %endp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #5
  %call10 = call i64 @strtoul(i8* noundef nonnull %add.ptr9, i8** noundef nonnull %endp, i32 noundef 10) #6
  %6 = load i8*, i8** %endp, align 8, !tbaa !3
  %7 = load i8, i8* %6, align 1, !tbaa !10
  %cmp12 = icmp eq i8 %7, 36
  br i1 %cmp12, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.then8
  %add.ptr15 = getelementptr inbounds i8, i8* %6, i64 1
  %8 = icmp ugt i64 %call10, 1000
  %spec.select1399 = select i1 %8, i64 %call10, i64 1000
  %9 = icmp ult i64 %spec.select1399, 999999999
  %rounds.1.ph1400 = select i1 %9, i64 %spec.select1399, i64 999999999
  %10 = trunc i64 %rounds.1.ph1400 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  br label %if.end30

cleanup:                                          ; preds = %if.then8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #5
  br label %cleanup1114

if.end30:                                         ; preds = %if.then14, %sw.epilog
  %rounds.2 = phi i32 [ 5000, %sw.epilog ], [ %10, %if.then14 ]
  %rounds_custom.1 = phi i64 [ 3, %sw.epilog ], [ 20, %if.then14 ]
  %salt.addr.1 = phi i8* [ %salt, %sw.epilog ], [ %add.ptr15, %if.then14 ]
  %call31 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %2, i8* noundef nonnull %magic, i64 noundef 2) #6
  %call33 = call i64 @OPENSSL_strlcpy(i8* noundef nonnull %3, i8* noundef %salt.addr.1, i64 noundef 17) #6
  %call35 = call i64 @strlen(i8* noundef nonnull %3) #8
  store i8 0, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), align 16, !tbaa !10
  %call36 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 124) #6
  %call38 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 124) #6
  %call39 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 124) #6
  br i1 %cmp6, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end30
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %tmp_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #5
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 noundef %rounds.2) #6
  %call44 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 124) #6
  %call45 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @ascii_dollar, i64 0, i64 0), i64 noundef 124) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end30
  %call48 = call i64 @OPENSSL_strlcat(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 124) #6
  %call49 = call i64 @strlen(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0)) #8
  %add52 = add i64 %call35, %rounds_custom.1
  %cmp53 = icmp ugt i64 %call49, %add52
  br i1 %cmp53, label %err, label %if.end56

if.end56:                                         ; preds = %if.end46
  %call57 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  %cmp58 = icmp eq %struct.evp_md_ctx_st* %call57, null
  br i1 %cmp58, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end56
  %call60 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call57, %struct.evp_md_st* noundef %sha.0, %struct.engine_st* noundef null) #6
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false
  %call63 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call57, i8* noundef %passwd, i64 noundef %call) #6
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call67 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call57, i8* noundef nonnull %3, i64 noundef %call35) #6
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.end70

if.end70:                                         ; preds = %lor.lhs.false65
  %call71 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #6
  %cmp72 = icmp eq %struct.evp_md_ctx_st* %call71, null
  br i1 %cmp72, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.end70
  %call75 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef nonnull %call71, %struct.evp_md_st* noundef %sha.0, %struct.engine_st* noundef null) #6
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %call78 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call71, i8* noundef %passwd, i64 noundef %call) #6
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %call82 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call71, i8* noundef nonnull %3, i64 noundef %call35) #6
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %call85 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef nonnull %call71, i8* noundef %passwd, i64 noundef %call) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %call89 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call71, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false87
  %cmp931407 = icmp ugt i64 %call, %buf_size.0
  br i1 %cmp931407, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %n.01408 = phi i64 [ %sub, %for.inc ], [ %call, %for.cond.preheader ]
  %call96 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call57, i8* noundef nonnull %0, i64 noundef %buf_size.0) #6
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %for.inc

for.inc:                                          ; preds = %for.body
  %sub = sub i64 %n.01408, %buf_size.0
  %cmp93 = icmp ugt i64 %sub, %buf_size.0
  br i1 %cmp93, label %for.body, label %for.end, !llvm.loop !17

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %n.0.lcssa = phi i64 [ %call, %for.cond.preheader ], [ %sub, %for.inc ]
  %call101 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call57, i8* noundef nonnull %0, i64 noundef %n.0.lcssa) #6
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end
  %tobool105.not1409 = icmp eq i64 %call, 0
  br i1 %tobool105.not1409, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %shr = lshr i64 %n.11410, 1
  %tobool105.not = icmp ult i64 %n.11410, 2
  br i1 %tobool105.not, label %while.end, label %while.body, !llvm.loop !18

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %n.11410 = phi i64 [ %shr, %while.cond ], [ %call, %while.cond.preheader ]
  %and = and i64 %n.11410, 1
  %tobool106.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool106.not, i8* %passwd, i8* %0
  %cond113 = select i1 %tobool106.not, i64 %call, i64 %buf_size.0
  %call114 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call57, i8* noundef %cond, i64 noundef %cond113) #6
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond.preheader
  %call119 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call57, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %cleanup1114, label %if.end122

if.end122:                                        ; preds = %while.end
  %call123 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call71, %struct.evp_md_st* noundef %sha.0, %struct.engine_st* noundef null) #6
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %if.end122
  br i1 %tobool105.not1409, label %for.end136, label %for.body130

for.cond127:                                      ; preds = %for.body130
  %cmp128.not = icmp eq i64 %dec, 0
  br i1 %cmp128.not, label %for.end136, label %for.body130, !llvm.loop !19

for.body130:                                      ; preds = %for.cond127.preheader, %for.cond127
  %n.21412 = phi i64 [ %dec, %for.cond127 ], [ %call, %for.cond127.preheader ]
  %call131 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call71, i8* noundef %passwd, i64 noundef %call) #6
  %tobool132.not = icmp eq i32 %call131, 0
  %dec = add i64 %n.21412, -1
  br i1 %tobool132.not, label %err, label %for.cond127

for.end136:                                       ; preds = %for.cond127, %for.cond127.preheader
  %call138 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %1, i32* noundef null) #6
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %cleanup1114, label %if.end141

if.end141:                                        ; preds = %for.end136
  %call142 = call i8* @CRYPTO_zalloc(i64 noundef %call, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 652) #6
  %cmp143 = icmp eq i8* %call142, null
  br i1 %cmp143, label %err, label %for.cond147.preheader

for.cond147.preheader:                            ; preds = %if.end141
  br i1 %cmp931407, label %for.body150, label %for.end156

for.body150:                                      ; preds = %for.cond147.preheader, %for.body150
  %cp.01415 = phi i8* [ %add.ptr155, %for.body150 ], [ %call142, %for.cond147.preheader ]
  %n.31414 = phi i64 [ %sub154, %for.body150 ], [ %call, %for.cond147.preheader ]
  %call152 = call i8* @memcpy(i8* noundef nonnull %cp.01415, i8* noundef nonnull %1, i64 noundef %buf_size.0) #6
  %sub154 = sub i64 %n.31414, %buf_size.0
  %add.ptr155 = getelementptr inbounds i8, i8* %cp.01415, i64 %buf_size.0
  %cmp148 = icmp ugt i64 %sub154, %buf_size.0
  br i1 %cmp148, label %for.body150, label %for.end156, !llvm.loop !20

for.end156:                                       ; preds = %for.body150, %for.cond147.preheader
  %n.3.lcssa = phi i64 [ %call, %for.cond147.preheader ], [ %sub154, %for.body150 ]
  %cp.0.lcssa = phi i8* [ %call142, %for.cond147.preheader ], [ %add.ptr155, %for.body150 ]
  %call158 = call i8* @memcpy(i8* noundef nonnull %cp.0.lcssa, i8* noundef nonnull %1, i64 noundef %n.3.lcssa) #6
  %call159 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call71, %struct.evp_md_st* noundef %sha.0, %struct.engine_st* noundef null) #6
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %if.end162

if.end162:                                        ; preds = %for.end156
  %12 = load i8, i8* %0, align 16, !tbaa !10
  %conv164 = zext i8 %12 to i64
  %add165 = add nuw nsw i64 %conv164, 16
  br label %for.body170

for.cond167:                                      ; preds = %for.body170
  %cmp168.not = icmp eq i64 %dec177, 0
  br i1 %cmp168.not, label %for.end178, label %for.body170, !llvm.loop !21

for.body170:                                      ; preds = %if.end162, %for.cond167
  %n.41418 = phi i64 [ %add165, %if.end162 ], [ %dec177, %for.cond167 ]
  %call172 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %3, i64 noundef %call35) #6
  %tobool173.not = icmp eq i32 %call172, 0
  %dec177 = add nsw i64 %n.41418, -1
  br i1 %tobool173.not, label %err, label %for.cond167

for.end178:                                       ; preds = %for.cond167
  %call180 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %1, i32* noundef null) #6
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %cleanup1114, label %if.end183

if.end183:                                        ; preds = %for.end178
  %call184 = call i8* @CRYPTO_zalloc(i64 noundef %call35, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 669) #6
  %cmp185 = icmp eq i8* %call184, null
  br i1 %cmp185, label %err, label %for.cond189.preheader

for.cond189.preheader:                            ; preds = %if.end183
  %cmp1901419 = icmp ugt i64 %call35, %buf_size.0
  br i1 %cmp1901419, label %for.body192, label %for.end198

for.body192:                                      ; preds = %for.cond189.preheader, %for.body192
  %cp.11421 = phi i8* [ %add.ptr197, %for.body192 ], [ %call184, %for.cond189.preheader ]
  %n.51420 = phi i64 [ %sub196, %for.body192 ], [ %call35, %for.cond189.preheader ]
  %call194 = call i8* @memcpy(i8* noundef nonnull %cp.11421, i8* noundef nonnull %1, i64 noundef %buf_size.0) #6
  %sub196 = sub i64 %n.51420, %buf_size.0
  %add.ptr197 = getelementptr inbounds i8, i8* %cp.11421, i64 %buf_size.0
  %cmp190 = icmp ugt i64 %sub196, %buf_size.0
  br i1 %cmp190, label %for.body192, label %for.end198, !llvm.loop !22

for.end198:                                       ; preds = %for.body192, %for.cond189.preheader
  %n.5.lcssa = phi i64 [ %call35, %for.cond189.preheader ], [ %sub196, %for.body192 ]
  %cp.1.lcssa = phi i8* [ %call184, %for.cond189.preheader ], [ %add.ptr197, %for.body192 ]
  %call200 = call i8* @memcpy(i8* noundef nonnull %cp.1.lcssa, i8* noundef nonnull %1, i64 noundef %n.5.lcssa) #6
  %conv202 = zext i32 %rounds.2 to i64
  %cmp2031424.not = icmp eq i32 %rounds.2, 0
  br i1 %cmp2031424.not, label %for.end265, label %for.body205

for.cond201:                                      ; preds = %if.end258
  %exitcond.not = icmp eq i64 %inc, %conv202
  br i1 %exitcond.not, label %for.end265, label %for.body205, !llvm.loop !23

for.body205:                                      ; preds = %for.end198, %for.cond201
  %n.61425 = phi i64 [ %inc, %for.cond201 ], [ 0, %for.end198 ]
  %call206 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call71, %struct.evp_md_st* noundef %sha.0, %struct.engine_st* noundef null) #6
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %if.end209

if.end209:                                        ; preds = %for.body205
  %and210 = and i64 %n.61425, 1
  %tobool211.not = icmp eq i64 %and210, 0
  %cond216 = select i1 %tobool211.not, i8* %0, i8* %call142
  %cond222 = select i1 %tobool211.not, i64 %buf_size.0, i64 %call
  %call223 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %cond216, i64 noundef %cond222) #6
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %err, label %if.end226

if.end226:                                        ; preds = %if.end209
  %rem = urem i64 %n.61425, 3
  %tobool227.not = icmp eq i64 %rem, 0
  br i1 %tobool227.not, label %if.end233, label %if.then228

if.then228:                                       ; preds = %if.end226
  %call229 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %call184, i64 noundef %call35) #6
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %err, label %if.end233

if.end233:                                        ; preds = %if.then228, %if.end226
  %rem234 = urem i64 %n.61425, 7
  %tobool235.not = icmp eq i64 %rem234, 0
  br i1 %tobool235.not, label %if.end241, label %if.then236

if.then236:                                       ; preds = %if.end233
  %call237 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %call142, i64 noundef %call) #6
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %err, label %if.end241

if.end241:                                        ; preds = %if.then236, %if.end233
  %cond248 = select i1 %tobool211.not, i8* %call142, i8* %0
  %cond254 = select i1 %tobool211.not, i64 %call, i64 %buf_size.0
  %call255 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %cond248, i64 noundef %cond254) #6
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %err, label %if.end258

if.end258:                                        ; preds = %if.end241
  %call260 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call71, i8* noundef nonnull %0, i32* noundef null) #6
  %tobool261.not = icmp eq i32 %call260, 0
  %inc = add nuw nsw i64 %n.61425, 1
  br i1 %tobool261.not, label %err, label %for.cond201

for.end265:                                       ; preds = %for.cond201, %for.end198
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call71) #6
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call57) #6
  call void @CRYPTO_free(i8* noundef nonnull %call142, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 701) #6
  call void @CRYPTO_free(i8* noundef nonnull %call184, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 702) #6
  %call266 = call i64 @strlen(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0)) #8
  %add.ptr267 = getelementptr inbounds [124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 %call266
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr267, i64 1
  store i8 36, i8* %add.ptr267, align 1, !tbaa !10
  %13 = load i8, i8* %magic, align 1, !tbaa !10
  %conv269 = sext i8 %13 to i32
  switch i32 %conv269, label %err [
    i32 53, label %do.body
    i32 54, label %do.body547
  ]

do.body:                                          ; preds = %for.end265
  %14 = load i8, i8* %0, align 16, !tbaa !10
  %conv272 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv272, 16
  %arrayidx273 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 10
  %15 = load i8, i8* %arrayidx273, align 2, !tbaa !10
  %conv274 = zext i8 %15 to i32
  %shl275 = shl nuw nsw i32 %conv274, 8
  %or = or i32 %shl275, %shl
  %arrayidx276 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 20
  %16 = load i8, i8* %arrayidx276, align 4, !tbaa !10
  %conv277 = zext i8 %16 to i32
  %or278 = or i32 %shl275, %conv277
  %and284 = and i32 %conv277, 63
  %idxprom = zext i32 %and284 to i64
  %arrayidx285 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx285, align 1, !tbaa !10
  %incdec.ptr286 = getelementptr inbounds i8, i8* %add.ptr267, i64 2
  store i8 %17, i8* %incdec.ptr, align 1, !tbaa !10
  %shr287 = lshr i32 %or278, 6
  %and284.1 = and i32 %shr287, 63
  %idxprom.1 = zext i32 %and284.1 to i64
  %arrayidx285.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom.1
  %18 = load i8, i8* %arrayidx285.1, align 1, !tbaa !10
  %incdec.ptr286.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 3
  store i8 %18, i8* %incdec.ptr286, align 1, !tbaa !10
  %shr287.1 = lshr i32 %or, 12
  %and284.2 = and i32 %shr287.1, 63
  %idxprom.2 = zext i32 %and284.2 to i64
  %arrayidx285.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom.2
  %19 = load i8, i8* %arrayidx285.2, align 1, !tbaa !10
  %incdec.ptr286.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 4
  store i8 %19, i8* %incdec.ptr286.1, align 1, !tbaa !10
  %shr287.2 = lshr i32 %conv272, 2
  %idxprom.3 = zext i32 %shr287.2 to i64
  %arrayidx285.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom.3
  %20 = load i8, i8* %arrayidx285.3, align 1, !tbaa !10
  %incdec.ptr286.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 5
  store i8 %20, i8* %incdec.ptr286.2, align 1, !tbaa !10
  %arrayidx291 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 21
  %21 = load i8, i8* %arrayidx291, align 1, !tbaa !10
  %conv292 = zext i8 %21 to i32
  %shl293 = shl nuw nsw i32 %conv292, 16
  %arrayidx294 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 1
  %22 = load i8, i8* %arrayidx294, align 1, !tbaa !10
  %conv295 = zext i8 %22 to i32
  %shl296 = shl nuw nsw i32 %conv295, 8
  %or297 = or i32 %shl296, %shl293
  %arrayidx298 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 11
  %23 = load i8, i8* %arrayidx298, align 1, !tbaa !10
  %conv299 = zext i8 %23 to i32
  %or300 = or i32 %shl296, %conv299
  %and307 = and i32 %conv299, 63
  %idxprom308 = zext i32 %and307 to i64
  %arrayidx309 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom308
  %24 = load i8, i8* %arrayidx309, align 1, !tbaa !10
  %incdec.ptr310 = getelementptr inbounds i8, i8* %add.ptr267, i64 6
  store i8 %24, i8* %incdec.ptr286.3, align 1, !tbaa !10
  %shr311 = lshr i32 %or300, 6
  %and307.1 = and i32 %shr311, 63
  %idxprom308.1 = zext i32 %and307.1 to i64
  %arrayidx309.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom308.1
  %25 = load i8, i8* %arrayidx309.1, align 1, !tbaa !10
  %incdec.ptr310.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 7
  store i8 %25, i8* %incdec.ptr310, align 1, !tbaa !10
  %shr311.1 = lshr i32 %or297, 12
  %and307.2 = and i32 %shr311.1, 63
  %idxprom308.2 = zext i32 %and307.2 to i64
  %arrayidx309.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom308.2
  %26 = load i8, i8* %arrayidx309.2, align 1, !tbaa !10
  %incdec.ptr310.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 8
  store i8 %26, i8* %incdec.ptr310.1, align 1, !tbaa !10
  %shr311.2 = lshr i32 %conv292, 2
  %idxprom308.3 = zext i32 %shr311.2 to i64
  %arrayidx309.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom308.3
  %27 = load i8, i8* %arrayidx309.3, align 1, !tbaa !10
  %incdec.ptr310.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 9
  store i8 %27, i8* %incdec.ptr310.2, align 1, !tbaa !10
  %arrayidx317 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 12
  %28 = load i8, i8* %arrayidx317, align 4, !tbaa !10
  %conv318 = zext i8 %28 to i32
  %shl319 = shl nuw nsw i32 %conv318, 16
  %arrayidx320 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 22
  %29 = load i8, i8* %arrayidx320, align 2, !tbaa !10
  %conv321 = zext i8 %29 to i32
  %shl322 = shl nuw nsw i32 %conv321, 8
  %or323 = or i32 %shl322, %shl319
  %arrayidx324 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 2
  %30 = load i8, i8* %arrayidx324, align 2, !tbaa !10
  %conv325 = zext i8 %30 to i32
  %or326 = or i32 %shl322, %conv325
  %and333 = and i32 %conv325, 63
  %idxprom334 = zext i32 %and333 to i64
  %arrayidx335 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom334
  %31 = load i8, i8* %arrayidx335, align 1, !tbaa !10
  %incdec.ptr336 = getelementptr inbounds i8, i8* %add.ptr267, i64 10
  store i8 %31, i8* %incdec.ptr310.3, align 1, !tbaa !10
  %shr337 = lshr i32 %or326, 6
  %and333.1 = and i32 %shr337, 63
  %idxprom334.1 = zext i32 %and333.1 to i64
  %arrayidx335.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom334.1
  %32 = load i8, i8* %arrayidx335.1, align 1, !tbaa !10
  %incdec.ptr336.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 11
  store i8 %32, i8* %incdec.ptr336, align 1, !tbaa !10
  %shr337.1 = lshr i32 %or323, 12
  %and333.2 = and i32 %shr337.1, 63
  %idxprom334.2 = zext i32 %and333.2 to i64
  %arrayidx335.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom334.2
  %33 = load i8, i8* %arrayidx335.2, align 1, !tbaa !10
  %incdec.ptr336.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 12
  store i8 %33, i8* %incdec.ptr336.1, align 1, !tbaa !10
  %shr337.2 = lshr i32 %conv318, 2
  %idxprom334.3 = zext i32 %shr337.2 to i64
  %arrayidx335.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom334.3
  %34 = load i8, i8* %arrayidx335.3, align 1, !tbaa !10
  %incdec.ptr336.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 13
  store i8 %34, i8* %incdec.ptr336.2, align 1, !tbaa !10
  %arrayidx343 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 3
  %35 = load i8, i8* %arrayidx343, align 1, !tbaa !10
  %conv344 = zext i8 %35 to i32
  %shl345 = shl nuw nsw i32 %conv344, 16
  %arrayidx346 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 13
  %36 = load i8, i8* %arrayidx346, align 1, !tbaa !10
  %conv347 = zext i8 %36 to i32
  %shl348 = shl nuw nsw i32 %conv347, 8
  %or349 = or i32 %shl348, %shl345
  %arrayidx350 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 23
  %37 = load i8, i8* %arrayidx350, align 1, !tbaa !10
  %conv351 = zext i8 %37 to i32
  %or352 = or i32 %shl348, %conv351
  %and359 = and i32 %conv351, 63
  %idxprom360 = zext i32 %and359 to i64
  %arrayidx361 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom360
  %38 = load i8, i8* %arrayidx361, align 1, !tbaa !10
  %incdec.ptr362 = getelementptr inbounds i8, i8* %add.ptr267, i64 14
  store i8 %38, i8* %incdec.ptr336.3, align 1, !tbaa !10
  %shr363 = lshr i32 %or352, 6
  %and359.1 = and i32 %shr363, 63
  %idxprom360.1 = zext i32 %and359.1 to i64
  %arrayidx361.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom360.1
  %39 = load i8, i8* %arrayidx361.1, align 1, !tbaa !10
  %incdec.ptr362.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 15
  store i8 %39, i8* %incdec.ptr362, align 1, !tbaa !10
  %shr363.1 = lshr i32 %or349, 12
  %and359.2 = and i32 %shr363.1, 63
  %idxprom360.2 = zext i32 %and359.2 to i64
  %arrayidx361.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom360.2
  %40 = load i8, i8* %arrayidx361.2, align 1, !tbaa !10
  %incdec.ptr362.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 16
  store i8 %40, i8* %incdec.ptr362.1, align 1, !tbaa !10
  %shr363.2 = lshr i32 %conv344, 2
  %idxprom360.3 = zext i32 %shr363.2 to i64
  %arrayidx361.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom360.3
  %41 = load i8, i8* %arrayidx361.3, align 1, !tbaa !10
  %incdec.ptr362.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 17
  store i8 %41, i8* %incdec.ptr362.2, align 1, !tbaa !10
  %arrayidx369 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 24
  %42 = load i8, i8* %arrayidx369, align 8, !tbaa !10
  %conv370 = zext i8 %42 to i32
  %shl371 = shl nuw nsw i32 %conv370, 16
  %arrayidx372 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 4
  %43 = load i8, i8* %arrayidx372, align 4, !tbaa !10
  %conv373 = zext i8 %43 to i32
  %shl374 = shl nuw nsw i32 %conv373, 8
  %or375 = or i32 %shl374, %shl371
  %arrayidx376 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 14
  %44 = load i8, i8* %arrayidx376, align 2, !tbaa !10
  %conv377 = zext i8 %44 to i32
  %or378 = or i32 %shl374, %conv377
  %and385 = and i32 %conv377, 63
  %idxprom386 = zext i32 %and385 to i64
  %arrayidx387 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom386
  %45 = load i8, i8* %arrayidx387, align 1, !tbaa !10
  %incdec.ptr388 = getelementptr inbounds i8, i8* %add.ptr267, i64 18
  store i8 %45, i8* %incdec.ptr362.3, align 1, !tbaa !10
  %shr389 = lshr i32 %or378, 6
  %and385.1 = and i32 %shr389, 63
  %idxprom386.1 = zext i32 %and385.1 to i64
  %arrayidx387.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom386.1
  %46 = load i8, i8* %arrayidx387.1, align 1, !tbaa !10
  %incdec.ptr388.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 19
  store i8 %46, i8* %incdec.ptr388, align 1, !tbaa !10
  %shr389.1 = lshr i32 %or375, 12
  %and385.2 = and i32 %shr389.1, 63
  %idxprom386.2 = zext i32 %and385.2 to i64
  %arrayidx387.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom386.2
  %47 = load i8, i8* %arrayidx387.2, align 1, !tbaa !10
  %incdec.ptr388.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 20
  store i8 %47, i8* %incdec.ptr388.1, align 1, !tbaa !10
  %shr389.2 = lshr i32 %conv370, 2
  %idxprom386.3 = zext i32 %shr389.2 to i64
  %arrayidx387.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom386.3
  %48 = load i8, i8* %arrayidx387.3, align 1, !tbaa !10
  %incdec.ptr388.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 21
  store i8 %48, i8* %incdec.ptr388.2, align 1, !tbaa !10
  %arrayidx395 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 15
  %49 = load i8, i8* %arrayidx395, align 1, !tbaa !10
  %conv396 = zext i8 %49 to i32
  %shl397 = shl nuw nsw i32 %conv396, 16
  %arrayidx398 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 25
  %50 = load i8, i8* %arrayidx398, align 1, !tbaa !10
  %conv399 = zext i8 %50 to i32
  %shl400 = shl nuw nsw i32 %conv399, 8
  %or401 = or i32 %shl400, %shl397
  %arrayidx402 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 5
  %51 = load i8, i8* %arrayidx402, align 1, !tbaa !10
  %conv403 = zext i8 %51 to i32
  %or404 = or i32 %shl400, %conv403
  %and411 = and i32 %conv403, 63
  %idxprom412 = zext i32 %and411 to i64
  %arrayidx413 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom412
  %52 = load i8, i8* %arrayidx413, align 1, !tbaa !10
  %incdec.ptr414 = getelementptr inbounds i8, i8* %add.ptr267, i64 22
  store i8 %52, i8* %incdec.ptr388.3, align 1, !tbaa !10
  %shr415 = lshr i32 %or404, 6
  %and411.1 = and i32 %shr415, 63
  %idxprom412.1 = zext i32 %and411.1 to i64
  %arrayidx413.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom412.1
  %53 = load i8, i8* %arrayidx413.1, align 1, !tbaa !10
  %incdec.ptr414.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 23
  store i8 %53, i8* %incdec.ptr414, align 1, !tbaa !10
  %shr415.1 = lshr i32 %or401, 12
  %and411.2 = and i32 %shr415.1, 63
  %idxprom412.2 = zext i32 %and411.2 to i64
  %arrayidx413.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom412.2
  %54 = load i8, i8* %arrayidx413.2, align 1, !tbaa !10
  %incdec.ptr414.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 24
  store i8 %54, i8* %incdec.ptr414.1, align 1, !tbaa !10
  %shr415.2 = lshr i32 %conv396, 2
  %idxprom412.3 = zext i32 %shr415.2 to i64
  %arrayidx413.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom412.3
  %55 = load i8, i8* %arrayidx413.3, align 1, !tbaa !10
  %incdec.ptr414.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 25
  store i8 %55, i8* %incdec.ptr414.2, align 1, !tbaa !10
  %arrayidx421 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 6
  %56 = load i8, i8* %arrayidx421, align 2, !tbaa !10
  %conv422 = zext i8 %56 to i32
  %shl423 = shl nuw nsw i32 %conv422, 16
  %arrayidx424 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 16
  %57 = load i8, i8* %arrayidx424, align 16, !tbaa !10
  %conv425 = zext i8 %57 to i32
  %shl426 = shl nuw nsw i32 %conv425, 8
  %or427 = or i32 %shl426, %shl423
  %arrayidx428 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 26
  %58 = load i8, i8* %arrayidx428, align 2, !tbaa !10
  %conv429 = zext i8 %58 to i32
  %or430 = or i32 %shl426, %conv429
  %and437 = and i32 %conv429, 63
  %idxprom438 = zext i32 %and437 to i64
  %arrayidx439 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom438
  %59 = load i8, i8* %arrayidx439, align 1, !tbaa !10
  %incdec.ptr440 = getelementptr inbounds i8, i8* %add.ptr267, i64 26
  store i8 %59, i8* %incdec.ptr414.3, align 1, !tbaa !10
  %shr441 = lshr i32 %or430, 6
  %and437.1 = and i32 %shr441, 63
  %idxprom438.1 = zext i32 %and437.1 to i64
  %arrayidx439.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom438.1
  %60 = load i8, i8* %arrayidx439.1, align 1, !tbaa !10
  %incdec.ptr440.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 27
  store i8 %60, i8* %incdec.ptr440, align 1, !tbaa !10
  %shr441.1 = lshr i32 %or427, 12
  %and437.2 = and i32 %shr441.1, 63
  %idxprom438.2 = zext i32 %and437.2 to i64
  %arrayidx439.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom438.2
  %61 = load i8, i8* %arrayidx439.2, align 1, !tbaa !10
  %incdec.ptr440.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 28
  store i8 %61, i8* %incdec.ptr440.1, align 1, !tbaa !10
  %shr441.2 = lshr i32 %conv422, 2
  %idxprom438.3 = zext i32 %shr441.2 to i64
  %arrayidx439.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom438.3
  %62 = load i8, i8* %arrayidx439.3, align 1, !tbaa !10
  %incdec.ptr440.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 29
  store i8 %62, i8* %incdec.ptr440.2, align 1, !tbaa !10
  %arrayidx447 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 27
  %63 = load i8, i8* %arrayidx447, align 1, !tbaa !10
  %conv448 = zext i8 %63 to i32
  %shl449 = shl nuw nsw i32 %conv448, 16
  %arrayidx450 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 7
  %64 = load i8, i8* %arrayidx450, align 1, !tbaa !10
  %conv451 = zext i8 %64 to i32
  %shl452 = shl nuw nsw i32 %conv451, 8
  %or453 = or i32 %shl452, %shl449
  %arrayidx454 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 17
  %65 = load i8, i8* %arrayidx454, align 1, !tbaa !10
  %conv455 = zext i8 %65 to i32
  %or456 = or i32 %shl452, %conv455
  %and463 = and i32 %conv455, 63
  %idxprom464 = zext i32 %and463 to i64
  %arrayidx465 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom464
  %66 = load i8, i8* %arrayidx465, align 1, !tbaa !10
  %incdec.ptr466 = getelementptr inbounds i8, i8* %add.ptr267, i64 30
  store i8 %66, i8* %incdec.ptr440.3, align 1, !tbaa !10
  %shr467 = lshr i32 %or456, 6
  %and463.1 = and i32 %shr467, 63
  %idxprom464.1 = zext i32 %and463.1 to i64
  %arrayidx465.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom464.1
  %67 = load i8, i8* %arrayidx465.1, align 1, !tbaa !10
  %incdec.ptr466.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 31
  store i8 %67, i8* %incdec.ptr466, align 1, !tbaa !10
  %shr467.1 = lshr i32 %or453, 12
  %and463.2 = and i32 %shr467.1, 63
  %idxprom464.2 = zext i32 %and463.2 to i64
  %arrayidx465.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom464.2
  %68 = load i8, i8* %arrayidx465.2, align 1, !tbaa !10
  %incdec.ptr466.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 32
  store i8 %68, i8* %incdec.ptr466.1, align 1, !tbaa !10
  %shr467.2 = lshr i32 %conv448, 2
  %idxprom464.3 = zext i32 %shr467.2 to i64
  %arrayidx465.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom464.3
  %69 = load i8, i8* %arrayidx465.3, align 1, !tbaa !10
  %incdec.ptr466.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 33
  store i8 %69, i8* %incdec.ptr466.2, align 1, !tbaa !10
  %arrayidx473 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 18
  %70 = load i8, i8* %arrayidx473, align 2, !tbaa !10
  %conv474 = zext i8 %70 to i32
  %shl475 = shl nuw nsw i32 %conv474, 16
  %arrayidx476 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 28
  %71 = load i8, i8* %arrayidx476, align 4, !tbaa !10
  %conv477 = zext i8 %71 to i32
  %shl478 = shl nuw nsw i32 %conv477, 8
  %or479 = or i32 %shl478, %shl475
  %arrayidx480 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 8
  %72 = load i8, i8* %arrayidx480, align 8, !tbaa !10
  %conv481 = zext i8 %72 to i32
  %or482 = or i32 %shl478, %conv481
  %and489 = and i32 %conv481, 63
  %idxprom490 = zext i32 %and489 to i64
  %arrayidx491 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom490
  %73 = load i8, i8* %arrayidx491, align 1, !tbaa !10
  %incdec.ptr492 = getelementptr inbounds i8, i8* %add.ptr267, i64 34
  store i8 %73, i8* %incdec.ptr466.3, align 1, !tbaa !10
  %shr493 = lshr i32 %or482, 6
  %and489.1 = and i32 %shr493, 63
  %idxprom490.1 = zext i32 %and489.1 to i64
  %arrayidx491.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom490.1
  %74 = load i8, i8* %arrayidx491.1, align 1, !tbaa !10
  %incdec.ptr492.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 35
  store i8 %74, i8* %incdec.ptr492, align 1, !tbaa !10
  %shr493.1 = lshr i32 %or479, 12
  %and489.2 = and i32 %shr493.1, 63
  %idxprom490.2 = zext i32 %and489.2 to i64
  %arrayidx491.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom490.2
  %75 = load i8, i8* %arrayidx491.2, align 1, !tbaa !10
  %incdec.ptr492.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 36
  store i8 %75, i8* %incdec.ptr492.1, align 1, !tbaa !10
  %shr493.2 = lshr i32 %conv474, 2
  %idxprom490.3 = zext i32 %shr493.2 to i64
  %arrayidx491.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom490.3
  %76 = load i8, i8* %arrayidx491.3, align 1, !tbaa !10
  %incdec.ptr492.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 37
  store i8 %76, i8* %incdec.ptr492.2, align 1, !tbaa !10
  %arrayidx499 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 9
  %77 = load i8, i8* %arrayidx499, align 1, !tbaa !10
  %conv500 = zext i8 %77 to i32
  %shl501 = shl nuw nsw i32 %conv500, 16
  %arrayidx502 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 19
  %78 = load i8, i8* %arrayidx502, align 1, !tbaa !10
  %conv503 = zext i8 %78 to i32
  %shl504 = shl nuw nsw i32 %conv503, 8
  %or505 = or i32 %shl504, %shl501
  %arrayidx506 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 29
  %79 = load i8, i8* %arrayidx506, align 1, !tbaa !10
  %conv507 = zext i8 %79 to i32
  %or508 = or i32 %shl504, %conv507
  %and515 = and i32 %conv507, 63
  %idxprom516 = zext i32 %and515 to i64
  %arrayidx517 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom516
  %80 = load i8, i8* %arrayidx517, align 1, !tbaa !10
  %incdec.ptr518 = getelementptr inbounds i8, i8* %add.ptr267, i64 38
  store i8 %80, i8* %incdec.ptr492.3, align 1, !tbaa !10
  %shr519 = lshr i32 %or508, 6
  %and515.1 = and i32 %shr519, 63
  %idxprom516.1 = zext i32 %and515.1 to i64
  %arrayidx517.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom516.1
  %81 = load i8, i8* %arrayidx517.1, align 1, !tbaa !10
  %incdec.ptr518.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 39
  store i8 %81, i8* %incdec.ptr518, align 1, !tbaa !10
  %shr519.1 = lshr i32 %or505, 12
  %and515.2 = and i32 %shr519.1, 63
  %idxprom516.2 = zext i32 %and515.2 to i64
  %arrayidx517.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom516.2
  %82 = load i8, i8* %arrayidx517.2, align 1, !tbaa !10
  %incdec.ptr518.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 40
  store i8 %82, i8* %incdec.ptr518.1, align 1, !tbaa !10
  %shr519.2 = lshr i32 %conv500, 2
  %idxprom516.3 = zext i32 %shr519.2 to i64
  %arrayidx517.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom516.3
  %83 = load i8, i8* %arrayidx517.3, align 1, !tbaa !10
  %incdec.ptr518.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 41
  store i8 %83, i8* %incdec.ptr518.2, align 1, !tbaa !10
  %arrayidx525 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 31
  %84 = load i8, i8* %arrayidx525, align 1, !tbaa !10
  %conv526 = zext i8 %84 to i32
  %shl527 = shl nuw nsw i32 %conv526, 8
  %arrayidx529 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 30
  %85 = load i8, i8* %arrayidx529, align 2, !tbaa !10
  %conv530 = zext i8 %85 to i32
  %or531 = or i32 %shl527, %conv530
  %and538 = and i32 %conv530, 63
  %idxprom539 = zext i32 %and538 to i64
  %arrayidx540 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom539
  %86 = load i8, i8* %arrayidx540, align 1, !tbaa !10
  %incdec.ptr541 = getelementptr inbounds i8, i8* %add.ptr267, i64 42
  store i8 %86, i8* %incdec.ptr518.3, align 1, !tbaa !10
  %shr542 = lshr i32 %or531, 6
  %and538.1 = and i32 %shr542, 63
  %idxprom539.1 = zext i32 %and538.1 to i64
  %arrayidx540.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom539.1
  %87 = load i8, i8* %arrayidx540.1, align 1, !tbaa !10
  %incdec.ptr541.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 43
  store i8 %87, i8* %incdec.ptr541, align 1, !tbaa !10
  %shr542.1 = lshr i32 %conv526, 4
  br label %sw.epilog1113

do.body547:                                       ; preds = %for.end265
  %88 = load i8, i8* %0, align 16, !tbaa !10
  %conv550 = zext i8 %88 to i32
  %shl551 = shl nuw nsw i32 %conv550, 16
  %arrayidx552 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 21
  %89 = load i8, i8* %arrayidx552, align 1, !tbaa !10
  %conv553 = zext i8 %89 to i32
  %shl554 = shl nuw nsw i32 %conv553, 8
  %or555 = or i32 %shl554, %shl551
  %arrayidx556 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 42
  %90 = load i8, i8* %arrayidx556, align 2, !tbaa !10
  %conv557 = zext i8 %90 to i32
  %or558 = or i32 %shl554, %conv557
  %and565 = and i32 %conv557, 63
  %idxprom566 = zext i32 %and565 to i64
  %arrayidx567 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom566
  %91 = load i8, i8* %arrayidx567, align 1, !tbaa !10
  %incdec.ptr568 = getelementptr inbounds i8, i8* %add.ptr267, i64 2
  store i8 %91, i8* %incdec.ptr, align 1, !tbaa !10
  %shr569 = lshr i32 %or558, 6
  %and565.1 = and i32 %shr569, 63
  %idxprom566.1 = zext i32 %and565.1 to i64
  %arrayidx567.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom566.1
  %92 = load i8, i8* %arrayidx567.1, align 1, !tbaa !10
  %incdec.ptr568.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 3
  store i8 %92, i8* %incdec.ptr568, align 1, !tbaa !10
  %shr569.1 = lshr i32 %or555, 12
  %and565.2 = and i32 %shr569.1, 63
  %idxprom566.2 = zext i32 %and565.2 to i64
  %arrayidx567.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom566.2
  %93 = load i8, i8* %arrayidx567.2, align 1, !tbaa !10
  %incdec.ptr568.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 4
  store i8 %93, i8* %incdec.ptr568.1, align 1, !tbaa !10
  %shr569.2 = lshr i32 %conv550, 2
  %idxprom566.3 = zext i32 %shr569.2 to i64
  %arrayidx567.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom566.3
  %94 = load i8, i8* %arrayidx567.3, align 1, !tbaa !10
  %incdec.ptr568.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 5
  store i8 %94, i8* %incdec.ptr568.2, align 1, !tbaa !10
  %arrayidx575 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 22
  %95 = load i8, i8* %arrayidx575, align 2, !tbaa !10
  %conv576 = zext i8 %95 to i32
  %shl577 = shl nuw nsw i32 %conv576, 16
  %arrayidx578 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 43
  %96 = load i8, i8* %arrayidx578, align 1, !tbaa !10
  %conv579 = zext i8 %96 to i32
  %shl580 = shl nuw nsw i32 %conv579, 8
  %or581 = or i32 %shl580, %shl577
  %arrayidx582 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 1
  %97 = load i8, i8* %arrayidx582, align 1, !tbaa !10
  %conv583 = zext i8 %97 to i32
  %or584 = or i32 %shl580, %conv583
  %and591 = and i32 %conv583, 63
  %idxprom592 = zext i32 %and591 to i64
  %arrayidx593 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom592
  %98 = load i8, i8* %arrayidx593, align 1, !tbaa !10
  %incdec.ptr594 = getelementptr inbounds i8, i8* %add.ptr267, i64 6
  store i8 %98, i8* %incdec.ptr568.3, align 1, !tbaa !10
  %shr595 = lshr i32 %or584, 6
  %and591.1 = and i32 %shr595, 63
  %idxprom592.1 = zext i32 %and591.1 to i64
  %arrayidx593.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom592.1
  %99 = load i8, i8* %arrayidx593.1, align 1, !tbaa !10
  %incdec.ptr594.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 7
  store i8 %99, i8* %incdec.ptr594, align 1, !tbaa !10
  %shr595.1 = lshr i32 %or581, 12
  %and591.2 = and i32 %shr595.1, 63
  %idxprom592.2 = zext i32 %and591.2 to i64
  %arrayidx593.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom592.2
  %100 = load i8, i8* %arrayidx593.2, align 1, !tbaa !10
  %incdec.ptr594.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 8
  store i8 %100, i8* %incdec.ptr594.1, align 1, !tbaa !10
  %shr595.2 = lshr i32 %conv576, 2
  %idxprom592.3 = zext i32 %shr595.2 to i64
  %arrayidx593.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom592.3
  %101 = load i8, i8* %arrayidx593.3, align 1, !tbaa !10
  %incdec.ptr594.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 9
  store i8 %101, i8* %incdec.ptr594.2, align 1, !tbaa !10
  %arrayidx601 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 44
  %102 = load i8, i8* %arrayidx601, align 4, !tbaa !10
  %conv602 = zext i8 %102 to i32
  %shl603 = shl nuw nsw i32 %conv602, 16
  %arrayidx604 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 2
  %103 = load i8, i8* %arrayidx604, align 2, !tbaa !10
  %conv605 = zext i8 %103 to i32
  %shl606 = shl nuw nsw i32 %conv605, 8
  %or607 = or i32 %shl606, %shl603
  %arrayidx608 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 23
  %104 = load i8, i8* %arrayidx608, align 1, !tbaa !10
  %conv609 = zext i8 %104 to i32
  %or610 = or i32 %shl606, %conv609
  %and617 = and i32 %conv609, 63
  %idxprom618 = zext i32 %and617 to i64
  %arrayidx619 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom618
  %105 = load i8, i8* %arrayidx619, align 1, !tbaa !10
  %incdec.ptr620 = getelementptr inbounds i8, i8* %add.ptr267, i64 10
  store i8 %105, i8* %incdec.ptr594.3, align 1, !tbaa !10
  %shr621 = lshr i32 %or610, 6
  %and617.1 = and i32 %shr621, 63
  %idxprom618.1 = zext i32 %and617.1 to i64
  %arrayidx619.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom618.1
  %106 = load i8, i8* %arrayidx619.1, align 1, !tbaa !10
  %incdec.ptr620.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 11
  store i8 %106, i8* %incdec.ptr620, align 1, !tbaa !10
  %shr621.1 = lshr i32 %or607, 12
  %and617.2 = and i32 %shr621.1, 63
  %idxprom618.2 = zext i32 %and617.2 to i64
  %arrayidx619.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom618.2
  %107 = load i8, i8* %arrayidx619.2, align 1, !tbaa !10
  %incdec.ptr620.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 12
  store i8 %107, i8* %incdec.ptr620.1, align 1, !tbaa !10
  %shr621.2 = lshr i32 %conv602, 2
  %idxprom618.3 = zext i32 %shr621.2 to i64
  %arrayidx619.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom618.3
  %108 = load i8, i8* %arrayidx619.3, align 1, !tbaa !10
  %incdec.ptr620.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 13
  store i8 %108, i8* %incdec.ptr620.2, align 1, !tbaa !10
  %arrayidx627 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 3
  %109 = load i8, i8* %arrayidx627, align 1, !tbaa !10
  %conv628 = zext i8 %109 to i32
  %shl629 = shl nuw nsw i32 %conv628, 16
  %arrayidx630 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 24
  %110 = load i8, i8* %arrayidx630, align 8, !tbaa !10
  %conv631 = zext i8 %110 to i32
  %shl632 = shl nuw nsw i32 %conv631, 8
  %or633 = or i32 %shl632, %shl629
  %arrayidx634 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 45
  %111 = load i8, i8* %arrayidx634, align 1, !tbaa !10
  %conv635 = zext i8 %111 to i32
  %or636 = or i32 %shl632, %conv635
  %and643 = and i32 %conv635, 63
  %idxprom644 = zext i32 %and643 to i64
  %arrayidx645 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom644
  %112 = load i8, i8* %arrayidx645, align 1, !tbaa !10
  %incdec.ptr646 = getelementptr inbounds i8, i8* %add.ptr267, i64 14
  store i8 %112, i8* %incdec.ptr620.3, align 1, !tbaa !10
  %shr647 = lshr i32 %or636, 6
  %and643.1 = and i32 %shr647, 63
  %idxprom644.1 = zext i32 %and643.1 to i64
  %arrayidx645.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom644.1
  %113 = load i8, i8* %arrayidx645.1, align 1, !tbaa !10
  %incdec.ptr646.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 15
  store i8 %113, i8* %incdec.ptr646, align 1, !tbaa !10
  %shr647.1 = lshr i32 %or633, 12
  %and643.2 = and i32 %shr647.1, 63
  %idxprom644.2 = zext i32 %and643.2 to i64
  %arrayidx645.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom644.2
  %114 = load i8, i8* %arrayidx645.2, align 1, !tbaa !10
  %incdec.ptr646.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 16
  store i8 %114, i8* %incdec.ptr646.1, align 1, !tbaa !10
  %shr647.2 = lshr i32 %conv628, 2
  %idxprom644.3 = zext i32 %shr647.2 to i64
  %arrayidx645.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom644.3
  %115 = load i8, i8* %arrayidx645.3, align 1, !tbaa !10
  %incdec.ptr646.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 17
  store i8 %115, i8* %incdec.ptr646.2, align 1, !tbaa !10
  %arrayidx653 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 25
  %116 = load i8, i8* %arrayidx653, align 1, !tbaa !10
  %conv654 = zext i8 %116 to i32
  %shl655 = shl nuw nsw i32 %conv654, 16
  %arrayidx656 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 46
  %117 = load i8, i8* %arrayidx656, align 2, !tbaa !10
  %conv657 = zext i8 %117 to i32
  %shl658 = shl nuw nsw i32 %conv657, 8
  %or659 = or i32 %shl658, %shl655
  %arrayidx660 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 4
  %118 = load i8, i8* %arrayidx660, align 4, !tbaa !10
  %conv661 = zext i8 %118 to i32
  %or662 = or i32 %shl658, %conv661
  %and669 = and i32 %conv661, 63
  %idxprom670 = zext i32 %and669 to i64
  %arrayidx671 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom670
  %119 = load i8, i8* %arrayidx671, align 1, !tbaa !10
  %incdec.ptr672 = getelementptr inbounds i8, i8* %add.ptr267, i64 18
  store i8 %119, i8* %incdec.ptr646.3, align 1, !tbaa !10
  %shr673 = lshr i32 %or662, 6
  %and669.1 = and i32 %shr673, 63
  %idxprom670.1 = zext i32 %and669.1 to i64
  %arrayidx671.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom670.1
  %120 = load i8, i8* %arrayidx671.1, align 1, !tbaa !10
  %incdec.ptr672.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 19
  store i8 %120, i8* %incdec.ptr672, align 1, !tbaa !10
  %shr673.1 = lshr i32 %or659, 12
  %and669.2 = and i32 %shr673.1, 63
  %idxprom670.2 = zext i32 %and669.2 to i64
  %arrayidx671.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom670.2
  %121 = load i8, i8* %arrayidx671.2, align 1, !tbaa !10
  %incdec.ptr672.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 20
  store i8 %121, i8* %incdec.ptr672.1, align 1, !tbaa !10
  %shr673.2 = lshr i32 %conv654, 2
  %idxprom670.3 = zext i32 %shr673.2 to i64
  %arrayidx671.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom670.3
  %122 = load i8, i8* %arrayidx671.3, align 1, !tbaa !10
  %incdec.ptr672.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 21
  store i8 %122, i8* %incdec.ptr672.2, align 1, !tbaa !10
  %arrayidx679 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 47
  %123 = load i8, i8* %arrayidx679, align 1, !tbaa !10
  %conv680 = zext i8 %123 to i32
  %shl681 = shl nuw nsw i32 %conv680, 16
  %arrayidx682 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 5
  %124 = load i8, i8* %arrayidx682, align 1, !tbaa !10
  %conv683 = zext i8 %124 to i32
  %shl684 = shl nuw nsw i32 %conv683, 8
  %or685 = or i32 %shl684, %shl681
  %arrayidx686 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 26
  %125 = load i8, i8* %arrayidx686, align 2, !tbaa !10
  %conv687 = zext i8 %125 to i32
  %or688 = or i32 %shl684, %conv687
  %and695 = and i32 %conv687, 63
  %idxprom696 = zext i32 %and695 to i64
  %arrayidx697 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom696
  %126 = load i8, i8* %arrayidx697, align 1, !tbaa !10
  %incdec.ptr698 = getelementptr inbounds i8, i8* %add.ptr267, i64 22
  store i8 %126, i8* %incdec.ptr672.3, align 1, !tbaa !10
  %shr699 = lshr i32 %or688, 6
  %and695.1 = and i32 %shr699, 63
  %idxprom696.1 = zext i32 %and695.1 to i64
  %arrayidx697.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom696.1
  %127 = load i8, i8* %arrayidx697.1, align 1, !tbaa !10
  %incdec.ptr698.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 23
  store i8 %127, i8* %incdec.ptr698, align 1, !tbaa !10
  %shr699.1 = lshr i32 %or685, 12
  %and695.2 = and i32 %shr699.1, 63
  %idxprom696.2 = zext i32 %and695.2 to i64
  %arrayidx697.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom696.2
  %128 = load i8, i8* %arrayidx697.2, align 1, !tbaa !10
  %incdec.ptr698.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 24
  store i8 %128, i8* %incdec.ptr698.1, align 1, !tbaa !10
  %shr699.2 = lshr i32 %conv680, 2
  %idxprom696.3 = zext i32 %shr699.2 to i64
  %arrayidx697.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom696.3
  %129 = load i8, i8* %arrayidx697.3, align 1, !tbaa !10
  %incdec.ptr698.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 25
  store i8 %129, i8* %incdec.ptr698.2, align 1, !tbaa !10
  %arrayidx705 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 6
  %130 = load i8, i8* %arrayidx705, align 2, !tbaa !10
  %conv706 = zext i8 %130 to i32
  %shl707 = shl nuw nsw i32 %conv706, 16
  %arrayidx708 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 27
  %131 = load i8, i8* %arrayidx708, align 1, !tbaa !10
  %conv709 = zext i8 %131 to i32
  %shl710 = shl nuw nsw i32 %conv709, 8
  %or711 = or i32 %shl710, %shl707
  %arrayidx712 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 48
  %132 = load i8, i8* %arrayidx712, align 16, !tbaa !10
  %conv713 = zext i8 %132 to i32
  %or714 = or i32 %shl710, %conv713
  %and721 = and i32 %conv713, 63
  %idxprom722 = zext i32 %and721 to i64
  %arrayidx723 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom722
  %133 = load i8, i8* %arrayidx723, align 1, !tbaa !10
  %incdec.ptr724 = getelementptr inbounds i8, i8* %add.ptr267, i64 26
  store i8 %133, i8* %incdec.ptr698.3, align 1, !tbaa !10
  %shr725 = lshr i32 %or714, 6
  %and721.1 = and i32 %shr725, 63
  %idxprom722.1 = zext i32 %and721.1 to i64
  %arrayidx723.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom722.1
  %134 = load i8, i8* %arrayidx723.1, align 1, !tbaa !10
  %incdec.ptr724.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 27
  store i8 %134, i8* %incdec.ptr724, align 1, !tbaa !10
  %shr725.1 = lshr i32 %or711, 12
  %and721.2 = and i32 %shr725.1, 63
  %idxprom722.2 = zext i32 %and721.2 to i64
  %arrayidx723.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom722.2
  %135 = load i8, i8* %arrayidx723.2, align 1, !tbaa !10
  %incdec.ptr724.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 28
  store i8 %135, i8* %incdec.ptr724.1, align 1, !tbaa !10
  %shr725.2 = lshr i32 %conv706, 2
  %idxprom722.3 = zext i32 %shr725.2 to i64
  %arrayidx723.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom722.3
  %136 = load i8, i8* %arrayidx723.3, align 1, !tbaa !10
  %incdec.ptr724.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 29
  store i8 %136, i8* %incdec.ptr724.2, align 1, !tbaa !10
  %arrayidx731 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 28
  %137 = load i8, i8* %arrayidx731, align 4, !tbaa !10
  %conv732 = zext i8 %137 to i32
  %shl733 = shl nuw nsw i32 %conv732, 16
  %arrayidx734 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 49
  %138 = load i8, i8* %arrayidx734, align 1, !tbaa !10
  %conv735 = zext i8 %138 to i32
  %shl736 = shl nuw nsw i32 %conv735, 8
  %or737 = or i32 %shl736, %shl733
  %arrayidx738 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 7
  %139 = load i8, i8* %arrayidx738, align 1, !tbaa !10
  %conv739 = zext i8 %139 to i32
  %or740 = or i32 %shl736, %conv739
  %and747 = and i32 %conv739, 63
  %idxprom748 = zext i32 %and747 to i64
  %arrayidx749 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom748
  %140 = load i8, i8* %arrayidx749, align 1, !tbaa !10
  %incdec.ptr750 = getelementptr inbounds i8, i8* %add.ptr267, i64 30
  store i8 %140, i8* %incdec.ptr724.3, align 1, !tbaa !10
  %shr751 = lshr i32 %or740, 6
  %and747.1 = and i32 %shr751, 63
  %idxprom748.1 = zext i32 %and747.1 to i64
  %arrayidx749.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom748.1
  %141 = load i8, i8* %arrayidx749.1, align 1, !tbaa !10
  %incdec.ptr750.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 31
  store i8 %141, i8* %incdec.ptr750, align 1, !tbaa !10
  %shr751.1 = lshr i32 %or737, 12
  %and747.2 = and i32 %shr751.1, 63
  %idxprom748.2 = zext i32 %and747.2 to i64
  %arrayidx749.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom748.2
  %142 = load i8, i8* %arrayidx749.2, align 1, !tbaa !10
  %incdec.ptr750.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 32
  store i8 %142, i8* %incdec.ptr750.1, align 1, !tbaa !10
  %shr751.2 = lshr i32 %conv732, 2
  %idxprom748.3 = zext i32 %shr751.2 to i64
  %arrayidx749.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom748.3
  %143 = load i8, i8* %arrayidx749.3, align 1, !tbaa !10
  %incdec.ptr750.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 33
  store i8 %143, i8* %incdec.ptr750.2, align 1, !tbaa !10
  %arrayidx757 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 50
  %144 = load i8, i8* %arrayidx757, align 2, !tbaa !10
  %conv758 = zext i8 %144 to i32
  %shl759 = shl nuw nsw i32 %conv758, 16
  %arrayidx760 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 8
  %145 = load i8, i8* %arrayidx760, align 8, !tbaa !10
  %conv761 = zext i8 %145 to i32
  %shl762 = shl nuw nsw i32 %conv761, 8
  %or763 = or i32 %shl762, %shl759
  %arrayidx764 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 29
  %146 = load i8, i8* %arrayidx764, align 1, !tbaa !10
  %conv765 = zext i8 %146 to i32
  %or766 = or i32 %shl762, %conv765
  %and773 = and i32 %conv765, 63
  %idxprom774 = zext i32 %and773 to i64
  %arrayidx775 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom774
  %147 = load i8, i8* %arrayidx775, align 1, !tbaa !10
  %incdec.ptr776 = getelementptr inbounds i8, i8* %add.ptr267, i64 34
  store i8 %147, i8* %incdec.ptr750.3, align 1, !tbaa !10
  %shr777 = lshr i32 %or766, 6
  %and773.1 = and i32 %shr777, 63
  %idxprom774.1 = zext i32 %and773.1 to i64
  %arrayidx775.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom774.1
  %148 = load i8, i8* %arrayidx775.1, align 1, !tbaa !10
  %incdec.ptr776.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 35
  store i8 %148, i8* %incdec.ptr776, align 1, !tbaa !10
  %shr777.1 = lshr i32 %or763, 12
  %and773.2 = and i32 %shr777.1, 63
  %idxprom774.2 = zext i32 %and773.2 to i64
  %arrayidx775.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom774.2
  %149 = load i8, i8* %arrayidx775.2, align 1, !tbaa !10
  %incdec.ptr776.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 36
  store i8 %149, i8* %incdec.ptr776.1, align 1, !tbaa !10
  %shr777.2 = lshr i32 %conv758, 2
  %idxprom774.3 = zext i32 %shr777.2 to i64
  %arrayidx775.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom774.3
  %150 = load i8, i8* %arrayidx775.3, align 1, !tbaa !10
  %incdec.ptr776.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 37
  store i8 %150, i8* %incdec.ptr776.2, align 1, !tbaa !10
  %arrayidx783 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 9
  %151 = load i8, i8* %arrayidx783, align 1, !tbaa !10
  %conv784 = zext i8 %151 to i32
  %shl785 = shl nuw nsw i32 %conv784, 16
  %arrayidx786 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 30
  %152 = load i8, i8* %arrayidx786, align 2, !tbaa !10
  %conv787 = zext i8 %152 to i32
  %shl788 = shl nuw nsw i32 %conv787, 8
  %or789 = or i32 %shl788, %shl785
  %arrayidx790 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 51
  %153 = load i8, i8* %arrayidx790, align 1, !tbaa !10
  %conv791 = zext i8 %153 to i32
  %or792 = or i32 %shl788, %conv791
  %and799 = and i32 %conv791, 63
  %idxprom800 = zext i32 %and799 to i64
  %arrayidx801 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom800
  %154 = load i8, i8* %arrayidx801, align 1, !tbaa !10
  %incdec.ptr802 = getelementptr inbounds i8, i8* %add.ptr267, i64 38
  store i8 %154, i8* %incdec.ptr776.3, align 1, !tbaa !10
  %shr803 = lshr i32 %or792, 6
  %and799.1 = and i32 %shr803, 63
  %idxprom800.1 = zext i32 %and799.1 to i64
  %arrayidx801.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom800.1
  %155 = load i8, i8* %arrayidx801.1, align 1, !tbaa !10
  %incdec.ptr802.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 39
  store i8 %155, i8* %incdec.ptr802, align 1, !tbaa !10
  %shr803.1 = lshr i32 %or789, 12
  %and799.2 = and i32 %shr803.1, 63
  %idxprom800.2 = zext i32 %and799.2 to i64
  %arrayidx801.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom800.2
  %156 = load i8, i8* %arrayidx801.2, align 1, !tbaa !10
  %incdec.ptr802.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 40
  store i8 %156, i8* %incdec.ptr802.1, align 1, !tbaa !10
  %shr803.2 = lshr i32 %conv784, 2
  %idxprom800.3 = zext i32 %shr803.2 to i64
  %arrayidx801.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom800.3
  %157 = load i8, i8* %arrayidx801.3, align 1, !tbaa !10
  %incdec.ptr802.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 41
  store i8 %157, i8* %incdec.ptr802.2, align 1, !tbaa !10
  %arrayidx809 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 31
  %158 = load i8, i8* %arrayidx809, align 1, !tbaa !10
  %conv810 = zext i8 %158 to i32
  %shl811 = shl nuw nsw i32 %conv810, 16
  %arrayidx812 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 52
  %159 = load i8, i8* %arrayidx812, align 4, !tbaa !10
  %conv813 = zext i8 %159 to i32
  %shl814 = shl nuw nsw i32 %conv813, 8
  %or815 = or i32 %shl814, %shl811
  %arrayidx816 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 10
  %160 = load i8, i8* %arrayidx816, align 2, !tbaa !10
  %conv817 = zext i8 %160 to i32
  %or818 = or i32 %shl814, %conv817
  %and825 = and i32 %conv817, 63
  %idxprom826 = zext i32 %and825 to i64
  %arrayidx827 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom826
  %161 = load i8, i8* %arrayidx827, align 1, !tbaa !10
  %incdec.ptr828 = getelementptr inbounds i8, i8* %add.ptr267, i64 42
  store i8 %161, i8* %incdec.ptr802.3, align 1, !tbaa !10
  %shr829 = lshr i32 %or818, 6
  %and825.1 = and i32 %shr829, 63
  %idxprom826.1 = zext i32 %and825.1 to i64
  %arrayidx827.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom826.1
  %162 = load i8, i8* %arrayidx827.1, align 1, !tbaa !10
  %incdec.ptr828.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 43
  store i8 %162, i8* %incdec.ptr828, align 1, !tbaa !10
  %shr829.1 = lshr i32 %or815, 12
  %and825.2 = and i32 %shr829.1, 63
  %idxprom826.2 = zext i32 %and825.2 to i64
  %arrayidx827.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom826.2
  %163 = load i8, i8* %arrayidx827.2, align 1, !tbaa !10
  %incdec.ptr828.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 44
  store i8 %163, i8* %incdec.ptr828.1, align 1, !tbaa !10
  %shr829.2 = lshr i32 %conv810, 2
  %idxprom826.3 = zext i32 %shr829.2 to i64
  %arrayidx827.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom826.3
  %164 = load i8, i8* %arrayidx827.3, align 1, !tbaa !10
  %incdec.ptr828.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 45
  store i8 %164, i8* %incdec.ptr828.2, align 1, !tbaa !10
  %arrayidx835 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 53
  %165 = load i8, i8* %arrayidx835, align 1, !tbaa !10
  %conv836 = zext i8 %165 to i32
  %shl837 = shl nuw nsw i32 %conv836, 16
  %arrayidx838 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 11
  %166 = load i8, i8* %arrayidx838, align 1, !tbaa !10
  %conv839 = zext i8 %166 to i32
  %shl840 = shl nuw nsw i32 %conv839, 8
  %or841 = or i32 %shl840, %shl837
  %arrayidx842 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 32
  %167 = load i8, i8* %arrayidx842, align 16, !tbaa !10
  %conv843 = zext i8 %167 to i32
  %or844 = or i32 %shl840, %conv843
  %and851 = and i32 %conv843, 63
  %idxprom852 = zext i32 %and851 to i64
  %arrayidx853 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom852
  %168 = load i8, i8* %arrayidx853, align 1, !tbaa !10
  %incdec.ptr854 = getelementptr inbounds i8, i8* %add.ptr267, i64 46
  store i8 %168, i8* %incdec.ptr828.3, align 1, !tbaa !10
  %shr855 = lshr i32 %or844, 6
  %and851.1 = and i32 %shr855, 63
  %idxprom852.1 = zext i32 %and851.1 to i64
  %arrayidx853.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom852.1
  %169 = load i8, i8* %arrayidx853.1, align 1, !tbaa !10
  %incdec.ptr854.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 47
  store i8 %169, i8* %incdec.ptr854, align 1, !tbaa !10
  %shr855.1 = lshr i32 %or841, 12
  %and851.2 = and i32 %shr855.1, 63
  %idxprom852.2 = zext i32 %and851.2 to i64
  %arrayidx853.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom852.2
  %170 = load i8, i8* %arrayidx853.2, align 1, !tbaa !10
  %incdec.ptr854.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 48
  store i8 %170, i8* %incdec.ptr854.1, align 1, !tbaa !10
  %shr855.2 = lshr i32 %conv836, 2
  %idxprom852.3 = zext i32 %shr855.2 to i64
  %arrayidx853.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom852.3
  %171 = load i8, i8* %arrayidx853.3, align 1, !tbaa !10
  %incdec.ptr854.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 49
  store i8 %171, i8* %incdec.ptr854.2, align 1, !tbaa !10
  %arrayidx861 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 12
  %172 = load i8, i8* %arrayidx861, align 4, !tbaa !10
  %conv862 = zext i8 %172 to i32
  %shl863 = shl nuw nsw i32 %conv862, 16
  %arrayidx864 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 33
  %173 = load i8, i8* %arrayidx864, align 1, !tbaa !10
  %conv865 = zext i8 %173 to i32
  %shl866 = shl nuw nsw i32 %conv865, 8
  %or867 = or i32 %shl866, %shl863
  %arrayidx868 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 54
  %174 = load i8, i8* %arrayidx868, align 2, !tbaa !10
  %conv869 = zext i8 %174 to i32
  %or870 = or i32 %shl866, %conv869
  %and877 = and i32 %conv869, 63
  %idxprom878 = zext i32 %and877 to i64
  %arrayidx879 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom878
  %175 = load i8, i8* %arrayidx879, align 1, !tbaa !10
  %incdec.ptr880 = getelementptr inbounds i8, i8* %add.ptr267, i64 50
  store i8 %175, i8* %incdec.ptr854.3, align 1, !tbaa !10
  %shr881 = lshr i32 %or870, 6
  %and877.1 = and i32 %shr881, 63
  %idxprom878.1 = zext i32 %and877.1 to i64
  %arrayidx879.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom878.1
  %176 = load i8, i8* %arrayidx879.1, align 1, !tbaa !10
  %incdec.ptr880.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 51
  store i8 %176, i8* %incdec.ptr880, align 1, !tbaa !10
  %shr881.1 = lshr i32 %or867, 12
  %and877.2 = and i32 %shr881.1, 63
  %idxprom878.2 = zext i32 %and877.2 to i64
  %arrayidx879.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom878.2
  %177 = load i8, i8* %arrayidx879.2, align 1, !tbaa !10
  %incdec.ptr880.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 52
  store i8 %177, i8* %incdec.ptr880.1, align 1, !tbaa !10
  %shr881.2 = lshr i32 %conv862, 2
  %idxprom878.3 = zext i32 %shr881.2 to i64
  %arrayidx879.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom878.3
  %178 = load i8, i8* %arrayidx879.3, align 1, !tbaa !10
  %incdec.ptr880.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 53
  store i8 %178, i8* %incdec.ptr880.2, align 1, !tbaa !10
  %arrayidx887 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 34
  %179 = load i8, i8* %arrayidx887, align 2, !tbaa !10
  %conv888 = zext i8 %179 to i32
  %shl889 = shl nuw nsw i32 %conv888, 16
  %arrayidx890 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 55
  %180 = load i8, i8* %arrayidx890, align 1, !tbaa !10
  %conv891 = zext i8 %180 to i32
  %shl892 = shl nuw nsw i32 %conv891, 8
  %or893 = or i32 %shl892, %shl889
  %arrayidx894 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 13
  %181 = load i8, i8* %arrayidx894, align 1, !tbaa !10
  %conv895 = zext i8 %181 to i32
  %or896 = or i32 %shl892, %conv895
  %and903 = and i32 %conv895, 63
  %idxprom904 = zext i32 %and903 to i64
  %arrayidx905 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom904
  %182 = load i8, i8* %arrayidx905, align 1, !tbaa !10
  %incdec.ptr906 = getelementptr inbounds i8, i8* %add.ptr267, i64 54
  store i8 %182, i8* %incdec.ptr880.3, align 1, !tbaa !10
  %shr907 = lshr i32 %or896, 6
  %and903.1 = and i32 %shr907, 63
  %idxprom904.1 = zext i32 %and903.1 to i64
  %arrayidx905.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom904.1
  %183 = load i8, i8* %arrayidx905.1, align 1, !tbaa !10
  %incdec.ptr906.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 55
  store i8 %183, i8* %incdec.ptr906, align 1, !tbaa !10
  %shr907.1 = lshr i32 %or893, 12
  %and903.2 = and i32 %shr907.1, 63
  %idxprom904.2 = zext i32 %and903.2 to i64
  %arrayidx905.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom904.2
  %184 = load i8, i8* %arrayidx905.2, align 1, !tbaa !10
  %incdec.ptr906.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 56
  store i8 %184, i8* %incdec.ptr906.1, align 1, !tbaa !10
  %shr907.2 = lshr i32 %conv888, 2
  %idxprom904.3 = zext i32 %shr907.2 to i64
  %arrayidx905.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom904.3
  %185 = load i8, i8* %arrayidx905.3, align 1, !tbaa !10
  %incdec.ptr906.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 57
  store i8 %185, i8* %incdec.ptr906.2, align 1, !tbaa !10
  %arrayidx913 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 56
  %186 = load i8, i8* %arrayidx913, align 8, !tbaa !10
  %conv914 = zext i8 %186 to i32
  %shl915 = shl nuw nsw i32 %conv914, 16
  %arrayidx916 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 14
  %187 = load i8, i8* %arrayidx916, align 2, !tbaa !10
  %conv917 = zext i8 %187 to i32
  %shl918 = shl nuw nsw i32 %conv917, 8
  %or919 = or i32 %shl918, %shl915
  %arrayidx920 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 35
  %188 = load i8, i8* %arrayidx920, align 1, !tbaa !10
  %conv921 = zext i8 %188 to i32
  %or922 = or i32 %shl918, %conv921
  %and929 = and i32 %conv921, 63
  %idxprom930 = zext i32 %and929 to i64
  %arrayidx931 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom930
  %189 = load i8, i8* %arrayidx931, align 1, !tbaa !10
  %incdec.ptr932 = getelementptr inbounds i8, i8* %add.ptr267, i64 58
  store i8 %189, i8* %incdec.ptr906.3, align 1, !tbaa !10
  %shr933 = lshr i32 %or922, 6
  %and929.1 = and i32 %shr933, 63
  %idxprom930.1 = zext i32 %and929.1 to i64
  %arrayidx931.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom930.1
  %190 = load i8, i8* %arrayidx931.1, align 1, !tbaa !10
  %incdec.ptr932.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 59
  store i8 %190, i8* %incdec.ptr932, align 1, !tbaa !10
  %shr933.1 = lshr i32 %or919, 12
  %and929.2 = and i32 %shr933.1, 63
  %idxprom930.2 = zext i32 %and929.2 to i64
  %arrayidx931.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom930.2
  %191 = load i8, i8* %arrayidx931.2, align 1, !tbaa !10
  %incdec.ptr932.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 60
  store i8 %191, i8* %incdec.ptr932.1, align 1, !tbaa !10
  %shr933.2 = lshr i32 %conv914, 2
  %idxprom930.3 = zext i32 %shr933.2 to i64
  %arrayidx931.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom930.3
  %192 = load i8, i8* %arrayidx931.3, align 1, !tbaa !10
  %incdec.ptr932.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 61
  store i8 %192, i8* %incdec.ptr932.2, align 1, !tbaa !10
  %arrayidx939 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 15
  %193 = load i8, i8* %arrayidx939, align 1, !tbaa !10
  %conv940 = zext i8 %193 to i32
  %shl941 = shl nuw nsw i32 %conv940, 16
  %arrayidx942 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 36
  %194 = load i8, i8* %arrayidx942, align 4, !tbaa !10
  %conv943 = zext i8 %194 to i32
  %shl944 = shl nuw nsw i32 %conv943, 8
  %or945 = or i32 %shl944, %shl941
  %arrayidx946 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 57
  %195 = load i8, i8* %arrayidx946, align 1, !tbaa !10
  %conv947 = zext i8 %195 to i32
  %or948 = or i32 %shl944, %conv947
  %and955 = and i32 %conv947, 63
  %idxprom956 = zext i32 %and955 to i64
  %arrayidx957 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom956
  %196 = load i8, i8* %arrayidx957, align 1, !tbaa !10
  %incdec.ptr958 = getelementptr inbounds i8, i8* %add.ptr267, i64 62
  store i8 %196, i8* %incdec.ptr932.3, align 1, !tbaa !10
  %shr959 = lshr i32 %or948, 6
  %and955.1 = and i32 %shr959, 63
  %idxprom956.1 = zext i32 %and955.1 to i64
  %arrayidx957.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom956.1
  %197 = load i8, i8* %arrayidx957.1, align 1, !tbaa !10
  %incdec.ptr958.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 63
  store i8 %197, i8* %incdec.ptr958, align 1, !tbaa !10
  %shr959.1 = lshr i32 %or945, 12
  %and955.2 = and i32 %shr959.1, 63
  %idxprom956.2 = zext i32 %and955.2 to i64
  %arrayidx957.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom956.2
  %198 = load i8, i8* %arrayidx957.2, align 1, !tbaa !10
  %incdec.ptr958.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 64
  store i8 %198, i8* %incdec.ptr958.1, align 1, !tbaa !10
  %shr959.2 = lshr i32 %conv940, 2
  %idxprom956.3 = zext i32 %shr959.2 to i64
  %arrayidx957.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom956.3
  %199 = load i8, i8* %arrayidx957.3, align 1, !tbaa !10
  %incdec.ptr958.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 65
  store i8 %199, i8* %incdec.ptr958.2, align 1, !tbaa !10
  %arrayidx965 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 37
  %200 = load i8, i8* %arrayidx965, align 1, !tbaa !10
  %conv966 = zext i8 %200 to i32
  %shl967 = shl nuw nsw i32 %conv966, 16
  %arrayidx968 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 58
  %201 = load i8, i8* %arrayidx968, align 2, !tbaa !10
  %conv969 = zext i8 %201 to i32
  %shl970 = shl nuw nsw i32 %conv969, 8
  %or971 = or i32 %shl970, %shl967
  %arrayidx972 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 16
  %202 = load i8, i8* %arrayidx972, align 16, !tbaa !10
  %conv973 = zext i8 %202 to i32
  %or974 = or i32 %shl970, %conv973
  %and981 = and i32 %conv973, 63
  %idxprom982 = zext i32 %and981 to i64
  %arrayidx983 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom982
  %203 = load i8, i8* %arrayidx983, align 1, !tbaa !10
  %incdec.ptr984 = getelementptr inbounds i8, i8* %add.ptr267, i64 66
  store i8 %203, i8* %incdec.ptr958.3, align 1, !tbaa !10
  %shr985 = lshr i32 %or974, 6
  %and981.1 = and i32 %shr985, 63
  %idxprom982.1 = zext i32 %and981.1 to i64
  %arrayidx983.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom982.1
  %204 = load i8, i8* %arrayidx983.1, align 1, !tbaa !10
  %incdec.ptr984.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 67
  store i8 %204, i8* %incdec.ptr984, align 1, !tbaa !10
  %shr985.1 = lshr i32 %or971, 12
  %and981.2 = and i32 %shr985.1, 63
  %idxprom982.2 = zext i32 %and981.2 to i64
  %arrayidx983.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom982.2
  %205 = load i8, i8* %arrayidx983.2, align 1, !tbaa !10
  %incdec.ptr984.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 68
  store i8 %205, i8* %incdec.ptr984.1, align 1, !tbaa !10
  %shr985.2 = lshr i32 %conv966, 2
  %idxprom982.3 = zext i32 %shr985.2 to i64
  %arrayidx983.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom982.3
  %206 = load i8, i8* %arrayidx983.3, align 1, !tbaa !10
  %incdec.ptr984.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 69
  store i8 %206, i8* %incdec.ptr984.2, align 1, !tbaa !10
  %arrayidx991 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 59
  %207 = load i8, i8* %arrayidx991, align 1, !tbaa !10
  %conv992 = zext i8 %207 to i32
  %shl993 = shl nuw nsw i32 %conv992, 16
  %arrayidx994 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 17
  %208 = load i8, i8* %arrayidx994, align 1, !tbaa !10
  %conv995 = zext i8 %208 to i32
  %shl996 = shl nuw nsw i32 %conv995, 8
  %or997 = or i32 %shl996, %shl993
  %arrayidx998 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 38
  %209 = load i8, i8* %arrayidx998, align 2, !tbaa !10
  %conv999 = zext i8 %209 to i32
  %or1000 = or i32 %shl996, %conv999
  %and1007 = and i32 %conv999, 63
  %idxprom1008 = zext i32 %and1007 to i64
  %arrayidx1009 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1008
  %210 = load i8, i8* %arrayidx1009, align 1, !tbaa !10
  %incdec.ptr1010 = getelementptr inbounds i8, i8* %add.ptr267, i64 70
  store i8 %210, i8* %incdec.ptr984.3, align 1, !tbaa !10
  %shr1011 = lshr i32 %or1000, 6
  %and1007.1 = and i32 %shr1011, 63
  %idxprom1008.1 = zext i32 %and1007.1 to i64
  %arrayidx1009.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1008.1
  %211 = load i8, i8* %arrayidx1009.1, align 1, !tbaa !10
  %incdec.ptr1010.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 71
  store i8 %211, i8* %incdec.ptr1010, align 1, !tbaa !10
  %shr1011.1 = lshr i32 %or997, 12
  %and1007.2 = and i32 %shr1011.1, 63
  %idxprom1008.2 = zext i32 %and1007.2 to i64
  %arrayidx1009.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1008.2
  %212 = load i8, i8* %arrayidx1009.2, align 1, !tbaa !10
  %incdec.ptr1010.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 72
  store i8 %212, i8* %incdec.ptr1010.1, align 1, !tbaa !10
  %shr1011.2 = lshr i32 %conv992, 2
  %idxprom1008.3 = zext i32 %shr1011.2 to i64
  %arrayidx1009.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1008.3
  %213 = load i8, i8* %arrayidx1009.3, align 1, !tbaa !10
  %incdec.ptr1010.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 73
  store i8 %213, i8* %incdec.ptr1010.2, align 1, !tbaa !10
  %arrayidx1017 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 18
  %214 = load i8, i8* %arrayidx1017, align 2, !tbaa !10
  %conv1018 = zext i8 %214 to i32
  %shl1019 = shl nuw nsw i32 %conv1018, 16
  %arrayidx1020 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 39
  %215 = load i8, i8* %arrayidx1020, align 1, !tbaa !10
  %conv1021 = zext i8 %215 to i32
  %shl1022 = shl nuw nsw i32 %conv1021, 8
  %or1023 = or i32 %shl1022, %shl1019
  %arrayidx1024 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 60
  %216 = load i8, i8* %arrayidx1024, align 4, !tbaa !10
  %conv1025 = zext i8 %216 to i32
  %or1026 = or i32 %shl1022, %conv1025
  %and1033 = and i32 %conv1025, 63
  %idxprom1034 = zext i32 %and1033 to i64
  %arrayidx1035 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1034
  %217 = load i8, i8* %arrayidx1035, align 1, !tbaa !10
  %incdec.ptr1036 = getelementptr inbounds i8, i8* %add.ptr267, i64 74
  store i8 %217, i8* %incdec.ptr1010.3, align 1, !tbaa !10
  %shr1037 = lshr i32 %or1026, 6
  %and1033.1 = and i32 %shr1037, 63
  %idxprom1034.1 = zext i32 %and1033.1 to i64
  %arrayidx1035.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1034.1
  %218 = load i8, i8* %arrayidx1035.1, align 1, !tbaa !10
  %incdec.ptr1036.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 75
  store i8 %218, i8* %incdec.ptr1036, align 1, !tbaa !10
  %shr1037.1 = lshr i32 %or1023, 12
  %and1033.2 = and i32 %shr1037.1, 63
  %idxprom1034.2 = zext i32 %and1033.2 to i64
  %arrayidx1035.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1034.2
  %219 = load i8, i8* %arrayidx1035.2, align 1, !tbaa !10
  %incdec.ptr1036.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 76
  store i8 %219, i8* %incdec.ptr1036.1, align 1, !tbaa !10
  %shr1037.2 = lshr i32 %conv1018, 2
  %idxprom1034.3 = zext i32 %shr1037.2 to i64
  %arrayidx1035.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1034.3
  %220 = load i8, i8* %arrayidx1035.3, align 1, !tbaa !10
  %incdec.ptr1036.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 77
  store i8 %220, i8* %incdec.ptr1036.2, align 1, !tbaa !10
  %arrayidx1043 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 40
  %221 = load i8, i8* %arrayidx1043, align 8, !tbaa !10
  %conv1044 = zext i8 %221 to i32
  %shl1045 = shl nuw nsw i32 %conv1044, 16
  %arrayidx1046 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 61
  %222 = load i8, i8* %arrayidx1046, align 1, !tbaa !10
  %conv1047 = zext i8 %222 to i32
  %shl1048 = shl nuw nsw i32 %conv1047, 8
  %or1049 = or i32 %shl1048, %shl1045
  %arrayidx1050 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 19
  %223 = load i8, i8* %arrayidx1050, align 1, !tbaa !10
  %conv1051 = zext i8 %223 to i32
  %or1052 = or i32 %shl1048, %conv1051
  %and1059 = and i32 %conv1051, 63
  %idxprom1060 = zext i32 %and1059 to i64
  %arrayidx1061 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1060
  %224 = load i8, i8* %arrayidx1061, align 1, !tbaa !10
  %incdec.ptr1062 = getelementptr inbounds i8, i8* %add.ptr267, i64 78
  store i8 %224, i8* %incdec.ptr1036.3, align 1, !tbaa !10
  %shr1063 = lshr i32 %or1052, 6
  %and1059.1 = and i32 %shr1063, 63
  %idxprom1060.1 = zext i32 %and1059.1 to i64
  %arrayidx1061.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1060.1
  %225 = load i8, i8* %arrayidx1061.1, align 1, !tbaa !10
  %incdec.ptr1062.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 79
  store i8 %225, i8* %incdec.ptr1062, align 1, !tbaa !10
  %shr1063.1 = lshr i32 %or1049, 12
  %and1059.2 = and i32 %shr1063.1, 63
  %idxprom1060.2 = zext i32 %and1059.2 to i64
  %arrayidx1061.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1060.2
  %226 = load i8, i8* %arrayidx1061.2, align 1, !tbaa !10
  %incdec.ptr1062.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 80
  store i8 %226, i8* %incdec.ptr1062.1, align 1, !tbaa !10
  %shr1063.2 = lshr i32 %conv1044, 2
  %idxprom1060.3 = zext i32 %shr1063.2 to i64
  %arrayidx1061.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1060.3
  %227 = load i8, i8* %arrayidx1061.3, align 1, !tbaa !10
  %incdec.ptr1062.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 81
  store i8 %227, i8* %incdec.ptr1062.2, align 1, !tbaa !10
  %arrayidx1069 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 62
  %228 = load i8, i8* %arrayidx1069, align 2, !tbaa !10
  %conv1070 = zext i8 %228 to i32
  %shl1071 = shl nuw nsw i32 %conv1070, 16
  %arrayidx1072 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 20
  %229 = load i8, i8* %arrayidx1072, align 4, !tbaa !10
  %conv1073 = zext i8 %229 to i32
  %shl1074 = shl nuw nsw i32 %conv1073, 8
  %or1075 = or i32 %shl1074, %shl1071
  %arrayidx1076 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 41
  %230 = load i8, i8* %arrayidx1076, align 1, !tbaa !10
  %conv1077 = zext i8 %230 to i32
  %or1078 = or i32 %shl1074, %conv1077
  %and1085 = and i32 %conv1077, 63
  %idxprom1086 = zext i32 %and1085 to i64
  %arrayidx1087 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1086
  %231 = load i8, i8* %arrayidx1087, align 1, !tbaa !10
  %incdec.ptr1088 = getelementptr inbounds i8, i8* %add.ptr267, i64 82
  store i8 %231, i8* %incdec.ptr1062.3, align 1, !tbaa !10
  %shr1089 = lshr i32 %or1078, 6
  %and1085.1 = and i32 %shr1089, 63
  %idxprom1086.1 = zext i32 %and1085.1 to i64
  %arrayidx1087.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1086.1
  %232 = load i8, i8* %arrayidx1087.1, align 1, !tbaa !10
  %incdec.ptr1088.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 83
  store i8 %232, i8* %incdec.ptr1088, align 1, !tbaa !10
  %shr1089.1 = lshr i32 %or1075, 12
  %and1085.2 = and i32 %shr1089.1, 63
  %idxprom1086.2 = zext i32 %and1085.2 to i64
  %arrayidx1087.2 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1086.2
  %233 = load i8, i8* %arrayidx1087.2, align 1, !tbaa !10
  %incdec.ptr1088.2 = getelementptr inbounds i8, i8* %add.ptr267, i64 84
  store i8 %233, i8* %incdec.ptr1088.1, align 1, !tbaa !10
  %shr1089.2 = lshr i32 %conv1070, 2
  %idxprom1086.3 = zext i32 %shr1089.2 to i64
  %arrayidx1087.3 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1086.3
  %234 = load i8, i8* %arrayidx1087.3, align 1, !tbaa !10
  %incdec.ptr1088.3 = getelementptr inbounds i8, i8* %add.ptr267, i64 85
  store i8 %234, i8* %incdec.ptr1088.2, align 1, !tbaa !10
  %arrayidx1095 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i64 0, i64 63
  %235 = load i8, i8* %arrayidx1095, align 1, !tbaa !10
  %conv1096 = zext i8 %235 to i32
  %and1104 = and i32 %conv1096, 63
  %idxprom1105 = zext i32 %and1104 to i64
  %arrayidx1106 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1105
  %236 = load i8, i8* %arrayidx1106, align 1, !tbaa !10
  %incdec.ptr1107 = getelementptr inbounds i8, i8* %add.ptr267, i64 86
  store i8 %236, i8* %incdec.ptr1088.3, align 1, !tbaa !10
  %shr1108 = lshr i32 %conv1096, 6
  br label %sw.epilog1113

sw.epilog1113:                                    ; preds = %do.body547, %do.body
  %shr1108.sink = phi i32 [ %shr1108, %do.body547 ], [ %shr542.1, %do.body ]
  %.sink1534 = phi i64 [ 87, %do.body547 ], [ 44, %do.body ]
  %incdec.ptr1107.sink = phi i8* [ %incdec.ptr1107, %do.body547 ], [ %incdec.ptr541.1, %do.body ]
  %idxprom1105.1 = zext i32 %shr1108.sink to i64
  %arrayidx1106.1 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom1105.1
  %237 = load i8, i8* %arrayidx1106.1, align 1, !tbaa !10
  %incdec.ptr1107.1 = getelementptr inbounds i8, i8* %add.ptr267, i64 %.sink1534
  store i8 %237, i8* %incdec.ptr1107.sink, align 1, !tbaa !10
  store i8 0, i8* %incdec.ptr1107.1, align 1, !tbaa !10
  br label %cleanup1114

err:                                              ; preds = %for.body, %while.body, %for.body130, %for.body170, %if.end258, %if.end241, %if.then236, %if.then228, %if.end209, %for.body205, %for.end265, %if.end183, %for.end156, %if.end141, %if.end122, %for.end, %if.end70, %lor.lhs.false74, %lor.lhs.false77, %lor.lhs.false80, %lor.lhs.false84, %lor.lhs.false87, %if.end56, %lor.lhs.false, %lor.lhs.false62, %lor.lhs.false65, %if.end46
  %md2.0 = phi %struct.evp_md_ctx_st* [ null, %if.end46 ], [ null, %if.end56 ], [ null, %if.end70 ], [ %call71, %if.end141 ], [ %call71, %if.end183 ], [ null, %for.end265 ], [ %call71, %for.end156 ], [ %call71, %if.end122 ], [ %call71, %for.end ], [ %call71, %lor.lhs.false87 ], [ %call71, %lor.lhs.false84 ], [ %call71, %lor.lhs.false80 ], [ %call71, %lor.lhs.false77 ], [ %call71, %lor.lhs.false74 ], [ null, %lor.lhs.false65 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false ], [ %call71, %for.body205 ], [ %call71, %if.end209 ], [ %call71, %if.then228 ], [ %call71, %if.then236 ], [ %call71, %if.end241 ], [ %call71, %if.end258 ], [ %call71, %for.body170 ], [ %call71, %for.body130 ], [ %call71, %while.body ], [ %call71, %for.body ]
  %md.0 = phi %struct.evp_md_ctx_st* [ null, %if.end46 ], [ null, %if.end56 ], [ %call57, %if.end70 ], [ %call57, %if.end141 ], [ %call57, %if.end183 ], [ null, %for.end265 ], [ %call57, %for.end156 ], [ %call57, %if.end122 ], [ %call57, %for.end ], [ %call57, %lor.lhs.false87 ], [ %call57, %lor.lhs.false84 ], [ %call57, %lor.lhs.false80 ], [ %call57, %lor.lhs.false77 ], [ %call57, %lor.lhs.false74 ], [ %call57, %lor.lhs.false65 ], [ %call57, %lor.lhs.false62 ], [ %call57, %lor.lhs.false ], [ %call57, %for.body205 ], [ %call57, %if.end209 ], [ %call57, %if.then228 ], [ %call57, %if.then236 ], [ %call57, %if.end241 ], [ %call57, %if.end258 ], [ %call57, %for.body170 ], [ %call57, %for.body130 ], [ %call57, %while.body ], [ %call57, %for.body ]
  %p_bytes.0 = phi i8* [ null, %if.end46 ], [ null, %if.end56 ], [ null, %if.end70 ], [ null, %if.end141 ], [ %call142, %if.end183 ], [ null, %for.end265 ], [ %call142, %for.end156 ], [ null, %if.end122 ], [ null, %for.end ], [ null, %lor.lhs.false87 ], [ null, %lor.lhs.false84 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false77 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false65 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false ], [ %call142, %for.body205 ], [ %call142, %if.end209 ], [ %call142, %if.then228 ], [ %call142, %if.then236 ], [ %call142, %if.end241 ], [ %call142, %if.end258 ], [ %call142, %for.body170 ], [ null, %for.body130 ], [ null, %while.body ], [ null, %for.body ]
  %s_bytes.0 = phi i8* [ null, %if.end46 ], [ null, %if.end56 ], [ null, %if.end70 ], [ null, %if.end141 ], [ null, %if.end183 ], [ null, %for.end265 ], [ null, %for.end156 ], [ null, %if.end122 ], [ null, %for.end ], [ null, %lor.lhs.false87 ], [ null, %lor.lhs.false84 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false77 ], [ null, %lor.lhs.false74 ], [ null, %lor.lhs.false65 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false ], [ %call184, %for.body205 ], [ %call184, %if.end209 ], [ %call184, %if.then228 ], [ %call184, %if.then236 ], [ %call184, %if.end241 ], [ %call184, %if.end258 ], [ null, %for.body170 ], [ null, %for.body130 ], [ null, %while.body ], [ null, %for.body ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md2.0) #6
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md.0) #6
  call void @CRYPTO_free(i8* noundef %p_bytes.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 771) #6
  call void @CRYPTO_free(i8* noundef %s_bytes.0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 772) #6
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 noundef 773) #6
  br label %cleanup1114

cleanup1114:                                      ; preds = %cleanup, %for.end178, %for.end136, %while.end, %if.end, %entry, %err, %sw.epilog1113
  %retval.1 = phi i8* [ null, %err ], [ getelementptr inbounds ([124 x i8], [124 x i8]* @shacrypt.out_buf, i64 0, i64 0), %sw.epilog1113 ], [ null, %cleanup ], [ null, %entry ], [ null, %if.end ], [ null, %while.end ], [ null, %for.end136 ], [ null, %for.end178 ]
  call void @llvm.lifetime.end.p0i8(i64 17, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i8* %retval.1
}

declare dso_local i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_md5() local_unnamed_addr #2

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_sha512() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
