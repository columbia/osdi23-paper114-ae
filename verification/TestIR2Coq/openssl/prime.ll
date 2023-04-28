; ModuleID = 'apps/prime.c'
source_filename = "apps/prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.bignum_st = type opaque
%struct.bn_gencb_st = type opaque
%struct.bignum_ctx = type opaque

@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [options] [number...]\0A\00", align 1
@OPT_SECTION_STR = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Size of number in bits\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"checks\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Number of checks\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Hex output\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Generate a prime\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"When used with -generate, generate a safe prime\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external dso_local constant [0 x i8], align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Number(s) to check for primality if not generating\00", align 1
@prime_options = dso_local constant [16 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4, i32 112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 6, i32 112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 2, i32 45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 3, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_SECTION_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 1602, i32 115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 1601, i32 115, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 1603, i32 115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_PARAM_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.25 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Specify the number of bits.\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Failed to generate prime.\0A\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"apps/prime.c\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Failed to process value (%s)\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c" (%s) %s prime\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"is not\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @prime_main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.bignum_st* null, %struct.bignum_st** %bn, align 8, !tbaa !3
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([16 x %struct.options_st], [16 x %struct.options_st]* @prime_options, i64 0, i64 0)) #5
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond, %entry
  %tobool42.not = phi i1 [ true, %entry ], [ false, %while.cond ]
  %generate.0.ph = phi i32 [ 0, %entry ], [ %generate.0.ph169, %while.cond ]
  %bits.0.ph = phi i32 [ 0, %entry ], [ %bits.0.ph173, %while.cond ]
  %safe.0.ph = phi i32 [ 0, %entry ], [ %safe.0.ph176, %while.cond ]
  br label %while.cond.outer168

while.cond.outer168:                              ; preds = %while.cond, %while.cond.outer
  %generate.0.ph169 = phi i32 [ %generate.0.ph, %while.cond.outer ], [ 1, %while.cond ]
  %bits.0.ph170 = phi i32 [ %bits.0.ph, %while.cond.outer ], [ %bits.0.ph173, %while.cond ]
  %safe.0.ph171 = phi i32 [ %safe.0.ph, %while.cond.outer ], [ %safe.0.ph176, %while.cond ]
  br label %while.cond.outer172

while.cond.outer172:                              ; preds = %while.cond.outer168, %sw.bb6
  %bits.0.ph173 = phi i32 [ %bits.0.ph170, %while.cond.outer168 ], [ %call8, %sw.bb6 ]
  %safe.0.ph174 = phi i32 [ %safe.0.ph171, %while.cond.outer168 ], [ %safe.0.ph176, %sw.bb6 ]
  br label %while.cond.outer175

while.cond.outer175:                              ; preds = %while.cond, %while.cond.outer172
  %safe.0.ph176 = phi i32 [ %safe.0.ph174, %while.cond.outer172 ], [ 1, %while.cond ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer175
  %call1 = tail call i32 @opt_next() #5
  switch i32 %call1, label %while.cond.backedge [
    i32 0, label %while.end
    i32 1601, label %sw.bb13
    i32 -1, label %opthelp
    i32 1, label %sw.bb3
    i32 2, label %while.cond.outer
    i32 3, label %while.cond.outer168
    i32 4, label %sw.bb6
    i32 5, label %while.cond.outer175
    i32 6, label %sw.bb10
    i32 1603, label %sw.bb13
    i32 1602, label %sw.bb13
  ], !llvm.loop !7

while.cond.backedge:                              ; preds = %while.cond, %sw.bb13, %sw.bb10
  br label %while.cond, !llvm.loop !7

opthelp:                                          ; preds = %while.cond, %if.else, %if.then18
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call2 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* noundef %call) #5
  br label %cleanup74

sw.bb3:                                           ; preds = %while.cond
  tail call void @opt_help(%struct.options_st* noundef getelementptr inbounds ([16 x %struct.options_st], [16 x %struct.options_st]* @prime_options, i64 0, i64 0)) #5
  br label %cleanup74

sw.bb6:                                           ; preds = %while.cond
  %call7 = tail call i8* @opt_arg() #5
  %call8 = tail call i32 @atoi(i8* noundef %call7) #6
  br label %while.cond.outer172, !llvm.loop !7

sw.bb10:                                          ; preds = %while.cond
  %call11 = tail call i8* @opt_arg() #5
  br label %while.cond.backedge

sw.bb13:                                          ; preds = %while.cond, %while.cond, %while.cond
  %call14 = tail call i32 @opt_provider(i32 noundef %call1) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %cleanup74, label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call15 = tail call i32 @opt_num_rest() #5
  %call16 = tail call i8** @opt_rest() #5
  %tobool17.not = icmp eq i32 %generate.0.ph169, 0
  %cmp22 = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %while.end
  br i1 %cmp22, label %if.then27, label %opthelp

if.else:                                          ; preds = %while.end
  br i1 %cmp22, label %opthelp, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %2 = load i8*, i8** %call16, align 8, !tbaa !3
  %tobool51.not122 = icmp eq i8* %2, null
  br i1 %tobool51.not122, label %cleanup74, label %for.body

if.then27:                                        ; preds = %if.then18
  %tobool28.not = icmp eq i32 %bits.0.ph173, 0
  br i1 %tobool28.not, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then27
  %3 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call30 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %3, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0)) #5
  br label %cleanup74

if.end31:                                         ; preds = %if.then27
  %call32 = tail call %struct.bignum_st* @BN_new() #5
  store %struct.bignum_st* %call32, %struct.bignum_st** %bn, align 8, !tbaa !3
  %cmp33 = icmp eq %struct.bignum_st* %call32, null
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call35 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %cleanup74

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i32 @BN_generate_prime_ex(%struct.bignum_st* noundef nonnull %call32, i32 noundef %bits.0.ph173, i32 noundef %safe.0.ph176, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #5
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call40 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %5, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0)) #5
  br label %cleanup74

if.end41:                                         ; preds = %if.end36
  br i1 %tobool42.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end41
  %call43 = tail call i8* @BN_bn2hex(%struct.bignum_st* noundef nonnull %call32) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end41
  %call44 = tail call i8* @BN_bn2dec(%struct.bignum_st* noundef nonnull %call32) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call43, %cond.true ], [ %call44, %cond.false ]
  %cmp45 = icmp eq i8* %cond, null
  br i1 %cmp45, label %if.then46, label %cleanup

if.then46:                                        ; preds = %cond.end
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call47 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0)) #5
  br label %cleanup74

cleanup:                                          ; preds = %cond.end
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call49 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %cond) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %cond, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 noundef 117) #5
  br label %cleanup74

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %8 = phi i8* [ %16, %for.inc ], [ %2, %for.cond.preheader ]
  %argv.addr.0123 = phi i8** [ %incdec.ptr, %for.inc ], [ %call16, %for.cond.preheader ]
  br i1 %tobool42.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %for.body
  %call54 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef nonnull %8) #5
  br label %if.end58

if.else55:                                        ; preds = %for.body
  %call57 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %bn, i8* noundef nonnull %8) #5
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then53
  %r.0 = phi i32 [ %call54, %if.then53 ], [ %call57, %if.else55 ]
  %tobool59.not = icmp eq i32 %r.0, 0
  br i1 %tobool59.not, label %cleanup70, label %for.inc

cleanup70:                                        ; preds = %if.end58
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %10 = load i8*, i8** %argv.addr.0123, align 8, !tbaa !3
  %call62 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i8* noundef %10) #5
  br label %cleanup74

for.inc:                                          ; preds = %if.end58
  %11 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  %call64 = call i32 @BN_print(%struct.bio_st* noundef %11, %struct.bignum_st* noundef %12) #5
  %13 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %14 = load i8*, i8** %argv.addr.0123, align 8, !tbaa !3
  %15 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  %call66 = call i32 @BN_check_prime(%struct.bignum_st* noundef %15, %struct.bignum_ctx* noundef null, %struct.bn_gencb_st* noundef null) #5
  %tobool67.not = icmp eq i32 %call66, 0
  %cond68 = select i1 %tobool67.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)
  %call69 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* noundef %14, i8* noundef %cond68) #5
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.0123, i64 1
  %16 = load i8*, i8** %incdec.ptr, align 8, !tbaa !3
  %tobool51.not = icmp eq i8* %16, null
  br i1 %tobool51.not, label %cleanup74, label %for.body, !llvm.loop !9

cleanup74:                                        ; preds = %sw.bb13, %for.inc, %for.cond.preheader, %if.then29, %if.then39, %if.then46, %if.then34, %opthelp, %sw.bb3, %cleanup70, %cleanup
  %ret.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %opthelp ], [ 1, %cleanup70 ], [ 0, %cleanup ], [ 1, %if.then34 ], [ 1, %if.then46 ], [ 1, %if.then39 ], [ 1, %if.then29 ], [ 0, %for.cond.preheader ], [ 0, %for.inc ], [ 1, %sw.bb13 ]
  %17 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %17) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %ret.0
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

declare dso_local i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare dso_local i32 @opt_num_rest() local_unnamed_addr #2

declare dso_local i8** @opt_rest() local_unnamed_addr #2

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare dso_local i32 @BN_generate_prime_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare dso_local i8* @BN_bn2hex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i8* @BN_bn2dec(%struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BN_dec2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #2

declare dso_local i32 @BN_print(%struct.bio_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare dso_local i32 @BN_check_prime(%struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #2

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
