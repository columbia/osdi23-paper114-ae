; ModuleID = 'test/bio_prefix_text.c'
source_filename = "test/bio_prefix_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.options_st = type { i8*, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.bio_method_st = type opaque

@bio_err = internal unnamed_addr global %struct.bio_st* null, align 8
@options = internal constant [4 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 1, i32 112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 2, i32 115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Amount of BIO_f_prefix() filters\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Indentation in form '[idx:]indent'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Prefix in form '[idx:]prefix'\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@bio_in = internal unnamed_addr global %struct.bio_st* null, align 8
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@bio_out = internal unnamed_addr global %struct.bio_st* null, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"assertion failed: bio_in != NULL\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"test/bio_prefix_text.c\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"assertion failed: bio_out != NULL\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"assertion failed: bio_err != NULL\00", align 1
@amount = internal unnamed_addr global i64 0, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"%s: -n argument isn't a decimal number: %s\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: must set up at least one filter\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s: failed setting up filter chain\00", align 1
@chain = internal unnamed_addr global %struct.bio_st** null, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"%s: -i given before -n\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"%s: -i index isn't a decimal number: %s\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"%s: -i value isn't a decimal number: %s\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"%s: index (%zu) not within range 0..%zu\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%s: failed setting indentation: %s\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s: -p given before -n\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"%s: -p index isn't a decimal number: %s\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"%s: failed setting prefix: %s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @opt_printf_stderr(i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call = call i32 @BIO_vprintf(%struct.bio_st* noundef %1, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #8
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i32 @BIO_vprintf(%struct.bio_st* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @opt_init(i32 noundef %argc, i8** noundef %argv, %struct.options_st* noundef getelementptr inbounds ([4 x %struct.options_st], [4 x %struct.options_st]* @options, i64 0, i64 0)) #8
  %call1 = tail call fastcc i32 @setup() #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call fastcc i32 @run_pipe() #9
  %tobool3 = icmp eq i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 1, %entry ], [ %phi.cast, %land.rhs ]
  tail call fastcc void @cleanup() #9
  ret i32 %0
}

declare dso_local i8* @opt_init(i32 noundef, i8** noundef, %struct.options_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup() unnamed_addr #0 {
entry:
  %endptr = alloca i8*, align 8
  %0 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call i8* @opt_getprog() #8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %call1 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %1, i32 noundef 16) #8
  store %struct.bio_st* %call1, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call2 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %2, i32 noundef 16) #8
  store %struct.bio_st* %call2, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call3 = tail call %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef %3, i32 noundef 16) #8
  store %struct.bio_st* %call3, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %cmp.not = icmp eq %struct.bio_st* %4, null
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef 155) #10
  unreachable

cond.end:                                         ; preds = %entry
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %cmp4.not = icmp eq %struct.bio_st* %5, null
  br i1 %cmp4.not, label %cond.false6, label %cond.end7

cond.false6:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef 156) #10
  unreachable

cond.end7:                                        ; preds = %cond.end
  %cmp9.not = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp9.not, label %cond.false11, label %while.cond

cond.false11:                                     ; preds = %cond.end7
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef 157) #10
  unreachable

while.cond:                                       ; preds = %cond.end7, %while.cond.backedge
  %call14 = call i32 @opt_next() #8
  switch i32 %call14, label %cleanup.loopexit [
    i32 0, label %cleanup
    i32 1, label %sw.bb
    i32 2, label %sw.bb30
    i32 3, label %sw.bb69
  ]

sw.bb:                                            ; preds = %while.cond
  %call16 = call i8* @opt_arg() #8
  %call17 = call i64 @strtoul(i8* noundef %call16, i8** noundef nonnull %endptr, i32 noundef 10) #8
  store i64 %call17, i64* @amount, align 8, !tbaa !7
  %6 = load i8*, i8** %endptr, align 8, !tbaa !3
  %7 = load i8, i8* %6, align 1, !tbaa !9
  %cmp18.not = icmp eq i8 %7, 0
  br i1 %cmp18.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %8 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call20 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %8, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call, i8* noundef %call16) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %cmp21 = icmp eq i64 %call17, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call24 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %9, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call26 = call fastcc i32 @setup_bio_chain() #9
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %if.then27, label %while.cond.backedge

if.then27:                                        ; preds = %if.end25
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call28 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %10, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call) #8
  br label %cleanup

sw.bb30:                                          ; preds = %while.cond
  %11 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %cmp31 = icmp eq %struct.bio_st** %11, null
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %sw.bb30
  %12 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call34 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %12, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call) #8
  br label %cleanup

if.end35:                                         ; preds = %sw.bb30
  %call36 = call i8* @opt_arg() #8
  %call37 = call i8* @strchr(i8* noundef %call36, i32 noundef 58) #11
  %cmp38.not = icmp eq i8* %call37, null
  br i1 %cmp38.not, label %if.end49, label %if.then40

if.then40:                                        ; preds = %if.end35
  %call41 = call i64 @strtoul(i8* noundef %call36, i8** noundef nonnull %endptr, i32 noundef 10) #8
  %13 = load i8*, i8** %endptr, align 8, !tbaa !3
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %cmp44.not = icmp eq i8 %14, 58
  br i1 %cmp44.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.then40
  %15 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call47 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %15, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call, i8* noundef %call36) #8
  br label %cleanup

if.end48:                                         ; preds = %if.then40
  %incdec.ptr = getelementptr inbounds i8, i8* %call37, i64 1
  br label %if.end49

if.end49:                                         ; preds = %if.end35, %if.end48
  %colon.0 = phi i8* [ %incdec.ptr, %if.end48 ], [ %call36, %if.end35 ]
  %idx.0 = phi i64 [ %call41, %if.end48 ], [ 0, %if.end35 ]
  %call50 = call i64 @strtoul(i8* noundef %colon.0, i8** noundef nonnull %endptr, i32 noundef 10) #8
  %16 = load i8*, i8** %endptr, align 8, !tbaa !3
  %17 = load i8, i8* %16, align 1, !tbaa !9
  %cmp53.not = icmp eq i8 %17, 0
  br i1 %cmp53.not, label %if.end57, label %if.then55

if.then55:                                        ; preds = %if.end49
  %18 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call56 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %18, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* noundef %call, i8* noundef %call36) #8
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  %19 = load i64, i64* @amount, align 8, !tbaa !7
  %cmp58.not = icmp ult i64 %idx.0, %19
  br i1 %cmp58.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end57
  %20 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %sub = add i64 %19, -1
  %call61 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %20, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call, i64 noundef %idx.0, i64 noundef %sub) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %21 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds %struct.bio_st*, %struct.bio_st** %21, i64 %idx.0
  %22 = load %struct.bio_st*, %struct.bio_st** %arrayidx63, align 8, !tbaa !3
  %call64 = call i64 @BIO_ctrl(%struct.bio_st* noundef %22, i32 noundef 80, i64 noundef %call50, i8* noundef null) #8
  %tobool65.not = icmp eq i64 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %while.cond.backedge

if.then66:                                        ; preds = %if.end62
  %23 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call67 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %23, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call, i8* noundef %call36) #8
  br label %cleanup

sw.bb69:                                          ; preds = %while.cond
  %24 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %cmp70 = icmp eq %struct.bio_st** %24, null
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %sw.bb69
  %25 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call73 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %25, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call) #8
  br label %cleanup

if.end74:                                         ; preds = %sw.bb69
  %call75 = call i8* @opt_arg() #8
  %call76 = call i8* @strchr(i8* noundef %call75, i32 noundef 58) #11
  %cmp77.not = icmp eq i8* %call76, null
  br i1 %cmp77.not, label %if.end90, label %if.then79

if.then79:                                        ; preds = %if.end74
  %call80 = call i64 @strtoul(i8* noundef %call75, i8** noundef nonnull %endptr, i32 noundef 10) #8
  %26 = load i8*, i8** %endptr, align 8, !tbaa !3
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %cmp83.not = icmp eq i8 %27, 58
  br i1 %cmp83.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.then79
  %28 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call86 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %28, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call, i8* noundef %call75) #8
  br label %cleanup

if.end87:                                         ; preds = %if.then79
  %incdec.ptr88 = getelementptr inbounds i8, i8* %call76, i64 1
  br label %if.end90

if.end90:                                         ; preds = %if.end74, %if.end87
  %colon.1 = phi i8* [ %incdec.ptr88, %if.end87 ], [ %call75, %if.end74 ]
  %idx.1 = phi i64 [ %call80, %if.end87 ], [ 0, %if.end74 ]
  %29 = load i64, i64* @amount, align 8, !tbaa !7
  %cmp91.not = icmp ult i64 %idx.1, %29
  br i1 %cmp91.not, label %if.end96, label %if.then93

if.then93:                                        ; preds = %if.end90
  %30 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %sub94 = add i64 %29, -1
  %call95 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %30, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call, i64 noundef %idx.1, i64 noundef %sub94) #8
  br label %cleanup

if.end96:                                         ; preds = %if.end90
  %31 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %arrayidx97 = getelementptr inbounds %struct.bio_st*, %struct.bio_st** %31, i64 %idx.1
  %32 = load %struct.bio_st*, %struct.bio_st** %arrayidx97, align 8, !tbaa !3
  %call98 = call i64 @BIO_ctrl(%struct.bio_st* noundef %32, i32 noundef 79, i64 noundef 0, i8* noundef %colon.1) #8
  %tobool99.not = icmp eq i64 %call98, 0
  br i1 %tobool99.not, label %if.then100, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end96, %if.end62, %if.end25
  br label %while.cond, !llvm.loop !10

if.then100:                                       ; preds = %if.end96
  %33 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  %call101 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %33, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* noundef %call, i8* noundef %call75) #8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %cleanup.loopexit, %if.then100, %if.then93, %if.then85, %if.then72, %if.then66, %if.then60, %if.then55, %if.then46, %if.then33, %if.then27, %if.then23, %if.then
  %retval.0 = phi i32 [ 0, %if.then72 ], [ 0, %if.then85 ], [ 0, %if.then93 ], [ 0, %if.then100 ], [ 0, %if.then33 ], [ 0, %if.then46 ], [ 0, %if.then55 ], [ 0, %if.then60 ], [ 0, %if.then66 ], [ 0, %if.then ], [ 0, %if.then23 ], [ 0, %if.then27 ], [ 0, %cleanup.loopexit ], [ 1, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_pipe() unnamed_addr #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %bytes_in = alloca i64, align 8
  %bytes = alloca i64, align 8
  %0 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %0) #7
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %call23 = call i64 @BIO_ctrl(%struct.bio_st* noundef %1, i32 noundef 2, i64 noundef 0, i8* noundef null) #8
  %conv24 = trunc i64 %call23 to i32
  %tobool.not25 = icmp eq i32 %conv24, 0
  br i1 %tobool.not25, label %while.body.lr.ph, label %cleanup16

while.body.lr.ph:                                 ; preds = %entry
  %2 = bitcast i64* %bytes_in to i8*
  %3 = bitcast i64* %bytes to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %call1 = call i32 @BIO_read_ex(%struct.bio_st* noundef %4, i8* noundef nonnull %0, i64 noundef 4096, i64* noundef nonnull %bytes_in) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup16.critedge21, label %while.cond3

while.cond3:                                      ; preds = %while.body, %while.body5
  %bytes_out.0 = phi i64 [ %add, %while.body5 ], [ 0, %while.body ]
  %5 = load i64, i64* %bytes_in, align 8, !tbaa !7
  %cmp = icmp ult i64 %bytes_out.0, %5
  br i1 %cmp, label %while.body5, label %cleanup11

while.body5:                                      ; preds = %while.cond3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  %6 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %7 = load i64, i64* @amount, align 8, !tbaa !7
  %sub = add i64 %7, -1
  %arrayidx = getelementptr inbounds %struct.bio_st*, %struct.bio_st** %6, i64 %sub
  %8 = load %struct.bio_st*, %struct.bio_st** %arrayidx, align 8, !tbaa !3
  %call7 = call i32 @BIO_write_ex(%struct.bio_st* noundef %8, i8* noundef nonnull %0, i64 noundef %5, i64* noundef nonnull %bytes) #8
  %tobool8.not = icmp eq i32 %call7, 0
  %9 = load i64, i64* %bytes, align 8
  %add = add i64 %9, %bytes_out.0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  br i1 %tobool8.not, label %cleanup16.critedge, label %while.cond3, !llvm.loop !12

cleanup11:                                        ; preds = %while.cond3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  %10 = load %struct.bio_st*, %struct.bio_st** @bio_in, align 8, !tbaa !3
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %10, i32 noundef 2, i64 noundef 0, i8* noundef null) #8
  %conv = trunc i64 %call to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %while.body, label %cleanup16, !llvm.loop !13

cleanup16.critedge:                               ; preds = %while.body5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %cleanup16

cleanup16.critedge21:                             ; preds = %while.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup11, %entry, %cleanup16.critedge21, %cleanup16.critedge
  %retval.4 = phi i32 [ 0, %cleanup16.critedge ], [ 0, %cleanup16.critedge21 ], [ 1, %entry ], [ 1, %cleanup11 ]
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %0) #7
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cleanup() unnamed_addr #0 {
entry:
  %0 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %cmp.not = icmp eq %struct.bio_st** %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @amount, align 8, !tbaa !7
  %sub = add i64 %1, -1
  %arrayidx = getelementptr inbounds %struct.bio_st*, %struct.bio_st** %0, i64 %sub
  %2 = load %struct.bio_st*, %struct.bio_st** %arrayidx, align 8, !tbaa !3
  tail call void @BIO_free_all(%struct.bio_st* noundef %2) #8
  %3 = load i8*, i8** bitcast (%struct.bio_st*** @chain to i8**), align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef 130) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_in, align 8, !tbaa !3
  tail call void @BIO_free_all(%struct.bio_st* noundef %4) #8
  %5 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  tail call void @BIO_free_all(%struct.bio_st* noundef %5) #8
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !3
  tail call void @BIO_free_all(%struct.bio_st* noundef %6) #8
  ret void
}

declare dso_local i8* @opt_getprog() local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_fp(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @setup_bio_chain() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @amount, align 8, !tbaa !7
  %mul = shl i64 %0, 3
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef 99) #8
  store i8* %call, i8** bitcast (%struct.bio_st*** @chain to i8**), align 8, !tbaa !3
  %cmp.not = icmp eq i8* %call, null
  %1 = bitcast i8* %call to %struct.bio_st**
  br i1 %cmp.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call1 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef %2) #8
  %cmp2.not11 = icmp eq i64 %0, 0
  br i1 %cmp2.not11, label %if.then.if.end16_crit_edge, label %for.body

if.then.if.end16_crit_edge:                       ; preds = %if.then
  %.pre = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  br label %if.end16

for.body:                                         ; preds = %if.then, %for.inc
  %i.014 = phi i64 [ %inc, %for.inc ], [ 0, %if.then ]
  %n.013 = phi i64 [ %dec, %for.inc ], [ %0, %if.then ]
  %next.012 = phi %struct.bio_st* [ %call7, %for.inc ], [ %2, %if.then ]
  %call3 = tail call %struct.bio_method_st* @BIO_f_prefix() #8
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #8
  %cmp5 = icmp eq %struct.bio_st* %call4, null
  br i1 %cmp5, label %err, label %cleanup

cleanup:                                          ; preds = %for.body
  %call7 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call4, %struct.bio_st* noundef %next.012) #8
  %3 = load %struct.bio_st**, %struct.bio_st*** @chain, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.bio_st*, %struct.bio_st** %3, i64 %i.014
  store %struct.bio_st* %call7, %struct.bio_st** %arrayidx, align 8, !tbaa !3
  %cmp9 = icmp eq %struct.bio_st* %call7, null
  br i1 %cmp9, label %err, label %for.inc

for.inc:                                          ; preds = %cleanup
  %inc = add nuw i64 %i.014, 1
  %dec = add i64 %n.013, -1
  %cmp2.not = icmp eq i64 %dec, 0
  br i1 %cmp2.not, label %if.end16, label %for.body, !llvm.loop !14

if.end16:                                         ; preds = %for.inc, %if.then.if.end16_crit_edge, %entry
  %4 = phi %struct.bio_st** [ %.pre, %if.then.if.end16_crit_edge ], [ %1, %entry ], [ %3, %for.inc ]
  %cmp17 = icmp ne %struct.bio_st** %4, null
  %conv = zext i1 %cmp17 to i32
  br label %cleanup18

err:                                              ; preds = %cleanup, %for.body
  tail call void @BIO_free_all(%struct.bio_st* noundef %next.012) #8
  %5 = load i8*, i8** bitcast (%struct.bio_st*** @chain to i8**), align 8, !tbaa !3
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef 122) #8
  br label %cleanup18

cleanup18:                                        ; preds = %err, %if.end16
  %retval.0 = phi i32 [ 0, %err ], [ %conv, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_f_prefix() local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_write_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!"long", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
