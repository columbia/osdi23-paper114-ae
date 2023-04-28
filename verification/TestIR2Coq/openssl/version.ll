; ModuleID = 'apps/version.c'
source_filename = "apps/version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque

@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Show all data\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Show build date\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Show configuration directory\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Show engines directory\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Show modules directory\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Show compiler flags used\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Show some internal datatype options\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Show target build platform\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Show random seeding options\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Show library version\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Show CPU settings info\00", align 1
@version_options = dso_local constant [15 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 10, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 6, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 7, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i32 8, i32 45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i32 11, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i32 9, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 12, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.26 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"%s (Library: %s)\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"OpenSSL 3.0.0 7 sep 2021\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"options: \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Seeding source: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @version_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @version_options, i64 0, i64 0)) #2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %seed.0 = phi i32 [ 0, %entry ], [ %seed.0.be, %while.cond.backedge ]
  %cflags.0 = phi i32 [ 0, %entry ], [ %cflags.0.be, %while.cond.backedge ]
  %version.0 = phi i32 [ 0, %entry ], [ %version.0.be, %while.cond.backedge ]
  %date.0 = phi i32 [ 0, %entry ], [ %date.0.be, %while.cond.backedge ]
  %options.0 = phi i32 [ 0, %entry ], [ %options.0.be, %while.cond.backedge ]
  %platform.0 = phi i32 [ 0, %entry ], [ %platform.0.be, %while.cond.backedge ]
  %dir.0 = phi i32 [ 0, %entry ], [ %dir.0.be, %while.cond.backedge ]
  %engdir.0 = phi i32 [ 0, %entry ], [ %engdir.0.be, %while.cond.backedge ]
  %moddir.0 = phi i32 [ 0, %entry ], [ %moddir.0.be, %while.cond.backedge ]
  %cpuinfo.0 = phi i32 [ 0, %entry ], [ %cpuinfo.0.be, %while.cond.backedge ]
  %dirty.0 = phi i32 [ 0, %entry ], [ %dirty.0.be, %while.cond.backedge ]
  %call1 = tail call i32 @opt_next() #2
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 10, label %sw.bb14
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb6
    i32 5, label %sw.bb7
    i32 6, label %sw.bb8
    i32 7, label %sw.bb9
    i32 8, label %sw.bb10
    i32 11, label %sw.bb11
    i32 9, label %sw.bb12
    i32 12, label %sw.bb13
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4
  %seed.0.be = phi i32 [ 1, %sw.bb14 ], [ %seed.0, %sw.bb13 ], [ %seed.0, %sw.bb12 ], [ 1, %sw.bb11 ], [ %seed.0, %sw.bb10 ], [ %seed.0, %sw.bb9 ], [ %seed.0, %sw.bb8 ], [ %seed.0, %sw.bb7 ], [ %seed.0, %sw.bb6 ], [ %seed.0, %sw.bb5 ], [ %seed.0, %sw.bb4 ], [ %seed.0, %while.cond ]
  %cflags.0.be = phi i32 [ 1, %sw.bb14 ], [ %cflags.0, %sw.bb13 ], [ %cflags.0, %sw.bb12 ], [ %cflags.0, %sw.bb11 ], [ %cflags.0, %sw.bb10 ], [ %cflags.0, %sw.bb9 ], [ 1, %sw.bb8 ], [ %cflags.0, %sw.bb7 ], [ %cflags.0, %sw.bb6 ], [ %cflags.0, %sw.bb5 ], [ %cflags.0, %sw.bb4 ], [ %cflags.0, %while.cond ]
  %version.0.be = phi i32 [ 1, %sw.bb14 ], [ %version.0, %sw.bb13 ], [ 1, %sw.bb12 ], [ %version.0, %sw.bb11 ], [ %version.0, %sw.bb10 ], [ %version.0, %sw.bb9 ], [ %version.0, %sw.bb8 ], [ %version.0, %sw.bb7 ], [ %version.0, %sw.bb6 ], [ %version.0, %sw.bb5 ], [ %version.0, %sw.bb4 ], [ %version.0, %while.cond ]
  %date.0.be = phi i32 [ 1, %sw.bb14 ], [ %date.0, %sw.bb13 ], [ %date.0, %sw.bb12 ], [ %date.0, %sw.bb11 ], [ %date.0, %sw.bb10 ], [ %date.0, %sw.bb9 ], [ %date.0, %sw.bb8 ], [ %date.0, %sw.bb7 ], [ %date.0, %sw.bb6 ], [ %date.0, %sw.bb5 ], [ 1, %sw.bb4 ], [ %date.0, %while.cond ]
  %options.0.be = phi i32 [ 1, %sw.bb14 ], [ %options.0, %sw.bb13 ], [ %options.0, %sw.bb12 ], [ %options.0, %sw.bb11 ], [ %options.0, %sw.bb10 ], [ 1, %sw.bb9 ], [ %options.0, %sw.bb8 ], [ %options.0, %sw.bb7 ], [ %options.0, %sw.bb6 ], [ %options.0, %sw.bb5 ], [ %options.0, %sw.bb4 ], [ %options.0, %while.cond ]
  %platform.0.be = phi i32 [ 1, %sw.bb14 ], [ %platform.0, %sw.bb13 ], [ %platform.0, %sw.bb12 ], [ %platform.0, %sw.bb11 ], [ 1, %sw.bb10 ], [ %platform.0, %sw.bb9 ], [ %platform.0, %sw.bb8 ], [ %platform.0, %sw.bb7 ], [ %platform.0, %sw.bb6 ], [ %platform.0, %sw.bb5 ], [ %platform.0, %sw.bb4 ], [ %platform.0, %while.cond ]
  %dir.0.be = phi i32 [ 1, %sw.bb14 ], [ %dir.0, %sw.bb13 ], [ %dir.0, %sw.bb12 ], [ %dir.0, %sw.bb11 ], [ %dir.0, %sw.bb10 ], [ %dir.0, %sw.bb9 ], [ %dir.0, %sw.bb8 ], [ %dir.0, %sw.bb7 ], [ %dir.0, %sw.bb6 ], [ 1, %sw.bb5 ], [ %dir.0, %sw.bb4 ], [ %dir.0, %while.cond ]
  %engdir.0.be = phi i32 [ 1, %sw.bb14 ], [ %engdir.0, %sw.bb13 ], [ %engdir.0, %sw.bb12 ], [ %engdir.0, %sw.bb11 ], [ %engdir.0, %sw.bb10 ], [ %engdir.0, %sw.bb9 ], [ %engdir.0, %sw.bb8 ], [ %engdir.0, %sw.bb7 ], [ 1, %sw.bb6 ], [ %engdir.0, %sw.bb5 ], [ %engdir.0, %sw.bb4 ], [ %engdir.0, %while.cond ]
  %moddir.0.be = phi i32 [ 1, %sw.bb14 ], [ %moddir.0, %sw.bb13 ], [ %moddir.0, %sw.bb12 ], [ %moddir.0, %sw.bb11 ], [ %moddir.0, %sw.bb10 ], [ %moddir.0, %sw.bb9 ], [ %moddir.0, %sw.bb8 ], [ 1, %sw.bb7 ], [ %moddir.0, %sw.bb6 ], [ %moddir.0, %sw.bb5 ], [ %moddir.0, %sw.bb4 ], [ %moddir.0, %while.cond ]
  %cpuinfo.0.be = phi i32 [ 1, %sw.bb14 ], [ 1, %sw.bb13 ], [ %cpuinfo.0, %sw.bb12 ], [ %cpuinfo.0, %sw.bb11 ], [ %cpuinfo.0, %sw.bb10 ], [ %cpuinfo.0, %sw.bb9 ], [ %cpuinfo.0, %sw.bb8 ], [ %cpuinfo.0, %sw.bb7 ], [ %cpuinfo.0, %sw.bb6 ], [ %cpuinfo.0, %sw.bb5 ], [ %cpuinfo.0, %sw.bb4 ], [ %cpuinfo.0, %while.cond ]
  %dirty.0.be = phi i32 [ %dirty.0, %sw.bb14 ], [ 1, %sw.bb13 ], [ 1, %sw.bb12 ], [ 1, %sw.bb11 ], [ 1, %sw.bb10 ], [ 1, %sw.bb9 ], [ 1, %sw.bb8 ], [ 1, %sw.bb7 ], [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ %dirty.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

opthelp:                                          ; preds = %while.cond, %while.end
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !5
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i8* noundef %call) #2
  br label %end

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([15 x %struct.options_st], [15 x %struct.options_st]* @version_options, i64 0, i64 0)) #2
  br label %end

sw.bb4:                                           ; preds = %while.cond
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
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
  br label %while.cond.backedge

sw.bb11:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.cond
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call15 = tail call i32 @opt_num_rest() #2
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end, label %opthelp

if.end:                                           ; preds = %while.end
  %tobool.not = icmp ne i32 %dirty.0, 0
  %tobool19.not89 = icmp eq i32 %version.0, 0
  %tobool19.not = select i1 %tobool.not, i1 %tobool19.not89, i1 false
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end
  %call21 = tail call i8* @OpenSSL_version(i32 noundef 0) #2
  %call22 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call21) #2
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end
  %tobool24.not = icmp eq i32 %date.0, 0
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end23
  %call26 = tail call i8* @OpenSSL_version(i32 noundef 2) #2
  %call27 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call26) #2
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %tobool29.not = icmp eq i32 %platform.0, 0
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i8* @OpenSSL_version(i32 noundef 3) #2
  %call32 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call31) #2
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28
  %tobool34.not = icmp eq i32 %options.0, 0
  br i1 %tobool34.not, label %if.end40, label %if.then35

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #2
  %call37 = tail call i8* @BN_options() #2
  %call38 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call37) #2
  %call39 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #2
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end33
  %tobool41.not = icmp eq i32 %cflags.0, 0
  br i1 %tobool41.not, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i8* @OpenSSL_version(i32 noundef 1) #2
  %call44 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call43) #2
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40
  %tobool46.not = icmp eq i32 %dir.0, 0
  br i1 %tobool46.not, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end45
  %call48 = tail call i8* @OpenSSL_version(i32 noundef 4) #2
  %call49 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call48) #2
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45
  %tobool51.not = icmp eq i32 %engdir.0, 0
  br i1 %tobool51.not, label %if.end55, label %if.then52

if.then52:                                        ; preds = %if.end50
  %call53 = tail call i8* @OpenSSL_version(i32 noundef 5) #2
  %call54 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call53) #2
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end50
  %tobool56.not = icmp eq i32 %moddir.0, 0
  br i1 %tobool56.not, label %if.end60, label %if.then57

if.then57:                                        ; preds = %if.end55
  %call58 = tail call i8* @OpenSSL_version(i32 noundef 8) #2
  %call59 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call58) #2
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end55
  %tobool61.not = icmp eq i32 %seed.0, 0
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end60
  %call63 = tail call i8* @OPENSSL_info(i32 noundef 1007) #2
  %tobool64.not = icmp eq i8* %call63, null
  %cond = select i1 %tobool64.not, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* %call63
  %call65 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* noundef %cond) #2
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end60
  %tobool67.not = icmp eq i32 %cpuinfo.0, 0
  br i1 %tobool67.not, label %end, label %if.then68

if.then68:                                        ; preds = %if.end66
  %call69 = tail call i8* @OpenSSL_version(i32 noundef 9) #2
  %call70 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef %call69) #2
  br label %end

end:                                              ; preds = %if.end66, %if.then68, %sw.bb3, %opthelp
  %ret.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %opthelp ], [ 0, %if.then68 ], [ 0, %if.end66 ]
  ret i32 %ret.0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i32 @opt_next() local_unnamed_addr #1

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @opt_help(%struct.options_st* noundef) local_unnamed_addr #1

declare dso_local i32 @opt_num_rest() local_unnamed_addr #1

declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @OpenSSL_version(i32 noundef) local_unnamed_addr #1

declare dso_local i8* @BN_options() local_unnamed_addr #1

declare dso_local i8* @OPENSSL_info(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
