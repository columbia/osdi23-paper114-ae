; ModuleID = 'apps/engine.c'
source_filename = "apps/engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.util_store_cap_data = type { %struct.engine_st*, i8**, i32*, i32 }
%struct.engine_st = type opaque
%struct.stack_st = type opaque
%struct.stack_st_OPENSSL_CSTRING = type opaque
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.rsa_meth_st = type opaque
%struct.dsa_method = type opaque
%struct.dh_method = type opaque
%struct.rand_meth_st = type { i32 (i8*, i32)*, i32 (i8*, i32)*, void ()*, i32 (i8*, i32, double)*, i32 (i8*, i32)*, i32 ()* }
%struct.evp_cipher_st = type opaque
%struct.evp_md_st = type opaque
%struct.evp_pkey_method_st = type opaque
%struct.ossl_store_loader_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] engine...\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Check that specified engine is available\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Run command against the ENGINE before loading it\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Run command against the ENGINE after loading it\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"List 'control commands' For each specified engine\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"vv\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Also display each command's description\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"vvv\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Also add the input flags for each command\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"vvvv\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Also show internal input flags\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"List the capabilities of specified engine\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Display error trace for unavailable engines\00", align 1
@OPT_MORE_STR = external dso_local constant [0 x i8], align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Commands are like \22SO_PATH:/lib/libdriver.so\22\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"ID of engine(s) to load\00", align 1
@engine_options = dso_local constant [17 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 6, i32 115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 100, i32 45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 101, i32 45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 102, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 103, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_MORE_STR, i32 0, i32 0), i32 0, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.28 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"%s: Cannot mix flags and engine names.\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"(%s) %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Loaded: (%s) %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"RAND\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c" [%s]\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"apps/engine.c\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"[ available ]\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"[ unavailable ]\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [31 x i8] c"[Error]: internal stack error\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"[Error]: command name too long\0A\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"[Success]: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"[Failure]: %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"engine buffer\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"STORE(%s)\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"name buffer\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"description buffer\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"<no description>\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"%s%s(input flags): \00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"<no flags>\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"[Internal] \00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"NUMERIC\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"NO_INPUT\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"<0x%04X>\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"  <illegal flags!>\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @engine_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %cap_size = alloca i32, align 4
  %cap_buf = alloca i8*, align 8
  %nids = alloca i32*, align 8
  %store_ctx = alloca %struct.util_store_cap_data, align 8
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OPENSSL_CSTRING*
  %call1 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %1 = bitcast %struct.stack_st* %call1 to %struct.stack_st_OPENSSL_STRING*
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %2 = bitcast %struct.stack_st* %call2 to %struct.stack_st_OPENSSL_STRING*
  %call3 = tail call %struct.bio_st* @dup_bio_out(i32 noundef 32769) #6
  %cmp = icmp eq %struct.stack_st* %call, null
  %cmp4 = icmp eq %struct.stack_st* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  %cmp6 = icmp eq %struct.stack_st* %call2, null
  %or.cond274 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond274, label %end, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %argv, align 8, !tbaa !3
  %arrayidx7435 = getelementptr inbounds i8*, i8** %argv, i64 1
  %4 = load i8*, i8** %arrayidx7435, align 8, !tbaa !3
  %cmp8.not436 = icmp eq i8* %4, null
  br i1 %cmp8.not436, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end
  %5 = load i8, i8* %4, align 1, !tbaa !7
  %cmp9.not519 = icmp eq i8 %5, 45
  br i1 %cmp9.not519, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %land.rhs.preheader
  %call11 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %0) #7
  br label %while.body

land.rhs:                                         ; preds = %while.body
  %6 = load i8, i8* %8, align 1, !tbaa !7
  %cmp9.not = icmp eq i8 %6, 45
  br i1 %cmp9.not, label %while.end, label %while.body, !llvm.loop !8

while.body:                                       ; preds = %while.body.preheader, %land.rhs
  %argc.addr.0438521 = phi i32 [ %dec, %land.rhs ], [ %argc, %while.body.preheader ]
  %arrayidx7439520 = phi i8** [ %arrayidx7, %land.rhs ], [ %arrayidx7435, %while.body.preheader ]
  %7 = phi i8* [ %8, %land.rhs ], [ %4, %while.body.preheader ]
  %call13 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call11, i8* noundef nonnull %7) #6
  %dec = add nsw i32 %argc.addr.0438521, -1
  %arrayidx7 = getelementptr inbounds i8*, i8** %arrayidx7439520, i64 1
  %8 = load i8*, i8** %arrayidx7, align 8, !tbaa !3
  %cmp8.not = icmp eq i8* %8, null
  br i1 %cmp8.not, label %while.end, label %land.rhs, !llvm.loop !8

while.end:                                        ; preds = %while.body, %land.rhs, %land.rhs.preheader, %if.end
  %argv.addr.0.lcssa = phi i8** [ %argv, %if.end ], [ %argv, %land.rhs.preheader ], [ %arrayidx7439520, %land.rhs ], [ %arrayidx7439520, %while.body ]
  %argc.addr.0.lcssa = phi i32 [ %argc, %if.end ], [ %argc, %land.rhs.preheader ], [ %dec, %land.rhs ], [ %dec, %while.body ]
  store i8* %3, i8** %argv.addr.0.lcssa, align 8, !tbaa !3
  %call15 = tail call i8* @opt_init(i32 noundef %argc.addr.0.lcssa, i8** noundef nonnull %argv.addr.0.lcssa, %struct.options_st* noundef getelementptr inbounds ([17 x %struct.options_st], [17 x %struct.options_st]* @engine_options, i64 0, i64 0)) #6
  br label %while.cond16.outer

while.cond16.outer:                               ; preds = %sw.bb30, %while.end
  %test_avail_noise.0.ph = phi i32 [ %test_avail_noise.1, %sw.bb30 ], [ 0, %while.end ]
  %test_avail.0.ph = phi i32 [ %inc31, %sw.bb30 ], [ 0, %while.end ]
  %list_cap.0.ph = phi i32 [ %list_cap.0.ph535, %sw.bb30 ], [ 0, %while.end ]
  %verbose.0.ph = phi i32 [ %verbose.0.ph538, %sw.bb30 ], [ 0, %while.end ]
  br label %while.cond16.outer534

while.cond16.outer534:                            ; preds = %while.cond16, %while.cond16.outer
  %list_cap.0.ph535 = phi i32 [ %list_cap.0.ph, %while.cond16.outer ], [ 1, %while.cond16 ]
  %verbose.0.ph536 = phi i32 [ %verbose.0.ph, %while.cond16.outer ], [ %verbose.0.ph538, %while.cond16 ]
  br label %while.cond16.outer537

while.cond16.outer537:                            ; preds = %while.cond16.outer534, %sw.bb23
  %verbose.0.ph538 = phi i32 [ %verbose.0.ph536, %while.cond16.outer534 ], [ %spec.select, %sw.bb23 ]
  br label %while.cond16

while.cond16:                                     ; preds = %while.cond16.backedge, %while.cond16.outer537
  %call17 = tail call i32 @opt_next() #6
  switch i32 %call17, label %while.cond16.backedge [
    i32 0, label %while.end42
    i32 6, label %sw.bb37
    i32 -1, label %sw.bb
    i32 1, label %sw.bb22
    i32 103, label %sw.bb23
    i32 102, label %sw.bb23
    i32 101, label %sw.bb23
    i32 100, label %sw.bb23
    i32 2, label %while.cond16.outer534
    i32 4, label %sw.bb29
    i32 3, label %sw.bb30
    i32 5, label %sw.bb32
  ], !llvm.loop !10

while.cond16.backedge:                            ; preds = %while.cond16, %sw.bb37, %sw.bb32
  br label %while.cond16, !llvm.loop !10

sw.bb:                                            ; preds = %while.cond16
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call21 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* noundef %3) #6
  br label %end

sw.bb22:                                          ; preds = %while.cond16
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([17 x %struct.options_st], [17 x %struct.options_st]* @engine_options, i64 0, i64 0)) #6
  br label %end

sw.bb23:                                          ; preds = %while.cond16, %while.cond16, %while.cond16, %while.cond16
  %add = add nsw i32 %call17, -99
  %cmp24 = icmp slt i32 %verbose.0.ph538, %add
  %spec.select = select i1 %cmp24, i32 %add, i32 %verbose.0.ph538
  br label %while.cond16.outer537, !llvm.loop !10

sw.bb29:                                          ; preds = %while.cond16
  %inc = add nsw i32 %test_avail_noise.0.ph, 1
  br label %sw.bb30

sw.bb30:                                          ; preds = %while.cond16, %sw.bb29
  %test_avail_noise.1 = phi i32 [ %inc, %sw.bb29 ], [ %test_avail_noise.0.ph, %while.cond16 ]
  %inc31 = add nuw nsw i32 %test_avail.0.ph, 1
  br label %while.cond16.outer, !llvm.loop !10

sw.bb32:                                          ; preds = %while.cond16
  %call33 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %1) #7
  %call34 = tail call i8* @opt_arg() #6
  %call36 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call33, i8* noundef %call34) #6
  br label %while.cond16.backedge

sw.bb37:                                          ; preds = %while.cond16
  %call38 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #7
  %call39 = tail call i8* @opt_arg() #6
  %call41 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call38, i8* noundef %call39) #6
  br label %while.cond16.backedge

while.end42:                                      ; preds = %while.cond16
  %call43 = tail call i32 @opt_num_rest() #6
  %call44 = tail call i8** @opt_rest() #6
  %10 = load i8*, i8** %call44, align 8, !tbaa !3
  %tobool.not443 = icmp eq i8* %10, null
  br i1 %tobool.not443, label %for.end, label %for.body

for.body:                                         ; preds = %while.end42, %if.end51
  %11 = phi i8* [ %15, %if.end51 ], [ %10, %while.end42 ]
  %argv.addr.1444 = phi i8** [ %incdec.ptr55, %if.end51 ], [ %call44, %while.end42 ]
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %cmp46 = icmp eq i8 %12, 45
  br i1 %cmp46, label %if.then48, label %if.end51

if.then48:                                        ; preds = %for.body
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* noundef %3) #6
  %14 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call50 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %14, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* noundef %3) #6
  br label %end

if.end51:                                         ; preds = %for.body
  %call52 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %0) #7
  %call54 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call52, i8* noundef nonnull %11) #6
  %incdec.ptr55 = getelementptr inbounds i8*, i8** %argv.addr.1444, i64 1
  %15 = load i8*, i8** %incdec.ptr55, align 8, !tbaa !3
  %tobool.not = icmp eq i8* %15, null
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %if.end51, %while.end42
  %call56 = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %0) #7
  %call57 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56) #6
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end73

if.then60:                                        ; preds = %for.end
  %call61 = tail call %struct.engine_st* @ENGINE_get_first() #6
  %cmp63.not445 = icmp eq %struct.engine_st* %call61, null
  br i1 %cmp63.not445, label %if.end73, label %for.body65.lr.ph

for.body65.lr.ph:                                 ; preds = %if.then60
  %call66 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %0) #7
  br label %for.body65

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %e.0446 = phi %struct.engine_st* [ %call61, %for.body65.lr.ph ], [ %call71, %for.body65 ]
  %call67 = tail call i8* @ENGINE_get_id(%struct.engine_st* noundef nonnull %e.0446) #6
  %call69 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call66, i8* noundef %call67) #6
  %call71 = tail call %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef nonnull %e.0446) #6
  %cmp63.not = icmp eq %struct.engine_st* %call71, null
  br i1 %cmp63.not, label %if.end73, label %for.body65, !llvm.loop !12

if.end73:                                         ; preds = %for.body65, %if.then60, %for.end
  %call76453 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56) #6
  %cmp77454 = icmp sgt i32 %call76453, 0
  br i1 %cmp77454, label %for.body79.lr.ph, label %end

for.body79.lr.ph:                                 ; preds = %if.end73
  %tobool97.not = icmp eq i32 %list_cap.0.ph535, 0
  %16 = bitcast i32* %cap_size to i8*
  %17 = bitcast i8** %cap_buf to i8*
  %18 = bitcast i32** %nids to i8*
  %19 = bitcast %struct.util_store_cap_data* %store_ctx to i8*
  %engine = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %store_ctx, i64 0, i32 0
  %cap_buf189 = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %store_ctx, i64 0, i32 1
  %cap_size190 = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %store_ctx, i64 0, i32 2
  %ok = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %store_ctx, i64 0, i32 3
  %tobool216.not = icmp eq i32 %test_avail.0.ph, 0
  %tobool225.not = icmp eq i32 %test_avail_noise.0.ph, 0
  %cmp230 = icmp sgt i32 %verbose.0.ph538, 0
  br label %for.body79

for.body79:                                       ; preds = %for.body79.lr.ph, %for.inc251
  %ret.0456 = phi i32 [ 0, %for.body79.lr.ph ], [ %ret.2400, %for.inc251 ]
  %i.0455 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc252, %for.inc251 ]
  %call81 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call56, i32 noundef %i.0455) #6
  %call82 = call %struct.engine_st* @ENGINE_by_id(i8* noundef %call81) #6
  %cmp83.not = icmp eq %struct.engine_st* %call82, null
  br i1 %cmp83.not, label %if.else241, label %if.then85

if.then85:                                        ; preds = %for.body79
  %call86 = call i8* @ENGINE_get_name(%struct.engine_st* noundef nonnull %call82) #6
  %call87 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8* noundef %call81, i8* noundef %call86) #6
  call fastcc void @util_do_cmds(%struct.engine_st* noundef nonnull %call82, %struct.stack_st_OPENSSL_STRING* noundef %1, %struct.bio_st* noundef %call3) #7
  %call88 = call i8* @ENGINE_get_id(%struct.engine_st* noundef nonnull %call82) #6
  %call89 = call i32 @strcmp(i8* noundef %call88, i8* noundef %call81) #8
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end96, label %if.then92

if.then92:                                        ; preds = %if.then85
  %call93 = call i8* @ENGINE_get_id(%struct.engine_st* noundef nonnull %call82) #6
  %call94 = call i8* @ENGINE_get_name(%struct.engine_st* noundef nonnull %call82) #6
  %call95 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call93, i8* noundef %call94) #6
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.then85
  br i1 %tobool97.not, label %if.end215, label %if.then98

if.then98:                                        ; preds = %if.end96
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #9
  store i32 256, i32* %cap_size, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #9
  store i8* null, i8** %cap_buf, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #9
  %call99 = call %struct.rsa_meth_st* @ENGINE_get_RSA(%struct.engine_st* noundef nonnull %call82) #6
  %cmp100.not = icmp eq %struct.rsa_meth_st* %call99, null
  br i1 %cmp100.not, label %if.end105, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then98
  %call102 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #7
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %cleanup205.thread, label %if.end105

if.end105:                                        ; preds = %land.lhs.true, %if.then98
  %call106 = call %struct.dsa_method* @ENGINE_get_DSA(%struct.engine_st* noundef nonnull %call82) #6
  %cmp107.not = icmp eq %struct.dsa_method* %call106, null
  br i1 %cmp107.not, label %if.end113, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %if.end105
  %call110 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #7
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup205.thread, label %if.end113

if.end113:                                        ; preds = %land.lhs.true109, %if.end105
  %call114 = call %struct.dh_method* @ENGINE_get_DH(%struct.engine_st* noundef nonnull %call82) #6
  %cmp115.not = icmp eq %struct.dh_method* %call114, null
  br i1 %cmp115.not, label %if.end121, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end113
  %call118 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #7
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %cleanup205.thread, label %if.end121

if.end121:                                        ; preds = %land.lhs.true117, %if.end113
  %call122 = call %struct.rand_meth_st* @ENGINE_get_RAND(%struct.engine_st* noundef nonnull %call82) #6
  %cmp123.not = icmp eq %struct.rand_meth_st* %call122, null
  br i1 %cmp123.not, label %if.end129, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %if.end121
  %call126 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #7
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %cleanup205.thread, label %if.end129

if.end129:                                        ; preds = %land.lhs.true125, %if.end121
  %call130 = call i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* @ENGINE_get_ciphers(%struct.engine_st* noundef nonnull %call82) #6
  %cmp131 = icmp eq i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* %call130, null
  br i1 %cmp131, label %skip_ciphers, label %if.end134

if.end134:                                        ; preds = %if.end129
  %call135 = call i32 %call130(%struct.engine_st* noundef nonnull %call82, %struct.evp_cipher_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #6
  %cmp137447 = icmp sgt i32 %call135, 0
  br i1 %cmp137447, label %for.body139.preheader, label %skip_ciphers

for.body139.preheader:                            ; preds = %if.end134
  %wide.trip.count = zext i32 %call135 to i64
  br label %for.body139

for.cond136:                                      ; preds = %for.body139
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %skip_ciphers, label %for.body139, !llvm.loop !15

for.body139:                                      ; preds = %for.body139.preheader, %for.cond136
  %indvars.iv = phi i64 [ 0, %for.body139.preheader ], [ %indvars.iv.next, %for.cond136 ]
  %20 = load i32*, i32** %nids, align 8, !tbaa !3
  %arrayidx140 = getelementptr inbounds i32, i32* %20, i64 %indvars.iv
  %21 = load i32, i32* %arrayidx140, align 4, !tbaa !13
  %call141 = call i8* @OBJ_nid2sn(i32 noundef %21) #6
  %call142 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef %call141) #7
  %tobool143.not = icmp eq i32 %call142, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %tobool143.not, label %cleanup205.thread, label %for.cond136

skip_ciphers:                                     ; preds = %for.cond136, %if.end134, %if.end129
  %call149 = call i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* @ENGINE_get_digests(%struct.engine_st* noundef %call82) #6
  %cmp150 = icmp eq i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* %call149, null
  br i1 %cmp150, label %skip_digests, label %if.end153

if.end153:                                        ; preds = %skip_ciphers
  %call154 = call i32 %call149(%struct.engine_st* noundef %call82, %struct.evp_md_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #6
  %cmp156449 = icmp sgt i32 %call154, 0
  br i1 %cmp156449, label %for.body158.preheader, label %skip_digests

for.body158.preheader:                            ; preds = %if.end153
  %wide.trip.count478 = zext i32 %call154 to i64
  br label %for.body158

for.cond155:                                      ; preds = %for.body158
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %skip_digests, label %for.body158, !llvm.loop !16

for.body158:                                      ; preds = %for.body158.preheader, %for.cond155
  %indvars.iv475 = phi i64 [ 0, %for.body158.preheader ], [ %indvars.iv.next476, %for.cond155 ]
  %22 = load i32*, i32** %nids, align 8, !tbaa !3
  %arrayidx160 = getelementptr inbounds i32, i32* %22, i64 %indvars.iv475
  %23 = load i32, i32* %arrayidx160, align 4, !tbaa !13
  %call161 = call i8* @OBJ_nid2sn(i32 noundef %23) #6
  %call162 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef %call161) #7
  %tobool163.not = icmp eq i32 %call162, 0
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1
  br i1 %tobool163.not, label %cleanup205.thread, label %for.cond155

skip_digests:                                     ; preds = %for.cond155, %if.end153, %skip_ciphers
  %call169 = call i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* @ENGINE_get_pkey_meths(%struct.engine_st* noundef %call82) #6
  %cmp170 = icmp eq i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* %call169, null
  br i1 %cmp170, label %skip_pmeths, label %if.end173

if.end173:                                        ; preds = %skip_digests
  %call174 = call i32 %call169(%struct.engine_st* noundef %call82, %struct.evp_pkey_method_st** noundef null, i32** noundef nonnull %nids, i32 noundef 0) #6
  %cmp176451 = icmp sgt i32 %call174, 0
  br i1 %cmp176451, label %for.body178.preheader, label %skip_pmeths

for.body178.preheader:                            ; preds = %if.end173
  %wide.trip.count483 = zext i32 %call174 to i64
  br label %for.body178

for.cond175:                                      ; preds = %for.body178
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %skip_pmeths, label %for.body178, !llvm.loop !17

for.body178:                                      ; preds = %for.body178.preheader, %for.cond175
  %indvars.iv480 = phi i64 [ 0, %for.body178.preheader ], [ %indvars.iv.next481, %for.cond175 ]
  %24 = load i32*, i32** %nids, align 8, !tbaa !3
  %arrayidx180 = getelementptr inbounds i32, i32* %24, i64 %indvars.iv480
  %25 = load i32, i32* %arrayidx180, align 4, !tbaa !13
  %call181 = call i8* @OBJ_nid2sn(i32 noundef %25) #6
  %call182 = call fastcc i32 @append_buf(i8** noundef nonnull %cap_buf, i32* noundef nonnull %cap_size, i8* noundef %call181) #7
  %tobool183.not = icmp eq i32 %call182, 0
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1
  br i1 %tobool183.not, label %cleanup205.thread, label %for.cond175

skip_pmeths:                                      ; preds = %for.cond175, %if.end173, %skip_digests
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #9
  store %struct.engine_st* %call82, %struct.engine_st** %engine, align 8, !tbaa !18
  store i8** %cap_buf, i8*** %cap_buf189, align 8, !tbaa !20
  store i32* %cap_size, i32** %cap_size190, align 8, !tbaa !21
  store i32 1, i32* %ok, align 8, !tbaa !22
  %call191 = call i32 @OSSL_STORE_do_all_loaders(void (%struct.ossl_store_loader_st*, i8*)* noundef nonnull @util_store_cap, i8* noundef nonnull %19) #6
  %26 = load i32, i32* %ok, align 8, !tbaa !22
  %tobool193.not = icmp eq i32 %26, 0
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #9
  br i1 %tobool193.not, label %cleanup205, label %cleanup.cont

cleanup.cont:                                     ; preds = %skip_pmeths
  %27 = load i8*, i8** %cap_buf, align 8, !tbaa !3
  %cmp196.not = icmp eq i8* %27, null
  br i1 %cmp196.not, label %cleanup205.thread393, label %land.lhs.true198

land.lhs.true198:                                 ; preds = %cleanup.cont
  %28 = load i8, i8* %27, align 1, !tbaa !7
  %cmp200.not = icmp eq i8 %28, 0
  br i1 %cmp200.not, label %cleanup205.thread393, label %if.then202

if.then202:                                       ; preds = %land.lhs.true198
  %call203 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* noundef nonnull %27) #6
  %.pre = load i8*, i8** %cap_buf, align 8, !tbaa !3
  br label %cleanup205.thread393

cleanup205.thread393:                             ; preds = %cleanup.cont, %land.lhs.true198, %if.then202
  %29 = phi i8* [ null, %cleanup.cont ], [ %27, %land.lhs.true198 ], [ %.pre, %if.then202 ]
  call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 459) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  br label %if.end215

cleanup205.thread:                                ; preds = %land.lhs.true, %land.lhs.true109, %land.lhs.true117, %land.lhs.true125, %for.body139, %for.body158, %for.body178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  br label %end

cleanup205:                                       ; preds = %skip_pmeths
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9
  br label %end

if.end215:                                        ; preds = %cleanup205.thread393, %if.end96
  br i1 %tobool216.not, label %if.end229, label %if.then217

if.then217:                                       ; preds = %if.end215
  %call218 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #6
  %call219 = call i32 @ENGINE_init(%struct.engine_st* noundef %call82) #6
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.else, label %if.then221

if.then221:                                       ; preds = %if.then217
  %call222 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0)) #6
  call fastcc void @util_do_cmds(%struct.engine_st* noundef %call82, %struct.stack_st_OPENSSL_STRING* noundef %2, %struct.bio_st* noundef %call3) #7
  %call223 = call i32 @ENGINE_finish(%struct.engine_st* noundef %call82) #6
  br label %if.end229

if.else:                                          ; preds = %if.then217
  %call224 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0)) #6
  br i1 %tobool225.not, label %if.end227, label %if.then226

if.then226:                                       ; preds = %if.else
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  call void @ERR_print_errors_fp(%struct._IO_FILE* noundef %30) #6
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %if.else
  call void @ERR_clear_error() #6
  br label %if.end229

if.end229:                                        ; preds = %if.then221, %if.end227, %if.end215
  br i1 %cmp230, label %land.lhs.true232, label %cleanup238

land.lhs.true232:                                 ; preds = %if.end229
  %call233 = call fastcc i32 @util_verbose(%struct.engine_st* noundef %call82, i32 noundef %verbose.0.ph538, %struct.bio_st* noundef %call3) #7
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %end, label %cleanup238

cleanup238:                                       ; preds = %if.end229, %land.lhs.true232
  %call237 = call i32 @ENGINE_free(%struct.engine_st* noundef %call82) #6
  br label %for.inc251

if.else241:                                       ; preds = %for.body79
  %31 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %31) #6
  %32 = icmp slt i32 %ret.0456, 126
  %33 = select i1 %32, i32 %ret.0456, i32 126
  %spec.store.select = add nsw i32 %33, 1
  br label %for.inc251

for.inc251:                                       ; preds = %if.else241, %cleanup238
  %ret.2400 = phi i32 [ %spec.store.select, %if.else241 ], [ %ret.0456, %cleanup238 ]
  %inc252 = add nuw nsw i32 %i.0455, 1
  %call76 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call56) #6
  %cmp77 = icmp slt i32 %inc252, %call76
  br i1 %cmp77, label %for.body79, label %end, !llvm.loop !23

end:                                              ; preds = %for.inc251, %land.lhs.true232, %if.end73, %cleanup205, %cleanup205.thread, %entry, %if.then48, %sw.bb22, %sw.bb
  %ret.3 = phi i32 [ 1, %entry ], [ 0, %sw.bb22 ], [ 1, %sw.bb ], [ 1, %if.then48 ], [ %ret.0456, %cleanup205 ], [ %ret.0456, %cleanup205.thread ], [ 0, %if.end73 ], [ %ret.2400, %for.inc251 ], [ %ret.0456, %land.lhs.true232 ]
  %34 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  call void @ERR_print_errors(%struct.bio_st* noundef %34) #6
  %call254 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef %0) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call254) #6
  %call255 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %1) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call255) #6
  %call256 = call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #7
  call void @OPENSSL_sk_free(%struct.stack_st* noundef %call256) #6
  call void @BIO_free_all(%struct.bio_st* noundef %call3) #6
  ret i32 %ret.3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #2

declare dso_local %struct.bio_st* @dup_bio_out(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #2

declare dso_local i32 @opt_next() local_unnamed_addr #2

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local i8* @opt_arg() local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_CSTRING_sk_type(%struct.stack_st_OPENSSL_CSTRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_CSTRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.engine_st* @ENGINE_get_first() local_unnamed_addr #2

declare dso_local i8* @ENGINE_get_id(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @ENGINE_get_next(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.engine_st* @ENGINE_by_id(i8* noundef) local_unnamed_addr #2

declare dso_local i8* @ENGINE_get_name(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @util_do_cmds(%struct.engine_st* noundef %e, %struct.stack_st_OPENSSL_STRING* noundef %cmds, %struct.bio_st* noundef %out) unnamed_addr #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %call = tail call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %cmds) #7
  %call1 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call) #6
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp32.not = icmp eq i32 %call1, 0
  br i1 %cmp32.not, label %cleanup40, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  br label %for.body

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0)) #6
  br label %cleanup40

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %loop.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #9
  %call5 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call, i32 noundef %loop.03) #6
  %call6 = call i8* @strstr(i8* noundef %call5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %call9 = call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef %e, i8* noundef %call5, i8* noundef null, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else35, label %if.then33

if.else:                                          ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %call6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %cmp12 = icmp sgt i32 %conv, 254
  br i1 %cmp12, label %if.then14, label %if.end31

if.then14:                                        ; preds = %if.else
  %call15 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0)) #6
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #9
  br label %cleanup40

if.end31:                                         ; preds = %if.else
  %sext = shl i64 %sub.ptr.sub, 32
  %conv21 = ashr exact i64 %sext, 32
  %call22 = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %call5, i64 noundef %conv21) #6
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 %sub.ptr.sub
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, i8* %call6, i64 1
  %call27 = call i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef %e, i8* noundef nonnull %0, i8* noundef nonnull %incdec.ptr, i32 noundef 0) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else35, label %if.then33

if.then33:                                        ; preds = %if.then8, %if.end31
  %call34 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef %call5) #6
  br label %cleanup

if.else35:                                        ; preds = %if.then8, %if.end31
  %call36 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef %call5) #6
  call void @ERR_print_errors(%struct.bio_st* noundef %out) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.else35
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #9
  %inc = add nuw nsw i32 %loop.03, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %cleanup40, label %for.body, !llvm.loop !24

cleanup40:                                        ; preds = %cleanup, %for.cond.preheader, %if.then14, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local %struct.rsa_meth_st* @ENGINE_get_RSA(%struct.engine_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @append_buf(i8** nocapture noundef %buf, i32* nocapture noundef %size, i8* noundef %s) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %s) #8
  %0 = trunc i64 %call to i32
  %1 = load i8*, i8** %buf, align 8, !tbaa !3
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = add i32 %0, 256
  %div = sdiv i32 %sub, 256
  %mul = shl nsw i32 %div, 8
  store i32 %mul, i32* %size, align 4, !tbaa !13
  %conv3 = sext i32 %mul to i64
  %call4 = tail call i8* @app_malloc(i64 noundef %conv3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0)) #6
  store i8* %call4, i8** %buf, align 8, !tbaa !3
  br label %if.end31

if.else:                                          ; preds = %entry
  %conv = add i32 %0, 1
  %call5 = tail call i64 @strlen(i8* noundef nonnull %1) #8
  %conv6 = trunc i64 %call5 to i32
  %cmp7 = icmp sgt i32 %conv6, 0
  %add10 = add nsw i32 %conv6, 2
  %add11 = select i1 %cmp7, i32 %add10, i32 0
  %len.0 = add nsw i32 %conv, %add11
  %2 = load i32, i32* %size, align 4, !tbaa !13
  %cmp12 = icmp sgt i32 %len.0, %2
  br i1 %cmp12, label %if.then14, label %if.end25

if.then14:                                        ; preds = %if.else
  %sub16 = add nsw i32 %len.0, 255
  %div17 = sdiv i32 %sub16, 256
  %mul18 = shl nsw i32 %div17, 8
  store i32 %mul18, i32* %size, align 4, !tbaa !13
  %conv19 = sext i32 %mul18 to i64
  %call20 = tail call i8* @CRYPTO_realloc(i8* noundef nonnull %1, i64 noundef %conv19, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 72) #6
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then14
  store i8* %call20, i8** %buf, align 8, !tbaa !3
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.else
  %p.0 = phi i8* [ %call20, %if.end24 ], [ %1, %if.else ]
  br i1 %cmp7, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end25
  %sext = shl i64 %call5, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 %idx.ext
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 1
  store i8 44, i8* %add.ptr, align 1, !tbaa !7
  %incdec.ptr29 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 32, i8* %incdec.ptr, align 1, !tbaa !7
  br label %if.end31

cleanup:                                          ; preds = %if.then14
  %3 = load i8*, i8** %buf, align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 74) #6
  store i8* null, i8** %buf, align 8, !tbaa !3
  br label %cleanup33

if.end31:                                         ; preds = %if.end25, %if.then28, %if.then
  %p.3 = phi i8* [ %call4, %if.then ], [ %p.0, %if.end25 ], [ %incdec.ptr29, %if.then28 ]
  %call32 = tail call i8* @strcpy(i8* noundef %p.3, i8* noundef %s) #6
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup, %if.end31
  %retval.1 = phi i32 [ 1, %if.end31 ], [ 0, %cleanup ]
  ret i32 %retval.1
}

declare dso_local %struct.dsa_method* @ENGINE_get_DSA(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.dh_method* @ENGINE_get_DH(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local %struct.rand_meth_st* @ENGINE_get_RAND(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 (%struct.engine_st*, %struct.evp_cipher_st**, i32**, i32)* @ENGINE_get_ciphers(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare dso_local i32 (%struct.engine_st*, %struct.evp_md_st**, i32**, i32)* @ENGINE_get_digests(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 (%struct.engine_st*, %struct.evp_pkey_method_st**, i32**, i32)* @ENGINE_get_pkey_meths(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @OSSL_STORE_do_all_loaders(void (%struct.ossl_store_loader_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @util_store_cap(%struct.ossl_store_loader_st* noundef %loader, i8* nocapture noundef %arg) #0 {
entry:
  %buf = alloca [256 x i8], align 16
  %call = tail call %struct.engine_st* @OSSL_STORE_LOADER_get0_engine(%struct.ossl_store_loader_st* noundef %loader) #6
  %engine = bitcast i8* %arg to %struct.engine_st**
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !18
  %cmp = icmp eq %struct.engine_st* %call, %0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #9
  %call1 = tail call i8* @OSSL_STORE_LOADER_get0_scheme(%struct.ossl_store_loader_st* noundef %loader) #6
  %call2 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8* noundef %call1) #6
  %cap_buf = getelementptr inbounds i8, i8* %arg, i64 8
  %2 = bitcast i8* %cap_buf to i8***
  %3 = load i8**, i8*** %2, align 8, !tbaa !20
  %cap_size = getelementptr inbounds i8, i8* %arg, i64 16
  %4 = bitcast i8* %cap_size to i32**
  %5 = load i32*, i32** %4, align 8, !tbaa !21
  %call4 = call fastcc i32 @append_buf(i8** noundef %3, i32* noundef %5, i8* noundef nonnull %1) #7
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %ok = getelementptr inbounds i8, i8* %arg, i64 24
  %6 = bitcast i8* %ok to i32*
  store i32 0, i32* %6, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors_fp(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare dso_local void @ERR_clear_error() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @util_verbose(%struct.engine_st* noundef %e, i32 noundef %verbose, %struct.bio_st* noundef %out) unnamed_addr #0 {
entry:
  %call = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 10, i64 noundef 0, i8* noundef null, void ()* noundef null) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 11, i64 noundef 0, i8* noundef null, void ()* noundef null) #6
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %cleanup97, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #6
  %0 = bitcast %struct.stack_st* %call2 to %struct.stack_st_OPENSSL_STRING*
  %cmp3 = icmp eq %struct.stack_st* %call2, null
  br i1 %cmp3, label %err, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end
  %cmp13 = icmp sgt i32 %verbose, 3
  %cmp56 = icmp eq i32 %verbose, 1
  %cmp78 = icmp sgt i32 %verbose, 2
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %num.0 = phi i32 [ %call88, %do.cond ], [ %call1, %do.body.preheader ]
  %xpos.0 = phi i32 [ %xpos.3, %do.cond ], [ 0, %do.body.preheader ]
  %conv8 = zext i32 %num.0 to i64
  %call6 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 18, i64 noundef %conv8, i8* noundef null, void ()* noundef null) #6
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %err, label %if.end10

if.end10:                                         ; preds = %do.body
  %and = and i32 %call6, 8
  %tobool11 = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp13, %tobool11
  br i1 %or.cond, label %if.then15, label %do.cond

if.then15:                                        ; preds = %if.end10
  %call17 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 14, i64 noundef %conv8, i8* noundef null, void ()* noundef null) #6
  %cmp18 = icmp slt i32 %call17, 1
  br i1 %cmp18, label %err, label %if.end21

if.end21:                                         ; preds = %if.then15
  %add = add nuw nsw i32 %call17, 1
  %conv229 = zext i32 %add to i64
  %call23 = tail call i8* @app_malloc(i64 noundef %conv229, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #6
  %call25 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 15, i64 noundef %conv8, i8* noundef %call23, void ()* noundef null) #6
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %err, label %if.end29

if.end29:                                         ; preds = %if.end21
  %call31 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 16, i64 noundef %conv8, i8* noundef null, void ()* noundef null) #6
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %err, label %if.end35

if.end35:                                         ; preds = %if.end29
  %cmp36.not = icmp eq i32 %call31, 0
  br i1 %cmp36.not, label %if.end48, label %if.then38

if.then38:                                        ; preds = %if.end35
  %add39 = add nuw nsw i32 %call31, 1
  %conv4010 = zext i32 %add39 to i64
  %call41 = tail call i8* @app_malloc(i64 noundef %conv4010, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0)) #6
  %call43 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 17, i64 noundef %conv8, i8* noundef %call41, void ()* noundef null) #6
  %cmp44 = icmp slt i32 %call43, 1
  br i1 %cmp44, label %err, label %if.end48

if.end48:                                         ; preds = %if.then38, %if.end35
  %desc.1 = phi i8* [ %call41, %if.then38 ], [ null, %if.end35 ]
  %cmp49 = icmp eq i32 %xpos.0, 0
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end48
  %call52 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %if.end55

if.else:                                          ; preds = %if.end48
  %call53 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #6
  %add54 = add nsw i32 %call53, %xpos.0
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then51
  %xpos.1 = phi i32 [ %call52, %if.then51 ], [ %add54, %if.else ]
  br i1 %cmp56, label %if.then58, label %if.else74

if.then58:                                        ; preds = %if.end55
  %call59 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #8
  %conv60 = trunc i64 %call59 to i32
  %cmp61 = icmp sgt i32 %xpos.1, %conv60
  br i1 %cmp61, label %land.lhs.true, label %if.end71

land.lhs.true:                                    ; preds = %if.then58
  %call63 = tail call i64 @strlen(i8* noundef %call23) #8
  %conv64 = trunc i64 %call63 to i32
  %add65 = add nsw i32 %xpos.1, %conv64
  %cmp66 = icmp sgt i32 %add65, 78
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %land.lhs.true
  %call69 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #6
  %call70 = tail call i32 @BIO_puts(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true, %if.then58
  %xpos.2 = phi i32 [ %call70, %if.then68 ], [ %xpos.1, %land.lhs.true ], [ %xpos.1, %if.then58 ]
  %call72 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef %call23) #6
  %add73 = add nsw i32 %call72, %xpos.2
  br label %do.cond

if.else74:                                        ; preds = %if.end55
  %cmp75 = icmp eq i8* %desc.1, null
  %cond = select i1 %cmp75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i64 0, i64 0), i8* %desc.1
  %call77 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* noundef %call23, i8* noundef %cond) #6
  br i1 %cmp78, label %land.lhs.true80, label %do.cond

land.lhs.true80:                                  ; preds = %if.else74
  tail call fastcc void @util_flags(%struct.bio_st* noundef %out, i32 noundef %call6) #7
  br label %do.cond

do.cond:                                          ; preds = %if.else74, %land.lhs.true80, %if.end71, %if.end10
  %name.1 = phi i8* [ %call23, %if.end71 ], [ null, %if.end10 ], [ %call23, %land.lhs.true80 ], [ %call23, %if.else74 ]
  %desc.2 = phi i8* [ %desc.1, %if.end71 ], [ null, %if.end10 ], [ %desc.1, %land.lhs.true80 ], [ %desc.1, %if.else74 ]
  %xpos.3 = phi i32 [ %add73, %if.end71 ], [ %xpos.0, %if.end10 ], [ 0, %land.lhs.true80 ], [ 0, %if.else74 ]
  tail call void @CRYPTO_free(i8* noundef %name.1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 222) #6
  tail call void @CRYPTO_free(i8* noundef %desc.2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 224) #6
  %call88 = tail call i32 @ENGINE_ctrl(%struct.engine_st* noundef %e, i32 noundef 12, i64 noundef %conv8, i8* noundef null, void ()* noundef null) #6
  %cmp89 = icmp sgt i32 %call88, 0
  br i1 %cmp89, label %do.body, label %do.end, !llvm.loop !25

do.end:                                           ; preds = %do.cond
  %cmp91 = icmp sgt i32 %xpos.3, 0
  br i1 %cmp91, label %if.then93, label %err

if.then93:                                        ; preds = %do.end
  %call94 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0)) #6
  br label %err

err:                                              ; preds = %if.then38, %if.end29, %if.end21, %if.then15, %do.body, %do.end, %if.then93, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %if.then93 ], [ 1, %do.end ], [ 0, %do.body ], [ 0, %if.then15 ], [ 0, %if.end21 ], [ 0, %if.end29 ], [ 0, %if.then38 ]
  %name.3 = phi i8* [ null, %if.end ], [ null, %if.then93 ], [ null, %do.end ], [ %call23, %if.then38 ], [ %call23, %if.end29 ], [ %call23, %if.end21 ], [ null, %if.then15 ], [ null, %do.body ]
  %desc.4 = phi i8* [ null, %if.end ], [ null, %if.then93 ], [ null, %do.end ], [ %call41, %if.then38 ], [ null, %if.end29 ], [ null, %if.end21 ], [ null, %if.then15 ], [ null, %do.body ]
  %call96 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %0) #7
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %call96) #6
  tail call void @CRYPTO_free(i8* noundef %name.3, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 234) #6
  tail call void @CRYPTO_free(i8* noundef %desc.4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i32 noundef 235) #6
  br label %cleanup97

cleanup97:                                        ; preds = %entry, %lor.lhs.false, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @ENGINE_free(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @ENGINE_ctrl_cmd_string(%struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i8* @app_malloc(i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.engine_st* @OSSL_STORE_LOADER_get0_engine(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

declare dso_local i8* @OSSL_STORE_LOADER_get0_scheme(%struct.ossl_store_loader_st* noundef) local_unnamed_addr #2

declare dso_local i32 @ENGINE_ctrl(%struct.engine_st* noundef, i32 noundef, i64 noundef, i8* noundef, void ()* noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @util_flags(%struct.bio_st* noundef %out, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #6
  %cmp = icmp eq i32 %flags, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0)) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %and5 = and i32 %flags, 1
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end9, label %if.end9.thread

if.end9:                                          ; preds = %if.end4
  %and10 = and i32 %flags, 2
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end18.thread, label %if.end16

if.end9.thread:                                   ; preds = %if.end4
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0)) #6
  %and102 = and i32 %flags, 2
  %tobool11.not3 = icmp eq i32 %and102, 0
  br i1 %tobool11.not3, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end9.thread
  %call15 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end9, %if.then14
  %err.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.end9 ]
  %call17 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end9.thread, %if.end16
  %err.1 = phi i32 [ %err.0, %if.end16 ], [ 0, %if.end9.thread ]
  %and19 = and i32 %flags, 4
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end27, label %if.then23

if.end18.thread:                                  ; preds = %if.end9
  %and196 = and i32 %flags, 4
  %tobool20.not7 = icmp eq i32 %and196, 0
  br i1 %tobool20.not7, label %if.end27.thread, label %if.end25

if.then23:                                        ; preds = %if.end18
  %call24 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end18.thread, %if.then23
  %err.2 = phi i32 [ 1, %if.then23 ], [ 0, %if.end18.thread ]
  %call26 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0)) #6
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end18
  %err.3 = phi i32 [ %err.2, %if.end25 ], [ %err.1, %if.end18 ]
  %and31 = and i32 %flags, -16
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end39, label %if.then35

if.end27.thread:                                  ; preds = %if.end18.thread
  %and3115 = and i32 %flags, -16
  %tobool32.not16 = icmp eq i32 %and3115, 0
  br i1 %tobool32.not16, label %cleanup, label %if.end37

if.then35:                                        ; preds = %if.end27
  %call36 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end27.thread, %if.then35
  %err.31826 = phi i32 [ %err.3, %if.then35 ], [ 0, %if.end27.thread ]
  %and312025 = phi i32 [ %and31, %if.then35 ], [ %and3115, %if.end27.thread ]
  %call38 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i32 noundef %and312025) #6
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end27
  %err.319 = phi i32 [ %err.31826, %if.end37 ], [ %err.3, %if.end27 ]
  %tobool40.not = icmp eq i32 %err.319, 0
  br i1 %tobool40.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call42 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i64 0, i64 0)) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then41, %if.end27.thread, %entry
  %.sink = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), %entry ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %if.end27.thread ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %if.then41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %if.end39 ]
  %call44 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef %.sink) #6
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !5, i64 0}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = !{!19, !4, i64 0}
!19 = !{!"util_store_cap_data", !4, i64 0, !4, i64 8, !4, i64 16, !14, i64 24}
!20 = !{!19, !4, i64 8}
!21 = !{!19, !4, i64 16}
!22 = !{!19, !14, i64 24}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
