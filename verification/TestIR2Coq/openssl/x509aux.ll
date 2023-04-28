; ModuleID = 'test/x509aux.c'
source_filename = "test/x509aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.x509_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [33 x i8] c"Usage: %s [options] certfile...\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [15 x i8] c"test/x509aux.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"test_certs\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"TRUSTED CERTIFICATE\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"CERTIFICATE\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"X509 CERTIFICATE\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"unexpected PEM object: %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"error parsing input %s\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"encoded length %ld of %s != input length %ld\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"unexpected buffer position after encoding %s\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"encoded content of %s does not match input\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"second d2i call failed for %s\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"X509_cmp for %s resulted in %d\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"encoded length %ld of %s > input length %ld\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"encoded cert content does not match input\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @test_get_argument_count() #5
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %conv = trunc i64 %call1 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 (i32)* noundef nonnull @test_certs, i32 noundef %conv, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end3, %if.then
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_certs(i32 noundef %num) #1 {
entry:
  %name = alloca i8*, align 8
  %header = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %p = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %bufp = alloca i8*, align 8
  %0 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %name, align 8, !tbaa !3
  %1 = bitcast i8** %header to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  store i8* null, i8** %header, align 8, !tbaa !3
  %2 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #6
  store i8* null, i8** %data, align 8, !tbaa !3
  %3 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6
  %conv = sext i32 %num to i64
  %call = tail call i8* @test_get_argument(i64 noundef %conv) #5
  %call1 = tail call %struct.bio_st* @BIO_new_file(i8* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5
  %4 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* noundef %4) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %5 = bitcast i8** %p to i8*
  %6 = bitcast i8** %buf to i8*
  %7 = bitcast i8** %bufp to i8*
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.preheader, %next
  %c.0153 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %next ]
  %call4 = call i32 @PEM_read_bio(%struct.bio_st* noundef %call1, i8** noundef nonnull %name, i8** noundef nonnull %header, i8** noundef nonnull %data, i64* noundef nonnull %len) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %8 = load i8*, i8** %name, align 8, !tbaa !3
  %call6 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0)) #7
  %cmp = icmp eq i32 %call6, 0
  %cond = select i1 %cmp, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509_AUX, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509
  %cond10 = select i1 %cmp, i32 (%struct.x509_st*, i8**)* @i2d_X509_AUX, i32 (%struct.x509_st*, i8**)* @i2d_X509
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6
  %9 = load i8*, i8** %data, align 8, !tbaa !3
  store i8* %9, i8** %p, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6
  store i8* null, i8** %buf, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  br i1 %cmp, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call12 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #7
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end20, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true
  %call16 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0)) #7
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true15
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* noundef %8) #5
  br label %next

if.end20:                                         ; preds = %land.lhs.true15, %land.lhs.true, %for.body
  %10 = load i64, i64* %len, align 8, !tbaa !7
  %call21 = call %struct.x509_st* %cond(%struct.x509_st** noundef null, i8** noundef nonnull %p, i64 noundef %10) #5, !callees !9
  %cmp22 = icmp eq %struct.x509_st* %call21, null
  br i1 %cmp22, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %11 = load i8*, i8** %p, align 8, !tbaa !3
  %12 = load i8*, i8** %data, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %13 = load i64, i64* %len, align 8, !tbaa !7
  %cmp24.not = icmp eq i64 %sub.ptr.sub, %13
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false, %if.end20
  %14 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* noundef %14) #5
  br label %next

if.end27:                                         ; preds = %lor.lhs.false
  %call28 = call i32 %cond10(%struct.x509_st* noundef nonnull %call21, i8** noundef null) #5, !callees !10
  %conv29 = sext i32 %call28 to i64
  %15 = load i64, i64* %len, align 8, !tbaa !7
  %cmp30.not = icmp eq i64 %15, %conv29
  br i1 %cmp30.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end27
  %16 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i64 noundef %conv29, i8* noundef %16, i64 noundef %15) #5
  br label %next

if.end33:                                         ; preds = %if.end27
  %call34 = call i8* @CRYPTO_malloc(i64 noundef %conv29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 71) #5
  store i8* %call34, i8** %bufp, align 8, !tbaa !3
  store i8* %call34, i8** %buf, align 8, !tbaa !3
  %cmp35 = icmp eq i8* %call34, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @test_perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0)) #5
  br label %next

if.end38:                                         ; preds = %if.end33
  %call39 = call i32 %cond10(%struct.x509_st* noundef nonnull %call21, i8** noundef nonnull %bufp) #5, !callees !10
  %conv40 = sext i32 %call39 to i64
  %17 = load i64, i64* %len, align 8, !tbaa !7
  %cmp41.not = icmp eq i64 %17, %conv40
  br i1 %cmp41.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end38
  %18 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i64 noundef %conv40, i8* noundef %18, i64 noundef %17) #5
  br label %next

if.end44:                                         ; preds = %if.end38
  %19 = load i8*, i8** %bufp, align 8, !tbaa !3
  %20 = load i8*, i8** %buf, align 8, !tbaa !3
  %sub.ptr.lhs.cast45 = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %20 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %cmp48.not = icmp eq i64 %sub.ptr.sub47, %conv40
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end44
  %21 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i8* noundef %21) #5
  br label %next

if.end51:                                         ; preds = %if.end44
  %22 = load i8*, i8** %data, align 8, !tbaa !3
  %call52 = call i32 @memcmp(i8* noundef %20, i8* noundef %22, i64 noundef %conv40) #7
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end51
  %23 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i8* noundef %23) #5
  br label %next

if.end56:                                         ; preds = %if.end51
  store i8* %20, i8** %p, align 8, !tbaa !3
  %call57 = call %struct.x509_st* %cond(%struct.x509_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv40) #5, !callees !9
  %cmp58 = icmp eq %struct.x509_st* %call57, null
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  %24 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i8* noundef %24) #5
  br label %next

if.end61:                                         ; preds = %if.end56
  %call62 = call i32 @X509_cmp(%struct.x509_st* noundef nonnull %call57, %struct.x509_st* noundef nonnull %call21) #5
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.end61
  %25 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* noundef %25, i32 noundef %call62) #5
  br label %next

if.end66:                                         ; preds = %if.end61
  %26 = load i8*, i8** %buf, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 107) #5
  store i8* null, i8** %buf, align 8, !tbaa !3
  %call67 = call i32 %cond10(%struct.x509_st* noundef nonnull %call21, i8** noundef nonnull %buf) #5, !callees !10
  %conv68 = sext i32 %call67 to i64
  %27 = load i64, i64* %len, align 8, !tbaa !7
  %cmp69.not = icmp eq i64 %27, %conv68
  br i1 %cmp69.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end66
  %28 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i64 noundef %conv68, i8* noundef %28, i64 noundef %27) #5
  br label %next

if.end72:                                         ; preds = %if.end66
  %29 = load i8*, i8** %buf, align 8, !tbaa !3
  %30 = load i8*, i8** %data, align 8, !tbaa !3
  %call73 = call i32 @memcmp(i8* noundef %29, i8* noundef %30, i64 noundef %conv68) #7
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end72
  %31 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i8* noundef %31) #5
  br label %next

if.end77:                                         ; preds = %if.end72
  br i1 %cmp, label %if.then79, label %next

if.then79:                                        ; preds = %if.end77
  call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 126) #5
  store i8* null, i8** %buf, align 8, !tbaa !3
  %call80 = call i32 %cond10(%struct.x509_st* noundef nonnull %call21, i8** noundef nonnull %buf) #5, !callees !10
  %conv81 = sext i32 %call80 to i64
  %32 = load i64, i64* %len, align 8, !tbaa !7
  %cmp82 = icmp slt i64 %32, %conv81
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then79
  %33 = load i8*, i8** %name, align 8, !tbaa !3
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i64 0, i64 0), i64 noundef %conv81, i8* noundef %33, i64 noundef %32) #5
  br label %next

if.end85:                                         ; preds = %if.then79
  %34 = load i8*, i8** %buf, align 8, !tbaa !3
  %35 = load i8*, i8** %data, align 8, !tbaa !3
  %call86 = call i32 @memcmp(i8* noundef %34, i8* noundef %35, i64 noundef %conv81) #7
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %next, label %if.then89

if.then89:                                        ; preds = %if.end85
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0)) #5
  br label %next

next:                                             ; preds = %if.end77, %if.end85, %if.then89, %if.then84, %if.then76, %if.then71, %if.then65, %if.then60, %if.then55, %if.then50, %if.then43, %if.then37, %if.then32, %if.then26, %if.then19
  %tobool3.not = phi i1 [ true, %if.end77 ], [ true, %if.end85 ], [ false, %if.then89 ], [ false, %if.then84 ], [ false, %if.then76 ], [ false, %if.then71 ], [ false, %if.then65 ], [ false, %if.then60 ], [ false, %if.then55 ], [ false, %if.then50 ], [ false, %if.then43 ], [ false, %if.then37 ], [ false, %if.then32 ], [ false, %if.then26 ], [ false, %if.then19 ]
  %cert.0 = phi %struct.x509_st* [ %call21, %if.end77 ], [ %call21, %if.end85 ], [ %call21, %if.then89 ], [ %call21, %if.then84 ], [ %call21, %if.then76 ], [ %call21, %if.then71 ], [ %call21, %if.then65 ], [ %call21, %if.then60 ], [ %call21, %if.then55 ], [ %call21, %if.then50 ], [ %call21, %if.then43 ], [ %call21, %if.then37 ], [ %call21, %if.then32 ], [ %call21, %if.then26 ], [ null, %if.then19 ]
  %reuse.0 = phi %struct.x509_st* [ %call57, %if.end77 ], [ %call57, %if.end85 ], [ %call57, %if.then89 ], [ %call57, %if.then84 ], [ %call57, %if.then76 ], [ %call57, %if.then71 ], [ %call57, %if.then65 ], [ null, %if.then60 ], [ null, %if.then55 ], [ null, %if.then50 ], [ null, %if.then43 ], [ null, %if.then37 ], [ null, %if.then32 ], [ null, %if.then26 ], [ null, %if.then19 ]
  call void @X509_free(%struct.x509_st* noundef %cert.0) #5
  call void @X509_free(%struct.x509_st* noundef %reuse.0) #5
  %36 = load i8*, i8** %buf, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 150) #5
  %37 = load i8*, i8** %name, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 151) #5
  %38 = load i8*, i8** %header, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 152) #5
  %39 = load i8*, i8** %data, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 noundef 153) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6
  %inc = add nuw nsw i32 %c.0153, 1
  br i1 %tobool3.not, label %land.rhs, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %next, %land.rhs
  %c.0.lcssa = phi i32 [ 1, %next ], [ %c.0153, %land.rhs ]
  %call92 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  %call93 = call i64 @ERR_peek_last_error() #5
  %call94 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call93) #8
  %cmp95 = icmp eq i32 %call94, 108
  %cmp98 = icmp ne i32 %c.0.lcssa, 0
  %or.cond = select i1 %cmp95, i1 %cmp98, i1 false
  br i1 %or.cond, label %if.then100, label %cleanup

if.then100:                                       ; preds = %for.end
  call void @ERR_clear_error() #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %if.then100
  %retval.0 = phi i32 [ 1, %if.then100 ], [ 0, %entry ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @PEM_read_bio(%struct.bio_st* noundef, i8** noundef, i8** noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local %struct.x509_st* @d2i_X509_AUX(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.x509_st* @d2i_X509(%struct.x509_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_X509_AUX(%struct.x509_st* noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_X509(%struct.x509_st* noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @test_perror(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @X509_cmp(%struct.x509_st* noundef, %struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #3

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

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
!9 = !{%struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509, %struct.x509_st* (%struct.x509_st**, i8**, i64)* @d2i_X509_AUX}
!10 = !{i32 (%struct.x509_st*, i8**)* @i2d_X509, i32 (%struct.x509_st*, i8**)* @i2d_X509_AUX}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
