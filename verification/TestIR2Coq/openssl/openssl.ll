; ModuleID = 'apps/openssl.c'
source_filename = "apps/openssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.options_st = type { i8*, i32, i32, i8* }
%struct.function_st = type { i32, i8*, i32 (i32, i8**)*, %struct.options_st*, i8*, i8* }
%struct.lhash_st_FUNCTION = type { %union.lh_FUNCTION_dummy }
%union.lh_FUNCTION_dummy = type { i8* }
%struct.ossl_init_settings_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.lhash_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_cipher_st = type opaque
%struct.DISPLAY_COLUMNS = type { i32, i32 }

@default_config_file = dso_local local_unnamed_addr global i8* null, align 8
@bio_in = dso_local local_unnamed_addr global %struct.bio_st* null, align 8
@bio_out = dso_local local_unnamed_addr global %struct.bio_st* null, align 8
@bio_err = dso_local local_unnamed_addr global %struct.bio_st* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"apps_startup\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"prog_init\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"FATAL: Startup failure (dev note: %s()) for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: could not get default config file\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"--h\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@help_argv = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [15 x i8] c"apps/openssl.c\00", align 1
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Usage: help [options] [command]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Name of command to display help (optional)\00", align 1
@help_options = dso_local constant [6 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1
@functions = external dso_local global [0 x %struct.function_st], align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"%s:\0A\0AStandard commands\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"\0AMessage Digest commands (see the `dgst' command for more details)\0A\00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"\0ACipher commands (see the `enc' command for more details)\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"OPENSSL_TEST_LIBCTX\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Invalid command '%s'; type \22help\22 for a list.\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"The command %s was deprecated in version %s.\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"The command %s is deprecated.\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c" Use '%s' instead.\00", align 1
@prog_init.ret = internal unnamed_addr global %struct.lhash_st_FUNCTION* null, align 8
@prog_init.prog_inited = internal unnamed_addr global i1 false, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %f = alloca %struct.function_st, align 8
  %0 = bitcast %struct.function_st* %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %call = tail call %struct.bio_st* @dup_bio_in(i32 noundef 32769) #9
  store %struct.bio_st* %call, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %call2 = tail call %struct.bio_st* @dup_bio_out(i32 noundef 32769) #9
  store %struct.bio_st* %call2, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call3 = tail call %struct.bio_st* @dup_bio_err(i32 noundef 32769) #9
  store %struct.bio_st* %call3, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call4 = tail call fastcc i32 @apps_startup() #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call fastcc %struct.lhash_st_FUNCTION* @prog_init() #10
  %cmp = icmp eq %struct.lhash_st_FUNCTION* %call5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %fname.0 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %lor.lhs.false ]
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %2 = load i8*, i8** %argv, align 8, !tbaa !3
  %call6 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %fname.0, i8* noundef %2) #9
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @ERR_print_errors(%struct.bio_st* noundef %3) #9
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %argv, align 8, !tbaa !3
  %call8 = tail call i8* @opt_progname(i8* noundef %4) #9
  %call9 = tail call i8* @CONF_get1_default_config_file() #9
  store i8* %call9, i8** @default_config_file, align 8, !tbaa !3
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  tail call void (i8*, ...) @app_bail_out(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call8) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %f, i64 0, i32 1
  store i8* %call8, i8** %name, align 8, !tbaa !7
  %call13 = call fastcc %struct.function_st* @lh_FUNCTION_retrieve(%struct.lhash_st_FUNCTION* noundef nonnull %call5, %struct.function_st* noundef nonnull %f) #10
  %cmp14 = icmp eq %struct.function_st* %call13, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %cmp16 = icmp sgt i32 %argc, 1
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then15
  %arrayidx17 = getelementptr inbounds i8*, i8** %argv, i64 1
  %5 = load i8*, i8** %arrayidx17, align 8, !tbaa !3
  %call18 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #11
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %land.end.thread, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.rhs
  %call22 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #11
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %land.end.thread, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call26 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #11
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %land.end.thread, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false24
  %call29 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #11
  %cmp30 = icmp eq i32 %call29, 0
  br label %land.end

land.end.thread:                                  ; preds = %lor.lhs.false24, %lor.lhs.false20, %land.rhs
  %dec75 = add nsw i32 %argc, -1
  br label %cond.end

land.end:                                         ; preds = %lor.rhs, %if.then15
  %6 = phi i1 [ false, %if.then15 ], [ %cmp30, %lor.rhs ]
  %dec = add nsw i32 %argc, -1
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv, i64 1
  %cmp31 = icmp eq i32 %dec, 1
  %or.cond = select i1 %cmp31, i1 true, i1 %6
  br i1 %or.cond, label %cond.end, label %cond.false

cond.false:                                       ; preds = %land.end
  %7 = load i8*, i8** %incdec.ptr, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %land.end.thread, %land.end, %cond.false
  %incdec.ptr80 = phi i8** [ %incdec.ptr, %cond.false ], [ %incdec.ptr, %land.end ], [ %arrayidx17, %land.end.thread ]
  %dec79 = phi i32 [ %dec, %cond.false ], [ %dec, %land.end ], [ %dec75, %land.end.thread ]
  %8 = phi i1 [ false, %cond.false ], [ %6, %land.end ], [ true, %land.end.thread ]
  %cond = phi i8* [ %7, %cond.false ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %land.end ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %land.end.thread ]
  %call35 = call i8* @opt_appname(i8* noundef %cond) #9
  br label %if.end37

if.else:                                          ; preds = %if.end12
  store i8* %call8, i8** %argv, align 8, !tbaa !3
  br label %if.end37

if.end37:                                         ; preds = %if.else, %cond.end
  %argv.addr.0 = phi i8** [ %incdec.ptr80, %cond.end ], [ %argv, %if.else ]
  %argc.addr.0 = phi i32 [ %dec79, %cond.end ], [ %argc, %if.else ]
  %global_help.0 = phi i1 [ %8, %cond.end ], [ false, %if.else ]
  %cmp38 = icmp eq i32 %argc.addr.0, 0
  %or.cond54 = select i1 %cmp38, i1 true, i1 %global_help.0
  br i1 %or.cond54, label %cond.true41, label %cond.false43

cond.true41:                                      ; preds = %if.end37
  %call42 = call fastcc i32 @do_cmd(%struct.lhash_st_FUNCTION* noundef nonnull %call5, i32 noundef 1, i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @help_argv, i64 0, i64 0)) #10
  br label %end

cond.false43:                                     ; preds = %if.end37
  %call44 = call fastcc i32 @do_cmd(%struct.lhash_st_FUNCTION* noundef nonnull %call5, i32 noundef %argc.addr.0, i8** noundef nonnull %argv.addr.0) #10
  br label %end

end:                                              ; preds = %cond.true41, %cond.false43, %if.then
  %prog.1 = phi %struct.lhash_st_FUNCTION* [ null, %if.then ], [ %call5, %cond.false43 ], [ %call5, %cond.true41 ]
  %ret.0 = phi i32 [ 1, %if.then ], [ %call44, %cond.false43 ], [ %call42, %cond.true41 ]
  %9 = load i8*, i8** @default_config_file, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 noundef 298) #9
  call fastcc void @lh_FUNCTION_free(%struct.lhash_st_FUNCTION* noundef %prog.1) #10
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 noundef 300) #9
  %call48 = call i32 @app_RAND_write() #9
  %tobool49.not = icmp eq i32 %call48, 0
  %spec.select = select i1 %tobool49.not, i32 1, i32 %ret.0
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %call52 = call i32 @BIO_free(%struct.bio_st* noundef %10) #9
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  call void @BIO_free_all(%struct.bio_st* noundef %11) #9
  call fastcc void @apps_shutdown() #10
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call53 = call i32 @BIO_free(%struct.bio_st* noundef %12) #9
  call void @exit(i32 noundef %spec.select) #12
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.bio_st* @dup_bio_in(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @dup_bio_out(i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @dup_bio_err(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @apps_startup() unnamed_addr #3 {
entry:
  %call = tail call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #9
  %call1 = tail call i32 @OPENSSL_init_ssl(i64 noundef 30272, %struct.ossl_init_settings_st* noundef null) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @setup_ui_method() #9
  %call3 = tail call i32 @setup_engine_loader() #9
  %call4 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0)) #9
  %cmp.not = icmp eq i8* %call4, null
  br i1 %cmp.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @strcmp(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #11
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.then5
  %call9 = tail call %struct.ossl_lib_ctx_st* @app_create_libctx() #9
  %cmp10 = icmp eq %struct.ossl_lib_ctx_st* %call9, null
  br i1 %cmp10, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then5, %if.then8, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %entry, %if.end14
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_FUNCTION* @prog_init() unnamed_addr #3 {
entry:
  %.b = load i1, i1* @prog_init.prog_inited, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct.lhash_st_FUNCTION*, %struct.lhash_st_FUNCTION** @prog_init.ret, align 8, !tbaa !3
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, i1* @prog_init.prog_inited, align 4
  %1 = load i8*, i8** getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), align 8, !tbaa !7
  %cmp.not20 = icmp eq i8* %1, null
  br i1 %cmp.not20, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end, %for.inc
  %i.022 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  %f.021 = phi %struct.function_st* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %if.end ]
  %incdec.ptr = getelementptr inbounds %struct.function_st, %struct.function_st* %f.021, i64 1
  %inc = add i64 %i.022, 1
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %f.021, i64 1, i32 1
  %2 = load i8*, i8** %name, align 8, !tbaa !7
  %cmp.not = icmp eq i8* %2, null
  br i1 %cmp.not, label %for.end, label %for.inc, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %if.end
  %i.0.lcssa = phi i64 [ 0, %if.end ], [ %inc, %for.inc ]
  tail call void @qsort(i8* noundef bitcast ([0 x %struct.function_st]* @functions to i8*), i64 noundef %i.0.lcssa, i64 noundef 48, i32 (i8*, i8*)* noundef nonnull @SortFnByName) #9
  %call = tail call fastcc %struct.lhash_st_FUNCTION* @lh_FUNCTION_new() #10
  store %struct.lhash_st_FUNCTION* %call, %struct.lhash_st_FUNCTION** @prog_init.ret, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.lhash_st_FUNCTION* %call, null
  br i1 %cmp1, label %cleanup, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end
  %3 = load i8*, i8** getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), align 8, !tbaa !7
  %cmp6.not23 = icmp eq i8* %3, null
  br i1 %cmp6.not23, label %cleanup, label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.cond4.preheader
  tail call fastcc void @lh_FUNCTION_insert(%struct.lhash_st_FUNCTION* noundef nonnull %call, %struct.function_st* noundef nonnull getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0)) #10
  %4 = load i8*, i8** getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 1, i32 1), align 8, !tbaa !7
  %cmp6.not26 = icmp eq i8* %4, null
  br i1 %cmp6.not26, label %for.end11.loopexit, label %for.body7.for.body7_crit_edge, !llvm.loop !11

for.body7.for.body7_crit_edge:                    ; preds = %for.body7.preheader, %for.body7.for.body7_crit_edge
  %f.12427 = phi %struct.function_st* [ %incdec.ptr10, %for.body7.for.body7_crit_edge ], [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %for.body7.preheader ]
  %incdec.ptr10 = getelementptr inbounds %struct.function_st, %struct.function_st* %f.12427, i64 1
  %.pre = load %struct.lhash_st_FUNCTION*, %struct.lhash_st_FUNCTION** @prog_init.ret, align 8, !tbaa !3
  tail call fastcc void @lh_FUNCTION_insert(%struct.lhash_st_FUNCTION* noundef %.pre, %struct.function_st* noundef nonnull %incdec.ptr10) #10
  %name5 = getelementptr inbounds %struct.function_st, %struct.function_st* %f.12427, i64 2, i32 1
  %5 = load i8*, i8** %name5, align 8, !tbaa !7
  %cmp6.not = icmp eq i8* %5, null
  br i1 %cmp6.not, label %for.end11.loopexit, label %for.body7.for.body7_crit_edge, !llvm.loop !11

for.end11.loopexit:                               ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %.pre25 = load %struct.lhash_st_FUNCTION*, %struct.lhash_st_FUNCTION** @prog_init.ret, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.cond4.preheader, %for.end11.loopexit, %for.end, %if.then
  %retval.0 = phi %struct.lhash_st_FUNCTION* [ %0, %if.then ], [ null, %for.end ], [ %.pre25, %for.end11.loopexit ], [ %call, %for.cond4.preheader ]
  ret %struct.lhash_st_FUNCTION* %retval.0
}

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local i8* @opt_progname(i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CONF_get1_default_config_file() local_unnamed_addr #2

declare dso_local void @app_bail_out(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.function_st* @lh_FUNCTION_retrieve(%struct.lhash_st_FUNCTION* noundef %lh, %struct.function_st* noundef %d) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.lhash_st_FUNCTION* %lh to %struct.lhash_st*
  %1 = bitcast %struct.function_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %0, i8* noundef %1) #9
  %2 = bitcast i8* %call to %struct.function_st*
  ret %struct.function_st* %2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i8* @opt_appname(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_cmd(%struct.lhash_st_FUNCTION* noundef %prog, i32 noundef %argc, i8** noundef %argv) unnamed_addr #3 {
entry:
  %f = alloca %struct.function_st, align 8
  %f.sroa.gep63 = getelementptr inbounds %struct.function_st, %struct.function_st* %f, i64 0, i32 4
  %0 = bitcast %struct.function_st* %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #8
  %cmp = icmp slt i32 %argc, 1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %argv, align 8, !tbaa !3
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %f, i64 0, i32 1
  store i8* %1, i8** %name, align 8, !tbaa !7
  %call = call fastcc %struct.function_st* @lh_FUNCTION_retrieve(%struct.lhash_st_FUNCTION* noundef %prog, %struct.function_st* noundef nonnull %f) #10
  %call.sroa.gep = getelementptr inbounds %struct.function_st, %struct.function_st* %call, i64 0, i32 4
  %cmp3 = icmp eq %struct.function_st* %call, null
  br i1 %cmp3, label %if.then4, label %if.then18

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %argv, align 8, !tbaa !3
  %call6 = call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %2) #9
  %tobool.not = icmp eq %struct.evp_md_st* %call6, null
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then4
  %type = getelementptr inbounds %struct.function_st, %struct.function_st* %f, i64 0, i32 0
  store i32 2, i32* %type, align 8, !tbaa !12
  br label %if.then18.sink.split

if.else:                                          ; preds = %if.then4
  %3 = load i8*, i8** %argv, align 8, !tbaa !3
  %call9 = call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %3) #9
  %tobool10.not = icmp eq %struct.evp_cipher_st* %call9, null
  br i1 %tobool10.not, label %if.end24, label %if.then11

if.then11:                                        ; preds = %if.else
  %type12 = getelementptr inbounds %struct.function_st, %struct.function_st* %f, i64 0, i32 0
  store i32 3, i32* %type12, align 8, !tbaa !12
  br label %if.then18.sink.split

if.then18.sink.split:                             ; preds = %if.then11, %if.then7
  %dgst_main.sink = phi i32 (i32, i8**)* [ @dgst_main, %if.then7 ], [ @enc_main, %if.then11 ]
  %func = getelementptr inbounds %struct.function_st, %struct.function_st* %f, i64 0, i32 2
  store i32 (i32, i8**)* %dgst_main.sink, i32 (i32, i8**)** %func, align 8, !tbaa !13
  br label %if.then18

if.then18:                                        ; preds = %if.then18.sink.split, %if.end
  %fp.0.ph = phi %struct.function_st* [ %call, %if.end ], [ %f, %if.then18.sink.split ]
  %fp.0.ph.sroa.phi = phi i8** [ %call.sroa.gep, %if.end ], [ %f.sroa.gep63, %if.then18.sink.split ]
  %4 = load i8*, i8** %fp.0.ph.sroa.phi, align 8, !tbaa !14
  %cmp19.not = icmp eq i8* %4, null
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.then18
  call fastcc void @warn_deprecated(%struct.function_st* noundef nonnull %fp.0.ph) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  %func22 = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.0.ph, i64 0, i32 2
  %5 = load i32 (i32, i8**)*, i32 (i32, i8**)** %func22, align 8, !tbaa !13
  %call23 = call i32 %5(i32 noundef %argc, i8** noundef nonnull %argv) #9
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %6 = load i8*, i8** %argv, align 8, !tbaa !3
  %call26 = call i32 @strncmp(i8* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 noundef 3) #11
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end40

if.then28:                                        ; preds = %if.end24
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 3
  store i8* %add.ptr, i8** %name, align 8, !tbaa !7
  %call31 = call fastcc %struct.function_st* @lh_FUNCTION_retrieve(%struct.lhash_st_FUNCTION* noundef %prog, %struct.function_st* noundef nonnull %f) #10
  %cmp32 = icmp eq %struct.function_st* %call31, null
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %8 = load i8*, i8** %argv, align 8, !tbaa !3
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.then28
  %call35 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* noundef %8) #9
  br label %cleanup

if.end36:                                         ; preds = %if.then28
  %add.ptr38 = getelementptr inbounds i8, i8* %8, i64 3
  %call39 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* noundef nonnull %add.ptr38) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end24
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call42 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i8* noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end40, %if.end36, %if.then33, %if.end21
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ 0, %if.then33 ], [ 1, %if.end36 ], [ 1, %if.end40 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_FUNCTION_free(%struct.lhash_st_FUNCTION* noundef %lh) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.lhash_st_FUNCTION* %lh to %struct.lhash_st*
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %0) #9
  ret void
}

declare dso_local i32 @app_RAND_write() local_unnamed_addr #2

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @apps_shutdown() unnamed_addr #3 {
entry:
  tail call void @app_providers_cleanup() #9
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #9
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #9
  tail call void @destroy_engine_loader() #9
  tail call void @destroy_ui_method() #9
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @help_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #3 {
entry:
  %dc = alloca %struct.DISPLAY_COLUMNS, align 4
  %new_argv = alloca [3 x i8*], align 16
  %0 = bitcast %struct.DISPLAY_COLUMNS* %dc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast [3 x i8*]* %new_argv to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([6 x %struct.options_st], [6 x %struct.options_st]* @help_options, i64 0, i64 0)) #9
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call1 = tail call i32 @opt_next() #9
  switch i32 %call1, label %while.cond [
    i32 0, label %while.end
    i32 -1, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %while.cond
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call) #9
  br label %cleanup

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([6 x %struct.options_st], [6 x %struct.options_st]* @help_options, i64 0, i64 0)) #9
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call4 = tail call i32 @opt_num_rest() #9
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call6 = tail call i8** @opt_rest() #9
  %3 = load i8*, i8** %call6, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %new_argv, i64 0, i64 0
  store i8* %3, i8** %arrayidx7, align 16, !tbaa !3
  %arrayidx8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %new_argv, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %arrayidx8, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %new_argv, i64 0, i64 2
  store i8* null, i8** %arrayidx9, align 16, !tbaa !3
  %call10 = tail call fastcc %struct.lhash_st_FUNCTION* @prog_init() #10
  %call11 = call fastcc i32 @do_cmd(%struct.lhash_st_FUNCTION* noundef %call10, i32 noundef 2, i8** noundef nonnull %arrayidx7) #10
  br label %cleanup

if.end:                                           ; preds = %while.end
  %call12 = tail call i32 @opt_num_rest() #9
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @calculate_columns(%struct.function_st* noundef getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %struct.DISPLAY_COLUMNS* noundef nonnull %dc) #9
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call17 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call) #9
  %6 = load i8*, i8** getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), align 8, !tbaa !7
  %cmp18.not64 = icmp eq i8* %6, null
  br i1 %cmp18.not64, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end16
  %columns = getelementptr inbounds %struct.DISPLAY_COLUMNS, %struct.DISPLAY_COLUMNS* %dc, i64 0, i32 0
  %width = getelementptr inbounds %struct.DISPLAY_COLUMNS, %struct.DISPLAY_COLUMNS* %dc, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end37
  %name70 = phi i8** [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0, i32 1), %for.body.lr.ph ], [ %name, %if.end37 ]
  %fp.067 = phi %struct.function_st* [ getelementptr inbounds ([0 x %struct.function_st], [0 x %struct.function_st]* @functions, i64 0, i64 0), %for.body.lr.ph ], [ %incdec.ptr, %if.end37 ]
  %tp.066 = phi i32 [ 0, %for.body.lr.ph ], [ %tp.1, %if.end37 ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %if.end37 ]
  %inc = add nsw i32 %i.065, 1
  %7 = load i32, i32* %columns, align 4, !tbaa !15
  %rem = srem i32 %i.065, %7
  %cmp19 = icmp eq i32 %rem, 0
  br i1 %cmp19, label %if.end22, label %if.end22.thread

if.end22:                                         ; preds = %for.body
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call21 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #9
  %type = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.067, i64 0, i32 0
  %9 = load i32, i32* %type, align 8, !tbaa !12
  %cmp23.not = icmp eq i32 %9, %tp.066
  br i1 %cmp23.not, label %if.end37, label %if.end28

if.end22.thread:                                  ; preds = %for.body
  %type62 = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.067, i64 0, i32 0
  %10 = load i32, i32* %type62, align 8, !tbaa !12
  %cmp23.not63 = icmp eq i32 %10, %tp.066
  br i1 %cmp23.not63, label %if.end37, label %if.then26

if.then26:                                        ; preds = %if.end22.thread
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call27 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #9
  br label %if.end28

if.end28:                                         ; preds = %if.end22, %if.then26
  %12 = phi i32 [ %10, %if.then26 ], [ %9, %if.end22 ]
  switch i32 %12, label %if.end37 [
    i32 2, label %if.end37.sink.split
    i32 3, label %if.then33
  ]

if.then33:                                        ; preds = %if.end28
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.end28, %if.then33
  %.sink71 = phi i8* [ getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), %if.then33 ], [ getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), %if.end28 ]
  %tp.1.ph = phi i32 [ 3, %if.then33 ], [ %12, %if.end28 ]
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call31 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef %.sink71) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.end22.thread, %if.end28, %if.end22
  %i.1 = phi i32 [ %inc, %if.end22 ], [ %inc, %if.end28 ], [ %inc, %if.end22.thread ], [ 1, %if.end37.sink.split ]
  %tp.1 = phi i32 [ %tp.066, %if.end22 ], [ %12, %if.end28 ], [ %tp.066, %if.end22.thread ], [ %tp.1.ph, %if.end37.sink.split ]
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %15 = load i32, i32* %width, align 4, !tbaa !18
  %16 = load i8*, i8** %name70, align 8, !tbaa !7
  %call39 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 noundef %15, i8* noundef %16) #9
  %incdec.ptr = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.067, i64 1
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %fp.067, i64 1, i32 1
  %17 = load i8*, i8** %name, align 8, !tbaa !7
  %cmp18.not = icmp eq i8* %17, null
  br i1 %cmp18.not, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %if.end37, %if.end16
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call40 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then14, %if.then, %sw.bb3, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %sw.bb ], [ %call11, %if.then ], [ 1, %if.then14 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local void @calculate_columns(%struct.function_st* noundef, %struct.DISPLAY_COLUMNS* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #6

declare dso_local i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #2

declare dso_local i32 @setup_ui_method() local_unnamed_addr #2

declare dso_local i32 @setup_engine_loader() local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) local_unnamed_addr #6

declare dso_local %struct.ossl_lib_ctx_st* @app_create_libctx() local_unnamed_addr #2

declare dso_local i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #2

declare dso_local void @app_providers_cleanup() local_unnamed_addr #2

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare dso_local %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #2

declare dso_local void @destroy_engine_loader() local_unnamed_addr #2

declare dso_local void @destroy_ui_method() local_unnamed_addr #2

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @dgst_main(i32 noundef, i8** noundef) #2

declare dso_local %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #2

declare dso_local i32 @enc_main(i32 noundef, i8** noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @warn_deprecated(%struct.function_st* nocapture noundef readonly %fp) unnamed_addr #3 {
entry:
  %deprecated_version = getelementptr inbounds %struct.function_st, %struct.function_st* %fp, i64 0, i32 5
  %0 = load i8*, i8** %deprecated_version, align 8, !tbaa !20
  %cmp.not = icmp eq i8* %0, null
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %name2 = getelementptr inbounds %struct.function_st, %struct.function_st* %fp, i64 0, i32 1
  %2 = load i8*, i8** %name2, align 8, !tbaa !7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i8* noundef %2, i8* noundef nonnull %0) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i8* noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %deprecated_alternative = getelementptr inbounds %struct.function_st, %struct.function_st* %fp, i64 0, i32 4
  %3 = load i8*, i8** %deprecated_alternative, align 8, !tbaa !14
  %call4 = tail call i32 @strcmp(i8* noundef %3, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #11
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8* noundef %3) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call10 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @SortFnByName(i8* nocapture noundef readonly %_f1, i8* nocapture noundef readonly %_f2) #7 {
entry:
  %type = bitcast i8* %_f1 to i32*
  %0 = load i32, i32* %type, align 8, !tbaa !12
  %type1 = bitcast i8* %_f2 to i32*
  %1 = load i32, i32* %type1, align 8, !tbaa !12
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i32 %0, %1
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds i8, i8* %_f1, i64 8
  %2 = bitcast i8* %name to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !7
  %name4 = getelementptr inbounds i8, i8* %_f2, i64 8
  %4 = bitcast i8* %name4 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !7
  %call = tail call i32 @strcmp(i8* noundef %3, i8* noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_st_FUNCTION* @lh_FUNCTION_new() unnamed_addr #3 {
entry:
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef bitcast (i64 (%struct.function_st*)* @function_hash to i64 (i8*)*), i32 (i8*, i8*)* noundef bitcast (i32 (%struct.function_st*, %struct.function_st*)* @function_cmp to i32 (i8*, i8*)*)) #9
  %0 = bitcast %struct.lhash_st* %call to %struct.lhash_st_FUNCTION*
  ret %struct.lhash_st_FUNCTION* %0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @function_hash(%struct.function_st* nocapture noundef readonly %a) #3 {
entry:
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %a, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !7
  %call = tail call i64 @OPENSSL_LH_strhash(i8* noundef %0) #9
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @function_cmp(%struct.function_st* nocapture noundef readonly %a, %struct.function_st* nocapture noundef readonly %b) #7 {
entry:
  %name = getelementptr inbounds %struct.function_st, %struct.function_st* %a, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !7
  %name1 = getelementptr inbounds %struct.function_st, %struct.function_st* %b, i64 0, i32 1
  %1 = load i8*, i8** %name1, align 8, !tbaa !7
  %call = tail call i32 @strncmp(i8* noundef %0, i8* noundef %1, i64 noundef 8) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @lh_FUNCTION_insert(%struct.lhash_st_FUNCTION* noundef %lh, %struct.function_st* noundef %d) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.lhash_st_FUNCTION* %lh to %struct.lhash_st*
  %1 = bitcast %struct.function_st* %d to i8*
  %call = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %0, i8* noundef %1) #9
  ret void
}

declare dso_local %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

declare dso_local i64 @OPENSSL_LH_strhash(i8* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"function_st", !5, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!8, !5, i64 0}
!13 = !{!8, !4, i64 16}
!14 = !{!8, !4, i64 32}
!15 = !{!16, !17, i64 0}
!16 = !{!"", !17, i64 0, !17, i64 4}
!17 = !{!"int", !5, i64 0}
!18 = !{!16, !17, i64 4}
!19 = distinct !{!19, !10}
!20 = !{!8, !4, i64 40}
