; ModuleID = 'apps/rand.c'
source_filename = "apps/rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.engine_st = type opaque
%struct.bio_method_st = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [25 x i8] c"Usage: %s [options] num\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Base64 encode output\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Hex encode output\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Number of bytes to generate\00", align 1
@rand_options = dso_local constant [18 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 4, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 1501, i32 115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 1502, i32 62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.28 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rand_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %num = alloca i32, align 4
  %buf = alloca [4096 x i8], align 16
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 -1, i32* %num, align 4, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([18 x %struct.options_st], [18 x %struct.options_st]* @rand_options, i64 0, i64 0)) #4
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb4, %entry
  %outfile.0.ph = phi i8* [ %call5, %sw.bb4 ], [ null, %entry ]
  %e.0.ph = phi %struct.engine_st* [ %e.0.ph214, %sw.bb4 ], [ null, %entry ]
  %format.0.ph = phi i32 [ %format.0.ph217, %sw.bb4 ], [ 2, %entry ]
  br label %while.cond.outer213

while.cond.outer213:                              ; preds = %while.cond.outer, %sw.bb6
  %e.0.ph214 = phi %struct.engine_st* [ %e.0.ph, %while.cond.outer ], [ %call8, %sw.bb6 ]
  %format.0.ph215 = phi i32 [ %format.0.ph, %while.cond.outer ], [ %format.0.ph217, %sw.bb6 ]
  br label %while.cond.outer216

while.cond.outer216:                              ; preds = %while.cond.outer216.backedge, %while.cond.outer213
  %format.0.ph217 = phi i32 [ %format.0.ph215, %while.cond.outer213 ], [ %format.0.ph217.be, %while.cond.outer216.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer216
  %call1 = tail call i32 @opt_next() #4
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb15
    i32 -1, label %opthelp
    i32 1, label %end.thread152
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 1603, label %sw.bb15
    i32 1602, label %sw.bb15
    i32 1501, label %sw.bb10
    i32 1502, label %sw.bb10
    i32 4, label %while.cond.outer216.backedge
    i32 5, label %sw.bb13
  ]

while.cond.backedge:                              ; preds = %while.cond, %sw.bb15, %sw.bb10
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %while.end, %if.then23
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  %call2 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call) #4
  br label %if.then94

end.thread152:                                    ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([18 x %struct.options_st], [18 x %struct.options_st]* @rand_options, i64 0, i64 0)) #4
  br label %cleanup96

sw.bb4:                                           ; preds = %while.cond
  %call5 = tail call i8* @opt_arg() #4
  br label %while.cond.outer, !llvm.loop !7

sw.bb6:                                           ; preds = %while.cond
  %call7 = tail call i8* @opt_arg() #4
  %call8 = tail call %struct.engine_st* @setup_engine_methods(i8* noundef %call7, i32 noundef -1, i32 noundef 0) #4
  br label %while.cond.outer213, !llvm.loop !7

sw.bb10:                                          ; preds = %while.cond, %while.cond
  %call11 = tail call i32 @opt_rand(i32 noundef %call1) #4
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then94, label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond
  br label %while.cond.outer216.backedge

while.cond.outer216.backedge:                     ; preds = %while.cond, %sw.bb13
  %format.0.ph217.be = phi i32 [ 32769, %sw.bb13 ], [ 32771, %while.cond ]
  br label %while.cond.outer216, !llvm.loop !7

sw.bb15:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call16 = tail call i32 @opt_provider(i32 noundef %call1) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then94, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call20 = tail call i32 @opt_num_rest() #4
  %call21 = tail call i8** @opt_rest() #4
  switch i32 %call20, label %opthelp [
    i32 1, label %if.then23
    i32 0, label %if.end32
  ]

if.then23:                                        ; preds = %while.end
  %2 = load i8*, i8** %call21, align 8, !tbaa !9
  %call24 = call i32 @opt_int(i8* noundef %2, i32* noundef nonnull %num) #4
  %tobool25 = icmp eq i32 %call24, 0
  %3 = load i32, i32* %num, align 4
  %cmp26 = icmp slt i32 %3, 1
  %or.cond = select i1 %tobool25, i1 true, i1 %cmp26
  br i1 %or.cond, label %opthelp, label %if.end32

if.end32:                                         ; preds = %while.end, %if.then23
  %call33 = call i32 @app_RAND_load() #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then94, label %if.end36

if.end36:                                         ; preds = %if.end32
  %call37 = call %struct.bio_st* @bio_open_default(i8* noundef %outfile.0.ph, i8 noundef signext 119, i32 noundef %format.0.ph217) #4
  %cmp38 = icmp eq %struct.bio_st* %call37, null
  br i1 %cmp38, label %if.then94, label %if.end40

if.end40:                                         ; preds = %if.end36
  %cmp41 = icmp eq i32 %format.0.ph217, 32771
  br i1 %cmp41, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end40
  %call43 = call %struct.bio_method_st* @BIO_f_base64() #4
  %call44 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call43) #4
  %cmp45 = icmp eq %struct.bio_st* %call44, null
  br i1 %cmp45, label %if.then94, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then42
  %call48 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call44, %struct.bio_st* noundef nonnull %call37) #4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %if.end40
  %out.1 = phi %struct.bio_st* [ %call37, %if.end40 ], [ %call48, %cleanup.thread ]
  %.pr = load i32, i32* %num, align 4, !tbaa !3
  %cmp51171 = icmp sgt i32 %.pr, 0
  br i1 %cmp51171, label %while.body52.lr.ph, label %while.end80

while.body52.lr.ph:                               ; preds = %if.end49
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  %cmp60.not = icmp eq i32 %format.0.ph217, 32769
  br label %while.body52

while.body52:                                     ; preds = %while.body52.lr.ph, %cleanup76
  %5 = phi i32 [ %.pr, %while.body52.lr.ph ], [ %sub, %cleanup76 ]
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %4) #3
  %6 = icmp ult i32 %5, 4096
  %spec.store.select = select i1 %6, i32 %5, i32 4096
  %call56 = call i32 @RAND_bytes(i8* noundef nonnull %4, i32 noundef %spec.store.select) #4
  %cmp57 = icmp slt i32 %call56, 1
  br i1 %cmp57, label %cleanup76.thread, label %if.end59

if.end59:                                         ; preds = %while.body52
  br i1 %cmp60.not, label %for.body.preheader, label %if.then61

for.body.preheader:                               ; preds = %if.end59
  %wide.trip.count = zext i32 %spec.store.select to i64
  br label %for.body

if.then61:                                        ; preds = %if.end59
  %call63 = call i32 @BIO_write(%struct.bio_st* noundef %out.1, i8* noundef nonnull %4, i32 noundef %spec.store.select) #4
  %cmp64.not = icmp eq i32 %call63, %spec.store.select
  br i1 %cmp64.not, label %cleanup76, label %cleanup76.thread

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup76, label %for.body, !llvm.loop !11

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 %indvars.iv
  %7 = load i8, i8* %arrayidx69, align 1, !tbaa !12
  %conv = zext i8 %7 to i32
  %call70 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out.1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv) #4
  %cmp71.not = icmp eq i32 %call70, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp71.not, label %for.cond, label %cleanup76.thread

cleanup76.thread:                                 ; preds = %while.body52, %if.then61, %for.body
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %4) #3
  br label %if.then94

cleanup76:                                        ; preds = %for.cond, %if.then61
  %8 = load i32, i32* %num, align 4, !tbaa !3
  %sub = sub nsw i32 %8, %spec.store.select
  store i32 %sub, i32* %num, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %4) #3
  %cmp51 = icmp sgt i32 %sub, 0
  br i1 %cmp51, label %while.body52, label %while.end80

while.end80:                                      ; preds = %cleanup76, %if.end49
  %cmp81 = icmp eq i32 %format.0.ph217, 32769
  br i1 %cmp81, label %if.then83, label %end

if.then83:                                        ; preds = %while.end80
  %call84 = call i32 @BIO_puts(%struct.bio_st* noundef %out.1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #4
  br label %end

end:                                              ; preds = %while.end80, %if.then83
  %call86 = call i64 @BIO_ctrl(%struct.bio_st* noundef %out.1, i32 noundef 11, i64 noundef 0, i8* noundef null) #4
  %conv87 = trunc i64 %call86 to i32
  %cmp88 = icmp slt i32 %conv87, 1
  br i1 %cmp88, label %if.then94, label %cleanup96

if.then94:                                        ; preds = %sw.bb15, %sw.bb10, %cleanup76.thread, %if.then42, %if.end32, %if.end36, %opthelp, %end
  %out.2148 = phi %struct.bio_st* [ %out.1, %end ], [ null, %opthelp ], [ null, %if.end36 ], [ null, %if.end32 ], [ %call37, %if.then42 ], [ %out.1, %cleanup76.thread ], [ null, %sw.bb10 ], [ null, %sw.bb15 ]
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !9
  call void @ERR_print_errors(%struct.bio_st* noundef %9) #4
  br label %cleanup96

cleanup96:                                        ; preds = %end, %if.then94, %end.thread152
  %ret.0151 = phi i32 [ 1, %if.then94 ], [ 0, %end ], [ 0, %end.thread152 ]
  %out.2149 = phi %struct.bio_st* [ %out.2148, %if.then94 ], [ %out.1, %end ], [ null, %end.thread152 ]
  call void @release_engine(%struct.engine_st* noundef %e.0.ph214) #4
  call void @BIO_free_all(%struct.bio_st* noundef %out.2149) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %ret.0151
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

declare dso_local i32 @opt_int(i8* noundef, i32* noundef) local_unnamed_addr #2

declare dso_local i32 @app_RAND_load() local_unnamed_addr #2

declare dso_local %struct.bio_st* @bio_open_default(i8* noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare dso_local %struct.bio_method_st* @BIO_f_base64() local_unnamed_addr #2

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare dso_local i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

declare dso_local void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #2

declare dso_local void @release_engine(%struct.engine_st* noundef) local_unnamed_addr #2

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #2

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
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = distinct !{!11, !8}
!12 = !{!5, !5, i64 0}
