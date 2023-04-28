; ModuleID = 'test/bio_readbuffer_test.c'
source_filename = "test/bio_readbuffer_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.bio_st = type opaque
%struct.bio_method_st = type opaque

@test_get_options.test_options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [26 x i8] c"Usage: %s [options] file\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [28 x i8] c"file\09File to run tests on.\0A\00", align 1
@filename = internal unnamed_addr global i8* null, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"test_readbuffer_file_bio\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"test/bio_readbuffer_test.c\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"in = BIO_new_file(filename, \22r\22)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"BIO_read_ex(in, expected, sizeof(expected), &readbytes)\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"readbytes\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"sizeof(expected)\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"readbuf_bio = BIO_new(BIO_f_readbuffer())\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"in_bio = BIO_new_file(filename, \22r\22)\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"BIO_tell(in_bio)\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"BIO_eof(in_bio)\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"(int)sizeof(buf) - 1\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"buf[len] == 0\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"buf[len - 1] == '\\n'\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"BIO_seek(in_bio, 0)\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"BIO_read_ex(in_bio, buf, len, &bytes)\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"expected + count\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"count\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #4
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  br label %while.cond, !llvm.loop !3

while.end:                                        ; preds = %while.cond
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #4
  store i8* %call1, i8** @filename, align 8, !tbaa !5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 (i32)* noundef nonnull @test_readbuffer_file_bio, i32 noundef 3, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_readbuffer_file_bio(i32 noundef %tstid) #1 {
entry:
  %buf = alloca [255 x i8], align 16
  %expected = alloca [4096 x i8], align 16
  %readbytes = alloca i64, align 8
  %bytes = alloca i64, align 8
  %0 = getelementptr inbounds [255 x i8], [255 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %0) #5
  %1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %1) #5
  %2 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  store i64 0, i64* %readbytes, align 8, !tbaa !9
  %3 = bitcast i64* %bytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5
  store i64 0, i64* %bytes, align 8, !tbaa !9
  %4 = load i8*, i8** @filename, align 8, !tbaa !5
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #4
  %5 = bitcast %struct.bio_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8* noundef %5) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @BIO_read_ex(%struct.bio_st* noundef %call, i8* noundef nonnull %1, i64 noundef 4096, i64* noundef nonnull %readbytes) #4
  %call3 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call2, i32 noundef 1) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load i64, i64* %readbytes, align 8, !tbaa !9
  %conv = trunc i64 %6 to i32
  %call6 = call i32 @test_int_lt(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv, i32 noundef 4096) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false5
  %call8 = call i32 @BIO_free(%struct.bio_st* noundef %call) #4
  %call9 = call %struct.bio_method_st* @BIO_f_readbuffer() #4
  %call10 = call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call9) #4
  %7 = bitcast %struct.bio_st* %call10 to i8*
  %call11 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* noundef %7) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end
  %8 = load i8*, i8** @filename, align 8, !tbaa !5
  %call14 = call %struct.bio_st* @BIO_new_file(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #4
  %9 = bitcast %struct.bio_st* %call14 to i8*
  %call15 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* noundef %9) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false13
  %call19 = call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call10, %struct.bio_st* noundef %call14) #4
  %call20 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 133, i64 noundef 0, i8* noundef null) #4
  %conv21 = trunc i64 %call20 to i32
  %call22 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv21, i32 noundef 0) #4
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.end25

if.end25:                                         ; preds = %if.end18
  %cmp.not = icmp eq i32 %tstid, 0
  br i1 %cmp.not, label %if.end88, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end25
  %call28154 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv29155 = trunc i64 %call28154 to i32
  %tobool30.not156 = icmp eq i32 %conv29155, 0
  br i1 %tobool30.not156, label %while.body.lr.ph, label %if.end88

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp81 = icmp eq i32 %tstid, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end87
  %partial.0157 = phi i32 [ 4, %while.body.lr.ph ], [ %partial.1, %if.end87 ]
  %call32 = call i32 @BIO_gets(%struct.bio_st* noundef %call19, i8* noundef nonnull %0, i32 noundef 255) #4
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %while.body
  %call36 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv37 = trunc i64 %call36 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv39) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end80

if.else:                                          ; preds = %while.body
  %call44 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call32, i32 noundef 0) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.else
  %call47 = call i32 @test_int_le(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %call32, i32 noundef 254) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false46
  %idxprom = sext i32 %call32 to i64
  %arrayidx = getelementptr inbounds [255 x i8], [255 x i8]* %buf, i64 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !11
  %cmp52 = icmp eq i8 %10, 0
  %conv53 = zext i1 %cmp52 to i32
  %call56 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv53) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %if.end50
  %cmp60 = icmp sgt i32 %call32, 1
  br i1 %cmp60, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %if.end59
  %call62 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv63 = trunc i64 %call62 to i32
  %tobool64 = icmp eq i32 %conv63, 0
  %cmp66 = icmp ne i32 %call32, 254
  %or.cond = select i1 %tobool64, i1 %cmp66, i1 false
  br i1 %or.cond, label %land.lhs.true68, label %if.end80

land.lhs.true68:                                  ; preds = %land.lhs.true
  %sub = add nsw i32 %call32, -1
  %11 = zext i32 %sub to i64
  %arrayidx70 = getelementptr inbounds [255 x i8], [255 x i8]* %buf, i64 0, i64 %11
  %12 = load i8, i8* %arrayidx70, align 1, !tbaa !11
  %cmp72 = icmp eq i8 %12, 10
  %conv73 = zext i1 %cmp72 to i32
  %call76 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %if.end80

if.end80:                                         ; preds = %if.end59, %land.lhs.true, %land.lhs.true68, %if.then35
  br i1 %cmp81, label %land.lhs.true83, label %if.end87

land.lhs.true83:                                  ; preds = %if.end80
  %dec = add nsw i32 %partial.0157, -1
  %cmp84 = icmp eq i32 %dec, 0
  br i1 %cmp84, label %if.end88, label %if.end87

if.end87:                                         ; preds = %land.lhs.true83, %if.end80
  %partial.1 = phi i32 [ %dec, %land.lhs.true83 ], [ %partial.0157, %if.end80 ]
  %call28 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv29 = trunc i64 %call28 to i32
  %tobool30.not = icmp eq i32 %conv29, 0
  br i1 %tobool30.not, label %while.body, label %if.end88, !llvm.loop !12

if.end88:                                         ; preds = %land.lhs.true83, %if.end87, %while.cond.preheader, %if.end25
  %call89 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 128, i64 noundef 0, i8* noundef null) #4
  %conv90 = trunc i64 %call89 to i32
  %call91 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv90, i32 noundef 1) #4
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %while.cond95.preheader

while.cond95.preheader:                           ; preds = %if.end88
  %call96158 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv97159 = trunc i64 %call96158 to i32
  %tobool98.not160 = icmp eq i32 %conv97159, 0
  br i1 %tobool98.not160, label %while.body100, label %while.end114

while.body100:                                    ; preds = %while.cond95.preheader, %if.end113
  %count.0162 = phi i64 [ %add, %if.end113 ], [ 0, %while.cond95.preheader ]
  %len.0161 = phi i64 [ 255, %if.end113 ], [ 8, %while.cond95.preheader ]
  %call103 = call i32 @BIO_read_ex(%struct.bio_st* noundef %call19, i8* noundef nonnull %0, i64 noundef %len.0161, i64* noundef nonnull %bytes) #4
  %call104 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32 noundef %call103, i32 noundef 1) #4
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %while.end114, label %if.end107

if.end107:                                        ; preds = %while.body100
  %13 = load i64, i64* %bytes, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds [4096 x i8], [4096 x i8]* %expected, i64 0, i64 %count.0162
  %call110 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %13, i8* noundef nonnull %add.ptr, i64 noundef %13) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.end113

if.end113:                                        ; preds = %if.end107
  %14 = load i64, i64* %bytes, align 8, !tbaa !9
  %add = add i64 %14, %count.0162
  %call96 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call19, i32 noundef 2, i64 noundef 0, i8* noundef null) #4
  %conv97 = trunc i64 %call96 to i32
  %tobool98.not = icmp eq i32 %conv97, 0
  br i1 %tobool98.not, label %while.body100, label %while.end114, !llvm.loop !13

while.end114:                                     ; preds = %if.end113, %while.body100, %while.cond95.preheader
  %count.0.lcssa = phi i64 [ 0, %while.cond95.preheader ], [ %count.0162, %while.body100 ], [ %add, %if.end113 ]
  %conv115 = trunc i64 %count.0.lcssa to i32
  %15 = load i64, i64* %readbytes, align 8, !tbaa !9
  %conv116 = trunc i64 %15 to i32
  %call117 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv115, i32 noundef %conv116) #4
  %tobool118.not = icmp ne i32 %call117, 0
  %spec.select = zext i1 %tobool118.not to i32
  br label %err

err:                                              ; preds = %land.lhs.true68, %if.end50, %if.else, %lor.lhs.false46, %if.then35, %if.end107, %while.end114, %if.end88, %if.end18, %if.end, %lor.lhs.false13, %entry, %lor.lhs.false, %lor.lhs.false5
  %ret.0 = phi i32 [ 0, %if.end88 ], [ 0, %if.end18 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %while.end114 ], [ 0, %if.end107 ], [ 0, %if.then35 ], [ 0, %lor.lhs.false46 ], [ 0, %if.else ], [ 0, %if.end50 ], [ 0, %land.lhs.true68 ]
  %in.0 = phi %struct.bio_st* [ null, %if.end88 ], [ null, %if.end18 ], [ null, %lor.lhs.false13 ], [ null, %if.end ], [ %call, %lor.lhs.false5 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ null, %while.end114 ], [ null, %if.end107 ], [ null, %if.then35 ], [ null, %lor.lhs.false46 ], [ null, %if.else ], [ null, %if.end50 ], [ null, %land.lhs.true68 ]
  %in_bio.0 = phi %struct.bio_st* [ %call19, %if.end88 ], [ %call19, %if.end18 ], [ %call14, %lor.lhs.false13 ], [ null, %if.end ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call19, %while.end114 ], [ %call19, %if.end107 ], [ %call19, %if.then35 ], [ %call19, %lor.lhs.false46 ], [ %call19, %if.else ], [ %call19, %if.end50 ], [ %call19, %land.lhs.true68 ]
  %readbuf_bio.0 = phi %struct.bio_st* [ null, %if.end88 ], [ null, %if.end18 ], [ %call10, %lor.lhs.false13 ], [ %call10, %if.end ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %while.end114 ], [ null, %if.end107 ], [ null, %if.then35 ], [ null, %lor.lhs.false46 ], [ null, %if.else ], [ null, %if.end50 ], [ null, %land.lhs.true68 ]
  %call121 = call i32 @BIO_free(%struct.bio_st* noundef %in.0) #4
  call void @BIO_free_all(%struct.bio_st* noundef %in_bio.0) #4
  %call122 = call i32 @BIO_free(%struct.bio_st* noundef %readbuf_bio.0) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %0) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_f_readbuffer() local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
