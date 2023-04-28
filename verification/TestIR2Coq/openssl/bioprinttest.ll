; ModuleID = 'test/bioprinttest.c'
source_filename = "test/bioprinttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.pw_st = type { i32, i8* }
%struct.z_data_st = type { i64, i8*, i8* }
%struct.j_data_st = type { i64, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@test_get_options.options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Output values\00", align 1
@justprint = internal unnamed_addr global i1 false, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"test_big\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"test_fp\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"test_zu\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"test_j\00", align 1
@bio_out = dso_local local_unnamed_addr global %struct.bio_st* null, align 8
@bio_err = dso_local local_unnamed_addr global %struct.bio_st* null, align 8
@tap_level = internal unnamed_addr global i32 0, align 4
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"%*s# \00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"test/bioprinttest.c\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"BIO_snprintf(buf, sizeof(buf), \22%f\\n\22, 2 * (double)ULONG_MAX)\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@pw_params = internal unnamed_addr constant [7 x %struct.pw_st] [%struct.pw_st { i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0) }, %struct.pw_st { i32 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0) }, %struct.pw_st { i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0) }, %struct.pw_st { i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0) }, %struct.pw_st { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0) }, %struct.pw_st { i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0) }, %struct.pw_st { i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0) }], align 16
@.str.27 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"dofptest(i, t++, 0.0, pwp->w, pwp->p)\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"dofptest(i, t++, 0.67, pwp->w, pwp->p)\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"dofptest(i, t++, frac, pwp->w, pwp->p)\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"dofptest(i, t++, frac / 1000, pwp->w, pwp->p)\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"dofptest(i, t++, frac / 10000, pwp->w, pwp->p)\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"dofptest(i, t++, 6.0 + frac, pwp->w, pwp->p)\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"dofptest(i, t++, 66.0 + frac, pwp->w, pwp->p)\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"dofptest(i, t++, 666.0 + frac, pwp->w, pwp->p)\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"dofptest(i, t++, 6666.0 + frac, pwp->w, pwp->p)\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"dofptest(i, t++, 66666.0 + frac, pwp->w, pwp->p)\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"    },\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@dofptest.fspecs = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0)], align 16
@.str.41 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"%%%s.%d%s\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%%%s%s\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"    /*  %d%d */ { \22%s\22\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c", \22%s\22\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"fpexpected[test][sub][i]\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@fpexpected = internal unnamed_addr constant [7 x [10 x [5 x i8*]]] [[10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0)]], [10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0)]], [10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.149, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.156, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.160, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.164, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0)]], [10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.178, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.196, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0)]], [10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.210, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.210, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.217, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.221, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.226, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.228, i32 0, i32 0)]], [10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.236, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.240, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.253, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.257, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.261, i32 0, i32 0)]], [10 x [5 x i8*]] [[5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.264, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.266, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.271, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.273, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.274, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.275, i32 0, i32 0)], [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0)]]], align 16
@.str.52 = private unnamed_addr constant [39 x i8] c"test %d format=|%s| exp=|%s|, ret=|%s|\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c" },\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"0.0000e+00\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"0.0000\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"0.0000E+00\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"6.7000e-01\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"0.6700\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"0.67\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"6.7000E-01\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"6.6667e-01\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"0.6667\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"6.6667E-01\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"6.6667e-04\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"0.0007\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"0.0006667\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"6.6667E-04\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"6.6667e-05\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"0.0001\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"6.667e-05\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"6.6667E-05\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"6.667E-05\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"6.6667e+00\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"6.6667\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"6.667\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"6.6667E+00\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"6.6667e+01\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"66.6667\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"66.67\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"6.6667E+01\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"6.6667e+02\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"666.6667\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"666.7\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"6.6667E+02\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"6.6667e+03\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"6666.6667\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"6667\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"6.6667E+03\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"6.6667e+04\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"66666.6667\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"6.667e+04\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"6.6667E+04\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"6.667E+04\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"0.00000e+00\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"0.00000\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"0.00000E+00\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"6.70000e-01\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"0.67000\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"6.70000E-01\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"6.66667e-01\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"0.66667\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"6.66667E-01\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"6.66667e-04\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"0.00067\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"0.00066667\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"6.66667E-04\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"6.66667e-05\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"0.00007\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"6.66667E-05\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"6.66667e+00\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"6.66667\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"6.66667E+00\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"6.66667e+01\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"66.66667\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"66.667\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"6.66667E+01\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"6.66667e+02\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"666.66667\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"666.67\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"6.66667E+02\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"6.66667e+03\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"6666.66667\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"6666.7\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"6.66667E+03\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"6.66667e+04\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"66666.66667\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"66667\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"6.66667E+04\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"  0.0000e+00\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"      0.0000\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"           0\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"  0.0000E+00\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"  6.7000e-01\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"      0.6700\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"        0.67\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"  6.7000E-01\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"  6.6667e-01\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"      0.6667\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"  6.6667E-01\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"  6.6667e-04\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"      0.0007\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"   0.0006667\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"  6.6667E-04\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"  6.6667e-05\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"      0.0001\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"   6.667e-05\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"  6.6667E-05\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"   6.667E-05\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"  6.6667e+00\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"      6.6667\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"       6.667\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"  6.6667E+00\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"  6.6667e+01\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"     66.6667\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"       66.67\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"  6.6667E+01\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"  6.6667e+02\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"    666.6667\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"       666.7\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"  6.6667E+02\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"  6.6667e+03\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"   6666.6667\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"        6667\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"  6.6667E+03\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"  6.6667e+04\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"  66666.6667\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"   6.667e+04\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"  6.6667E+04\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"   6.667E+04\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c" 0.00000e+00\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"     0.00000\00", align 1
@.str.173 = private unnamed_addr constant [13 x i8] c" 0.00000E+00\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c" 6.70000e-01\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"     0.67000\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c" 6.70000E-01\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c" 6.66667e-01\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"     0.66667\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c" 6.66667E-01\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c" 6.66667e-04\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"     0.00067\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"  0.00066667\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c" 6.66667E-04\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c" 6.66667e-05\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"     0.00007\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c" 6.66667E-05\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c" 6.66667e+00\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"     6.66667\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c" 6.66667E+00\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c" 6.66667e+01\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"    66.66667\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"      66.667\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c" 6.66667E+01\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c" 6.66667e+02\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"   666.66667\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"      666.67\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c" 6.66667E+02\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c" 6.66667e+03\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"  6666.66667\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"      6666.7\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c" 6.66667E+03\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c" 6.66667e+04\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c" 66666.66667\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"       66667\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c" 6.66667E+04\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"0e+00\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"0E+00\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"7e-01\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"0.7\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"7E-01\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"7e-04\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"7E-04\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"7e-05\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"7E-05\00", align 1
@.str.216 = private unnamed_addr constant [6 x i8] c"7e+00\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"7E+00\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"7e+01\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"67\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"7E+01\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"7e+02\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"667\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"7E+02\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"7e+03\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"7E+03\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"7e+04\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"7E+04\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"0.000000e+00\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"0.000000\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"0.000000E+00\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"6.700000e-01\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"0.670000\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"6.700000E-01\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"6.666667e-01\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"0.666667\00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"6.666667E-01\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"6.666667e-04\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"0.000667\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"0.000666667\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"6.666667E-04\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"6.666667e-05\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"0.000067\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"6.666667E-05\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"6.666667e+00\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"6.666667\00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"6.666667E+00\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"6.666667e+01\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"66.666667\00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"6.666667E+01\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"6.666667e+02\00", align 1
@.str.252 = private unnamed_addr constant [11 x i8] c"666.666667\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"666.667\00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"6.666667E+02\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"6.666667e+03\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"6666.666667\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"6666.67\00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"6.666667E+03\00", align 1
@.str.259 = private unnamed_addr constant [13 x i8] c"6.666667e+04\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"66666.666667\00", align 1
@.str.261 = private unnamed_addr constant [8 x i8] c"66666.7\00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"6.666667E+04\00", align 1
@.str.263 = private unnamed_addr constant [9 x i8] c"000.0000\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"000.6700\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"00000.67\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"000.6667\00", align 1
@.str.268 = private unnamed_addr constant [9 x i8] c"000.0007\00", align 1
@.str.269 = private unnamed_addr constant [9 x i8] c"000.0001\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"006.6667\00", align 1
@.str.271 = private unnamed_addr constant [9 x i8] c"0006.667\00", align 1
@.str.272 = private unnamed_addr constant [9 x i8] c"066.6667\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"00066.67\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"000666.7\00", align 1
@.str.275 = private unnamed_addr constant [9 x i8] c"00006667\00", align 1
@zu_data = internal unnamed_addr constant [4 x %struct.z_data_st] [%struct.z_data_st { i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.279, i32 0, i32 0) }, %struct.z_data_st { i64 -9223372036854775808, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.281, i32 0, i32 0) }, %struct.z_data_st { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0) }, %struct.z_data_st { i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0) }], align 16
@.str.276 = private unnamed_addr constant [8 x i8] c"bio_buf\00", align 1
@.str.277 = private unnamed_addr constant [15 x i8] c"data->expected\00", align 1
@.str.278 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.279 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.280 = private unnamed_addr constant [4 x i8] c"%zi\00", align 1
@.str.281 = private unnamed_addr constant [21 x i8] c"-9223372036854775808\00", align 1
@jf_data = internal unnamed_addr constant [4 x %struct.j_data_st] [%struct.j_data_st { i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.279, i32 0, i32 0) }, %struct.j_data_st { i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.284, i32 0, i32 0) }, %struct.j_data_st { i64 -9223372036854775808, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.285, i32 0, i32 0) }, %struct.j_data_st { i64 -9223372036854775808, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.281, i32 0, i32 0) }], align 16
@.str.282 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.283 = private unnamed_addr constant [4 x i8] c"%jx\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"ffffffffffffffff\00", align 1
@.str.285 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"%ji\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #5
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  store i1 true, i1* @justprint, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_big) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 (i32)* noundef nonnull @test_fp, i32 noundef 7, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 (i32)* noundef nonnull @test_zu, i32 noundef 4, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_j, i32 noundef 4, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_big() #1 {
entry:
  %buf = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), double noundef 0x4400000000000000) #5
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call, i32 noundef -1) #5
  %tobool.not = icmp ne i32 %call1, 0
  %. = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %.
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fp(i32 noundef %i) #1 {
entry:
  %idxprom = sext i32 %i to i64
  %.b129 = load i1, i1* @justprint, align 4
  br i1 %.b129, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %w = getelementptr inbounds [7 x %struct.pw_st], [7 x %struct.pw_st]* @pw_params, i64 0, i64 %idxprom, i32 1
  %0 = load i8*, i8** %w, align 8, !tbaa !5
  %p = getelementptr inbounds [7 x %struct.pw_st], [7 x %struct.pw_st]* @pw_params, i64 0, i64 %idxprom, i32 0
  %1 = load i32, i32* %p, align 16, !tbaa !11
  %call1 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 0, double noundef 0.000000e+00, i8* noundef %0, i32 noundef %1) #7
  %cmp = icmp ne i32 %call1, 0
  %conv = zext i1 %cmp to i32
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 1, double noundef 6.700000e-01, i8* noundef %0, i32 noundef %1) #7
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv9) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call16 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 2, double noundef 0x3FE5555555555555, i8* noundef %0, i32 noundef %1) #7
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv18) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true12
  %call25 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 3, double noundef 0x3F45D867C3ECE2A5, i8* noundef %0, i32 noundef %1) #7
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv27) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.end, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true21
  %call34 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 4, double noundef 0x3F1179EC9CBD821D, i8* noundef %0, i32 noundef %1) #7
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv36) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.end, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true30
  %call43 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 5, double noundef 0x401AAAAAAAAAAAAB, i8* noundef %0, i32 noundef %1) #7
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv45) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.end, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true39
  %call52 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 6, double noundef 0x4050AAAAAAAAAAAB, i8* noundef %0, i32 noundef %1) #7
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv54) #5
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.end, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %land.lhs.true48
  %call61 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 7, double noundef 0x4084D55555555555, i8* noundef %0, i32 noundef %1) #7
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv63) #5
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.end, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true57
  %call70 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 8, double noundef 0x40BA0AAAAAAAAAAB, i8* noundef %0, i32 noundef %1) #7
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv72) #5
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true66
  %call78 = tail call fastcc i32 @dofptest(i32 noundef %i, i32 noundef 9, double noundef 0x40F046AAAAAAAAAB, i8* noundef %0, i32 noundef %1) #7
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv80) #5
  %tobool82 = icmp ne i32 %call81, 0
  %phi.cast = zext i1 %tobool82 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true66, %land.lhs.true57, %land.lhs.true48, %land.lhs.true39, %land.lhs.true30, %land.lhs.true21, %land.lhs.true12, %land.lhs.true, %if.end
  %2 = phi i32 [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true57 ], [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  %.b = load i1, i1* @justprint, align 4
  br i1 %.b, label %if.then84, label %if.end86

if.then84:                                        ; preds = %land.end
  %call85 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0)) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %land.end
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_zu(i32 noundef %i) #1 {
entry:
  %bio_buf = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %bio_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %idxprom = sext i32 %i to i64
  %format = getelementptr inbounds [4 x %struct.z_data_st], [4 x %struct.z_data_st]* @zu_data, i64 0, i64 %idxprom, i32 1
  %1 = load i8*, i8** %format, align 8, !tbaa !12
  %value = getelementptr inbounds [4 x %struct.z_data_st], [4 x %struct.z_data_st]* @zu_data, i64 0, i64 %idxprom, i32 0
  %2 = load i64, i64* %value, align 8, !tbaa !15
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 79, i8* noundef %1, i64 noundef %2) #5
  %expected = getelementptr inbounds [4 x %struct.z_data_st], [4 x %struct.z_data_st]* @zu_data, i64 0, i64 %idxprom, i32 2
  %3 = load i8*, i8** %expected, align 8, !tbaa !16
  %call2 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.277, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %3) #5
  %tobool.not = icmp ne i32 %call2, 0
  %. = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_j(i32 noundef %i) #1 {
entry:
  %bio_buf = alloca [80 x i8], align 16
  %idxprom = sext i32 %i to i64
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %bio_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %format = getelementptr inbounds [4 x %struct.j_data_st], [4 x %struct.j_data_st]* @jf_data, i64 0, i64 %idxprom, i32 1
  %1 = load i8*, i8** %format, align 8, !tbaa !17
  %value = getelementptr inbounds [4 x %struct.j_data_st], [4 x %struct.j_data_st]* @jf_data, i64 0, i64 %idxprom, i32 0
  %2 = load i64, i64* %value, align 8, !tbaa !19
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 79, i8* noundef %1, i64 noundef %2) #5
  %expected = getelementptr inbounds [4 x %struct.j_data_st], [4 x %struct.j_data_st]* @jf_data, i64 0, i64 %idxprom, i32 2
  %3 = load i8*, i8** %expected, align 8, !tbaa !20
  %call2 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.277, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %3) #5
  %tobool.not = icmp ne i32 %call2, 0
  %. = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test_open_streams() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @test_adjust_streams_tap_level(i32 noundef %level) local_unnamed_addr #4 {
entry:
  store i32 %level, i32* @tap_level, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @test_close_streams() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_vprintf_stdout(i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %1 = load i32, i32* @tap_level, align 4, !tbaa !21
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %call1 = tail call i32 @vfprintf(%struct._IO_FILE* noundef %2, i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) #5
  %add = add nsw i32 %call1, %call
  ret i32 %add
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_vprintf_stderr(i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %1 = load i32, i32* @tap_level, align 4, !tbaa !21
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 noundef %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call1 = tail call i32 @vfprintf(%struct._IO_FILE* noundef %2, i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) #5
  %add = add nsw i32 %call1, %call
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_flush_stdout() local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %call = tail call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  ret i32 %call
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_flush_stderr() local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call = tail call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_vprintf_tapout(i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %1 = load i32, i32* @tap_level, align 4, !tbaa !21
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 noundef %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %call1 = tail call i32 @vfprintf(%struct._IO_FILE* noundef %2, i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) #5
  %add = add nsw i32 %call1, %call
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_vprintf_taperr(i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %1 = load i32, i32* @tap_level, align 4, !tbaa !21
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 noundef %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)) #5
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call1 = tail call i32 @vfprintf(%struct._IO_FILE* noundef %2, i8* noundef %fmt, %struct.__va_list_tag* noundef %ap) #5
  %add = add nsw i32 %call1, %call
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_flush_tapout() local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !22
  %call = tail call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_flush_taperr() local_unnamed_addr #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !22
  %call = tail call i32 @fflush(%struct._IO_FILE* noundef %0) #5
  ret i32 %call
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dofptest(i32 noundef %test, i32 noundef %sub, double noundef %val, i8* noundef %width, i32 noundef %prec) unnamed_addr #1 {
entry:
  %format = alloca [80 x i8], align 16
  %result = alloca [80 x i8], align 16
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %format, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #6
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #6
  %cmp1 = icmp sgt i32 %prec, -1
  %idxprom17 = sext i32 %test to i64
  %2 = zext i32 %sub to i64
  br i1 %cmp1, label %if.then.peel, label %if.else.peel

if.else.peel:                                     ; preds = %entry
  %call3.peel = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* noundef %width, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #5
  br label %if.end.peel

if.then.peel:                                     ; preds = %entry
  %call.peel = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8* noundef %width, i32 noundef %prec, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #5
  br label %if.end.peel

if.end.peel:                                      ; preds = %if.then.peel, %if.else.peel
  %call6.peel = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 80, i8* noundef nonnull %0, double noundef %val) #5
  %.b57.peel = load i1, i1* @justprint, align 4
  br i1 %.b57.peel, label %if.then9.peel, label %if.else16.peel

if.else16.peel:                                   ; preds = %if.end.peel
  %arrayidx22.peel = getelementptr inbounds [7 x [10 x [5 x i8*]]], [7 x [10 x [5 x i8*]]]* @fpexpected, i64 0, i64 %idxprom17, i64 %2, i64 0
  %3 = load i8*, i8** %arrayidx22.peel, align 8, !tbaa !22
  %call24.peel = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef %3, i8* noundef nonnull %1) #5
  %tobool25.not.peel = icmp eq i32 %call24.peel, 0
  br i1 %tobool25.not.peel, label %if.then26.peel, label %for.body.preheader

if.then26.peel:                                   ; preds = %if.else16.peel
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i32 noundef %test, i8* noundef nonnull %0, i8* noundef %3, i8* noundef nonnull %1) #5
  br label %for.body.preheader

if.then9.peel:                                    ; preds = %if.end.peel
  %call11.peel = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 noundef %test, i32 noundef %sub, i8* noundef nonnull %1) #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else16.peel, %if.then26.peel, %if.then9.peel
  %ret.060.ph = phi i32 [ 1, %if.then9.peel ], [ 0, %if.then26.peel ], [ 1, %if.else16.peel ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end36
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end36 ], [ 1, %for.body.preheader ]
  %ret.060 = phi i32 [ %ret.1, %if.end36 ], [ %ret.060.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* @dofptest.fspecs, i64 0, i64 %indvars.iv
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !22
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8* noundef %width, i32 noundef %prec, i8* noundef %4) #5
  br label %if.end

if.else:                                          ; preds = %for.body
  %call3 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* noundef %width, i8* noundef %4) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 80, i8* noundef nonnull %0, double noundef %val) #5
  %.b57 = load i1, i1* @justprint, align 4
  br i1 %.b57, label %if.else12, label %if.else16

if.else12:                                        ; preds = %if.end
  %call14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %1) #5
  br label %if.end36

if.else16:                                        ; preds = %if.end
  %arrayidx22 = getelementptr inbounds [7 x [10 x [5 x i8*]]], [7 x [10 x [5 x i8*]]]* @fpexpected, i64 0, i64 %idxprom17, i64 %2, i64 %indvars.iv
  %5 = load i8*, i8** %arrayidx22, align 8, !tbaa !22
  %call24 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i8* noundef %5, i8* noundef nonnull %1) #5
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end36

if.then26:                                        ; preds = %if.else16
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i32 noundef %test, i8* noundef nonnull %0, i8* noundef %5, i8* noundef nonnull %1) #5
  br label %if.end36

if.end36:                                         ; preds = %if.else16, %if.then26, %if.else12
  %ret.1 = phi i32 [ %ret.060, %if.else12 ], [ %ret.060, %if.else16 ], [ 0, %if.then26 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !23

for.end:                                          ; preds = %if.end36
  %.b = load i1, i1* @justprint, align 4
  br i1 %.b, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end
  %call39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0)) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #6
  ret i32 %ret.1
}

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !10, i64 8}
!6 = !{!"pw_st", !7, i64 0, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!13, !10, i64 8}
!13 = !{!"z_data_st", !14, i64 0, !10, i64 8, !10, i64 16}
!14 = !{!"long", !8, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!13, !10, i64 16}
!17 = !{!18, !10, i64 8}
!18 = !{!"j_data_st", !14, i64 0, !10, i64 8, !10, i64 16}
!19 = !{!18, !14, i64 0}
!20 = !{!18, !10, i64 16}
!21 = !{!7, !7, i64 0}
!22 = !{!10, !10, i64 0}
!23 = distinct !{!23, !4, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
