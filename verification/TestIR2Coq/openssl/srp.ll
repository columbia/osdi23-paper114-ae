; ModuleID = 'apps/srp.c'
source_filename = "apps/srp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.engine_st = type opaque
%struct.conf_st = type { %struct.conf_method_st*, i8*, %struct.lhash_st_CONF_VALUE*, i32, i32, i8*, %struct.ossl_lib_ctx_st* }
%struct.conf_method_st = type { i8*, %struct.conf_st* (%struct.conf_method_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*)*, i32 (%struct.conf_st*, %struct.bio_st*, i64*)*, i32 (%struct.conf_st*, %struct.bio_st*)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8)*, i32 (%struct.conf_st*, i8*, i64*)* }
%struct.lhash_st_CONF_VALUE = type { %union.lh_CONF_VALUE_dummy }
%union.lh_CONF_VALUE_dummy = type { i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ca_db_st = type { %struct.db_attr_st, %struct.txt_db_st*, i8*, %struct.stat }
%struct.db_attr_st = type { i32 }
%struct.txt_db_st = type { i32, %struct.stack_st_OPENSSL_PSTRING*, %struct.lhash_st_OPENSSL_STRING**, i32 (i8**)**, i64, i64, i64, i8** }
%struct.stack_st_OPENSSL_PSTRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.SRP_gN_st = type { i8*, %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.stack_st = type opaque
%struct.pw_cb_data = type { i8*, i8* }

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [user...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Talk a lot while doing things\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"A config file\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"The particular srp definition to use\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Action options:\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Add a user and SRP verifier\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Modify the SRP verifier of an existing user\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Delete user from verifier file\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"List users\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Configuration options:\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"srpvfile\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"The srp verifier file name\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"gn\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Set g and N values to be used for new verifier\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"userinfo\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Additional info to be set for user\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"Username(s) to process (optional)\00", align 1
@srp_options = dso_local constant [28 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 3, i32 60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4, i32 115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 14, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 5, i32 60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 10, i32 115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 11, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 12, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 13, i32 115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.47 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s: Only one of -add/-delete/-modify/-list\0A\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"-srpvfile and -configfile cannot be specified together.\0A\00", align 1
@.str.50 = private unnamed_addr constant [76 x i8] c"Exactly one of the options -add, -delete, -modify -list must be specified.\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Need at least one user.\0A\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"-passin, -passout arguments only valid with one user.\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@default_config_file = external dso_local local_unnamed_addr global i8*, align 8
@.str.54 = private unnamed_addr constant [35 x i8] c"trying to read default_srp in srp\0A\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"srp\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"default_srp\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"trying to read srpvfile in section \22%s\22\0A\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Trying to read SRP verifier file \22%s\22\0A\00", align 1
@.str.59 = private unnamed_addr constant [57 x i8] c"Problem with index file: %s (could not load/parse file)\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Database initialised\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Default g and N\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"No g and N value for index \22%s\22\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"Database has no g N information.\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Starting user processing\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Processing user \22%s\22\0A\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"List all users\0A\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"user \22%s\22 does not exist, ignored. t\0A\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"user \22%s\22 reactivated.\0A\00", align 1
@.str.69 = private unnamed_addr constant [65 x i8] c"Cannot create srp verifier for user \22%s\22, operation abandoned .\0A\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"apps/srp.c\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"user \22%s\22 does not exist, operation ignored.\0A\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"user \22%s\22 already updated, operation ignored.\0A\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"Verifying password for user \22%s\22\0A\00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"Invalid password for user \22%s\22, operation abandoned.\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"Password for user \22%s\22 ok.\0A\00", align 1
@.str.77 = private unnamed_addr constant [64 x i8] c"Cannot create srp verifier for user \22%s\22, operation abandoned.\0A\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"user \22%s\22 does not exist, operation ignored. t\0A\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"user \22%s\22 revoked. t\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"User procession done.\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"Trying to update srpvfile.\0A\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"Temporary srpvfile created.\0A\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"srpvfile updated.\0A\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"User errors %d.\0A\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"SRP terminating with code %d.\0A\00", align 1
@.str.88 = private unnamed_addr constant [35 x i8] c"variable lookup failed for %s::%s\0A\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"g N entry\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"%s \22%s\22\0A\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"  %d = \22%s\22\0A\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"User entry\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"Creating\0A user=\22%s\22\0A g=\22%s\22\0A N=\22%s\22\0A\00", align 1
@.str.94 = private unnamed_addr constant [38 x i8] c"Internal error creating SRP verifier\0A\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"gNid=%s salt =\22%s\22\0A verifier =\22%s\22\0A\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"row pointers\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"failed to update srpvfile\0A\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"TXT_DB error number %ld\0A\00", align 1
@.str.99 = private unnamed_addr constant [79 x i8] c"Validating\0A   user=\22%s\22\0A srp_verifier=\22%s\22\0A srp_usersalt=\22%s\22\0A g=\22%s\22\0A N=\22%s\22\0A\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Pass %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [39 x i8] c"assertion failed: srp_usersalt != NULL\00", align 1
@.str.102 = private unnamed_addr constant [40 x i8] c"Internal error validating SRP verifier\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @srp_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %passin = alloca i8*, align 8
  %passout = alloca i8*, align 8
  %row239 = alloca [6 x i8*], align 16
  %0 = bitcast i8** %passin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %passin, align 8, !tbaa !3
  %1 = bitcast i8** %passout to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %passout, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([28 x %struct.options_st], [28 x %struct.options_st]* @srp_options, i64 0, i64 0)) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %verbose.0 = phi i32 [ 0, %entry ], [ %verbose.0.be, %while.cond.backedge ]
  %mode.0 = phi i32 [ -1, %entry ], [ %mode.0.be, %while.cond.backedge ]
  %passinarg.0 = phi i8* [ null, %entry ], [ %passinarg.0.be, %while.cond.backedge ]
  %passoutarg.0 = phi i8* [ null, %entry ], [ %passoutarg.0.be, %while.cond.backedge ]
  %gN.0 = phi i8* [ null, %entry ], [ %gN.0.be, %while.cond.backedge ]
  %userinfo.0 = phi i8* [ null, %entry ], [ %userinfo.0.be, %while.cond.backedge ]
  %section.0 = phi i8* [ null, %entry ], [ %section.0.be, %while.cond.backedge ]
  %configfile.0 = phi i8* [ null, %entry ], [ %configfile.0.be, %while.cond.backedge ]
  %srpvfile.0 = phi i8* [ null, %entry ], [ %srpvfile.0.be, %while.cond.backedge ]
  %e.0 = phi %struct.engine_st* [ null, %entry ], [ %e.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #6
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb31
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb11
    i32 8, label %sw.bb11
    i32 9, label %sw.bb11
    i32 10, label %sw.bb14
    i32 11, label %sw.bb16
    i32 12, label %sw.bb18
    i32 13, label %sw.bb20
    i32 14, label %sw.bb22
    i32 1603, label %sw.bb31
    i32 1602, label %sw.bb31
    i32 1501, label %sw.bb26
    i32 1502, label %sw.bb26
  ]

opthelp:                                          ; preds = %while.cond, %if.then66, %if.then57, %if.then48, %if.then
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0), i8* noundef %call) #6
  br label %end.thread

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([28 x %struct.options_st], [28 x %struct.options_st]* @srp_options, i64 0, i64 0)) #6
  br label %end.thread

sw.bb4:                                           ; preds = %while.cond
  %inc = add nsw i32 %verbose.0, 1
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  %call6 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %call10 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond, %while.cond, %while.cond, %while.cond
  %cmp12.not = icmp eq i32 %mode.0, -1
  br i1 %cmp12.not, label %while.cond.backedge, label %if.then

while.cond.backedge:                              ; preds = %sw.bb11, %while.cond, %sw.bb31, %sw.bb26, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb4
  %verbose.0.be = phi i32 [ %verbose.0, %sw.bb26 ], [ %verbose.0, %sw.bb31 ], [ %verbose.0, %sw.bb22 ], [ %verbose.0, %sw.bb20 ], [ %verbose.0, %sw.bb18 ], [ %verbose.0, %sw.bb16 ], [ %verbose.0, %sw.bb14 ], [ %verbose.0, %sw.bb9 ], [ %verbose.0, %sw.bb7 ], [ %verbose.0, %sw.bb5 ], [ %inc, %sw.bb4 ], [ %verbose.0, %while.cond ], [ %verbose.0, %sw.bb11 ]
  %mode.0.be = phi i32 [ %mode.0, %sw.bb26 ], [ %mode.0, %sw.bb31 ], [ %mode.0, %sw.bb22 ], [ %mode.0, %sw.bb20 ], [ %mode.0, %sw.bb18 ], [ %mode.0, %sw.bb16 ], [ %mode.0, %sw.bb14 ], [ %mode.0, %sw.bb9 ], [ %mode.0, %sw.bb7 ], [ %mode.0, %sw.bb5 ], [ %mode.0, %sw.bb4 ], [ %mode.0, %while.cond ], [ %call1, %sw.bb11 ]
  %passinarg.0.be = phi i8* [ %passinarg.0, %sw.bb26 ], [ %passinarg.0, %sw.bb31 ], [ %passinarg.0, %sw.bb22 ], [ %passinarg.0, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %passinarg.0, %sw.bb16 ], [ %passinarg.0, %sw.bb14 ], [ %passinarg.0, %sw.bb9 ], [ %passinarg.0, %sw.bb7 ], [ %passinarg.0, %sw.bb5 ], [ %passinarg.0, %sw.bb4 ], [ %passinarg.0, %while.cond ], [ %passinarg.0, %sw.bb11 ]
  %passoutarg.0.be = phi i8* [ %passoutarg.0, %sw.bb26 ], [ %passoutarg.0, %sw.bb31 ], [ %passoutarg.0, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %passoutarg.0, %sw.bb18 ], [ %passoutarg.0, %sw.bb16 ], [ %passoutarg.0, %sw.bb14 ], [ %passoutarg.0, %sw.bb9 ], [ %passoutarg.0, %sw.bb7 ], [ %passoutarg.0, %sw.bb5 ], [ %passoutarg.0, %sw.bb4 ], [ %passoutarg.0, %while.cond ], [ %passoutarg.0, %sw.bb11 ]
  %gN.0.be = phi i8* [ %gN.0, %sw.bb26 ], [ %gN.0, %sw.bb31 ], [ %gN.0, %sw.bb22 ], [ %gN.0, %sw.bb20 ], [ %gN.0, %sw.bb18 ], [ %gN.0, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %gN.0, %sw.bb9 ], [ %gN.0, %sw.bb7 ], [ %gN.0, %sw.bb5 ], [ %gN.0, %sw.bb4 ], [ %gN.0, %while.cond ], [ %gN.0, %sw.bb11 ]
  %userinfo.0.be = phi i8* [ %userinfo.0, %sw.bb26 ], [ %userinfo.0, %sw.bb31 ], [ %userinfo.0, %sw.bb22 ], [ %userinfo.0, %sw.bb20 ], [ %userinfo.0, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %userinfo.0, %sw.bb14 ], [ %userinfo.0, %sw.bb9 ], [ %userinfo.0, %sw.bb7 ], [ %userinfo.0, %sw.bb5 ], [ %userinfo.0, %sw.bb4 ], [ %userinfo.0, %while.cond ], [ %userinfo.0, %sw.bb11 ]
  %section.0.be = phi i8* [ %section.0, %sw.bb26 ], [ %section.0, %sw.bb31 ], [ %section.0, %sw.bb22 ], [ %section.0, %sw.bb20 ], [ %section.0, %sw.bb18 ], [ %section.0, %sw.bb16 ], [ %section.0, %sw.bb14 ], [ %section.0, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %section.0, %sw.bb5 ], [ %section.0, %sw.bb4 ], [ %section.0, %while.cond ], [ %section.0, %sw.bb11 ]
  %configfile.0.be = phi i8* [ %configfile.0, %sw.bb26 ], [ %configfile.0, %sw.bb31 ], [ %configfile.0, %sw.bb22 ], [ %configfile.0, %sw.bb20 ], [ %configfile.0, %sw.bb18 ], [ %configfile.0, %sw.bb16 ], [ %configfile.0, %sw.bb14 ], [ %configfile.0, %sw.bb9 ], [ %configfile.0, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %configfile.0, %sw.bb4 ], [ %configfile.0, %while.cond ], [ %configfile.0, %sw.bb11 ]
  %srpvfile.0.be = phi i8* [ %srpvfile.0, %sw.bb26 ], [ %srpvfile.0, %sw.bb31 ], [ %srpvfile.0, %sw.bb22 ], [ %srpvfile.0, %sw.bb20 ], [ %srpvfile.0, %sw.bb18 ], [ %srpvfile.0, %sw.bb16 ], [ %srpvfile.0, %sw.bb14 ], [ %call10, %sw.bb9 ], [ %srpvfile.0, %sw.bb7 ], [ %srpvfile.0, %sw.bb5 ], [ %srpvfile.0, %sw.bb4 ], [ %srpvfile.0, %while.cond ], [ %srpvfile.0, %sw.bb11 ]
  %e.0.be = phi %struct.engine_st* [ %e.0, %sw.bb26 ], [ %e.0, %sw.bb31 ], [ %call24, %sw.bb22 ], [ %e.0, %sw.bb20 ], [ %e.0, %sw.bb18 ], [ %e.0, %sw.bb16 ], [ %e.0, %sw.bb14 ], [ %e.0, %sw.bb9 ], [ %e.0, %sw.bb7 ], [ %e.0, %sw.bb5 ], [ %e.0, %sw.bb4 ], [ %e.0, %while.cond ], [ %e.0, %sw.bb11 ]
  br label %while.cond, !llvm.loop !7

if.then:                                          ; preds = %sw.bb11
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call13 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i8* noundef %call) #6
  br label %opthelp

sw.bb14:                                          ; preds = %while.cond
  %call15 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %while.cond
  %call17 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %while.cond
  %call19 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.cond
  %call21 = tail call i8* @opt_arg() #6
  br label %while.cond.backedge

sw.bb22:                                          ; preds = %while.cond
  %call23 = tail call i8* @opt_arg() #6
  %call24 = tail call %struct.engine_st* @setup_engine_methods(i8* noundef %call23, i32 noundef -1, i32 noundef 0) #6
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.cond, %while.cond
  %call27 = tail call i32 @opt_rand(i32 noundef %call1) #6
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %end.thread, label %while.cond.backedge

sw.bb31:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call32 = tail call i32 @opt_provider(i32 noundef %call1) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end.thread, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call36 = tail call i32 @opt_num_rest() #6
  %call37 = tail call i8** @opt_rest() #6
  %call38 = tail call i32 @app_RAND_load() #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %end.thread, label %if.end41

if.end41:                                         ; preds = %while.end
  %cmp42 = icmp ne i8* %srpvfile.0, null
  %cmp43 = icmp ne i8* %configfile.0, null
  %or.cond = select i1 %cmp42, i1 %cmp43, i1 false
  br i1 %or.cond, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call45 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.49, i64 0, i64 0)) #6
  br label %end.thread

if.end46:                                         ; preds = %if.end41
  %cmp47 = icmp eq i32 %mode.0, -1
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end46
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.50, i64 0, i64 0)) #6
  br label %opthelp

if.end50:                                         ; preds = %if.end46
  %6 = add i32 %mode.0, -6
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end50
  %cmp56 = icmp eq i32 %call36, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then55
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call58 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %opthelp

if.end59:                                         ; preds = %if.then55
  %incdec.ptr = getelementptr inbounds i8*, i8** %call37, i64 1
  %9 = load i8*, i8** %call37, align 8, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.end50, %if.end59
  %user.0 = phi i8* [ %9, %if.end59 ], [ null, %if.end50 ]
  %argv.addr.0 = phi i8** [ %incdec.ptr, %if.end59 ], [ %call37, %if.end50 ]
  %cmp61 = icmp ne i8* %passinarg.0, null
  %cmp63 = icmp ne i8* %passoutarg.0, null
  %or.cond565 = select i1 %cmp61, i1 true, i1 %cmp63
  %cmp65 = icmp ne i32 %call36, 1
  %or.cond566 = select i1 %or.cond565, i1 %cmp65, i1 false
  br i1 %or.cond566, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end60
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0)) #6
  br label %opthelp

if.end68:                                         ; preds = %if.end60
  %call69 = call i32 @app_passwd(i8* noundef %passinarg.0, i8* noundef %passoutarg.0, i8** noundef nonnull %passin, i8** noundef nonnull %passout) #6
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end68
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call72 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i64 0, i64 0)) #6
  br label %end.thread

if.end73:                                         ; preds = %if.end68
  %cmp74 = icmp eq i8* %srpvfile.0, null
  br i1 %cmp74, label %if.then75, label %if.end108

if.then75:                                        ; preds = %if.end73
  %cmp76 = icmp eq i8* %configfile.0, null
  %12 = load i8*, i8** @default_config_file, align 8
  %spec.select = select i1 %cmp76, i8* %12, i8* %configfile.0
  %call79 = call %struct.conf_st* @app_load_config_verbose(i8* noundef %spec.select, i32 noundef %verbose.0) #6
  %cmp80 = icmp eq %struct.conf_st* %call79, null
  br i1 %cmp80, label %end.thread, label %if.end82

if.end82:                                         ; preds = %if.then75
  %13 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  %cmp83.not = icmp eq i8* %spec.select, %13
  br i1 %cmp83.not, label %if.end88, label %land.lhs.true84

land.lhs.true84:                                  ; preds = %if.end82
  %call85 = call i32 @app_load_modules(%struct.conf_st* noundef nonnull %call79) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %end.thread, label %if.end88

if.end88:                                         ; preds = %land.lhs.true84, %if.end82
  %cmp89 = icmp eq i8* %section.0, null
  br i1 %cmp89, label %if.then90, label %if.end99

if.then90:                                        ; preds = %if.end88
  %tobool91.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool91.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.then90
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call93 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i64 0, i64 0)) #6
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then90
  %call95 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0)) #7
  %cmp96 = icmp eq i8* %call95, null
  br i1 %cmp96, label %end.thread, label %if.end99

if.end99:                                         ; preds = %if.end94, %if.end88
  %section.2 = phi i8* [ %call95, %if.end94 ], [ %section.0, %if.end88 ]
  call void @app_RAND_load_conf(%struct.conf_st* noundef nonnull %call79, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #6
  %tobool100.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool100.not, label %if.end103, label %if.then101

if.then101:                                       ; preds = %if.end99
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call102 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i64 0, i64 0), i8* noundef nonnull %section.2) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end99
  %call104 = call fastcc i8* @lookup_conf(%struct.conf_st* noundef nonnull %call79, i8* noundef nonnull %section.2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #7
  %cmp105 = icmp eq i8* %call104, null
  br i1 %cmp105, label %end.thread, label %if.end108

if.end108:                                        ; preds = %if.end103, %if.end73
  %srpvfile.2 = phi i8* [ %call104, %if.end103 ], [ %srpvfile.0, %if.end73 ]
  %conf.0 = phi %struct.conf_st* [ %call79, %if.end103 ], [ null, %if.end73 ]
  %tobool109.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool109.not, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.end108
  %16 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call111 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %16, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i64 0, i64 0), i8* noundef nonnull %srpvfile.2) #6
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end108
  %call113 = call %struct.ca_db_st* @load_index(i8* noundef nonnull %srpvfile.2, %struct.db_attr_st* noundef null) #6
  %cmp114 = icmp eq %struct.ca_db_st* %call113, null
  br i1 %cmp114, label %if.then115, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end112
  %db118 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %call113, i64 0, i32 1
  %17 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data913 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %17, i64 0, i32 1
  %18 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data913, align 8, !tbaa !16
  %call119914 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %18) #7
  %cmp120915 = icmp sgt i32 %call119914, 0
  br i1 %cmp120915, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp131 = icmp ne i8* %gN.0, null
  %cmp140 = icmp sgt i32 %verbose.0, 1
  %conv141 = zext i1 %cmp140 to i32
  br label %for.body

if.then115:                                       ; preds = %if.end112
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call116 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %19, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.59, i64 0, i64 0), i8* noundef nonnull %srpvfile.2) #6
  br label %end.thread

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %gNindex.0920 = phi i32 [ -1, %for.body.lr.ph ], [ %gNindex.2, %for.inc ]
  %maxgN.0919 = phi i32 [ -1, %for.body.lr.ph ], [ %maxgN.1, %for.inc ]
  %i.0916 = phi i32 [ 0, %for.body.lr.ph ], [ %inc143, %for.inc ]
  %20 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data122 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %20, i64 0, i32 1
  %21 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data122, align 8, !tbaa !16
  %call123 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %21, i32 noundef %i.0916) #7
  %22 = load i8*, i8** %call123, align 8, !tbaa !3
  %23 = load i8, i8* %22, align 1, !tbaa !18
  %cmp125 = icmp eq i8 %23, 73
  br i1 %cmp125, label %if.then127, label %for.inc

if.then127:                                       ; preds = %for.body
  %cmp128 = icmp slt i32 %gNindex.0920, 0
  %or.cond567 = select i1 %cmp128, i1 %cmp131, i1 false
  br i1 %or.cond567, label %land.lhs.true133, label %if.end139

land.lhs.true133:                                 ; preds = %if.then127
  %arrayidx134 = getelementptr inbounds i8*, i8** %call123, i64 3
  %24 = load i8*, i8** %arrayidx134, align 8, !tbaa !3
  %call135 = call i32 @strcmp(i8* noundef nonnull %gN.0, i8* noundef %24) #8
  %cmp136 = icmp eq i32 %call135, 0
  %spec.select779 = select i1 %cmp136, i32 %i.0916, i32 %gNindex.0920
  br label %if.end139

if.end139:                                        ; preds = %land.lhs.true133, %if.then127
  %gNindex.1 = phi i32 [ %gNindex.0920, %if.then127 ], [ %spec.select779, %land.lhs.true133 ]
  call fastcc void @print_index(%struct.ca_db_st* noundef nonnull %call113, i32 noundef %i.0916, i32 noundef %conv141) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end139
  %maxgN.1 = phi i32 [ %i.0916, %if.end139 ], [ %maxgN.0919, %for.body ]
  %gNindex.2 = phi i32 [ %gNindex.1, %if.end139 ], [ %gNindex.0920, %for.body ]
  %inc143 = add nuw nsw i32 %i.0916, 1
  %25 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %25, i64 0, i32 1
  %26 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !16
  %call119 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %26) #7
  %cmp120 = icmp slt i32 %inc143, %call119
  br i1 %cmp120, label %for.body, label %for.end, !llvm.loop !19

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %maxgN.0.lcssa = phi i32 [ -1, %for.cond.preheader ], [ %maxgN.1, %for.inc ]
  %gNindex.0.lcssa = phi i32 [ -1, %for.cond.preheader ], [ %gNindex.2, %for.inc ]
  br i1 %tobool109.not, label %if.end147, label %if.then145

if.then145:                                       ; preds = %for.end
  %27 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call146 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %27, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0)) #6
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %for.end
  %cmp148 = icmp sgt i32 %gNindex.0.lcssa, -1
  br i1 %cmp148, label %if.then150, label %if.else

if.then150:                                       ; preds = %if.end147
  %28 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data152 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %28, i64 0, i32 1
  %29 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data152, align 8, !tbaa !16
  %call153 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %29, i32 noundef %gNindex.0.lcssa) #7
  %cmp154 = icmp sgt i32 %verbose.0, 1
  %conv155 = zext i1 %cmp154 to i32
  call fastcc void @print_entry(%struct.ca_db_st* noundef nonnull %call113, i32 noundef %gNindex.0.lcssa, i32 noundef %conv155, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0)) #7
  br label %if.end169

if.else:                                          ; preds = %if.end147
  %cmp156 = icmp sgt i32 %maxgN.0.lcssa, 0
  br i1 %cmp156, label %land.lhs.true158, label %if.else163

land.lhs.true158:                                 ; preds = %if.else
  %call159 = call %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef %gN.0) #6
  %tobool160.not = icmp eq %struct.SRP_gN_st* %call159, null
  br i1 %tobool160.not, label %if.then161, label %if.else163

if.then161:                                       ; preds = %land.lhs.true158
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call162 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i64 0, i64 0), i8* noundef %gN.0) #6
  br label %end.thread

if.else163:                                       ; preds = %land.lhs.true158, %if.else
  br i1 %tobool109.not, label %if.end174, label %if.then165

if.then165:                                       ; preds = %if.else163
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call166 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %31, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i64 0, i64 0)) #6
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %if.then150
  %gNrow.0 = phi i8** [ %call153, %if.then150 ], [ null, %if.then165 ]
  %cmp170 = icmp sgt i32 %verbose.0, 1
  br i1 %cmp170, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.end169
  %32 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call173 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %32, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0)) #6
  br label %if.end174

if.end174:                                        ; preds = %if.else163, %if.then172, %if.end169
  %cmp170785 = phi i1 [ true, %if.then172 ], [ false, %if.end169 ], [ false, %if.else163 ]
  %gNrow.0784 = phi i8** [ %gNrow.0, %if.then172 ], [ %gNrow.0, %if.end169 ], [ null, %if.else163 ]
  %cmp176 = icmp eq i32 %mode.0, 9
  %cmp193 = icmp sgt i32 %verbose.0, 0
  %33 = select i1 %cmp193, i1 true, i1 %cmp176
  %lor.ext = zext i1 %33 to i32
  %tobool379.not = icmp eq i8** %gNrow.0784, null
  %arrayidx381 = getelementptr inbounds i8*, i8** %gNrow.0784, i64 2
  %arrayidx387 = getelementptr inbounds i8*, i8** %gNrow.0784, i64 1
  %tobool421.not = icmp eq i8* %userinfo.0, null
  %34 = bitcast [6 x i8*]* %row239 to i8*
  %arrayidx240 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row239, i64 0, i64 1
  %arrayidx241 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row239, i64 0, i64 2
  %arrayidx242 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row239, i64 0, i64 5
  %arrayidx260 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row239, i64 0, i64 3
  %arrayidx262 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row239, i64 0, i64 0
  %arrayidx264 = getelementptr inbounds [6 x i8*], [6 x i8*]* %row239, i64 0, i64 4
  %35 = bitcast i8** %arrayidx240 to <2 x i8*>*
  br label %while.cond175

while.cond175:                                    ; preds = %if.end458, %if.end174
  %errors.0 = phi i32 [ 0, %if.end174 ], [ %errors.7, %if.end458 ]
  %doupdatedb.0 = phi i32 [ 0, %if.end174 ], [ %doupdatedb.5, %if.end458 ]
  %user.1 = phi i8* [ %user.0, %if.end174 ], [ %96, %if.end458 ]
  %argv.addr.1 = phi i8** [ %argv.addr.0, %if.end174 ], [ %incdec.ptr459, %if.end458 ]
  %cmp178 = icmp ne i8* %user.1, null
  %36 = select i1 %cmp176, i1 true, i1 %cmp178
  br i1 %36, label %while.body180, label %while.end467

while.body180:                                    ; preds = %while.cond175
  %or.cond568 = and i1 %cmp170785, %cmp178
  br i1 %or.cond568, label %if.then186, label %if.end188

if.then186:                                       ; preds = %while.body180
  %37 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call187 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %37, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i8* noundef nonnull %user.1) #6
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %while.body180
  %call189 = call fastcc i32 @get_index(%struct.ca_db_st* noundef nonnull %call113, i8* noundef %user.1, i8 noundef signext 85) #7
  %cmp190 = icmp sgt i32 %call189, -1
  br i1 %cmp190, label %if.then192, label %if.end199

if.then192:                                       ; preds = %if.end188
  call fastcc void @print_user(%struct.ca_db_st* noundef nonnull %call113, i32 noundef %call189, i32 noundef %lor.ext) #7
  br label %if.end199

if.end199:                                        ; preds = %if.then192, %if.end188
  br i1 %cmp176, label %if.then202, label %if.else225

if.then202:                                       ; preds = %if.end199
  %cmp203 = icmp eq i8* %user.1, null
  br i1 %cmp203, label %if.then205, label %if.else217

if.then205:                                       ; preds = %if.then202
  %38 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call206 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %38, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0)) #6
  %39 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data209923 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %39, i64 0, i32 1
  %40 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data209923, align 8, !tbaa !16
  %call210924 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %40) #7
  %cmp211925 = icmp sgt i32 %call210924, 0
  br i1 %cmp211925, label %for.body213, label %if.end458

for.body213:                                      ; preds = %if.then205, %for.body213
  %i.1926 = phi i32 [ %inc215, %for.body213 ], [ 0, %if.then205 ]
  call fastcc void @print_user(%struct.ca_db_st* noundef nonnull %call113, i32 noundef %i.1926, i32 noundef 1) #7
  %inc215 = add nuw nsw i32 %i.1926, 1
  %41 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data209 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %41, i64 0, i32 1
  %42 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data209, align 8, !tbaa !16
  %call210 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %42) #7
  %cmp211 = icmp slt i32 %inc215, %call210
  br i1 %cmp211, label %for.body213, label %if.end458, !llvm.loop !20

if.else217:                                       ; preds = %if.then202
  %cmp218 = icmp slt i32 %call189, 0
  br i1 %cmp218, label %if.then220, label %if.end458

if.then220:                                       ; preds = %if.else217
  %43 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call221 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %43, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.67, i64 0, i64 0), i8* noundef nonnull %user.1) #6
  %inc222 = add nsw i32 %errors.0, 1
  br label %if.end458

if.else225:                                       ; preds = %if.end199
  switch i32 %mode.0, label %if.end458 [
    i32 6, label %if.then228
    i32 8, label %if.then307
    i32 7, label %if.then441
  ]

if.then228:                                       ; preds = %if.else225
  br i1 %cmp190, label %if.then231, label %if.else238

if.then231:                                       ; preds = %if.then228
  %44 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data233 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %44, i64 0, i32 1
  %45 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data233, align 8, !tbaa !16
  %call234 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %45, i32 noundef %call189) #7
  %46 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call235 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %46, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef %user.1) #6
  %47 = load i8*, i8** %call234, align 8, !tbaa !3
  store i8 86, i8* %47, align 1, !tbaa !18
  br label %if.end458

if.else238:                                       ; preds = %if.then228
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %34) #5
  store <2 x i8*> zeroinitializer, <2 x i8*>* %35, align 8, !tbaa !3
  store i8* null, i8** %arrayidx242, align 8, !tbaa !3
  br i1 %tobool379.not, label %cond.end251, label %cond.true248

cond.true248:                                     ; preds = %if.else238
  %48 = load i8*, i8** %arrayidx381, align 8, !tbaa !3
  %49 = load i8*, i8** %arrayidx387, align 8, !tbaa !3
  br label %cond.end251

cond.end251:                                      ; preds = %if.else238, %cond.true248
  %cond787 = phi i8* [ %48, %cond.true248 ], [ %gN.0, %if.else238 ]
  %cond252 = phi i8* [ %49, %cond.true248 ], [ null, %if.else238 ]
  %50 = load i8*, i8** %passout, align 8, !tbaa !3
  %call253 = call fastcc i8* @srp_create_user(i8* noundef %user.1, i8** noundef nonnull %arrayidx240, i8** noundef nonnull %arrayidx241, i8* noundef %cond787, i8* noundef %cond252, i8* noundef %50, i32 noundef %verbose.0) #7
  %tobool254.not = icmp eq i8* %call253, null
  br i1 %tobool254.not, label %if.then255, label %if.end258

if.then255:                                       ; preds = %cond.end251
  %51 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call256 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %51, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.69, i64 0, i64 0), i8* noundef %user.1) #6
  %inc257 = add nsw i32 %errors.0, 1
  br label %cleanup.thread

if.end258:                                        ; preds = %cond.end251
  %call259 = call i8* @CRYPTO_strdup(i8* noundef %user.1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 465) #6
  store i8* %call259, i8** %arrayidx260, align 8, !tbaa !3
  %call261 = call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 466) #6
  store i8* %call261, i8** %arrayidx262, align 16, !tbaa !3
  %call263 = call i8* @CRYPTO_strdup(i8* noundef nonnull %call253, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 467) #6
  store i8* %call263, i8** %arrayidx264, align 16, !tbaa !3
  %52 = load i8*, i8** %arrayidx260, align 8, !tbaa !3
  %cmp266 = icmp eq i8* %52, null
  %cmp270 = icmp eq i8* %call263, null
  %or.cond569 = select i1 %cmp266, i1 true, i1 %cmp270
  %53 = load i8*, i8** %arrayidx262, align 16
  %cmp274 = icmp eq i8* %53, null
  %or.cond570 = select i1 %or.cond569, i1 true, i1 %cmp274
  %54 = load i8*, i8** %arrayidx240, align 8
  %cmp278 = icmp eq i8* %54, null
  %or.cond571 = select i1 %or.cond570, i1 true, i1 %cmp278
  %55 = load i8*, i8** %arrayidx241, align 16
  %cmp282 = icmp eq i8* %55, null
  %or.cond572 = select i1 %or.cond571, i1 true, i1 %cmp282
  br i1 %or.cond572, label %if.then294, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %if.end258
  br i1 %tobool421.not, label %lor.lhs.false291, label %land.lhs.true286

land.lhs.true286:                                 ; preds = %lor.lhs.false284
  %call287 = call i8* @CRYPTO_strdup(i8* noundef nonnull %userinfo.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 475) #6
  store i8* %call287, i8** %arrayidx242, align 8, !tbaa !3
  %cmp289 = icmp eq i8* %call287, null
  br i1 %cmp289, label %if.then294, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %land.lhs.true286, %lor.lhs.false284
  %call292 = call fastcc i32 @update_index(%struct.ca_db_st* noundef nonnull %call113, i8** noundef nonnull %arrayidx262) #7
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.then294, label %cleanup

if.then294:                                       ; preds = %lor.lhs.false291, %land.lhs.true286, %if.end258
  %56 = load i8*, i8** %arrayidx260, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %56, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 477) #6
  %57 = load i8*, i8** %arrayidx264, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %57, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 478) #6
  %58 = load i8*, i8** %arrayidx242, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %58, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 479) #6
  %59 = load i8*, i8** %arrayidx262, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %59, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 480) #6
  %60 = load i8*, i8** %arrayidx240, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %60, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 481) #6
  %61 = load i8*, i8** %arrayidx241, align 16, !tbaa !3
  call void @CRYPTO_free(i8* noundef %61, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 482) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then294, %if.then255
  %errors.1.ph = phi i32 [ %inc257, %if.then255 ], [ %errors.0, %if.then294 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %34) #5
  br label %end

cleanup:                                          ; preds = %lor.lhs.false291
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %34) #5
  br label %if.end458

if.then307:                                       ; preds = %if.else225
  %cmp308 = icmp slt i32 %call189, 0
  br i1 %cmp308, label %if.then310, label %if.else313

if.then310:                                       ; preds = %if.then307
  %62 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call311 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %62, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.72, i64 0, i64 0), i8* noundef %user.1) #6
  %inc312 = add nsw i32 %errors.0, 1
  br label %if.end458

if.else313:                                       ; preds = %if.then307
  %63 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data316 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %63, i64 0, i32 1
  %64 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data316, align 8, !tbaa !16
  %call317 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %64, i32 noundef %call189) #7
  %65 = load i8*, i8** %call317, align 8, !tbaa !3
  %66 = load i8, i8* %65, align 1, !tbaa !18
  switch i8 %66, label %if.end372 [
    i8 118, label %if.then323
    i8 86, label %if.then333
  ]

if.then323:                                       ; preds = %if.else313
  %67 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call324 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %67, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.73, i64 0, i64 0), i8* noundef %user.1) #6
  %inc325 = add nsw i32 %errors.0, 1
  br label %if.end458

if.then333:                                       ; preds = %if.else313
  br i1 %tobool109.not, label %if.end337, label %if.then335

if.then335:                                       ; preds = %if.then333
  %68 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call336 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %68, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i64 0, i64 0), i8* noundef %user.1) #6
  br label %if.end337

if.end337:                                        ; preds = %if.then335, %if.then333
  %arrayidx338 = getelementptr inbounds i8*, i8** %call317, i64 4
  %69 = load i8*, i8** %arrayidx338, align 8, !tbaa !3
  %call339 = call fastcc i32 @get_index(%struct.ca_db_st* noundef nonnull %call113, i8* noundef %69, i8 noundef signext 73) #7
  %cmp340 = icmp sgt i32 %call339, -1
  br i1 %cmp340, label %if.end346, label %if.end346.thread

if.end346.thread:                                 ; preds = %if.end337
  %arrayidx347793 = getelementptr inbounds i8*, i8** %call317, i64 1
  %70 = load i8*, i8** %arrayidx347793, align 8, !tbaa !3
  %arrayidx348794 = getelementptr inbounds i8*, i8** %call317, i64 2
  %71 = load i8*, i8** %arrayidx348794, align 8, !tbaa !3
  %cond355798 = load i8*, i8** %arrayidx338, align 8, !tbaa !3
  br label %cond.end360

if.end346:                                        ; preds = %if.end337
  %72 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data344 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %72, i64 0, i32 1
  %73 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data344, align 8, !tbaa !16
  %call345 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %73, i32 noundef %call189) #7
  %arrayidx347 = getelementptr inbounds i8*, i8** %call317, i64 1
  %74 = load i8*, i8** %arrayidx347, align 8, !tbaa !3
  %arrayidx348 = getelementptr inbounds i8*, i8** %call317, i64 2
  %75 = load i8*, i8** %arrayidx348, align 8, !tbaa !3
  %tobool349.not = icmp eq i8** %call345, null
  %arrayidx351 = getelementptr inbounds i8*, i8** %call345, i64 2
  %cond355.in = select i1 %tobool349.not, i8** %arrayidx338, i8** %arrayidx351
  %cond355 = load i8*, i8** %cond355.in, align 8, !tbaa !3
  br i1 %tobool349.not, label %cond.end360, label %cond.true357

cond.true357:                                     ; preds = %if.end346
  %arrayidx358 = getelementptr inbounds i8*, i8** %call345, i64 1
  %76 = load i8*, i8** %arrayidx358, align 8, !tbaa !3
  br label %cond.end360

cond.end360:                                      ; preds = %if.end346.thread, %if.end346, %cond.true357
  %cond355799 = phi i8* [ %cond355, %cond.true357 ], [ %cond355, %if.end346 ], [ %cond355798, %if.end346.thread ]
  %77 = phi i8* [ %75, %cond.true357 ], [ %75, %if.end346 ], [ %71, %if.end346.thread ]
  %78 = phi i8* [ %74, %cond.true357 ], [ %74, %if.end346 ], [ %70, %if.end346.thread ]
  %cond361 = phi i8* [ %76, %cond.true357 ], [ null, %if.end346 ], [ null, %if.end346.thread ]
  %79 = load i8*, i8** %passin, align 8, !tbaa !3
  %call362 = call fastcc i8* @srp_verify_user(i8* noundef %user.1, i8* noundef %78, i8* noundef %77, i8* noundef %cond355799, i8* noundef %cond361, i8* noundef %79, i32 noundef %verbose.0) #7
  %tobool363.not = icmp eq i8* %call362, null
  br i1 %tobool363.not, label %cleanup368.thread, label %if.end372

cleanup368.thread:                                ; preds = %cond.end360
  %80 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call365 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %80, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.75, i64 0, i64 0), i8* noundef %user.1) #6
  %inc366 = add nsw i32 %errors.0, 1
  br label %end

if.end372:                                        ; preds = %cond.end360, %if.else313
  br i1 %tobool109.not, label %if.end376, label %if.then374

if.then374:                                       ; preds = %if.end372
  %81 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call375 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %81, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0), i8* noundef %user.1) #6
  br label %if.end376

if.end376:                                        ; preds = %if.then374, %if.end372
  %arrayidx377 = getelementptr inbounds i8*, i8** %call317, i64 1
  %arrayidx378 = getelementptr inbounds i8*, i8** %call317, i64 2
  br i1 %tobool379.not, label %cond.end389, label %cond.true386

cond.true386:                                     ; preds = %if.end376
  %82 = load i8*, i8** %arrayidx381, align 8, !tbaa !3
  %83 = load i8*, i8** %arrayidx387, align 8, !tbaa !3
  br label %cond.end389

cond.end389:                                      ; preds = %if.end376, %cond.true386
  %cond384803 = phi i8* [ %82, %cond.true386 ], [ null, %if.end376 ]
  %cond390 = phi i8* [ %83, %cond.true386 ], [ null, %if.end376 ]
  %84 = load i8*, i8** %passout, align 8, !tbaa !3
  %call391 = call fastcc i8* @srp_create_user(i8* noundef %user.1, i8** noundef nonnull %arrayidx377, i8** noundef nonnull %arrayidx378, i8* noundef %cond384803, i8* noundef %cond390, i8* noundef %84, i32 noundef %verbose.0) #7
  %tobool392.not = icmp eq i8* %call391, null
  br i1 %tobool392.not, label %if.then393, label %if.end396

if.then393:                                       ; preds = %cond.end389
  %85 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call394 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %85, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.77, i64 0, i64 0), i8* noundef %user.1) #6
  %inc395 = add nsw i32 %errors.0, 1
  br label %end

if.end396:                                        ; preds = %cond.end389
  %86 = load i8*, i8** %call317, align 8, !tbaa !3
  store i8 118, i8* %86, align 1, !tbaa !18
  %call399 = call i8* @CRYPTO_strdup(i8* noundef nonnull %call391, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 550) #6
  %arrayidx400 = getelementptr inbounds i8*, i8** %call317, i64 4
  store i8* %call399, i8** %arrayidx400, align 8, !tbaa !3
  %arrayidx401 = getelementptr inbounds i8*, i8** %call317, i64 3
  %87 = load i8*, i8** %arrayidx401, align 8, !tbaa !3
  %cmp402 = icmp eq i8* %87, null
  %cmp406 = icmp eq i8* %call399, null
  %or.cond780 = select i1 %cmp402, i1 true, i1 %cmp406
  br i1 %or.cond780, label %end, label %lor.lhs.false408

lor.lhs.false408:                                 ; preds = %if.end396
  %88 = load i8*, i8** %call317, align 8, !tbaa !3
  %cmp410 = icmp eq i8* %88, null
  br i1 %cmp410, label %end, label %lor.lhs.false412

lor.lhs.false412:                                 ; preds = %lor.lhs.false408
  %89 = load i8*, i8** %arrayidx377, align 8, !tbaa !3
  %cmp414 = icmp eq i8* %89, null
  br i1 %cmp414, label %end, label %lor.lhs.false416

lor.lhs.false416:                                 ; preds = %lor.lhs.false412
  %90 = load i8*, i8** %arrayidx378, align 8, !tbaa !3
  %cmp418 = icmp eq i8* %90, null
  br i1 %cmp418, label %end, label %lor.lhs.false420

lor.lhs.false420:                                 ; preds = %lor.lhs.false416
  br i1 %tobool421.not, label %if.end458, label %land.lhs.true422

land.lhs.true422:                                 ; preds = %lor.lhs.false420
  %call423 = call i8* @CRYPTO_strdup(i8* noundef nonnull %userinfo.0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 558) #6
  %arrayidx424 = getelementptr inbounds i8*, i8** %call317, i64 5
  store i8* %call423, i8** %arrayidx424, align 8, !tbaa !3
  %cmp425 = icmp eq i8* %call423, null
  br i1 %cmp425, label %end, label %if.end458

if.then441:                                       ; preds = %if.else225
  %cmp442 = icmp slt i32 %call189, 0
  br i1 %cmp442, label %if.then444, label %if.else447

if.then444:                                       ; preds = %if.then441
  %91 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call445 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %91, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i64 0, i64 0), i8* noundef %user.1) #6
  %inc446 = add nsw i32 %errors.0, 1
  br label %if.end458

if.else447:                                       ; preds = %if.then441
  %92 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data449 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %92, i64 0, i32 1
  %93 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data449, align 8, !tbaa !16
  %call450 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %93, i32 noundef %call189) #7
  %94 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call451 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %94, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.79, i64 0, i64 0), i8* noundef %user.1) #6
  %95 = load i8*, i8** %call450, align 8, !tbaa !3
  store i8 82, i8* %95, align 1, !tbaa !18
  br label %if.end458

if.end458:                                        ; preds = %for.body213, %if.then205, %if.then323, %lor.lhs.false420, %land.lhs.true422, %cleanup, %if.else225, %if.then231, %if.else447, %if.then444, %if.then310, %if.then220, %if.else217
  %errors.7 = phi i32 [ %inc222, %if.then220 ], [ %errors.0, %if.else217 ], [ %errors.0, %if.then231 ], [ %errors.0, %cleanup ], [ %inc312, %if.then310 ], [ %inc446, %if.then444 ], [ %errors.0, %if.else447 ], [ %errors.0, %if.else225 ], [ %errors.0, %land.lhs.true422 ], [ %errors.0, %lor.lhs.false420 ], [ %inc325, %if.then323 ], [ %errors.0, %if.then205 ], [ %errors.0, %for.body213 ]
  %doupdatedb.5 = phi i32 [ %doupdatedb.0, %if.then220 ], [ %doupdatedb.0, %if.else217 ], [ 1, %if.then231 ], [ 1, %cleanup ], [ %doupdatedb.0, %if.then310 ], [ %doupdatedb.0, %if.then444 ], [ 1, %if.else447 ], [ %doupdatedb.0, %if.else225 ], [ 1, %land.lhs.true422 ], [ 1, %lor.lhs.false420 ], [ %doupdatedb.0, %if.then323 ], [ %doupdatedb.0, %if.then205 ], [ %doupdatedb.0, %for.body213 ]
  %incdec.ptr459 = getelementptr inbounds i8*, i8** %argv.addr.1, i64 1
  %96 = load i8*, i8** %argv.addr.1, align 8, !tbaa !3
  %cmp460 = icmp eq i8* %96, null
  br i1 %cmp460, label %while.end467, label %while.cond175

while.end467:                                     ; preds = %if.end458, %while.cond175
  %errors.9 = phi i32 [ %errors.0, %while.cond175 ], [ %errors.7, %if.end458 ]
  %doupdatedb.7 = phi i32 [ %doupdatedb.0, %while.cond175 ], [ %doupdatedb.5, %if.end458 ]
  br i1 %tobool109.not, label %if.end471, label %if.then469

if.then469:                                       ; preds = %while.end467
  %97 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call470 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %97, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i64 0, i64 0)) #6
  br label %if.end471

if.end471:                                        ; preds = %if.then469, %while.end467
  %tobool472.not = icmp eq i32 %doupdatedb.7, 0
  br i1 %tobool472.not, label %if.end516, label %for.cond474.preheader

for.cond474.preheader:                            ; preds = %if.end471
  %98 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data476927 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %98, i64 0, i32 1
  %99 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data476927, align 8, !tbaa !16
  %call477928 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %99) #7
  %cmp478929 = icmp sgt i32 %call477928, 0
  br i1 %cmp478929, label %for.body480, label %for.end495

for.body480:                                      ; preds = %for.cond474.preheader, %for.inc493
  %i.2930 = phi i32 [ %inc494, %for.inc493 ], [ 0, %for.cond474.preheader ]
  %100 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data482 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %100, i64 0, i32 1
  %101 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data482, align 8, !tbaa !16
  %call483 = call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %101, i32 noundef %i.2930) #7
  %102 = load i8*, i8** %call483, align 8, !tbaa !3
  %103 = load i8, i8* %102, align 1, !tbaa !18
  %cmp487 = icmp eq i8 %103, 118
  br i1 %cmp487, label %if.then489, label %for.inc493

if.then489:                                       ; preds = %for.body480
  store i8 86, i8* %102, align 1, !tbaa !18
  call fastcc void @print_user(%struct.ca_db_st* noundef nonnull %call113, i32 noundef %i.2930, i32 noundef %verbose.0) #7
  br label %for.inc493

for.inc493:                                       ; preds = %for.body480, %if.then489
  %inc494 = add nuw nsw i32 %i.2930, 1
  %104 = load %struct.txt_db_st*, %struct.txt_db_st** %db118, align 8, !tbaa !9
  %data476 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %104, i64 0, i32 1
  %105 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data476, align 8, !tbaa !16
  %call477 = call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %105) #7
  %cmp478 = icmp slt i32 %inc494, %call477
  br i1 %cmp478, label %for.body480, label %for.end495, !llvm.loop !21

for.end495:                                       ; preds = %for.inc493, %for.cond474.preheader
  br i1 %tobool109.not, label %if.end499, label %if.end499.thread

if.end499:                                        ; preds = %for.end495
  %call500 = call i32 @save_index(i8* noundef %srpvfile.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), %struct.ca_db_st* noundef nonnull %call113) #6
  %tobool501.not = icmp eq i32 %call500, 0
  br i1 %tobool501.not, label %if.end530, label %if.end507

if.end499.thread:                                 ; preds = %for.end495
  %106 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call498 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %106, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i64 0, i64 0)) #6
  %call500823 = call i32 @save_index(i8* noundef %srpvfile.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), %struct.ca_db_st* noundef nonnull %call113) #6
  %tobool501.not824 = icmp eq i32 %call500823, 0
  br i1 %tobool501.not824, label %end, label %if.end507.thread

if.end507:                                        ; preds = %if.end499
  %call508 = call i32 @rotate_index(i8* noundef %srpvfile.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #6
  %tobool509.not = icmp eq i32 %call508, 0
  br i1 %tobool509.not, label %if.end530, label %if.end516

if.end507.thread:                                 ; preds = %if.end499.thread
  %107 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call506 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %107, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i64 0, i64 0)) #6
  %call508825 = call i32 @rotate_index(i8* noundef %srpvfile.2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #6
  %tobool509.not826 = icmp eq i32 %call508825, 0
  br i1 %tobool509.not826, label %end, label %if.then513

if.then513:                                       ; preds = %if.end507.thread
  %108 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call514 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %108, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i64 0, i64 0)) #6
  br label %if.end516

if.end516:                                        ; preds = %if.end507, %if.then513, %if.end471
  %cmp517 = icmp ne i32 %errors.9, 0
  %conv518 = zext i1 %cmp517 to i32
  br label %end

end.thread:                                       ; preds = %sw.bb26, %sw.bb31, %opthelp, %sw.bb3, %if.then44, %if.then75, %if.end94, %if.end103, %if.then115, %if.then161, %land.lhs.true84, %if.then71, %while.end
  %ret.0.ph = phi i32 [ 1, %while.end ], [ 1, %if.then71 ], [ 1, %land.lhs.true84 ], [ 1, %if.then161 ], [ 1, %if.then115 ], [ 1, %if.end103 ], [ 1, %if.end94 ], [ 1, %if.then75 ], [ 1, %if.then44 ], [ 0, %sw.bb3 ], [ 1, %opthelp ], [ 1, %sw.bb31 ], [ 1, %sw.bb26 ]
  %conf.1.ph = phi %struct.conf_st* [ null, %while.end ], [ null, %if.then71 ], [ %call79, %land.lhs.true84 ], [ %conf.0, %if.then161 ], [ %conf.0, %if.then115 ], [ %call79, %if.end103 ], [ %call79, %if.end94 ], [ null, %if.then75 ], [ null, %if.then44 ], [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %sw.bb31 ], [ null, %sw.bb26 ]
  %db.0.ph = phi %struct.ca_db_st* [ null, %while.end ], [ null, %if.then71 ], [ null, %land.lhs.true84 ], [ %call113, %if.then161 ], [ null, %if.then115 ], [ null, %if.end103 ], [ null, %if.end94 ], [ null, %if.then75 ], [ null, %if.then44 ], [ null, %sw.bb3 ], [ null, %opthelp ], [ null, %sw.bb31 ], [ null, %sw.bb26 ]
  %tobool522832.not = icmp eq i32 %verbose.0, 0
  br i1 %tobool522832.not, label %if.end530, label %if.then528

end:                                              ; preds = %if.end396, %lor.lhs.false408, %lor.lhs.false412, %lor.lhs.false416, %land.lhs.true422, %cleanup368.thread, %if.then393, %cleanup.thread, %if.end507.thread, %if.end499.thread, %if.end516
  %errors.10 = phi i32 [ %errors.9, %if.end516 ], [ %errors.9, %if.end499.thread ], [ %errors.9, %if.end507.thread ], [ %inc395, %if.then393 ], [ %inc366, %cleanup368.thread ], [ %errors.1.ph, %cleanup.thread ], [ %errors.0, %land.lhs.true422 ], [ %errors.0, %lor.lhs.false416 ], [ %errors.0, %lor.lhs.false412 ], [ %errors.0, %lor.lhs.false408 ], [ %errors.0, %if.end396 ]
  %ret.0 = phi i32 [ %conv518, %if.end516 ], [ 1, %if.end499.thread ], [ 1, %if.end507.thread ], [ 1, %if.then393 ], [ 1, %cleanup368.thread ], [ 1, %cleanup.thread ], [ 1, %land.lhs.true422 ], [ 1, %lor.lhs.false416 ], [ 1, %lor.lhs.false412 ], [ 1, %lor.lhs.false408 ], [ 1, %if.end396 ]
  %cmp519 = icmp ne i32 %errors.10, 0
  %tobool522 = icmp ne i32 %verbose.0, 0
  %or.cond573 = select i1 %cmp519, i1 %tobool522, i1 false
  br i1 %or.cond573, label %if.then523, label %if.end526

if.then523:                                       ; preds = %end
  %109 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call524 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %109, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i64 0, i64 0), i32 noundef %errors.10) #6
  br label %if.then528

if.end526:                                        ; preds = %end
  br i1 %tobool522, label %if.then528, label %if.end530

if.then528:                                       ; preds = %if.then523, %end.thread, %if.end526
  %ret.0834843 = phi i32 [ %ret.0.ph, %end.thread ], [ %ret.0, %if.end526 ], [ %ret.0, %if.then523 ]
  %conf.1836842 = phi %struct.conf_st* [ %conf.1.ph, %end.thread ], [ %conf.0, %if.end526 ], [ %conf.0, %if.then523 ]
  %db.0837840 = phi %struct.ca_db_st* [ %db.0.ph, %end.thread ], [ %call113, %if.end526 ], [ %call113, %if.then523 ]
  %110 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call529 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %110, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.87, i64 0, i64 0), i32 noundef %ret.0834843) #6
  br label %if.end530

if.end530:                                        ; preds = %if.end499, %if.end507, %end.thread, %if.then528, %if.end526
  %conf.1836841 = phi %struct.conf_st* [ %conf.1836842, %if.then528 ], [ %conf.0, %if.end526 ], [ %conf.1.ph, %end.thread ], [ %conf.0, %if.end507 ], [ %conf.0, %if.end499 ]
  %db.0837839 = phi %struct.ca_db_st* [ %db.0837840, %if.then528 ], [ %call113, %if.end526 ], [ %db.0.ph, %end.thread ], [ %call113, %if.end507 ], [ %call113, %if.end499 ]
  %ret.0835 = phi i32 [ %ret.0834843, %if.then528 ], [ %ret.0, %if.end526 ], [ %ret.0.ph, %end.thread ], [ 1, %if.end507 ], [ 1, %if.end499 ]
  %111 = load i8*, i8** %passin, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %111, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 623) #6
  %112 = load i8*, i8** %passout, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %112, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 624) #6
  %tobool531.not = icmp eq i32 %ret.0835, 0
  br i1 %tobool531.not, label %cleanup534, label %if.then532

if.then532:                                       ; preds = %if.end530
  %113 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %113) #6
  br label %cleanup534

cleanup534:                                       ; preds = %if.end530, %if.then532
  call void @NCONF_free(%struct.conf_st* noundef %conf.1836841) #6
  call void @free_index(%struct.ca_db_st* noundef %db.0837839) #6
  call void @release_engine(%struct.engine_st* noundef %e.0) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0835
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

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local i32 @app_passwd(i8* noundef, i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #2

declare dso_local %struct.conf_st* @app_load_config_verbose(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @app_load_modules(%struct.conf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @lookup_conf(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %tag) unnamed_addr #0 {
entry:
  %call = tail call i8* @NCONF_get_string(%struct.conf_st* noundef %conf, i8* noundef %section, i8* noundef %tag) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.88, i64 0, i64 0), i8* noundef %section, i8* noundef %tag) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call
}

declare dso_local void @app_RAND_load_conf(%struct.conf_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local %struct.ca_db_st* @load_index(i8* noundef, %struct.db_attr_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #6
  %1 = bitcast i8* %call to i8**
  ret i8** %1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_index(%struct.ca_db_st* nocapture noundef readonly %db, i32 noundef %indexindex, i32 noundef %verbose) unnamed_addr #0 {
entry:
  tail call fastcc void @print_entry(%struct.ca_db_st* noundef %db, i32 noundef %indexindex, i32 noundef %verbose, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_entry(%struct.ca_db_st* nocapture noundef readonly %db, i32 noundef %indx, i32 noundef %verbose, i8* noundef %s) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %indx, -1
  %tobool = icmp ne i32 %verbose, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %db1 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %0 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !16
  %call = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %1, i32 noundef %indx) #7
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8*, i8** %call, i64 3
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i64 0, i64 0), i8* noundef %s, i8* noundef %3) #6
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %5 = load i8*, i8** %call, align 8, !tbaa !3
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i32 noundef 0, i8* noundef %5) #6
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %arrayidx4.1 = getelementptr inbounds i8*, i8** %call, i64 1
  %7 = load i8*, i8** %arrayidx4.1, align 8, !tbaa !3
  %call5.1 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i32 noundef 1, i8* noundef %7) #6
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %arrayidx4.2 = getelementptr inbounds i8*, i8** %call, i64 2
  %9 = load i8*, i8** %arrayidx4.2, align 8, !tbaa !3
  %call5.2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i32 noundef 2, i8* noundef %9) #6
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !3
  %call5.3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i32 noundef 3, i8* noundef %11) #6
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %arrayidx4.4 = getelementptr inbounds i8*, i8** %call, i64 4
  %13 = load i8*, i8** %arrayidx4.4, align 8, !tbaa !3
  %call5.4 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i32 noundef 4, i8* noundef %13) #6
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %arrayidx4.5 = getelementptr inbounds i8*, i8** %call, i64 5
  %15 = load i8*, i8** %arrayidx4.5, align 8, !tbaa !3
  %call5.5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i32 noundef 5, i8* noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local %struct.SRP_gN_st* @SRP_get_default_gN(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_index(%struct.ca_db_st* nocapture noundef readonly %db, i8* noundef readonly %id, i8 noundef signext %type) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %id, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8 %type, 73
  %db4 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %0 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %data72 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data72, align 8, !tbaa !16
  %call73 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %1) #7
  %cmp574 = icmp sgt i32 %call73, 0
  br i1 %cmp1, label %for.cond.preheader, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %if.end
  br i1 %cmp574, label %for.body26, label %cleanup

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp574, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.075 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %2 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %data8 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %2, i64 0, i32 1
  %3 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data8, align 8, !tbaa !16
  %call9 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %3, i32 noundef %i.075) #7
  %4 = load i8*, i8** %call9, align 8, !tbaa !3
  %5 = load i8, i8* %4, align 1, !tbaa !18
  %cmp12 = icmp eq i8 %5, 73
  br i1 %cmp12, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx14 = getelementptr inbounds i8*, i8** %call9, i64 3
  %6 = load i8*, i8** %arrayidx14, align 8, !tbaa !3
  %call15 = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef %6) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nuw nsw i32 %i.075, 1
  %7 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %7, i64 0, i32 1
  %8 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !16
  %call = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %8) #7
  %cmp5 = icmp slt i32 %inc, %call
  br i1 %cmp5, label %for.body, label %cleanup, !llvm.loop !22

for.body26:                                       ; preds = %for.cond20.preheader, %for.inc42
  %i.169 = phi i32 [ %inc43, %for.inc42 ], [ 0, %for.cond20.preheader ]
  %9 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %data28 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %9, i64 0, i32 1
  %10 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data28, align 8, !tbaa !16
  %call29 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %10, i32 noundef %i.169) #7
  %11 = load i8*, i8** %call29, align 8, !tbaa !3
  %12 = load i8, i8* %11, align 1, !tbaa !18
  %cmp33.not = icmp eq i8 %12, 73
  br i1 %cmp33.not, label %for.inc42, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %for.body26
  %arrayidx36 = getelementptr inbounds i8*, i8** %call29, i64 3
  %13 = load i8*, i8** %arrayidx36, align 8, !tbaa !3
  %call37 = tail call i32 @strcmp(i8* noundef nonnull %id, i8* noundef %13) #8
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %cleanup, label %for.inc42

for.inc42:                                        ; preds = %for.body26, %land.lhs.true35
  %inc43 = add nuw nsw i32 %i.169, 1
  %14 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %data22 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %14, i64 0, i32 1
  %15 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data22, align 8, !tbaa !16
  %call23 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %15) #7
  %cmp24 = icmp slt i32 %inc43, %call23
  br i1 %cmp24, label %for.body26, label %cleanup, !llvm.loop !23

cleanup:                                          ; preds = %land.lhs.true35, %for.inc42, %land.lhs.true, %for.inc, %for.cond20.preheader, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %for.cond.preheader ], [ -1, %for.cond20.preheader ], [ %i.075, %land.lhs.true ], [ -1, %for.inc ], [ %i.169, %land.lhs.true35 ], [ -1, %for.inc42 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_user(%struct.ca_db_st* nocapture noundef readonly %db, i32 noundef %userindex, i32 noundef %verbose) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %verbose, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %db1 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %0 = load %struct.txt_db_st*, %struct.txt_db_st** %db1, align 8, !tbaa !9
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %0, i64 0, i32 1
  %1 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !16
  %call = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %1, i32 noundef %userindex) #7
  %2 = load i8*, i8** %call, align 8, !tbaa !3
  %3 = load i8, i8* %2, align 1, !tbaa !18
  %cmp3.not = icmp eq i8 %3, 73
  br i1 %cmp3.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then
  tail call fastcc void @print_entry(%struct.ca_db_st* noundef nonnull %db, i32 noundef %userindex, i32 noundef %verbose, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0)) #7
  %arrayidx6 = getelementptr inbounds i8*, i8** %call, i64 4
  %4 = load i8*, i8** %arrayidx6, align 8, !tbaa !3
  %call7 = tail call fastcc i32 @get_index(%struct.ca_db_st* noundef nonnull %db, i8* noundef %4, i8 noundef signext 73) #7
  tail call fastcc void @print_entry(%struct.ca_db_st* noundef nonnull %db, i32 noundef %call7, i32 noundef %verbose, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i64 0, i64 0)) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then5, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @srp_create_user(i8* noundef %user, i8** noundef %srp_verifier, i8** nocapture noundef writeonly %srp_usersalt, i8* noundef %g, i8* noundef %N, i8* noundef %passout, i32 noundef %verbose) unnamed_addr #0 {
entry:
  %password = alloca [1025 x i8], align 16
  %cb_tmp = alloca %struct.pw_cb_data, align 8
  %salt = alloca i8*, align 8
  %0 = getelementptr inbounds [1025 x i8], [1025 x i8]* %password, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %0) #5
  %1 = bitcast %struct.pw_cb_data* %cb_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #5
  %2 = bitcast i8** %salt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* null, i8** %salt, align 8, !tbaa !3
  %prompt_info = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_tmp, i64 0, i32 1
  store i8* %user, i8** %prompt_info, align 8, !tbaa !24
  %password1 = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_tmp, i64 0, i32 0
  store i8* %passout, i8** %password1, align 8, !tbaa !26
  %call = call i32 @password_callback(i8* noundef nonnull %0, i32 noundef 1024, i32 noundef 1, %struct.pw_cb_data* noundef nonnull %cb_tmp) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %idxprom28 = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %password, i64 0, i64 %idxprom28
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.93, i64 0, i64 0), i8* noundef %user, i8* noundef %g, i8* noundef %N) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %call5 = call i8* @SRP_create_verifier(i8* noundef %user, i8* noundef nonnull %0, i8** noundef nonnull %salt, i8** noundef %srp_verifier, i8* noundef %N, i8* noundef %g) #6
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call8 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.94, i64 0, i64 0)) #6
  br label %if.end9

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %salt, align 8, !tbaa !3
  store i8* %5, i8** %srp_usersalt, align 8, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %idxprom28) #6
  %cmp11 = icmp sgt i32 %verbose, 1
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %7 = load i8*, i8** %salt, align 8, !tbaa !3
  %8 = load i8*, i8** %srp_verifier, align 8, !tbaa !3
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i64 0, i64 0), i8* noundef %call5, i8* noundef %7, i8* noundef %8) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end9, %if.then13, %entry
  %gNid.0 = phi i8* [ %call5, %if.then13 ], [ %call5, %if.end9 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %0) #5
  ret i8* %gNid.0
}

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @update_index(%struct.ca_db_st* nocapture noundef readonly %db, i8** nocapture noundef readonly %row) unnamed_addr #0 {
entry:
  %call = tail call i8* @app_malloc(i64 noundef 56, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i64 0, i64 0)) #6
  %0 = bitcast i8* %call to i8**
  %1 = load i8*, i8** %row, align 8, !tbaa !3
  store i8* %1, i8** %0, align 8, !tbaa !3
  %arrayidx.1 = getelementptr inbounds i8*, i8** %row, i64 1
  %2 = load i8*, i8** %arrayidx.1, align 8, !tbaa !3
  %arrayidx2.1 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %arrayidx2.1 to i8**
  store i8* %2, i8** %3, align 8, !tbaa !3
  %arrayidx.2 = getelementptr inbounds i8*, i8** %row, i64 2
  %4 = load i8*, i8** %arrayidx.2, align 8, !tbaa !3
  %arrayidx2.2 = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %arrayidx2.2 to i8**
  store i8* %4, i8** %5, align 8, !tbaa !3
  %arrayidx.3 = getelementptr inbounds i8*, i8** %row, i64 3
  %6 = load i8*, i8** %arrayidx.3, align 8, !tbaa !3
  %arrayidx2.3 = getelementptr inbounds i8, i8* %call, i64 24
  %7 = bitcast i8* %arrayidx2.3 to i8**
  store i8* %6, i8** %7, align 8, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i8*, i8** %row, i64 4
  %8 = load i8*, i8** %arrayidx.4, align 8, !tbaa !3
  %arrayidx2.4 = getelementptr inbounds i8, i8* %call, i64 32
  %9 = bitcast i8* %arrayidx2.4 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !3
  %arrayidx.5 = getelementptr inbounds i8*, i8** %row, i64 5
  %10 = load i8*, i8** %arrayidx.5, align 8, !tbaa !3
  %arrayidx2.5 = getelementptr inbounds i8, i8* %call, i64 40
  %11 = bitcast i8* %arrayidx2.5 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds i8, i8* %call, i64 48
  %12 = bitcast i8* %arrayidx3 to i8**
  store i8* null, i8** %12, align 8, !tbaa !3
  %db4 = getelementptr inbounds %struct.ca_db_st, %struct.ca_db_st* %db, i64 0, i32 1
  %13 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %call5 = tail call i32 @TXT_DB_insert(%struct.txt_db_st* noundef %13, i8** noundef nonnull %0) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i64 0, i64 0)) #6
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %16 = load %struct.txt_db_st*, %struct.txt_db_st** %db4, align 8, !tbaa !9
  %error = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %16, i64 0, i32 4
  %17 = load i64, i64* %error, align 8, !tbaa !27
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.98, i64 0, i64 0), i64 noundef %17) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 108) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @srp_verify_user(i8* noundef %user, i8* noundef %srp_verifier, i8* noundef %srp_usersalt, i8* noundef %g, i8* noundef %N, i8* noundef %passin, i32 noundef %verbose) unnamed_addr #0 {
entry:
  %srp_usersalt.addr = alloca i8*, align 8
  %password = alloca [1025 x i8], align 16
  %cb_tmp = alloca %struct.pw_cb_data, align 8
  %verifier = alloca i8*, align 8
  store i8* %srp_usersalt, i8** %srp_usersalt.addr, align 8, !tbaa !3
  %0 = getelementptr inbounds [1025 x i8], [1025 x i8]* %password, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %0) #5
  %1 = bitcast %struct.pw_cb_data* %cb_tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #5
  %2 = bitcast i8** %verifier to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i8* null, i8** %verifier, align 8, !tbaa !3
  %prompt_info = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_tmp, i64 0, i32 1
  store i8* %user, i8** %prompt_info, align 8, !tbaa !24
  %password1 = getelementptr inbounds %struct.pw_cb_data, %struct.pw_cb_data* %cb_tmp, i64 0, i32 0
  store i8* %passin, i8** %password1, align 8, !tbaa !26
  %call = call i32 @password_callback(i8* noundef nonnull %0, i32 noundef 1024, i32 noundef 0, %struct.pw_cb_data* noundef nonnull %cb_tmp) #6
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %idxprom33 = zext i32 %call to i64
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %password, i64 0, i64 %idxprom33
  store i8 0, i8* %arrayidx, align 1, !tbaa !18
  %tobool.not = icmp eq i32 %verbose, 0
  br i1 %tobool.not, label %if.end8, label %if.end

if.end:                                           ; preds = %if.then
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call3 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.99, i64 0, i64 0), i8* noundef %user, i8* noundef %srp_verifier, i8* noundef %srp_usersalt, i8* noundef %g, i8* noundef %N) #6
  %cmp4 = icmp sgt i32 %verbose, 1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call7 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i64 0, i64 0), i8* noundef nonnull %0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then5, %if.end
  %cmp9.not = icmp eq i8* %srp_usersalt, null
  br i1 %cmp9.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end8
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 145) #9
  unreachable

cond.end:                                         ; preds = %if.end8
  %call11 = call i8* @SRP_create_verifier(i8* noundef %user, i8* noundef nonnull %0, i8** noundef nonnull %srp_usersalt.addr, i8** noundef nonnull %verifier, i8* noundef %N, i8* noundef %g) #6
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %cond.end
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call14 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.102, i64 0, i64 0)) #6
  br label %if.end19

if.else:                                          ; preds = %cond.end
  %6 = load i8*, i8** %verifier, align 8, !tbaa !3
  %call15 = call i32 @strcmp(i8* noundef %6, i8* noundef %srp_verifier) #8
  %tobool16.not = icmp eq i32 %call15, 0
  %spec.select = select i1 %tobool16.not, i8* %call11, i8* null
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0), i32 noundef 152) #6
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %gNid.1 = phi i8* [ null, %if.then13 ], [ %spec.select, %if.else ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %idxprom33) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %entry
  %gNid.2 = phi i8* [ %gNid.1, %if.end19 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %0) #5
  ret i8* %gNid.2
}

declare dso_local i32 @save_index(i8* noundef, i8* noundef, %struct.ca_db_st* noundef) local_unnamed_addr #2

declare dso_local i32 @rotate_index(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @NCONF_free(%struct.conf_st* noundef) local_unnamed_addr #2

declare dso_local void @free_index(%struct.ca_db_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i8* @NCONF_get_string(%struct.conf_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @password_callback(i8* noundef, i32 noundef, i32 noundef, %struct.pw_cb_data* noundef) local_unnamed_addr #2

declare dso_local i8* @SRP_create_verifier(i8* noundef, i8* noundef, i8** noundef, i8** noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @TXT_DB_insert(%struct.txt_db_st* noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }

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
!9 = !{!10, !4, i64 8}
!10 = !{!"ca_db_st", !11, i64 0, !4, i64 8, !4, i64 16, !13, i64 24}
!11 = !{!"db_attr_st", !12, i64 0}
!12 = !{!"int", !5, i64 0}
!13 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !15, i64 72, !15, i64 88, !15, i64 104, !5, i64 120}
!14 = !{!"long", !5, i64 0}
!15 = !{!"timespec", !14, i64 0, !14, i64 8}
!16 = !{!17, !4, i64 8}
!17 = !{!"txt_db_st", !12, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !4, i64 56}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = !{!25, !4, i64 8}
!25 = !{!"pw_cb_data", !4, i64 0, !4, i64 8}
!26 = !{!25, !4, i64 0}
!27 = !{!17, !14, i64 32}
