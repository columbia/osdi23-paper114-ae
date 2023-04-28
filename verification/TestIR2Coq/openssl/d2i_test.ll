; ModuleID = 'test/d2i_test.c'
source_filename = "test/d2i_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.error_enum = type { i8*, i32 }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.bio_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [60 x i8] c"Usage: %s [options] item_name expected_error test_file.der\0A\00", align 1
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
@setup_tests.expected_errors = internal unnamed_addr constant [5 x %struct.error_enum] [%struct.error_enum { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.error_enum { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 2 }, %struct.error_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 3 }, %struct.error_enum { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 4 }, %struct.error_enum { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 5 }], align 16
@.str.14 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"BIO\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"test/d2i_test.c\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"test_type_name = test_get_argument(0)\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"expected_error_string = test_get_argument(1)\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"test_file = test_get_argument(2)\00", align 1
@test_file = internal unnamed_addr global i8* null, align 8
@item_type = internal unnamed_addr global %struct.ASN1_ITEM_st* null, align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"Unknown type %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Supported types:\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@expected_error = internal unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"Unknown expected error %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"test_bad_asn1\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"bio\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"ASN1_item_d2i_bio(item_type, bio, NULL)\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"expected_error\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ASN1_DECODE\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"ASN1_ENCODE\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"ASN1_COMPARE\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"ASN1_OK\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"ERR_GET_REASON(ERR_peek_error()) == ERR_R_MALLOC_FAILURE\00", align 1

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
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %cleanup33

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #5
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* noundef %call1) #5
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i8* @test_get_argument(i64 noundef 1) #5
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8* noundef %call4) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup33, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i8* @test_get_argument(i64 noundef 2) #5
  store i8* %call8, i8** @test_file, align 8, !tbaa !3
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* noundef %call8) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup33, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false7
  %call13 = tail call %struct.ASN1_ITEM_st* @ASN1_ITEM_lookup(i8* noundef %call1) #5
  store %struct.ASN1_ITEM_st* %call13, %struct.ASN1_ITEM_st** @item_type, align 8, !tbaa !3
  %cmp = icmp eq %struct.ASN1_ITEM_st* %call13, null
  br i1 %cmp, label %if.then14, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end12
  %call22 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* noundef %call4) #6
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %for.inc27

if.then14:                                        ; preds = %if.end12
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 143, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* noundef %call1) #5
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #5
  %call1552 = tail call %struct.ASN1_ITEM_st* @ASN1_ITEM_get(i64 noundef 0) #5
  %cmp1653 = icmp eq %struct.ASN1_ITEM_st* %call1552, null
  br i1 %cmp1653, label %cleanup33, label %for.inc

for.inc:                                          ; preds = %if.then14, %for.inc
  %call1555 = phi %struct.ASN1_ITEM_st* [ %call15, %for.inc ], [ %call1552, %if.then14 ]
  %i.054 = phi i64 [ %inc, %for.inc ], [ 0, %if.then14 ]
  %sname = getelementptr inbounds %struct.ASN1_ITEM_st, %struct.ASN1_ITEM_st* %call1555, i64 0, i32 6
  %0 = load i8*, i8** %sname, align 8, !tbaa !7
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* noundef %0) #5
  %inc = add i64 %i.054, 1
  %call15 = tail call %struct.ASN1_ITEM_st* @ASN1_ITEM_get(i64 noundef %inc) #5
  %cmp16 = icmp eq %struct.ASN1_ITEM_st* %call15, null
  br i1 %cmp16, label %cleanup33, label %for.inc

if.then24:                                        ; preds = %for.inc27.3, %for.inc27.2, %for.inc27.1, %for.inc27, %for.body.preheader
  %i.151.lcssa = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc27 ], [ 2, %for.inc27.1 ], [ 3, %for.inc27.2 ], [ 4, %for.inc27.3 ]
  %code = getelementptr inbounds [5 x %struct.error_enum], [5 x %struct.error_enum]* @setup_tests.expected_errors, i64 0, i64 %i.151.lcssa, i32 1
  %1 = load i32, i32* %code, align 8, !tbaa !10
  store i32 %1, i32* @expected_error, align 4, !tbaa !12
  br label %for.end29

for.inc27:                                        ; preds = %for.body.preheader
  %call22.1 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef %call4) #6
  %cmp23.1 = icmp eq i32 %call22.1, 0
  br i1 %cmp23.1, label %if.then24, label %for.inc27.1

for.inc27.1:                                      ; preds = %for.inc27
  %call22.2 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* noundef %call4) #6
  %cmp23.2 = icmp eq i32 %call22.2, 0
  br i1 %cmp23.2, label %if.then24, label %for.inc27.2

for.inc27.2:                                      ; preds = %for.inc27.1
  %call22.3 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* noundef %call4) #6
  %cmp23.3 = icmp eq i32 %call22.3, 0
  br i1 %cmp23.3, label %if.then24, label %for.inc27.3

for.inc27.3:                                      ; preds = %for.inc27.2
  %call22.4 = tail call i32 @strcmp(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* noundef %call4) #6
  %cmp23.4 = icmp eq i32 %call22.4, 0
  br i1 %cmp23.4, label %if.then24, label %for.inc27.4

for.inc27.4:                                      ; preds = %for.inc27.3
  %.pr = load i32, i32* @expected_error, align 4, !tbaa !12
  br label %for.end29

for.end29:                                        ; preds = %for.inc27.4, %if.then24
  %2 = phi i32 [ %.pr, %for.inc27.4 ], [ %1, %if.then24 ]
  %cmp30 = icmp eq i32 %2, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end29
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8* noundef %call4) #5
  br label %cleanup33

if.end32:                                         ; preds = %for.end29
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_bad_asn1) #5
  br label %cleanup33

cleanup33:                                        ; preds = %for.inc, %if.then14, %if.end, %lor.lhs.false, %lor.lhs.false7, %if.end32, %if.then31, %if.then
  %retval.0 = phi i32 [ 0, %if.then31 ], [ 1, %if.end32 ], [ 0, %if.then ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %if.then14 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local %struct.ASN1_ITEM_st* @ASN1_ITEM_lookup(i8* noundef) local_unnamed_addr #3

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.ASN1_ITEM_st* @ASN1_ITEM_get(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bad_asn1() #1 {
entry:
  %buf = alloca [2048 x i8], align 16
  %buf_ptr = alloca i8*, align 8
  %der = alloca i8*, align 8
  %0 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #7
  %1 = bitcast i8** %buf_ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store i8* %0, i8** %buf_ptr, align 8, !tbaa !3
  %2 = bitcast i8** %der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store i8* null, i8** %der, align 8, !tbaa !3
  %3 = load i8*, i8** @test_file, align 8, !tbaa !3
  %call = call %struct.bio_st* @BIO_new_file(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #5
  %4 = bitcast %struct.bio_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i8* noundef %4) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @expected_error, align 4, !tbaa !12
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %6 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** @item_type, align 8, !tbaa !3
  %call3 = call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %6, %struct.bio_st* noundef %call, i8* noundef null) #5
  %call4 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* noundef %call3) #5
  %tobool5.not.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not.not, label %if.end64, label %land.lhs.true

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @BIO_read(%struct.bio_st* noundef %call, i8* noundef nonnull %0, i32 noundef 2048) #5
  %call11 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #5
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end64, label %if.end14

if.end14:                                         ; preds = %if.end8
  %conv = sext i32 %call10 to i64
  %7 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** @item_type, align 8, !tbaa !3
  %call15 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef null, i8** noundef nonnull %buf_ptr, i64 noundef %conv, %struct.ASN1_ITEM_st* noundef %7) #5
  %cmp16 = icmp eq %struct.ASN1_VALUE_st* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end14
  %8 = load i32, i32* @expected_error, align 4, !tbaa !12
  %call19 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 noundef %8, i32 noundef 3) #5
  %tobool20.not.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not.not, label %if.end64, label %land.lhs.true

if.end23:                                         ; preds = %if.end14
  %9 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** @item_type, align 8, !tbaa !3
  %call24 = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef nonnull %call15, i8** noundef nonnull %der, %struct.ASN1_ITEM_st* noundef %9) #5
  %10 = load i8*, i8** %der, align 8, !tbaa !3
  %cmp25 = icmp eq i8* %10, null
  %cmp27 = icmp slt i32 %call24, 0
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end23
  %11 = load i32, i32* @expected_error, align 4, !tbaa !12
  %call30 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32 noundef %11, i32 noundef 4) #5
  %tobool31.not.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not.not, label %if.end64, label %land.lhs.true

if.end34:                                         ; preds = %if.end23
  %cmp35.not = icmp eq i32 %call24, %call10
  br i1 %cmp35.not, label %lor.lhs.false37, label %if.then43

lor.lhs.false37:                                  ; preds = %if.end34
  %conv3997 = zext i32 %call10 to i64
  %call40 = call i32 @memcmp(i8* noundef nonnull %10, i8* noundef nonnull %0, i64 noundef %conv3997) #6
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %err, label %if.then43

if.then43:                                        ; preds = %lor.lhs.false37, %if.end34
  %12 = load i32, i32* @expected_error, align 4, !tbaa !12
  %call44 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 noundef %12, i32 noundef 5) #5
  %tobool45.not.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not.not, label %if.end64, label %land.lhs.true

err:                                              ; preds = %lor.lhs.false37
  %13 = load i32, i32* @expected_error, align 4, !tbaa !12
  %call49 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i32 noundef %13, i32 noundef 1) #5
  %tobool50.not.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not.not, label %if.end64, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then43, %if.then29, %if.then18, %if.then2, %err
  %value.096 = phi %struct.ASN1_VALUE_st* [ null, %if.then2 ], [ %call15, %err ], [ null, %if.then18 ], [ %call15, %if.then29 ], [ %call15, %if.then43 ]
  %call55 = call i64 @ERR_peek_error() #5
  %call56 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call55) #8
  %cmp57 = icmp eq i32 %call56, 786688
  %conv58 = zext i1 %cmp57 to i32
  %call61 = call i32 @test_false(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv58) #5
  %tobool62.not = icmp ne i32 %call61, 0
  %spec.select92 = zext i1 %tobool62.not to i32
  br label %if.end64

if.end64:                                         ; preds = %if.end8, %if.then43, %if.then29, %if.then18, %if.then2, %land.lhs.true, %err
  %value.095 = phi %struct.ASN1_VALUE_st* [ %call15, %err ], [ %value.096, %land.lhs.true ], [ null, %if.then2 ], [ null, %if.then18 ], [ %call15, %if.then29 ], [ %call15, %if.then43 ], [ null, %if.end8 ]
  %ret.1 = phi i32 [ 0, %err ], [ %spec.select92, %land.lhs.true ], [ 0, %if.then2 ], [ 0, %if.then18 ], [ 0, %if.then29 ], [ 0, %if.then43 ], [ 0, %if.end8 ]
  %call65 = call i32 @BIO_free(%struct.bio_st* noundef %call) #5
  %14 = load i8*, i8** %der, align 8, !tbaa !3
  call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 104) #5
  %15 = load %struct.ASN1_ITEM_st*, %struct.ASN1_ITEM_st** @item_type, align 8, !tbaa !3
  call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %value.095, %struct.ASN1_ITEM_st* noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end64
  %retval.0 = phi i32 [ %ret.1, %if.end64 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

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

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nounwind }
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
!7 = !{!8, !4, i64 48}
!8 = !{!"ASN1_ITEM_st", !5, i64 0, !9, i64 8, !4, i64 16, !9, i64 24, !4, i64 32, !9, i64 40, !4, i64 48}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"", !4, i64 0, !5, i64 8}
!12 = !{!5, !5, i64 0}
